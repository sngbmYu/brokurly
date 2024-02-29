<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: sookyung
  Date: 2024/02/07
  Time: 9:51 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="<c:url value='/resources/css/seller/productsCreate.css'/>"/>

    <title>Title</title>

</head>
<body>

<form id="forma" action="/seller/productsCreate/write" method="post">

    <!-- 카테고리 -->

    <ui-view name="category">
        <div class="form-section">
            <div class="title-line" role="button">
                <label class="col-lg-2 col-sm-3 col-xs-5 control-label">카테고리 </label>
                <div class="col-lg-10 col-sm-9 col-xs-7 input-content">
                    <div class="set-option no-set"></div>
                </div>
            </div><!---->

            <div class="inner-content input-content">
                <div class="form-section-sub">
                    <div class="form-sub-wrap">
                        <div class="input-content"><!---->

                            <!-- 3섹션 폼 -->
                            <div class="seller-data-list category-list" style="">
                                <div><!---->
                                    <ul class="data-group"><!---->
                                        <%--          DB에 있는 대분류 값 for문 돌리기       --%>
                                        <c:forEach var="selectMainC" items="${selectMain}" varStatus="status">
                                            <li>
                                                <button type="button" id="maincate${status.count}" href=""
                                                        onclick="s_ajax(${status.count});"
                                                        value="${selectMainC.codeId}">${selectMainC.exp}</button>
                                            </li>
                                            <!---->
                                        </c:forEach>

                                    </ul>
                                </div>
                                <div class=""><!---->
                                    <%--   DB에 있는 중분류값 for문 돌리기 Ajax --%>
                                    <ul class="data-group" id="middledata"><!---->

                                    </ul>
                                </div>


                            </div><!---->
                            <div>
                                <div class="input-content">
                                    <input type="text" class="form-control ng-pristine ng-untouched ng-valid ng-empty"
                                           style="width: 100%; height: 1px;" disabled>
                                </div>
                            </div><!---->
                            <p class="info-result text-info" style="">선택한 카테고리 : <strong>가구/인테리어&gt;DIY자재/용품</strong>
                            </p>

                            <p class="sub-text text-primary">상품과 맞지 않는 카테고리에 등록할 경우 강제 이동되거나 판매중지, 판매금지 될 수 있습니다.</p>
                            <br><!----><!----><!----><!----><!----><!---->
                        </div>
                    </div><!----></div>
            </div><!----></div>
    </ui-view>

    <!-- 상품명 -->
    <ui-view name="item_name">
        <div class="form-section">
            <div class="title-line">
                <label class="col-lg-2 col-sm-3 col-xs-6 control-label">상품명
                </label>
            </div>
            <!---->
            <div class="inner-content input-content">
                <div class="form-section-sub">
                    <div class="form-sub-wrap">
                        <div class="input-content">
                            <div class="form-group">
                                <div class="input-group">
                                    <div class="seller-input-wrap">
                                        <input name="name"
                                               type="text"
                                               class="form-control ng-pristine ng-untouched ng-empty ng-invalid ng-invalid-required ng-valid-pattern ng-valid-maxlength"
                                               maxlength="160"
                                               value="${goodsDto.name}"
                                               title="상품명 입력"
                                        <%--                                        ${mode=="new"? '': 'readonly="readonly"'}/>--%>

                                    </div>
                                </div>
                            </div>
                            <!----><!----><!---->
                            <p class="sub-text text-primary">
                                판매 상품과 직접 관련이 없는 다른 상품명, 스팸성키워드 입력 시 관리자에 의해 판매 금지될 수있습니다.
                                <br>유명 상품 유사문구를 무단으로 도용하여 ~스타일, ~st 등과 같이 기재하는 경우 별도 고지 없이 제재될수 있습니다.
                                <br>전용 상품명을 사용 중인 경우 대표 상품명 수정시에도 전용 상품명으로 노출됩니다.<br><br>
                            </p>
                            <!---->
                            <div
                                    class="form-sub-wrap"
                            >
                                <label class="control-label2" for="search3"
                                >짧은 설명</label
                                ><br><br>
                                <div class="input-content">
                                    <div class="form-group">
                                        <div class="seller-input-wrap">
                                            <input
                                                    name="exp"
                                                    type="text"
                                                    class="form-control ng-pristine ng-untouched ng-valid ng-empty ng-valid-pattern ng-valid-maxlength"
                                                    placeholder=""
                                                    id="search3"
                                                    value="${goodsDto.exp}"
                                                    maxlength="160"
                                            <%--                                            ${mode=="new"? '': 'readonly="readonly"'}--%>

                                            />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!---->
                </div>
                <!---->
            </div>
            <!---->
        </div>
    </ui-view>

    <!-- 판매가 -->
    <ui-view id="anchor-price-benefit"
    ><!---->
        <div class="form-section" id="price-benefit">
            <!---->
            <div
                    class="title-line"
            >
                <label class="col-lg-1 col-sm-2 col-xs-4 control-label"
                >판매가
                </label>
                <div class="col-lg-11 col-sm-10 col-xs-8 input-content">
                    <div
                            class="set-option no-set"
                    >
                    </div>
                </div>
            </div>
            <!---->
            <div
                    class="inner-content input-content"
            >
                <div class="form-section-sub">
                    <!---->
                    <div
                            class="form-sub-wrap"
                    >
                        <div class="input-content">
                            <div class="form-inline">
                                <div class="form-group">
                                    <div class="input-group">
                                        <div class="seller-input-wrap">
                                            <input name="price"
                                                   class="form-control ng-pristine ng-untouched ng-empty ng-valid-min ng-valid-max ng-invalid ng-invalid-required ng-valid-pattern ng-valid-minlength ng-valid-maxlength"
                                                   id="prd_price"
                                                   placeholder="숫자만 입력"
                                                   type="text"
                                                   value="${goodsDto.price}"
                                                   oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"
                                            <%--                                            ${mode=="new"? '': 'readonly="readonly"'}--%>
                                            />
                                        </div>
                                        <span class="input-group-addon">원</span>
                                    </div>
                                </div>

                            </div>
                            <!----><!---->
                            <p class="sub-text text-primary">
                                브로컬리을 통한 주문일 경우 브로컬리
                                매출연동수수료 2%가
                                과금됩니다.
                            </p>
                            <!----><!---->
                            <p
                                    class="sub-text text-primary"
                            >
                                판매가, 할인가를 활용한 비정상 거래는 자동
                                탐지되어 판매지수에 포함되지 않으니 유의해주세요.<br>
                            </p>
                            <!----><!---->
                        </div>
                    </div>
                    <br>
                    <!----><!---->
                    <fieldset>
                        <div class="form-sub-wrap">
                            <label class="control-label">할인 </label>


                            <div class="input-content">

                                <div class="seller-input-toggle form-group">

                                </div>
                                <!---->
                            </div>

                        </div>

                        <div
                                class="form-sub-detail"
                                style=""
                        >
                            <!----><!----><!---->
                            <div
                                    class="form-sub-detail-wrap"
                            >
                                <div class="input-content">
                                    <div
                                            class="form-inline"
                                            id="error_reservedDiscountPolicy_value"
                                    >
                                        <div class="form-group">
                                            <div class="input-group">
                                                <!---->
                                                <div
                                                        class="seller-input-wrap"
                                                        style=""
                                                >
                                                    <input name="dcRt"
                                                           class="form-control ng-pristine ng-untouched ng-empty ng-valid-min ng-valid-max ng-valid-pattern ng-valid-minlength ng-valid-maxlength ng-valid ng-valid-required"
                                                           id="prd_sale"
                                                           placeholder="판매가에서"
                                                           title="할인가 입력"
                                                           type="text"
                                                           min="0"
                                                           max="100"
                                                           onkeyup="ShowPrice()"
                                                           value="${goodsDto.dcRt}"
                                                    <%--                                                    ${mode=="new"? '': 'readonly="readonly"'}--%>
                                                           oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"
                                                    />
                                                    <input name="dcRt1"
                                                           type="hidden">
                                                </div>
                                                <!----><!---->
                                                <span class="input-group-addon">%</span>
                                            </div>
                                        </div>
                                    </div>

                                    <div>
                                        <!---->
                                        <div class="total-price">
                                            <div class="input-content">
                                                <div id="showResult"></div>

                                            </div>
                                        </div>
                                        <!---->
                                    </div>
                                    <!---->

                                </div>
                            </div>
                        </div>
                    </fieldset>
                    <!----><!----><!----><!---->
                    <br>
                </div>
            </div>
        </div>
    </ui-view>
    <!-- 재고수량 -->
    <ui-view name="stock" id="anchor-stock"
    ><!---->
        <div class="form-section">
            <div class="title-line" role="button">
                <label
                        class="col-lg-1 col-sm-2 col-xs-4 control-label"
                        for="stock"
                >재고수량</label>
            </div>
            <!---->
            <div class="inner-content input-content">
                <div class="form-section-sub">
                    <div class="form-sub-wrap">
                        <div class="input-content">
                            <div class="form-inline">
                                <div class="form-group has-error">
                                    <div class="input-group">
                                        <div class="seller-input-wrap">
                                            <input name="itemQty"
                                                   type="text"
                                                   oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"
                                                   class="form-control ng-empty ng-valid-max ng-invalid ng-invalid-required ng-valid-maxlength ng-dirty ng-valid-parse ng-touched"
                                                   id="stock"
                                                   value="${goodsDto.itemQty}"
                                            <%--                                            ${mode=="new"? '': 'readonly="readonly"'}--%>
                                                   placeholder="숫자만 입력"
                                            />
                                        </div>
                                        <span class="input-group-addon">개</span>
                                    </div>
                                    <br>
                                </div>
                                <!---->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </ui-view>
    <!----><!----><!---->

    <!-- 판매자 -->
    <ui-view name="stock" id="anchor-stock"
    ><!---->
        <div class="form-section">
            <div class="title-line" role="button">
                <label
                        class="col-lg-1 col-sm-2 col-xs-4 control-label"
                        for="stock"
                >판매자 정보</label>
            </div>
            <!---->
            <div class="inner-content input-content">
                <div class="form-section-sub">
                    <div class="form-sub-wrap">
                        <div class="input-content">
                            <div class="form-inline" id="error_stockQuantity">
                                <div class="form-group has-error">
                                    <div class="input-group">
                                        <div class="seller-input-wrap">
                                            <input name="bsnsNo"
                                                   type="text"
                                                   class="form-control ng-empty ng-valid-max ng-invalid ng-invalid-required ng-valid-maxlength ng-dirty ng-valid-parse ng-touched"
                                                   placeholder="사업자등록번호"
                                                   value="${goodsDto.bsnsNo}"
                                            <%--                                            ${mode=="new"? '': 'readonly="readonly"'}--%>
                                            />

                                        </div>
                                        <div class="seller-input-wrap">
                                            <input name="sellerName"
                                                   type="text"
                                                   class="form-control ng-empty ng-valid-max ng-invalid ng-invalid-required ng-valid-maxlength ng-dirty ng-valid-parse ng-touched"
                                                   id="seller_name"
                                                   value="${goodsDto.sellerName}"
                                            <%--                                            ${mode=="new"? '': 'readonly="readonly"'}--%>
                                                   placeholder="판매자이름"/>
                                        </div>
                                    </div>
                                    <br>
                                </div>
                                <!---->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </ui-view>
    <!----><!----><!---->
    <!-- 상품 이미지 -->
    <ui-view name="images">
        <div class="form-section">
            <div
                    class="title-line"
                    role="button">
                <label class="col-lg-2 col-sm-3 col-xs-6 control-label">상품이미지</label>
                <div
                        class="col-lg-10 col-sm-9 col-xs-6 input-content"
                ></div>
            </div>
            <!---->
            <div
                    class="input-content inner-content">
                <div class="form-section-sub">
                    <div
                            class="ng-pristine ng-invalid ng-invalid-required"
                    >


                        <label class="control-label"> 대표이미지 <!----></label>
                        <input type="hidden"
                               name="">

                        <div class="input-content">
                            <div class="pc">
                                <div
                                        class="seller-product-img add-img"
                                >
                                    <div class="wrap-img">
                                        <!----><!---->
                                        <div>
                                            <ul class="img-list"
                                            >

                                                <li id>

                                                <%--대표이미지 multipart-form data이용--%>
                                                <%--form2--%>
                                                <br>
                                                <form name="formb" id="formb" action="/seller/img" method="post" enctype="multipart/form-data">
                                                    <input type="file" id="file" name="file" accept=".jpg, .jpeg, .png"/>
                                                    <button type="button" id="sendButton" name="sendButton" onclick="img_ajax();">사진 전송</button>

                                                </form>
                                                <%--form2 끝--%>

                                                <!----><!---->

