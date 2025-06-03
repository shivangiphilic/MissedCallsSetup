# Missed Calls Setup Steps
1. Clone the repository
git clone (https://github.com/shivangiphilic/MissedCallsSetup)
cd MissedCallsSetup

2.Start the environment
docker compose up -d

3. Access ClickHouse
docker exec -it clickhouse clickhouse-client

4. Access Kafka
docker exec -it kafka-4 /opt/kafka/bin/kafka-topics.sh --list --bootstrap-server localhost:9092

5. Access Clickhouse
docker exec -it clickhouse-server clickhouse-client
