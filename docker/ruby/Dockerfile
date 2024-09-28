FROM debian:latest

RUN apt-get update
RUN apt-get -y install autoconf bison build-essential libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libncurses5-dev libffi-dev libgdbm-dev

RUN apt-get -y install git-core
RUN rm -rf .rbenv/
RUN git clone https://github.com/rbenv/rbenv.git ~/.rbenv

RUN echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.profile
RUN echo 'eval "$(rbenv init -)"' >> ~/.profile
RUN . ~/.profile


#RUN echo '# rbenv setup' > /etc/profile.d/rbenv.sh
#RUN echo 'export RBENV_ROOT=/usr/local/rbenv' >> /etc/profile.d/rbenv.sh
#RUN echo 'export PATH="$RBENV_ROOT/bin:$PATH"' >> /etc/profile.d/rbenv.sh
#RUN echo 'eval "$(rbenv init -)"' >> /etc/profile.d/rbenv.sh
#RUN chmod +x /etc/profile.d/rbenv.sh

RUN mkdir -p /usr/local/rbenv/plugins
RUN git clone https://github.com/rbenv/ruby-build.git /usr/local/rbenv/plugins/ruby-build

#ENV RBENV_ROOT /usr/local/rbenv

RUN rbenv install 3.3.5
RUN rbenv global 3.3.5

RUN ruby -v
