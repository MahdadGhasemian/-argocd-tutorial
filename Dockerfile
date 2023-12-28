FROM nginx:latest
ARG COMMIT_SHORT_SHA
RUN echo "This is a sample web version 5 - ${COMMIT_SHORT_SHA}" > /usr/share/nginx/html/index.html