@REM curl --request POST --url http://localhost:8082/realms/traefik/protocol/openid-connect/token --header 'Authorization: Basic InRyYWVmaWs6dHJhZWZpayIgDQo=' --header 'Content-Type: application/x-www-form-urlencoded' --data grant_type=client_credentials
curl --request POST --url http://localhost:8082/realms/traefik/protocol/openid-connect/token --data "grant_type=password" ^
--data "client_id=traefik-service" --data "client_secret=6u2bGcKj5QNGWQccH3MsPViLBUggUZ1M" ^
--data "username=traefik" --data "password=traefik"
