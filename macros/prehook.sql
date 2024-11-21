{% macro pre_hook() %}
CREATE TABLE IF NOT EXISTS sql_models.operation_logs (
    operation VARCHAR(255),
    timestamp TIMESTAMP
);

INSERT INTO sql_models.operation_logs (operation, timestamp)
VALUES ('Starting query execution', CURRENT_TIMESTAMP);
{% endmacro %}