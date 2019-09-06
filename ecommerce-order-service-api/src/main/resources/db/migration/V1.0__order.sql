CREATE TABLE ORDERS
(
  ID           VARCHAR(32) NOT NULL,
  JSON_CONTENT JSON        NOT NULL,
  STATUS       VARCHAR(10) GENERATED ALWAYS AS (JSON_CONTENT ->> '$.status') VIRTUAL,
  TOTAL_PRICE  DECIMAL GENERATED ALWAYS AS (JSON_CONTENT ->> '$.totalPrice') VIRTUAL,
  CREATED_AT   BIGINT GENERATED ALWAYS AS (JSON_CONTENT ->> '$.createdAt') VIRTUAL,
  PRIMARY KEY (ID)
) CHARACTER SET utf8mb4
  COLLATE utf8mb4_unicode_ci;