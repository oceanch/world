# Fork/pull request
先找到自己希望参与的项目，然后只需在Web上点击一下鼠标即可在自己的托管空间下创建一个派生（fork）的项目，并对派生项目的版本库具有读写的完全权限，就好像这个项目原本就是由自己创立的那样。

当贡献者完成开发并向自己派生的版本库推送后，可以通过GitHub的Web界面向项目的核心开发团队发送一个Pull Request，请求审核。


项目的核心团队收到Pull Request后审核代码，审核通过后可以直接通过Web界面执行合并操作接纳贡献者的提交。

# commands
* git pull
* git status
* git push
* git add files 把当前文件放入暂存区域。
* git commit 给暂存区域生成快照并提交。
- git commit -m "将[自己]改为[米娜桑]"
* git reset -- files 用来撤销最后一次git add files，你也可以用git reset 撤销所有暂存区域文件。
* git checkout -- files 把文件从暂存区域复制到工作目录，用来丢弃本地修改。

