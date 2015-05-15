# Docker-Uchiwa

### [https://github.com/DreamItGetIT/docker-uchiwa](https://github.com/DreamItGetIT/docker-uchiwa)

This image runs the latest [Uchiwa](https://uchiwa.io) on Ubunty Trusty (14.04)

### Running the image

```
docker run -d -e SERVER_JSON=<string here> -p 3000:3000 digit/docker-uchiwa
```

### Server Json

The structure of the JSON needs to be as follows:

```
{
  "host": "0.0.0.0",
  "pass": "secret",
  "port": "3000",
  "user": "admin"
}
```
We created this JSON structure using Ansible:

```
- hosts: localhost
  vars:
    sensu:
      - name: "test"
        host: "test.com"
        port: "3330"

  tasks:
    - debug: msg="{{sensu|to_json}}"
```

### Overriding the Uchiwa JSON Configuration

By default, Uchiwa uses the following data structure:

```
{
  "uchiwa": {
    "host": "0.0.0.0",
    "port": 3000,
    "refresh": 5
  }
}
```

If you want to override it, you can pass an environment variable to the docker image

```
docker run -d -e SERVER_JSON=<string here> -e UCHIWA_JSON=<string here> -p 3000:3000 digit/docker-uchiwa
```

Again we created this JSON configuration via ansible:

```
- hosts: localhost
  vars:
    uchiwa:
      - host: "0.0.0.0"
        port: "3000"
        user: "admin"
        pass: "secret"

  tasks:
    - debug: msg="{{uchiwa|to_json}}"
```
