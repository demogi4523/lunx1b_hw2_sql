-- Table: KinopoiskAnalog.Film

-- DROP TABLE IF EXISTS "KinopoiskAnalog"."Film";

CREATE TABLE IF NOT EXISTS "KinopoiskAnalog"."Film"
(
    id bigint NOT NULL,
    description text COLLATE pg_catalog."default",
    CONSTRAINT "Film_pkey" PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS "KinopoiskAnalog"."Film"
    OWNER to postgres;