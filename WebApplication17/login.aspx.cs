using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication17.html
{
    public partial class login : System.Web.UI.Page
    {
        public string errors = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            string fileName = "db.mdf";
            if (Request.Form["submit"] != null)
            {
                string username = Request.Form["username"];
                string password = Request.Form["password"];
                string selectSql = "SELECT * FROM Tusers WHERE username='" + username + "' and password='" + password + "'";
                if (MyAdoHelper.IsExist(fileName, selectSql))
                {
                    DataTable table = MyAdoHelper.ExecuteDataTable(fileName, selectSql);
                    Session["username"] = table.Rows[0]["username"];
                    Session["user"] = (string)table.Rows[0]["username"];
                    Session["isAdmin"] = null;
                    if ((bool)table.Rows[0]["isAdmin"] == true)
                    {
                        Session["isAdmin"] = "yes";
                        Response.Redirect("Home.aspx");
                    }
                    Response.Redirect("Home.aspx");
                }
                else
                    errors += " ת.ז או סיסמה לא קיימים במערכת";

            }
        }
    }

}
            
