<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
<#setting number_format="percent"/>
<#assign x=5.14157 y=4/>
<#-- If the language is US English the output is:
	mX:小数部分最小X位  ，进位，并且四舍五入
	MX:小数部分最大X位 ,可以没有  ，进位，并且四舍五入
-->
#{x}<br/>
#{y}<br/>
#{x; M3}<br/>
#{x; m2}  <br/><#--最少显示2位-->
#{y; M2} <br/>
#{x; m1}  <br/>
#{y; m2}  <br/>

#{x; m1M2}<br/>
#{x/2; m2M4}

<h1>日期类型</h1>

<#setting date_format="yyyy-MM-dd HH:mm:ss zzzz">
<#--正常显示当前日期-->
现在时间为:${.now?string}<br>
<#--由setting的转换格式确定-->
现在时间为:${.now?date?string}<br>
<#--由内置的转换格式确定-->
现在的短时间为 ：${.now?datetime?string.short}<br>
现在的长时间为 ：${.now?datetime?string.long}<br>
<#--自己指定日期-->
现在的时间为HH(24小时) ：${.now?string("HH:mm:ss,E,MM d,yyyy")}<br>
<hr/>
<#assign name="George Bush">
${name[1]}${name[7]}
${name[2..8]}<#--从2索引开始到8索引结束-->
</body>
</html>