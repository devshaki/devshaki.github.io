using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication17
{
    public partial class admin : System.Web.UI.Page
    {
        public string st = "";//עבור הצגת הטבלה עם נתוני המשתמשים
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["isAdmin"] == null)     //הגנה על הדף
                Response.Write("אין גישה לדף זה");
            else
            {
                string fileName = "db.mdf";
                string tableName = "Tusers";
                string selectQuery = "SELECT * FROM " + tableName;
                DataTable table = MyAdoHelper.ExecuteDataTable(fileName, selectQuery);
                int length = table.Rows.Count;
                if (length > 0)
                {

                    st += "<table border=5>";
                    st += "<tr>";
                    st += "<th>username</th>";
                    st += "<th>email</th>";
                    st += "<th>password</th>";
                    st += "<th>region</th>";
                    st += "<th>מנהל?</th>";
                    st += "<th>עדכן</th>";
                    st += "<th>מחק</th>";
                    st += "</tr>";
                    for (int i = 0; i < length; i++)
                    {
                        st += "<tr>";
                        st += "<form method='post' action='adminEditUser.aspx'>";
                        st += "<input type='hidden' name='username' value='" + table.Rows[i]["username"] + "'/>";
                        st += "<td>" + table.Rows[i]["username"] + "</td>";
                        st += "<td ><input type='text' name='email' value='" + table.Rows[i]["email"] + "' /></td>";
                        st += "<td><input type='text' name='password' value='" + table.Rows[i]["password"] + "'/></td>";
                        st += "<td><input type='text' name='region'  value='" + table.Rows[i]["region"] + "'/></td>";

                        if (((bool)table.Rows[i]["isAdmin"] == true))
                            st += "<td> <input type='checkbox' name='isAdmin' value='true' checked/></td>";
                        else
                            st += "<td><input type='checkbox' name='isAdmin' value='true' /></td>";

                        st += "<td><input type='submit' name='submit' value='עדכן' /></td>";
                        st += "<td><input type='button' onclick='window.location.href=\"DeleteUser.aspx?username=" + table.Rows[i]["username"] + "\"' value='מחק'/></td>";
                        st += "</form>";
                        st += "</tr>";
                    }
                    st += "</table>";
                }

            }
        }
    }
}