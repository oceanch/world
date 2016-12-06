#HTML
Hyper Text Mark-up Language(超文本标记语言)

HTML的语法就是给文本加上表明文本含义的标签(Tag)

<html>
  <head>
    <title>第一个Html文档</title>
  </head>
  <body>
    欢迎访问<a href="oceanch.github.io">Dr Han的个人网页</a>!

所有的HTML文档都应该有一个<!html>标签，<!html>标签可以包含两个部分:<!head>和<!body>。
<!head>标签用于包含整个文档的一般信息，比如文档的标题（<!title>标签用于包含标题），对整个文档的描述，文档的关键字等等。文档的具体内容就要放在<!body>标签里了。

<!a>标签用于表示链接，在浏览器（如IE,Firefox等）中查看HTML文档时，点击<!a>标签括起来的内容时，通常会跳转到另一个页面。这个要跳转到的页面的地址由<!a>标签的href属性指定。上面的<!a href="oceanch.github.io">中，href属性的值就是oceanch.github.io。

<font size="6">6</font>

<font size="4">4</font>

<font color="red" size="5">红色的5</font>

<font face="黑体">黑体的字</font>

加粗，下划线，斜体字也是常用的文字效果，它们分别用<!b>,<!u>,<!i>表示：
<b>Bold</b>, <i>italic</i>,    <u>underline</u>
    
<!abbr>缩写

<!em>强调

<!strong>更强地强调

<!cite>引用

<!address>地址

</body>

  
</html>

