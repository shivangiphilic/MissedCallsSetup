# Clickhouse Docker Setup Steps
Pre-requisites: Docker and docker-compose must be installed.
1. Clone the repository  
   `git clone https://github.com/shivangiphilic/MissedCallsSetup`  
   `cd MissedCallsSetup`
2. Start Docker Desktop
3. Start the environment  
   `docker compose up -d`
4. Access Kafka  
   `docker exec -it kafka-4 /opt/kafka/bin/kafka-topics.sh --list --bootstrap-server localhost:9092`
5. Access ClickHouse  
   `docker exec -it clickhouse clickhouse-client`
Output:
Connecting to localhost:9000 as user default.
Connected to ClickHouse server version 25.3.2.
