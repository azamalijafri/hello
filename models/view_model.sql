MODEL (
    name sql_models.view_model,
    kind VIEW,
    audits (UNIQUE_VALUES(columns=(item_id)))
  );

  SELECT * FROM sql_models.seed_model