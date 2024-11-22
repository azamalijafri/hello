MODEL (
    name demo.unique_key_incremental_model,
    kind INCREMENTAL_BY_UNIQUE_KEY (
        unique_key ID
    )
);

SELECT
    ID,
    ITEM_ID,
    EVENT_DATE
FROM
    demo.seed_model
