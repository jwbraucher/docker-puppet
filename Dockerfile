# base Ubuntu image ready for puppet apply

FROM ubuntu:14.04
MAINTAINER Jeff Braucher <jeff@braucher.net>

# Set the locale and terminal
ENV DEBIAN_FRONTEND noninteractive
RUN locale-gen en_US.UTF-8  
ENV LANG en_US.UTF-8  
ENV LANGUAGE en_US:en  
ENV LC_ALL en_US.UTF-8

# compilers and ruby
RUN apt-get update 
RUN apt-get install -y make ruby ruby-dev git

# puppet ruby gems
RUN gem install --no-ri --no-rdoc puppet 
RUN gem install --no-ri --no-rdoc librarian-puppet 
RUN gem install --no-ri --no-rdoc deep_merge

# puppet-apply
COPY ./puppet-apply /
