FROM ubuntu
RUN echo "this is my first image"
COPY script.sh /script.sh
CMD ["./script.sh"]
