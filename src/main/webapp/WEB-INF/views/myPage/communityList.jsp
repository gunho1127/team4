<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <link rel="stylesheet" href="../../../resources/css/myPage/communitystyle.css">


  <style>
    a,
    button,
    input,
    select,
    h1,
    h2,
    h3,
    h4,
    h5,
    * {
      box-sizing: border-box;
      margin: 0;
      padding: 0;
      border: none;
      text-decoration: none;
      background: none;

      -webkit-font-smoothing: antialiased;
    }

    menu,
    ol,
    ul {
      list-style-type: none;
      margin: 0;
      padding: 0;
    }
  </style>
  <title>리플렛 - 커뮤니티</title>
</head>

<body>
  <div class="div">

    <!-- nav -->
                  <jsp:include page="/WEB-INF/views/includes/mypagenav/myPageNav.jsp" />
                  <!-- nav -->

    <div class="icon-heroicons-outline-lock-open"></div>
    <div class="nav">
      <div class="icon-heroicons-outline-user"></div>
    </div>
    <div class="icon-heroicons-outline-user"></div>
    <div class="table">
      <div class="header">
        <div class="auto-layout-vertical">
          <div class="div22">
            <span>
              <span class="div-22-span">
                커뮤니티
                <br />
              </span>
              <span class="div-22-span2">
                커뮤나티에 작성한 글을 볼 수 있습니다.
              </span>
            </span>
          </div>

          <div class="div3">
            <ul>
              <!-- 리스트 아이템 1 -->
              <li class="div4">
                <div class="rectangle-4"></div>
                <div class="group-142">
                  <div class="div5">조건호<br /></div>
                  <div class="_2024-11-14">2024/11/14</div>
                  <img class="frame" src="../../../resources/images/myPage/frame-600.svg" />
                  <div class="_99">99</div>
                </div>
                <img class="rectangle-copy-7"
                  src="" />
                <div class="group-144">
                  <div class="div6">한강 작가님의 &lt;소년이 온다&gt; 를 읽어...</div>
                  <div class="div7">소년이 온다 - 한강</div>
                  <div class="div8">도서 리뷰</div>
                  <div class="no-189">no. 189</div>
                  <div class="stars">
                    <img class="interface-star" src="interface-star0.svg" />
                    <img class="interface-star2" src="interface-star1.svg" />
                    <img class="interface-star3" src="interface-star2.svg" />
                    <img class="interface-star4" src="interface-star3.svg" />
                    <img class="interface-star5" src="interface-star4.svg" />
                  </div>
                </div>
                <img class="image" src="image0.png" />
              </li>

              <!-- 리스트 아이템 2 (주석 처리) -->
              <!--
    <li class="div4">
      <div class="rectangle-42"></div>
      <div class="group-142">
        <div class="div9">조건호<br /></div>
        <div class="_2024-11-142">2024/11/14</div>
        <img class="frame2" src="frame1.svg" />
        <div class="_992">99</div>
      </div>
      <img class="rectangle-copy-72" src="rectangle-copy-71.svg" />
      <div class="group-144">
        <div class="div10">한강 작가님의 &lt;소년이 온다&gt; 를 읽어...</div>
        <div class="div11">소년이 온다 - 한강</div>
        <div class="div12">도서 리뷰</div>
        <div class="no-1892">no. 189</div>
        <div class="stars2">
          <img class="interface-star6" src="interface-star5.svg" />
          <img class="interface-star7" src="interface-star6.svg" />
          <img class="interface-star8" src="interface-star7.svg" />
          <img class="interface-star9" src="interface-star8.svg" />
          <img class="interface-star10" src="interface-star9.svg" />
        </div>
      </div>
      <img class="image2" src="image1.png" />
    </li>
    -->

              <!-- 리스트 아이템 3 (주석 처리) -->
              <!--
    <li class="div4">
      <div class="rectangle-43"></div>
      <div class="group-142">
        <div class="div13">조건호<br /></div>
        <div class="_2024-11-143">2024/11/14</div>
        <img class="frame3" src="frame2.svg" />
        <div class="_993">99</div>
      </div>
      <img class="rectangle-copy-73" src="../../../../../resources/static/images/myPage/rectangle-copy-72.svg"/>
      ...
    </li>
    -->

              <!-- 리스트 아이템 4 (주석 처리) -->
              <!--
    <li class="div4">
      ...
    </li>
    -->
            </ul>
          </div>
        </div>
      </div>
    </div>
  </div>

</body>

</html>