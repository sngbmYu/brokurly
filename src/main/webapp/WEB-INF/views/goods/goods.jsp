
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> <%-- 가격에 ,찍기 기능용--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <link rel="stylesheet" href="<c:url value='/resources/css/goods/goods.css'/>"/>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
          integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
          crossorigin="anonymous"></script>
  <script src="https://code.jquery.com/jquery-3.7.1.min.js"
          integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
</head>
<body class="vsc-initialized">
<div>
  <div class="header0">
  </div>

  <div class="goods-0">
    <div class="header1"> <!-- 해더 나중에 수정해야됨 -->
      <div class="header2">
      </div>
    </div>
    <div class="goods-1">
      <div class="goods-2">
        <main class="goods-3">
          <div class="goods-27"></div>
          <section class="goods-28">
            <div>
              샛별배송
            </div>
            <div>
              <h1>${goods.name}</h1>
              <h2 class="goods-117">100g당 : 1,999원</h2>
            </div>
            <h2>
              <span class="goods-118">${goods.dcRt}<!-- -->%</span> <!-- 할인율 -->
              <span class="goods-119" id="resultPrice"><fmt:formatNumber value="${goods.salePrice}" pattern="#,### 원" />
              </span>
            </h2>
            <span class="goods-45">
                                <span>
                                  <fmt:formatNumber value="${goods.price}" pattern="#,### 원" />
                                </span>
                            </span>
            <p class="goods-120">원산지: ${goods.origin}</p>
            <div class="goods-121">적립 제외 상품입니다.</div>
            <ul>
              <li class="goods-98">
                <dt class="goods-99">배송</dt>
                <dd class="goods-102">
                  <p class="goods-101">${goods.shipType}배송</p>
                  <p class="goods-100">23시 전 주문 시 내일 아침 7시 전 도착
                    (대구·부산·울산 샛별배송 운영시간 별도 확인)</p>
                </dd>
              </li>
              <li class="goods-98">
                <dt class="goods-99">판매자</dt>
                <dd class="goods-102">
                  <p class="goods-101">${goods.sellerName}</p>
                </dd>
              </li>
              <li class="goods-98">
                <dt class="goods-99">포장타입</dt>
                <dd class="goods-102">
                  <p class="goods-101">${goods.pkgType}</p>
                  <p class="goods-100">택배배송은 에코 포장이 스티로폼으로 대체됩니다.</p>
                </dd>
              </li>
              <li class="goods-98">
                <dt class="goods-99">판매단위</dt>
                <dd class="goods-102">
                  <p class="goods-101">${goods.sellUnit}개</p>
                </dd>
              </li>
              <li class="goods-98">
                <dt class="goods-99">중량/용량</dt>
                <dd class="goods-102">
                  <p class="goods-101">${goods.capa}</p>
                </dd>
              </li>
              <li class="goods-98">
                <dt class="goods-99">알레르기정보</dt>
                <dd class="goods-102">
                  <p class="goods-101">- 쇠고기, 대두, 밀 함유
                    본 제품은 돼지고기, 닭고기, 우유, 계란, 새우, 토마토, 오징어, 조개류(굴,바지락,개량조개)를 사용한 제품과 같은 제조시설에서 제조하고 있습니다.</p>
                </dd>
              </li>
              <li class="goods-98">
                <dt class="goods-99">소비기한(또는 유통기한)정보</dt>
                <dd class="goods-102">
                  <p class="goods-101">수령일 포함 최소 3일 남은 제품을 보내 드립니다.</p>
                </dd>
              </li>
              <li class="goods-98">
                <dt class="goods-99">안내사항</dt>
                <dd class="goods-102">
                  <p class="goods-101">해당 상품은 냉장 제품입니다 상품 수령 후 최대한 빠른 시일내에 섭취를 권장드립니다.</p>
                </dd>
              </li>
            </ul>
            <div>
              <div>
                <li class="goods-98">
                  <dt class="goods-99">상품선택</dt>
                  <dd class="goods-102">
                    <div>
                      <div>
                        <span name="name">${goods.name}</span>
                      </div>
                      <span class="goods-100" name="point_fl">적립제외상품</span>
                      <div class="goods-103">
                        <div class="goods-104">
                          <button class="minus_btn goods-105" type="button" aria-label="수량내리기"></button>
                          <div class="goods-106">
                            <input type ="text" disabled="disabled" style="background-color: rgb(255, 255, 255); text-align: center; width: 30px; border: none;" class="quantity_input" value="1">
                          </div>
                          <button class="plus_btn goods-107" type="button" aria-label="수량올리기"></button>
                        </div>
                        <div>
                          <span class="goods-8" ><fmt:formatNumber value="${goods.price}" pattern="#,### 원" />
                            </span>
                          <span id="price">
                          <fmt:formatNumber value="${goods.salePrice}" pattern="#,### 원" />
                          </span>
                        </div>
                      </div>
                    </div>
                  </dd>
                </li>
              </div>
              <div>
                <div>
                  <div class="goods-42">
                    <span>총 상품금액 :</span>
                    <span class="totalPrice goods-108"><fmt:formatNumber value="${goods.salePrice}" pattern="#,### 원" />
                    </span>
                  </div>
                  <div class="goods-43">
                    <span class="goods-110">적립</span>
                    <span>구매 시
                        <strong>0원 적립</strong>
                    </span>
                  </div>
                </div>
              </div>
              <div class="goods-111">
                <button class="goods-112" onclick="heartToggle()" width="56" height="56" radius="3">
                                        <span>
                                            <img src="/resources/image/heartX.png" alt="" class="img1" id="heart">
                                        </span>
                </button>
                <button class="goods-112" onclick="bellToggle()" width="56" height="56" radius="3">
                                        <span>
                                            <img src="/resources/image/bellX.png" alt="" class="img1" id="bell">
                                        </span>
                </button>
                <div class="goods-113">
                  <button class="btn_cart goods-115" type="button" radius="3" id="addBtn">
                    <span class="goods-114 ">장바구니 담기</span>
                  </button>
                </div>
              </div>
            </div>
          </section>
        </main>
        <nav class="goods-5">
          <ul class="goods-6">
            <li class="goods-7">
              <a href="#section1" class="goods-4">
                <span>상품설명</span>
              </a>
            </li>
            <li class="goods-7">
              <a href="#section2" class="goods-4">
                <span>상세정보</span>
              </a>
            </li>
            <li class="goods-7">
              <a href="#section3" class="goods-4">
                <span>후기</span>
                <span>(<!-- -->76,724<!-- -->)</span>
              </a>
            </li>
            <li class="goods-7">
              <a href="#section4" class="goods-4">
                <span>문의</span>
              </a>
            </li>
          </ul>
        </nav>
        <div>
          <div class="goods-19" id="section1">
            <div>
              <div>
                <div>
                  <div>
                    <div>
                      <img
                          src="https://img-cf.kurly.com/cdn-cgi/image/width=1010,quality=90/shop/data/goodsview/20210804/gv00000208742_1.jpg">
                      <!--상품설명 이미지-->
                    </div>
                    <div>
                      <h3>
                        <small>합리적으로 즐기는 온 가족 반찬</small>
                        [KF365] 양념 소불고기
                      </h3>
                      <p>${goods.itemSpec}</p>
                    </div>
                  </div>
                  <div>
                    <h3>
                      <span>BroKurly’s Tip</span>
                    </h3>
                    <div>
                      <div>
                        <p>
                          <strong>보관법</strong>
                          <b>・</b>
                          -2~10℃에서 냉장 보관하세요. 신선한 상태로 보내드리는 냉장육이므로, 수령 후 가급적 빠른 시일 내에 섭취하는 것이 좋습니다.
                        </p>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="goods-19" id="section2">
            <div>
              <img
                  src="https://img-cf.kurly.com/cdn-cgi/image/width=1010,quality=90/shop/data/goodsview/20230904/gv00000723355_1.jpg"
                  alt="자세히보기 이미지">
            </div>
            <div class="goods-12">
              <h3>상품고시정보</h3>
              <ul class="goods-9">
                <li class="goods-10">제품명</li>
                <li class="goods-11">상품설명 및 상품이미지 참조</li>
                <li class="goods-10">식품의 유형</li>
                <li class="goods-11">상품설명 및 상품이미지 참조</li>
                <li class="goods-10">생산자 및 소재지 (수입품의 경우 생산자, 수입자 및 제조국)</li>
                <li class="goods-11">상품설명 및 상품이미지 참조</li>
                <li class="goods-10">제조연월일, 소비기한 또는 품질유지기한</li>
                <li class="goods-11">상품설명 및 상품이미지 참조</li>
                <li class="goods-10">포장단위별 내용물의 용량(중량), 수량</li>
                <li class="goods-11">상품설명 및 상품이미지 참조</li>
                <li class="goods-10">원재료명 (｢농수산물의 원산지 표시 등에 관한 법률｣에 따른 원산지 표시 포함) 및 함량(원재료 함량 표시대상 식품에 한함)</li>
                <li class="goods-11">상품설명 및 상품이미지 참조</li>
                <li class="goods-10">영양성분 (영양성분 표시대상 식품에 한함)</li>
                <li class="goods-11">상품설명 및 상품이미지 참조</li>
                <li class="goods-10">유전자변형식품에 해당하는 경우의 표시</li>
                <li class="goods-11">상품설명 및 상품이미지 참조</li>
                <li class="goods-10">소비자 안전을 위한 주의사항 (｢식품 등의 표시ㆍ광고에 관한 법률 시행규칙｣ 제5조 및 [별표 2]에 따른 표시사항을 말함)</li>
                <li class="goods-11">상품설명 및 상품이미지 참조</li>
                <li class="goods-10">수입식품의 경우 “수입식품안전관리 특별법에 따른 수입신고를 필함”의 문구</li>
                <li class="goods-11">상품설명 및 상품이미지 참조</li>
                <li class="goods-10">소비자 상담 관련 전화번호</li>
                <li class="goods-11">컬리 고객행복센터 (1644-1107)</li>
                <li class="goods-10"></li>
              </ul>
            </div>
            <div class="goods-12">
              <h3>판매자정보</h3>
              <ul class="goods-9">
                <li class="goods-10">판매자</li>
                <li class="goods-11">컬리</li>
              </ul>
            </div>
            <div>
              <div class="goods-13">
                <div>
                  <h5 class="goods-14">고객행복센터</h5>
                  <p class="goods-83">궁금하신 점이나 서비스 이용에 불편한 점이 있으신가요?
                    <span class="goods-84 ">문제가 되는 부분을 사진으로 찍어 아래 중 편하신 방법으로 접수해 주시면 빠르게 도와드리겠습니다.</span>
                  </p>
                </div>
                <ul class="goods-85">
                  <li class="goods-86">
                    <strong class="goods-87">전화 문의 1644-1107</strong>
                    <span class="goods-88">월~토요일 오전 7시 - 오후 6시</span>
                  </li>
                  <li class="goods-86">
                    <strong class="goods-87">카카오톡 문의</strong>
                    <span class="goods-88">월~토요일 오전 7시 - 오후 6시</span>
                    <span class="goods-88">일/공휴일 오전 7시 - 오후 1시</span>
                    <strong class="goods-89 e18xf2bx0">카카오톡에서<!-- --> '<!-- --> 컬리<!-- --> ' <!-- -->를 검색 후<br>대화창에 문의 및
                      불편사항을<br>남겨주세요.</strong>
                  </li>
                  <li class="goods-86">
                    <strong class="goods-87">홈페이지 문의</strong>
                    <span class="goods-88">365일</span>
                    <span class="goods-88">로그인<!-- --> &gt; <!-- -->마이컬리<!-- --> &gt; <!-- -->1:1 문의</span>
                    <strong class="goods-89">고객센터 운영 시간에 순차적으로<br>답변해드리겠습니다.</strong>
                  </li>
                </ul>
              </div>
            </div>
            <div class="goods-29">
              <strong class="goods-30">교환 및 환불 안내</strong>
              <p class="goods-31">교환 및 환불이 필요하신 경우 고객행복센터로 문의해주세요.</p>
              <button type="button" id="button1" class="goods-15">닫기</button>
            </div>
            <div id="content1">
              <div class="goods-78">
                <strong class="goods-79">01. 상품에 문제가 있는 경우</strong>
                <p class="goods-80">받으신 상품이 표시·광고 내용 또는 계약 내용과 다른 경우에는 상품을 받은 날부터 3개월 이내,<!-- --><!-- -->그 사실을 알게 된 날부터
                  30일 이내에 교환 및 환불을 요청하실 수 있습니다.<!-- --><!-- -->상품의 정확한 상태를 확인할 수 있도록 사진을 함께 보내주시면 더 빠른 상담이 가능합니다.
                  <span>※ 배송 상품에 문제가 있는 것으로 확인되면 배송비는 판매자가 부담합니다.</span>
                </p>
              </div>
              <div class="goods-78">
                <strong class="goods-79">02. 단순 변심, 주문 착오의 경우</strong>
                <p class="goods-80">
                  <strong>신선 / 냉장 / 냉동 식품</strong>
                  상품의 특성상 재판매가 불가하여 단순 변심, 주문 착오, 주소 오입력 등 고객의 책임 있는 사유로 인한 교환 및 반품이 어려운 점 양해 부탁드립니다.<!-- --><!-- -->상품에
                  따라 조금씩 맛이 다를 수 있으며, 개인의 기호에 따라 같은 상품도 다르게 느끼실 수 있습니다.
                  <strong>유통기한 30일 이상 식품 (신선 / 냉장 / 냉동 제외) &amp; 기타 상품 (뷰티 제품, 생활용품)</strong>
                  상품을 받은 날부터 7일 이내 교환, 반품이 가능합니다. 고객행복센터로 문의해주세요.
                  <span>※ 단순 변심, 주문 착오, 주소 오입력 등 고객의 책임 있는 사유로 인한 교환 및 반품의 경우 고객님께서 왕복배송비 6,000원을 부담하셔야 합니다.</span>
                </p>
              </div>
              <div class="goods-78">
                <strong class="goods-79">03. 교환·반품이 불가한 경우</strong>
                <p class="goods-80">다음에 해당하는 교환·환불 신청은 처리가 어려울 수 있으니 양해 부탁드립니다.<!-- -->
                  <span>고객님의 책임 있는 사유로 상품이 멸실되거나 훼손된 경우<!-- --><!-- -->(단, 상품의 내용을 확인하기 위해 포장 등을 훼손한 경우는 제외)</span>
                  <span>고객님의 사용 또는 일부 소비로 상품의 가치가 감소한 경우</span>
                  <span>시간이 지나 다시 판매하기 곤란할 정도로 상품의 가치가 감소한 경우</span>
                  <span>복제가 가능한 상품의 포장이 훼손된 경우</span>
                  <span>고객님의 주문에 따라 개별적으로 생산되는 상품의 제작이 이미 진행된 경우</span>
                </p>
              </div>
            </div>
            <div class="goods-29">
              <strong class="goods-30">주문 취소 안내</strong>
              <p class="goods-31">
                <strong class="goods-82">- [주문완료] 상태일 경우에만 주문 취소 가능합니다.
                  - [마이컬리 &gt; 주문내역 상세페이지] 에서 직접 취소하실 수 있습니다.</strong>
              </p>
              <button type="button" id="button2" class="goods-15">닫기</button>
            </div>
            <div id="content2">
              <div class="goods-78">
                <strong class="goods-79">주문 취소 관련</strong>
                <p class="goods-80">- [배송준비중] 부터는 취소가 불가하니, 반품으로 진행해주세요. (상품에 따라 반품이 불가할 수 있습니다.)<!-- --><!-- -->- 주문마감
                  시간에 임박할수록 취소 가능 시간이 짧아질 수 있습니다.<!-- --><!-- -->- 비회원은 App 또는 모바일 웹사이트에서 [마이컬리 <!-- -->&gt;<!-- --> 비회원
                  주문조회 페이지] 에서 취소가 가능합니다.<!-- --><!-- -->- 일부 예약상품은 배송 3~4일 전에만 취소 가능합니다.<!-- --><!-- -->- 주문상품의 부분취소는
                  불가능합니다. 전체 주문 취소 후 다시 구매 해주세요.<!-- --><!-- -->- 미성년자 결제 시 법정대리인이 그 거래를 취소할 수 있습니다.<!-- --></p>
              </div>
              <div class="goods-78">
                <strong class="goods-79">결제 승인 취소 / 환불 관련</strong>
                <p class="goods-80">- 카드 환불은 카드사 정책에 따르며, 자세한 사항은 카드사에 문의해주세요.<!-- --><!-- -->- 결제 취소 시, 사용하신 적립금과 쿠폰도
                  모두 복원됩니다.</p>
              </div>
            </div>
            <div class="goods-81">
              <strong class="goods-30">배송관련 안내</strong>
              <p>배송 과정 중 기상 악화 및 도로교통 상황에 따라 부득이하게 지연 배송이 발생될 수 있습니다.</p>
            </div>
          </div>
          <div class="goods-19" id="section3">
            <section class="goods-16">
              <h2 aria-label="상품 후기">상품 후기</h2>
              <div class="goods-46">
                <button class="goods-47">
                  <span
                      style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0; margin: 0; padding: 0; position: absolute; inset: 0px;">
                      <img alt="상품 후기" sizes="100vw"
                           srcset="https://img-cf.kurly.com/cdn-cgi/image/width=240,height=240,fit=crop,quality=85/shop/data/review/20240201/aa86e74c-e5d6-4a4f-b88b-66c5a7e960cf.jpeg 640w, https://img-cf.kurly.com/cdn-cgi/image/width=240,height=240,fit=crop,quality=85/shop/data/review/20240201/aa86e74c-e5d6-4a4f-b88b-66c5a7e960cf.jpeg 750w, https://img-cf.kurly.com/cdn-cgi/image/width=240,height=240,fit=crop,quality=85/shop/data/review/20240201/aa86e74c-e5d6-4a4f-b88b-66c5a7e960cf.jpeg 828w, https://img-cf.kurly.com/cdn-cgi/image/width=240,height=240,fit=crop,quality=85/shop/data/review/20240201/aa86e74c-e5d6-4a4f-b88b-66c5a7e960cf.jpeg 1080w, https://img-cf.kurly.com/cdn-cgi/image/width=240,height=240,fit=crop,quality=85/shop/data/review/20240201/aa86e74c-e5d6-4a4f-b88b-66c5a7e960cf.jpeg 1200w, https://img-cf.kurly.com/cdn-cgi/image/width=240,height=240,fit=crop,quality=85/shop/data/review/20240201/aa86e74c-e5d6-4a4f-b88b-66c5a7e960cf.jpeg 1920w, https://img-cf.kurly.com/cdn-cgi/image/width=240,height=240,fit=crop,quality=85/shop/data/review/20240201/aa86e74c-e5d6-4a4f-b88b-66c5a7e960cf.jpeg 2048w, https://img-cf.kurly.com/cdn-cgi/image/width=240,height=240,fit=crop,quality=85/shop/data/review/20240201/aa86e74c-e5d6-4a4f-b88b-66c5a7e960cf.jpeg 3840w"
                           src="https://img-cf.kurly.com/cdn-cgi/image/width=240,height=240,fit=crop,quality=85/shop/data/review/20240201/aa86e74c-e5d6-4a4f-b88b-66c5a7e960cf.jpeg"
                           decoding="async" data-nimg="fill"
                           style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%; object-fit: cover;">
                  </span>
                </button>
                <button class="goods-47">
                                            <span
                                                style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;">
                                                <img alt="상품 후기" sizes="100vw"
                                                     srcset="https://img-cf.kurly.com/cdn-cgi/image/width=240,height=240,fit=crop,quality=85/shop/data/review/20240201/fdc6f4c3-e1bd-4408-882a-da5725805b18.jpeg 640w, https://img-cf.kurly.com/cdn-cgi/image/width=240,height=240,fit=crop,quality=85/shop/data/review/20240201/fdc6f4c3-e1bd-4408-882a-da5725805b18.jpeg 750w, https://img-cf.kurly.com/cdn-cgi/image/width=240,height=240,fit=crop,quality=85/shop/data/review/20240201/fdc6f4c3-e1bd-4408-882a-da5725805b18.jpeg 828w, https://img-cf.kurly.com/cdn-cgi/image/width=240,height=240,fit=crop,quality=85/shop/data/review/20240201/fdc6f4c3-e1bd-4408-882a-da5725805b18.jpeg 1080w, https://img-cf.kurly.com/cdn-cgi/image/width=240,height=240,fit=crop,quality=85/shop/data/review/20240201/fdc6f4c3-e1bd-4408-882a-da5725805b18.jpeg 1200w, https://img-cf.kurly.com/cdn-cgi/image/width=240,height=240,fit=crop,quality=85/shop/data/review/20240201/fdc6f4c3-e1bd-4408-882a-da5725805b18.jpeg 1920w, https://img-cf.kurly.com/cdn-cgi/image/width=240,height=240,fit=crop,quality=85/shop/data/review/20240201/fdc6f4c3-e1bd-4408-882a-da5725805b18.jpeg 2048w, https://img-cf.kurly.com/cdn-cgi/image/width=240,height=240,fit=crop,quality=85/shop/data/review/20240201/fdc6f4c3-e1bd-4408-882a-da5725805b18.jpeg 3840w"
                                                     src="https://img-cf.kurly.com/cdn-cgi/image/width=240,height=240,fit=crop,quality=85/shop/data/review/20240201/fdc6f4c3-e1bd-4408-882a-da5725805b18.jpeg"
                                                     decoding="async" data-nimg="fill"
                                                     style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%; object-fit: cover;">
                                            </span>
                </button>
                <button class="goods-47">
                                            <span
                                                style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;">
                                                <img alt="상품 후기" sizes="100vw"
                                                     srcset="https://img-cf.kurly.com/cdn-cgi/image/width=240,height=240,fit=crop,quality=85/shop/data/review/20240201/eee90451-744f-4533-8428-b679b6459696.jpg 640w, https://img-cf.kurly.com/cdn-cgi/image/width=240,height=240,fit=crop,quality=85/shop/data/review/20240201/eee90451-744f-4533-8428-b679b6459696.jpg 750w, https://img-cf.kurly.com/cdn-cgi/image/width=240,height=240,fit=crop,quality=85/shop/data/review/20240201/eee90451-744f-4533-8428-b679b6459696.jpg 828w, https://img-cf.kurly.com/cdn-cgi/image/width=240,height=240,fit=crop,quality=85/shop/data/review/20240201/eee90451-744f-4533-8428-b679b6459696.jpg 1080w, https://img-cf.kurly.com/cdn-cgi/image/width=240,height=240,fit=crop,quality=85/shop/data/review/20240201/eee90451-744f-4533-8428-b679b6459696.jpg 1200w, https://img-cf.kurly.com/cdn-cgi/image/width=240,height=240,fit=crop,quality=85/shop/data/review/20240201/eee90451-744f-4533-8428-b679b6459696.jpg 1920w, https://img-cf.kurly.com/cdn-cgi/image/width=240,height=240,fit=crop,quality=85/shop/data/review/20240201/eee90451-744f-4533-8428-b679b6459696.jpg 2048w, https://img-cf.kurly.com/cdn-cgi/image/width=240,height=240,fit=crop,quality=85/shop/data/review/20240201/eee90451-744f-4533-8428-b679b6459696.jpg 3840w"
                                                     src="https://img-cf.kurly.com/cdn-cgi/image/width=240,height=240,fit=crop,quality=85/shop/data/review/20240201/eee90451-744f-4533-8428-b679b6459696.jpg"
                                                     decoding="async" data-nimg="fill"
                                                     style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%; object-fit: cover;">
                                            </span>
                </button>
                <button class="goods-47">
                                            <span
                                                style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;">
                                                <img alt="상품 후기" sizes="100vw"
                                                     srcset="https://img-cf.kurly.com/cdn-cgi/image/width=240,height=240,fit=crop,quality=85/shop/data/review/20240201/16d981b1-a7eb-4cac-b1cb-98093cded3e0.jpeg 640w, https://img-cf.kurly.com/cdn-cgi/image/width=240,height=240,fit=crop,quality=85/shop/data/review/20240201/16d981b1-a7eb-4cac-b1cb-98093cded3e0.jpeg 750w, https://img-cf.kurly.com/cdn-cgi/image/width=240,height=240,fit=crop,quality=85/shop/data/review/20240201/16d981b1-a7eb-4cac-b1cb-98093cded3e0.jpeg 828w, https://img-cf.kurly.com/cdn-cgi/image/width=240,height=240,fit=crop,quality=85/shop/data/review/20240201/16d981b1-a7eb-4cac-b1cb-98093cded3e0.jpeg 1080w, https://img-cf.kurly.com/cdn-cgi/image/width=240,height=240,fit=crop,quality=85/shop/data/review/20240201/16d981b1-a7eb-4cac-b1cb-98093cded3e0.jpeg 1200w, https://img-cf.kurly.com/cdn-cgi/image/width=240,height=240,fit=crop,quality=85/shop/data/review/20240201/16d981b1-a7eb-4cac-b1cb-98093cded3e0.jpeg 1920w, https://img-cf.kurly.com/cdn-cgi/image/width=240,height=240,fit=crop,quality=85/shop/data/review/20240201/16d981b1-a7eb-4cac-b1cb-98093cded3e0.jpeg 2048w, https://img-cf.kurly.com/cdn-cgi/image/width=240,height=240,fit=crop,quality=85/shop/data/review/20240201/16d981b1-a7eb-4cac-b1cb-98093cded3e0.jpeg 3840w"
                                                     src="https://img-cf.kurly.com/cdn-cgi/image/width=240,height=240,fit=crop,quality=85/shop/data/review/20240201/16d981b1-a7eb-4cac-b1cb-98093cded3e0.jpeg"
                                                     decoding="async" data-nimg="fill"
                                                     style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%; object-fit: cover;">
                                            </span>
                </button>
                <button class="goods-47">
                                            <span
                                                style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;">
                                                <img alt="상품 후기" sizes="100vw"
                                                     srcset="https://img-cf.kurly.com/cdn-cgi/image/width=240,height=240,fit=crop,quality=85/shop/data/review/20240201/48852a9b-d350-47f4-8fc2-033ad1a8fe72.jpeg 640w, https://img-cf.kurly.com/cdn-cgi/image/width=240,height=240,fit=crop,quality=85/shop/data/review/20240201/48852a9b-d350-47f4-8fc2-033ad1a8fe72.jpeg 750w, https://img-cf.kurly.com/cdn-cgi/image/width=240,height=240,fit=crop,quality=85/shop/data/review/20240201/48852a9b-d350-47f4-8fc2-033ad1a8fe72.jpeg 828w, https://img-cf.kurly.com/cdn-cgi/image/width=240,height=240,fit=crop,quality=85/shop/data/review/20240201/48852a9b-d350-47f4-8fc2-033ad1a8fe72.jpeg 1080w, https://img-cf.kurly.com/cdn-cgi/image/width=240,height=240,fit=crop,quality=85/shop/data/review/20240201/48852a9b-d350-47f4-8fc2-033ad1a8fe72.jpeg 1200w, https://img-cf.kurly.com/cdn-cgi/image/width=240,height=240,fit=crop,quality=85/shop/data/review/20240201/48852a9b-d350-47f4-8fc2-033ad1a8fe72.jpeg 1920w, https://img-cf.kurly.com/cdn-cgi/image/width=240,height=240,fit=crop,quality=85/shop/data/review/20240201/48852a9b-d350-47f4-8fc2-033ad1a8fe72.jpeg 2048w, https://img-cf.kurly.com/cdn-cgi/image/width=240,height=240,fit=crop,quality=85/shop/data/review/20240201/48852a9b-d350-47f4-8fc2-033ad1a8fe72.jpeg 3840w"
                                                     src="https://img-cf.kurly.com/cdn-cgi/image/width=240,height=240,fit=crop,quality=85/shop/data/review/20240201/48852a9b-d350-47f4-8fc2-033ad1a8fe72.jpeg"
                                                     decoding="async" data-nimg="fill"
                                                     style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%; object-fit: cover;">
                                            </span>
                </button>
                <button class="goods-47">
                                            <span
                                                style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;">
                                                <img alt="상품 후기" sizes="100vw"
                                                     srcset="https://img-cf.kurly.com/cdn-cgi/image/width=240,height=240,fit=crop,quality=85/shop/data/review/20240201/9b11b72f-9ba9-466b-a130-3a0c96e36b34.jpeg 640w, https://img-cf.kurly.com/cdn-cgi/image/width=240,height=240,fit=crop,quality=85/shop/data/review/20240201/9b11b72f-9ba9-466b-a130-3a0c96e36b34.jpeg 750w, https://img-cf.kurly.com/cdn-cgi/image/width=240,height=240,fit=crop,quality=85/shop/data/review/20240201/9b11b72f-9ba9-466b-a130-3a0c96e36b34.jpeg 828w, https://img-cf.kurly.com/cdn-cgi/image/width=240,height=240,fit=crop,quality=85/shop/data/review/20240201/9b11b72f-9ba9-466b-a130-3a0c96e36b34.jpeg 1080w, https://img-cf.kurly.com/cdn-cgi/image/width=240,height=240,fit=crop,quality=85/shop/data/review/20240201/9b11b72f-9ba9-466b-a130-3a0c96e36b34.jpeg 1200w, https://img-cf.kurly.com/cdn-cgi/image/width=240,height=240,fit=crop,quality=85/shop/data/review/20240201/9b11b72f-9ba9-466b-a130-3a0c96e36b34.jpeg 1920w, https://img-cf.kurly.com/cdn-cgi/image/width=240,height=240,fit=crop,quality=85/shop/data/review/20240201/9b11b72f-9ba9-466b-a130-3a0c96e36b34.jpeg 2048w, https://img-cf.kurly.com/cdn-cgi/image/width=240,height=240,fit=crop,quality=85/shop/data/review/20240201/9b11b72f-9ba9-466b-a130-3a0c96e36b34.jpeg 3840w"
                                                     src="https://img-cf.kurly.com/cdn-cgi/image/width=240,height=240,fit=crop,quality=85/shop/data/review/20240201/9b11b72f-9ba9-466b-a130-3a0c96e36b34.jpeg"
                                                     decoding="async" data-nimg="fill"
                                                     style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%; object-fit: cover;">
                                            </span>
                </button>
                <button class="goods-47">
                                            <span
                                                style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;">
                                                <img alt="상품 후기" sizes="100vw"
                                                     srcset="https://img-cf.kurly.com/cdn-cgi/image/width=240,height=240,fit=crop,quality=85/shop/data/review/20240201/c5954d3c-a89a-4857-858c-e51d8e8ccfad.jpg 640w, https://img-cf.kurly.com/cdn-cgi/image/width=240,height=240,fit=crop,quality=85/shop/data/review/20240201/c5954d3c-a89a-4857-858c-e51d8e8ccfad.jpg 750w, https://img-cf.kurly.com/cdn-cgi/image/width=240,height=240,fit=crop,quality=85/shop/data/review/20240201/c5954d3c-a89a-4857-858c-e51d8e8ccfad.jpg 828w, https://img-cf.kurly.com/cdn-cgi/image/width=240,height=240,fit=crop,quality=85/shop/data/review/20240201/c5954d3c-a89a-4857-858c-e51d8e8ccfad.jpg 1080w, https://img-cf.kurly.com/cdn-cgi/image/width=240,height=240,fit=crop,quality=85/shop/data/review/20240201/c5954d3c-a89a-4857-858c-e51d8e8ccfad.jpg 1200w, https://img-cf.kurly.com/cdn-cgi/image/width=240,height=240,fit=crop,quality=85/shop/data/review/20240201/c5954d3c-a89a-4857-858c-e51d8e8ccfad.jpg 1920w, https://img-cf.kurly.com/cdn-cgi/image/width=240,height=240,fit=crop,quality=85/shop/data/review/20240201/c5954d3c-a89a-4857-858c-e51d8e8ccfad.jpg 2048w, https://img-cf.kurly.com/cdn-cgi/image/width=240,height=240,fit=crop,quality=85/shop/data/review/20240201/c5954d3c-a89a-4857-858c-e51d8e8ccfad.jpg 3840w"
                                                     src="https://img-cf.kurly.com/cdn-cgi/image/width=240,height=240,fit=crop,quality=85/shop/data/review/20240201/c5954d3c-a89a-4857-858c-e51d8e8ccfad.jpg"
                                                     decoding="async" data-nimg="fill"
                                                     style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%; object-fit: cover;">
                                            </span>
                </button>
                <button class="goods-47">
                                            <span
                                                style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;">
                                                <img alt="상품 후기" sizes="100vw"
                                                     srcset="https://img-cf.kurly.com/cdn-cgi/image/width=240,height=240,fit=crop,quality=85/shop/data/review/20240201/74ddc216-ebb9-4fd9-8dbe-7ba4853971a8.jpg 640w, https://img-cf.kurly.com/cdn-cgi/image/width=240,height=240,fit=crop,quality=85/shop/data/review/20240201/74ddc216-ebb9-4fd9-8dbe-7ba4853971a8.jpg 750w, https://img-cf.kurly.com/cdn-cgi/image/width=240,height=240,fit=crop,quality=85/shop/data/review/20240201/74ddc216-ebb9-4fd9-8dbe-7ba4853971a8.jpg 828w, https://img-cf.kurly.com/cdn-cgi/image/width=240,height=240,fit=crop,quality=85/shop/data/review/20240201/74ddc216-ebb9-4fd9-8dbe-7ba4853971a8.jpg 1080w, https://img-cf.kurly.com/cdn-cgi/image/width=240,height=240,fit=crop,quality=85/shop/data/review/20240201/74ddc216-ebb9-4fd9-8dbe-7ba4853971a8.jpg 1200w, https://img-cf.kurly.com/cdn-cgi/image/width=240,height=240,fit=crop,quality=85/shop/data/review/20240201/74ddc216-ebb9-4fd9-8dbe-7ba4853971a8.jpg 1920w, https://img-cf.kurly.com/cdn-cgi/image/width=240,height=240,fit=crop,quality=85/shop/data/review/20240201/74ddc216-ebb9-4fd9-8dbe-7ba4853971a8.jpg 2048w, https://img-cf.kurly.com/cdn-cgi/image/width=240,height=240,fit=crop,quality=85/shop/data/review/20240201/74ddc216-ebb9-4fd9-8dbe-7ba4853971a8.jpg 3840w"
                                                     src="https://img-cf.kurly.com/cdn-cgi/image/width=240,height=240,fit=crop,quality=85/shop/data/review/20240201/74ddc216-ebb9-4fd9-8dbe-7ba4853971a8.jpg"
                                                     decoding="async" data-nimg="fill"
                                                     style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%; object-fit: cover;">
                                            </span>
                </button>
                <a class="goods-48">
                  <span>+더보기</span>
                </a>
              </div>
              <div>
                <div class="goods-92">
                  <span class="goods-93">총 76,724개</span>
                  <div class="goods-94">
                    <button class="goods-95">추천순</button>
                    <button class="goods-96">최근등록순</button>
                  </div>
                </div>
                <div class="goods-56">
                  <button class="goods-61">
                    <p class="goods-97">
                      <span>회원 등급</span>
                    </p>
                  </button>
                  <div class="goods-49">
                    <header class="goods-50">
                      <h3>회원 등급</h3>
                      <button type="button">
                        <svg width="12.8" height="12.8" viewBox="0 0 16 16" fill="none"
                             xmlns="http://www.w3.org/2000/svg">
                          <path
                              d="M13.78 3.96303C12.504 2.16973 10.4086 1 8.04 1C4.15192 1 1 4.15192 1 8.04C1 11.9281 4.15192 15.08 8.04 15.08C11.9281 15.08 15.08 11.9281 15.08 8.04"
                              stroke="#b5b5b5" stroke-width="1.8" stroke-linecap="square"
                              stroke-linejoin="round"></path>
                          <path d="M14.4933 1L14.4933 4.52H10.9733" stroke="#b5b5b5" stroke-width="1.8"
                                stroke-linecap="square" stroke-linejoin="round"></path>
                        </svg>
                        <span>초기화</span>
                      </button>
                    </header>
                    <div>
                      <hr>
                    </div>
                    <div>
                      <ul>
                        <li>
                          <button type="button" class="goods-51">
                                                                <span>
                                                                    <svg width="24" height="24" viewBox="0 0 24 24"
                                                                         fill="none" xmlns="http://www.w3.org/2000/svg">
                                                                        <path
                                                                            d="M23.5 12C23.5 18.3513 18.3513 23.5 12 23.5C5.64873 23.5 0.5 18.3513 0.5 12C0.5 5.64873 5.64873 0.5 12 0.5C18.3513 0.5 23.5 5.64873 23.5 12Z"
                                                                            stroke="#ddd" fill="none"></path>
                                                                        <path d="M7 12.6667L10.3846 16L18 8.5"
                                                                              stroke="#ddd" stroke-width="1.5"
                                                                              stroke-linecap="round"
                                                                              stroke-linejoin="round"></path>
                                                                    </svg>
                                                                </span>
                            <div>
                                                                    <span>그린
                                                                        <span class="goods-55">6,350</span>
                                                                    </span>
                            </div>
                          </button>
                        </li>
                        <li>
                          <button type="button" class="goods-51">
                                                                <span>
                                                                    <svg width="24" height="24" viewBox="0 0 24 24"
                                                                         fill="none" xmlns="http://www.w3.org/2000/svg">
                                                                        <path
                                                                            d="M23.5 12C23.5 18.3513 18.3513 23.5 12 23.5C5.64873 23.5 0.5 18.3513 0.5 12C0.5 5.64873 5.64873 0.5 12 0.5C18.3513 0.5 23.5 5.64873 23.5 12Z"
                                                                            stroke="#ddd" fill="none"></path>
                                                                        <path d="M7 12.6667L10.3846 16L18 8.5"
                                                                              stroke="#ddd" stroke-width="1.5"
                                                                              stroke-linecap="round"
                                                                              stroke-linejoin="round"></path>
                                                                    </svg>
                                                                </span>
                            <div>
                                                                    <span>프렌즈
                                                                        <span class="goods-55">9,999+</span>
                                                                    </span>
                            </div>
                          </button>
                        </li>
                        <li>
                          <button type="button" class="goods-51">
                                                                <span>
                                                                    <svg width="24" height="24" viewBox="0 0 24 24"
                                                                         fill="none" xmlns="http://www.w3.org/2000/svg">
                                                                        <path
                                                                            d="M23.5 12C23.5 18.3513 18.3513 23.5 12 23.5C5.64873 23.5 0.5 18.3513 0.5 12C0.5 5.64873 5.64873 0.5 12 0.5C18.3513 0.5 23.5 5.64873 23.5 12Z"
                                                                            stroke="#ddd" fill="none"></path>
                                                                        <path d="M7 12.6667L10.3846 16L18 8.5"
                                                                              stroke="#ddd" stroke-width="1.5"
                                                                              stroke-linecap="round"
                                                                              stroke-linejoin="round"></path>
                                                                    </svg>
                                                                </span>
                            <div>
                                                                    <span>일반
                                                                        <span class="goods-55">9,999+</span>
                                                                    </span>
                            </div>
                          </button>
                        </li>
                        <li>
                          <button type="button" class="goods-51">
                                                                <span>
                                                                    <svg width="24" height="24" viewBox="0 0 24 24"
                                                                         fill="none" xmlns="http://www.w3.org/2000/svg">
                                                                        <path
                                                                            d="M23.5 12C23.5 18.3513 18.3513 23.5 12 23.5C5.64873 23.5 0.5 18.3513 0.5 12C0.5 5.64873 5.64873 0.5 12 0.5C18.3513 0.5 23.5 5.64873 23.5 12Z"
                                                                            stroke="#ddd" fill="none"></path>
                                                                        <path d="M7 12.6667L10.3846 16L18 8.5"
                                                                              stroke="#ddd" stroke-width="1.5"
                                                                              stroke-linecap="round"
                                                                              stroke-linejoin="round"></path>
                                                                    </svg>
                                                                </span>
                            <div>
                                                                    <span>멤버스
                                                                        <span class="goods-55">3,621</span>
                                                                    </span>
                            </div>
                          </button>
                        </li>
                      </ul>
                    </div>
                    <footer class="goods-53">
                      <button type="button" class="goods-52">
                        <p class="goods-54">76,813개 후기 보기</p>
                      </button>
                    </footer>
                  </div>
                </div>
                <div class="goods-90">
                  <div class="noticeList">
                    <span class="goods-91">공지</span>
                    <button class="notice">베스트 후기 선정 안내</button>
                    <div class="panel">
                      <p>안녕하세요.
                        컬리는 상품에 대한 고객 여러분의 생생한 의견을 듣고 더 나은 상품을 준비하기 위해 상품 후기 게시판을 운영하고 있습니다.
                        또한 고객님들의 다양한 후기를 통해 상품을 구매하시는 데 도움이 되실 수 있도록 베스트 후기를 선정하고 있어요!
                      </p>
                    </div>
                  </div>
                  <div class="noticeList">
                    <span class="goods-91">공지</span>
                    <button class="notice">상품후기 적립금 정책 안내</button>
                    <div class="panel">
                      <p>안녕하세요. 컬리 입니다.
                        2024년 상품후기 적립금 지급 정책 안내해 드리니 후기 작성에 참고 부탁드립니다.
                      </p>
                    </div>
                  </div>
                </div>
                <div class="goods-17">
                  <div class="goods-18">
                    <div>
                      <span>베스트</span>
                      <span>멤버스</span>
                      <span>김**</span>
                    </div>
                  </div>
                  <article>
                    <div>
                      <div>
                        <h3>[KF365] 양념 소불고기 1kg (냉장)</h3>
                      </div>
                      <p>이건 고기도 큼직하고 자잘한 고기들이 별로 없어서 좋았어요~</p>
                      <div>
                        <button>
                                                        <span
                                                            style="box-sizing: border-box; display: inline-block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: relative; max-width: 100%;">
                                                            <span
                                                                style="box-sizing: border-box; display: block; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; max-width: 100%;">
                                                                <img alt="" aria-hidden="true"
                                                                     src="data:image/svg+xml,%3csvg%20xmlns=%27http://www.w3.org/2000/svg%27%20version=%271.1%27%20width=%2793%27%20height=%2793%27/%3e"
                                                                     style="display: block; max-width: 100%; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px;">
                                                            </span>
                                                            <img alt="리뷰 이미지 썸네일"
                                                                 src="https://img-cf.kurly.com/cdn-cgi/image/width=240,height=240,fit=crop,quality=85/shop/data/review/20240129/fa69877c-d25d-4394-9ec1-b0ec002ab97b.jpg"
                                                                 decoding="async" data-nimg="intrinsic"
                                                                 style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%; object-fit: cover;"
                                                                 srcset="https://img-cf.kurly.com/cdn-cgi/image/width=240,height=240,fit=crop,quality=85/shop/data/review/20240129/fa69877c-d25d-4394-9ec1-b0ec002ab97b.jpg 1x, https://img-cf.kurly.com/cdn-cgi/image/width=240,height=240,fit=crop,quality=85/shop/data/review/20240129/fa69877c-d25d-4394-9ec1-b0ec002ab97b.jpg 2x">
                                                        </span>
                        </button>
                      </div>
                      <footer>
                        <div>
                          <span>2024.01.29</span>
                        </div>
                        <button class="likeX">
                                                        <span>
                                                            <img src="/resources/image/like1.png" alt="" class="img2" id="like1">
                                                        </span>
                          <span>도움돼요 3</span>
                        </button>
                      </footer>
                    </div>
                  </article>
                </div>
                <div class="goods-17">
                  <div class="goods-18">
                    <div>
                      <span>베스트</span>
                      <span>라벤더</span>
                      <span>권**</span>
                    </div>
                  </div>
                  <article>
                    <div>
                      <div>
                        <h3>[KF365] 양념 소불고기 1kg (냉장)</h3>
                      </div>
                      <p>집에 또띠아 남은 것과 유통기한이 임박한 사워크림이 있어서 소불고기 사서 퀘사디아 만들어먹었어요. 퀘사디아는 난생 처음 도전해보는데 정말 간단하게 만들 수 있지만 기대
                        이상으로 맛있어서 레시피 공유해볼게요! 👩‍🍳 </p>
                      <div>
                        <button>
                          <span style="box-sizing: border-box; display: inline-block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: relative; max-width: 100%;">
                              <span style="box-sizing: border-box; display: block; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; max-width: 100%;">
                                  <img alt="" aria-hidden="true"
                                       src="data:image/svg+xml,%3csvg%20xmlns=%27http://www.w3.org/2000/svg%27%20version=%271.1%27%20width=%2793%27%20height=%2793%27/%3e"
                                       style="display: block; max-width: 100%; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px;">
                              </span>
                              <img alt="리뷰 이미지 썸네일"
                                   src="https://img-cf.kurly.com/cdn-cgi/image/width=240,height=240,fit=crop,quality=85/shop/data/review/20231219/c41f1d7c-7375-4558-9a78-3b4e31b78f65.jpeg"
                                   decoding="async" data-nimg="intrinsic"
                                   style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%; object-fit: cover;"
                                   srcset="https://img-cf.kurly.com/cdn-cgi/image/width=240,height=240,fit=crop,quality=85/shop/data/review/20231219/c41f1d7c-7375-4558-9a78-3b4e31b78f65.jpeg 1x, https://img-cf.kurly.com/cdn-cgi/image/width=240,height=240,fit=crop,quality=85/shop/data/review/20231219/c41f1d7c-7375-4558-9a78-3b4e31b78f65.jpeg 2x">
                          </span>
                        </button>
                        <button>
                          <span
                              style="box-sizing: border-box; display: inline-block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: relative; max-width: 100%;">
                              <span
                                  style="box-sizing: border-box; display: block; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; max-width: 100%;">
                                  <img alt="" aria-hidden="true"
                                       src="data:image/svg+xml,%3csvg%20xmlns=%27http://www.w3.org/2000/svg%27%20version=%271.1%27%20width=%2793%27%20height=%2793%27/%3e"
                                       style="display: block; max-width: 100%; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px;">
                              </span>
                              <img alt="리뷰 이미지 썸네일"
                                   src="https://img-cf.kurly.com/cdn-cgi/image/width=240,height=240,fit=crop,quality=85/shop/data/review/20231219/3632aa82-771f-454e-9e0f-3c5ed414caef.jpeg"
                                   decoding="async" data-nimg="intrinsic"
                                   style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%; object-fit: cover;"
                                   srcset="https://img-cf.kurly.com/cdn-cgi/image/width=240,height=240,fit=crop,quality=85/shop/data/review/20231219/3632aa82-771f-454e-9e0f-3c5ed414caef.jpeg 1x, https://img-cf.kurly.com/cdn-cgi/image/width=240,height=240,fit=crop,quality=85/shop/data/review/20231219/3632aa82-771f-454e-9e0f-3c5ed414caef.jpeg 2x">
                          </span>
                        </button>
                      </div>
                      <footer>
                        <div>
                          <span>2023.12.19</span>
                        </div>
                        <button>
                          <span></span>
                          <span>도움돼요 40</span>
                        </button>
                      </footer>
                    </div>
                  </article>
                </div>
                <div class="goods-17">
                  <div class="goods-18">
                    <div>
                      <span>멤버스</span>
                      <span>박**</span>
                    </div>
                  </div>
                  <article>
                    <div>
                      <div>
                        <h3>[KF365] 양념 소불고기 1kg (냉장)</h3>
                      </div>
                      <p>양도 많고 맛도 괜찮아서 좋아요.집에있는 파,버섯 넣고 같이 볶아내면 딱입니다.</p>
                      <footer>
                        <div>
                          <span>2024.02.01</span>
                        </div>
                        <button>
                          <span></span>
                          <span>도움돼요</span>
                        </button>
                      </footer>
                    </div>
                  </article>
                </div>
              </div>
              <div class="goods-75">
                <button class="goods-76">
                  <div class="goods-73">이전</div>
                </button>
                <button class="goods-77">
                  <div class="goods-73">
                    <div class="goods-73">다음</div>
                  </div>
                </button>
              </div>

            </section>
          </div>
          <div class="goods-19" id="section4">
            <div>
              <div class="goods-20">
                <button class="goods-62" type="button" width="120" height="40">
                  <span>문의하기</span>
                </button>
              </div>
              <div class="goods-70">
                <strong class="goods-63">상품 문의</strong>
                <ul class="goods-64">
                  <li>
                    상품에 대한 문의를 남기는 공간입니다. 해당 게시판의 성격과 다른
                    글은 사전동의 없이 담당 게시판으로 이동될 수 있습니다.
                  </li>
                  <li>
                    배송관련, 주문(취소/교환/환불)관련 문의 및 요청사항은 마이컬리내
                    <a href="/mypage/inquiry/list">1:1 문의</a>에 남겨주세요.
                  </li>
                </ul>
              </div>

              <div>
                <table>
                  <thead class="goods-21">         <!--문의 해드-->
                  <tr>
                    <th class="title">제목</th>
                    <th class="author">작성자</th>
                    <th class="created-date">작성일</th>
                    <th class="status">답변상태</th>
                  </tr>
                  </thead>
                  <!-- ------------------------------------------------------------------------------------------------------------- -->
                  <tbody>
                  <tr class="goods-22">                <!--1번 행-->
                    <td class="goods-65">품절표시가 없네요</td>
                    <td class="goods-23">이*우</td>
                    <td class="goods-23">2024.02.07</td>
                    <td class="goods-23">답변대기</td>
                  </tr>

                  <tr class="goods-25">            <!--1번 행 답변-->
                    <td colspan="4">
                      <div>
                        <div class="goods-57">
                          <div class="goods-66">
                            <span class="goods-67"></span>
                          </div>
                          <div class="goods-58">
                            <span>구매하면 품절인데 구매버튼은 계속 유지됩니다.<br></span>
                          </div>
                        </div>
                      </div>
                    </td>
                  </tr>
                  <!-- ------------------------------------------------------------------------------------------------------------- -->

                  <tr class="goods-22">                <!--2번 행-->
                    <td class="goods-65">상품이 터져서왔어요</td>
                    <td class="goods-23">한*수</td>
                    <td class="goods-23">2024.02.01</td>
                    <td class="goods-26">답변완료</td>
                  </tr>

                  <tr class="goods-25">                <!--2번 행 답변-->
                    <td colspan="4">
                      <div>
                        <div class="goods-57">
                          <div class="goods-66">
                            <span class="goods-67"></span>
                          </div>
                          <div class="goods-58">
                            <span>위에 비닐이 터져서 고기가노출된상태로왔어요<br/></span>
                            <span>생고기다보니 위생적이지않아 교환접수부탁드립니다.<br/></span>
                          </div>
                        </div>
                      </div>
                      <div class="css-tnubsz e1ptpt003">
                        <div class="goods-57">
                          <div class="goods-66">
                            <span class="goods-68"></span>
                          </div>
                          <div class="goods-58">
                            <div>
                              안녕하세요 고객님<br/><br/>현재 문의량이 많아
                              고객님의 소중한 문의글에 대해 빠르게 확인하고 답변을
                              드리고자 하였음에도, 시간이 지난 현재 답변을
                              드리게되어 너무나도 죄송하단 말씀 드립니다.<br/>
                            </div>
                          </div>
                        </div>
                        <div class="goods-69">2024.02.01</div>
                      </div>
                    </td>
                  </tr>
                  <!-- ------------------------------------------------------------------------------------------------------------- -->
                  <tr class="goods-22">                       <!--3번 행-->
                    <td class="goods-65">포장다찢어져서왔어요</td>
                    <td class="goods-23">김*란</td>
                    <td class="goods-23">2024.01.31</td>
                    <td class="goods-26">답변완료</td>
                  </tr>

                  <tr class="goods-25">    <!--3번 행 답변-->
                    <td colspan="4">
                      <div>
                        <div class="goods-57">
                          <div class="goods-66">
                            <span class="goods-67"></span>
                          </div>
                          <div class="goods-58">
                            <span>포장다 찢어져서왔어요<br/></span>
                            <span>환불이나 교환해주세요<br/></span>
                            <span><br/></span>
                          </div>
                        </div>
                      </div>
                      <div>
                        <div class="goods-57">
                          <div class="goods-66">
                            <span class="goods-68"></span>
                          </div>
                          <div class="goods-58">
                            <div>
                              안녕하세요. 고객님<br/>먼저, 바쁘신 일상에서 귀한
                              시간 내어 통화에 응해주셔서 진심으로 감사
                              인사드립니다.<br/><br/>고객님께서 문의하신 내용은
                              유선상으로 안내해 드렸으나 다시 한번 상세한 내용을
                              안내해 드립니다.<br/><br/>기대하고 주문하신 상품의
                              포장이 파손되어 많이 놀라시고 당황하셨을 것 같아 다시
                              한 번 죄송한 마음입니다<br/><br/>바쁜 시간 통화에
                              응해주시어 다시 한번 감사드리며, 다양한 채널로
                              남겨주신 목소리들을 지속해서 모니터링하고 있어
                              앞으로도 고객님께 안전하고 신선한 먹거리와 고객님의
                              일상을 더욱 풍족하게 해드릴 수 있는 상품을 제공하고자
                              최선을 다하는 컬리가 되겠습니다.<br/><br/>감사합니다.<br/>Better
                              Life for All. BroKurly
                            </div>
                          </div>
                        </div>
                        <div class="goods-69">2024.02.02</div>
                      </div>
                    </td>
                  </tr>
                  <!-- ------------------------------------------------------------------------------------------------------------- -->
                  <tr class="goods-22">                               <!--4번 행-->
                    <td class="goods-65">배송이 엉망으로 왔어요</td>
                    <td class="goods-23">박*하</td>
                    <td class="goods-23">2024.01.31</td>
                    <td class="goods-26">답변완료</td>
                  </tr>

                  <tr class="goods-25">        <!--4번 행 답변-->
                    <td colspan="4">
                      <div>
                        <div class="goods-57">
                          <div class="goods-66">
                            <span class="goods-67"></span>
                          </div>
                          <div class="goods-58">
                            <span>고기 포장이 찢겨서 배송됐습니다<br/></span>
                          </div>
                        </div>
                      </div>
                      <div>
                        <div class="goods-57">
                          <div class="goods-66">
                            <span class="goods-68"></span>
                          </div>
                          <div class="goods-58">
                            <div>
                              안녕하세요 고객님<br/><br/>현재 문의량이 많아
                              고객님의 소중한 문의글에 대해 빠르게 확인하고 답변을
                              드리고자<br/>하였음에도 시간이 지난 현재 답변을
                              드리게되어 너무나도 죄송하단 말씀 드립니다.<br/><br/>저
                              또한 상담원이기 전에 소비자로서 고객님에게 공감이 되어
                              많이 불편하셨을 거 같아 너무 죄송합니다.<br/><br/>고객님께서
                              문의주신 내용은 이전 1:1문의 상담을 통해 안내 받으신
                              것으로 확인 되었습니다.<br/>조금 더 신속하게 안내해
                              드리지 못한 점 고객님의 너그러운 양해 부탁
                              드립니다.<br/><br/>안내드린 내용을 통해 문의 주신
                              사항이 해결 되셨길 바랍니다.<br/><br/>이후에
                              추가적인 문의사항이 있으시면 언제든
                              고객행복센터(☎1644-1107) / [1:1] 문의 게시판 / 실시간
                              카카오톡 채팅 상담을 이용해주세요.<br/><br/>감사합니다.<br/>Better
                              Life for All. BroKurly
                            </div>
                          </div>
                        </div>
                        <div class="goods-69">2024.02.01</div>
                      </div>
                    </td>
                  </tr>
                  <!-- ------------------------------------------------------------------------------------------------------------- -->
                  </tbody>
                </table>
              </div>
              <div class="goods-71">
                <div>
                  <button disabled="" type="button" class="goods-72">
                    <div class="goods-73">이전</div>
                  </button>
                  <button type="button" class="goods-74">
                    <div class="goods-73">다음</div>
                  </button>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="goods-32">
        <div class="goods-33">
          <button class="goods-34"><!-- 버튼 누르면 버튼 클래스 이름 바뀌고 아래 지움-->
            <span class="goods-35">상품 선택
                            <i class="arrow up"></i>
                        </span>
          </button>
          <div class="goods-36"><!-- 버튼 누르면 사라지게-->
            <div>
              <div class="goods-37">
                  <span class="goods-38">
                      <span>${goods.name}</span>
                      <span>적립제외상품</span>
                  </span>
                <span class="goods-39">
                  <div class="goods-104">
                      <button class="minus_btn goods-105" type="button" onclick='count("minus")' value='+'
                              aria-label="수량내리기"></button>
                          <div class="goods-106" name="item_cnt">
                            <input type ="text" disabled="disabled" style="background-color: rgb(255, 255, 255); text-align: center; width: 30px; border: none;" class="quantity_input" value="1">
                          </div>
                      <button class="plus_btn goods-107" type="button" onclick='count("plus")' value='-'
                              aria-label="수량올리기"></button>
                  </div>
                  <span class="goods-40">
                      <span class="goods-41"><fmt:formatNumber value="${goods.price}" pattern="#,### 원" /></span>
                      <span id = "dicPrice">
                        <fmt:formatNumber value="${goods.salePrice}" pattern="#,### 원" />
                    </span>
                  </span>
                </span>
              </div>
            </div>
          </div>
          <div class="goods-59"><!-- 버튼 누르면 사라지게-->
            <div>
              <div class="goods-42">
                <span>총 상품금액 :

                </span>
                <span class="totalPrice goods-108" id="price2">
                  <fmt:formatNumber value="${goods.salePrice}" pattern="#,### 원" />
                </span>
              </div>
              <div class="goods-43">
                <span class="goods-110">적립</span>
                <span>구매 시
                  <strong>0원 적립</strong></span>
              </div>
            </div>
          </div>
          <div class="goods-44"><!-- 버튼 누르면 사라지게-->
            <div class="goods-116">
              <button class="goods-112" onclick="heartToggle()" width="56" height="56" radius="3">
                                <span>
                                    <img src="/resources/image/heartX.png" alt="" class="img1" id="heart2">
                                </span>
              </button>
              <button class="goods-112" onclick="bellToggle()" width="56" height="56" radius="3">
                                <span>
                                    <img src="/resources/image/bellX.png" alt="" class="img1" id="bell2">
                                </span>
              </button>
              <div class="goods-113">
                <button class="cart-button goods-115" type="button" radius="3">
                  <span class="goods-114">장바구니 담기</span>
                </button>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <button class="goods-60">
      <img src="/resources/image/up.png" alt="위로가기 아이콘" style="width: 55px; height: 50px;">
    </button>
  </div>
