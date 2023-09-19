function getEducationaldetails() {
	var app = angular.module("rbts", []);
	app.controller('EducationaldetailsPageController', function($scope, $filter) {
		$scope.educationaldetails = educationaldetails;
		$scope.degreeList = degreeList;
		$scope.Obj = {};
		$scope.editCategory = function(Obj) {
			window.scrollTo(500, 0);
			$scope.Obj = {};
			$scope.Obj = Obj;
			$scope.Obj.phd_date_db = $filter('date')(Obj.phd_date_db, "dd-MM-yyyy");
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
				url : "deleteEducational.do",
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
		$.validator.addMethod('filesize', function(value, element, param) {
            return this.optional(element) || (element.files[0].size <= param) 
        });
		$.validator.addMethod('lesserThan', function(value, element, param) {
			if(value == '' && jQuery(param).val() == '')
				return true;
			else
				return ( parseInt(value) <= parseInt(jQuery(param).val()) );
			}, 'Must be less than Maximum Percentage' );
		$("#educationaldetailsId").validate({
			rules : {

				degree : {
					required : true,
					regex : /^([0-9])+$/i
				},
				specialization : {
					required : function checkCourse() {
				          return $('#degree').val() == 13
			           },
			           regex: /^([0-9a-zA-Z.,#&():\/-\s])+$/i
				},
				board : {
					required : true,
					regex: /^([0-9a-zA-Z.,#&():\/-\s])+$/i
				},
				institute : {
					required : true,
					regex: /^([0-9a-zA-Z.,#&():\/-\s])+$/i
				},
				percentage : {
					required : false ,/*function checkCourse() {
				          return $('#degree').val() != 6 && $('#outof').val() != ''
			           },
					regex : /(^100(\.0{1,2})?$)|(^([1-9]([0-9])?|0)(\.[0-9]{1,2})?$)/i,*/
					min : 0,
					max : 100,
					/*lesserThan: "#outof"*/
				},
				outof : {
					required : false,/*function checkCourse() {
				          return $('#degree').val() != 6
			           },
					regex : /(^100(\.0{1,2})?$)|(^([1-9]([0-9])?|0)(\.[0-9]{1,2})?$)/i,*/
					min : 0,
					max : 100
				},
				year_of_pass : {
					required : true,
					regex : /^([0-9])+$/i
				},
				division : {
					   required : false,
			           regex: /^([0-9a-zA-Z.,#&():\/-\s])+$/i
				},
				other_degree : {
					required : function checkCourse() {
				          return $('#degree').val() == 8
			           },
					regex: /^([0-9-])+$/i
				},
				/*phd_title : {
					required : function checkCourse() {
				          return $('#degree').val() == 13
			           },
			           regex: /^([0-9a-zA-Z.,#&():\/-\s])+$/i
				},*/
				educational_doc:{
					required : function check(){
						return !($('#educational_doc_id').val() != null && $('#educational_doc_id').val().length > 0);
					},
					filesize : 5242880
				},
				/*phd_orig_degree_doc:{
					required : function check(){
						return !($('#phd_orig_degree_doc_id').val() != null && $('#phd_orig_degree_doc_id').val().length > 0);
					},
					filesize : 5242880
				}*/
			},
			messages : {
				educational_doc:{
            		filesize: "file size must be less than 5 Mb."
                },
                percentage : {
					lesserThan: "Must be less than Maximum Percentage"
				},
			},
			submitHandler: function(form) {
                $("#educationaldetailsBId").attr("disabled", true);
                form.submit();
            }

		});
	});
}
