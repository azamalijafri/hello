MODEL (
    name demo.mesh_macro,
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

-- SELECT * from demo.seed_model where id = @var_a
-- SELECT * from demo.seed_model where id = @VAR('var_a', null)
-- SELECT * from demo.seed_model where id=@inline_function(1,2)
-- SELECT * FROM demo.seed_model WHERE id in (@EACH([1,2,3], x -> x))
-- SELECT @IF(1 > 2, item_id, id) FROM demo.seed_model

-- clause operator
-- SELECT * from demo.seed_model @WHERE(1>2) id=1

SELECT * FROM demo.seed_model WHERE id = @multiply(1, 3)  