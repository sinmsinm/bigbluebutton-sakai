CREATE TABLE BBB_MEETING (
    MEETING_ID CHAR(36) NOT NULL,
    NAME VARCHAR(255) NOT NULL,
    HOST_URL VARCHAR(255),
    SITE_ID VARCHAR(99) NOT NULL,
    ATTENDEE_PW VARCHAR(99) NOT NULL,
    MODERATOR_PW VARCHAR(99) NOT NULL,
    OWNER_ID VARCHAR(99) NOT NULL,
    START_DATE DATETIME,
    END_DATE DATETIME,
    RECORDING BOOL,
    RECORDING_DURATION INT,
    VOICE_BRIDGE INT,
    WAIT_FOR_MODERATOR BOOL,
    MULTIPLE_SESSIONS_ALLOWED BOOL,
    ONE_SESSION_PER_GROUP BOOL,
    PROPERTIES TEXT,
    DELETED INT DEFAULT 0 NOT NULL,
    CONSTRAINT bbb_meeting_pk PRIMARY KEY (MEETING_ID)
);

CREATE TABLE BBB_MEETING_PARTICIPANT (
    MEETING_ID CHAR(36) NOT NULL, 
    SELECTION_TYPE VARCHAR(99) NOT NULL, 
    SELECTION_ID VARCHAR(99), 
    ROLE VARCHAR(32) NOT NULL,
    CONSTRAINT bbb_meeting_participant_pk PRIMARY KEY (MEETING_ID,SELECTION_TYPE,SELECTION_ID)
);
