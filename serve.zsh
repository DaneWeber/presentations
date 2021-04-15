### NGINX Server for Reveal.js presentations ###

serve() {
    server_root=$(cd "$(dirname "$1")" && pwd)
    docker run -p 80:80 -v $server_root:/usr/share/nginx/html nginx
    # open 'http://localhost:80'
}

# present() is only set up for my https://github.com/DaneWeber/presentations structure
# where the reveal.js repo neighbors and the HTML files are all one level deep.
present() {
    setopt local_options BASH_REMATCH
    directory=$(cd "$(dirname "$1")" && pwd)
    filename=$(basename "$1")

    if [[ $directory =~ ^(.+)(/[[:alpha:]]+/[[:alpha:]]+)$ ]]; then
    ancestors=${BASH_REMATCH[2]}
    parent=${BASH_REMATCH[3]}
    open http://localhost:80$parent/$filename
    serve $ancestors
    fi
}
