-- Table: KinopoiskAnalog.User

-- DROP TABLE IF EXISTS "KinopoiskAnalog"."User";

CREATE TABLE IF NOT EXISTS "KinopoiskAnalog"."User"
(
    id bigint NOT NULL,
    email text COLLATE pg_catalog."default" NOT NULL,
    password_hash bit varying(512) NOT NULL,
    bio text COLLATE pg_catalog."default",
    CONSTRAINT "User_pkey" PRIMARY KEY (id),
    CONSTRAINT user_email_unique UNIQUE (email)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS "KinopoiskAnalog"."User"
    OWNER to postgres;