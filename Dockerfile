FROM ubuntu
RUN echo "this is my Second image"
COPY script.sh /script.sh
CMD ["./script.sh"]
