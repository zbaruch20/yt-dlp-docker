FROM python:3-alpine

RUN apk --no-cache add curl bash ffmpeg 
RUN curl -L https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp -o /usr/bin/yt-dlp
RUN chmod a+rx /usr/bin/yt-dlp

ENTRYPOINT bash
