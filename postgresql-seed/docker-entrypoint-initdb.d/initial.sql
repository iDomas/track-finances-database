CREATE TABLE users (
	id BIGINT NOT NULL PRIMARY KEY,
    username VARCHAR NOT NULL,
    password VARCHAR NOT NULL
);

CREATE TABLE expenses (
	id BIGINT NOT NULL PRIMARY KEY,
    user_id BIGINT NOT NULL REFERENCES users(id),
    price DECIMAL NOT NULL,
    title VARCHAR NOT NULL,
    description VARCHAR
);