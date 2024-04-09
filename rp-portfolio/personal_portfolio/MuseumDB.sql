CREATE DATABASE ChildMuseum;

USE ChildMuseum;

CREATE TABLE Exhibit (
    ExhibitID INT PRIMARY KEY,
    ExhibitName VARCHAR(100),
    Location VARCHAR(100)
);

CREATE TABLE Activities (
    ActivityID INT PRIMARY KEY,
    ActivityName VARCHAR(100),
    Category VARCHAR(50),
    Subcategory VARCHAR(100),
    Description TEXT
);

CREATE TABLE Users(
    UserID INT PRIMARY KEY,
    Username VARCHAR(100),
    Email VARCHAR(100),
    Password VARCHAR(100)
);

CREATE TABLE Children (
    ChildID INT PRIMARY KEY,
    ChildName VARCHAR(100),
    Age INT,
    ParentUserID INT,
    FOREIGN KEY (ParentUserID) REFERENCES Users(UserID)
);

CREATE TABLE TypeOfPlay (
    TypeID INT PRIMARY KEY,
    TypeName VARCHAR(100),
    Description TEXT
);

CREATE TABLE ChildInteraction(
    InteractionID INT PRIMARY KEY,
    ChildID INT,
    ExhibitID INT,
    ActivityID INT,
    InteractionDate DATE,
    InteractionTime TIME,
    DurationMinutes INT,
    FOREIGN KEY (ChildID) REFERENCES Children(ChildID),
    FOREIGN KEY (ExhibitID)REFERENCES Exhibit(ExhibitID),
    FOREIGN KEY (ActivityID) REFERENCES Activities(ActivityID)
);

CREATE TABLE TimeStamp(
    TimeStampID INT PRIMARY KEY,
    CurrentTime TIMESTAMP,
    DateTime DATETIME,
    UserID INT,
    ChildID INT,
    ExhibitID INT,
    FOREIGN KEY (UserID) REFERENCES Users(UserID),
    FOREIGN KEY (ChildID) REFERENCES Children(ChildID),
    FOREIGN KEY (ExhibitID) REFERENCES Exhibit(ExhibitID)
);

INSERT INTO Exhibit (ExhibitID, ExhibitName, Location)
VALUES
    (0, 'Art Smart', 'Level 2'),
    (1, 'Big John', 'Level 3'),
    (2, 'Central Bank', 'Level 2 (Safety Village)'),
    (3, 'Engineers Workshop', 'Level 2'),
    (4, 'Farm', 'Level 2'),
    (5, 'Firehouse', 'Level 2 (Safety Village)'),
    (6, 'Global Cafe', 'Level 1'),
    (7, 'Ice Cream Parlor', 'Level 2 (Safety Village)'),
    (8, 'KidsPort', 'Level 1'),
    (9, 'Light Cloud', 'Level 1'),
    (10, 'Pizza Place', 'Level 2 (Safety Village)'),
    (11, 'Publix', 'Level 2 (Safety Village)'),
    (12, 'St. Josephs Children Hospital', 'Level 2 (Safety Village)'),
    (13, 'Tugboats Tots', 'Level 1'),
    (14, 'Twinkle Stars Theater', 'Level 2'),
    (15, 'Vet Clinic', 'Level 2 (Safety Village)'),
    (16, 'Water''s Journey', 'Level 2');

