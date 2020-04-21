-- Deploy postgraphile_utility_functions:check_passwords to pg
-- requires: postgraphile_schemas:schemas

BEGIN;

-- TODO.  Look into building zxcvbn as postgresql function

create function app_private.assert_valid_password(new_password text) returns void as $$
begin
  -- TODO: add better assertions!
  if length(new_password) < 8 then
    raise exception 'Password is too weak' using errcode = 'WEAKP';
  end if;
end;
$$ language plpgsql volatile;
comment on function app_private.assert_valid_password(text) is
  E'This function is a basic check that the password is not too weak.  At the moment it is just a check for more than 8 characters.  Needs improvement';

COMMIT;
