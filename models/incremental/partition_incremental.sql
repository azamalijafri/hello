MODEL (
    name sql_models.partition_increment_model,
    kind INCREMENTAL_BY_PARTITION,
    partitioned_by EVENT_DATE
);

SELECT
    EVENT_DATE,
    COUNT(ID) AS total_events,
    COUNT(DISTINCT ITEM_ID) AS unique_items
FROM
    sql_models.seed_model
GROUP BY
    EVENT_DATE
