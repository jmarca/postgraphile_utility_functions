-- Verify postgraphile_utility_functions:check_passwords on pg

BEGIN;

SELECT has_function_privilege('app_private.assert_valid_password(text)', 'execute');

ROLLBACK;
