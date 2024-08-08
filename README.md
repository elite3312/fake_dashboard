# A quasar project for practice

## build instructions

- requires node 12.22.1

    ```bash
    nvm install 12.22.1
    ```

- Install the dependencies

    ```txt
    npm install
    ```

### Start the app in development mode (hot-code reloading, error reporting, etc.)

```bash
quasar dev
```

### Lint the files

```bash
npm run lint
```

### Build the app for production

```bash
quasar build
```

## building with docker

```txt
docker build -t my-quasar-vue-app .
docker run -p 8080:80 my-quasar-vue-app
```

Your Quasar-built Vue.js app should now be accessible at <http://localhost:8080>.

## using docker scout to spot vulnerabilities

```ps
docker scout quickview
docker scout cves local://my-quasar-vue-app:latest
```
