FROM            node
RUN             mkdir /app
COPY            *.js package.json /app/
WORKDIR         /app
RUN             npm install
COPY            run.sh /app/run.sh
ENTRYPOINT      ["bash", "/app/run.sh" ]