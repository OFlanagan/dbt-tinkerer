This is a simple project to allow for local testing of dbt projects in an isolated environment

### Running the project

`make build`

### Logs and config
The project is loaded into the dbt container at run time using a bind mount on the root of this directory.
dbt is run in the container as the user that invokes `make build`, this means that the logs should be available in logs/dbt.log and accessible to the user.
