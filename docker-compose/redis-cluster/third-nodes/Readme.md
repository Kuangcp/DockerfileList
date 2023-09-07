# 搭建 3主3从 
> 注意密码要一致

> 当前部署结构, 如果需要扩充集群内Node数，只需要开新的机器 重复节点B流程
- A节点 6389 主 6390 从
- B节点 6389 主 6390 从
- C节点 6389 主 6390 从


- 密码共享节点 A
    - 修改 tmpl 模板中的： requirepass masterauth cluster-announce-ip （当前节点的ip）
    - 修改 pwd.json 中密码
    - 创建两个redis节点的配置目录 `for port in $(seq 6589 6590); do   mkdir -p ${port}/conf   && PORT=${port} envsubst < redis-cluster.tmpl > ${port}/conf/redis.conf   && mkdir -p ${port}/data;done`
    - docker-compose up -d 

- 普通节点 B
    - 修改 tmpl 模板中的： requirepass masterauth cluster-announce-ip （当前节点的ip）
    - 创建两个redis节点的配置目录 `for port in $(seq 6589 6590); do   mkdir -p ${port}/conf   && PORT=${port} envsubst < redis-cluster.tmpl > ${port}/conf/redis.conf   && mkdir -p ${port}/data;done`
    - docker-compose up -d 

- 普通节点 C
    - 重复节点B流程

