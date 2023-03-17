-- Table: KinopoiskAnalog.Audience

-- DROP TABLE IF EXISTS "KinopoiskAnalog"."Audience";

CREATE TABLE IF NOT EXISTS "KinopoiskAnalog"."Audience"
(
    id bigint NOT NULL,
    country bit varying(128) NOT NULL,
    amount bigint NOT NULL,
    statistics_id bigint NOT NULL,
    CONSTRAINT "Audience_pkey" PRIMARY KEY (id),
    CONSTRAINT statistics_fkey FOREIGN KEY (statistics_id)
        REFERENCES "KinopoiskAnalog"."Statistics" (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS "KinopoiskAnalog"."Audience"
    OWNER to postgres;

COMMENT ON TABLE "KinopoiskAnalog"."Audience"
    IS 'country - custom type in future like enum in python';