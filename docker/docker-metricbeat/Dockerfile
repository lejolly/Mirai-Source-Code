FROM ubuntu:14.04.5
ADD metricbeat.yml /etc/metricbeat/
RUN apt-get install -y apt-transport-https wget \
	&& wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add - \
	&& echo "deb https://artifacts.elastic.co/packages/5.x/apt stable main" | sudo tee -a /etc/apt/sources.list.d/elastic-5.x.list \
	&& sudo apt-get update \
	&& sudo apt-get install metricbeat
ENTRYPOINT /usr/share/metricbeat/metricbeat -c /etc/metricbeat/metricbeat.yml
