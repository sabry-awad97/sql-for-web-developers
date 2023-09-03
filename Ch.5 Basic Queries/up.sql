CREATE TABLE
    transactions (
        id INTEGER PRIMARY KEY,
        user_id INTEGER NOT NULL,
        recipient_id INTEGER,
        sender_id INTEGER,
        note TEXT,
        amount INTEGER,
        was_successful BOOLEAN
    );

INSERT INTO
    transactions (
        user_id,
        sender_id,
        note,
        amount,
        was_successful
    )
VALUES (
        2,
        10,
        "Happy Birthday! Gramma loves you!",
        20.00,
        true
    );

INSERT INTO
    transactions (
        user_id,
        sender_id,
        note,
        amount,
        was_successful
    )
VALUES (
        2,
        10,
        "Happy Birthday from Gramma!",
        20.00,
        true
    );

INSERT INTO
    transactions (
        user_id,
        sender_id,
        note,
        amount,
        was_successful
    )
VALUES (
        2,
        2,
        "Car problems",
        256.21,
        true
    );

CREATE TABLE
    users (
        id INTEGER PRIMARY KEY,
        name TEXT NOT NULL,
        age INTEGER NOT NULL,
        country_code TEXT NOT NULL,
        username TEXT UNIQUE,
        password TEXT NOT NULL,
        is_admin BOOLEAN
    );

INSERT INTO
    users(
        id,
        name,
        age,
        country_code,
        username,
        password,
        is_admin
    )
VALUES (
        1,
        'David',
        34,
        'US',
        'DavidDev',
        'insertPractice',
        false
    );

INSERT INTO
    users(
        id,
        name,
        age,
        country_code,
        username,
        password,
        is_admin
    )
VALUES (
        2,
        'Samantha',
        29,
        'BR',
        'Sammy93',
        'addingRecords!',
        false
    );

INSERT INTO
    users(
        id,
        name,
        age,
        country_code,
        username,
        password,
        is_admin
    )
VALUES (
        3,
        'John',
        39,
        'CA',
        'Jjdev21',
        'welovebootdev',
        false
    );

INSERT INTO
    users(
        id,
        name,
        age,
        country_code,
        username,
        password,
        is_admin
    )
VALUES (
        4,
        'Ram',
        42,
        'IN',
        'Ram11c',
        'thisSQLcourserocks',
        false
    );

INSERT INTO
    users(
        id,
        name,
        age,
        country_code,
        username,
        password,
        is_admin
    )
VALUES (
        5,
        'Hunter',
        30,
        'US',
        'Hdev92',
        'backendDev',
        false
    );

INSERT INTO
    users(
        id,
        name,
        age,
        country_code,
        username,
        password,
        is_admin
    )
VALUES (
        6,
        'Allan',
        27,
        'US',
        'Alires',
        'iLoveB00tdev',
        true
    );

INSERT INTO
    users(
        name,
        age,
        country_code,
        username,
        password,
        is_admin
    )
VALUES (
        'Lance',
        20,
        'US',
        'LanChr',
        'b00tdevisbest',
        false
    );

INSERT INTO
    users(
        name,
        age,
        country_code,
        username,
        password,
        is_admin
    )
VALUES (
        'Tiffany',
        28,
        'US',
        'Tifferoon',
        'autoincrement',
        true
    );

INSERT INTO
    users(
        name,
        age,
        country_code,
        username,
        password,
        is_admin
    )
VALUES (
        'Lane',
        27,
        'US',
        'wagslane',
        'update_me',
        false
    );