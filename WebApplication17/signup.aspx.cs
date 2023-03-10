using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication17
{
    public partial class signup : System.Web.UI.Page
    {
        public string RegStatus = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Form["submit"] != null)
            {
                string username = Request.Form["username"];
                string password = Request.Form["password"];
                string email = Request.Form["email"];
                string dateOfBirth = Request.Form["dateOfBirth"];
                string region = Request.Form["region"];

                bool isAdmin = false; 

                if ((username == "") || (username == null) || (password == "") || (password == null) || (email == "") || (email == null) || (dateOfBirth == "") || (dateOfBirth == null))
                    RegStatus = "please make sure you entered all the fields";
                else
                {
                    string fileName = "db.mdf"; 
                    string selectSql = "SELECT * FROM Tusers WHERE username='" + username + "'";
                    if (MyAdoHelper.IsExist(fileName, selectSql))
                        RegStatus = "this username is already being used";
                    else
                    {
                        string sql = "INSERT INTO Tusers(username,password,email,dateOfBirth,region,isAdmin) VALUES('" + username + "',N'" + password + "',N'" + email + "',N'" + dateOfBirth + "',N'" + region + "','" + isAdmin + "')";
                        MyAdoHelper.DoQuery(fileName, sql);
                        RegStatus = " ההרשמה בוצעה בהצלחה נא להתחבר";
                        Response.Redirect("Home.aspx?status=" + RegStatus);


                    }
                }



            }
        }
    }
}