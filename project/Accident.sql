-- Table: public.Accident

-- DROP TABLE IF EXISTS public."Accident";

CREATE TABLE IF NOT EXISTS public."Accident"
(
    "Date" text COLLATE pg_catalog."default" NOT NULL,
    "Location" text COLLATE pg_catalog."default" NOT NULL,
    "Accident type ( all )" text COLLATE pg_catalog."default",
    "Accident type" text COLLATE pg_catalog."default",
    "Main cause one" text COLLATE pg_catalog."default",
    "Accident main cause" text COLLATE pg_catalog."default",
    "Deaths and Injuries" text COLLATE pg_catalog."default",
    CONSTRAINT "Accident_pkey" PRIMARY KEY ("Date", "Location")
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Accident"
    OWNER to postgres;