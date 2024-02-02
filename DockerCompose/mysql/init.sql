USE my_db_wahib;

CREATE TABLE IF NOT EXISTS student (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(40),
    roll_number INT,
    class VARCHAR(16)
);

CREATE TABLE IF NOT EXISTS teacher (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(40),
    subject VARCHAR(40),
    class VARCHAR(16)
);

-- Insert data if needed
-- INSERT INTO student (name, roll_number, class) VALUES ('John Doe', 101, 'A');
-- INSERT INTO teacher (name, subject, class) VALUES ('Mr. Smith', 'Math', 'A');
