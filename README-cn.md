# kankun-manager

用 Bash and Ansible 预备管理 Kankun Small K switches.

## 功能

* 安装 opkg 打包管理工具
* 安装 [kankun-json](https://github.com/homedash/kankun-json)
* 安装 broadcaster
* 设置时区
* 设置cron
* 安装和设置在

## 开始安装

_除非密码被更改过，这些脚本程序使用初始的Kankun Small K密码。_

1. 在你本地机器上安装 [Ansible](http://www.ansible.com/)。 (这可以通过包裹管理工具来做，例如，如果你的Mac系统有[Homebrew](http://brew.sh/) 。)
2. 下载(Checkout)这个库: `git clone git@github.com:homedash/kankun-manager.git --recursive`
2. 编辑`hosts`文件，来联系Kankun Small K switches的IP地址和他们的密码.
3. 编辑`deploy.sh`文件，来使用你的switches密码。

## 使用

1. 运行`deploy.sh`脚本.
2. ???
3. 成功!

在你浏览器上访问你一个switch的IP地:

`http://10.0.0.10/`

这个应该可以显示你的switches信息和控制，有[kankun-json](https://github.com/homedash/kankun-json)提供。

## 贡献

如果你想贡献你的开发代码到kankun-manager, 请查看[贡献准则](https://github.com/homedash/kankun-manager/blob/master/CONTRIBUTING.md).
