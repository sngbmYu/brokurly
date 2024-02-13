<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Document</title>
    <link rel="preconnect" href="https://fonts.googleapis.com"/>
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin/>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet"/>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: "Noto Sans KR", sans-serif;
            overflow-x: hidden;
        }

        .header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin: 10px 30px 0 30px;
            position: sticky;
            top: 0;
            left: 0;
            z-index: 321;
            height: 90px;
            background: rgb(255, 255, 255);
        }

        .sameCheck {
            position: relative;
            display: flex;
            align-items: center;
            vertical-align: top;
            line-height: normal;
            color: rgb(51, 51, 51);
            margin-top: 9px;
            font-size: 14px;
            padding: 12px 0;
            letter-spacing: -0.5px;
        }

        .star {
            color: rgb(250, 98, 47);
        }

        .receiver-info {
            width: 90%;
            padding: 0 30px;
        }

        .receiver-info input[type="text"] {
            width: 100%;
            height: 44px;
            margin-top: 5px;
            margin-bottom: 25px;
            padding: 0 11px 0 15px;
        }

        .receive-place {
            display: flex;
            justify-content: space-between;
        }

        .receive-place-label {
            display: flex;
        }

        .notice {
            padding: 10px 12px;
        }
    </style>
    <script>
        window.onload = () => {
            // 배송 요청사항 주문자 정보 불러오기 기능
            const checkbox = document.querySelector(".sameCheck input");
            const nameInput = document.getElementById("receiver-name");
            const phoneInput = document.getElementById("receiver-phone");
            checkbox.addEventListener("click", (e) => {
                if (e.target.checked) {
                    nameInput.value = "<c:out value='${member.name}'/>";
                    phoneInput.value = "<c:out value='${member.telNo}'/>";
                } else {
                    nameInput.value = "";
                    phoneInput.value = "";
                }
            });

        };
    </script>
</head>
<body>
<div class="header">
    <h2>배송 요청사항</h2>
    <label class="sameCheck">
        <input type="checkbox" checked="checked"/>
        <span>주문자 정보와 동일</span>
    </label>
</div>
<div class="receiver-info">
    <div>
        <div>
            <label for="receiver-name" class="name">받으실 분<span class="star">*</span></label>
            <input id="receiver-name" name="name" placeholder="이름을 입력해 주세요" type="text"
                   value="<c:if test='${receiverDetails != null}'>${receiverDetails.rcvName}</c:if>"/>
        </div>
        <div>
            <label for="receiver-phone" class="name">휴대폰<span class="star">*</span></label>
            <input id="receiver-phone" name="name" placeholder="숫자만 입력해 주세요" type="text"
                   value="<c:if test='${receiverDetails != null}'>${receiverDetails.telNo}</c:if>"/>
        </div>
    </div>
    <div>
        <div>받으실 장소<span class="star">*</span></div>
        <div>
            <div>
                <div class="receive-place">
                    <div style="width: 50%">
                        <label for="door" class="receive-place-label">
                            <input type="radio" name="receivePlace" id="door" class="receive-place" checked="checked"/>
                            <div style="margin-left: 10px">
                                <span>문 앞</span>
                            </div>
                        </label>
                    </div>
                    <div style="width: 50%">
                        <label for="etc-place" class="receive-place-label">
                            <input type="radio" name="receivePlace" id="etc-place" class="receive-place" checked=""/>
                            <div style="margin-left: 10px">
                                <span>기타 장소</span>
                            </div>
                        </label>
                    </div>
                </div>
            </div>
            <div class="notice">경비실과 무인택배함 배송이 종료되었어요.</div>
            <div class="etc-detail">기타장소 세부사항<span class="star">*</span></div>
            <label for="etc" class="receive-place-label">
                <input type="radio" name="receivePlace" id="etc" class="receive-place"/>
                <div style="margin-left: 10px">
                    <span>기타</span>
                </div>
            </label>
            <div >
                <input type="text" id="etc-detail" name="etc-detail" class="detail" />
            </div>
        </div>
    </div>
</div>
</body>
</html>

