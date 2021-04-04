

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;


SET SESSION AUTHORIZATION DEFAULT;

ALTER TABLE public.posts DISABLE TRIGGER ALL;

INSERT INTO public.posts (id, title, body, created_at) VALUES ('4841eee5-f04e-4529-93d2-f56d9553142c', 'my second post', 'bbb', '2021-04-04 09:22:21.338226-07');
INSERT INTO public.posts (id, title, body, created_at) VALUES ('3788c6db-9a03-40c2-a065-7089b898ae02', 'my first post!!', 'aaa', '2021-04-04 09:22:13.237568-07');
INSERT INTO public.posts (id, title, body, created_at) VALUES ('19e1db78-e6ea-4199-9b3f-9849c11c7764', 'my third post', 'ccc', '2021-04-04 09:27:58.997511-07');


ALTER TABLE public.posts ENABLE TRIGGER ALL;


