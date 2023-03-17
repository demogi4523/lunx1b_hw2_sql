-- Table: KinopoiskAnalog.Person

-- DROP TABLE IF EXISTS "KinopoiskAnalog"."Person";

CREATE TABLE IF NOT EXISTS "KinopoiskAnalog"."Person"
(
    id bigint NOT NULL,
    first_name text COLLATE pg_catalog."default" NOT NULL,
    second_name text COLLATE pg_catalog."default" NOT NULL,
    third_name text COLLATE pg_catalog."default",
    film_id bigint,
    CONSTRAINT "Person_pkey" PRIMARY KEY (id),
    CONSTRAINT film_fkey FOREIGN KEY (film_id)
        REFERENCES "KinopoiskAnalog"."Film" (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS "KinopoiskAnalog"."Person"
    OWNER to postgres;