</div>
  <script>    // 기능

  $('.goods-34').on('click', function () {
      document.querySelector('.goods-36').classList.toggle('show')
  });   //하단 상품선택 버튼 기능(숨김)
  $('.goods-34').on('click', function () {
      document.querySelector('.goods-44').classList.toggle('show')
  });   //하단 상품선택 버튼 기능(숨김)
  $('.goods-34').on('click', function () {
      document.querySelector('.goods-59').classList.toggle('show')
  });   //하단 상품선택 버튼 기능(숨김)
  $('.goods-34').on('click', function () {
      document.querySelector('.arrow').classList.toggle('down')
  });      //하단 상품선택 버튼 기능(화살표 아래로 변경)
  $('.goods-34').on('click', function () {
      document.querySelector('.goods-34').classList.toggle('on')
  });    //하단 상품선택 버튼 기능(하단 구역 설정)

  $('.goods-61').on('click', function () {
      document.querySelector('.goods-49').classList.toggle('show')
  });   //상품후기 회원등급 필터 버튼


  $(document).ready(function () {  //고객행복센터 닫기 버튼 기능(공용)
      $('.goods-15').on('click', function () {
          var contentId = $(this).attr('id').replace('button', 'content');
          $('#' + contentId).toggleClass('hide');
          var buttonText = $(this).text() === '자세히보기' ? '닫기' : '자세히보기';
          $(this).text(buttonText);
      });
  });


  //우측 하단 위로 바로가기 버튼 기능
  let $topButton = $(".goods-60");
  $(window).scroll(function () {
      if ($(this).scrollTop() > 20) {
          $topButton.fadeIn();
      } else {
          $topButton.fadeOut();
      }
  });
  $topButton.click(function () {
      $("body, html").animate({scrollTop: 0}, 500);
  });


  // 상단 메뉴바 - 버튼 클릭으로 해당 세션 이동 기능
  $('.goods-5> ul > li > a').click(function (e) {
      e.preventDefault(); // 기본 이벤트 동작 중지

      let href = $(this).attr('href');
      if (!href) return; // href 값이 없는 경우 동작 중지

      let targetTop = $(href).offset().top - 115; // 대상 위치 계산
      $('html, body').stop().animate({scrollTop: targetTop}, 300); // 스크롤 애니메이션 적용
  });

  function Page__updateIndicatorActive() {
      let scrollTop = $(window).scrollTop();
      // 역순으로 검색해야 편하다
      $($('.goods-19').get().reverse()).each(function (index, node) {
          let $node = $(this);
          let offsetTop = parseInt($node.attr('data-offset-top'));

          if (scrollTop >= offsetTop) {
              // 기존 녀석에게 활성화 풀고
              $('.goods-5 > ul > li.active').removeClass('active');
              // 해당하는 녀석에게 활성화 넣고
              let currentPageIndex = $node.index();
              $('.goods-5 > ul > li').eq(currentPageIndex).addClass('active');
              $('html').attr('data-current-page-index', currentPageIndex);
              return false; // 더 이상 다른 페이지를 검사하지 않는다.
          }
      });
  }

  // 각 페이지의 offsetTop 속성을 업데이트
  function Page__updateOffsetTop() {
      $('.goods-19').each(function (index, node) {
          let $page = $(node);
          let offsetTop = $page.offset().top - 115;
          $page.attr('data-offset-top', offsetTop);
      });
      // 계산이 바뀌었으니까, 다시 상태 업데이트
      Page__updateIndicatorActive();
  }

  // 각 페이지의 offsetTop 속성을 업데이트
  function Page__updateOffsetTop() {
      $('.goods-19').each(function (index, node) {
          var $page = $(node);
          var offsetTop = $page.offset().top - 115;
          $page.attr('data-offset-top', offsetTop);
      });
      // 계산이 바뀌었으니까, 다시 상태 업데이트
      Page__updateIndicatorActive();
  }

  function Page__init() {
      Page__updateOffsetTop();
  }

  // 페이지 초기화로 상단 메뉴바 버튼 업데이트
  Page__init();
  // 화면이 리사이즈 할 때 마다, offsetTop을 다시계산
  $(window).resize(Page__updateOffsetTop);
  // 스크롤이 될 때 마다, 인디케이터의 상태를 갱신
  $(window).scroll(Page__updateIndicatorActive);


  //찜 버튼 누르면 사진 변경 다시 누르면 원상태로
  var heartCnt = 0;

  function heartToggle() {
      heartCnt++;
      if (heartCnt % 2 === 1) {
          document.getElementById("heart").src = "/resources/image/heartO.png";
          document.getElementById("heart2").src = "/resources/image/heartO.png";
      } else {
          document.getElementById("heart").src = "/resources/image/heartX.png";
          document.getElementById("heart2").src = "/resources/image/heartX.png";
      }
  }


  //알림 버튼 누르면 사진 변경 다시 누르면 원상태로
  var bellCnt = 0;

  function bellToggle() {
      bellCnt++;
      if (bellCnt % 2 === 1) {
          $("#bell, #bell2").attr("src", "/resources/image/bellO.png");
      } else {
          $("#bell, #bell2").attr("src", "/resources/image/bellX.png");
      }
  }

  //도움돼요 버튼 누르면 사진 변경 다시 누르면 원상태로 +
  // var likeCnt = 0;
  // function likeToggle() {
  //     likeCnt++;
  //     $("#like, #bell2").attr("src", likeCnt % 2 == 1 ? "likeO.png" : "like1.png");
  // }


  //후기 공지사항 드롭다운 토글과 다른곳 열린곳 닫기 기능
  let acc = document.getElementsByClassName("notice");
  let i;

  for (i = 0; i < acc.length; i++) {
      acc[i].addEventListener("click", function () {
          // 현재 클릭된 요소를 제외하고 모든 "notice" 요소에서 "act" 클래스를 제거
          for (let j = 0; j < acc.length; j++) {
              if (acc[j] !== this) {
                  acc[j].classList.remove("act");
                  // 다음 형제 요소의 최대 높이를 null로 설정하여 접히도록
                  let panel = acc[j].nextElementSibling;
                  panel.style.maxHeight = null;
              }
          }

          // 현재 클릭된 곳에 "act" 클래스를 추가또는 제거
          this.classList.toggle("act");
          let panel = this.nextElementSibling;
          if (panel.style.maxHeight) {
              panel.style.maxHeight = null;
          } else {
              panel.style.maxHeight = panel.scrollHeight + "px";
          }
      });
  }

  document.querySelectorAll(".goods-22").forEach((item) => {
      // 모든 드롭다운 토글 행에 대한 클릭 이벤트 리스너 추가
      item.addEventListener("click", () => {
          const nextRow = item.nextElementSibling; // 다음 행 선택
          const allDropdowns = document.querySelectorAll(".goods-25"); // 모든 드롭다운 콘텐츠 행 가져오기

          // 다른 드롭다운 닫기
          allDropdowns.forEach((dropdown) => {
              if (dropdown !== nextRow && dropdown.style.display === "table-row") {
                  dropdown.style.display = "none";
              }
          });

          // 현재 드롭다운 표시 여부를 토글
          if (nextRow.style.display === "table-row") {
              nextRow.style.display = "none"; // 이미 표시 중이면 숨김
          } else {
              nextRow.style.display = "table-row"; // 숨겨져 있으면 표시
          }
      });
  });

  // 수량 버튼 조작
  let totalPrice = ${goods.salePrice};
  let quantity = $(".quantity_input").val();

  $(".plus_btn").on("click", function(){
      if(quantity < ${goods.itemQty}) { //재고까지만 구매가능하게
          $(".quantity_input").val(++quantity);
          totalPrice += ${goods.salePrice}; // 가격 증가
          $(".totalPrice").text(new Intl.NumberFormat('ko-KR').format(totalPrice) + " 원"); // 총 가격 업데이트
      }
  });
  $(".minus_btn").on("click", function(){
      if(quantity > 1) {
          $(".quantity_input").val(--quantity);
          totalPrice -= ${goods.salePrice}; // 가격 감소
          $(".totalPrice").text(new Intl.NumberFormat('ko-KR').format(totalPrice) + " 원"); // 총 가격 업데이트
      }
  });


  // 서버로 전송할 데이터
  const form = {
      custId : '${customer.custId}',
      itemId : '${goods.itemId}',
      // custId : 'hong',
      // itemId : '1234',
      itemCnt : ''
  }
  // 장바구니 추가 버튼
  $(".btn_cart").on("click", function(e){
      form.itemCnt = $(".quantity_input").val();
      $.ajax({
          url: '/cart/add',
          type: 'POST',
          data: form,
          dataType: "text",
          // data: {
          //     custId: "hong",
          //     itemId: "1234",
          //     itemCnt: $(".quantity_input").val()
          // },
          success: function(result){
              cartAlert(result);
          }
      })
  });

  function cartAlert(result){
      if(result == '0'){
          alert("장바구니에 추가를 하지 못하였습니다.");
      } else if(result == '1'){
          alert("장바구니에 추가되었습니다.");
      } else if(result == '2'){
          alert("장바구니에 이미 추가되어져 있습니다.");
      } else if(result == '5'){
          alert("로그인이 필요합니다.");
      }
  }



  </script>


  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
          integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
          crossorigin="anonymous"></script>
</body>
</html>