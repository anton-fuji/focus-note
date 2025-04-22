DROP TABLE IF EXISTS records;
DROP TABLE IF EXISTS categories;
DROP TABLE IF EXISTS users;

-- users テーブル
CREATE TABLE users (
    id CHAR(36) PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    password_hash TEXT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- categories テーブル
CREATE TABLE categories (
    id CHAR(36) PRIMARY KEY,
    user_id CHAR(36),
    category VARCHAR(100) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
);

-- records テーブル
CREATE TABLE records (
    id CHAR(36) PRIMARY KEY,
    user_id CHAR(36),
    category_id CHAR(36),
    duration INT NOT NULL,
    date DATE NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE,
    FOREIGN KEY (category_id) REFERENCES categories(id) ON DELETE SET NULL
);
