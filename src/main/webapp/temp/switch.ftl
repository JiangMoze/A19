<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
    <#assign school='hd'/>
    <#switch school>
        <#case 'hlg'>
            <b>非常棒</b>
            <#break>
        <#case 'hgd'>
            <b>比哈理工棒</b>
            <#break>
        <#default>
            <b>不咋地</b>
            <#break>
    </#switch>
</body>
</html>