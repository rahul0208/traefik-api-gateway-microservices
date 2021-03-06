CREATE TABLE GUEST (
  ID INTEGER GENERATED BY DEFAULT AS IDENTITY(START WITH 100, INCREMENT BY 1) PRIMARY KEY,
  FIRST_NAME VARCHAR(30),
  LAST_NAME  VARCHAR(50)
);
CREATE TABLE GUEST_BOOK (
  ID INTEGER GENERATED BY DEFAULT AS IDENTITY(START WITH 200, INCREMENT BY 1) PRIMARY KEY,
  NAME VARCHAR(30),
  CONTENT  VARCHAR(50),
  GUEST_ID INTEGER FOREIGN KEY REFERENCES GUEST(ID)
);