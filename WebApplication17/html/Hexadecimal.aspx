<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Hexadecimal.aspx.cs" Inherits="WebApplication17.html.Hexadecimal" %>

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
        <a class="active" href="Hexadecimal.aspx">Hexadecimal</a>
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
            <img src="../assets/images/HexHeader.png" height="40" width="500"/>
            <form>
                <label>Please enter your string</label>
                <br />
                <textarea id="Hexadecimal" rows="10" cols="50" style="border-block-color: #414241; border-block: groove; background-color: #393E46; color: #F2E7D5 "></textarea>
                <br />
                <input type="submit" id="encode" value="Encode" style="background-color: #6D9886" />
                <input type="submit" id="decode" value="Decode" style="background-color: #6D9886" />
            </form>
            <textarea id="respond" rows="10" cols="50" style="border-block-color: #414241; border-block: groove; background-color: #393E46; color: #F2E7D5 "></textarea>
            <br />
            <img src="../assets/images/Hexadecimal.png" height="150px" width="150px" />
            <br />
            <h1 style="font-size:40px">How does Hexadecimal encode works?</h1>
        </Center>
        <pre style="font-size:20px">
Hex encoding is a transfer encoding in which each byte is converted to the 2-digit base-16 encoding of 
that byte (preserving leading zeroes), which is then usually encoded in ASCII. It is inefficient, 
but it is a simple, commonly-used way to represent binary data in plain text.
It is not a formal standard, so the term hex encoding may have other meanings, 
and the format described in the article may have other names.
Both uppercase ("A" through "F") and lowercase ("a" through "f") letters are common, 
and hex decoders typically support both. Whitespace characters may be allowed, and ignored. 
Other characters that aren't hex digits might be used for special purposes.
The most significant hex digit almost always comes first, but variants in which the least significant 
digit comes first do exist, for example ASCII Encoded HP 48 Object.
The distinction between hex encoding and base-16 (hexadecimal) is not always clear.
If you interpret a datastream as a single (probably huge) number, and write that number in base-16, 
it can, with suitable conventions, be equivalent to hex encoding. For example, 
consider the way that cryptographic hashes are usually written.
The earliest versions of BinHex used a form of hex encoding, 
but the program later evolved to a different encoding based on base 64 instead of base 16
(similar to Base64 encoding but with a different set of characters).
</pre>
        <img src="../assets/images/SabaLogo.png" height="100" width="100" />
    </div>
</body>
</html>
