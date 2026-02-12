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
        body {
            width: 1000px;
            margin: 0 auto; 
        }
        header {
            width: 1000px;
            height: 70px;
            text-align: center;
            line-height: 70px;
            color: #fff;
            background-color: blue;
        }

        nav {
            width: 1000px;
            height: 40px;
            line-height: 40px;
            background-color: skyblue;
        }

        nav a {
            padding-left: 40px;
            color: #fff;
            text-decoration: none;
        }

        section {
            width: 1000px;
            height: 500px;
            line-height: 30px;
        }

        section h2 {
            text-align: center;
            margin-top: 30px;
            margin-bottom: 30px;
        }

        footer {
            width: 1000px;
            height: 40px;
            text-align: center;
            line-height: 40px;
            color: #fff;
            background-color: blue;
        }

        td, th {
            border: 1px solid black;
        }

        table {
            width: 900px;
            border: 1px solid black;
            border-collapse: collapse;
            margin: 0 auto;
            text-align: center;
        }
    </style>
</head>
<body>
    <header><h1>도서관리 프로그램</h1></header>
    <nav>
        <a href="sub1.jsp">도서대출등록</a>
        <a href="sub2.jsp">도서대출조회/수정</a>
        <a href="sub3.jsp">미납도서조회</a>
        <a href="index.jsp">홈으로</a>
    </nav>
    <section>