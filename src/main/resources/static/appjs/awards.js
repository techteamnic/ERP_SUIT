function getAwards() {
	var app = angular.module("rbts", []);
	app.controller('AwardsPageController', function($scope) {
		$scope.awards = awards;
		$scope.achivements = achivements;
		
		$scope.Obj = {};
		$scope.editCategory = function(Obj) {
			window.scrollTo(500, 0);
			$scope.Obj = {};
			$scope.Obj = Obj;
		}

		$scope.deleteScreenAlert = function(Obj) {
			$scope.Obj = Obj;
		}

		$scope.clearScreen = function(Obj) {
			$scope.Obj = {};
		}

		$scope.deleteScreen = function(Obj) {
			$.ajax({
				method : "GET",
				headers : {
					"X-CSRF-TOKEN" : $("meta[name='_csrf']").attr("content")
				},
				url : "deleteAwards.do",
				data : {
					id : Obj.id
				},
				success : function(data) {
					alert("data :" + data);
					location.reload();
				}
			});
		}
	});

	/* Client side Validations */
	$(document).ready(function() {
		$.validator.addMethod("regex", function(value, element, regexp) {
			var check = false;
			return this.optional(element) || regexp.test(value);
		}, "Please check your input.");
		$("#awardsId").validate({
			rules : {
				awards : {
					required : true,
					regex : /^([0-9a-zA-Z,.'-/\s])+$/i
				},
				organization : {
					required : false,
					regex : /^([0-9a-zA-Z,.'-/\s])+$/i
				},
				remarks : {
					required : true,
					regex : /^([0-9a-zA-Z\s])+$/i
				},
				awards_doc:{
					required : function check(){
						return !($('#awards_doc_id').val() != null && $('#awards_doc_id').val().length > 0);
					},
					filesize : 5242880
				}
			},
			messages : {
				awards_doc:{
					filesize : "file size must be less than 5 Mb."
				}
			},
			submitHandler: function(form) {
                $("#awardsBId").attr("disabled", true);
                form.submit();
            }

		});
	});
}