<%--                                                    <!----><!---->--%>
<%--                                                    <div--%>
<%--                                                            class="register-img"--%>
<%--                                                            style=""--%>
<%--                                                    >--%>
<%--&lt;%&ndash;                                                        <!-- 이미지 띄울 곳 -->&ndash;%&gt;--%>
<%--&lt;%&ndash;                                                        <div class="btn-add-img" id="image-show"></div>&ndash;%&gt;--%>

<%--&lt;%&ndash;                                                    </div>&ndash;%&gt;--%>
<%--                                                    <!---->--%>
                                                </li>
                                                <!---->
                                            </ul>
                                        </div>
                                        <!---->
                                    </div>
                                </div>

                                <!----><!---->
                                <div
                                        class="form-group"
                                >
                                    <p
                                            class="sub-text text-primary mg-reset"
                                    >
                                        권장 크기 : 1000 X 1000(윈도 대상 750 X
                                        1000), 300 X 300 이상
                                    </p>
                                </div>
                                <!----><!---->
                            </div>
                        </div>
                        <%--</form>--%>
                    </div>


                    <!-- 추가이미지  -->
                    <div
                            class="ng-pristine ng-valid ng-valid-required"
                    >

                        <div class="form-sub-wrap" method="post" enctype="multipart/form-data">
                            <label class="control-label"
                            >추가이미지
                                <!----></label>

                            <!-- test -->
