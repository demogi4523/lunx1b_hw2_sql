-- Table: KinopoiskAnalog.Statistics

-- DROP TABLE IF EXISTS "KinopoiskAnalog"."Statistics";

CREATE TABLE IF NOT EXISTS "KinopoiskAnalog"."Statistics"
(
    id bigint NOT NULL,
    name text COLLATE pg_catalog."default" NOT NULL,
    film_id bigint NOT NULL,
    CONSTRAINT "Statistics_pkey" PRIMARY KEY (id),
    CONSTRAINT film_fkey FOREIGN KEY (film_id)
        REFERENCES "KinopoiskAnalog"."Film" (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS "KinopoiskAnalog"."Statistics"
    OWNER to postgres;