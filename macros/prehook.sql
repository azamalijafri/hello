{% macro pre_hook() %}
CREATE TABLE IF NOT EXISTS demo.operation_logs (
    operation VARCHAR(255),
    timestamp TIMESTAMP
);

INSERT INTO demo.operation_logs (operation, timestamp)
VALUES ('Starting query execution', CURRENT_TIMESTAMP);
{% endmacro %}