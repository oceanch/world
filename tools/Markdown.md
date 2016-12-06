![](/image/03196413 - 2000x250.png)

#Markdown basics


## 目录
* [fonts](#fonts)
* [image](#image)
* [link](#link)
* [blockquotes](#blockquotes)
* [list](#list)
* [table](#table)
* [code](#code)
* [emoji](#emoji)

---

## <a id="fonts"></a>fonts
It's very easy to make some words **bold** and other words *italic* with ***Markdown***. 

*This text will be italic*
_This will also be italic_

**This text will be bold**
__This will also be bold__

_You **can** combine them_

 <del>tags</del> = ~~tag~~
##listing
# This is an `<h1>` tag
## This is an `<h2>` tag
###### This is an `<h6>` tag


* Item 1
* Item 2
  * Item 2a
  * Item 2b
  
1. Item 1
2. Item 2
3. Item 3
   * Item 3a
   * Item 3b 
The listing number keeps increasing, no matter what number you add. 
1. Item 1
2. Item 2
  1. level 2
3. Item 3
   * Item 3a
   * Item 3b

Alternatively,

- Dashes work just as well
- And if you have sub points, put two spaces before the dash or star:
  - Like this
  - And this
  
  + the same?
  + as well?
  

##<a id="image"></a>image
![GitHub Logo](https://octodex.github.com/images/yaktocat.png)

<img src="https://octodex.github.com/images/yaktocat.png" alt="Reading" width="100" height="100" />
  
##<a id="link"></a>Links
http://oceanch.github.io 

http://github.com - automatic!

[GitHub](http://github.com)

##<a id="blockquotes"></a>Blockquotes

As Kanye West said:

> We're living the future so
> the present is our past.

If you'd like to quote someone, use the > character before the line:

> Coffee. The finest organic suspension ever devised... I beat the Borg with it.
> - Captain Janeway

##<a id="list"></a>tasks list
Task Lists
- [x] @mentions, #refs, [links](), **formatting**, and <del>tags</del> supported
- [x] list syntax required (any unordered or ordered list supported)
- [x] this is a complete item
- [ ] this is an incomplete item

##<a id="table"></a>table
First Header | Second Header
------------ | -------------
Content from cell 1 | Content from cell 2
Content in the first column | Content in the second column

##<a id="code"></a>coding
There are many different ways to style code with GitHub's markdown. If you have inline code blocks, wrap them in backticks: `var example = true`.  If you've got a longer block of code, you can indent with four spaces:

    if (isAwesome){
      return true
    }

GitHub also supports something called code fencing, which allows for multiple lines without indentation:

```
if (isAwesome){
  return true
}
```

And if you'd like to use syntax highlighting, include the language:

```javascript
if (isAwesome){
  return true
}
```
##<a id="emoji"></a>emoji list
emoji! :sparkles: :camel: :boom: 

:unlock:Github, md, html!
http://www.webpagefx.com/tools/emoji-cheat-sheet/
