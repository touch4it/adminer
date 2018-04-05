# Official adminer configurable with env variables

## docker run ...

```bash
docker run -p 8080:8080 -e "PHP_UPLOAD_MAX_FILE_SIZE=2000M" -e "PHP_POST_MAX_SIZE=2000M" touch4it/adminer
```

## docker-compose.yml

```yml
version: '2'
services:
  adminer:
    image: touch4it/adminer
    environment:
      PHP_UPLOAD_MAX_FILE_SIZE: 2000M
      PHP_POST_MAX_SIZE: 2000M
```
