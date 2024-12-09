<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>게시글 수정</title>
    <link rel="stylesheet" href="../../../resources/css/community/communityEditPost.css">
    <script src="../../../resources/js/community/communityEditPost.js"></script>
</head>


<body>
    <!-- nav -->
    <jsp:include page="/WEB-INF/views/includes/mypagenav/myPageNav.jsp" />
    <!-- nav -->

    <div class="container4">
    </div>

    <div class="container">
        <!-- 게시글 수정 폼 -->
        <form id="editPostForm" action="/community/editPost" method="post" enctype="multipart/form-data">
            <!-- 게시글 수정 헤더 -->
            <div class="post-header">
                <h1>게시글 수정</h1>
            </div>

            <!-- 게시글 ID (숨겨진 필드) -->
            <input type="hidden" name="postId" value="${post.id}">

            <!-- 제목 입력 -->
            <div class="form-title">
                <div class="form-title-title">제목</div>
                <input type="text" id="title" name="title" value="${post.title}" placeholder="제목을 입력하세요." required>
            </div>

            <!-- 사진 업로드 -->
            <div class="section">
                <label>사진</label>
                <div class="image-upload-container">
                    <div class="image-preview-container">
                        <div class="image-preview">
                            <img id="uploadedImage" src="${post.imagePath}" alt="미리보기">
                        </div>
                        <div class="image-upload-buttons">
                            <button type="button" id="uploadButton" onclick="uploadImage()">사진 업로드</button>
                            <button type="button" id="removeButton" onclick="removeImage()">제거</button>
                        </div>
                    </div>
                    <input type="file" id="imageInput" name="image" style="display: none;" accept="image/*">
                    <div class="image-requirements">
                        <p>Image requirements:</p>
                        <ul>
                            <li>1. Min. 400 x 400px</li>
                            <li>2. Max. 2MB</li>
                        </ul>
                    </div>
                </div>
            </div>

            <!-- 본문 수정 -->
            <div class="section">
                <label for="content">본문</label>
                <textarea id="content" name="content" rows="10" placeholder="내용을 입력하세요." required>${post.content}</textarea>
            </div>

            <!-- 수정 완료 버튼 -->
            <div class="section-button">
                <button type="submit" id="submitPost">수정 완료</button>
            </div>
        </form>
    </div>

    <div class="container4">
    </div>

</body>

</html>
