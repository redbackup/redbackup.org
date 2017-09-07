# Run npm install and node build.js inside docker.
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
docker run -it --rm --volume $DIR/:/data:z --workdir /data/ -u `id -u` -p 35729:35729 -p 8080:8080 node:8.4-alpine sh -c "npm install && node build.js $@"

