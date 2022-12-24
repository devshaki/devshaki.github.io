<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Base64.aspx.cs" Inherits="WebApplication17.html.Base64" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title></title>
    <link href="../style/StyleSheet.css" rel="stylesheet" />
</head>
<body class="Home">
    <div class="sidebar">
        <a href="Home.aspx">Home</a>
        <a class="active" href="base64.aspx">Base64</a>
        <a href="Hexadecimal.aspx">Hexadecimal</a>
        <a href="Decimal.aspx">Decimal</a>
        <a href="Binary.aspx">Binary</a>
        <a href="Octal.aspx">Octal</a>
        <a href="Char.aspx">Char</a>
        <a href="login.aspx">Login/sign up</a>
    </div>
    <div class="content">
        <Center>
            <br />
            <br />
            <img src="../assets/images/Base64Header.jpg" height="40" width="500" />
            <form>
                <label>Please enter your string</label>
                <br />
                <textarea id="base64" rows="10" cols="50" name="text" id="text" style="border-block-color: #414241; border-block: groove; background-color: #393E46; color: #F2E7D5 "></textarea>
                <br />
                <input type="submit" name="encode" id="encode" value="Encode" style="background-color: #6D9886" />
                <input type="submit" name="decode" id="decode" value="Decode" style="background-color: #6D9886" />
            </form>
            <textarea id="respond" rows="10" cols="50" style="border-block-color: #414241; border-block: groove; background-color: #393E46; color: #F2E7D5 "><%=encoded %></textarea>
            <br />
            <img src="../assets/images/base64.png" height="150px" width="150px" />
            <br />
            <h1 style="font-size:40px">How does base64 encode works?</h1>
        </Center>
        <pre style="font-size:20px">
Base64 is a group of similar binary-to-text encoding schemes that represent binary data
in an ASCII string format by translating it into a radix-64 representation.
The term Base64 originates from a specific MIME content transfer encoding.
Base64 encoding schemes are commonly used when there is a need to encode binary
data that needs to be stored and transferred over media that are
designed to deal with ASCII. This is to ensure that the data remain intact without modification 
during transport. Base64 is commonly used in a number of applications including email via <a href="https://en.wikipedia.org/wiki/MIME" style="color: #6D9886 ">MIME</a>, 
and storing complex data in <a href="https://developer.mozilla.org/en-US/docs/Web/XML" style="color: #6D9886">XML</a>.
One common application of Base64 encoding on the web is to encode binary data so it can be included 
in a <a href="https://developer.mozilla.org/en-US/docs/Web/HTTP/Basics_of_HTTP/Data_URLs" style="color: #6D9886">data:URL</a>.
    </pre>
        <a href="https://developer.mozilla.org/en-US/docs/Glossary/Base64" style="color:antiquewhite">Read more</a>
        <img src="../assets/images/SabaLogo.png" height="100" width="100" />
    </div>
</body>
</html>