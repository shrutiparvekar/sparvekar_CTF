FROM ubuntu
EXPOSE 22
RUN apt update && apt -y install openssh-server && apt -y install netcat-traditional && apt -y install net-tools && apt -y install nmap && adduser --disabled-password --gecos "" labuser && echo 'labuser:labuser' | chpasswd 
WORKDIR /home/labuser
COPy for_container/README .
ENTRYPOINT service ssh start && tail -f /dev/null
