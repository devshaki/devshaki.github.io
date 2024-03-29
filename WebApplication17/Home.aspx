﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="WebApplication17.Home" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title></title>
    <link href="../style/StyleSheet.css" rel="stylesheet" />
</head>
<body class="Home">

    <div class="sidebar">
        <label><%string status = Request.QueryString["status"]; if (status != null) { Response.Write(status); } %></label>
        <a class="active" href="Home.aspx">Home</a>
        <a href="base64.aspx">Base64</a>
        <a href="Hexadecimal.aspx">Hexadecimal</a>
        <a href="Decimal.aspx">Decimal</a>
        <a href="Binary.aspx">Binary</a>
        <a href="Octal.aspx">Octal</a>
        <a href="Char.aspx">Char</a>
        <%=Link %>
    </div>
    
    <div class="content">
        <center>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <%=userMsg %>
            <%=userCounter %>
            <h1 style="font-size: 80px;">Encodeing and decoding</h1>
            <h1 style="font-size:40px;">What Does Encoding Mean?</h1>
            <br />
        </center>
        <pre style="font-size:20px">Encoding is the process of converting data into a format required for a number of information
processing needs, including:
        </pre>
        <ul style="font-size:20px">
            <li>Program compiling and execution</li>
            <li>Data transmission, storage and compression/decompression</li>
            <li>Application data processing, such as file conversion</li>
        </ul>
        <p style="font-size:20px">Encoding can have two meanings:</p>
        <ul>
            <li>In computer technology, encoding is the process of applying a specific code, such as letters, symbols and numbers, to data for conversion into an equivalent cipher.</li>
            <li>In electronics, encoding refers to analog to digital conversion.</li>
        </ul>
        <img src="../assets/images/basicEncoding.png" height="250" width="300" />
        <p style="font-size:40px">Shaki Explains Encoding</p>
        <pre style="font-size:20px">
Encoding involves the use of a code to change original data into a form that can be used by an 
external process.
The type of code used for converting characters is known as American Standard Code for 
Information Interchange (ASCII), the most commonly used encoding scheme for files that contain text. 
ASCII contains printable and nonprintable characters that represent
uppercase and lowercase letters, symbols, punctuation marks and numbers. 
A unique number is assigned to some characters.
The standard ASCII scheme has only zero to 127 character positions; 128 through 255 are undefined.
The problem of undefined characters is solved by Unicode encoding,
which assigns a number to every character used worldwide. Other types of codes include BinHex,
Uuencode (UNIX to UNIX encoding) and Multipurpose Internet Mail Extensions (MIME).
Encoding is also used to reduce the size of audio and video files.
Each audio and video file format has a corresponding coder-decoder (codec)
program that is used to code it into the appropriate format and then decodes for playback.
Encoding should not be confused with encryption,
which hides content. Both techniques are used extensively in the networking,
software programming, wireless communication and storage fields.


</pre>
        <img src="../assets/images/SabaLogo.png" height="100" width="100"/>
    </div>
    
</body>
</html>
