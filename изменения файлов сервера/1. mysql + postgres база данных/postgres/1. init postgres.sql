create database "123";
create database accounts;
create database billing;
create database shard;



INSERT INTO public.account (id, identifier, title, password, external_id, salt, last_shard_name, access_level,
                            current_access_level, status, flags, reseacher, creation_time, last_ip, is_last_login_from_pccafe,
                            last_game_start, last_game_end, last_avatar_id, subscribe_until, subscribe_key, subscribe_repay,
                            subscription_total_sec, bugs_counter, bugs_period, bugs_karma, ref_owner_bonus_total_sec, ref_owner_bonus_processed_sec, alt_identifier,
                            access_mode, time_played, time_rested, refer_owner_id, max_avatar_level_f2p, max_avatar_level_p2p, hardware, level_cap)
VALUES (1, 'test', 'test', 'bc52727ba742b9a599437761cc233b304ad11500', null, 'c3a8cc7deccd4b6c2f70b478f12fff0e', 'Allods Test 7.0', 'Master', 'Master',
        1, 0, false, '2025-02-22 14:23:21.684000 +00:00', '127.0.0.1', false, '2025-03-10 10:30:00.278000 +00:00',
        '2025-03-09 19:42:10.759000 +00:00', 52, null, null, null, 0, 0, 0, 1, 0, 0, null, 'UNLIMITED', 0, 0, null, 70, 0, 'V=01&M=02&N=01&Z=5B68DB25E7965F00C74C8F3F3242E728,V=01&M=02&N=01&Z=A7B3B24827FB617C007B31D329AB6D86', true);



