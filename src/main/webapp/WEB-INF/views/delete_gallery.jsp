<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">
        <head>
            <meta charset="UTF-8">
            <meta name="robots" content="noindex">        
            <meta name="viewport" content="width=device-width, initial-scale=1">
            <link rel="stylesheet prefetch" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
            <link rel="stylesheet prefetch" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css">
            <style class="cp-pen-styles">.nopad {
                    padding-left: 0 !important;
                    padding-right: 0 !important;
                }
                /*image gallery*/
                .image-checkbox {
                    cursor: pointer;
                    box-sizing: border-box;
                    -moz-box-sizing: border-box;
                    -webkit-box-sizing: border-box;
                    border: 4px solid transparent;
                    margin-bottom: 0;
                    outline: 0;
                }
                .image-checkbox input[type="checkbox"] {
                    display: none;
                }
    
                .image-checkbox-checked {
                    border-color: #4783B0;
                }
                .image-checkbox .fa {
                    position: absolute;
                    color: #4A79A3;
                    background-color: #fff;
                    padding: 10px;
                    top: 0;
                    right: 0;
                }
                .image-checkbox-checked .fa {
                    display: block !important;
                }</style></head><body>
            <!-- 
            Image Checkbox Bootstrap template for multiple image selection
            https://www.prepbootstrap.com/bootstrap-template/image-checkbox
            -->
            <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css">
            <form action="${pageContext.request.contextPath}/rb_exe/delete_selected.do" method="POST">
            <div class="container">
                <h3>${del_galls.gallery_title}</h3>
	                <c:forEach items="${del_galls.base64Imgs}" var="img" varStatus="loop">
					  <div class="col-xs-4 col-sm-3 col-md-2 nopad text-center">
					    <label class="image-checkbox">
					      <img class="img-responsive" src="data:image/jpeg;base64,${img.value}" />
					      <input type="checkbox" name="object_id" value="${img.key}" />
					      <i class="fa fa-check hidden"></i>
					    </label>
					  </div>
					  <%-- <div><c:if test="${(loop.index+1) % 3 eq 0}">
						  <br>
					    </c:if></div> --%>
				    </c:forEach>
            </div> 
            <br>
            <div class="col-sm-3 col-md-offset-5">
            	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
            	<input type="submit" class="btn btn-md btn-danger" value="Delete Selected Images">
            </div>
		    </form>       
            <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.2.2/jquery.min.js"></script>
            <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
            <script>// image gallery
                // init the state from the input
                $(".image-checkbox").each(function () {
                    if ($(this).find('input[type="checkbox"]').first().attr("checked")) {
                        $(this).addClass('image-checkbox-checked');
                    } else {
                        $(this).removeClass('image-checkbox-checked');
                    }
                });
    
                // sync the state to the input
                $(".image-checkbox").on("click", function (e) {
                    $(this).toggleClass('image-checkbox-checked');
                    var $checkbox = $(this).find('input[type="checkbox"]');
                    $checkbox.prop("checked", !$checkbox.prop("checked"))
    
                    e.preventDefault();
                });
                //# sourceURL=pen.js
            </script>
        </body>
    </html>
