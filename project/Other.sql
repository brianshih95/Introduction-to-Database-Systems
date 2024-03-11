-- Table: public.Other

-- DROP TABLE IF EXISTS public."Other";

CREATE TABLE IF NOT EXISTS public."Other"
(
    "Date" text COLLATE pg_catalog."default" NOT NULL,
    "Location" text COLLATE pg_catalog."default" NOT NULL,
    "Handling unit name" text COLLATE pg_catalog."default",
    "Longitude" text COLLATE pg_catalog."default",
    "Latitude" text COLLATE pg_catalog."default",
    CONSTRAINT "Other_pkey" PRIMARY KEY ("Date", "Location")
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Other"
    OWNER to postgres;
-- Index: l-l

-- DROP INDEX IF EXISTS public."l-l";

CREATE INDEX IF NOT EXISTS "l-l"
    ON public.Other USING btree
    (Longitude ASC NULLS LAST, Latitude ASC NULLS LAST)
    TABLESPACE pg_default;