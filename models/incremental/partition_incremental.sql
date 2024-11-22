MODEL (
    name demo.partition_increment_model,
    kind INCREMENTAL_BY_PARTITION,
    partitioned_by EVENT_DATE
);

SELECT
    EVENT_DATE,
    COUNT(ID) AS total_events,  
    COUNT(DISTINCT ITEM_ID) AS unique_items
FROM
    demo.seed_model
GROUP BY
    EVENT_DATE
