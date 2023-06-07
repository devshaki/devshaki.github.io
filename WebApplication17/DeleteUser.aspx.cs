using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

namespace WebApplication17
{
    public partial class DeleteUser : System.Web.UI.Page
    {
        //קובץ זה מופעל ע"י קישור מהקובץ admin.aspx שבפאנל הניהול
        //הערך למחיקה נשלח כקישור בלחיצת כפתור

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["isAdmin"] != null)     //הגנה על הדף
            {
                string fileName = "db.mdf";
                if (Request.QueryString["username"] != null)
                {
                    string username = Request.QueryString["username"];
                    string sql = "DELETE FROM Tusers WHERE username='" + username + "'";
                    MyAdoHelper.DoQuery(fileName, sql);
                }
                Response.Redirect("admin.aspx");
            }
            else
            {
                Response.Write("<body dir='rtl'><strong>" + "הכניסה למנהל בלבד " + "</strong></body>");
                Response.End();
            }


        }
    }
}
