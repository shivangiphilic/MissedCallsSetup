# MissedCallsSetup
# Clone the repository
git clone <your-repo-url>
cd <repo-directory>

# Start the environment
docker compose up -d

# Access ClickHouse
docker exec -it clickhouse clickhouse-client

# Access Kafka tools
docker exec -it kafka /opt/kafka/bin/kafka-topics.sh --list --bootstrap-server kafka:9092
