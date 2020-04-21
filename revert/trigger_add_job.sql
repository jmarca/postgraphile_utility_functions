-- Revert postgraphile_utility_functions:trigger_add_job from pg

BEGIN;

drop function app_private.tg__add_job();

COMMIT;
