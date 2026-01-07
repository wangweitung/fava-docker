### Fava docker镜像

添加了以下组件
1. fava-dashboards
2. fava-envelope
3. beanprice


### 用法
创建docker-compose文件

```
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
