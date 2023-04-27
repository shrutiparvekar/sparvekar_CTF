FROM ubuntu
WORKDIR /ctf
COPY for_container/* .
RUN apt-get -y update && \
    apt-get -y install netcat-traditional && \
    apt-get -y install file && \
    apt-get -y install g++ && \
    apt-get -y install net-tools && \
    apt-get -y install openssh-server && \
    useradd labuser -m && \
    echo 'labuser:CtFplAYeR' | chpasswd && \
    g++ ctf_binary.cpp && mv a.out binary_bomb && rm ctf_binary.cpp && \
    g++ random_file.cpp && mv a.out is_this_the_key && rm random_file.cpp && \
    ./make_copies.sh && \
    rm make_copies.sh && \
    chown -R labuser:labuser /home/labuser/
EXPOSE 22
EXPOSE 10049
CMD ./startup.sh
