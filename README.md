# docker-machine
docker machine for Windows or Mac

官方相关文档 [Install Docker Machine](https://docs.docker.com/machine/install-machine/), 可以去[](https://github.com/docker/machine/releases/)下载最新版本的`docker-machine`.

## Windows OS

[boot2docker/boot2docker](https://github.com/boot2docker/boot2docker/releases)

下载[docker-machine.exe](./Windows/docker-machine.exe)和[docker-machine-driver-vmwareworkstation.exe](./Windows/docker-machine-driver-vmwareworkstation.exe)文件, 存放到系统环境变量`Path`包含的任意目录下. 执行一下[脚本](./Windows/docker-machine-create-dev.bat):

```dos
REM 创建dev虚拟机
docker-machine create --driver=vmwareworkstation --vmwareworkstation-disk-size=51200 --vmwareworkstation-memory-size=2048 --vmwareworkstation-cpu-count=2 --vmwareworkstation-boot2docker-url="https://raw.githubusercontent.com/Allen-Wei/docker-machine/master/boot2docker.iso" dev

REM 列出当前创建的虚拟机
docker-machine ls 

REM 启动dev虚拟机
docker-machine start dev

REM 进入dev虚拟机
docker-machine ssh dev

REM 停止dev虚拟机
docker-machine stop dev
```

具体参数参考[pecigonzalo/docker-machine-vmwareworkstation](https://github.com/pecigonzalo/docker-machine-vmwareworkstation).

## Mac OS

参考官方文档[VMware Fusion](https://docs.docker.com/machine/drivers/vm-fusion/)创建基于VMware Fusion的docker环境.

## Tiny Core Linux

`boot2docker.iso` 是个 [Tiny Core Linux](http://wiki.tinycorelinux.net/wiki:tce-load) 发行版, 可使用以下命令安装包:

```bash
tce-load -wi vim   # downloads, adds to OnBoot list and installs vim
```