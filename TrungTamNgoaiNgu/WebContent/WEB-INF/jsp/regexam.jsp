<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<t:admin_layout title="Trang chủ">
	<jsp:attribute name="content">
		
        <div id="page-wrapper">

            <div class="container-fluid">

                <!-- Page Heading -->
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">
                            Quản lý đăng ký thi
                        </h1>
                        <ol class="breadcrumb">
                            <li>  <a
								href="${pageContext.request.contextPath }/quantri/dangkythi">Đăng ký thi</a>
                            </li>
                            <li class="active">
                                 Trang hiện tại
                            </li>
                        </ol>
                    </div>
                </div>
                <!-- /.row -->
                <div class="row">
                	<div class="col-md-12">
                		<table class="table">
                		<thead>
                			<tr>
                				<th>Khóa học</th>
								<th>Học viên</th>
								<th>Số điện thoại</th>
								<th></th>
                			</tr>
                		</thead>
                		<c:forEach items="${lst }" var="item">
							<tr>
								<td>
									${item.kyThi.id } - ${item.kyThi.ten }
								</td>
								<td>
									${item.hocVien.id } - ${item.hocVien.hoTen }
								</td>
								<td>
									${item.hocVien.soDienThoai }
								</td>
								<td>
									<form
											action="${pageContext.request.contextPath }/quantri/dangkythi"
											method="POST">
										<input type="hidden" name="kyThi" value="${item.kyThi.id }" />
										<input type="hidden" name="hocVien"
												value="${item.hocVien.id }" />
										<button
												onClick="return confirm('Bạn có chắc chắn muốn đăng ký cho học viên này?')"
												class="btn btn-primary">Đăng ký</button>
									</form>
								</td>
								<td>
									<form
											action="${pageContext.request.contextPath }/quantri/xoadangkythi"
											method="post">
										<input type="hidden" name="idHocVien"
												value="${item.id.idHocVien }" />
										<input type="hidden" name="idKyThi"
												value="${item.id.idKyThi }" />
										<button class="btn btn-default"
												onClick="return confirm('Bạn có chắc chắn muốn xóa?')">Xóa</button>
									</form>
								</td>
							</tr>               		
                		</c:forEach>
                	</table>
                	</div>
                	
                </div>

            </div>
            <!-- /.container-fluid -->

        </div>
        <!-- /#page-wrapper -->
	
	
	</jsp:attribute>
</t:admin_layout>
