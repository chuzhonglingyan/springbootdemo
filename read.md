### docker发布jar包

     mvn package docker:build
     
### docker运行jar包

     docker run -d  -p 8088:8080 --name springbootdemo  yuntian/springbootdemo
 
    //当你是host模式的时候，主机会自动把他上面的端口分配给容器，这个时候使用-p或者-P是无用的。但是还是可以在Dockerfile中声明EXPOSE端口
    docker run -d --net="host" -p 8088:8080 --name springbootdemo  yuntian/springbootdemo
    
    
### 测试访问
 
    docker exec -t springbootdemo curl -L http://localhost:8088
 
    http://121.199.71.179:8081/
    
    http://localhost:8088/
    
    https://localhost:8088/
    
    sudo docker exec -it  springbootdemo /bin/bash
    
    
    
    https://blog.csdn.net/v2sking/article/details/97796541
    
    https://blog.csdn.net/lizhiqiang1217/article/details/89072861