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
        padding: 0;
        margin: 0;
        box-sizing: border-box;
    }   

    body {
        width: 1000px;
        margin: 0 auto;
    }

    header {
        width: 1000px;
        height: 50px;
        background-color: blue;
        text-align: center;
        line-height: 50px;
        color: aliceblue;
    }

    nav {
        width: 100%;
        height: 30px;
        background-color: skyblue;
        line-height: 30px;
    }

    nav a {
        padding-left: 40px;
        text-decoration: none;
        color: #fff;
    }

    section {
        width: 100%;
        height:500px;
    }

    section h2 {
        text-align: center;
        line-height: 100px;
    }

    section p {
        line-height: 40px;
    }

    footer {
        width: 100%;
        height: 30px;
        text-align: center;
        color: #fff;
        line-height: 30px;
        background-color: blue;
    }

    td, th {
        border: 1px solid black;
        width: 140px;
        height: 20px;
        text-align: center;
    }

    table {
        border-collapse: collapse;
        margin: 0 auto;
    }
</style>    
</head>
<body>
    <header><h1>자격 관리 프로그램</h1></header>
    <nav>
        <a href="main1.jsp">학생등록</a>
        <a href="main2.jsp">학생등록조회/수정</a>
        <a href="main3.jsp">자격조회</a>
        <a href="index.jsp">홈으로</a>
    </nav>
    <section>