# Ubuntu 16.04 / Ubuntu 18.04 安装指南



### 一、WIn10完全卸载Ubuntu双系统

​	此处为了帮助Ubuntu系统故障而被迫重装的情况，先给出完美的卸载方法。

​	第一次安装可以跳过该步骤。

​	首先，利用EasyBCD调整开机选项，具体可以参考：<https://www.cnblogs.com/Dluffy/articles/5962004.html>

​	然后，在WIn10命令行中管理员身份操作，删除Ubuntu的EFI分区，具体可参考：

​	https://blog.csdn.net/guikunchen/article/details/88077330

### 二、安装Ubuntu双系统

​	这里首先请记住最重要的事情：显卡驱动！

​	为了防止无法进入安装界面以及安装完成后无法进入桌面，都需要在grub界面按“e”进入编辑，然后在“quiet splash”后加上“nomodeset”，这样就不会卡死在紫色界面或五个点的logo界面。至于grub界面是什么，就是安装前选择“Install Ubuntu”和安装后选择“Ubuntu”的地方，顶上有写GRUB这个单词。（我是dell游匣灵越，大多数电脑也都适用该方法）

​	然后根据该教程一步步安装：<https://blog.csdn.net/s717597589/article/details/79117112>

​	这个教程没什么坑的地方，就是U盘启动时，我的电脑不需要进入BIOS调整顺序，只要直接按F12进入引导界面选择U盘启动项就行了，可以省去一些操作步骤。

​	另外一个小技巧是，如果遇到安装界面分辨率不对，而够不到最底下的button时，可以尝试按住Alt或者WIn键，这样就可以用鼠标拖住界面的任何位置移动，自然就能够看到最底下的部分了。

​	安装完成后不要激动，还记得刚才说的重启时又要再按“ｅ”输入一次“nomodeset”吗？这样才能顺利进入桌面。

​	为了防止以后一直开机输入“nomodeset”,可以右键打开终端，输入：

​	sudo gedit /boot/grub/grub.cfg

​	里面一共有三处“quiet splash”，在后面都加上“nomodeset”就行了。实在找不到可以用Ubuntu自带的libreoffice查找功能找一下（这么菜的office很快就会被卸载了，抓紧机会体验一下），或者可以在开机时的grub界面进入Ubuntu Adanvanced（Ubuntu高级选项）留意一下几个“quiet splash”的位置。修改之后ctrl+s保存，以后开机就可以直接进入了。



