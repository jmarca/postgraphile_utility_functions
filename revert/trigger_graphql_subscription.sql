-- Revert postgraphile_utility_functions:trigger_graphql_subscription from pg

BEGIN;

SET SEARCH_PATH TO app_public,public;


DROP FUNCTION tg__graphql_subscription();

COMMIT;
