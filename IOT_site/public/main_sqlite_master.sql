INSERT INTO sqlite_master (type, name, tbl_name, rootpage, sql) VALUES ('table', 'schema_migrations', 'schema_migrations', 2, 'CREATE TABLE "schema_migrations" ("version" varchar NOT NULL PRIMARY KEY)');
INSERT INTO sqlite_master (type, name, tbl_name, rootpage, sql) VALUES ('index', 'sqlite_autoindex_schema_migrations_1', 'schema_migrations', 3, null);
INSERT INTO sqlite_master (type, name, tbl_name, rootpage, sql) VALUES ('table', 'ar_internal_metadata', 'ar_internal_metadata', 4, 'CREATE TABLE "ar_internal_metadata" ("key" varchar NOT NULL PRIMARY KEY, "value" varchar, "created_at" datetime(6) NOT NULL, "updated_at" datetime(6) NOT NULL)');
INSERT INTO sqlite_master (type, name, tbl_name, rootpage, sql) VALUES ('index', 'sqlite_autoindex_ar_internal_metadata_1', 'ar_internal_metadata', 5, null);
INSERT INTO sqlite_master (type, name, tbl_name, rootpage, sql) VALUES ('table', 'sqlite_sequence', 'sqlite_sequence', 7, 'CREATE TABLE sqlite_sequence(name,seq)');
INSERT INTO sqlite_master (type, name, tbl_name, rootpage, sql) VALUES ('table', 'carts', 'carts', 16, 'CREATE TABLE "carts" ("id" integer PRIMARY KEY AUTOINCREMENT NOT NULL, "created_at" datetime(6) NOT NULL, "updated_at" datetime(6) NOT NULL)');
INSERT INTO sqlite_master (type, name, tbl_name, rootpage, sql) VALUES ('table', 'line_items', 'line_items', 17, 'CREATE TABLE "line_items" ("id" integer PRIMARY KEY AUTOINCREMENT NOT NULL, "product_id" integer NOT NULL, "cart_id" integer NOT NULL, "created_at" datetime(6) NOT NULL, "updated_at" datetime(6) NOT NULL, CONSTRAINT "fk_rails_11e15d5c6b"
FOREIGN KEY ("product_id")
  REFERENCES "products" ("id")
, CONSTRAINT "fk_rails_af645e8e5f"
FOREIGN KEY ("cart_id")
  REFERENCES "carts" ("id")
)');
INSERT INTO sqlite_master (type, name, tbl_name, rootpage, sql) VALUES ('index', 'index_line_items_on_product_id', 'line_items', 19, 'CREATE INDEX "index_line_items_on_product_id" ON "line_items" ("product_id")');
INSERT INTO sqlite_master (type, name, tbl_name, rootpage, sql) VALUES ('index', 'index_line_items_on_cart_id', 'line_items', 20, 'CREATE INDEX "index_line_items_on_cart_id" ON "line_items" ("cart_id")');
INSERT INTO sqlite_master (type, name, tbl_name, rootpage, sql) VALUES ('table', 'products', 'products', 21, 'CREATE TABLE "products" ("id" integer PRIMARY KEY AUTOINCREMENT NOT NULL, "created_at" datetime(6) NOT NULL, "updated_at" datetime(6) NOT NULL)');
INSERT INTO sqlite_master (type, name, tbl_name, rootpage, sql) VALUES ('table', 'turtles', 'turtles', 6, 'CREATE TABLE "turtles" ("id" integer NOT NULL PRIMARY KEY, "name" varchar DEFAULT NULL, "sex" varchar DEFAULT NULL, "species" varchar DEFAULT NULL, "fixation_date" datetime DEFAULT NULL, "birthday" datetime DEFAULT NULL, "description" text DEFAULT NULL, "created_at" datetime(6) NOT NULL, "updated_at" datetime(6) NOT NULL, "user_id" integer DEFAULT NULL, CONSTRAINT "fk_rails_286712db72"
FOREIGN KEY ("user_id")
  REFERENCES "users" ("id")
)');
INSERT INTO sqlite_master (type, name, tbl_name, rootpage, sql) VALUES ('index', 'index_turtles_on_user_id', 'turtles', 14, 'CREATE INDEX "index_turtles_on_user_id" ON "turtles" ("user_id")');
INSERT INTO sqlite_master (type, name, tbl_name, rootpage, sql) VALUES ('table', 'active_storage_blobs', 'active_storage_blobs', 13, 'CREATE TABLE "active_storage_blobs" ("id" integer PRIMARY KEY AUTOINCREMENT NOT NULL, "key" varchar NOT NULL, "filename" varchar NOT NULL, "content_type" varchar, "metadata" text, "byte_size" bigint NOT NULL, "checksum" varchar NOT NULL, "created_at" datetime NOT NULL)');
INSERT INTO sqlite_master (type, name, tbl_name, rootpage, sql) VALUES ('index', 'index_active_storage_blobs_on_key', 'active_storage_blobs', 18, 'CREATE UNIQUE INDEX "index_active_storage_blobs_on_key" ON "active_storage_blobs" ("key")');
INSERT INTO sqlite_master (type, name, tbl_name, rootpage, sql) VALUES ('table', 'active_storage_attachments', 'active_storage_attachments', 11, 'CREATE TABLE "active_storage_attachments" ("id" integer PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar NOT NULL, "record_type" varchar NOT NULL, "record_id" integer NOT NULL, "blob_id" integer NOT NULL, "created_at" datetime NOT NULL, CONSTRAINT "fk_rails_c3b3935057"
FOREIGN KEY ("blob_id")
  REFERENCES "active_storage_blobs" ("id")
)');
INSERT INTO sqlite_master (type, name, tbl_name, rootpage, sql) VALUES ('index', 'index_active_storage_attachments_on_blob_id', 'active_storage_attachments', 22, 'CREATE INDEX "index_active_storage_attachments_on_blob_id" ON "active_storage_attachments" ("blob_id")');
INSERT INTO sqlite_master (type, name, tbl_name, rootpage, sql) VALUES ('index', 'index_active_storage_attachments_uniqueness', 'active_storage_attachments', 24, 'CREATE UNIQUE INDEX "index_active_storage_attachments_uniqueness" ON "active_storage_attachments" ("record_type", "record_id", "name", "blob_id")');
INSERT INTO sqlite_master (type, name, tbl_name, rootpage, sql) VALUES ('table', 'users', 'users', 9, 'CREATE TABLE "users" ("id" integer NOT NULL PRIMARY KEY, "name" varchar DEFAULT NULL, "email" varchar DEFAULT NULL, "password_digest" varchar DEFAULT NULL, "sex" varchar DEFAULT NULL, "description" text DEFAULT NULL, "occupation" varchar DEFAULT NULL, "institution" varchar DEFAULT NULL, "created_at" datetime(6) NOT NULL, "updated_at" datetime(6) NOT NULL, "admin" boolean DEFAULT NULL)');
INSERT INTO sqlite_master (type, name, tbl_name, rootpage, sql) VALUES ('index', 'index_users_on_email', 'users', 26, 'CREATE UNIQUE INDEX "index_users_on_email" ON "users" ("email")');
INSERT INTO sqlite_master (type, name, tbl_name, rootpage, sql) VALUES ('table', 'data', 'data', 27, 'CREATE TABLE "data" ("id" integer PRIMARY KEY AUTOINCREMENT NOT NULL, "turtle_id" integer NOT NULL, "temperature" float, "light" float, "depth" float, "latitude" float, "longitude" float, "created_at" datetime(6) NOT NULL, "updated_at" datetime(6) NOT NULL, CONSTRAINT "fk_rails_fe25e24b04"
FOREIGN KEY ("turtle_id")
  REFERENCES "turtles" ("id")
)');
INSERT INTO sqlite_master (type, name, tbl_name, rootpage, sql) VALUES ('index', 'index_data_on_turtle_id', 'data', 25, 'CREATE INDEX "index_data_on_turtle_id" ON "data" ("turtle_id")');
INSERT INTO sqlite_master (type, name, tbl_name, rootpage, sql) VALUES ('table', 'turtle_data', 'turtle_data', 28, 'CREATE TABLE "turtle_data" ("id" integer PRIMARY KEY AUTOINCREMENT NOT NULL, "turtle_id" integer NOT NULL, "temperature" float, "light" float, "depth" float, "latitude" float, "longitude" float, "created_at" datetime(6) NOT NULL, "updated_at" datetime(6) NOT NULL, CONSTRAINT "fk_rails_db807fd11f"
FOREIGN KEY ("turtle_id")
  REFERENCES "turtles" ("id")
)');
INSERT INTO sqlite_master (type, name, tbl_name, rootpage, sql) VALUES ('index', 'index_turtle_data_on_turtle_id', 'turtle_data', 30, 'CREATE INDEX "index_turtle_data_on_turtle_id" ON "turtle_data" ("turtle_id")');