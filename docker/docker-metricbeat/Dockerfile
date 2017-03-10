FROM ubuntu:14.04.5
RUN apt-get update \
	&& apt-get install -y apt-transport-https wget \
	&& wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | apt-key add - \
	&& echo "deb https://artifacts.elastic.co/packages/5.x/apt stable main" | tee -a /etc/apt/sources.list.d/elastic-5.x.list \
	&& apt-get update \
	&& apt-get install -y metricbeat
ADD metricbeat.yml /etc/metricbeat/
ENTRYPOINT /usr/share/metricbeat/metricbeat -c /etc/metricbeat/metricbeat.yml
