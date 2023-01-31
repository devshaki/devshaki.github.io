using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication17.html
{
    public partial class Binary : System.Web.UI.Page
    {
        public string respond;
        public static byte[] ConvertToByteArray(string str, Encoding encoding)
        {
            return encoding.GetBytes(str);
        }

        public static String ToBinary(Byte[] data)
        {
            return string.Join(" ", data.Select(byt => Convert.ToString(byt, 2).PadLeft(8, '0')));
        }
        public string i;
        public string PrintBinaryStringAsASCII(string binaryString)
        {
            
            // Split the string into 8-bit chunks (groups of 8 digits separated by a space)
            string[] chunks = binaryString.Split(' ');

            // Iterate through the chunks and convert each one to an ASCII character
            foreach (string chunk in chunks)
            {
                // Convert the chunk to an integer
                int asciiCode = Convert.ToInt32(chunk, 2);

                // Print the ASCII character corresponding to the code
                i += ((char)asciiCode);
            }
            return i;
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Form["encode"] != null)
            {
                respond = ToBinary(ConvertToByteArray(Request.Form["text"], Encoding.ASCII));
            }
            if (Request.Form["decode"] != null)
            {
                respond = PrintBinaryStringAsASCII(Request.Form["text"]);
            }
        }
    }
}