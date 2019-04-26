connection: "paramount-poc-lalit-personal-aws"

# include all the views
include: "boxOffice.view"

datagroup: paramountpoc_lalit_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: paramountpoc_lalit_default_datagroup

explore: boxOffice {}
