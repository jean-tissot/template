# DS Gen Li & Jean Tissot

## Instruction of use

- `gradle run` to run the project
- `gradle test` to run the tests
- `gradle openJavadoc` to generate and open the javadoc (`gradle javadoc` to only generate the javadoc)
- `gradle build` to generate the jar, run the tests and start sonarqube scan

Before runing the sonarqube scan you need to start the sonarqube server with `gradle sonarUp` (you need to have docker-compose installed on your computer).
Warning ! Before starting sonarqube server you need to set the _wm.max_map_count_ host parameter to 262144:

- On linux `sudo sysctl -w vm.max_map_count=262144`
- On Mac with Docker toolbox `docker-machine ssh`, `sudo sysctl -w vm.max_map_count=262144` and `exit`
- On Mac with Docker for Mac `screen ~/Library/Containers/com.docker.docker/Data/vms/0/tty` and `sysctl -w vm.max_map_count=262144`
- On Windows `wsl -d docker-desktop` and `sysctl -w vm.max_map_count=262144`

On Linux you can avoid that by simply running `make sonar_up` (or `make su`) which set the host parameter if needed and starts the sonarqube server

To shutdown the sonarqube server, run `gradle sonarDown` (you can also use `make sonar_down` or `make sd`)