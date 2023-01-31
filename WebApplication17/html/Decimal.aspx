<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Decimal.aspx.cs" Inherits="WebApplication17.html.Decimal" %>

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
        <a class="active" href="Decimal.aspx">Decimal</a>
        <a href="Binary.aspx">Binary</a>
        <a href="Octal.aspx">Octal</a>
        <a href="Char.aspx">Char</a>
        <a href="login.aspx">L      ogin/sign up</a>
    </div>

    <div class="content">
        <Center>

            <br />
            <br />
            <img src="../assets/images/DecimalHeader.png" height="40" width="500"/>
            <form runat="server">
                <label>Please enter your string</label>
                <br />
                <textarea id="Decimal" rows="10" cols="50" style="border-block-color: #414241; border-block: groove; background-color: #393E46; color: #F2E7D5 "></textarea>
                <br />
                <input type="submit" name="encode" value="Encode" style="background-color: #6D9886" />
                <input type="submit" name="decode" value="Decode" style="background-color: #6D9886" />
            </form>
            <textarea id="respond" rows="10" cols="50" style="border-block-color: #414241; border-block: groove; background-color: #393E46; color: #F2E7D5 "></textarea>
            <br />
            <img src="../assets/images/DecimalLogo.png" height="150px" width="150px" />
            <br />
            <h1 style="font-size:40px">How does Decimal encode works?</h1>
        </Center>
        <pre style="font-size:20px">
Binary-coded decimal is a system of writing numerals that assigns a four-digit binary code to each 
digit 0 through 9 in a decimal (base 10) number. Simply put, binary-coded decimal is a way to convert
decimal numbers into their binary equivalents. However, binary-coded decimal is not the same as simple 
binary representation.

In binary-coded decimal, each digit in a decimal base 10 number is represented as a group of four binary 
digits, or bits. Any base 10 number or digit can be represented in binary notation using 
binary-coded decimal.
</pre>
        <img src="../assets/images/SabaLogo.png" height="100" width="100" />
    </div>
</body>
</html>
