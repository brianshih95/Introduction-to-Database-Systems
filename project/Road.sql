-- Table: public.Road

-- DROP TABLE IF EXISTS public."Road";

CREATE TABLE IF NOT EXISTS public."Road"
(
    "Date" text COLLATE pg_catalog."default" NOT NULL,
    "Location" text COLLATE pg_catalog."default" NOT NULL,
    "Road type" text COLLATE pg_catalog."default",
    "Speed" text COLLATE pg_catalog."default",
    "Road type (all)" text COLLATE pg_catalog."default",
    "Road type (small)" text COLLATE pg_catalog."default",
    "Accident place (road)" text COLLATE pg_catalog."default",
    "Accident place (small)" text COLLATE pg_catalog."default",
    "Road condition" text COLLATE pg_catalog."default",
    "Road condition (2)" text COLLATE pg_catalog."default",
    "Road condition (3)" text COLLATE pg_catalog."default",
    "Road barrier name" text COLLATE pg_catalog."default",
    "Road barrier (road)Road barrier (road)" text COLLATE pg_catalog."default",
    "Road barrier (sight)" text COLLATE pg_catalog."default",
    "Traffic signal type" text COLLATE pg_catalog."default",
    "Traffic signal action" text COLLATE pg_catalog."default",
    "Lane division" text COLLATE pg_catalog."default",
    "Lane division (small)" text COLLATE pg_catalog."default",
    "lane division (3)" text COLLATE pg_catalog."default",
    "Lane division (4)" text COLLATE pg_catalog."default",
    "Lane division (5)" text COLLATE pg_catalog."default",
    CONSTRAINT "Road_pkey" PRIMARY KEY ("Date", "Location")
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Road"
    OWNER to postgres;