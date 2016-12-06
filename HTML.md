#HTML
Hyper Text Mark-up Language(超文本标记语言)

<h2>
HTML的语法就是给文本加上表明文本含义的标签(Tag)
</h2>

<html>
  <head>
    <title>第一个Html文档</title>
  </head>
  <body>
    欢迎访问<a href="oceanch.github.io">Dr Han的个人网页</a>!

所有的HTML文档都应该有一个<!html>标签，<!html>标签可以包含两个部分:<!head>和<!body>。
<!head>标签用于包含整个文档的一般信息，比如文档的标题（<!title>标签用于包含标题），对整个文档的描述，文档的关键字等等。文档的具体内容就要放在<!body>标签里了。

<h3>Tags</h3>
<h4>General</h4>

<font size="6">666666666666666 </font>

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

<!hx> 它们分别表示一级标题，二级标题，三级标题...

<p>这是第一段。</p>
<p>这是第二段。</p>

也有人不用<!p>，而用<!br>。<!br>只表示换行，不表示段落的开始或结束，所以通常没有结束标签。
这是第一段。<br>
这是第二段。<br />
这是第三段。

<h4>images</h4>
<!hr>标签用于在页面上添加横线。可以通过指定width和color属性来控制横线的长度和颜色。
点击查看效果
<hr width="90%" color="red" />
<!img>标签用于在页面上添加图片，src属性指定图片的地址，如果无法打开src指定的图片，浏览器通常会在页面上需要显示图片的地方显示alt属性定义的文本。
点击查看效果
<img src="http://www.w3.org/Icons/valid-xhtml10" alt="图片简介" />

<h4>链接</h4>
可用文字代替具体网址，也可用图片代替. <!a>标签用于表示链接，在浏览器（如IE,Firefox等）中查看HTML文档时，点击<!a>标签括起来的内容时，通常会跳转到另一个页面。这个要跳转到的页面的地址由<!a>标签的href属性指定。上面的<!a href="oceanch.github.io">中，href属性的值就是oceanch.github.io。

<a href="oceanch.github.io">Dr Han的个人网页</a>

<a href="http://validator.w3.org"><img src="http://www.w3.org/Icons/valid-xhtml10" alt="验证HTML" /></a>

</body>

  
</html>

