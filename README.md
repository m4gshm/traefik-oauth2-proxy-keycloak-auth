# traefik-oauth2-proxy-keycloak-auth

Traefik + oauth2-proxy + keycloak authentification example.

### Preconditions

Need to install Docker or Podman and docker-compose.

### How to start

1. run `docker-compose up keycloak`
1. open http://localhost:8082 in a broswer
1. login to the keycloak using name **admin**  and password **admin**
1. create **oauth2-proxy** client with options:
    - Client authentication: `On` 
    - Valid redirect URIs: `*`
1. copy the **Client Secret** value from the page **Credentials** to the property **client_secret** in the file `oauth2-proxy/config.toml`
1. create user with parameters:
    - Email verified: `Yes` 
    - Username: `traefik`
    - Email: `traefik@traefik.traefik`
    - First name: `traefik`
    - Last name: `traefik`
1. set password on the page **Credentials** of the user:
    - Password: `traefik`
    - Password Confirmation: `traefik`
    - Temporary: `Off`    
1. run `docker compose stop`
1. run `docker compose up`
1. wait for all services to start
1. open http://localhost:7070/bearer in the browser
1. sign in using username **traefik** and password **traefik**
1. you should see json response with parameter `authenticated=true` and `token` that can be parsed at https://jwt.io 