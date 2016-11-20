<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
    <#assign mymap={"name":"mike","old":"29","sex":"男"}/>
    ${mymap.name}
    <#if mymap?exists>
        <#list mymap?keys as key>
            ${key}:${mymap[key]}
        </#list>

    </#if>
</body>
</html>