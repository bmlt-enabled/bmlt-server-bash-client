.PHONY: generate-api-client
openapi.json:
	curl http://localhost:8000/main_server/api/v1/openapi.json > openapi.json

generate: openapi.json
	docker run --rm -v "$(shell pwd):/local" -w /local openapitools/openapi-generator-cli:v7.0.1 generate \
	    -i openapi.json \
	    -g bash \
	    -p scriptName=bmlt-cli \
	    -p apiKeyAuthEnvironmentVariable=BMLT_APIKEY \
	    -p basicAuthEnvironmentVariable=BMLT_CREDS \
	    -p hostEnvironmentVariable=BMLT_HOST \
	    -p generateBashCompletion=true \
	    -p generateZshCompletion=true \
		--git-repo-id=bmlt-root-server-bash-client \
		--git-user-id=bmlt-enabled \
	    -o .

clean:
	rm -f openapi.json
