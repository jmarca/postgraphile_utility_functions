-- Revert postgraphile_utility_functions:trigger_add_audit_job from pg

BEGIN;

drop function app_private.tg__add_audit_job();

COMMIT;
