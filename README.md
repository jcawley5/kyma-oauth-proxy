# kyma-oauth-proxy

## Usage
go run main.go --headers Content-Type=application/x-www-form-urlencoded --requestBodyForm grant_type=password,username=user,password=pw,domain=mydomain --oauthURL https://myoauthurl.com