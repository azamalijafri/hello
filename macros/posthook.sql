{% macro post_hook() %}
INSERT INTO sql_models.operation_logs (operation, timestamp)
VALUES ('Query execution completed', CURRENT_TIMESTAMP);
{% endmacro %}