-- Verify postgraphile_utility_functions:trigger_graphql_subscription on pg

BEGIN;

SET SEARCH_PATH TO app_public,public;
SELECT pg_catalog.has_function_privilege('tg__graphql_subscription()','execute');

ROLLBACK;
