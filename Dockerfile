FROM debian:12.5
COPY runOnHost.sh /
COPY wait.sh /
RUN chmod u+x runOnHost.sh
CMD ["./runOnHost.sh"]