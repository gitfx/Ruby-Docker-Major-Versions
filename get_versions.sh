# GET /README.md

echo "# Ruby Docker image major versions"

wget -q https://registry.hub.docker.com/v1/repositories/ruby/tags -O - | jq ".[].name" | perl -nle 'print "* $1" if /^"(\d+\.[\d+\.?]+)"/'
