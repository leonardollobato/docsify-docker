# docsify-docker
docsfiy in a docker container


```
docker build .
```



```
docker run -d -p 3000:3000 -v $(pwd):/usr/local/docsify docs
```
