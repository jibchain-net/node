generate_hex:
	jwt=$$(openssl rand -hex 32) && echo "0x$$jwt" > config/jwt.hex 

node:
	docker compose up -d

env:
	cp .env.example .env

import-validator-key:
	docker run -ti --rm -v ./data/lighthouse:/root/lighthouse -v ./data/lighthouse/custom/validators:/root/.lighthouse/custom/validators -v ./config:/config -v ./keys:/keys sigp/lighthouse lighthouse account validator import --directory=/keys --testnet-dir=/config

run-validator:
	docker compose -f validator.yaml up -d

stop-validator:
	docker compose -f validator.yaml down

validator-logs:
	docker compose -f validator.yaml logs