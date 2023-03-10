using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication17.html
{
    public partial class Base64 : System.Web.UI.Page
    {
        public string respond = " ";
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (Request.Form["encode"] != null)
            {
                var plainTextBytes = System.Text.Encoding.UTF8.GetBytes(Request.Form["text"]);
                respond = System.Convert.ToBase64String(plainTextBytes);
            }
            else if (Request.Form["decode"] != null)
            {
                byte[] data = Convert.FromBase64String(Request.Form["text"]);
                respond = Encoding.UTF8.GetString(data);
            }

        }
    }
}