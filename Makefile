.PHONY: generate-api-client
openapi.json:
	curl http://localhost:8080/main_server/api/v1/openapi.json > openapi.json

generate:
	docker run --rm -v "$(shell pwd):/local" -w /local openapitools/openapi-generator-cli:v6.2.0 generate \
	    -i openapi.yml \
	    -g bash \
	    -p scriptName=bmlt-cli \
	    -p apiKeyAuthEnvironmentVariable=BMLT_APIKEY \
	    -p basicAuthEnvironmentVariable=BMLT_CREDS \
	    -p hostEnvironmentVariable=BMLT_HOST \
	    -p generateBashCompletion=true \
	    -p generateZshCompletion=true \
		--git-repo-id=bmlt-root-server-python-client \
		--git-user-id=bmlt-enabled \
	    -o .

clean:
	rm -f openapi.json