<%--                            <input type="file" accept="image/*" onchange="loadFile(this)"/>--%>



                            <div class="input-content">
                                <div
                                        class="pc"
                                >
                                    <div
                                            class="seller-product-img add-img"
                                    >
                                        <div class="wrap-img">
                                            <!----><!---->
                                            <div>
                                                <ul class="img-list">
                                                    <!----><!---->
                                                    <li>
                                                        <!----><!---->
                                                        <div class="register-img"
                                                             style=""
                                                        >

                                                            <!-- 추가 이미지 띄울 곳 -->
                                                            <div
                                                                    class="btn-add-img"
                                                                    id="image-show2"
                                                            ></div>

                                                        </div>
                                                        <!---->
                                                    </li>
                                                    <!---->
                                                </ul>
                                            </div>
                                            <!---->
                                        </div>
                                    </div>
                                    <!----><!---->
                                    <div
                                            class="form-group"
                                    >
                                        <p
                                                class="sub-text text-primary mg-reset"
                                        >
                                            권장 크기 : 1000 x 1000 (윈도대상 750 x
                                            1000)<br/>추가이미지는 최대 9개까지
                                            설정할 수 있습니다.<br/>jpg,jpeg,gif,png,bmp
                                            형식의 정지 이미지만 등록됩니다.<br/>
                                        </p>
                                    </div>
                                    <!----><!---->
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
            <!---->
        </div>
    </ui-view
    ><!---->

    <!-- 상세설명 -->
    <ui-view name="detailContent" id="anchor-detail-content"
    >
        <div class="form-section">
            <div
                    class="title-line"
            >
                <label class="col-lg-2 col-sm-3 col-xs-6 control-label"
                >상세설명
                    <!---->
                </label>
                <div class="col-lg-10 col-sm-9 col-xs-6 input-content">
                    <div class="set-option no-set"
                    ></div>
                </div>
            </div>
            <!---->
            <div
                    class="input-content inner-content"
            >
                <div class="form-section-sub">
                    <div class="form-sub-wrap">
                        <div
                                class="seller-product-detail seller-tap-wrapper"
                        >
                            <ul
                                    class="seller-tap"
                                    role="tablist"
                            >
                                <li
                                        role="tab"
                                        aria-selected="true"
                                >

                                </li>
                            </ul>
                            <!---->
                            <div
                                    class="content">
                                <div class="form-group sr-only">
                                </div>
                                <p class="ico-status">
                                    <i class="fn-shopping fn-65 fn-shopping-caution1 icon-color-big"
                                       aria-hidden="true"
                                    ></i>
                                </p>
                                <p class="btn-area"></p>
                            </div>
                            <!----><!---->
                        </div>
                        <!---->
                        <div
                                class="sub-text detail-content-info"
                        >
                            <div class="seller-input-wrap">
                                <textarea name="itemSpec"
                                          type="text"
                                          value=""
                                <%--${mode=="new"? '': 'readonly="readonly"'}--%>
                                          class="form-control ng-pristine ng-untouched ng-valid ng-empty ng-valid-pattern ng-valid-maxlength"
                                          style="height: 250px">${goodsDto.itemSpec} </textarea>
                            </div>
                            <br>
                            <span class="sub-text text-danger"
                            >외부 링크(네이버 폼 등)를 통한
                                  개인정보(휴대폰 번호, 이메일 주소) 수집은
                                  금지되므로 등록시 노출이 제재될 수 있습니다.
                                  <br
                                  /></span>
                            <span class="sub-text text-danger"
                            >http 이미지가 제대로 표시되지 않을 수
                                  있습니다. https 이미지로 등록해 주세요.<br
                                /></span>
                            <p class="sub-text text-primary">
                                상품명과 직접적 관련 없는 상세설명, 외부 링크
                                입력 시 관리자에 의해 판매 금지 될 수
                                있습니다.<br/>
                                안전거래정책에 위배될 경우 관리자에 의해 제재조치가 있을
                                수 있습니다.<br/>
                                네이버 이외의 외부링크, 일부 스크립트 및
                                태그는 자동 삭제될 수 있습니다.<br/>
                                상세설명 권장 크기 : 가로 860px
                                <br/>
                            </p>
                        </div>
                        <!---->

                        <!---->
                    </div>
                </div>
            </div>
        </div>
        <!---->

        <!-- 상품주요정보 -->
        <ui-view name="attribute">
            <!---->
            <div class="form-section" id="_prod-attr-section">
                <div class="title-line">
                    <label class="col-sm-3 col-xs-4 control-label"
                    >상품 주요정보</label>
                    <div class="col-sm-9 col-xs-8 input-content"></div>
                </div>
                <!---->
                <div
                        class="inner-content input-content"
                        style=""
                >
                    <div class="form-section-sub">
                        <!----><!----><!----><!---->
                        <div>
                            <div>
                                <div class="form-sub-wrap">
                                    <label class="control-label"
                                    >브랜드
                                        <!----><!----></label>
                                    <div class="input-content">
                                        <div class="form-inline">
                                            <div class="form-group">
                                                <div class="input-group auto-complete">
                                                    <div class="seller-input-wrap">
                                                        <div
                                                                class="selectize-control ng-pristine ng-untouched ng-valid single plugin-inputMaxlength"
                                                        >
                                                            <div
                                                                    class="selectize-input items not-full ng-valid ng-pristine"
                                                            >
                                                                <input class="form-control"
                                                                       type="text"
                                                                       placeholder="브랜드를 입력해주세요."
                                                                       maxlength="50"

                                                                />
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!---->
                                        <div class="form-group">
                                            <div class="seller-input narrow-input">
                                                <div>
                                                    <!---->
                                                    <!---->
                                                </div>
                                            </div>
                                        </div>
                                        <!---->
                                    </div>
                                </div>
                                <!---->
                                <div class="form-sub-wrap">
                                    <label class="control-label"
                                    >제조사
                                    </label>
                                    <div class="input-content">
                                        <div class="form-inline">
                                            <div class="form-group">
                                                <div class="input-group auto-complete">
                                                    <div class="seller-input-wrap">
                                                        <div
                                                                class="selectize-control ng-pristine ng-untouched ng-valid single plugin-inputMaxlength"
                                                        >
                                                            <div
                                                                    class="selectize-input items not-full ng-valid ng-pristine"
                                                            >
                                                                <input
                                                                        type="text"
                                                                        class="form-control"
                                                                        placeholder="제조사를 입력해주세요."
                                                                        maxlength="50"
                                                                />
                                                            </div>
                                                        </div>
                                                    </div>

                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <!-- 포장타입 -->
                                <div class="form-sub-wrap">
                                    <label class="control-label"
                                    >포장타입
                                    </label>
                                    <div class="input-content">
                                        <div class="form-inline">
                                            <div class="form-group">
                                                <div class="input-group auto-complete">
                                                    <div class="seller-input-wrap">
                                                        <div
                                                                class="selectize-control ng-pristine ng-untouched ng-valid single plugin-inputMaxlength"
                                                        >
                                                            <div
                                                                    class="selectize-input items not-full ng-valid ng-pristine"
                                                            >
                                                                <input name="pkgType"
                                                                       type="text"
                                                                       class="form-control"
                                                                       value="${goodsDto.pkgType}"
                                                                <%--                                                                ${mode=="new"? '': 'readonly="readonly"'}--%>
                                                                       placeholder="포장타입(상온, 냉장, 냉동)"
                                                                       maxlength="50"
                                                                />
                                                            </div>
                                                        </div>
                                                    </div>

                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!---->
                            </div>
                        </div><!---->
                        <!----><!----><!----><!----><!----><!---->

                        <!-- 원산지 -->
                        <div class="" style="">
                            <div>
                                <!---->
                                <div
                                        class="form-sub-wrap"
                                >
                                    <label class="control-label"
                                    >원산지<!----><!----></label
                                    >
                                    <div class="input-content">
                                        <div class="seller-fix-input2">
                                            <div class="fix-wrap">
                                                <div class="fix-area1">
                                                    <div class="form-group">
                                                        <div
                                                                class="selectize-control ng-pristine ng-untouched ng-valid single"
                                                        >
                                                            <div
                                                                    class="selectize-input items has-options ng-valid ng-pristine full has-items"
                                                            >
                                                                <div data-value="LOCAL"
                                                                     class="item">
                                                                    국산<br><br>

                                                                    시/도/군
                                                                    <input name="origin" type="text"
                                                                           class="form-control"
                                                                           placeholder="ex. 서울특별시"
                                                                    >
                                                                    <br>
                                                                    수입산<br><br>
                                                                    국가명
                                                                    <input name="origin" type="text"
                                                                           class="form-control"
                                                                           placeholder="ex. 미국"
                                                                    >
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div
                                                        class="fix-area2 ng-hide">
                                                    <div class="form-group">
                                                        <div class="seller-input-wrap">
                                                            <input
                                                                    type="text"
                                                                    class="form-control ng-pristine ng-untouched ng-empty ng-valid-pattern ng-valid-maxlength ng-valid ng-valid-required"
                                                                    placeholder="수입사입력"
                                                                    name="origin"
                                                            />
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <!----><!---->
                                        </div>
                                    </div>
                                </div>
                                <!---->
                            </div>
                        </div>
                        <!----><!----><!----><!----><!---->
                        <div
                                class="form-sub-wrap"
                        >
                            <label class="control-label"
                            >제조일자
                            </label>
                            <div class="input-content">
                                <div class="form-inline">
                                    <div class="form-group only-date">
                                        <div class="seller-calendar">
                                            <div class="input-daterange date form-inline">
                                                <div class="form-group">
                                                    <div
                                                            class="form-group _date_dropdown seller-datetime-picker _error_date_3348700136 dropdown"
                                                    >
                                                        <div
                                                                class="input-group dropdown-toggle dropdown_2072354656"
                                                        >
                                                            <label for="date">
                                                                <input
                                                                        type="date"
                                                                        max="2060-12-31"
                                                                        min="TODAY"
                                                                        value=""
                                                                        class="form-control ng-pristine ng-untouched ng-empty ng-valid-date-time-input ng-invalid ng-invalid-required"
                                                                /></label>
                                                            <!-- 달력보기 -->
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!----><!---->
                        <div
                                class="form-sub-wrap"
                        >
                            <label class="control-label">유효일자</label>
                            <div class="input-content">
                                <div class="form-inline">
                                    <div class="form-group only-date">
                                        <div class="seller-calendar">
                                            <div class="input-daterange date form-inline">
                                                <div class="form-group">
                                                    <div
                                                            class="form-group _date_dropdown seller-datetime-picker _error_date_2177498493 dropdown"
                                                    >
                                                        <div
                                                                class="input-group dropdown-toggle dropdown_3524647589"
                                                        >
                                                            <label for="date">
                                                                <input
                                                                        type="date"
                                                                        max="2060-12-31"
                                                                        min="TODAY"
                                                                        value=""
                                                                        class="form-control ng-pristine ng-untouched ng-empty ng-valid-date-time-input ng-invalid ng-invalid-required"

                                                                /></label>
                                                            <!---->
                                                        </div>
                                                        <!---->
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!----><!----><!---->
                        <div
                                class="form-sub-wrap"
                        >
                            <label
                                    class="control-label"
                            >쿠폰 적용 가능 여부</label
                            >
                            <div class="input-content">
                                <div class="seller-input-toggle form-group">
                                    <input
                                            type="radio"
                                            id="coupon"
                                            class="ng-pristine ng-untouched ng-valid ng-not-empty"
                                            name="cpnElgFl"
                                            value="Y"
                                    />
                                    <label
                                            for="coupon"
                                            class=""
                                    >가능</label>
                                    <input
                                            type="radio"
                                            id="coupon2"
                                            class="r-no-set ng-pristine ng-untouched ng-valid ng-not-empty"
                                            name="cpnElgFl"
                                            value="N"
                                    />
                                    <label for="coupon2">불가능</label>
                                </div>
                            </div>
                        </div>

                        <!-- 적립금 적용 가능 여부 -->
                        <div
                                class="form-sub-wrap"
                        >
                            <label
                                    class="control-label"
                            >적립금 적용 가능 여부</label
                            >
                            <div class="input-content">
                                <div class="seller-input-toggle form-group">
                                    <input
                                            type="radio"
                                            id="point1"
                                            class="ng-pristine ng-untouched ng-valid ng-not-empty"
                                            name="pointFl"
                                            value="Y"
                                    />
                                    <label
                                            for="point1"
                                            class=""
                                    >가능</label>
                                    <input
                                            type="radio"
                                            id="point2"
                                            class="r-no-set ng-pristine ng-untouched ng-valid ng-not-empty"
                                            name="pointFl"
                                            value="N"
                                    />
                                    <label for="point2">불가능</label>
                                </div>
                            </div>
                        </div>

                        <!-- 미성년자 구매 가능 여부 -->
                        <div
                                class="form-sub-wrap"
                        >
                            <label
                                    class="control-label"
                            >미성년자 구매</label
                            >
                            <div class="input-content">
                                <div class="seller-input-toggle form-group">
                                    <input
                                            type="radio"
                                            id="child1"
                                            class="ng-pristine ng-untouched ng-valid ng-not-empty"
                                            name="adultVerifFl"
                                            value="Y"
                                    />
                                    <label
                                            for="child1"
                                            class=""
                                    >가능</label>
                                    <input
                                            type="radio"
                                            id="child2"
                                            class="r-no-set ng-pristine ng-untouched ng-valid ng-not-empty"
                                            name="adultVerifFl"
                                            value="N"
                                    />
                                    <label for="child2">불가능</label>
                                </div>
                                <p
                                        class="sub-text text-primary ng-hide"
                                >
                                    성인상품은 만 19세 미만의 미성년자는 구매할 수
                                    없습니다.
                                </p>
                                <br>
                            </div>
                        </div>
                        <!----><!----><!---->
                    </div>
                </div>
                <!---->
            </div>
        </ui-view><!---->

        <!-- 상품정보제공고시 -->

        <%--    --%>
        <ui-view name="provided-notice"
        ><!----><!---->
            <div
                    class="form-section"
            >
                <!---->
                <div
                        class="title-line"
                >
                    <label class="col-lg-2 col-sm-3 col-xs-6 control-label"
                    >상품정보제공고시
                        <!----><!----></label
                    >
                    <div class="col-lg-10 col-sm-9 col-xs-6 input-content">
                        <div
                                class="set-option"
                        ></div>
                    </div>
                </div>
                <!---->
                <fieldset>
                    <!---->
                    <div
                            class="input-content inner-content"
                    >
                        <div class="form-section-sub">
                            <!----><!----><!---->
                            <div class="form-sub-wrap">
                                <label class="control-label"
                                >상품군<!----><!---->
                                    <input name="itemAnnCate"
                                           type="hidden"
                                           value="상품군"/>
                                </label
                                >
                                <div class="input-content">
                                    <div class="form-inline">
                                        <div
                                                class="form-group"
                                                style="min-width: 350px"
                                        >
                                            <div
                                                    class="selectize-control ng-pristine ng-untouched ng-valid single"
                                            >
                                                <div
                                                        class="selectize-input items has-options full has-items ng-valid ng-dirty"
                                                >
                                                    <div data-value="FOOD" class="item">
                                                        식품(농.축.수산물)
                                                        <input name="itemAnn"
                                                               type="hidden"
                                                               value="식품(농.축.수산물)"/>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!----><!---->
                            <div
                                    class=""
                                    style=""
                            >
                                <!---->
                                <div class="form-sub-wrap">
                                    <label class="control-label" for="prd_foodItem"
                                    >품목 또는 명칭<!---->
                                        <input name="itemAnnCate"
                                               type="hidden"
                                               value="품목 또는 명칭"
                                        />
                                    </label>
                                    <div class="input-content form-group">
                                        <div class="seller-input-wrap">
                                            <input name="itemAnn"
                                                   type="text"
                                                   class="form-control ng-pristine ng-untouched ng-empty ng-invalid ng-invalid-required ng-valid-pattern ng-valid-maxlength"
                                                   id="prd_foodItem"
                                                   maxlength="200"

                                            />
                                        </div>
                                    </div>
                                </div>
                                <div class="form-sub-wrap">
                                    <label class="control-label" for="prd_weight"
                                    >중량/용량<!----><i class="icon-must"
                                    ></i
                                    >
                                        <input name="itemAnnCate"
                                               type="hidden"
                                               value="중량/용량"
                                        /><!----></label
                                    >
                                    <div class="input-content form-group">
                                        <div class="seller-input-wrap">
                                            <input name="capa"
                                                   type="text"
                                                   class="form-control ng-pristine ng-untouched ng-empty ng-invalid ng-invalid-required ng-valid-pattern ng-valid-maxlength"
                                                   id="prd_weight"
                                            />
                                            <input name="itemAnn"
                                                   type="hidden"
                                                   class="form-control ng-pristine ng-untouched ng-empty ng-invalid ng-invalid-required ng-valid-pattern ng-valid-maxlength"
                                                   id="prd_weight2"
                                            />
                                        </div>
                                    </div>
                                </div>
                                <div class="form-sub-wrap">
                                    <label class="control-label" for="prd_amount"
                                    >판매단위<!----><i
                                            class="icon-must"
                                    ></i
                                    >
                                        <input name="itemAnnCate"
                                               type="hidden"
                                               value="판매단위"
                                        />
                                        <!----></label
                                    >
                                    <div class="input-content form-group">
                                        <div class="seller-input-wrap">
                                            <input name="sellUnit"
                                                   type="text"
                                                   oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"
                                                   class="form-control ng-pristine ng-untouched ng-empty ng-invalid ng-invalid-required ng-valid-pattern ng-valid-maxlength"
                                                   id="prd_amount"
                                                   maxlength="200"
                                                   placeholder="숫자만입력"
                                            />
                                            <input name="itemAnn"
                                                   type="hidden"
                                                   class="form-control ng-pristine ng-untouched ng-empty ng-invalid ng-invalid-required ng-valid-pattern ng-valid-maxlength"
                                                   id="prd_amount2"
                                            />
                                        </div>
                                    </div>
                                </div>
                                <div class="form-sub-wrap">
                                    <label class="control-label"
                                    >제조연월일<!---->
                                        <input name="itemAnnCate"
                                               type="hidden"
                                               value="제조연월일"
                                        /><!----></label
                                    >
                                    <div class="input-content">
                                        <div class="input-content provided-notice">
                                            <!----><!---->
                                            <div
                                                    class="form-inline"
                                            >
                                                <div class="form-group only-date">
                                                    <div class="seller-calendar">
                                                        <div
                                                                class="input-daterange date form-inline"
                                                        >
                                                            <div
                                                                    class="form-group _date_dropdown seller-datetime-picker _error_date_4808870775 dropdown"
                                                            >
                                                                <div
                                                                        class="input-group dropdown-toggle dropdown_7791242947"
                                                                >
                                                                    <label for="date">
                                                                        <input name="itemAnn"
                                                                               type="date"
                                                                               id="date"
                                                                               max="2060-12-31"
                                                                               min="TODAY"
                                                                               value=""
                                                                               class="form-control ng-pristine ng-untouched ng-empty ng-valid-date-time-input ng-invalid ng-invalid-required"

                                                                        /></label>
                                                                    <!---->
                                                                </div>
                                                                <!---->
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <!---->
                                        </div>

                                    </div>
                                </div>

                                <div class="form-sub-wrap">
                                    <label class="control-label"
                                    >소비기한 또는 품질유지기한<!----><i
                                            class="icon-must"
                                    ></i
                                    ><!---->
                                        <input name="itemAnnCate"
                                               type="hidden"
                                               value="소비기한 또는 품질유지기한"
                                        /></label
                                    >
                                    <div class="input-content">
                                        <div class="input-content provided-notice">

                                            <!----><!---->
                                            <div
                                                    class="form-inline"
                                                    style=""
                                            >
                                                <div class="form-group only-date">
                                                    <div class="seller-calendar">
                                                        <div
                                                                class="input-daterange date form-inline"
                                                        >
                                                            <div
                                                                    class="form-group _date_dropdown seller-datetime-picker _error_date_3561540492 dropdown"
                                                            >
                                                                <div
                                                                        class="input-group dropdown-toggle dropdown_9313997422"
                                                                        data-toggle="dropdown"
                                                                >
                                                                    <label for="date">
                                                                        <input name="itemAnn"
                                                                               type="date"
                                                                               max="20620-12-31"
                                                                               min="TODAY"
                                                                               value=""
                                                                               class="form-control ng-pristine ng-untouched ng-empty ng-valid-date-time-input ng-invalid ng-invalid-required"

                                                                        /></label>
                                                                    <!----><!----><!---->
                                                                </div>
                                                                <!---->
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <!---->
                                        </div>
                                    </div>
                                </div>
                                <div class="form-sub-wrap">
                                    <label class="control-label" for="prd_producer"
                                    >생산자<!----><i
                                            class="icon-must"
                                            aria-label="필수항목"
                                    ></i
                                    ><input name="itemAnnCate"
                                            type="hidden"
                                            value="생산자"
                                    />
                                        <!----></label
                                    >
                                    <div class="input-content form-group">
                                        <div class="seller-input-wrap">
                                            <input name="itemAnn"
                                                   type="text"
                                                   class="form-control ng-pristine ng-untouched ng-empty ng-invalid ng-invalid-required ng-valid-pattern ng-valid-maxlength"
                                                   id="prd_producer"
                                                   maxlength="200"
                                            />
                                        </div>
                                    </div>
                                </div>
                                <div class="form-sub-wrap">
                                    <label
                                            class="control-label"
                                            for="prd_relevantLawContent"
                                    >세부 품목군별 표시사항<!----><i
                                            aria-label="필수항목"
                                            class="icon-must"
                                    >
                                        <input name="itemAnnCate"
                                               type="hidden"
                                               value="세부 품목군별 표시사항"
                                        />
                                    </i
                                    ><!----></label
                                    >
                                    <div class="input-content form-group">
                                        <div class="seller-input">

                                        </div>
                                        <div
                                                class="seller-input-wrap2"
                                        >
                                            <input name="itemAnn"
                                                   type="text"
                                                   class="form-control ng-pristine ng-untouched ng-empty ng-invalid ng-invalid-required ng-valid-pattern ng-valid-maxlength"
                                                   id="prd_relevantLawContent"
                                            />

                                            <p class="sub-text text-primary">
                                                농산물 - ｢농수산물 품질관리법｣에 따른
                                                유전자변형농수산물 표시, 지리적 표시
                                            </p>
                                            <p class="sub-text text-primary">
                                                축산물 - 축산법에 따른 등급 표시 등급 (1++
                                                국내산 쇠고기의 경우 ｢소·돼지 식육의
                                                표시방법 및 부위 구분기준｣에 따라
                                                근내지방도 정보를 포함하여 표시), ｢가축 및
                                                축산물 이력관리에 관한 법률｣에 따른
                                                이력관리대상축산물 유무
                                            </p>
                                            <p class="sub-text text-primary">
                                                수입 농수축산물 - 수입식품안전관리특별법에
                                                따른 수입신고를 필함
                                            </p>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-sub-wrap">
                                    <label
                                            class="control-label"
                                            for="prd_productComposition"
                                    >상품구성<!----><i
                                            class="icon-must"
                                            aria-label="필수항목"
                                    ></i
                                    ><!----><input name="itemAnnCate"
                                                   type="hidden"
                                                   value="상품구성"
                                    /></label
                                    >
                                    <div class="input-content form-group">
                                        <div class="seller-input-wrap">
                                            <input name="itemAnn"
                                                   type="text"
                                                   class="form-control ng-pristine ng-untouched ng-empty ng-invalid ng-invalid-required ng-valid-pattern ng-valid-maxlength"
                                                   id="prd_productComposition"
                                                   maxlength="200"
                                            />
                                        </div>
                                    </div>
                                </div>
                                <div class="form-sub-wrap">
                                    <label class="control-label" for="prd_keep"
                                    >보관방법 또는 취급방법<!----><i
                                            class="icon-must"
                                            aria-label="필수항목"
                                    ><input name="itemAnnCate"
                                            type="hidden"
                                            value="보관방법 또는 취급방법"
                                    /></i
                                    ><!----></label
                                    >
                                    <div class="input-content form-group">
                                  <textarea name="itemAnn"
                                            class="form-control ng-pristine ng-untouched ng-empty ng-invalid ng-invalid-required ng-valid-pattern ng-valid-maxlength"
                                            rows="3"
                                            id="prd_keep"
                                            maxlength="500"
                                  ></textarea>
                                    </div>
                                </div>
                                <div class="form-sub-wrap">
                                    <label class="control-label" for="prd_adCaution"
                                    >소비자 안전을 위한 주의사항<!----><i
                                            class="icon-must"
                                    ><input name="itemAnnCate"
                                            type="hidden"
                                            value="소비자 안전을 위한 주의사항"
                                    /></i
                                    ><!----></label
                                    >
                                    <div class="input-content form-group">
                                  <textarea name="itemAnn"
                                            class="form-control ng-pristine ng-untouched ng-empty ng-invalid ng-invalid-required ng-valid-pattern ng-valid-maxlength"
                                            rows="3"
                                            id="prd_adCaution"
                                  ></textarea>
                                        <p class="sub-text text-primary">
                                            ｢식품 등의 표시ㆍ 광고에 관한 법률 시행규칙｣
                                            제5조 및 [별표 2]에 따른 표시사항을 말함
                                        </p>
                                    </div>
                                </div>
                                <div class="form-sub-wrap">
                                    <label
                                            class="control-label"
                                            for="prd_customerServicePhoneNumber"
                                    >소비자 상담 관련 전화번호<!----><i
                                            aria-label="필수항목"
                                            class="icon-must"
                                    ><input name="itemAnnCate"
                                            type="hidden"
                                            value="소비자 상담 관련 전화번호"
                                    /></i
                                    ><!----></label
                                    >
                                    <div class="input-content form-group">
                                        <div class="seller-input-wrap">
                                            <input name="itemAnn"
                                                   type="text"
                                                   class="form-control ng-pristine ng-untouched ng-empty ng-invalid ng-invalid-required ng-valid-maxlength"
                                                   id="prd_customerServicePhoneNumber"
                                            />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </fieldset>
            </div>
            <!----><!----></ui-view
        ><!---->
        <%--    상품정보제공고시 끝    --%>

        <!-- 배송, 반품, 교환 -->
        <ui-view name="delivery"
        ><!---->
            <div
                    class="seller-alert-tip-wrap"
            >
                <div class="seller-alert-tip"></div>
            </div>
            <!----><!----><!---->
            <div
                    class="form-section"
            >
                <!---->
                <div
                        class="title-line"
                >
                    <label class="col-lg-2 col-sm-2 col-xs-3 control-label">배송<!---->
                        <i class="icon-must"
                           aria-label="필수항목"
                        ></i><!---->
                        <!----><!----></label>
                    <div
                            class="col-lg-10 col-sm-10 col-xs-9 input-content"
                    ></div>
                </div>
                <!----><!---->
                <div
                        class="input-content inner-content"
                >
                    <div class="form-section-sub">
                        <!----><!----><!----><!----><!---->
                        <div
                                class="form-sub-detail ng-hide"
                        >
                            <div class="form-sub-detail-wrap">
                                <label class="control-label"></label>
                                <div class="input-content">
                                </div>
                            </div>
                        </div>
                        <!----><!----><!----><!---->

                        <!----><!---->
                        <div>
                            <div class="">
                                <div
                                        class="form-sub-wrap ng-valid ng-dirty ng-valid-parse"
                                >
                                    <label class="control-label"
                                    >배송속성<!----><i
                                            class="icon-must"
                                            aria-label="필수항목"
                                    ></i><!----></label
                                    >
                                    <div class="input-content">
                                        <div class="form-inline">
                                            <div class="form-group">
                                                <div class="seller-input-toggle">
                                                    <!----><input
                                                        type="radio"
                                                        name="shipType"
                                                        id="NORMAL"
                                                        class="ng-valid ng-not-empty ng-touched ng-dirty"
                                                        value="일반배송"
                                                />
                                                    <label ng-repeat-end="" for="NORMAL"
                                                    >일반배송</label
                                                    ><!----><input
                                                        type="radio"
                                                        name="shipType"
                                                        id="TODAY"
                                                        class="ng-valid ng-not-empty ng-dirty ng-touched ng-valid-parse"
                                                        value="샛별배송"
                                                />
                                                    <label for="TODAY"
                                                    >샛별배송</label
                                                    ><!---->
                                                </div>
                                            </div>

                                        </div>
                                        <!----><!----><!----><!----><!---->
                                    </div>
                                </div>
                            </div>
                            <br>
                            <!----><!---->
                        </div><!----><!----><!----><!---->
                        <div
                                class="ng-pristine ng-valid-max ng-valid-pattern ng-valid-maxlength ng-valid-required ng-invalid ng-invalid-min ng-invalid-minlength"
                        >
                            <div
                                    class="form-sub-detail">
                                <div
                                        class="form-sub-detail-wrap ng-hide"
                                >
                                    <label class="control-label" for="basic_price"
                                    >기본 배송비<!----><i
                                            class="icon-must"></i
                                    ><!----></label
                                    >
                                    <div class="input-content">
                                        <div class="form-inline">
                                            <div class="form-group">
                                                <div class="input-group">
                                                    <div class="seller-input-wrap">
                                                        <input
                                                                name="product.deliveryInfo.deliveryFee.baseFee"
                                                                class="form-control ng-pristine ng-untouched ng-not-empty ng-valid-max ng-valid-required ng-valid-pattern ng-valid-maxlength ng-invalid ng-invalid-min ng-invalid-minlength"
                                                                id="basic_price"
                                                                placeholder="3000"
                                                                value="3000"
                                                                type="text"
                                                                readonly
                                                                oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"
                                                        />
                                                    </div>
                                                    <span class="input-group-addon">원</span>
                                                </div>
                                            </div>
                                        </div>
                                        <!---->
                                    </div>
                                </div>
                                <br>
                                <!----><!----><!----><!---->
                            </div>
                        </div>
                        <!----><!---->
                    </div>
                </div>
                <!---->
            </div>

            <!-- 반품/교환 -->
            <div
                    class="form-section"
            >
                <div
                        class="title-line"
                        role="button"
                >
                    <label class="col-lg-2 col-sm-3 col-xs-4 control-label"
                    >반품/교환<!----><i
                            class="icon-must"
                    ></i><!---->
                    </label>
                    <div
                            class="col-lg-10 col-sm-9 col-xs-8 input-content"
                    ></div>
                </div>
                <!---->
                <div
                        class="inner-content input-content"
                >
                    <div class="form-section-sub">
                        <!---->
                        <div
                                class="ng-pristine ng-valid-min ng-valid-max ng-invalid ng-invalid-required ng-valid-pattern ng-valid-minlength ng-valid-maxlength"
                        >
                            <div
                                    class="form-sub-wrap"
                            >
                                <label class="control-label"
                                >반품/교환 택배사<!----><i
                                        class="icon-must"
                                        aria-label="필수항목"
                                ></i
                                ><!----></label
                                >
                                <div class="input-content">
                                    <div class="form-inline">
                                        <div class="form-group">
                                            <div
                                                    class="selectize-control ng-pristine ng-untouched ng-valid single"
                                            >
                                                <div
                                                        class="selectize-input items ng-valid ng-pristine has-options full has-items"
                                                >
                                                    <div data-value="2542631" class="item">
                                                        기본 반품택배사(한진택배)
                                                    </div>
                                                    <input
                                                            type="text"
                                                            autocomplete="off"
                                                            tabindex="0"
                                                            style="
                                            width: 4px;
                                            opacity: 0;
                                            position: absolute;
                                            left: -10000px;
                                          "
                                                    />
                                                </div>
                                                <div
                                                        class="selectize-dropdown single ng-pristine ng-untouched ng-valid"
                                                        style="
                                          display: none;
                                          visibility: visible;
                                          width: 206px;
                                          top: 34px;
                                          left: 0px;
                                        "
                                                >
                                                    <div class="selectize-dropdown-content">
                                                        <div
                                                                class="option selected"
                                                        >
                                                            기본 반품택배사(한진택배)
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <input
                                                    name="_returnDeliveryCompany"
                                                    class="ng-pristine ng-untouched ng-valid selectized ng-valid-required ng-not-empty"
                                                    style="
                                        width: 4px;
                                        opacity: 0;
                                        position: absolute;
                                        left: -10000px;
                                      "
                                            />
                                        </div>
                                    </div>
                                    <!---->
                                    <p
                                            class="sub-text text-primary"
                                    >
                                        기본 반품택배사는 브로컬리
                                        지정택배(한진택배)로 최초 자동설정 됩니다.</span><br/>
                                    </p>
                                    <!---->
                                </div>
                            </div>
                            <div class="form-sub-wrap">
                                <label class="control-label" for="return_price"
                                >반품배송비(편도)<!----><i
                                        class="icon-must"
                                        aria-label="필수항목"
                                ></i
                                ><!---->
                                </label
                                >
                                <div class="input-content">
                                    <div class="form-inline">
                                        <div class="form-group">
                                            <div class="input-group">
                                                <div class="seller-input-wrap">
                                                    <input
                                                            name="product.deliveryInfo.claimDeliveryInfo.returnDeliveryFee"
                                                            type="text"
                                                            oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"
                                                            class="form-control ng-pristine ng-untouched ng-empty ng-valid-min ng-valid-max ng-invalid ng-invalid-required ng-valid-pattern ng-valid-minlength ng-valid-maxlength"
                                                            id="return_price"
                                                            placeholder="숫자만 입력"
                                                    />
                                                </div>
                                                <span class="input-group-addon">원</span>
                                            </div>
                                        </div>
                                    </div>
                                    <!---->
                                </div>
                            </div>
                            <div class="form-sub-wrap">
                                <label class="control-label" for="exchange_price"
                                >교환배송비(왕복)<!----><i
                                        class="icon-must"
                                ></i
                                ><!----></label>
                                <div class="input-content">
                                    <div class="form-inline">
                                        <div class="form-group">
                                            <div class="input-group">
                                                <div class="seller-input-wrap">
                                                    <input
                                                            name="product.deliveryInfo.claimDeliveryInfo.exchangeDeliveryFee"
                                                            type="text"
                                                            oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"
                                                            class="form-control ng-pristine ng-untouched ng-empty ng-valid-min ng-valid-max ng-invalid ng-invalid-required ng-valid-pattern ng-valid-minlength ng-valid-maxlength"
                                                            id="exchange_price"
                                                            placeholder="숫자만 입력"
                                                    />
                                                </div>
                                                <span class="input-group-addon">원</span>
                                            </div>
                                        </div>
                                    </div>
                                    <!---->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!---->
            </div>
            <!----></ui-view
        ><!----><!---->


        <!-- 검색설정 -->
        <ui-view name="searchConfig">
            <div class="form-section">
                <div
                        class="title-line"
                        role="button"
                >
                    <label class="col-sm-2 col-xs-4 control-label"
                    >검색설정
                        <!----><!----></label>
                </div>
                <!---->
                <div
                        class="inner-content input-content"
                        style=""
                >
                    <div
                            class="form-section-sub"
                    >
                        <div class="form-sub-wrap">
                            <label class="control-label">태그</label>
                            <div class="input-content">
                                <div class="info-result">
                                    <div class="form-group">
                                        <div class="seller-input">
                                            <label
                                            >
                                                태그 직접 입력(최대 3개)<span></span
                                            ></label>
                                        </div>
                                    </div>
                                    <!---->
                                    <div
                                            class="input-tag"
                                    >
                                        <div class="form-group">
                                            <div
                                                    class="selectize-control ng-pristine ng-untouched ng-valid multi"
                                            >
                                                <div
                                                        class="selectize-input items not-full ng-valid ng-pristine"
                                                >
                                                    <input name="keyword"
                                                           type="text"
                                                           class="form-control1"
                                                           placeholder="태그1"
                                                    />
                                                    <input name="itemIdList"
                                                           class="itemId"
                                                           id="itemId1"
                                                    <%--  type="hidden"--%>
                                                    >
                                                    <input name="keyword"
                                                           type="text"
                                                           class="form-control2"
                                                           placeholder="태그2"
                                                    />
                                                    <%--                                                    <input name="itemIdList"--%>
                                                    <%--                                                           class="itemId"--%>
                                                    <%--                                                           id="itemId2"--%>
                                                    <%--                                                    >--%>

                                                    <input name="keyword"
                                                           type="text"
                                                           class="form-control3"
                                                           placeholder="태그3"
                                                    />
                                                    <%--                                                    <input name="itemIdList"--%>
                                                    <%--                                                           class="itemId"--%>
                                                    <%--                                                           id="itemId3"--%>
                                                    <%--                                                    >--%>

                                                    <%--  일단 값 넣어보자  --%>
                                                    <input name="itemDcAmt"
                                                           id="dc_price"
                                                           type="hidden"
                                                           class="form-control"
                                                           placeholder="할인가격"
                                                    />
                                                    <input name="itemId"
                                                           id="itemId"
                                                    <%--                                                           type="hidden"--%>
                                                           class="itemId"
                                                           placeholder="아이템아이디"
                                                    />
                                                    <input name="cateCode"
                                                           id="cateCode"
                                                           type="text"
                                                           class="form-control"
                                                           placeholder="카테고리코드"
                                                    />

                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!---->
                                </div>
                                <p class="sub-text text-primary">
                                    입력하신 태그 중 일부는 내부 기준에 의해검색에
                                    노출되지 않을 수 있습니다.<br/>카테고리/ 브랜드/
                                    판매처명이 포함된 태그의 경우는 등록되지
                                    않습니다.<br/>판매상품과 직접 관련 없는 태그를
                                    입력 시 판매금지될 수 있습니다.
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </ui-view><!----><!----><!---->
        <%--        <button type="button" onclick="submitForm('forma')">submit</button>--%>
