MODEL (
    name demo.time_range_incremental_model,
    kind INCREMENTAL_BY_TIME_RANGE (
        time_column EVENT_DATE
    )
);

SELECT
    EVENT_DATE,
    COUNT(ID) AS total_events,
    COUNT(DISTINCT ITEM_ID) AS unique_items
FROM
    demo.seed_model
WHERE
    EVENT_DATE BETWEEN @start_ds AND @end_ds
GROUP BY
    EVENT_DATE
