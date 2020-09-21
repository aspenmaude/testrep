<!-- @author Ha Thi Bich Chi --> 
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	//String contextPath =pageContext.getRequest().getServletContext();
String contextPath = request.getContextPath();
%>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<div class="container">
        <div class="row info-home">
            <div class="col-xl-3 text-center">
                <img src="<c:url value="/resources/images/tu-vi-12-con-giap-thu-bay-27-10-2018-1-640x471-1.jpg" />" class="avatar-home" />
            </div>
            <div class="col-xl-3">
                <div>
                    <div class="item-info-home"><i class="fas fa-wallet"></i> 150.000</div>
                    <div>VNĐ</div>
                </div>
            </div>
            <div class="col-xl-3">
                <div class="item-info-home"><i class="far fa-clipboard"></i> 165</div>
                <div>Bài viết</div>
            </div>
            <div class="col-xl-3">
                <div class="item-info-home"><i class="far fa-thumbs-up"></i> 89</div>
                <div>Thích</div>
            </div>
        </div>
        <!-- <div class="row panel-info-home">
            <div class="col-xl-4 text-center">
                <div class="panel-info-item">
                    <i class="far fa-clipboard"></i> Đăng bài viết
                </div>
            </div>
            <div class="col-xl-4 text-center">
                <div class="panel-info-item">
                    <i class="fas fa-edit"></i> Sửa hồ sơ
                </div>
            </div>
            <div class="col-xl-4 text-center">
                <div class="panel-info-item">
                    <i class="fas fa-cart-plus"></i> Nạp tiền
                </div>
            </div>
        </div> -->

        <div class="row wrap-panel-source">
            <div class="col-xl-2 text-center">
                <div class="item-panel-source">
                    <div>
                        <img src="<c:url value="/resources/images/upload-source.png"/>" alt="Upload source" class="img-upload-source" /><br/> UPLOAD SOURCE
                    </div>
                </div>
            </div>
            <div class="col-xl-5 text-center">
                <div class="item-panel-source">
                    <div>
                         <a href="<%=contextPath%>/sourceweb"><img src="<c:url value="/resources/images/source-game.png"/>" alt="Upload source" class="img-upload-source" /><br/> SOURCE WEB</a>
                    </div>
                </div>
            </div>
            <div class="col-xl-5 text-center">
                <div class="item-panel-source">
                    <div>
                     <a  href="<%=contextPath%>/sourcegame"><img src="<c:url value="/resources/images/source-web.png"/>" alt="Upload source" class="img-upload-source" /><br/> SOURCE GAME</a>
                    </div>
                </div>
            </div>
        </div>

        <!-- TOP SOURCE -->
        <div class="row">
            <div class="col-xl-8">
                <!-- END TOP SOURCE -->

                <!-- NEW SOURCE -->
                <div class="title-menu-home-center">
                    <h3><i class="fas fa-laptop-code"></i> SOURCE MỚI NHẨT</h3>
                </div>
                <div class="row">
                <c:forEach var="listSource" items="${listSource}">
                    <div class="col-xl-4 col-md-6 post-source-item" >
                    <a href="${pageContext.request.contextPath}/showOne/${listSource.sourceid}">
                        <div class="img-post-source" >
                           <img src="<c:url value="/resources/images/${listSource.avatar}"/>" style="width: 100%" />
                            <div class="cate-post-source"><i class="far fa-file-archive"></i>${listSource.ctgname}</div>
                        </div>
                        <div class="content-post-source"><a href="#">${listSource.sourcename}</a></div>
                        <div class="info-post-source">
                            <div class="info-post-source-left"><i class="fas fa-eye"></i> 435</div>
                            <div class="info-post-source-right"><i class="fas fa-cloud-download-alt"></i> 15</div>
                        </div>
                        <span class="fa fa-star checked" style="color:orange"></span>
						<span class="fa fa-star checked"></span>
						<span class="fa fa-star checked"></span>
						<span class="fa fa-star"></span>
						<span class="fa fa-star"></span>
                        
                    </div>
                 </c:forEach>
                 <ul class="pager">
                 <c:forEach var = "item" begin = "1" end = "${count}">
			         <li><a href="${pageContext.request.contextPath}/sourcegame/<c:out value = '${item}'/>"><c:out value = "${item}"/></a></li>
                 </c:forEach>
                 </ul>
                 
                </div>
                <div class="row">
                    <div class="col-12">
                        <nav aria-label="Page navigation example">
                            <ul class="pagination">
                                <li class="page-item">
                                    <a class="page-link" href="#" aria-label="Previous">
                                        <span aria-hidden="true">&laquo;</span>
                                    </a>
                                </li>
                                <li class="page-item active"><a class="page-link" href="#">1</a></li>
                                <li class="page-item"><a class="page-link" href="#">2</a></li>
                                <li class="page-item"><a class="page-link" href="#">3</a></li>
                                <li class="page-item">
                                    <a class="page-link" href="#" aria-label="Next">
                                        <span aria-hidden="true">&raquo;</span>
                                    </a>
                                </li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>

            <!-- END NEW SOURCE -->

            <div class="col-xl-4">
                <!-- CATEGORY -->
                <div class="title-menu-home">
                    <h3><i class="fas fa-list-ul"></i> CHUYÊN MỤC</h3>
                </div>
                <div class="row">
                    <div class="col-xl-12 home-cate">
                        <div class="home-cate-title"><a href="#"><i class="fas fa-ellipsis-v"></i> Thông báo &nbsp;&nbsp; <span>[30]</span></a></div>
                    </div>
                    <div class="col-xl-12 home-cate">
                        <div class="home-cate-title"><a href="#"><i class="fas fa-ellipsis-v"></i> Thảo luận chung &nbsp;&nbsp;<span>[30]</span></a></div>
                    </div>
                    <div class="col-xl-12 home-cate">
                        <div class="home-cate-title"><a href="#"><i class="fas fa-ellipsis-v"></i> Kiến thức cần biết &nbsp;&nbsp;<span>[30]</span></a></div>
                    </div>
                    <div class="col-xl-12 home-cate">
                        <div class="home-cate-title"><a href="#"><i class="fas fa-ellipsis-v"></i> Học tập &nbsp;&nbsp;<span>[30]</span></a></div>

                    </div>
                </div>
                <!-- END CATEGORY -->

                <!-- TOP POST -->
                <div class="title-menu-home">
                    <h3><i class="far fa-clipboard"></i> TOP BÀI VIẾT</h3>
                </div>
                <div class="row">
                    <div class="col-xl-12 home-post">
                        <div class="home-post-title"><a href="#"><i class="far fa-file"></i> Note 20 Ultra không được hỗ trợ sạc...</a></div>
                        <div class="home-post-author">
                            <a href="#"><i class="fas fa-user"></i> Duy Luân</a> - 11 giờ trước
                        </div>
                        <div class="home-post-info">
                            <div><i class="far fa-thumbs-up"></i> 8</div>
                            <div><i class="far fa-comments"></i> 32</div>
                            <div><i class="far fa-eye"></i> 1325</div>
                        </div>
                    </div>

                    <div class="col-xl-12 home-post">
                        <div class="home-post-title"><a href="#"><i class="far fa-file"></i> Note 20 Ultra không được hỗ trợ sạc...</a></div>
                        <div class="home-post-author">
                            <a href="#"><i class="fas fa-user"></i> Duy Luân</a> - 11 giờ trước
                        </div>
                        <div class="home-post-info">
                            <div><i class="far fa-thumbs-up"></i> 8</div>
                            <div><i class="far fa-comments"></i> 32</div>
                            <div><i class="far fa-eye"></i> 1325</div>
                        </div>
                    </div>

                    <div class="col-xl-12 home-post">
                        <div class="home-post-title"><a href="#"><i class="far fa-file"></i> Note 20 Ultra không được hỗ trợ sạc...</a></div>
                        <div class="home-post-author">
                            <a href="#"><i class="fas fa-user"></i> Duy Luân</a> - 11 giờ trước
                        </div>
                        <div class="home-post-info">
                            <div><i class="far fa-thumbs-up"></i> 8</div>
                            <div><i class="far fa-comments"></i> 32</div>
                            <div><i class="far fa-eye"></i> 1325</div>
                        </div>
                    </div>
                    <div class="col-xl-12 home-post">
                        <div class="home-post-title"><a href="#"><i class="far fa-file"></i> Note 20 Ultra không được hỗ trợ sạc...</a></div>
                        <div class="home-post-author">
                            <a href="#"><i class="fas fa-user"></i> Duy Luân</a> - 11 giờ trước
                        </div>
                        <div class="home-post-info">
                            <div><i class="far fa-thumbs-up"></i> 8</div>
                            <div><i class="far fa-comments"></i> 32</div>
                            <div><i class="far fa-eye"></i> 1325</div>
                        </div>
                    </div>
                    <div class="col-xl-12 home-post">
                        <div class="home-post-title"><a href="#"><i class="far fa-file"></i> Note 20 Ultra không được hỗ trợ sạc...</a></div>
                        <div class="home-post-author">
                            <a href="#"><i class="fas fa-user"></i> Duy Luân</a> - 11 giờ trước
                        </div>
                        <div class="home-post-info">
                            <div><i class="far fa-thumbs-up"></i> 8</div>
                            <div><i class="far fa-comments"></i> 32</div>
                            <div><i class="far fa-eye"></i> 1325</div>
                        </div>
                    </div>

                </div>
                <!-- END TOP POST -->

                <!-- NEW POST -->
                <div class="title-menu-home">
                    <h3><i class="far fa-clipboard"></i> BÀI VIẾT MỚI</h3>
                </div>
                <div class="row">
                    <div class="col-xl-12 home-post">
                        <div class="home-post-title"><a href="#"><i class="far fa-file"></i> Note 20 Ultra không được hỗ trợ sạc...</a></div>
                        <div class="home-post-author">
                            <a href="#"><i class="fas fa-user"></i> Duy Luân</a> - 11 giờ trước
                        </div>
                        <div class="home-post-info">
                            <div><i class="far fa-thumbs-up"></i> 8</div>
                            <div><i class="far fa-comments"></i> 32</div>
                            <div><i class="far fa-eye"></i> 1325</div>
                        </div>
                    </div>
                </div>
                <!-- END NEW POST -->
            </div>
        </div>
    </div>
