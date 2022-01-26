MAX_MAP_COUNT := $(shell sysctl vm.max_map_count)

h help default:
	@echo "Use : make [action]" \
		&& echo "Actions:" \
		&& echo " → sonar_up (alias su): starts sonarqube server on http://localhost:9000"

su sonar_up:
ifneq ($(MAX_MAP_COUNT), vm.max_map_count = 262144)
	@echo "We need to set vm.max_map_count to 262144 (this change is not persistent over reboot)"
	@sudo sysctl -w vm.max_map_count=262144
endif
	@docker-compose up -d

sd sonar_down:
	@docker-compose down