FROM ruby:2.5.1
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

ARG USER=myuser
RUN adduser --disabled-login ${USER}
USER ${USER}

WORKDIR /home/${USER}/patterns

EXPOSE 3000
