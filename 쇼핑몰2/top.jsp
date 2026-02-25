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
            background-color: blue;
            text-align: center;
            line-height: 70px;
            color: white;
        }

        nav {
            width: 1000px;
            height: 40px;
            background-color: skyblue;
            line-height: 40px;
        }

        nav a {
            text-decoration: none;
            color: aliceblue;
            padding-left: 30px;
        }

        section {
            width: 1000px;
            height: 500px;
        }

        section h2 {
            text-align: center;
            line-height: 70px;
        }

        section p {
            line-height: 20px;
        }

        footer {
            width: 1000px;
            height: 40px;
            line-height: 40px;
            text-align: center;
            color: white;
            background-color: blue;
        }

        table {
            border-collapse: collapse;
            width: 800px;
            text-align: center;
            margin: 0 auto;
        }

        table, th, tr, td {
            border: 1px solid #000;
        }
    </style>
</head>
<body>
    <header><h1>펜션 예약 프로그램</h1></header>
    <nav>
        <a href="sub1.jsp">예약등록</a>
        <a href="sub2.jsp">예약현황조회/수정</a>
        <a href="sub3.jsp">매출조회</a>
        <a href="index.jsp">홈으로</a>
    </nav>
    <section>