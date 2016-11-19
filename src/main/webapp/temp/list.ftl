<#--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/11/19
  Time: 11:36
  To change this template use File | Settings | File Templates.
-->

<html>
<head>
    <title>Title</title>
</head>
<body>
    <#assign users=["mike","杰克","爱丽丝"]/>
    <#list users as user>
        ${user}
    </#list>
    <#list list as a>
        ${a_index+1}${a}
        <#if a_has_next>
            ,
        </#if>
    </#list>
</body>
</html>
