<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
%>
<!DOCTYPE HTML>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <script type="text/javascript" src="<%=path%>/static/js/jquery.min.js"></script>
        <script type="text/javascript" src="<%=path %>/static/js/plugins/highcharts/highcharts.js"></script>
    </head>
    <body>
        <div id="container" style="min-width:400px;height:400px"></div>
        <script>
        $(function(){
        	
        	$.post('<%=path%>/user/queryCharts.do',function(data){
        		var chart = Highcharts.chart('container',{
                    chart: {
                        type: 'spline'
                    },
                    title: {
                        text: '月平均降雨量'
                    },
                    subtitle: {
                        text: '数据来源: WorldClimate.com'
                    },
                    xAxis: {
                        categories: [
                            '一月','二月','三月','四月','五月','六月','七月','八月','九月','十月','十一月','十二月'
                        ],
                        crosshair: true
                    },
                    yAxis: {
                        min: 0,
                        title: {
                            text: '降雨量 (mm)'
                        }
                    },
                    tooltip: {
                        // head + 每个 point + footer 拼接成完整的 table
                        headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
                        pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name}: </td>' +
                        '<td style="padding:0"><b>{point.y:.1f} mm</b></td></tr>',
                        footerFormat: '</table>',
                        shared: true,
                        useHTML: true
                    },
                    plotOptions: {
                        column: {
                            borderWidth: 0
                        }
                    },
                    series: data
                });
        	},'json');
        	
        	
        });
        
        
        
        </script>
    </body>
</html>