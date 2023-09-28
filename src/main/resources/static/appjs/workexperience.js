function getWorkexperience() {
	var app = angular.module("rbts", []);
	app.controller('WorkexperiencePageController', function($scope) {
		$scope.workexperience = workexperience;
		console.log("--------js console-----");
//		$scope.workexpPhd = workexpPhd;
//		$scope.nonfacworkexp = nonfacworkexp;
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
				url : "deleteWorkExp.do",
				data : {
					id : Obj.id
				},
				success : function(data) {
					alert("data :" + data);
					location.reload();
				}
			});
		}
		$scope.calculateAge = function(d1, d2){
			if(d1 == null || 0 === d1.length){
				alert("Please Select Date of Joining.");
				$scope.Obj.leaving_date_db = '';
				return false;
			}
			var res1 = d1.split("-");
			var res2 = d2.split("-");
			var date1 = new Date(res1[2],parseInt(res1[1]-1),parseInt(res1[0]));
			var date2 = new Date(res2[2],parseInt(res2[1]-1),parseInt(res2[0]));
			var timeDiff = Math.abs(date2.getTime() - date1.getTime());
			var diffMonths = Math.ceil(timeDiff / (1000 * 3600 * 24 * 30)); 
			$scope.Obj.total_months_db = parseInt(diffMonths);
		}
	});

	/* Client side Validations */
	$(document).ready(function() {
		$.validator.addMethod("regex", function(value, element, regexp) {
			var check = false;
			return this.optional(element) || regexp.test(value);
		}, "Please check your input.");
		$.validator.addMethod('filesize', function(value, element, param) {
            return this.optional(element) || (element.files[0].size <= param) 
        });
		
		$("#workexperienceId").validate({
			rules : {
				work_exp : {
					required : true,
					regex : /^([0-9a-zA-Z.\s])+$/i
				},
				designation : {
					required : true,
					regex: /^([0-9a-zA-Z.,&():\/-\s])+$/i
				},
				organization : {
					required : true,
					regex: /^([0-9a-zA-Z.,&():\/-\s])+$/i
				},
				work_nature : {
					required : true,
					regex : /^([0-9a-zA-Z,&()'-_\s])+$/i
				},
				joining_date : {
					required : true,
					regex : /^([0-9-])+$/i
				},
				leaving_date : {
					required : true,
					regex : /^([0-9-])+$/i
				},
				total_months : {
					required : true,
					regex : /^([0-9])+$/i
				},
				annual_package : {
					required : false,
					regex : /^([a-zA_Z0-9.,-/])+$/i
				},
				exp_doc:{
					required : function check(){
						return !($('#exp_doc_id').val() != null && $('#exp_doc_id').val().length > 0);
					},
					filesize : 5242880
				}
			},
			messages : {
				exp_doc:{
					filesize : "file size must be less than 5 Mb."
				}
			},
			submitHandler: function(form) {
                $("#workexperienceBId").attr("disabled", true);
                form.submit();
            }

		});
	});
}
