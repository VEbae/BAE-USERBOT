FROM ramadhani892/ramutod:slim-buster

RUN git clone -b RAM-UBOT https://github.com/VEbae/BAE-USERBOT /root/userbot
RUN mkdir /root/userbot/.bin
RUN pip install --upgrade pip setuptools
WORKDIR /root/userbot

#Install python requirements
RUN pip3 install -r https://raw.githubusercontent.com/ramadhani892/RAM-UBOT/RAM-UBOT/requirements.txt

CMD ["python3","-m","userbot"]
