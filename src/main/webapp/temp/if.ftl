<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
    <#assign score="5"?number/>
    <#if (score>80)>
        优秀
    <#elseif (score>60)>
        及格
    <#else>
        次等品
    </#if>
</body>
</html>