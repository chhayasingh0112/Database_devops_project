CREATE DATABASE team_management_app;
USE team_management_app;

-- Users table
CREATE TABLE users (
  user_id INT AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(255) NOT NULL
);

-- Teams table
CREATE TABLE teams (
  team_id INT AUTO_INCREMENT PRIMARY KEY,
  team_name VARCHAR(255) NOT NULL
);

-- Relationships table
CREATE TABLE relationships (
  relationship_id INT AUTO_INCREMENT PRIMARY KEY,
  user_id INT,
  team_id INT,
  FOREIGN KEY (user_id) REFERENCES users(user_id),
  FOREIGN KEY (team_id) REFERENCES teams(team_id)
);