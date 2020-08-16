FROM ubuntu:20.04

RUN apt-get update
#RUN apt-get install -y software-properties-common
#RUN add-apt-repository universe
#RUN add-apt-repository ppa:certbot/certbot
#RUN apt-get update
#RUN apt-get install -y certbot
RUN apt-get install -y letsencrypt
COPY certbot.sh /bin/certbot.sh
RUN chmod +x /bin/certbot.sh

CMD /bin/bash