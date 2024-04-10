FROM centos  //继承至centos
ENV mypath /tmp  //设置环境变量
WORKDIR $mypath //指定工作目录

RUN yum -y install vim //执行yum命令安装vim
RUN yum -y install net-tools //执行yum命令安装net-tools

EXPOSE 80 //对外默认暴露的端口是80
CMD /bin/bash //CMD 容器启动命令，在运行容器的时候会自动执行这行命令，比如当我们 docker run -it centos 的时候，就会直接进入bash
