CREATE extension IF NOT EXISTS "uuid-ossp";

CREATE user biling WITH PASSWORD 'secret';

CREATE DATABASE biling;

GRANT ALL PRIVILEGES ON DATABASE biling TO biling;