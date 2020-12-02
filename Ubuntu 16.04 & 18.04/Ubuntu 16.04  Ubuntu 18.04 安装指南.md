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

​	这个教程没什么坑的地方，就是U盘启动时，我的电脑不需要进入BIOS调整顺序，只要直接按F12进入引导界面选择U盘启动项就行了，可以省去一些操作步骤。帮助

​	另外一个小技巧是，如果遇到安装界面分辨率不对，而够不到最底下的button时，可以尝试按住Alt或者WIn键，这样就可以用鼠标拖住界面的任何位置移动，自然就能够看到最底下的部分了。

​	安装完成后不要激动，还记得刚才说的重启时又要再按“e”输入一次“nomodeset”吗？这样才能顺利进入桌面。

​	为了防止以后一直开机输入“nomodeset”,可以右键打开终端，输入：

​	sudo gedit /boot/grub/grub.cfg

​	里面一共有三处“quiet splash”，在后面都加上“nomodeset”就行了。实在找不到可以用Ubuntu自带的libreoffice查找功能找一下（这么菜的office很快就会被卸载了，抓紧机会体验一下），或者可以在开机时的grub界面进入Ubuntu Adanvanced（Ubuntu高级选项）留意一下几个“quiet splash”的位置。修改之后ctrl+s保存，以后开机就可以直接进入了。

### 三、Ubuntu基本配置

​	首先更新软件源为阿里云，这样下载速度才上的来。

​	接下来是一些常用软件的配置，首先给出两个整理得非常完善的参考资料：

​	1、https://blog.csdn.net/hymanjack/article/details/80285400

​	2、https://www.jb51.net/article/100611.htm	

##### 安装显卡驱动

​	如果需要安装NVIDIA驱动，可以参考链接1的最底下。不过该链接中没有屏蔽Ubuntu自带驱动Nouveau的步骤，具体可以参考：https://blog.csdn.net/u014682691/article/details/80605201

##### 时间设置

​	链接1中的时间设置方法只适合与Ubuntu18.04。

​	Ubuntu16.04的时间统一方法为：

​	http://www.360doc.com/content/17/0130/06/5544286_625帮助376404.shtml

​	也有人说用以下方法的，但是我的电脑上没有生效：

​	https://www.cnblogs.com/bluestorm/p/4899274.html

##### 禁用触控板

​	不知道大家什么感觉，反正我想把触摸板禁用了，因为总是干扰打字。

​	最简单的方法时在setting中直接点选，但我发现在Ubuntu16.04安装gnome-shell后无法使用该方法。因此查到了另一个方法：

​	xinput list   //查到自己的设备id，记住touchpad的对应id

​	xinput disable id   //填刚才的touchpad的对应id

​	这样就完成禁用了，不过每次开机都要重新禁用，而且如果计算机状态不一样，id可能会变。

​	如果不小心禁用了键盘，只要重启电脑就好了。

​	xinput enable id  //这样可以重启被禁用的设备

##### 设置win10和Ubuntu的启动顺序

​	在上面那个链接中也有：https://www.cnblogs.com/bluestorm/p/4899274.html

##### 安装deepinwine的QQ、TIM、微信、百度云、迅雷、360压缩

​	https://blog.csdn.net/qq_25987491/article/details/81364461

​	https://blog.csdn.net/hanjushi2/article/details/82184397

​	第二个链接更全，但是我自己安装foxmail在Ubuntu16.04下找不到，只有安装了gnome-shell桌面后才能找到。

##### 桌面美化

​	首先安装unity-tweak-tool（针对于Ubuntu16.04的unity桌面）或gnome-tweak-tool（针对于Ubuntu18.04的gnome桌面）：
​	unity：https://jingyan.baidu.com/article/d45ad148bc51bb69552b80dc.html

​	gnome：https://blog.csdn.net/github_36498175/article/details/80161362

​	可以将启动栏由侧面移动到底部：

​	https://jingyan.baidu.com/article/e52e36154e6af340c60c518c.html

​	另外，桌面可以设置各种各样的主题、图标、背景等，背景只需要右键更改就行了，Ubuntu18.04还可以分别设置锁屏界面背景和桌面背景。

​	grub界面也可以修改主题：

​	https://blog.csdn.net/w84963568/article/details/78884003

​	去掉开机界面的紫色：（这里改成黑色）

​	https://blog.csdn.net/clearcell/article/details/71275886

​	另一个链接方法更多但我没成功：

​	https://blog.csdn.net/mutilcam_prince/article/details/78289664

​	主题和图标有一个很好的下载网址，里面也有grub主题：

​	https://www.gnome-look.org/browse/ord/top/