</form>
<%--form 태그 끝--%>


<!-- 취소, 저장버튼 -->
<div class="seller-btn-area btn-group-xlg hidden-xs">
    <button
            type="button"
            class="btn btn-default">
        취소
    </button>

    <button type="button" value="submit" onclick="submitForm('formb')"
            id="writeBtn"
            class="btn">
              <span class="content">저장하기</span
              ><span class="progress"
    ><span
            class="progress-inner notransition"
    ></span
    ></span>
    </button>

</div>


<%--Ajax--%>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
<script>
    for (var i = 0; i < 13; i++) {
        function s_ajax(i) {

            let codeId = $("#maincate" + i).val();
            alert(codeId)
            $.ajax({
                url: "/seller/ajax",
                type: "get",
                dataType: 'json',
                data: {
                    "codeId": codeId
                },
                success: function (list) {
                    const $middledata = $("#middledata");
                    $("ul#middledata").children().remove();
                    $.each(list, function (i, data) {
                        let li = document.createElement('li');
                        let button = document.createElement('button');
                        button.textContent = data.exp;
                        button.value = data.codeId;
                        button.id = "child_button" + i;
                        li.appendChild(button);
                        $middledata.append(li);
                        // $('#child_button'+i).click(choose);
                        // function choose(){
                        //     let cateCode = document.getElementsByName('cateCode');
                        //     cateCode.value = data.codeId;

                        // }

                    })


                },
                error: function (request, error) {
                    alert("error");
                    alert(this.data)

                    alert("code:" + request.status + "\n" + "message:" + request.responseText + "\n" + "error:" + error);
                },

            })
        }
    }

    //대표이미지 저장
    function img_ajax() {

        //formData객체 생성
        let formData = new FormData();
        let fileInput = document.querySelector("#file");
        let itemId = document.getElementById("itemId").value
        let tmpPath = URL.createObjectURL(fileInput.files[0]);
        formData.append('file', fileInput.files[0]);
        // formData.append('name', name.value);
        formData.append('img', tmpPath);
        formData.append('repImgFl', 'Y');
        formData.append('itemId', itemId);


        console.log(formData);

        $.ajax({
            url: '/seller/img',
            type: 'POST',
            data: formData,
            processData: false,
            contentType: false,
            success: function (response) {
                alert("Image uploaded successfully:", response);

                alert(tmpPath);

            },
            error: function (error) {
                alert("Error uploading image:", error);
                // 에러 처리 코드 추가
                alert("code:" + request.status + "\n" + "message:" + request.responseText + "\n" + "error:" + error);
                alert("error:" + error);
            }
        });

    }

    //문자열 자르기







    // 좌측 네비
    var acc = document.getElementsByClassName("accordion");
    var j;

    for (j = 0; j < acc.length; j++) {
        acc[j].addEventListener("click", function () {
            this.classList.toggle("active");
            var panel = this.nextElementSibling;
            if (panel.style.maxHeight) {
                panel.style.maxHeight = null;
            } else {
                panel.style.maxHeight = panel.scrollHeight + "px";
            }
        });
    }

    // 할인율 계산
    function ShowPrice() {
        var originPrice = document.querySelector("#prd_price").value;
        var rate = document.querySelector("#prd_sale").value;

        var savePrice = Math.floor(originPrice * (rate / 100) / 10) * 10;
        var resultPrice = originPrice - savePrice;
        document.querySelector("#showResult").innerHTML = resultPrice + "원 (" + savePrice + " 원 할인)"
        document.querySelector("#dc_price").value = savePrice
    }

    // 동시입력 가능
    $("#prd_weight").change(function () {
        $('#prd_weight2').val($(this).val());
    });
    $("#prd_amount").change(function () {
        $('#prd_amount2').val($(this).val());
    });


    //난수 만들기
    var newId = function () {
        return new Date().getTime();
        // 1970/1/1 12:00 기준 경과한 밀리 초 -> 중복 발생X
        // 1초=1000밀리초
    }
    document.getElementById("itemId").value = newId();
    document.getElementById("itemId1").value = newId();
    // document.getElementById("itemId2").value = newId();
    // document.getElementById("itemId3").value = newId();

    // document.getElementsByClassName("itemId").value = newId();

    // 이미지------------------------------------------------

    // // 이미지 넣기
    // var acc = document.getElementsByClassName("menuitem");
    // var i;
    //
    // for (i = 0; i < acc.length; i++) {
    //     acc[i].addEventListener("click", function () {
    //         this.classList.toggle("active");
    //         var panel = this.nextElementSibling;
    //         if (panel.style.maxHeight) {
    //             panel.style.maxHeight = null;
    //         } else {
    //             panel.style.maxHeight = panel.scrollHeight + "px";
    //         }
    //     });
    // }
    //
    // // 대표 이미지 파일 가져오기
    // function loadFile(input) {
    //     let file = input.files[0]; // 선택된 파일 가져오기
    //
    //     let newImage = document.createElement("img"); //새 이미지 추가
    //
    //     //이미지 source 가져오기
    //
    //     newImage.src = URL.createObjectURL(file);
    //     newImage.name = "img";
    //     newImage.id = "img-id";
    //     newImage.style.width = "100%";
    //     newImage.style.height = "100%";
    //     newImage.style.objectFit = "cover";
    //
    //     //이미지를 image-show div에 추가
    //     let container = document.getElementById("image-show");
    //     container.appendChild(newImage);
    // }
    //
    // // 추가 이미지 파일 가져오기
    // function loadFile(input) {
    //     let file2 = input.files[0]; // 선택된 파일 가져오기
    //
    //     let newImage = document.createElement("img"); //새 이미지 추가
    //
    //     //이미지 source 가져오기
    //     newImage.src = URL.createObjectURL(file2);
    //     newImage.value = URL.createObjectURL(file2);
    //     newImage.id = "img-id";
    //     newImage.style.width = "100%";
    //     newImage.style.height = "100%";
    //     newImage.style.objectFit = "cover";
    //
    //     //이미지를 image-show div에 추가
    //     let container = document.getElementById("image-show");
    //     container.appendChild(newImage);
    // }

    //     '등록버튼' 값 보내기
    $(document).ready(function () { //main()
        $('#writeBtn').on("click", function () {
            let form = $('#forma');
            form.attr("action", "<c:url value='/seller/productsCreate/write'/>");
            form.attr("method", "post");
            form.submit();

            alert("저장되었습니다.");

        });
    })

</script>

</body>
</html>
