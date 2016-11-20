<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
    <#escape e2 as e2?html>
        ${user}
        <#noescape>
            ${user}
        </#noescape>
    </#escape>


</body>
</html>