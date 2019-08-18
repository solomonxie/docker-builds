

## Example

Sharing the following folders:
- `~/webdav`
    - Allow users: user1, user2
- `~/share`
    - Allow users: user1, user2

Config file of wsgidav store at the Host path:
- `~/.config/wsgidav/wsgidav.yaml`

```sh
docker run -dt --name wsgidav --restart always \
        -v ~/.config/wsgidav:/var/wsgidav/config \
        -v ~/webdav:/var/wsgidav/webdav -v ~/share:/var/wsgidav/share \
        -p 8880:80 solomonxie/wsgidav-rpi:latest
```

Connect with the url: `http://IP:8880/webdav` and `http://IP:8880/share`
