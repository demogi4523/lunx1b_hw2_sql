-- Table: KinopoiskAnalog.UserList

-- DROP TABLE IF EXISTS "KinopoiskAnalog"."UserList";

CREATE TABLE IF NOT EXISTS "KinopoiskAnalog"."UserList"
(
    id bigint NOT NULL,
    name bit varying(1000) NOT NULL,
    descripion text COLLATE pg_catalog."default",
    user_id bigint NOT NULL,
    CONSTRAINT "UserList_pkey" PRIMARY KEY (id),
    CONSTRAINT user_fkey FOREIGN KEY (user_id)
        REFERENCES "KinopoiskAnalog"."User" (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS "KinopoiskAnalog"."UserList"
    OWNER to postgres;