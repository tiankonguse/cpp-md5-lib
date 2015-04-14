# CPP-MD5-LIB

一个c/c++版本的MD5程序库。  

## 说明


我已经写好了 cmake 文件， 并写好了`run.sh`脚本自动执行cmake。    

所以只需要把`run.sh`脚本复制到bulid目录，然后执行 `./run.sh` 脚本。  

就会在 lib 目录中生成对应的静态库。  

关于cmake 的使用，可以参考我的一篇笔记：[cmake 学习笔记][cmake-study]  



使用时只需要引入对应的头文件，然后就可以调用`md5`函数了。  


例如  

```cpp
#include "md5.h"

md5(string)
```


## 测试

我还在 test 目录里简单的实现了一个测试程序。  

执行 `make` 命令将会生成一个名字是 `demo`的可执行程序。  

测试如下  


```bash
echo -n "tiankonguse" | md5sum
77192a8e3dc5fb2b7428566f9741ebfc *-

./demo tiankonguse
md5 of 'tiankonguse': 77192a8e3dc5fb2b7428566f9741ebfc


echo -n "hello word" | md5sum
13574ef0d58b50fab38ec841efe39df4 *-

./demo "hello word"
md5 of 'hello word': 13574ef0d58b50fab38ec841efe39df4
```



[cmake-study]: http://github.tiankonguse.com/blog/2014/12/14/cmake-study/