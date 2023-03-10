using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.InteropServices;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication17.html
{
    public partial class Char : System.Web.UI.Page
    {
        public string respond; 
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Form["encode"] != null)
            {
                string str = Request.Form["input"];
                var charArray = str.ToCharArray();
                foreach (int CharSet in charArray)
                    respond +=  CharSet + " ";
            }
            if (Request.Form["decode"] != null)
            {
                string input = Request.Form["input"];
                if (input.EndsWith(" "))
                    input = input.Remove(input.Length - 1);
                string[] codes = input.Split(' ');

                char[] chars = new char[codes.Length];
                for (int i = 0; i < codes.Length; i++)
                {
                    chars[i] = (char)int.Parse(codes[i]);
                }

                respond = new string(chars);


            }

        }
    }
}