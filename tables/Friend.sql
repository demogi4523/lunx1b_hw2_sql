-- Table: KinopoiskAnalog.Friend

-- DROP TABLE IF EXISTS "KinopoiskAnalog"."Friend";

CREATE TABLE IF NOT EXISTS "KinopoiskAnalog"."Friend"
(
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    CONSTRAINT "Friend_pkey" PRIMARY KEY (id),
    CONSTRAINT user_fkey FOREIGN KEY (user_id)
        REFERENCES "KinopoiskAnalog"."User" (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS "KinopoiskAnalog"."Friend"
    OWNER to postgres;