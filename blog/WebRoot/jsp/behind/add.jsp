<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<!DOCTYPE html>
<html lang="zh">
<head>
    <meta charset="utf-8" />
    <title>文章添加</title>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/main.css" />
    
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/editormd.css" />
    <link rel="shortcut icon"
          href="https://pandao.github.io/editor.md/favicon.ico"
          type="image/x-icon" />
</head>
<body>
<form action="<%=request.getContextPath()%>/add.do" method="post">
<div id="layout">
    <header>
     <h1>文章添加</h1>
    </header>
    
    <div class="title">
        <span>标题:</span><input type="text" name="title">
    </div>
    <span class="span_1">简介:</span>
    <div class="b_intro">
        <textarea  name="b_intro"></textarea>
    </div>
    <span class="span_1">正文：</span>
    <div id="test-editormd">
			<textarea style="display: none;" name="test-editormd">

           </textarea>
    </div>

</div>
<div class="add_bottom">
    <button type="submit">提交</button>
</div>
    </form>
<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/js/editormd.min.js"></script>
<script type="text/javascript">
    var testEditor;
    
    $(function() {
        testEditor = editormd("test-editormd", {
            width : "90%",
            height : 640,
            syncScrolling : "single",
            path : "${pageContext.request.contextPath}/lib/"
        });

    /*
         testEditor = editormd({
         id      : "test-editormd",
         width   : "90%",
         height  : 640,
         path    : "lib/"
         });
    */
         
    });
</script>
</body>
</html>