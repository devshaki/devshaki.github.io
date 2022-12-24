<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Binary.aspx.cs" Inherits="WebApplication17.html.Binary" %>

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
        <a class="active" href="Binary.aspx">Binary</a>
        <a href="Octal.aspx">Octal</a>
        <a href="Char.aspx">Char</a>
        <a href="login.aspx">Login/sign up</a>
    </div>

    <div class="content">
        <Center>

            <br />
            <br />
            <img src="../assets/images/Base2Header.png" height="40" width="500"/>
            <form>
                <label>Please enter your string</label>
                <br />
                <textarea id="Binary" rows="10" cols="50" style="border-block-color: #414241; border-block: groove; background-color: #393E46; color: #F2E7D5 "></textarea>
                <br />
                <input type="submit" id="encode" value="Encode" style="background-color: #6D9886" />
                <input type="submit" id="decode" value="Decode" style="background-color: #6D9886" />
            </form>
            <textarea id="respond" rows="10" cols="50" style="border-block-color: #414241; border-block: groove; background-color: #393E46; color: #F2E7D5 "></textarea>
            <br />
            <img src="../assets/images/Binarylogo.png" height="150px" width="150px" />
            <br />
            <h1 style="font-size:40px">How does Binary encode works?</h1>
        </Center>
        <pre style="font-size:20px">
binary code, code used in digital computers, based on a binary number system in which there are
only two possible states, 
off and on, usually symbolized by 0 and 1. Whereas in a decimal system, which employs 10 digits, 
each digit position represents a power of 10 (100, 1,000, etc.), in a binary system each digit position 
represents a power of 2 (4, 8, 16, etc.). A binary code signal is a series of electrical pulses that 
represent numbers, characters, and operations to be performed. A device called a clock sends out regular
pulses, and components such as transistors switch on (1) or off (0) to pass or block the pulses. 
In binary code, each decimal number (0–9) is represented by a set of four binary digits, or bits. 
The four fundamental arithmetic operations (addition, subtraction, multiplication, and division) 
can all be reduced to combinations of fundamental Boolean algebraic operations on binary numbers. 
</pre>
        <img src="../assets/images/SabaLogo.png" height="100" width="100" />
    </div>
</body>
</html>