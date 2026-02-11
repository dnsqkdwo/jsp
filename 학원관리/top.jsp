<%@ page language="java"
         contentType="text/html; charset=UTF-8"   
         pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>    
<!DOCTYPE html>
<html lang="ko">
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
            color: #fff;
        }
        nav {
            width: 1000px;
            height: 40px;
            line-height: 40px;
            background-color: skyblue;
        }
        nav a {
            text-decoration: none;
            color: #fff;
            padding-left: 40px;
        }
        section {
            width: 1000px;
            height: 450px;
            line-height: 30px;
        }

        section h2 {
            text-align: center;
            margin-top: 40px;
            margin-bottom: 40px;
        }

        footer {
            width: 1000px;
            height: 40px;
            line-height: 40px;
            text-align: center;
            background-color: blue;
            color: #fff;
        }

        table, tr, th, td {
            border: 1px solid black;
        }

        table {
            width: 800px;
            border-collapse: collapse;
            margin: 0 auto;
            text-align: center;
        }
    </style>
</head>
<body>
    <header><h1>학원 관리 프로그램</h1></header>
    <nav>
        <a href="sub1.jsp">수강생등록</a>
        <a href="sub2.jsp">수강생등록조회/수정</a>
        <a href="sub3.jsp">코스조회</a>
        <a href="index.jsp">홈으로</a>
    </nav>
    <section>