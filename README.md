# Liquibase structured log tester


## Requirements
* Liquibase 4.20 + (https://github.com/liquibase/liquibase/releases)
* Liquibase Pro license key (get a free trial at https://liquibase.com/protrial)
* set `LIQUIBASE_LOG_FORMAT=JSON` (or `JSON_PRETTY` for more human friendly formatting)
  * can also be set on command-line with `--log-format=json`

* set the log-level to something other than `off`.
  * (see options at https://docs.liquibase.com/parameters/log-level.html)

## Nice to know:
* Liquibase flowfiles (https://docs.liquibase.com/flow)


## Contents
A master flowfile pointing a bunch of command specific flowfiles useful to generate sample structured logs

## How to use
* clone the repo contents to your local setup, with a properly configured Liquibase Pro, and then 
1. open a terminal and run `liquibase init start-h2` to start the included H2 database
2. open another terminal to the dir with `liquibase.properties` and `liquibase.flowfile.yaml`
3. run `liquibase flow`


Log files will be generated and stored in 
