using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccess
{
    public class User
    {
        public int Id { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string UserName { get; set; }
        public string PassWord { get; set; }
        public bool IsAdmin { get; set; }
        public MemberType MemberType { get; set; }
    }

    public enum MemberType
    {
        Silver,
        Gold,
        Platinum
    }
}
