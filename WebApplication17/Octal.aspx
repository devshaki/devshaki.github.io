﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Octal.aspx.cs" Inherits="WebApplication17.html.Octal" %>

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
        <a class="active" href="Octal.aspx">Octal</a>
        <a href="Char.aspx">Char</a>
        <a href="login.aspx">Login/sign up</a>
    </div>

    <div class="content">
        <Center>

            <br />
            <br />
            <img src="../assets/images/Base8Header.png" height="40" width="500"/>
            <form>
                <label>Please enter your string</label>
                <br />
                <textarea id="Octal" rows="10" cols="50" style="border-block-color: #414241; border-block: groove; background-color: #393E46; color: #F2E7D5 "></textarea>
                <br />
                <input type="submit" id="encode" value="Encode" style="background-color: #6D9886" />
                <input type="submit" id="decode" value="Decode" style="background-color: #6D9886" />
            </form>
            <textarea id="respond" rows="10" cols="50" style="border-block-color: #414241; border-block: groove; background-color: #393E46; color: #F2E7D5 "></textarea>
            <br />
            <img src="../assets/images/octallogo.png" height="150px" width="150px" />
            <br />
            <h1 style="font-size:40px">How does Octal encode works?</h1>
        </Center>
        <pre style="font-size:20px">
The octal numeral system, or oct for short, is the base-8 number system, and uses the digits 0 to 7, that is to say 10<sub>octal</sub> 
represents eight and 100<sub>octal</sub> represents sixty-four. However, English, like most languages, uses a base-10 number system, 
hence a true octal system might use different vocabulary.

In the decimal system, each place is a power of ten. For example:
<img src="https://wikimedia.org/api/rest_v1/media/math/render/svg/a79337e370dac156042f618e518bb41e369d55c1" />

In the octal system, each place is a power of eight. For example:
<img src="https://wikimedia.org/api/rest_v1/media/math/render/svg/9fac38a4dc6bfc166a437e00b9ec51f1714d1f69" />

By performing the calculation above in the familiar decimal system, 
we see why 112 in octal is equal to <b style="color:black">64+8+2=74</b> in decimal.
</pre>

        <img src="../assets/images/SabaLogo.png" height="100" width="100" />
    </div>
</body>
</html>