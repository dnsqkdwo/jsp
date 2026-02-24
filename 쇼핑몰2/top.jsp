<%@ page language="java"
         contentType="text/html; charset=UTF-8"   
         pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        * {
            margin: 0;
            padding: 0;
        }

        body {
            width: 1000px;
            margin: 0 auto;
        }

        nav a {
            text-decoration: none;
            color: #fff;
        }

        header {
            width: 1000px;
            height: 70px;
            background-color: blue;
            color: #fff;
            text-align: center;
            line-height: 70px;
        }

        nav {
            width: 1000px;
            height: 40px;
            background-color: skyblue;
            line-height: 40px;
        }

        nav a {
            padding-left: 40px;
        }

        section {
            width: 1000px;
            height: 500px;
            line-height: 40px;
        }

        section h2 {
            text-align: center;
            margin-top: 40px;
            margin-bottom: 30px;
        }

        footer {
            background-color: blue;
            color: #fff;
            text-align: center;
            width: 1000px;
            height: 40px;
            line-height: 40px;
        }

        table, td, tr, th {
            border: 1px solid #000;
            text-align: center; 
        }

        table {
            width: 800px;
            margin: 0 auto;
            border-collapse: collapse;
        }

        input[type="text"] {
            width: 250px;
        }
    </style>
</head>
<body>
    <header>
        <h1>쇼핑몰 회원관리 프로그램 var1.0</h1>
    </header>
    <nav>
        <a href="sub1.jsp">회원등록</a>
        <a href="sub2.jsp">회원목록조회/수정</a>
        <a href="sub3.jsp">회원매출조회</a>
        <a href="index.jsp">홈으로</a>
    </nav>