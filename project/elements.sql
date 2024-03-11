-- Table: public.Elements

-- DROP TABLE IF EXISTS public."Elements";

CREATE TABLE IF NOT EXISTS public."Elements"
(
    "Date" text COLLATE pg_catalog."default" NOT NULL,
    "Location" text COLLATE pg_catalog."default" NOT NULL,
    "Weather" text COLLATE pg_catalog."default",
    "Light" text COLLATE pg_catalog."default",
    CONSTRAINT "Elements_pkey" PRIMARY KEY ("Date", "Location")
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Elements"
    OWNER to postgres;