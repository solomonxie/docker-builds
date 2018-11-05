
## How to Run
```sh
# Server side
docker run -d --name frps \
    -v $(pwd):/conf --restart=always
    -p 7001:7000 -p 7501:7500 \
    solomonxie/frp:0.20.0
```
