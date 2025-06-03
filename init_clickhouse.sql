CREATE TABLE IF NOT EXISTS MissedCalls
(
    id           String,                          -- Unique ID for the call
    dispnumber   String,                          -- Display number shown to the caller
    caller_id    String,                          -- Phone number of the caller
    type         String,                          -- Call type (e.g., IVR)
    start_time   DateTime,                        -- When the call started
    end_time     DateTime,                        -- When the call ended
    day          Int32,                           -- Day of the call
    month        Int32,                           -- Month of the call
    year         Int32,                           -- Year of the call
    hour         Int32,                           -- Hour of the call (24h format)
    min          Int32,                           -- Minute of the call
    sec          Int32,                           -- Second of the call
    entry_time   Int64,                           -- Epoch time of call event
    processed    Int32,                           -- 0 = unprocessed, 1 = processed
    created_at   DateTime,                        -- Record creation time
    updated_at   DateTime,                        -- Record last updated time
    company_id   Nullable(String),                -- ID of the associated company (nullable)
    time_stamp   Nullable(Int64),                 -- Optional: additional epoch timestamp (nullable)
    session      Nullable(String),                -- Optional session identifier (nullable)
    tags         Nullable(String)                 -- Optional tags or labels (nullable, TEXT mapped to String)
)
ENGINE = MergeTree
ORDER BY id;
