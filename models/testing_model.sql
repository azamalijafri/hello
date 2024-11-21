MODEL (
  name sql_models.testing_model,
  kind VIEW,
  audits (
    assert_positive_order_ids
  )
);

SELECT
  id,
  item_id,
  EVENT_DATE
FROM sql_models.seed_model