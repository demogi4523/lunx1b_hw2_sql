-- Table: KinopoiskAnalog.UserListItem

-- DROP TABLE IF EXISTS "KinopoiskAnalog"."UserListItem";

CREATE TABLE IF NOT EXISTS "KinopoiskAnalog"."UserListItem"
(
    id bigint NOT NULL,
    content text COLLATE pg_catalog."default" NOT NULL,
    film_id bigint NOT NULL,
    user_list_id bigint NOT NULL,
    CONSTRAINT "UserListItem_pkey" PRIMARY KEY (id),
    CONSTRAINT film_fkey FOREIGN KEY (film_id)
        REFERENCES "KinopoiskAnalog"."Film" (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID,
    CONSTRAINT user_list_fkey FOREIGN KEY (user_list_id)
        REFERENCES "KinopoiskAnalog"."UserList" (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS "KinopoiskAnalog"."UserListItem"
    OWNER to postgres;