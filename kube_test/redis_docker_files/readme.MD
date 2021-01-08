# 在k8s 上跑Redis Sentinel的坑：
用K8s起sentinel+redis. master挂了failover没问题。
但是当master起来的时候。sentinel很傻。不会去用master的name去找新起来的master 的ip。这就导致了之前master起来后无法加入集群也就无法通过sentinel转变成slave。

# 坑2：
redis的image不支持除了/data以外任何文件夹的写操作。必须要把redis.conf 所在文件夹和/tmp文件chmod 777. 如此才能允许日志文件和sentinel failover的时候重写conf文件 
