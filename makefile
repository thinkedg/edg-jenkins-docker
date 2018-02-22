.PHONY: build run stop restart rebuild clean clean-data


build:
	@docker-compose -p jenkins build --no-cache

run:
	@docker-compose -p jenkins up -d  data master

stop:
	@docker-compose -p jenkins stop

clean:	stop
	@docker-compose  -p jenkins rm -f  master 

clean-data: clean
	@docker-compose -p jenkins rm -v data

restart: stop run

rebuild: clean build run




# build:
# 	@docker-compose build --no-cache

# run:
# 	@docker-compose up -d

# stop:
# 	@docker-compose	stop

# restart: stop run

# clean:  stop
# 	@docker-compose	rm -f

# rebuild: clean build run
