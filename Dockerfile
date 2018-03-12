FROM ruby:2.5

RUN gem install bundler
RUN gem install rake
RUN gem install rails
RUN gem install pg

run apt-get update
run apt-get -y install vim
run apt-get -y install postgresql-client
run apt-get -y install nodejs

COPY dotfiles/vimrc /root/.vimrc
COPY dotfiles/bash_profile /root/.bash_profile

RUN git clone https://github.com/VundleVim/Vundle.vim.git /root/.vim/bundle/Vundle.vim


