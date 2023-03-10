<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="ko">
<head>
    <%@include file="header/header.jsp"%>
    <link rel="stylesheet" type="text/css" href="css/write.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>

<body>
    <div class="tab">
        <br>
        <br>
        <div class="writeDisplay">

            <form action="/write" method="post">
                <div class="left">
                    <div class="form-group">
                        <label class="safe" for=""><input type="radio" value="N"  name="safeYn" checked /><span>일반거래</span></label>
                        <label class="safe" for=""><input type="radio" value="Y"  name="safeYn" /><span>안심거래</span></label>
                    </div>
                    <div class="form-group">
                        <label>제목</label>
                        <!-- placeholder 속성 입력한 데이터가 없는 경우 배경으로 나타난다.실제적으로 입력을 100자까지로 지정 -->
                        <!-- required 속성을 설정하면 필수입력 사항이된다. -->
                        <!-- pattern 속성을 이용한 정규표현식으로 데이터의 유효성 검사를 할 수 있다. -->
                        <input type="text" class="form-control" id="brdTtl"
                               placeholder="제목 입력(3-50)" name="brdTtl"
                               maxlength="50" required="required"
                               pattern=".{3,50}">
                    </div>

                    <div class="form-group">
                        <label>음식 종류</label>
                        <!-- placeholder 속성 입력한 데이터가 없는 경우 배경으로 나타난다.실제적으로 입력을 100자까지로 지정 -->
                        <!-- required 속성을 설정하면 필수입력 사항이된다. -->
                        <!-- pattern 속성을 이용한 정규표현식으로 데이터의 유효성 검사를 할 수 있다. -->
                        <select class="form-control" name="brdCtgr">
                            <option value="" selected>카테고리를 선택해주세요.</option>
                            <option value="치킨">치킨</option>
                            <option value="피자">피자</option>
                            <option value="떡볶이">떡볶이</option>
                        </select>
                    </div>

                    <div class="form-group">
                        <label>배송지</label>
                        <!-- placeholder 속성 입력한 데이터가 없는 경우 배경으로 나타난다.실제적으로 입력을 100자까지로 지정 -->
                        <!-- required 속성을 설정하면 필수입력 사항이된다. -->
                        <!-- pattern 속성을 이용한 정규표현식으로 데이터의 유효성 검사를 할 수 있다. -->
                        <input type="text" class="form-control" id="brdAdr"
                               placeholder="배송지 입력(개인정보 유출방지를 위해 상세 주소는 입력하지 마세요.)" name="brdAdr"
                               maxlength="50" required="required"
                               pattern=".{3,50}">
                    </div>
                    <div class="form-group">
                        <label>배달비</label>
                        <!-- placeholder 속성 입력한 데이터가 없는 경우 배경으로 나타난다.실제적으로 입력을 100자까지로 지정 -->
                        <!-- required 속성을 설정하면 필수입력 사항이된다. -->
                        <!-- pattern 속성을 이용한 정규표현식으로 데이터의 유효성 검사를 할 수 있다. -->
                        <input type="number" class="form-control" id="brdPri"
                               placeholder="기본 배달비" name="brdPri"
                               maxlength="50" required="required"
                               pattern=".{3,50}">
                    </div>

                    <div class="form-group">
                        <label>주문 예정 시간</label>
                        <!-- placeholder 속성 입력한 데이터가 없는 경우 배경으로 나타난다.실제적으로 입력을 100자까지로 지정 -->
                        <!-- required 속성을 설정하면 필수입력 사항이된다. -->
                        <!-- pattern 속성을 이용한 정규표현식으로 데이터의 유효성 검사를 할 수 있다. -->
                        <input type="time" class="form-control" id="brdEndDt"
                               name="brdEndDt"
                               maxlength="50" required="required">
                    </div>

                    <div class="form-group">
                        <label>모집 인원</label>
                        <!-- placeholder 속성 입력한 데이터가 없는 경우 배경으로 나타난다.실제적으로 입력을 100자까지로 지정 -->
                        <!-- required 속성을 설정하면 필수입력 사항이된다. -->
                        <!-- pattern 속성을 이용한 정규표현식으로 데이터의 유효성 검사를 할 수 있다. -->
                        <input type="number" class="form-control" id="brdNn"
                               name="brdNn"
                               maxlength="2" required="required">
                    </div>
                </div>

                <div class="right" style="padding: 30px">
                    <!--사진-->
                    <div style="width: 200px; height: 200px; background-color: white; margin-right: auto; margin-left: auto"></div>
                    <br>
                    <button class="btn-upload">매장선택</button>
                </div>

                <div class="form-group">
                    <label for="content">내용</label>
                    <!--  여러줄의 데이터를 입력하고 하고자 할때 textarea 태그를 사용한다. -->
                    <!--  textarea 안에 있는 모든 글자는 그대로 나타난다. 공백문자, tag, enter -->
                    <textarea class="form-control" rows="10" id="content"
                              name="content" placeholder="내용 작성"></textarea>
                </div>

                <button type="submit" class="btn-upload" style="font-family: 'Nanum Gothic', sans-serif; font-size: 15pt">등록하기</button>

            </form>
        </div>
    </div>

</body>
</html>