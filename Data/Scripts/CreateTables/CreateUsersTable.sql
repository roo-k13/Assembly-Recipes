-- Drop the table if it already exists
IF OBJECT_ID('Users', 'U') IS NOT NULL
    DROP TABLE Users;
GO

-- Create the Users table
CREATE TABLE Users
(
    Id BIGINT IDENTITY(1, 1) NOT NULL,
    Username NVARCHAR(50) NOT NULL,
    Password NVARCHAR(100) NOT NULL,
    Role NVARCHAR(20) NOT NULL,
    CONSTRAINT PK_User PRIMARY KEY (Id),
    CONSTRAINT UK_User_Username UNIQUE (Username),
    CONSTRAINT CK_User_UsernameLength CHECK (LEN(Username) >= 1 AND LEN(Username) <= 50),
    CONSTRAINT CK_User_PasswordLength CHECK (LEN(Password) >= 1 AND LEN(Password) <= 100)
);