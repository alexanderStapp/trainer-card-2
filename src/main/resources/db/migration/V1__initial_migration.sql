CREATE TABLE addresses
(
    id      BIGINT AUTO_INCREMENT NOT NULL,
    street  VARCHAR(255)          NULL,
    city    VARCHAR(255)          NULL,
    zip     VARCHAR(255)          NULL,
    state   VARCHAR(255)          NULL,
    user_id BIGINT                NULL,
    CONSTRAINT pk_addresses PRIMARY KEY (id)
);

CREATE TABLE categories
(
    id   TINYINT      NOT NULL,
    name VARCHAR(255) NULL,
    CONSTRAINT pk_categories PRIMARY KEY (id)
);

CREATE TABLE products
(
    id            BIGINT AUTO_INCREMENT NOT NULL,
    name          VARCHAR(255)          NULL,
    `description` VARCHAR(255)          NULL,
    price         DECIMAL               NULL,
    category_id   TINYINT               NULL,
    CONSTRAINT pk_products PRIMARY KEY (id)
);

CREATE TABLE profiles
(
    id             BIGINT       NOT NULL,
    bio            VARCHAR(255) NULL,
    phone_number   VARCHAR(255) NULL,
    date_of_birth  date         NULL,
    loyalty_points INT          NULL,
    CONSTRAINT pk_profiles PRIMARY KEY (id)
);

CREATE TABLE users
(
    id       BIGINT AUTO_INCREMENT NOT NULL,
    username VARCHAR(255)          NULL,
    email    VARCHAR(255)          NULL,
    password VARCHAR(255)          NULL,
    CONSTRAINT pk_users PRIMARY KEY (id)
);

CREATE TABLE wishlist
(
    product_id BIGINT NOT NULL,
    user_id    BIGINT NOT NULL,
    CONSTRAINT pk_wishlist PRIMARY KEY (product_id, user_id)
);

ALTER TABLE addresses
    ADD CONSTRAINT FK_ADDRESSES_ON_USER FOREIGN KEY (user_id) REFERENCES users (id);

ALTER TABLE products
    ADD CONSTRAINT FK_PRODUCTS_ON_CATEGORY FOREIGN KEY (category_id) REFERENCES categories (id);

ALTER TABLE profiles
    ADD CONSTRAINT FK_PROFILES_ON_ID FOREIGN KEY (id) REFERENCES users (id);

ALTER TABLE wishlist
    ADD CONSTRAINT fk_wishlist_on_product FOREIGN KEY (product_id) REFERENCES products (id);

ALTER TABLE wishlist
    ADD CONSTRAINT fk_wishlist_on_user FOREIGN KEY (user_id) REFERENCES users (id);