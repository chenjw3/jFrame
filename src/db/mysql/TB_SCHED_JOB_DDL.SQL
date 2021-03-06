CREATE TABLE TB_SCHED_JOB
(
	JOB_ID			CHAR(32)		NOT NULL,
	JOB_NAME				VARCHAR(100)	NOT NULL,
	JOB_CLASS				VARCHAR(200)	NOT NULL,
	JOB_TRIGGER_TYPE		CHAR(1)			DEFAULT '1',
	JOB_TRIGGER_VALUE		VARCHAR(100),
	JOB_LATEST_RUN_TIME		TIMESTAMP,
	JOB_NEXT_RUN_TIME		TIMESTAMP,
	JOB_PARAM				BLOB,
	JOB_STATUS				CHAR(1)			DEFAULT '0',
	ON_SUCCESS				VARCHAR(200),
	ON_SUCCESS_DELAY		INTEGER,
	ON_FAILED				VARCHAR(200),
	ON_FAILED_DELAY			INTEGER,
	ON_SUCCESS_WITH_ERROR   VARCHAR(200),
	ON_SUCCESS_WITH_ERROR_DELAY INTEGER,
	CONSTRAINT PK_TB_SCHED_JOB PRIMARY KEY (SCHED_JOB_ID)
);