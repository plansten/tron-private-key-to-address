### If need create key securely:
```
openssl rand -hex 32
```

### Run:
```
docker build -t decoder .
docker run --rm --network none decoder "your_private_key"
```
