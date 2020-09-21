<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- @Author: 응이아 -->


<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

</head>
<body>
    <section>
        <div class="container">
            <div class="row">
                <div class="col-xl-2 left">
                    <div class="top-left">
                        <h2>Cộng đồng thảo luận</h2>
                    </div>
    
                    <div class="bottom-left">
                        <div>
                            <a href="#">
                                <i class="fa fa-comments"></i>
                                <span>Thảo Luận</span>
                            </a>
                        </div>

                        <div>
                            <a href="#">
                                <i class="fa fa-info-circle" ></i>
                                <span>Thông tin</span>
                            </a>
                        </div>
                        <div>
                            <a href="#">
                                <i class="fa fa-newspaper-o" ></i>
                                <span>Tin tức</span>
                            </a>
                            <p>3745</p>
                        </div>
                    </div>
                </div>
                <div class="col-xl-7 mid">
                    <div class="search" style="display: none;">
                        <input type="search" placeholder="Input Search">
                        <div>
                            <i class="fa fa-search"></i>
                        </div>
                    </div>
                    <div class="post" id="postid">
                        <div class="place">
                            <div>
                                <textarea id="post-status" rows="3" cols="50" placeholder="Status không friend ?"></textarea>
                                <div>
                                    <img src="<c:url value="/resources/images/avartarnone.png"/>" alt="">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="frames-post" id="frames-postid" style="display: none;">
                        <div class="title">
                            <h5>Tạo bài chia sẽ</h5>
                        </div>
                        <div class="frames-infor">
                                <img src="<c:url value="/resources/images/avartarnone.png"/>" alt="">
                                <c:choose>
										<c:when test="${user.status == 'active'}">
											<c:out value="${user.username}" />
										</c:when>
										<c:otherwise>
											<span>AspenMaude</span>
										</c:otherwise>
								</c:choose>              
                        </div>
                        <form method="POST" action="/open4um/insertPosts/" enctype="multipart/form-data" >
                            <div class="frames-content">
                                <textarea  name="textarea-frames" cols="40" rows="5" placeholder="Viết nội dung bạn muốn chia sẽ vào đây nè ^^"></textarea>
                                <div>
                                    <!-- <div id="images-title">
                                        <img class="images-title" src="<c:url value="/resources/images/butchi.png"/>" alt="">
                                    </div> -->
                                    
                                    <div>
                                        <select name="title" id="title">
                                            <option value="0">Chọn chủ đề</option>
                                            <option value="3">Tin Tức CNTT</option>
                                            <option value="4">Nghề Nghiệp</option>
                                            <option value="6">Nhập Môn Lập Trình</option>
                                            <option value="7">Kĩ Thuật Lập trình</option>
                                          </select>
                                    </div>
                                    
                                </div>
                            </div>
                        
                            <div class="button-images">
                                <span>Thêm ảnh</span>
                                <label for="inputimages" style="float: right;">
                                    <i class="fa fa-picture-o" aria-hidden="true">Ảnh</i>
                                </label>
                                <input type="file" id="inputimages" name="inputimage" multiple="multiple" style="display: none;">
                            </div></br>
                            <div class="button-post">
                                <button> Đăng Bài</button>
                            </div>
                        </form>
                    </div>
                    
                    <div class="posts" id="posts" style="margin-top: 15px;">
                        <div class="header-posts">
                            <div>
                                <div class="avatar">
                                    <a href="#"><img src="<c:url value="/resources/images/avatar.jpg"/>" alt=""></a>
                                </div>
                                <div class="name-time">
	                                <c:choose>
										<c:when test="${user.status == 'active'}">
											<a><p><c:out value="${user.username}" /></p></a>
										</c:when>
										<c:otherwise>
											<a href="#"><p>ASpen</p></a>    
										</c:otherwise>
									</c:choose>                  		
                                   	<span>25 phút trước</span>
                                </div>
                            </div>
                        </div>
                        <div class="content-posts">
                            <div class="content">
                                <span>
                                    who am i ? Where is here ?
                                </span>
                            </div>
                        </div>
                        <div class="images-posts">
                            <div class="images">
                                <img src="<c:url value="/resources/images/avatar.jpg"/>" alt="">
                            </div>
                        </div>

                        <div class="button-posts">
                            <div class="like" id="like-${list.proid }" onclick="updatelike(${list.proid})">
                                <i class="fa fa-heart"></i>
                                <span id="resultlike-${list.proid}">  ${list.like} Thích</span>
                            </div>
                            <div class="comment">
                                <i class="fa fa-commenting-o"></i>
                                <span>2 Bình luận</span>
                            </div>
                            <div class="share">
                                <i class="fa fa-share"></i>
                                <span>1 Chia sẽ</span>
                            </div>
                        </div>
                        <div class="input-comment-posts">
                            <div class="images-comment">
                                <a href="#">
                                    <img src="<c:url value="/resources/images/avartarnone.png"/>" alt="">
                                </a>
                            </div>
                            <div class="input-comment">
                                <textarea id="comment-inp" cols="40" rows="2" placeholder="Comment nào bạn: "></textarea>
                                <div id="show-button">
                                    <button> Đăng </button>
                                </div>
                            </div>
                        </div>

                        <div class="comment-posts">
                            <div>
                                <div class="images-comment">
                                    <a href="#">
                                        <img src="<c:url value="/resources/images/catcomment.jpg" />" alt="">
                                    </a>
                                </div>

                                <div class="name-comment">
                                   <a href="#"><p>Aspen</p></a>
                                    <span>Mèo Méo Mèo Meo</span>
                                </div>
                            </div>
                            <div class="button-comment">
                                <div class="like-comment">
                                    <span>thích</span>
                                    <i class="fa fa-heart"></i>
                                </div>
                                <div class="reply" id="reply">
                                    <span>Trả lời</span>
                                </div>
                                <div class="time-reply">
                                    <p>7 phút trước </p>
                                </div>
                            </div>
                            <div class="input-comment-posts" id="reply-comment">
                                <div class="images-comment">
                                    <a href="#">
                                        <img src="<c:url value="/resources/images/avartarnone.png" />" alt="">
                                    </a>
                                </div>
                                <div class="input-comment">
                                    <textarea cols="40" rows="1" placeholder="reply nè: "></textarea>
                                    <div>
                                        <button> Đăng </button>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
                <div class="col-xl-3 right">
                    <div class="exciting">
                        <h5> Có thể bạn quan tâm</h5>
                        <div class="list-exciting-post">
                            <ul>
                                
                                    <li>
                                        <div>
                                            <div>
                                                <a href="#"> <img
                                                    src="<c:url value="/resources/images/catcomment.jpg" />" alt="">
                                                </a>
                                            </div>
                                            <div>
                                                <a href="#"> <span>Công việc của quản trị tuyển dụng</span>
                                                </a>
                                            </div>
                                        </div>
                                    </li>
                                
                                    <li>
                                        <div>
                                            <div>
                                                <a href="#"> <img
                                                    src="<c:url value="/resources/images/avatar.jpg" />" alt="">
                                                </a>
                                            </div>
                                            <div>
                                                <a href="#"> <span>aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa </span>
                                                </a>
                                            </div>
                                        </div>
                                    </li>
                                
                                    <li>
                                        <div>
                                            <div>
                                                <a href="#"> <img
                                                    src="<c:url value="/resources/images/catcomment.jpg"/>" alt="">
                                                </a>
                                            </div>
                                            <div>
                                                <a href="#"> <span>bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb </span>
                                                </a>
                                            </div>
                                        </div>
                                    </li>
                                
                                    <li>
                                        <div>
                                            <div>
                                                <a href="#"> <img
                                                    src="<c:url value="/resources/images/avatar.jpg" />" alt="">
                                                </a>
                                            </div>
                                            <div>
                                                <a href="#"> <span>Phần mềm quản lý group facebook – Ninja Group </span>
                                                </a>
                                            </div>
                                        </div>
                                    </li>
                                
                                    <li>
                                        <div>
                                            <div>
                                                <a href="#"> <img
                                                    src="<c:url value="/resources/images/catcomment.jpg"/>" alt="">
                                                </a>
                                            </div>
                                            <div>
                                                <a href="#"> <span>CEO của HTC từ chức </span>
                                                </a>
                                            </div>
                                        </div>
                                    </li>
                                
                                    <li>
                                        <div>
                                            <div>
                                                <a href="#"> <img
                                                    src="<c:url value="/resources/images/avatar.jpg" />" alt="">
                                                </a>
                                            </div>
                                            <div>
                                                <a href="#"> <span>Làm thế nào để xây dựng phong cách làm việc chuyên nghiệp? </span>
                                                </a>
                                            </div>
                                        </div>
                                    </li>
                                
                                    <li>
                                        <div>
                                            <div>
                                                <a href="#"> <img
                                                    src="<c:url value="/resources/images/catcomment.jpg"/>" alt="">
                                                </a>
                                            </div>
                                            <div>
                                                <a href="#"> <span>Samsung ra mắt máy chiếu tầm gần 130 inch 4K HDR10+</span>
                                                </a>
                                            </div>
                                        </div>
                                    </li>
                                
                                    <li>
                                        <div>
                                            <div>
                                                <a href="#"> <img
                                                    src="<c:url value="/resources/images/avatar.jpg"/>" alt="">
                                                </a>
                                            </div>
                                            <div>
                                                <a href="#"> <span>Nâng cấp màn hình Full HD cho laptop </span>
                                                </a>
                                            </div>
                                        </div>
                                    </li>  
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

</div> 
</div>
    <script src="<c:url value="/resources/js/diss_know.js" />"></script>
</body>
</html>