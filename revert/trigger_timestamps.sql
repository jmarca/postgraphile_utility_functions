-- Revert postgraphile_utility_functions:trigger_timestamps from pg

BEGIN;

drop function app_private.tg__timestamps();

COMMIT;
