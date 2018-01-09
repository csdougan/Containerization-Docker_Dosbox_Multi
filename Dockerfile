FROM centos

EXPOSE 80

WORKDIR /html

ADD dosbox.js /html/dosbox.js
ADD darklands.data /html/darklands.data
ADD darklands.html /html/index.html
ADD dosbox.html.mem /html/dosbox.html.mem
ADD entrypoint.sh /entrypoint.sh

RUN chmod u+x /entrypoint.sh
ENTRYPOINT /entrypoint.sh
