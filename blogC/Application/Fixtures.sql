

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

INSERT INTO public.posts (id, title, body, created_at) VALUES ('f67de5b1-1c0b-4962-98de-45c50420b92e', 'aaa', 'adsfasdf', '2021-04-04 21:41:20.745023-07');


ALTER TABLE public.posts ENABLE TRIGGER ALL;


ALTER TABLE public.comments DISABLE TRIGGER ALL;

INSERT INTO public.comments (id, author, body, created_at, post_id) VALUES ('aa898b7b-2797-40c8-8ac3-a055601387e5', 'comment bob', 'says hello', '2021-04-04 21:56:15.120179-07', 'f67de5b1-1c0b-4962-98de-45c50420b92e');


ALTER TABLE public.comments ENABLE TRIGGER ALL;


