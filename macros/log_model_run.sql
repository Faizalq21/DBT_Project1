-- macros/log_model_run.sql
{% macro log_model_run() %}
  insert into SHOP_VERSE_ANALYTICS_DB.AUDIT.model_run_audit 
  values ('{{ this.name }}', '{{ this.schema }}', current_timestamp);
{% endmacro %}
