-- Revert postgraphile_utility_functions:check_passwords from pg

BEGIN;

drop function app_private.assert_valid_password(text);

COMMIT;
