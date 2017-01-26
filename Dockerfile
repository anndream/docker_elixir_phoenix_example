FROM elixir:latest
MAINTAINER Matt Williams <mdubbs@gmail.com>

RUN mix local.hex --force
RUN mix archive.install --force https://github.com/phoenixframework/archives/raw/master/phoenix_new.ez
RUN curl -sL https://deb.nodesource.com/setup_6.x | bash - && apt-get install -y nodejs

RUN mkdir /app
WORKDIR /app

EXPOSE 4000
CMD ["mix", "phoenix.server"]
