MODEL (
    name sql_models.view_model,
    kind VIEW,
    audits (UNIQUE_VALUES(columns=(item_id)))
  );

  SELECT COUNT(*) AS COUNT FROM sql_models.seed_model GROUP BY ITEM_ID