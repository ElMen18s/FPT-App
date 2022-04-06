using FptWebAPI.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace FptWebAPI.Interfaces
{
    public interface ICustomer
    {
        void Add(Customer customer);

        IEnumerable<Customer> GetAll();

        Customer GetById(int id);

        void Delete(int id);
    }
}
