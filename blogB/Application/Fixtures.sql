

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

INSERT INTO public.posts (id, title, body, created_at) VALUES ('f0a33dbc-f924-466b-a93e-2a2e0f30d0ff', 'posting!!!  :)', 'by me !!', '2021-04-04 15:57:56.483348-07');
INSERT INTO public.posts (id, title, body, created_at) VALUES ('79e9e32b-0323-4878-8380-619eb2df35fe', 'AAA', 'aaa', '2021-04-04 19:16:41.046884-07');
INSERT INTO public.posts (id, title, body, created_at) VALUES ('baf12315-e2ba-412e-9a9b-00ef3c850ec9', 'BBB', 'bbbbbb', '2021-04-04 19:16:48.28883-07');
INSERT INTO public.posts (id, title, body, created_at) VALUES ('76c1eb61-6834-499a-9db9-51c83afb7c61', 'CCC', 'ccc', '2021-04-04 19:16:54.616339-07');


ALTER TABLE public.posts ENABLE TRIGGER ALL;


ALTER TABLE public.comments DISABLE TRIGGER ALL;



ALTER TABLE public.comments ENABLE TRIGGER ALL;


