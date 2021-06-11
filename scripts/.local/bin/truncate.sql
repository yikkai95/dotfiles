TRUNCATE ark_site_javascripts RESTART IDENTITY ;
TRUNCATE ark_site_stylesheets RESTART IDENTITY ;
TRUNCATE ark_site_languages RESTART IDENTITY ;
TRUNCATE ark_site_sections RESTART IDENTITY;
TRUNCATE ark_site_pages RESTART IDENTITY CASCADE;
TRUNCATE ark_site_headers RESTART IDENTITY ;
TRUNCATE ark_site_header_blueprints RESTART IDENTITY ;
TRUNCATE ark_site_footer_blueprints RESTART IDENTITY ;

DELETE FROM ark_site_javascripts WHERE site_id IN (2,3);
DELETE FROM ark_site_stylesheets WHERE site_id IN (2,3);
DELETE FROM ark_site_languages WHERE site_id IN (2,3);
DELETE FROM ark_site_headers WHERE site_id IN (2,3);
DELETE FROM ark_site_header_blueprints WHERE site_id IN (2,3);
DELETE FROM ark_site_footer_blueprints WHERE site_id IN (2,3);
DELETE FROM ark_site_sections WHERE page_id IN (SELECT id FROM ark_site_pages WHERE site_id IN (2,3));
DELETE FROM ark_site_pages WHERE site_id IN (2,3);
DELETE FROM ark_site_settings WHERE site_id IN (2,3);

/* TRUNCATE ms_centers_center_groups RESTART IDENTITY CASCADE; */
/* TRUNCATE ms_centers RESTART IDENTITY CASCADE; */
/* TRUNCATE ms_clients RESTART IDENTITY CASCADE; */
/* TRUNCATE ms_consultants RESTART IDENTITY CASCADE; */
/* TRUNCATE ms_modules RESTART IDENTITY CASCADE; */
/* TRUNCATE ms_center_groups RESTART IDENTITY CASCADE; */
