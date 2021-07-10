-- Initialize the postgres database

-- Locks while a load is being performed
CREATE TABLE IF NOT EXISTS manifest (
    uuid        UUID PRIMARY KEY,       -- uuid for the manifest file name
    retry_ts    TIMESTAMP,              -- time to retry this load/check if it's stale
    retry_count INT DEFAULT 0,          -- number of times we've tried loading this manifest
    last_error  VARCHAR                 -- the last error on this load; NULL if in progress
);

-- Individual files from the pipeline
CREATE TABLE IF NOT EXISTS tsv (
    id              BIGSERIAL PRIMARY KEY,          -- a unique ID for this TSV
    tablename       VARCHAR,                        -- the table name we're loading into
    keyname         VARCHAR,                        -- the s3 key of the TSV
    tableversion    INT,                            -- the schema version for the table batch
    ts              TIMESTAMP,                      -- the time the SQS message was recieved
    manifest_uuid   UUID REFERENCES manifest(uuid)  -- if present, this TSV is in a manifest
);

-- Requested/executed force loads
CREATE TABLE IF NOT EXISTS force_load (
    id              BIGSERIAL PRIMARY KEY,          -- a unique ID for this force load
    tablename       VARCHAR,                        -- the table name we're loading into
    ts              TIMESTAMP,                      -- the time the force load was requested
    requester       VARCHAR,                        -- username who requested the force load
    started         TIMESTAMP                       -- time when the force load was started (null if unstarted)
);

CREATE TABLE IF NOT EXISTS last_load (
    tablename VARCHAR PRIMARY KEY,  -- the logs table we are tracking last loaded time on
    last_loaded TIMESTAMP           -- the last loaded time for that table in UTC
);
