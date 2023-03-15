view: client_data {
  sql_table_name: guy_demo.client_data ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}."id" ;;
  }

  dimension: account_num {
    type: string
    sql: ${TABLE}."account_num" ;;
  }

  dimension_group: credit_card_exp {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."credit_card_exp" ;;
  }

  dimension: credit_card_num {
    type: string
    sql: ${TABLE}."credit_card_num" ;;
  }

  dimension: credit_card_type {
    type: string
    sql: ${TABLE}."credit_card_type" ;;
  }

  dimension: cvv {
    type: number
    sql: ${TABLE}."cvv" ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}."email" ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}."first_name" ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}."gender" ;;
  }

  dimension: ip_address {
    type: string
    sql: ${TABLE}."ip_address" ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}."last_name" ;;
  }

  dimension: social_security_num {
    type: string
    sql: ${TABLE}."social_security_num" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, first_name, last_name]
  }
}
