# Docker-Uchiwa

### [https://github.com/DreamItGetIT/docker-uchiwa](https://github.com/DreamItGetIT/docker-uchiwa)

This image runs the latest [Uchiwa](https://uchiwa.io) on Ubunty Trusty (14.04)

### Running the image

```
docker run -d -p 3000:3000 digit/docker-uchiwa
```

### Uchiwa Config

The structure of the JSON needs to be as follows:

```
{
  "sensu": [
    {
      "name": "test",
      "host": "test.com",
      "port": 4567
    }
  ],
  "uchiwa": {
    "host": "0.0.0.0",
    "port": 3000,
    "refresh": 5
  }
}
```

You can pass a list of servers to it

### Uchiwa JSON Configuration

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
