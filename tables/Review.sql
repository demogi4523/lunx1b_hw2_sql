-- Table: KinopoiskAnalog.Review

-- DROP TABLE IF EXISTS "KinopoiskAnalog"."Review";

CREATE TABLE IF NOT EXISTS "KinopoiskAnalog"."Review"
(
    id bigint NOT NULL,
    review_type text COLLATE pg_catalog."default" NOT NULL,
    content text COLLATE pg_catalog."default" NOT NULL,
    film_id bigint NOT NULL,
    user_id bigint NOT NULL,
    CONSTRAINT "Review_pkey" PRIMARY KEY (id),
    CONSTRAINT film_fkey FOREIGN KEY (film_id)
        REFERENCES "KinopoiskAnalog"."Film" (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID,
    CONSTRAINT user_fkey FOREIGN KEY (user_id)
        REFERENCES "KinopoiskAnalog"."User" (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS "KinopoiskAnalog"."Review"
    OWNER to postgres;

COMMENT ON TABLE "KinopoiskAnalog"."Review"
    IS 'review_type - custom type in future like enum in python';