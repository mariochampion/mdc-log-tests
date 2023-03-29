# Liquibase structured log tester


## Requirements
* Liquibase 4.20 +
* Liquibase Pro license key (get a free trial at https://liquibase.com/protrial)
* set `LIQUIBASE_LOG_FORMAT=JSON` (or `JSON_PRETTY` for more human friendly formatting)
** can also be set on command-line with `--log-format=json`
* set the log-level to something other than 'off. (see options at https://docs.liquibase.com/parameters/log-level.html)



* Nice to know:
** Liquibase flowfiles (https://docs.liquibase.com/flow)

## Contents
A master flowfile pointing a bunch of command specific flowfiles useful to generate sample structured logs
