# We're using Ubuntu 20.10
# Thanks to geez-Userbot
FROM ramadhani892/ramutod:slim-buster

RUN git clone -b RAM-UBOT https://github.com/ramadhani892/RAM-UBOT /root/userbot
RUN mkdir /root/userbot/.bin
RUN pip install --upgrade pip setuptools
WORKDIR /root/userbot

#Install python requirements
RUN pip3 install -r https://raw.githubusercontent.com/ramadhani892/RAM-UBOT/RAM-UBOT/requirements.txt

CMD ["python3","-m","userbot"]