INSERT INTO Activities (ActivityID, ActivityName, Category, Subcategory, Description)
VALUES
    (1, 'Make Me a Pizza', 'Physical', 'Spreading food on pizza', 'By spreading food on pizza, children engage in fine motor skills development.'),
    (2, 'Shall We Dance?', 'Physical', 'Dancing', 'Through dancing, children learn gross motor movement and body coordination.'),
    (3, 'Time to Draw!', 'Physical', 'Drawing', 'Drawing helps children develop fine motor skills and creative expression.'),
    (4, 'Who is faster?', 'Physical', 'Racing', 'Engaging in races helps children develop logic and physical coordination.'),
    (5, 'At the Races', 'Physical', 'Racing', 'Participating in races aids in prediction skills and physical activity.'),
    (6, 'Stop that Ball!', 'Physical', 'Moving', 'Playing games like "Stop that Ball!" helps in gross motor skills and coordination.'),
    (7, 'Lego Activity', 'Physical', 'Building Lego', 'Playing with Legos promotes fine motor skills and creativity.'),
    (8, 'Where will it go?', 'Physical', 'Drawing', 'Drawing activities like "Where will it go?" develop spatial awareness and planning.'),
    (9, 'Piloting a Boat', 'Physical', 'Piloting a boat', 'Practicing boat piloting enhances motor skills and spatial awareness.'),

    (10, 'I’m Here to Help', 'Social-emotional', 'Morality', 'Engaging in moral activities like "I’m Here to Help" encourages empathy and cooperation.'),
    (11, 'Kaleidoscope', 'Social-emotional', 'Theory of mind', 'Activities like "Kaleidoscope" foster theory of mind understanding and perspective taking.'),
    (12, 'Counting Quickly', 'Social-emotional', 'Sharing', 'Counting activities promote sharing and cooperative behavior.'),
    (13, 'Lego Activity', 'Social-emotional', 'Egocentrism', 'Playing with Legos helps children understand egocentrism and social interaction.'),
    (14, 'Twinkle Star Theater', 'Social-emotional', 'Acting', 'Participating in theater activities like "Twinkle Star Theater" fosters creativity and social skills.'),

    (15, 'Eating the Rainbow', 'Sensory', 'Food', 'Exploring different foods helps children develop sensory experiences and dietary awareness.'),
    (16, 'Kaleidoscope', 'Sensory', 'Colors', 'Using a kaleidoscope promotes sensory exploration of colors and patterns.'),
    (17, 'Time to Draw!', 'Sensory', 'Drawing', 'Drawing activities provide sensory input and encourage creativity.'),
    (18, 'Ahoy, There!', 'Sensory', 'Vision-size constancy', 'Engaging in activities like "Ahoy, There!" develops visual perception and size constancy.'),

    (19, 'Bilingual Activity', 'Cognitive', 'Foreign language', 'Participating in bilingual activities helps in language acquisition and cognitive flexibility.'),
    (20, 'Nutrition', 'Cognitive', 'Sorting into categories', 'Sorting foods into categories aids in cognitive development and dietary awareness.'),
    (21, 'Money', 'Cognitive', 'Math/counting', 'Engaging in activities involving money promotes math skills and financial literacy.'),
    (22, 'Sorting', 'Cognitive', 'Sorting by size', 'Sorting objects by size enhances cognitive skills and categorization abilities.'),
    (23, 'Bones', 'Cognitive', 'Symbolic play', 'Engaging in symbolic play with bones promotes imagination and understanding of abstract concepts.'),
    (24, 'Eating the Rainbow', 'Cognitive', 'Food', 'Exploring different foods promotes sensory experiences and dietary awareness.'),
    (25, 'Going to the Doctor', 'Cognitive', 'Mapping', 'Role-playing activities like "Going to the Doctor" enhance spatial awareness and social understanding.'),
    (26, 'Make Me a Pizza', 'Cognitive', 'Math/counting', 'Engaging in pizza-making activities involves math skills and counting.'),
    (27, 'Advanced Pizza Making', 'Cognitive', 'Advanced math', 'Activities like "Advanced Pizza Making" develop more complex math skills and problem-solving.'),
    (28, 'Order up!', 'Cognitive', 'Memory', 'Memory games like "Order up!" enhance cognitive skills and recall abilities.'),
    (29, 'Planning a Party', 'Cognitive', 'Planning skills', 'Planning activities like "Planning a Party" develop organizational skills and foresight.'),
    (30, 'Fire Fighter!', 'Cognitive', 'Symbolic play', 'Engaging in symbolic play as a firefighter promotes imagination and problem-solving.'),
    (31, 'Kaleidoscope', 'Cognitive', 'Theory of mind', 'Activities like "Kaleidoscope" foster theory of mind understanding and perspective taking.'),
    (32, 'Counting Quickly', 'Cognitive', 'Counting', 'Counting activities promote numeracy and cognitive development.'),
    (33, 'How the Mind Wanders', 'Cognitive', 'Memory', 'Activities like "How the Mind Wanders" enhance memory and attention abilities.'),
    (34, 'Time to Draw!', 'Cognitive', 'Representation', 'Drawing activities promote creativity and visual-spatial skills.'),

    (35, 'Bilingual Activity', 'Communication', 'Foreign language', 'Engaging in bilingual activities helps in language acquisition and cultural understanding.'),
    (36, 'Letters', 'Communication', 'Recognizing letters', 'Letter recognition activities promote literacy skills and phonemic awareness.'),
    (37, 'The Case of the Missing Letter', 'Communication', 'Word completion', 'Word completion activities enhance vocabulary and language comprehension.'),
    (38, 'Surely You’re Joking', 'Communication', 'Metaphor', 'Engaging in metaphorical expressions promotes linguistic creativity and understanding.');

