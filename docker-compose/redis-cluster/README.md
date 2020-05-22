# Redis Cluster
> [原始仓库](https://github.com/willcat/redis-cluster-docker)
> [docker-redis-cluster](https://github.com/Grokzen/docker-redis-cluster)

- redis 5.0.5 
- docker-compose

# 开启 
`docker-compose up -d`

# 集群快速搭建
- 查看各个节点在容器内网的ip, 下面的命令必须使用ip而非容器名称。`docker inspect --format='{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' node-80`

```bash
   docker exec -it  node-80 redis-cli -p 6380 --cluster create {node-80 ip}:6380  {node-81 ip}:6381  {node-82 ip}:6382  {node-83 ip}:6383  {node-84 ip}:6384  {node-85 ip}:6385 --cluster-replicas 1

   # 脚本辅助: 
   port=6379; for i in $(seq 0 5); do  port=$((port+1)) ; printf '%s:%s ' $(docker inspect --format='{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' node-8$i) "$port";  done
   docker exec -it  node-80 redis-cli -p 6380 --cluster create 此处复制上条命令的输出 --cluster-replicas 1
```

执行后 输入yes 等待集群建立完成

# 细节
如果想了解细节如握手、主从等可以参考[docker-compose搭建redis集群及可用性实践](https://juejin.im/post/5d4afaaf518825403769dd44)