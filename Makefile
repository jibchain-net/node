generate_hex:
	jwt=$$(openssl rand -hex 32) && echo "0x$$jwt" > config/jwt.hex 

node:
	docker compose up -d

env:
	cp .env.example .env