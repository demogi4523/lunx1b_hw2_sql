-- Table: KinopoiskAnalog.Media

-- DROP TABLE IF EXISTS "KinopoiskAnalog"."Media";

CREATE TABLE IF NOT EXISTS "KinopoiskAnalog"."Media"
(
    id bigint NOT NULL,
    media_type text COLLATE pg_catalog."default" NOT NULL,
    link text COLLATE pg_catalog."default" NOT NULL,
    film_id bigint NOT NULL,
    CONSTRAINT "Media_pkey" PRIMARY KEY (id),
    CONSTRAINT film_fkey FOREIGN KEY (film_id)
        REFERENCES "KinopoiskAnalog"."Film" (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS "KinopoiskAnalog"."Media"
    OWNER to postgres;

COMMENT ON TABLE "KinopoiskAnalog"."Media"
    IS 'media_type - custom type in future like enum in python';