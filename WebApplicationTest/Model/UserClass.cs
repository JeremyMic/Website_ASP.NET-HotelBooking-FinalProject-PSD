using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplicationTest.Model
{
    public class UserClass
    {
        public String Username { get; set; }
        public String Email { get; set; }
        public String Name { get; set; }
        public String Password { get; set; }
        public String Role { get; set; }

        public UserClass(string username, string email, string name, string password, string role)
        {
            this.Username = username;
            this.Email = email;
            this.Name = name;
            this.Password = password;
        }

        public UserClass()
        {
        }
    }
}