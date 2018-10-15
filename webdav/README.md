# WebDAV container

You can run this container in following way. You can then access the WebDAV instance at `http://localhost:8888/webdav`. Internally the folder `/var/webdav` is used as WebDAV root.

```sh
sudo chown -R www-data:www-data ~/webdav
docker run -d --name webdav --restart always \
    -v ~/webdav:/var/webdav \
    -e USERNAME=ubuntu -e PASSWORD=123 \
    -p 8888:80 morrisjobke/webdav:latest
```
