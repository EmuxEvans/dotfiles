## About
这是我的配置文件。

## 如何使用
我使用 [rcm](https://github.com/thoughtbot/rcm)来管理 dotfiles，

一般我是这样做的：

```bash
git clone git@github.com:dd1994/dotfiles.git ~/.dotfiles
rcup
```

:warning: :warning:
当然我不推荐你这样做，因为里面很多设置都是我的个人爱好。

但是你可以参考一下，**在知道自己干什么的情况下**，复制粘贴一部分。

如果有什么问题，随意提 Issues。

## 视频：

去年的，那时候比较喜欢耍帅：<http://www.tudou.com/programs/view/AgAplB-NxFw/>
刚不久的： <http://www.tudou.com/programs/view/dmfKA8BWyCA/>

## 详细内容

### zshrc

我用 oh-my-zsh， zshrc 里加了些 zsh 插件，一些 aliases，以及 rbenv, nvm 的配置。

### vimrc
在用 Vim 一年半以后，我决定切换到 Atom，主要原因是我觉得自己的键盘不太好用，另一方面我觉得
打字速度不是我编码时的瓶颈。所以这个 vimrc 基本上也没用了。

### tmux.conf
这个配置文件相当复杂以至于现在我自己也看不懂了，
原因就在于我之前看了本书：<https://pragprog.com/book/bhtmux/tmux>，
这个配置文件做的所有的事就是让它用起来像 Vim，以及一些配色调整。

### Xmodmap
把大写锁定键换成 ctrl

### gemrc
使用淘宝源；不安装文档。

### gitconfig
一些 aliases 以及全局的 gitignore

### pip.conf
使用豆瓣源

### bootstrap.sh
装一些软件

### rcrc
rcm 的配置文件，作用就是忽略一些 dotfile

## LICENCE
MIT
