#! /bin/ash
apk add docker docker-compose curl git
service docker run
mkdir prometheus && cd prometheus
mkdir prometheus_data
touch prometheus.yml
wget -c ("https://raw.githubusercontent.com/palzino/alpineScripts/master/Prometheus/docker-compose.yml")
echo "downloaded the docker file and installed pre requisits for prometheus"
docker-compose up -d
echo promethus is now online, time for grafana
cd ..
mkdir grafana && cd grafana
mkdir grafana_data
wget -c ("https://raw.githubusercontent.com/palzino/alpineScripts/master/Prometheus/docker-compose.yml")
