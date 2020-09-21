<!-- @author Ha Thi Bich Chi --> 
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<%
	//String contextPath =pageContext.getRequest().getServletContext();
String contextPath = request.getContextPath();
%>
 <script src="https://cdn.tiny.cloud/1/nvcjgcn990ymxkqqams0ahaxrekx09iwdmoo6kryaz3xyasn/tinymce/5/tinymce.min.js" referrerpolicy="origin"></script>
 <script type="text/javascript">
  tinymce.init({
    selector: '#myTextarea',
    width: 600,
    height: 300,
    plugins: [
      'advlist autolink link image lists charmap print preview hr anchor pagebreak',
      'searchreplace wordcount visualblocks visualchars code fullscreen insertdatetime media nonbreaking',
      'table emoticons template paste help'
    ],
    toolbar: 'undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | ' +
      'bullist numlist outdent indent | link image | print preview media fullpage | ' +
      'forecolor backcolor emoticons | help',
    menu: {
      favs: {title: 'My Favorites', items: 'code visualaid | searchreplace | emoticons'}
    },
    menubar: 'favs file edit view insert format tools table help',
    content_css: 'css/content.css'
  });
  </script>
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
                    <h3><i class="fas fa-laptop-code"></i> UPLOAD CODE CHIA SẺ & KIẾM TIỀN CÙNG SHARECODE.VN</h3>
                </div>
                <div class="row">
         			<div class="box-bg">
		<div class="upload_form">
			<h6 class="title3 bold text-center up-title" style="text-align: center;">Tặng thưởng ngay 5 Point cho mỗi upload được duyệt (5 Point = 1 XU).</h6>
			<div class="up-note hidden-xs">
				<form id="contactForm" action="<c:url value ="/insertsource"/>" method="POST" enctype="multipart/form-data" style="border: solid 1px #84a98c; border-radius: ">
					<div class="up-box">
						<div id="mainbody_contentbody_contentpage_panDefaultButton"
							onkeypress="javascript:return WebForm_FireDefaultButton(event, &#39;mainbody_contentbody_contentpage_btnUpload&#39;)">
							<div class="form-horizontal">
							
									<div class="form-group">
                           				 <label class="col-md-2 control-label bold">Ảnh đại diện <span class="text-error">*</span></label>
                           					 <div class="col-md-10">
                                				<div class="u_image">
				                                    <canvas id="canvas" height="5" width="5"></canvas>
				                                    <img id="mainbody_contentbody_contentpage_imgUpdateCode" class="u_image_edit">
				                                    <div class="img_edit"></div>
				                                    <input type='file' name="avatar" onchange="readURL(this);" />
    										 		<img  id="blah" src="#"  />
				                                    <span class="glyphicon glyphicon-ok form-control-feedback success-ic2" aria-hidden="true" id="successImg" style="display: none;"></span>
                                				</div>
                               					<div class="alignleft u_image_txt">
	                                   				<div class="true-ic">Ảnh đẹp sẽ giúp code có nhiều lượt xem</div>
	                                    			<div class="true-ic">Dung lượng tối đa 2MB</div>
                                    				<span id="img_error" class="text-error "></span>
                                				</div>
                           					</div>
                    			    </div>
                    			    
									<div class="form-group">
										<label class="col-md-2 control-label bold">TIÊU ĐỀ CODE
											<span class="text-error">*</span>
										</label>
										<div class="col-md-7">
										
											<input name="sourcename" type="text" maxlength="200"
											id="mainbody_contentbody_contentpage_txtTitle"
											class="form-control" onblur="ValidateTitle()"
											placeholder="Tối thiểu 20 kí tự" /> 
											
											<span
											class="glyphicon glyphicon-ok form-control-feedback success-ic"
											aria-hidden="true" id="successTitle"></span>
											
										</div>
										<div class="col-md-3 note-col">
											<div class="form-control-static">
											<span id="title_error" class="text-error "></span> <span
												class="text-nowrap title5">Quyết định 80% SEO <span
												data-toggle="tooltip" data-placement="top"
												title="Tiêu đề tối thiểu 20 kí tự, Tiêu đề cần chứa 'Từ khóa' trọng tâm, tiêu đề càng hấp dẫn sẽ thu hút nhiều lượt xem."><i
												class="fa fa-info-circle" aria-hidden="true"></i></span></span>
											</div>
										</div>
									</div>
									
								<div class="form-group">
									<label class="col-md-2 control-label bold">Danh mục <span
										class="text-error">*</span></label>
									<div class="col-md-4">
										<select name="ctgid"
											id="mainbody_contentbody_contentpage_ddlCategoryLang"
											class="form-control" onblur="ValidateCate()"
											onchange="ValidateCate()">
											<option value="">--Chọn danh mục--</option>
										 	<c:forEach var="category" items="${listCategory}">
												<option value="${category.ctgid}">${category.ctgname}</option>
											</c:forEach> 
										</select> <span
											class="glyphicon glyphicon-ok form-control-feedback success-ic3"
											aria-hidden="true" id="successCate"></span>

									</div>
									<div class="col-md-6">
										<div class="form-control-static">
											<span id="lang_error" class="text-error">&nbsp;</span>
										</div>
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-2 control-label bold">Mô tả ngắn <span
										class="text-error">*</span></label>
									<div class="col-md-7">
										<textarea name="title" rows="2" cols="20"
											id="mainbody_contentbody_contentpage_txtSubTitle"
											class="form-control up-textarea" onblur="ValidateSub()"
											placeholder="Tối thiểu 70 kí tự" maxlength="200"
											style="height: 60px;">
										</textarea>
										<span
											class="glyphicon glyphicon-ok form-control-feedback success-ic3"
											aria-hidden="true" id="successSub"></span>
									</div>
									<div class="col-md-3 note-col">
										<span id="subdetail_error" class="text-error"></span> <span
											class="text-nowrap title5">Tối ưu từ 70 - 200 kí tự <span
											data-toggle="tooltip" data-placement="top"
											title="Để có thứ hạng cao trên kết quả tìm kiếm bạn cần viết mô tả hấp dẫn về code, chứa từ khóa, những ưu điểm và tính năng...để thu hút người mua"><i
												class="fa fa-info-circle" aria-hidden="true"></i></span></span>&nbsp; <span
											class="text-nowrap orange"><b id="lblcountSubTitle">0</b>
											Kí tự</span>
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-2 control-label bold">Link
										download <span class="text-error">*</span>
									</label>
									<div class="col-md-7">
										<input type="file" name="size"> <span
											class="glyphicon glyphicon-ok form-control-feedback success-ic"
											aria-hidden="true" id="successLink"></span>
									</div>
									<div class="col-md-3">
										<span id="link_error" class="text-error"></span>
									</div>
								</div>
  <div class="form-group">
                            <label class="col-md-2 control-label bold">Đặt phí tải</label>
                            <div class="col-md-10">
                                <div class="btn-group" data-toggle="buttons">
                                    <label class="btn btn-warning active" id="lblCheckFree">
                                        <input type="radio" name="options" id="idFree" value="Free" checked>
                                        Miễn phí (0 Xu)
                                    </label>
                                    <label class="btn btn-warning" id="lblCheckCode">
                                        <input type="radio" name="options" id="idCode" value="Code">
                                        Tham khảo (2Xu - 99Xu)
                                    </label>
                                    <label class="btn btn-warning" id="lblCheckCodeOK">
                                        <input type="radio" name="options" id="idCodeOK" value="CodeOK">
                                        Chất lượng (>= 100 Xu)
                                    </label>
                                </div>
                            </div>
                        </div>
                        <div class="form-group" id="boxPrice">
                            <div class="col-sm-6 col-md-offset-2 col-md-4">
                                <div class="input-group">
                                    <div class="input-group-btn">
                                        <button type="button" class="btn btn-default dropdown-toggle up-dropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Chọn <span class="caret"></span></button>
                                        <ul class="dropdown-menu dropdown-menu-left">
                                            <li id="li5">5 Xu</li>
                                            <li id="li10">10 Xu</li>
                                            <li id="li15">15 Xu</li>
                                            <li id="li20">20 Xu</li>
                                            <li id="li40">40 Xu</li>
                                            <li id="li80">80 Xu</li>
                                            <li role="separator" class="divider"></li>
                                            <li id="li100">100 Xu</li>
                                            <li id="li150">150 Xu</li>
                                            <li id="li240">240 Xu</li>
                                            <li id="li400">400 Xu</li>
                                        </ul>

                                    </div>
                                    <input name="price" type="text" maxlength="4" id="mainbody_contentbody_contentpage_txtPriceOther" class="bold form-control" onblur="ValidatePrice()" onkeypress="CheckNumeric(event);" onkeyup="ChangPrice();" placeholder="Tự nhập phí tải" />
                                    <span class="glyphicon glyphicon-ok form-control-feedback success-ic" aria-hidden="true" id="successPrice" style="right: 60px;"></span>
                                    <span class="input-group-addon">Xu <span data-toggle="tooltip" data-placement="top" title="(1 Xu = 1.000 đ) Bạn có thể đặt phí tải tùy ý hoặc chia sẻ miễn phí 0 Xu, Khi code đã được duyệt nếu bạn GIẢM PHÍ TẢI phí tải sẽ được cập nhật ngay nhưng nếu TĂNG GIÁ thì cần chờ BQT kiểm duyệt giá đó! Nếu mức giá >= 100 Xu thì bạn cần cam kết HỖ TRỢ khi người mua liên hệ."><i class="fa fa-info-circle" aria-hidden="true"></i></span></span>
                                </div>
                            </div>
                            <div class="col-sm-6 col-md-3">
                                <div class="checkbox" id="boxCheck">
                                    <label class="orange">
                                        <input id="chkCamKet" onchange="ValidatePrice()" value="1" type="checkbox" />
                                        Cam kết hỗ trợ người mua                                        
                                    </label>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-control-static">
                                    <span id="price_error" class="text-error">&nbsp;</span>
                                </div>
                            </div>
                        </div>
							<div class="form-group">
									<label class="col-md-2 control-label bold">Mô tả chi
										tiết <span class="text-error">*</span>
									</label>
									<div class="col-md-10" id="editorDetail">
										<textarea name="contentdetails" rows="2" cols="20"
											id="myTextarea"
											style="height: 200px;"></textarea>
										<span
											class="glyphicon glyphicon-ok form-control-feedback success-ic"
											aria-hidden="true" id="successDetail"></span>
									</div>
								</div>
								
								<div class="form-group">
								
								</div>
								
								
								
								
						
                        <div class="form-group">
                            <div class="col-md-offset-2 col-md-10">
                                <textarea class="form-control up-textarea" rows="5" spellcheck="false">
								- Mọi thông tin của thành viên đăng tải trên diễn đàn sharecode.vn phải chính xác.
								- Mọi source code khi upload đã được build phải đảm bảo chạy tốt, mô tả đầy đủ thông tin và đúng như hình ảnh đính kèm.
								- Nội dung file nén đã được kiểm tra, đảm bảo không chứa tệp tin không khả dụng, độc hại, virus hoặc bất cứ liên kết khác...
								- File chứa code có đầy đủ file chạy, thông tin chi tiết về source, hướng dẫn cài đặt và tài khoản đăng nhập chi tiết.
								- Cam kết hỗ trợ hoặc fix lỗi nếu code >= 100Xu (Code chất lượng), khi người mua liên lạc qua email hoặc số điện thoại của bạn.
								- Tất cả source code bị báo cáo vi phạm bản quyền nếu được ban quản trị xác nhận là đúng, source code sẽ bị xóa bỏ.
								- Source code đã upload lên sharecode.vn là thành viên upload đã đồng ý cho phép các thành viên download và sử dụng.
 								</textarea>
                            </div>
                        </div>

								<div class="form-group">
									<div class="col-md-offset-2 col-md-10">
										<div class="checkbox">
											<label id="chkRequireBox" style="border-radius: 4px;">
												<input
												name="ctl00$ctl00$ctl00$mainbody$contentbody$contentpage$chkRequirement"
												type="checkbox"
												id="mainbody_contentbody_contentpage_chkRequirement"
												onchange="ValidateCheck()" value="1" /> <a
												href="/quy-dinh-chung.htm" target="_blank" class="aorange"
												title="Xem thêm điều khoản sử dụng">Tôi đã đọc và đồng ý
													với các điều khoản của Tinhte.vn&nbsp;</a>
											</label> &nbsp;&nbsp;<span id="check_error" class="text-error"
												style="line-height: 20px;">&nbsp;</span>
										</div>
									</div>
								</div>
								<div class="form-group">
									<div class="col-md-offset-2 col-md-10">
										<span id="upload_error" class="text-error">&nbsp;</span>
									</div>
								</div>
								<br />
								<div class="form-group">
									<div class="col-md-offset-2 col-md-10 line-h">
										<button id="submit" type="submit" value="add" name="action"
											style="color: #d65106; background-color: transparent; background-image: none; border-color: #d65106 !important; font-weight: 600; border: 2px solid transparent; padding: 12px 30px; font-size: 16px; line-height: 1.5; border-radius: .1875rem;">
											Book Table</button> &nbsp;&nbsp; <span class="text-error text-nowrap"
											style="line-height: 40px;">(*) Là các trường bắt buộc
											nhập nội dung</span>
									</div>
								</div>
							</div>

						</div>

					</div>
				</form>

			</div>
		</div>

	</div>

         			
         
         
         
         
         
                 
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
    <script type="text/javascript">
    function readURL(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();

            reader.onload = function (e) {
                $('#blah')
                    .attr('src', e.target.result)
                    .width(150)
                    .height(200);
                	style : 'display: block'
            };

            reader.readAsDataURL(input.files[0]);
        }
    }

</script>
