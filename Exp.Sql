CREATE TABLE class(
    id VARCHAR(3),
    name CHAR(10)
);

INSERT INTO class VALUES
('a0','John'),
('a1','Dali');

SELECT * FROM class;

SET autocommit=0;

START TRANSACTION;

INSERT INTO class VALUES
('a2','kiran');

SELECT * FROM class;

SAVEPOINT class1;

INSERT INTO class VALUES
('a3','Sharon');

SELECT * FROM class;

SAVEPOINT class2;

ROLLBACK TO class1;

SELECT * FROM class;

COMMIT;
