-- This file is automatically generated by LogicalPlanToSQLSuite.
SELECT * FROM (SELECT /*+ MAPJOIN(parquet_t0) */ EXPLODE(ARRAY(1,2,3)) FROM parquet_t0) T
--------------------------------------------------------------------------------
SELECT `gen_attr_0` AS `col` FROM (SELECT `gen_attr_0` FROM (SELECT /*+ MAPJOIN(parquet_t0) */ `gen_attr_0` FROM (SELECT `id` AS `gen_attr_1` FROM `default`.`parquet_t0`) AS gen_subquery_0 LATERAL VIEW explode(array(1, 2, 3)) gen_subquery_1 AS `gen_attr_0`) AS T) AS T
