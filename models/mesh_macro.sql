MODEL (
    name sql_models.mesh_macro,
    kind VIEW
);

-- inline variables
-- @DEF(inline_var, 'value');

-- inline functions
@DEF(
    inline_function, 
    (x,y) -> x + y
);

-- @prehook(1,2);

-- SELECT * from sql_models.seed_model where id = @var_a
-- SELECT * from sql_models.seed_model where id = @VAR('var_a', null)
-- SELECT * from sql_models.seed_model where id=@inline_function(1,2)
-- SELECT * FROM sql_models.seed_model WHERE id in (@EACH([1,2,3], x -> x))
-- SELECT @IF(1 > 2, item_id, id) FROM sql_models.seed_model

-- clause operator
-- SELECT * from sql_models.seed_model @WHERE(1>2) id=1

SELECT * FROM sql_models.seed_model WHERE id = @multiply(1, 3)