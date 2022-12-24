<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Char.aspx.cs" Inherits="WebApplication17.html.Char" %>

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
        <a class="active" href="Char.aspx">Char</a>
        <a href="login.aspx">Login/sign up</a>
    </div>

    <div class="content">
        <Center>

            <br />
            <br />
            <img src="../assets/images/charHeader.png"   height="40" width="500" />
            <form>
                <label>Please enter your string</label>
                <br />
                <textarea id="Char" rows="10" cols="50" style="border-block-color: #414241; border-block: groove; background-color: #393E46; color: #F2E7D5 "></textarea>
                <br />
                <input type="submit" id="encode" value="Encode" style="background-color: #6D9886" />
                <input type="submit" id="decode" value="Decode" style="background-color: #6D9886" />
            </form>
            <textarea id="respond" rows="10" cols="50" style="border-block-color: #414241; border-block: groove; background-color: #393E46; color: #F2E7D5 "></textarea>
            <br />
            <img src="../assets/images/CharLogo.png" height="150px" width="150px" />
            <br />
            <h1 style="font-size:40px">How does Char encode(UTF-8) works?</h1>
        </Center>
        <pre style="font-size:20px">
Character encoding tells computers how to interpret digital data into letters, numbers and
symbols. This is done by assigning a specific numeric value to a letter, number or symbol. These
letters, numbers, and symbols are classified as “characters”. Characters are grouped together
into specific “character sets” or “repertoires” that associate each one with a numerical value
called a “code point”. These characters are then stored as one or more bytes.

When you input characters through a keyboard or other means, character encoding maps them
to the associated bytes in the computer memory. This allows the computer to display the
characters properly. Without the proper encoding, the computer will not be able to make sense
of the characters and display the proper information.

</pre>

        <img src="../assets/images/SabaLogo.png" height="100" width="100" />
    </div>
</body>
</html>
