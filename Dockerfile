FROM nginx:latest
ARG COMMIT_SHORT_SHA
RUN echo "This is a sample web version 2 - ${COMMIT_SHORT_SHA}" > /usr/share/nginx/html/index.html