<%@ page language="java"
         contentType="text/html; charset=UTF-8"   
         pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>    
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>홈쇼핑</title>
    <style>
        * {
            margin: 0;
            padding: 0;
        }
        body {
            width: 1000px;
            margin: 0 auto;
        }

        header{
            width: 100%;
            height: 70px;
            color: aliceblue;
            background-color: blue;
            text-align: center;
            line-height: 70px;
        }
        a {
            text-decoration: none;
            color: inherit;
            padding-left: 33px;
        }
        nav{
            width: 100%;
            height: 40px;
            color: aliceblue;
            background-color: #77f;
            line-height: 40px;
        }
        section{
            width: 100%;
            height: 400px;
        }
        section h2 {
            text-align: center;
            
        }
        footer{
            width: 100%;
            height: 40px;
            color: aliceblue;
            background-color: blue;
            text-align: center;
            line-height: 40px;
        }
        table {
            width: 80%;
            margin: 0 auto;          
            text-align: center;
        }
        table,th,td {
            border: 1px solid;
            border-collapse: collapse;
        }
        .reg td {
            text-align: left;
        }
        .reg {
            width: 60%;
        }
        .reg input,select{
            margin-left: 55px;
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
    <section>