$(function() {
	time();
visualization();
})

function visualization() {

	// 基于准备好的dom，初始化echarts实例
	var myChart = echarts.init(document.getElementById('main'),'dark');

	// 指定图表的配置项和数据
	var option = {
		title: {
			text: 'ECharts 入门示例'
		},
		tooltip: {},
		legend: {
			data: ['销量']
		},
		xAxis: {
			data: ["衬衫", "羊毛衫", "雪纺衫", "裤子", "高跟鞋", "袜子"]
		},
		yAxis: {},
		series: [{
			name: '销量',
			type: 'pie',
			data: [5, 20, 36, 10, 10, 20]
		}]
	};

	// 使用刚指定的配置项和数据显示图表。
	myChart.setOption(option);
}

function Create_vote() {
	$(function() {
		$(".module_3").removeClass("hidden");
		$(".module_1").addClass("hidden");
		$(".module_2").addClass("hidden");
		$(".module_4").addClass("hidden");
	})
}

function Voting() {
	$(function() {
		$(".module_1").removeClass("hidden");
		$(".module_2").addClass("hidden");
		$(".odule_3").addClass("hidden");
		$(".module_4").addClass("hidden");
	})
}

function Data_view() {
	$(function() {
		$(".module_4").removeClass("hidden");
		$(".module_1").addClass("hidden");
		$(".module_2").addClass("hidden");
		$(".module_3").addClass("hidden");
	})
}

function Manage_vote() {
	$(function() {
		$(".module_2").removeClass("hidden");
		$(".module_1").addClass("hidden");
		$(".module_3").addClass("hidden");
		$(".module_4").addClass("hidden");
	})
}

function Add_option() {

	if (typeof op_num == "undefined") {
		op_num = 1;
	} else {
		++op_num;

	}
	if (op_num < 7) {
		div = ".div_op" + op_num;
		div2 = "div_op" + (op_num + 1);
		num = op_num + 1;
		btn = "btn_" + (op_num + 1);
		btn1 = "btn_" + (op_num);
		$(div).after('<div class="row ' + div2 + ' " style="margin-top: 5px; margin:0px ;height:44px">' +
			'<label for="vote_name' + op_num + '">选项' + num + ':</label>' +
			'<input type="text" class="form-control create_option" id="vote_name' + op_num + '" placeholder="请输入投票内容" style="margin-left: 4px;">' +
			'<button type="button" class="btn btn-default ' + btn + '" aria-label="Left Align"onclick="Add_option()" style="margin-left: 4px;">' +
			'<span class="glyphicon glyphicon-plus" aria-hidden="true" ></span>' +
			'</button>' +
			'<button type="button" class="btn btn-default ' + btn + '" aria-label="Left Align"onclick="Sub_option()" style="margin-left: 4px;">' +
			'<span class="glyphicon glyphicon-minus" aria-hidden="true" ></span>' +
			'</button>' +
			'</div>')
		$("." + btn1).addClass("hidden");
	} else {
		alert("数量已达上限");
		op_num--;
	}
}

function Sub_option() {
	if (op_num >= 1) {
		$("." + div2).remove();
		div2 = "div_op" + (op_num--);
		$("." + btn1).removeClass("hidden");
		btn1 = "btn_" + (op_num);

	}

}
$("#select").on('click', 'li', function(event) {
		var choseType = $(event.currentTarget).text()

		if (choseType == "单选") {
			button_Type = "radio";
		} else if (choseType == "多选") {
			button_Type = "Checkbox";
		}
		$("#currType").text(choseType)
	})
	/*检验选项是否合格*/
$(".exhibit_vote").on('click', function(event) {
	var flag = false;
	$(".check_title").empty();
	$(".checkbox_panel").empty();
	$(".check_panel").removeClass("hidden");
	/*确保选项内容符合要求*/
	/*如果投票题目为空*/
	if ($("#vote_name").val() == "") {
		$(".check_title").append('<p style="margin:0px"><span class="label label-danger">Error</span> :标题不能为空 </p>');
		flag = true;
	} else {
		/*将投票内容转移到panel-body*/
		var vote_tile = $("#vote_name").val();
		$(".check_title").html(vote_tile);
	}
	/*如果投票类型为空*/
	if (typeof button_Type == "undefined") {

		$(".checkbox_panel").append('<p style="margin:0px"><span class="label label-danger">Error</span> :未确定选项类型 </p>');
		flag = true;
	}
	/*如果创建的选项内容为空*/
	$(".create_option").each(function(index, element) {
			if ($(element).val() == "") {
				$(".checkbox_panel").append('<p style="margin:0px"><span class="label label-danger">Error</span> 选项' + (++index) + ': 没有填写内容 </p>');
				flag = true;
			}
		})
		/*如若存在不符合要求的情况，直接跳出程序*/
	if (flag == true) return;
	/*清楚展示面板内所用内容*/

	/*将选项内容创建到panel-foot*/
	$(".create_option").val(function(index, value) {
		var content = value;
		$(".checkbox_panel").append('<label class="btn  btn-default">' +
			'<input type="' + button_Type + '" autocomplete="off" checked>' + (++index) + '、' + content +
			'</label>');
	});

});
/*实时显示时间*/
function time() {
	var dt = new Date();
	var Year = dt.getFullYear();
	var Mon = dt.getMonth() + 1;
	var Day = dt.getDate();
	var h = dt.getHours();
	var m = dt.getMinutes();
	var s = dt.getSeconds();
	$(".time_panel p").html(Year + "年 " + Mon + "月 " + Day + "日 " + "<br>" + h + "时" + m + "分" + s + "秒");
	//$(".time_panel p").html(Year+"年 "+Mon+"月 "+Day+"日 "+<br>+h+"时"+m+"分"+s+"秒");
	//$("#time_show").html(h+":"+m+":"+s):
	setTimeout("time()", 1000); //

}