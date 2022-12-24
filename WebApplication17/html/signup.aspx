<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="WebApplication17.html.signup" %>

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
        <a href="base64.aspx">Base64</a>
        <a href="Hexadecimal.aspx">Hexadecimal</a>
        <a href="Decimal.aspx">Decimal</a>
        <a href="Binary.aspx">Binary</a>
        <a href="Octal.aspx">Octal</a>
        <a href="Char.aspx">Char</a>
        <a class="active" href="login.aspx">Login/sign up</a>
    </div>
    <div class="content">
        <center>
            <h1 style="font-size:80px">sign up</h1>
            <form>
                <label>Username:</label>
                <input type="text" id="username"/>
                <br />
                <label>Password:   </label>
                <input type="password" id="password"/>
                <br />
                <label>email:</label>
                <input type="text" id="email"/>
                <br />
                <label>bate of birth</label>
                <input type="date" id="dateOfBirth"/> 
                <input type="submit" id="sign up" value="sign up" />
            </form>
            <pre>have an account? <a href="login.aspx">log in</a></pre>
        </center>
        </div>
</body>
</html>