​	手动安装方法在上面最完整的链接1中有；也有直接apt-get的安装方法，可以参考：

​	https://jingyan.baidu.com/article/63f2362859821b0208ab3d04.html

​	https://www.cnblogs.com/kingstacker/p/7633069.html

​	我安装的是Arc-flatabulous-dark主题和Papirus图标，字体略微调大了一些以保护眼睛，这些都是在tweak tool中设置完成的。

​	点击图标最小化的方法可以参考：（虽然我没有成功）

​	https://blog.csdn.net/CareyTian/article/details/80170589	

​	最后，如果时gnome桌面，shell默认时加锁的，需要在谷歌浏览器中安装插件扩展，具体参考：

​	https://blog.csdn.net/github_36498175/article/details/80161362

​	如果使用Ubuntu16.04时不喜欢配套的unity桌面，可以根据以下教程改为gnome：

​	https://feiffy.cc/blog/2018/04/15/ubuntu-16-04-install-gnome	

​	https://www.jianshu.com/p/c356e4d9af52

​	安装错误的解决方法：

​	https://blog.csdn.net/flycappuccino/article/details/80662506

### 四、常见错误解决方案

​	Ubuntu安装软件时可能会碰到很多问题，这里列举几个常见的解决方案。

##### 缺少依赖项

​	有时候在sudo dpkg -i 解包安装或者sudo apt-get install 的时候会出现“you've held broken packages”，网上有个很不靠谱的方法是先sudo remove 再重新安装，这种操作很容易删除重要系统文件（搞崩了我的系统两次）。

​	正确的解决方法是把software&update中update栏的前两项“重要更新”和“推荐更新”打开（我为了防止系统自动升级喜欢关掉，其实还是开起来好），然后sudo apt-get update一下再执行之前的操作就可以了。

​	还有一个办法，先sudo apt-get Install aptitude，然后sudo aptitude Install ***，这样aptitude工具会帮你自己生成解决方法。

##### 安装error

​	这种错误不是缺少依赖，而是直接显示了“error occured”，这个时候只要sudo apt-get install -f 或者sudo apt-get -f Install 就行了，这一步的意义是修复（fix）。

##### 安装时apt-get或者dpkg不能使用

​	这种情况一般是另一个进程正在安装中，只要耐心等待另一边结束就行了。

##### 循环登录

​	这个情况的原因有很多，我遇到的原因时NVIDIA安装不正确，只要从grub界面选择高级选项然后从recovery模式登录，选择root身份执行		

​	apt-get autoremove --purge nvidia-*

​	然后再重新启动就行了。

​	其他的原因可以自行百度，网上的教程非常多。

##### 网易云安装后打不开

​	这个错误的原因时官方的新安装包1.1版本不太兼容，请到网上百度别人分享的1.0版本的网易云安装包，然后正常的sudo dpkg -i 即可。

##### 微信打开后有一个小的黑色正方形

​	这个错误大概也是不兼容的问题，一个临时的解决方法是在对话框输入个“666”或者其他可以打出来的表情包，这样黑框就会消失。但目前没有长期解决方法。

##### 微信、QQ无法输入中文

​	只需要添加语言环境就行了，但是我没有成功过，请自行百度解决。

### 五、pcl安装指南

​	有的同学需要在Ubuntu中使用点云库，可以参考教程：

​	https://blog.csdn.net/dantengc/article/details/78446600

​	这里需要注意，依赖项必须全部都装上，缺一项也很可能会编译失败。

​	此外 ，如果是Ubuntu16.04的用户，建议使用pcl-1.8版本，因为Ubuntu16.04自己内置的查找函数功能不够强大，总是找不到 /usr/include中的pcl库，更找不到其中的visualization功能。除此之外，Ubuntu16.04用户在调用pcl时还需要在CMakeLists.txt中添加强制路径：

​	#eigen

​	include_directories( "/usr/include/eigen3/" )

​	#pcl

​	find_package( PCL 1.8 REQUIRED COMPONENT common io )
​	include_directories( "/usr/include/pcl-1.8/" )
​	#add_definitions( "/usr/share/pcl-1.8/" )
​	link_directories("/usr/lib/libpcl_common.so" "/usr/lib/libpcl_io.so")
​	#list (REMOVE_ITEM PCL_LIBRARIES "vtkproj4")	

​	这样才能解决找不到pcl库路径的问题。

### 六、OpenCV安装指南

​	首先记得先安装ffmpeg，不然录视频时文件会是空文件。

​	然后按照官网教程安装，所有Optional可选项都可以忽略：

​	https://docs.opencv.org/master/d7/d9f/tutorial_linux_install.html



### 好啦，现在你就可以畅享纯净的Ubuntu系统啦！

