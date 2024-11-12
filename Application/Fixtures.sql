

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

INSERT INTO public.posts (id, title, body, created_at) VALUES ('ac9dfa63-e823-4fca-b404-7c26e25061fd', 'Hello there!', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam', '2024-10-24 22:16:01.42527-06');
INSERT INTO public.posts (id, title, body, created_at) VALUES ('ca374f3f-0c2d-44ba-a290-ca62f38136fa', 'Interesting loading', 'The loading behind the scenes is strange. Things load when the mouse hovers over the link.', '2024-11-07 04:47:00.666959-07');


ALTER TABLE public.posts ENABLE TRIGGER ALL;


ALTER TABLE public.schema_migrations DISABLE TRIGGER ALL;

INSERT INTO public.schema_migrations (revision) VALUES (1729827580);
INSERT INTO public.schema_migrations (revision) VALUES (1729829761);


ALTER TABLE public.schema_migrations ENABLE TRIGGER ALL;


