using FptWebAPI.Interfaces;
using FptWebAPI.Models;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace FptWebAPI.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class FptController : ControllerBase
    {
        private readonly ICustomer _customer;

        public FptController(ICustomer customer)
        {
            _customer = customer;
        }
 
        // GET: api/<FptController>
        [HttpGet]
        public IEnumerable<Customer> Get()
        {
            return _customer.GetAll();
        }

        // GET api/<FptController>/5
        [HttpGet("{id}")]
        public Customer Get(int id)
        {
            return _customer.GetById(id);
        }

        // POST api/<FptController>
        [HttpPost]
        public void Post([FromBody] Customer customer)
        {
            if (ModelState.IsValid)
                _customer.Add(customer);
        }        

        // DELETE api/<FptController>/5
        [HttpDelete("{id}")]
        public void Delete(int id)
        {
            _customer.Delete(id);
        }
    }
}
