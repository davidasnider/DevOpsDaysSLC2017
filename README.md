In this workshop, we will setup a few docker images that will form a basic monitoring stack.
This stack can be used for tracking and graphing just about any type of metric you may need,
including application statistics, os performance statistics, etc.

**Workshop participants will learn**

* How do download the InfluxDB Image and configure the administrative interface for troubleshooting
* How to download the Telegraf Image and configure it to talk to InfluxDB and to listen for StatsD metrics
* How to use `nc` to send sample metrics to InfluxDB
* The differences between common metric types
    * Gauges
    * Counters
    * Timings and Histograms
* How to add tags to your statsd metrics
* How to download the grafana image and configure it to use InfluxDB
* How to create dashboards in grafana
* How to parameterize your dashboards

**Things you will need**

This is not a Docker introduction, but in order to keep the workshop functional on as 
many devices as possible we will be using Docker to get up and running quickly.  The 
instructor will be using Docker for Mac (versions listed below).  You can follow this 
[link](https://docs.docker.com/get-started/#setup) to ensure your docker installation is 
functional before the workshop.  Please complete the installation for your device and 
complete the Hello World example, as well as check the version to ensure you are setup
for a successful learning experience.

* Docker 17.03.1
* Docker Compose 1.11.2

**For best results, do these things before the conference**

*Download the images we'll be using*
```
docker pull influxdb:1.2.3
docker pull telegraf:1.2.1
docker pull grafana/grafana:4.2.0
docker pull davidasnider/alpine-nc:20170516
docker tag influxdb:1.2.3 influxdb:latest
docker tag telegraf:1.2.1 telegraf:latest
docker tag grafana/grafana:4.2.0 grafana/grafana:latest
docker tag davidasnider/alpine-nc:20170516 davidasnider/alpine-nc:latest

```

*Make sure your battery in your laptop is fully charged*