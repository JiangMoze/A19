<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
    <#assign season=["春","夏","秋","冬"]/>
    <#list season as s>
        ${s}
    </#list>

    <#assign x>
        <#list ["A","B"] as s>
         ${s_index}:${s}
        </#list>
    </#assign>
    ${x}
    <#assign money=0.5/>
    ${money}
    <#setting number_format="percent"/>
    ${money}
    <#setting number_format="currency"/>
    ${money}
</body>
</html>