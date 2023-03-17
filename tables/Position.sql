-- Table: KinopoiskAnalog.Position

-- DROP TABLE IF EXISTS "KinopoiskAnalog"."Position";

CREATE TABLE IF NOT EXISTS "KinopoiskAnalog"."Position"
(
    id bigint NOT NULL,
    name text COLLATE pg_catalog."default" NOT NULL,
    description text COLLATE pg_catalog."default",
    person_id bigint,
    CONSTRAINT "Position_pkey" PRIMARY KEY (id),
    CONSTRAINT person_fkey FOREIGN KEY (person_id)
        REFERENCES "KinopoiskAnalog"."Person" (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS "KinopoiskAnalog"."Position"
    OWNER to postgres;