connection: "guy_postgres_via_satori"

# include all the views
include: "/views/**/*.view"

datagroup: guy_demo_dac_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: guy_demo_dac_default_datagroup

explore: client_data {}
