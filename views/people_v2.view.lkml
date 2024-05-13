view: people_v2 {
  sql_table_name: public.people_v2 ;;

  dimension: account_type {
    type: string
    sql: ${TABLE}.account_type ;;
  }
  dimension: address {
    type: string
    sql: ${TABLE}.address ;;
  }
  dimension: allergies {
    type: string
    sql: ${TABLE}.allergies ;;
  }
  dimension_group: birth_dt {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.birth_dt ;;
  }
  dimension: blood_type {
    type: string
    sql: ${TABLE}.blood_type ;;
  }
  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }
  dimension: county {
    type: string
    sql: ${TABLE}.county ;;
  }
  dimension: customer_id {
    type: string
    sql: ${TABLE}.customer_id ;;
  }
  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }
  dimension: employment {
    type: string
    sql: ${TABLE}.employment ;;
  }
  dimension: gender {
    type: string
    sql: ${TABLE}.gender ;;
  }
  dimension: is_deleted {
    type: number
    sql: ${TABLE}.is_deleted ;;
  }
  dimension: job_type {
    type: string
    sql: ${TABLE}.job_type ;;
  }
  dimension: last_ipaddress {
    type: string
    sql: ${TABLE}.last_ipaddress ;;
  }
  dimension: name_first {
    type: string
    sql: ${TABLE}.name_first ;;
  }
  dimension: name_last {
    type: string
    sql: ${TABLE}.name_last ;;
  }
  dimension: name_prefix {
    type: string
    sql: ${TABLE}.name_prefix ;;
  }
  dimension: phone_number {
    type: string
    sql: ${TABLE}.phone_number ;;
  }
  dimension: postal_code {
    type: string
    sql: ${TABLE}.postal_code ;;
  }
  dimension: ssn {
    type: string
    sql: ${TABLE}.ssn ;;
  }
  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }
  measure: count {
    type: count
  }
}
