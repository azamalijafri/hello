MODEL (
  name demo.testing_model,
  kind VIEW,
  audits (
    assert_positive_order_ids
  )
);

SELECT *
FROM demo.seed_model