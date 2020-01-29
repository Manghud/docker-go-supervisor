# docker-golang-supervisord
Docker container to build, run and daemonize Golang binaries with supervisord. Requires Go modules to work properly

Pass the following environment variables in order to indicate the container how to build your Go package
- *MODULE_PATH*: Should point to the directory where the go.mod file resides. Relative to project root. eg: "src/server"
- *MAIN_FILE_PATH*: Should point to whatever .go file you want to build. Relative to module URI. eg: "cmd/go"

By default, the generated container exposes port 3000