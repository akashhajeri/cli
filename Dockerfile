FROM ubuntu
MAINTAINER Kirsten Hunter (khunter@akamai.com), Davey Shafik (dshafik@akamai.com)
RUN apt-get update
RUN apt-get install -y curl patch gawk g++ gcc make libc6-dev patch libreadline6-dev zlib1g-dev libssl-dev libyaml-dev libsqlite3-dev sqlite3 autoconf libgdbm-dev libncurses5-dev automake libtool bison pkg-config libffi-dev
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y -q libssl-dev python-all wget vim python-pip php5 php5-curl ruby-dev nodejs-dev npm php-pear php5-dev ruby perl5 golang-go
RUN pip install httpie-edgegrid 
ADD . /opt
RUN echo "PS1='Akamai CLI Sandbox >> '" >> /root/.bashrc
ENTRYPOINT ["/bin/bash"]
