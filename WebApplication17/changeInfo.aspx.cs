using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
namespace WebApplication17
{
    public partial class changeInfo : System.Web.UI.Page
    {
        public string msg;
        public string editUser;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
                Response.Write(" אין גישה");
            else
            {
                string fileName = "db.mdf";
                string username = (string)Session["username"];
                if (Request.Form["submit"] != null)
                {

                    string password = Request.Form["password"]; //קבלת נתוני העדכון מהטופס
                    string email = Request.Form["email"];
                    string dateOfBirth = Request.Form["dateOfBirth"];
                    string region = Request.Form["region"];


                    string sql = "UPDATE Tusers SET password=N'" + password + "',email=N'" + email + "',dateOfBirth=N'" + dateOfBirth + "',region=N'" + region + "' WHERE username='" + username + "'";
                    MyAdoHelper.DoQuery(fileName, sql);
                    msg = " עודכנו פרטים";

                }
                else  //יש להציג את פרטי המשתמש הנוכחי מהטופס
                {
                    string selectQuery = "SELECT * FROM  Tusers WHERE username='" + username + "'";
                    DataTable table = MyAdoHelper.ExecuteDataTable(fileName, selectQuery);// אובייקט DataTable שומר עותק נתונים של תוצאות השאילתה
                    int length = table.Rows.Count;            // מספר הרשומות בטבלה
                    if (length > 0)
                    {
                        editUser += "<form action='' id='edit' method='post'>";
                        editUser += "<table border='1' style='margin-right:500px' width=30%>";
                        editUser += "<tr><td> username </td><td>";
                        editUser += "<input type='text' name='username' id='username' readonly value='" + (string)table.Rows[0]["username"] + "'/>";
                        editUser += "</td></tr>";

                        editUser += "<tr><td> password </td><td>";
                        editUser += "<input type='text' name='password' id='password' value='" + (string)table.Rows[0]["password"] + "'/>";
                        editUser += "</td></tr>";

                        editUser += "<tr><td> email </td><td>";
                        editUser += "<input type='text' name='email' id='email' value='" + (string)table.Rows[0]["email"] + "'/>";
                        editUser += "</td></tr>";

                        editUser += "<tr><td> date </td><td>";
                        editUser += "<input type='date' name='dateOfBirth' id='dateOfBirth' value='" + (DateTime)table.Rows[0]["dateOfBirth"] + "'/>";
                        editUser += "</td></tr>";

                        editUser += "<tr><td> אזור מגורים </td><td>";
                        editUser += "<input type='text' name='region' id='region' value='" + (string)table.Rows[0]["region"] + "'/>";
                        editUser += "</td></tr>";

                        editUser += "</table><br/>";
                        editUser += "<input type='submit' name='submit' value='עדכן'/>";
                        editUser += "</form>";

                    }

                }

            }
        }
    }

}