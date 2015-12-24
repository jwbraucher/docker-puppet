# base Ubuntu image ready for puppet apply

FROM jwbraucher/docker-image
MAINTAINER Jeff Braucher <jeff@braucher.net>

ENV PUPPET_VERSION '~>3'
ENV PATH /usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

# compilers and ruby
RUN apt-get update && apt-get install -y \
  make \
  software-properties-common \
  ruby \
  ruby-dev \
  git

# puppet ruby gem
RUN gem install --no-ri --no-rdoc \
  --version "${PUPPET_VERSION}" puppet

# puppet tools ruby gems
RUN gem install --no-ri --no-rdoc \
  deep_merge \
  librarian-puppet

# puppet-apply
COPY ./puppet-apply /
