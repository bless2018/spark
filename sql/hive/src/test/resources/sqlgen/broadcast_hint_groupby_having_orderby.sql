-- This file is automatically generated by LogicalPlanToSQLSuite.
SELECT /*+ MAPJOIN(parquet_t0) */ *
FROM parquet_t0
WHERE id > 0
GROUP BY id
HAVING count(*) > 0
ORDER BY id
--------------------------------------------------------------------------------
SELECT `gen_attr_0` AS `id` FROM (SELECT /*+ MAPJOIN(parquet_t0) */ `gen_attr_0` FROM (SELECT `gen_attr_0`, count(1) AS `gen_attr_1` FROM (SELECT `id` AS `gen_attr_0` FROM `default`.`parquet_t0`) AS gen_subquery_0 WHERE (`gen_attr_0` > CAST(0 AS BIGINT)) GROUP BY `gen_attr_0` HAVING (`gen_attr_1` > CAST(0 AS BIGINT))) AS gen_subquery_1 ORDER BY `gen_attr_0` ASC NULLS FIRST) AS parquet_t0
