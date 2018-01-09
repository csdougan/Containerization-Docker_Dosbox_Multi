FROM centos

EXPOSE 80

WORKDIR /html

ADD dosbox.js /html/dosbox.js
ADD lost_files_sh_1.data /html/lost_files_sh_1.data
ADD lost_files_sh_1.html /html/index.html
ADD dosbox.html.mem /html/dosbox.html.mem
ADD entrypoint.sh /entrypoint.sh

RUN chmod u+x /entrypoint.sh
ENTRYPOINT /entrypoint.sh
