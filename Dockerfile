FROM pritunl/archlinux:latest
RUN pacman -S nodejs npm git mongodb --noconfirm
WORKDIR /app

COPY . /app
RUN npm install -g bower
RUN npm install
RUN bower install --allow-root


CMD ["/app/run.sh"]
