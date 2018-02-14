
CREATE TABLE IDN_RESOURCE (
  ID                  INTEGER   AUTO_INCREMENT PRIMARY KEY NOT NULL,
  RESOURCE_ID         VARCHAR(255),
  RESOURCE_NAME       VARCHAR(255),
  TIME_CREATED        TIMESTAMP DEFAULT '0',
  TOKEN_ID            VARCHAR(255)                         NOT NULL,
  RESOUCE_OWNER_ID    VARCHAR(255),
  RESOURCE_SERVER_ID  VARCHAR(255),
  RESOURCE_OWNER_NAME VARCHAR(255),
  TENANT_ID           INTEGER
);

CREATE TABLE IDN_RESOURCE_META_DATA (
  ID                          INTEGER AUTO_INCREMENT PRIMARY KEY NOT NULL,
  FK_RESOURCE_ID_META_DATA    INTEGER,
  PROPERTY_KEY                VARCHAR(255),
  PROPERTY_VALUE              VARCHAR(255),
  CONSTRAINT FK_RESOURCE_META_DATA FOREIGN KEY (FK_RESOURCE_ID_META_DATA ) REFERENCES IDN_RESOURCE (ID)
  ON DELETE CASCADE
);

CREATE TABLE IDN_RESOURCE_SCOPE
(
    ID INTEGER AUTO_INCREMENT  PRIMARY KEY NOT NULL,
    FK_RESOURCE_ID_SCOPE       INTEGER,
    SCOPE_NAME                 VARCHAR(255),
	CONSTRAINT FK_IDN_RESOURCE FOREIGN KEY (FK_RESOURCE_ID_SCOPE) REFERENCES IDN_RESOURCE (ID)
);


DROP TABLE IDN_RESOURCE;
DROP TABLE IDN_RESOURCE_META_DATA;
DROP TABLE IDN_SCOPE;