INSERT INTO TypeOfPlay (TypeID, TypeName, Description)
VALUES
    (1, 'Physical', 'Activities that involve physical movement and coordination.'),
    (2, 'Social-emotional', 'Activities that promote social interaction, empathy, and emotional development.'),
    (3, 'Sensory', 'Activities that engage the senses such as touch, sight, smell, and taste.'),
    (4, 'Cognitive', 'Activities that stimulate cognitive development including problem-solving, memory, and reasoning.'),
    (5, 'Communication', 'Activities that focus on language development, including speaking, listening, and understanding.');

INSERT INTO Users (UserID, Username, Email, Password)
VALUES
    (1, 'john_doe', 'john@example.com', 'password123'),
    (2, 'jane_smith', 'jane@example.com', 'letmein'),
    (3, 'alex_carter', 'alex@example.com', 'securepass'),
    (4, 'emily_jones', 'emily@example.com', 'p@ssw0rd'),
    (5, 'mike_wilson', 'mike@example.com', '123456'),
    (6, 'sarah_brown', 'sarah@example.com', 'abc123'),
    (7, 'david_clark', 'david@example.com', 'password456'),
    (8, 'laura_taylor', 'laura@example.com', 'ilovecats'),
    (9, 'chris_evans', 'chris@example.com', 'captainamerica'),
    (10, 'amanda_miller', 'amanda@example.com', 'qwerty');

INSERT INTO Children (ChildID, ChildName, Age, ParentUserID)
VALUES
    (1, 'Emma', 5, 1), -- ParentUserID references UserID from the Users table
    (2, 'Noah', 4, 2),
    (3, 'Olivia', 6, 3),
    (4, 'Liam', 5, 4),
    (5, 'Ava', 4, 5),
    (6, 'William', 6, 6),
    (7, 'Sophia', 5, 7),
    (8, 'James', 4, 8),
    (9, 'Isabella', 6, 9),
    (10, 'Benjamin', 5, 10);

INSERT INTO ChildInteraction (InteractionID, ChildID, ExhibitID, ActivityID, InteractionDate, InteractionTime, DurationMinutes)
VALUES
    (1, 1, 1, 1, '2024-03-19', '09:30:00', 30),
    (2, 2, 3, 5, '2024-03-19', '10:00:00', 45),
    (3, 3, 6, 10, '2024-03-19', '11:00:00', 20),
    (4, 4, 10, 15, '2024-03-19', '11:30:00', 25),
    (5, 5, 14, 20, '2024-03-19', '12:00:00', 40),
    (6, 6, 16, 25, '2024-03-19', '13:00:00', 35),
    (7, 7, 2, 30, '2024-03-19', '13:30:00', 15),
    (8, 8, 5, 35, '2024-03-19', '14:00:00', 50),
    (9, 9, 9, 38, '2024-03-19', '14:30:00', 30),
    (10, 10, 12, 22, '2024-03-19', '15:00:00', 60);

INSERT INTO TimeStamp(TimeStampID, CurrentTime, DateTime, UserID, ChildID, ExhibitID)
VALUES
    (1, NOW(), NOW(), 1, 1, 1),
    (2, NOW(), NOW(), 2, 2, 2),
    (3, NOW(), NOW(), 3, 3, 3),
    (4, NOW(), NOW(), 4, 4, 4);



