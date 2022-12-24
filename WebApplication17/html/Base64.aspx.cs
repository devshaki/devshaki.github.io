using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication17.html
{
    public partial class Base64 : System.Web.UI.Page
    {
        public string encoded = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (Request.Form["encode"] != null)
            {
                string text = Request.Form["text"];
                var plainTextBytes = System.Text.Encoding.UTF8.GetBytes(text);
                encoded = System.Convert.ToBase64String(plainTextBytes);
            }

        }
    }
}