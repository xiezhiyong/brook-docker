FROM alpine:latest
RUN cd /bin && wget -O brook "https://github.com/txthinking/brook/releases/latest/download/brook_linux_amd64" && chmod +x brook;
ENTRYPOINT ["/bin/brook"]
CMD ["-d","wsserver","-l=3000","-p=hello"]
