-- Table: KinopoiskAnalog.Finance

-- DROP TABLE IF EXISTS "KinopoiskAnalog"."Finance";

CREATE TABLE IF NOT EXISTS "KinopoiskAnalog"."Finance"
(
    id bigint NOT NULL,
    finance_type text COLLATE pg_catalog."default" NOT NULL,
    description text COLLATE pg_catalog."default",
    amount bigint NOT NULL,
    statistics_id bigint NOT NULL,
    CONSTRAINT "Finance_pkey" PRIMARY KEY (id),
    CONSTRAINT statisticks_fkey FOREIGN KEY (statistics_id)
        REFERENCES "KinopoiskAnalog"."Statistics" (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS "KinopoiskAnalog"."Finance"
    OWNER to postgres;

COMMENT ON TABLE "KinopoiskAnalog"."Finance"
    IS 'finance_type - custom type in future like enum in python';