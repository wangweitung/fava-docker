### Fava docker镜像

添加了以下组件
1. fava-dashboards
2. fava-envelope
3. beanprice


### 用法
1. 创建docker-compose文件

```yml
version: "3"
services:
    fava:
        container_name: bean-fava
        volumes:
            - ./bean:/bean
        environment:
            - BEANCOUNT_FILE=/bean/main.bean
        ports:
            - 1100:5000
        restart: always
        image: wangweitung/fava-docker:latest
        labels:
            - "com.centurylinklabs.watchtower.enable=true"
```
2. 启动
```bash
sudo docker compose up -d
```
3. 访问：
http://ip:1100
