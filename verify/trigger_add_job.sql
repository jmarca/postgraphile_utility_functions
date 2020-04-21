-- Verify postgraphile_utility_functions:trigger_add_job on pg

BEGIN;

SELECT has_function_privilege('app_private.tg__add_job()', 'execute');

ROLLBACK;
