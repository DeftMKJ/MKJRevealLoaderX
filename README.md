# iOS 越狱的Tweak开发

> iOS越狱开发中，各种破解补丁的统称为Tweak,通常意义上我们说的越狱开发,都是指开发一个Tweak.
基本上,tweak都依赖于一个名叫[cydia Substrate](http://www.cydiasubstrate.com) (以前名字也叫mobile Substrate)的动态库,Mobile Substrate是Cydia的作者Jay Freeman (@saurik)的作品，也叫Cydia Substrate,它的主要功能是hook某个App，修改代码比如替换其中方法的实现，Cydia上的tweak都是基于Mobile Substrate实现的.

> iOS的tweak开发可以有两种发布方式   
  1.  只能在越狱设备上安装的打包成deb格式的安装包  
  2.  直接使用开发者自己的证书/企业证书直接将补丁打包成ipa,这样不需要越狱也是可以安装的,只是这种非越狱的限制比较大,通常只是用来给某个app打个补丁或者类似的功能啥的


# RevealLoaderInject
动态加载Reveal到应用程序和插件中。此包使用Reveal 最新的的revealserver.framework，您可以将其替换为您想要的内容。兼容iOS 15 +。如果遇到问题，可以按照步骤自己编译

# 手动安装
