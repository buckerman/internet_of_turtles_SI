INSERT INTO users (id, name, email, password_digest, sex, description, occupation, institution, created_at, updated_at, admin) VALUES (1, 'Arthur', 'arthur.bucker@hotmail.com', '$2a$10$LhJJZXzRuJMch8woYeNhmOxtPLdS8m7d.fGrFMhsYzoLZnBs1Tc/K', 'Male', ':)
', 'student', 'USP', '2019-10-29 17:12:19.933141', '2019-10-31 03:25:34.174606', null);
INSERT INTO users (id, name, email, password_digest, sex, description, occupation, institution, created_at, updated_at, admin) VALUES (2, 'xxx', 'xxx@xxx.com', '$2a$12$hp.htbIwwvS9aI0VRW83jekLC4RpX6UiP6fCVuXoY0ftFVJNXPAoC', 'Male', 'xxx', 'xxx', 'xxx', '2019-10-31 03:24:48.824052', '2019-10-31 03:24:48.824052', null);

INSERT INTO turtles (id, name, sex, species, fixation_date, birthday, description, created_at, updated_at, user_id) VALUES (1, 'lala', 'Male', 'Green turtle', '2019-10-29 17:13:00', '2019-10-29 17:13:00', '', '2019-10-29 17:13:09.040497', '2019-10-29 17:13:09.040497', 1);
INSERT INTO turtles (id, name, sex, species, fixation_date, birthday, description, created_at, updated_at, user_id) VALUES (2, 'Ula', 'Female', 'Loggerhead', '2019-11-03 01:25:00', '2019-11-03 01:25:00', 'feliz', '2019-11-03 01:25:58.521283', '2019-11-03 01:25:58.521283', 2);

INSERT INTO turtle_data (id, turtle_id, temperature, light, depth, latitude, longitude, created_at, updated_at) VALUES (1, 1, 10.2, 192.2, 10.4, 23, 46, '2019-10-29 17:39:34.124705', '2019-10-29 17:39:34.124705');
INSERT INTO turtle_data (id, turtle_id, temperature, light, depth, latitude, longitude, created_at, updated_at) VALUES (2, 1, 20.2, 93.2, 10, 23, 43, '2019-10-29 17:45:30.616865', '2019-10-29 17:45:30.616865');
INSERT INTO turtle_data (id, turtle_id, temperature, light, depth, latitude, longitude, created_at, updated_at) VALUES (3, 1, 24.2, 90.2, 15, -23, -43, '2019-11-01 20:17:30.932331', '2019-11-01 20:17:30.932331');
INSERT INTO turtle_data (id, turtle_id, temperature, light, depth, latitude, longitude, created_at, updated_at) VALUES (4, 2, 23.1, 33.2, 2, -10.5382, -32.29525, '2019-11-03 01:27:18.577363', '2019-11-03 01:27:18.577363');
INSERT INTO turtle_data (id, turtle_id, temperature, light, depth, latitude, longitude, created_at, updated_at) VALUES (5, 2, 16.3, 124.2, 2.4, -11.053, -30.1, '2019-11-03 01:27:51.763893', '2019-11-03 01:27:51.763893');
INSERT INTO turtle_data (id, turtle_id, temperature, light, depth, latitude, longitude, created_at, updated_at) VALUES (6, 2, 14.23, 90.12, 10.2, -12.205, -33.12, '2019-11-03 01:27:57.313535', '2019-11-03 01:28:35.130950');

INSERT INTO active_storage_attachments (id, name, record_type, record_id, blob_id, created_at) VALUES (4, 'image', 'User', 1, 4, '2019-10-31 03:25:34.171668');
INSERT INTO active_storage_blobs (id, key, filename, content_type, metadata, byte_size, checksum, created_at) VALUES (1, 'ih7lpy7r7co2vdql94qzqavr7y0i', 'eu.jpg', 'image/jpeg', '{"identified":true,"analyzed":true}', 193744, 'BNgrTtkdERSzmPNagGMv2Q==', '2019-10-29 01:41:07.641672');
INSERT INTO active_storage_blobs (id, key, filename, content_type, metadata, byte_size, checksum, created_at) VALUES (4, 'xwbuuwov4xfxs29o35hh3j4g1bl0', 'eu.jpg', 'image/jpeg', '{"identified":true,"analyzed":true}', 193744, 'BNgrTtkdERSzmPNagGMv2Q==', '2019-10-31 03:25:34.166245');
