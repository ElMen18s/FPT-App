using Dapper;
using FptWebAPI.Interfaces;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Threading.Tasks;

namespace FptWebAPI.Models
{
    public class CustomerData : ICustomer
    {
        private string strConnectionString;

        public CustomerData()
        {
            strConnectionString = "Persist Security Info=False;User ID=sa;password=tails2001; Initial Catalog=FptBD; Data Source=DESKTOP-4L4UT64;";
        }

        public IDbConnection Connection
        {
            get { return new SqlConnection(strConnectionString); }
        }
        public void Add(Customer customer)
        {
            using (IDbConnection dbConnection = Connection)
            {
                string strQuery = @"INSERT INTO Customers (CustomerName, Phone, Email, Notes) VALUES (@CustomerName, @Phone, @Email, @Notes)";
                dbConnection.Open();
                dbConnection.Execute(strQuery, customer);
            }
        }

        public void Delete(int id)
        {
            using (IDbConnection dbConnection = Connection)
            {
                string sQuery = @"DELETE FROM Customers Where CustomerId=@Id";
                dbConnection.Open();
                dbConnection.Execute(sQuery, new { Id = id });
            }
        }
        public IEnumerable<Customer> GetAll()
        {
            using (IDbConnection dbConnection = Connection)
            {
                string sQuery = @"Select CustomerId,CustomerName, Phone, Email, Notes FROM Customers";
                dbConnection.Open();
                return dbConnection.Query<Customer>(sQuery);
            }
        }

        public Customer GetById(int id)
        {
            using (IDbConnection dbConnection = Connection)
            {
                string sQuery = @"Select CustomerId,CustomerName, Phone, Email, Notes FROM Customers Where CustomerId=@Id";
                dbConnection.Open();
                return dbConnection.Query<Customer>(sQuery, new { Id = id }).FirstOrDefault();
            }
        }
    }
}
