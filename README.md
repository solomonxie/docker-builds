# WebDAV container

Thanks to `morrisjobke/webdav`.

You can run this container in following way. You can then access the WebDAV instance at `http://IP:8888/webdav`.
Internally the folder `/var/www/webdav` is used as WebDAV root.

```sh
sudo chown -R www-data:www-data ~/webdav
docker run -d --name webdav --restart always \
    -v ~/webdav:/var/www/webdav \
    -e USERNAME=ubuntu -e PASSWORD=123 \
    -p 8888:80 solomonxie/webdav:ubuntu
```
