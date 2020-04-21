-- Verify postgraphile_utility_functions:trigger_timestamps on pg

BEGIN;

SELECT has_function_privilege('app_private.tg__timestamps()', 'execute');

ROLLBACK;
