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
            color: white;
            background-color: blue;
        }

        nav {
            width: 1000px;
            height: 40px;
            background-color: skyblue;
        }

        nav a {
            text-decoration: none;
            padding-left: 30px;
            color: white;
            line-height: 40px;
        }

        section {
            width: 1000px;
            height: 500px;
            line-height: 30px;
        }

        section h2 {
            text-align: center;
        }

        footer {
            width: 1000px;
            height: 40px;
            background-color: blue;
            text-align: center;
            line-height: 40px;
            color: white;
        }

        table, tr, td, th {
            border: 1px solid black;
        }

        table {
            width: 800px;
            margin: 0 auto;
            border-collapse: collapse;
            text-align: center;
        }
    </style>
</head>
<body>
    <header><h1>자격 관리 프로그램</h1></header>
    <nav>
        <a href="sub1.jsp">학생등록</a>
        <a href="sub2.jsp">학생등록조회/수정</a>
        <a href="sub3.jsp">자격조회</a>
        <a href="index.jsp">홈으로</a>
    </nav>
    <section>