using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccess
{
    public class Login
    {
        static string UserName = "";
        static string PassWord = "";

        public static string UserName1 { get => UserName; set => UserName = value; }
        public static string PassWord1 { get => PassWord; set => PassWord = value; }
    }
}
