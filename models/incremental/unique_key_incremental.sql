MODEL (
    name sql_models.unique_key_incremental_model,
    kind INCREMENTAL_BY_UNIQUE_KEY (
        unique_key ID
    )
);

SELECT
    ID,
    ITEM_ID,
    EVENT_DATE
FROM
    sql_models.seed_model
