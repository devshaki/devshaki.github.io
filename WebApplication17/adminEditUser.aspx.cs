using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication17
{
    public partial class adminEditUser : System.Web.UI.Page
    {
        //קובץ זה מופעל ע"י קישור מהקובץ
        // שבפאנל הניהול  admin.aspx 
        //הקובץ מוגדר כיעד בשליחת טופס. הקובץ מופעל על טופס הרשומה שכפתור השליחה שייך לה
        protected void Page_Load(object sender, EventArgs e)
        {
            string fileName = "db.mdf";
            if (Request.Form["submit"] != null)
            {
                string username = Request.Form["username"];
                int isAdmin = 0;
                string email = Request.Form["email"];
                string password = Request.Form["password"];
                string region = Request.Form["region"];

                if (Request.Form["isAdmin"] != null)
                    isAdmin = 1;

                string sql = "UPDATE Tusers SET email=N'" + email + "',password=N'" + password + "',region=N'" + region + "' ,isAdmin='" + isAdmin + "' WHERE username='" + username + "'";
                MyAdoHelper.DoQuery(fileName, sql);

                Response.Redirect("admin.aspx");

            }
        }
    }
}