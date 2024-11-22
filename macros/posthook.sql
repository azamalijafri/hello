{% macro post_hook() %}
INSERT INTO demo.operation_logs (operation, timestamp)
VALUES ('Query execution completed', CURRENT_TIMESTAMP);
{% endmacro %}