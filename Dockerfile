FROM chartedcode/alpine-sftp-client
ADD ./entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/bin/sh", "/entrypoint.sh"]