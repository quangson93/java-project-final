<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
<t:admin_layout title="Trang chủ">
	<jsp:attribute name="content">
		
        <div id="page-wrapper">

            <div class="container-fluid">

                <!-- Page Heading -->
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">
							Thêm chuyên đề
                        </h1>
                        <ol class="breadcrumb">
                            <li>
                                   <a
								href="${pageContext.request.contextPath }/quantri/chuyende">Chuyên đề</a>
                            </li>
                            <li class="active">
                                 Trang hiện tại
                            </li>
                        </ol>
                    </div>
                </div>
                <!-- /.row -->
                <div class="row">
                	<div class="col-md-5">
                		<f:form commandName="obj" method="POST"
							action="${pageContext.request.contextPath}/quantri/suachuyende" id="themKyThi">
						<div class="form-group">
							<f:input type="hidden" path="id" />
							<label>Tên chuyên đề</label>
							<f:input class="form-control" path="ten" />						
						</div>
						<input type="submit" class="btn btn-default" value="Cập nhập">
						<a class="btn btn-default"
								href="${pageContext.request.contextPath}/quantri/chuyende">Trở lại</a>
					</f:form>
                	</div>
                	${status }
                </div>

            </div>
            <!-- /.container-fluid -->

        </div>
        <!-- /#page-wrapper -->
	
	
	</jsp:attribute>
	<jsp:attribute name="css">
		<link
			href="${pageContext.request.contextPath}/resources/css/bootstrap-datetimepicker.min.css"
			rel="stylesheet" type="text/css" />
</jsp:attribute>
	<jsp:attribute name="js">
		<script type="text/javascript"
			src="${pageContext.request.contextPath}/resources/js/jquery.validate.min.js">
		</script>
		<script>
			
			 //Validator Jquery
	        $(function () {
	            $('#themKyThi').validate({
	                rules: {
	                    ten: {
	                        required: true,
	                    }
	                },
	                messages: {
	                    ten: {
	                        required: 'Chưa nhập tên chuyên đề',
	                    }
	                },
	                errorElement: 'small',
	                errorClass: 'place-right fg-yellow error',
	                highlight: function (element) {
	                    $(element).closest('.form-control').addClass('error');
	                },
	                success: function (label) {
	                    label.closest('.form-control').removeClass('error');
	                    label.remove();
	                }
	            });
	        });
		</script>
</jsp:attribute>
</t:admin_layout>
