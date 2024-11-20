MODEL (
    name sql_models.jinja_macro,
    kind view
);

JINJA_QUERY_BEGIN;

SELECT 
{{ alias('invoice_id', 'PRODUCT_INVOICE_ID')}} 
FROM 
sql_models.external_model

JINJA_END;
