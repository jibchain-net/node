# The JBC Blockchain Network 

## 🏃 How to run a node
1. Make an environment file
```sh
make env
```

2. Open the `.env` file to edit your machine's public IP address
```sh
# Change to your IP address
NODE_PUBLIC_IP=xx.xx.xx.xxx 
```

3. Generate new `jwt.hex`
```sh
make generate_hex
cat config/jwt.hex # check new jwt.hex
```

4. Run a node
```sh
make node
```

## 📁 How to check execution and consensus logs
- All logs
```
docker compose logs -f
```

- Execution logs
```
docker logs -f jbc-execution
```

- Consensus logs
```
docker logs -f jbc-consensus
```
