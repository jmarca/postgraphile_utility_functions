-- Verify postgraphile_utility_functions:trigger_add_audit_job on pg

BEGIN;

SELECT has_function_privilege('app_private.tg__add_audit_job()', 'execute');

ROLLBACK;
