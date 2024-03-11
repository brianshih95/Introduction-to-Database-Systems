-- Table: public.Parties_involved

-- DROP TABLE IF EXISTS public."Parties_involved";

CREATE TABLE IF NOT EXISTS public."Parties_involved"
(
    "Date" text COLLATE pg_catalog."default" NOT NULL,
    "Location" text COLLATE pg_catalog."default" NOT NULL,
    "Parties involved No." text COLLATE pg_catalog."default" NOT NULL,
    "Parties involved - Car type (all)" text COLLATE pg_catalog."default",
    "Parties involved - Car type (small)" text COLLATE pg_catalog."default",
    "Parties involved - gender" text COLLATE pg_catalog."default",
    "Parties involved - age" text COLLATE pg_catalog."default",
    "Protective equipment" text COLLATE pg_catalog."default",
    "Digital device" text COLLATE pg_catalog."default",
    "Parties involved - action type (all)" text COLLATE pg_catalog."default",
    "Parties involved - action type (small)" text COLLATE pg_catalog."default",
    "Crash vehicle type" text COLLATE pg_catalog."default",
    "Crash vehicle place" text COLLATE pg_catalog."default",
    "Crash vehicle place (small)" text COLLATE pg_catalog."default",
    "Crash vehicle place (other)" text COLLATE pg_catalog."default",
    "Cause judgement" text COLLATE pg_catalog."default",
    "Cause judgement - reason" text COLLATE pg_catalog."default",
    "Hit-and-run" text COLLATE pg_catalog."default",
    CONSTRAINT "Parties_involved_pkey" PRIMARY KEY ("Date", "Location", "Parties involved No.")
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Parties_involved"
    OWNER to postgres;