<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
    <#macro weikun day hour second="90">
        今天天气真好 ${day} ${hour} ${second}
    </#macro>
    <@weikun day="20" hour="2" second="1"/>
    <@weikun day="20" hour="70" />

    <#macro my list title>
        ${title?substring(0,3)}
        <#list list as l>
            ${l?cap_first}

        </#list>
    </#macro>
    <@my list=["ab","cd"] title="你好吗？"/>
    <h2>宏的可变参数</h2>
    <#macro myimg src extra...>
        <img src="${src}"
            <#list extra?keys as key>
                ${key}="${extra[key]}"
            </#list>/>

    </#macro>
    <@myimg src="images/1.gif" width="200" height="100" title="YST"/>
    <@myimg src="images/2.gif" width="50" height="25"/>

    <br/>
    <#macro do_twice>
    1. <#nested>
    2. <#nested>
    3. <#nested>
    4. <h1><#nested></h1>
    5. <h2><#nested></h2>
    </#macro>
    <@do_twice>你好吗</@do_twice>

    <#macro my1>
        <#nested "a",4,3>
        <#nested "b",6,9>
        <#nested "c",18,81>
    </#macro>
    <@my1 ; x ,y ,z>
        ${x+"ok"}---${y*y}---${z}
    </@my1>
    <br/>
    <#macro my2 count >
        <#list 1..count as x>
            <#nested x,x-1,x==count>
            <#if x<3>
                我很好
            <#else>
                <#return>
            </#if>


        </#list>

    </#macro>
    <@my2 count=4 ;c,c1,c2>
        ${c} ${c1} <#if c2>结束</#if>


    </@my2>
</body>
</html>