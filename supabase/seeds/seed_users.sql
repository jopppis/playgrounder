-- password: aaaaaaaa
INSERT INTO auth.users
(instance_id, id, aud, "role", email, encrypted_password, email_confirmed_at, invited_at, confirmation_token, confirmation_sent_at, recovery_token, recovery_sent_at, email_change_token_new, email_change, email_change_sent_at, last_sign_in_at, raw_app_meta_data, raw_user_meta_data, is_super_admin, created_at, updated_at, phone, phone_confirmed_at, phone_change, phone_change_token, phone_change_sent_at, email_change_token_current, email_change_confirm_status, banned_until, reauthentication_token, reauthentication_sent_at, is_sso_user, deleted_at, is_anonymous)
VALUES('00000000-0000-0000-0000-000000000000'::uuid, 'c181f02d-861d-42fa-acbb-172f26535cda'::uuid, 'authenticated', 'authenticated', 'user@test.com', '$2a$10$ILThnVOd45tAZvShitnlP.WhuPu4CASDIII2v8nakoIX67M.Lt65O', '2025-02-27 09:07:16.280', NULL, '', NULL, '', NULL, '', '', NULL, '2025-02-27 09:07:16.284', '{"provider": "email", "providers": ["email"]}'::jsonb, '{"sub": "c181f02d-861d-42fa-acbb-172f26535cda", "email": "user@test.com", "email_verified": true, "phone_verified": false}'::jsonb, NULL, '2025-02-27 09:07:16.266', '2025-02-27 09:07:16.289', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false);

INSERT INTO auth.identities
(provider_id, user_id, identity_data, provider, last_sign_in_at, created_at, updated_at, id)
VALUES('c181f02d-861d-42fa-acbb-172f26535cda', 'c181f02d-861d-42fa-acbb-172f26535cda'::uuid, '{"sub": "c181f02d-861d-42fa-acbb-172f26535cda", "email": "user@test.com", "email_verified": false, "phone_verified": false}'::jsonb, 'email', '2025-02-27 09:07:16.277', '2025-02-27 09:07:16.277', '2025-02-27 09:07:16.277', 'e0b08ce4-9f0d-4932-9794-906db76632fc'::uuid);

INSERT INTO admin_users (user_id)
VALUES ('c181f02d-861d-42fa-acbb-172f26535cda'::uuid);
