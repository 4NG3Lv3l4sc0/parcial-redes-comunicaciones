--
-- PostgreSQL database dump
--

\restrict gZJYcdmHfuwS2naFZNgkvezxdf2rFTI5sJg2DyvG7Kwk3hYyXfcKFOy8Z6WDDFY

-- Dumped from database version 16.15
-- Dumped by pg_dump version 16.15

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

DROP INDEX IF EXISTS public.jos_workflows_idx_title;
DROP INDEX IF EXISTS public.jos_workflows_idx_modified_by;
DROP INDEX IF EXISTS public.jos_workflows_idx_modified;
DROP INDEX IF EXISTS public.jos_workflows_idx_extension;
DROP INDEX IF EXISTS public.jos_workflows_idx_default;
DROP INDEX IF EXISTS public.jos_workflows_idx_created_by;
DROP INDEX IF EXISTS public.jos_workflows_idx_created;
DROP INDEX IF EXISTS public.jos_workflows_idx_checked_out;
DROP INDEX IF EXISTS public.jos_workflows_idx_asset_id;
DROP INDEX IF EXISTS public.jos_workflow_transitions_idx_workflow_id;
DROP INDEX IF EXISTS public.jos_workflow_transitions_idx_to_stage_id;
DROP INDEX IF EXISTS public.jos_workflow_transitions_idx_title;
DROP INDEX IF EXISTS public.jos_workflow_transitions_idx_from_stage_id;
DROP INDEX IF EXISTS public.jos_workflow_transitions_idx_checked_out;
DROP INDEX IF EXISTS public.jos_workflow_transitions_idx_asset_id;
DROP INDEX IF EXISTS public.jos_workflow_stages_idx_workflow_id;
DROP INDEX IF EXISTS public.jos_workflow_stages_idx_title;
DROP INDEX IF EXISTS public.jos_workflow_stages_idx_default;
DROP INDEX IF EXISTS public.jos_workflow_stages_idx_checked_out;
DROP INDEX IF EXISTS public.jos_workflow_stages_idx_asset_id;
DROP INDEX IF EXISTS public.jos_workflow_associations_idx_stage_id;
DROP INDEX IF EXISTS public.jos_workflow_associations_idx_item_stage_extension;
DROP INDEX IF EXISTS public.jos_workflow_associations_idx_item_id;
DROP INDEX IF EXISTS public.jos_workflow_associations_idx_extension;
DROP INDEX IF EXISTS public.jos_webauthn_credentials_user_id;
DROP INDEX IF EXISTS public.jos_users_idx_name;
DROP INDEX IF EXISTS public.jos_users_idx_block;
DROP INDEX IF EXISTS public.jos_users_email_lower;
DROP INDEX IF EXISTS public.jos_users_email;
DROP INDEX IF EXISTS public.jos_usergroups_idx_usergroup_title_lookup;
DROP INDEX IF EXISTS public.jos_usergroups_idx_usergroup_nested_set_lookup;
DROP INDEX IF EXISTS public.jos_usergroups_idx_usergroup_adjacency_lookup;
DROP INDEX IF EXISTS public.jos_user_notes_idx_user_id;
DROP INDEX IF EXISTS public.jos_user_notes_idx_category_id;
DROP INDEX IF EXISTS public.jos_user_mfa_idx_user_id;
DROP INDEX IF EXISTS public.jos_user_keys_idx_user_id;
DROP INDEX IF EXISTS public.jos_ucm_content_tag_idx;
DROP INDEX IF EXISTS public.jos_ucm_content_idx_title;
DROP INDEX IF EXISTS public.jos_ucm_content_idx_modified_time;
DROP INDEX IF EXISTS public.jos_ucm_content_idx_language;
DROP INDEX IF EXISTS public.jos_ucm_content_idx_created_time;
DROP INDEX IF EXISTS public.jos_ucm_content_idx_core_type_id;
DROP INDEX IF EXISTS public.jos_ucm_content_idx_core_modified_user_id;
DROP INDEX IF EXISTS public.jos_ucm_content_idx_core_created_user_id;
DROP INDEX IF EXISTS public.jos_ucm_content_idx_core_checked_out_user_id;
DROP INDEX IF EXISTS public.jos_ucm_content_idx_content_type;
DROP INDEX IF EXISTS public.jos_ucm_content_idx_alias;
DROP INDEX IF EXISTS public.jos_ucm_content_idx_access;
DROP INDEX IF EXISTS public.jos_ucm_base_ucm_type_id;
DROP INDEX IF EXISTS public.jos_ucm_base_ucm_language_id;
DROP INDEX IF EXISTS public.jos_ucm_base_ucm_item_id;
DROP INDEX IF EXISTS public.jos_template_styles_idx_template;
DROP INDEX IF EXISTS public.jos_template_styles_idx_client_id_home;
DROP INDEX IF EXISTS public.jos_template_styles_idx_client_id;
DROP INDEX IF EXISTS public.jos_template_overrides_idx_template;
DROP INDEX IF EXISTS public.jos_template_overrides_idx_extension_id;
DROP INDEX IF EXISTS public.jos_tags_idx_path;
DROP INDEX IF EXISTS public.jos_tags_idx_left_right;
DROP INDEX IF EXISTS public.jos_tags_idx_language;
DROP INDEX IF EXISTS public.jos_tags_idx_checkout;
DROP INDEX IF EXISTS public.jos_tags_idx_alias;
DROP INDEX IF EXISTS public.jos_tags_idx_access;
DROP INDEX IF EXISTS public.jos_tags_cat_idx;
DROP INDEX IF EXISTS public.jos_session_userid;
DROP INDEX IF EXISTS public.jos_session_time;
DROP INDEX IF EXISTS public.jos_session_idx_client_id_guest;
DROP INDEX IF EXISTS public.jos_scheduler_tasks_idx_type;
DROP INDEX IF EXISTS public.jos_scheduler_tasks_idx_state;
DROP INDEX IF EXISTS public.jos_scheduler_tasks_idx_priority;
DROP INDEX IF EXISTS public.jos_scheduler_tasks_idx_next_exec;
DROP INDEX IF EXISTS public.jos_scheduler_tasks_idx_locked;
DROP INDEX IF EXISTS public.jos_scheduler_tasks_idx_last_exit;
DROP INDEX IF EXISTS public.jos_scheduler_tasks_idx_cli_exclusive;
DROP INDEX IF EXISTS public.jos_scheduler_tasks_idx_checked_out;
DROP INDEX IF EXISTS public.jos_scheduler_logs_idx_tasktype;
DROP INDEX IF EXISTS public.jos_scheduler_logs_idx_taskname;
DROP INDEX IF EXISTS public.jos_scheduler_logs_idx_nextdate;
DROP INDEX IF EXISTS public.jos_scheduler_logs_idx_lastdate;
DROP INDEX IF EXISTS public.jos_redirect_links_idx_old_url;
DROP INDEX IF EXISTS public.jos_redirect_links_idx_link_modified;
DROP INDEX IF EXISTS public.jos_privacy_consents_idx_user_id;
DROP INDEX IF EXISTS public.jos_newsfeeds_idx_state;
DROP INDEX IF EXISTS public.jos_newsfeeds_idx_language;
DROP INDEX IF EXISTS public.jos_newsfeeds_idx_createdby;
DROP INDEX IF EXISTS public.jos_newsfeeds_idx_checkout;
DROP INDEX IF EXISTS public.jos_newsfeeds_idx_catid;
DROP INDEX IF EXISTS public.jos_newsfeeds_idx_access;
DROP INDEX IF EXISTS public.jos_modules_published;
DROP INDEX IF EXISTS public.jos_modules_newsfeeds;
DROP INDEX IF EXISTS public.jos_modules_idx_language;
DROP INDEX IF EXISTS public.jos_messages_useridto_state;
DROP INDEX IF EXISTS public.jos_menu_idx_path;
DROP INDEX IF EXISTS public.jos_menu_idx_menutype;
DROP INDEX IF EXISTS public.jos_menu_idx_left_right;
DROP INDEX IF EXISTS public.jos_menu_idx_language;
DROP INDEX IF EXISTS public.jos_menu_idx_componentid;
DROP INDEX IF EXISTS public.jos_menu_idx_alias;
DROP INDEX IF EXISTS public.jos_mail_templates_idx_template_id;
DROP INDEX IF EXISTS public.jos_mail_templates_idx_language;
DROP INDEX IF EXISTS public.jos_languages_idx_ordering;
DROP INDEX IF EXISTS public.jos_languages_idx_access;
DROP INDEX IF EXISTS public.jos_history_idx_ucm_item_id;
DROP INDEX IF EXISTS public.jos_history_idx_save_date;
DROP INDEX IF EXISTS public.jos_guidedtours_idx_uid;
DROP INDEX IF EXISTS public.jos_guidedtours_idx_state;
DROP INDEX IF EXISTS public.jos_guidedtours_idx_language;
DROP INDEX IF EXISTS public.jos_guidedtours_idx_access;
DROP INDEX IF EXISTS public.jos_guidedtour_steps_idx_tour_id;
DROP INDEX IF EXISTS public.jos_guidedtour_steps_idx_state;
DROP INDEX IF EXISTS public.jos_guidedtour_steps_idx_language;
DROP INDEX IF EXISTS public.jos_finder_tokens_idx_word;
DROP INDEX IF EXISTS public.jos_finder_tokens_idx_stem;
DROP INDEX IF EXISTS public.jos_finder_tokens_idx_language;
DROP INDEX IF EXISTS public.jos_finder_tokens_idx_context;
DROP INDEX IF EXISTS public.jos_finder_tokens_aggregate_token;
DROP INDEX IF EXISTS public.jos_finder_terms_idx_term_phrase;
DROP INDEX IF EXISTS public.jos_finder_terms_idx_stem_phrase;
DROP INDEX IF EXISTS public.jos_finder_terms_idx_soundex_phrase;
DROP INDEX IF EXISTS public.jos_finder_terms_idx_language;
DROP INDEX IF EXISTS public.jos_finder_terms_common_idx_lang;
DROP INDEX IF EXISTS public.jos_finder_taxonomy_state;
DROP INDEX IF EXISTS public.jos_finder_taxonomy_path;
DROP INDEX IF EXISTS public.jos_finder_taxonomy_map_node_id;
DROP INDEX IF EXISTS public.jos_finder_taxonomy_map_link_id;
DROP INDEX IF EXISTS public.jos_finder_taxonomy_lft_rgt;
DROP INDEX IF EXISTS public.jos_finder_taxonomy_level;
DROP INDEX IF EXISTS public.jos_finder_taxonomy_language;
DROP INDEX IF EXISTS public.jos_finder_taxonomy_idx_parent_published;
DROP INDEX IF EXISTS public.jos_finder_taxonomy_alias;
DROP INDEX IF EXISTS public.jos_finder_taxonomy_access;
DROP INDEX IF EXISTS public.jos_finder_logging_idx_searchterm;
DROP INDEX IF EXISTS public.jos_finder_logging_idx_md5sum;
DROP INDEX IF EXISTS public.jos_finder_links_terms_idx_term_weight;
DROP INDEX IF EXISTS public.jos_finder_links_terms_idx_link_term_weight;
DROP INDEX IF EXISTS public.jos_finder_links_idx_url;
DROP INDEX IF EXISTS public.jos_finder_links_idx_type;
DROP INDEX IF EXISTS public.jos_finder_links_idx_title;
DROP INDEX IF EXISTS public.jos_finder_links_idx_published_sale;
DROP INDEX IF EXISTS public.jos_finder_links_idx_published_list;
DROP INDEX IF EXISTS public.jos_finder_links_idx_md5;
DROP INDEX IF EXISTS public.jos_finder_links_idx_language;
DROP INDEX IF EXISTS public.jos_fields_values_idx_item_id;
DROP INDEX IF EXISTS public.jos_fields_values_idx_field_id;
DROP INDEX IF EXISTS public.jos_fields_idx_state;
DROP INDEX IF EXISTS public.jos_fields_idx_language;
DROP INDEX IF EXISTS public.jos_fields_idx_created_user_id;
DROP INDEX IF EXISTS public.jos_fields_idx_context;
DROP INDEX IF EXISTS public.jos_fields_idx_checked_out;
DROP INDEX IF EXISTS public.jos_fields_idx_access;
DROP INDEX IF EXISTS public.jos_fields_groups_idx_state;
DROP INDEX IF EXISTS public.jos_fields_groups_idx_language;
DROP INDEX IF EXISTS public.jos_fields_groups_idx_created_by;
DROP INDEX IF EXISTS public.jos_fields_groups_idx_context;
DROP INDEX IF EXISTS public.jos_fields_groups_idx_checked_out;
DROP INDEX IF EXISTS public.jos_fields_groups_idx_access;
DROP INDEX IF EXISTS public.jos_extensions_extension;
DROP INDEX IF EXISTS public.jos_extensions_element_folder_clientid;
DROP INDEX IF EXISTS public.jos_extensions_element_clientid;
DROP INDEX IF EXISTS public.jos_contentitem_tag_map_idx_tag_type;
DROP INDEX IF EXISTS public.jos_contentitem_tag_map_idx_date_id;
DROP INDEX IF EXISTS public.jos_contentitem_tag_map_idx_core_content_id;
DROP INDEX IF EXISTS public.jos_content_types_idx_alias;
DROP INDEX IF EXISTS public.jos_content_idx_state;
DROP INDEX IF EXISTS public.jos_content_idx_language;
DROP INDEX IF EXISTS public.jos_content_idx_featured_catid;
DROP INDEX IF EXISTS public.jos_content_idx_createdby;
DROP INDEX IF EXISTS public.jos_content_idx_checkout;
DROP INDEX IF EXISTS public.jos_content_idx_catid;
DROP INDEX IF EXISTS public.jos_content_idx_alias;
DROP INDEX IF EXISTS public.jos_content_idx_access;
DROP INDEX IF EXISTS public.jos_contact_details_idx_state;
DROP INDEX IF EXISTS public.jos_contact_details_idx_language;
DROP INDEX IF EXISTS public.jos_contact_details_idx_featured_catid;
DROP INDEX IF EXISTS public.jos_contact_details_idx_createdby;
DROP INDEX IF EXISTS public.jos_contact_details_idx_checkout;
DROP INDEX IF EXISTS public.jos_contact_details_idx_catid;
DROP INDEX IF EXISTS public.jos_contact_details_idx_access;
DROP INDEX IF EXISTS public.jos_categories_idx_path;
DROP INDEX IF EXISTS public.jos_categories_idx_left_right;
DROP INDEX IF EXISTS public.jos_categories_idx_language;
DROP INDEX IF EXISTS public.jos_categories_idx_checkout;
DROP INDEX IF EXISTS public.jos_categories_idx_alias;
DROP INDEX IF EXISTS public.jos_categories_idx_access;
DROP INDEX IF EXISTS public.jos_categories_cat_idx;
DROP INDEX IF EXISTS public.jos_banners_idx_state;
DROP INDEX IF EXISTS public.jos_banners_idx_own_prefix;
DROP INDEX IF EXISTS public.jos_banners_idx_metakey_prefix;
DROP INDEX IF EXISTS public.jos_banners_idx_language;
DROP INDEX IF EXISTS public.jos_banners_idx_banner_catid;
DROP INDEX IF EXISTS public.jos_banner_tracks_idx_track_type;
DROP INDEX IF EXISTS public.jos_banner_tracks_idx_track_date;
DROP INDEX IF EXISTS public.jos_banner_tracks_idx_banner_id;
DROP INDEX IF EXISTS public.jos_banner_clients_idx_own_prefix;
DROP INDEX IF EXISTS public.jos_banner_clients_idx_metakey_prefix;
DROP INDEX IF EXISTS public.jos_associations_idx_key;
DROP INDEX IF EXISTS public.jos_assets_idx_parent_id;
DROP INDEX IF EXISTS public.jos_assets_idx_lft_rgt;
DROP INDEX IF EXISTS public.jos_action_logs_users_idx_notify;
DROP INDEX IF EXISTS public.jos_action_logs_idx_user_id_logdate;
DROP INDEX IF EXISTS public.jos_action_logs_idx_user_id_extension;
DROP INDEX IF EXISTS public.jos_action_logs_idx_user_id;
DROP INDEX IF EXISTS public.jos_action_logs_idx_extension_itemid;
DROP INDEX IF EXISTS public.idx_trafico_ip;
DROP INDEX IF EXISTS public.idx_trafico_fecha;
DROP INDEX IF EXISTS public.idx_trafico_codigo;
DROP INDEX IF EXISTS public._jos_finder_tokens_aggregate_keyword_id;
ALTER TABLE IF EXISTS ONLY public.trafico_nginx DROP CONSTRAINT IF EXISTS trafico_nginx_pkey;
ALTER TABLE IF EXISTS ONLY public.jos_workflows DROP CONSTRAINT IF EXISTS jos_workflows_pkey;
ALTER TABLE IF EXISTS ONLY public.jos_workflow_transitions DROP CONSTRAINT IF EXISTS jos_workflow_transitions_pkey;
ALTER TABLE IF EXISTS ONLY public.jos_workflow_stages DROP CONSTRAINT IF EXISTS jos_workflow_stages_pkey;
ALTER TABLE IF EXISTS ONLY public.jos_workflow_associations DROP CONSTRAINT IF EXISTS jos_workflow_associations_pkey;
ALTER TABLE IF EXISTS ONLY public.jos_webauthn_credentials DROP CONSTRAINT IF EXISTS jos_webauthn_credentials_pkey;
ALTER TABLE IF EXISTS ONLY public.jos_viewlevels DROP CONSTRAINT IF EXISTS jos_viewlevels_pkey;
ALTER TABLE IF EXISTS ONLY public.jos_viewlevels DROP CONSTRAINT IF EXISTS jos_viewlevels_idx_assetgroup_title_lookup;
ALTER TABLE IF EXISTS ONLY public.jos_users DROP CONSTRAINT IF EXISTS jos_users_pkey;
ALTER TABLE IF EXISTS ONLY public.jos_users DROP CONSTRAINT IF EXISTS jos_users_idx_username;
ALTER TABLE IF EXISTS ONLY public.jos_usergroups DROP CONSTRAINT IF EXISTS jos_usergroups_pkey;
ALTER TABLE IF EXISTS ONLY public.jos_usergroups DROP CONSTRAINT IF EXISTS jos_usergroups_idx_usergroup_parent_title_lookup;
ALTER TABLE IF EXISTS ONLY public.jos_user_usergroup_map DROP CONSTRAINT IF EXISTS jos_user_usergroup_map_pkey;
ALTER TABLE IF EXISTS ONLY public.jos_user_profiles DROP CONSTRAINT IF EXISTS jos_user_profiles_idx_user_id_profile_key;
ALTER TABLE IF EXISTS ONLY public.jos_user_notes DROP CONSTRAINT IF EXISTS jos_user_notes_pkey;
ALTER TABLE IF EXISTS ONLY public.jos_user_mfa DROP CONSTRAINT IF EXISTS jos_user_mfa_pkey;
ALTER TABLE IF EXISTS ONLY public.jos_user_keys DROP CONSTRAINT IF EXISTS jos_user_keys_series;
ALTER TABLE IF EXISTS ONLY public.jos_user_keys DROP CONSTRAINT IF EXISTS jos_user_keys_pkey;
ALTER TABLE IF EXISTS ONLY public.jos_updates DROP CONSTRAINT IF EXISTS jos_updates_pkey;
ALTER TABLE IF EXISTS ONLY public.jos_update_sites DROP CONSTRAINT IF EXISTS jos_update_sites_pkey;
ALTER TABLE IF EXISTS ONLY public.jos_update_sites_extensions DROP CONSTRAINT IF EXISTS jos_update_sites_extensions_pkey;
ALTER TABLE IF EXISTS ONLY public.jos_ucm_content DROP CONSTRAINT IF EXISTS jos_ucm_content_pkey;
ALTER TABLE IF EXISTS ONLY public.jos_ucm_base DROP CONSTRAINT IF EXISTS jos_ucm_base_pkey;
ALTER TABLE IF EXISTS ONLY public.jos_tuf_metadata DROP CONSTRAINT IF EXISTS jos_tuf_metadata_pkey;
ALTER TABLE IF EXISTS ONLY public.jos_template_styles DROP CONSTRAINT IF EXISTS jos_template_styles_pkey;
ALTER TABLE IF EXISTS ONLY public.jos_template_overrides DROP CONSTRAINT IF EXISTS jos_template_overrides_pkey;
ALTER TABLE IF EXISTS ONLY public.jos_tags DROP CONSTRAINT IF EXISTS jos_tags_pkey;
ALTER TABLE IF EXISTS ONLY public.jos_session DROP CONSTRAINT IF EXISTS jos_session_pkey;
ALTER TABLE IF EXISTS ONLY public.jos_schemas DROP CONSTRAINT IF EXISTS jos_schemas_pkey;
ALTER TABLE IF EXISTS ONLY public.jos_schemaorg DROP CONSTRAINT IF EXISTS jos_schemaorg_pkey;
ALTER TABLE IF EXISTS ONLY public.jos_scheduler_tasks DROP CONSTRAINT IF EXISTS jos_scheduler_tasks_pkey;
ALTER TABLE IF EXISTS ONLY public.jos_scheduler_logs DROP CONSTRAINT IF EXISTS jos_scheduler_logs_pkey;
ALTER TABLE IF EXISTS ONLY public.jos_redirect_links DROP CONSTRAINT IF EXISTS jos_redirect_links_pkey;
ALTER TABLE IF EXISTS ONLY public.jos_privacy_requests DROP CONSTRAINT IF EXISTS jos_privacy_requests_pkey;
ALTER TABLE IF EXISTS ONLY public.jos_privacy_consents DROP CONSTRAINT IF EXISTS jos_privacy_consents_pkey;
ALTER TABLE IF EXISTS ONLY public.jos_postinstall_messages DROP CONSTRAINT IF EXISTS jos_postinstall_messages_pkey;
ALTER TABLE IF EXISTS ONLY public.jos_overrider DROP CONSTRAINT IF EXISTS jos_overrider_pkey;
ALTER TABLE IF EXISTS ONLY public.jos_newsfeeds DROP CONSTRAINT IF EXISTS jos_newsfeeds_pkey;
ALTER TABLE IF EXISTS ONLY public.jos_modules DROP CONSTRAINT IF EXISTS jos_modules_pkey;
ALTER TABLE IF EXISTS ONLY public.jos_modules_menu DROP CONSTRAINT IF EXISTS jos_modules_menu_pkey;
ALTER TABLE IF EXISTS ONLY public.jos_messages DROP CONSTRAINT IF EXISTS jos_messages_pkey;
ALTER TABLE IF EXISTS ONLY public.jos_messages_cfg DROP CONSTRAINT IF EXISTS jos_messages_cfg_idx_user_var_name;
ALTER TABLE IF EXISTS ONLY public.jos_menu_types DROP CONSTRAINT IF EXISTS jos_menu_types_pkey;
ALTER TABLE IF EXISTS ONLY public.jos_menu_types DROP CONSTRAINT IF EXISTS jos_menu_types_idx_menutype;
ALTER TABLE IF EXISTS ONLY public.jos_menu DROP CONSTRAINT IF EXISTS jos_menu_pkey;
ALTER TABLE IF EXISTS ONLY public.jos_menu DROP CONSTRAINT IF EXISTS jos_menu_idx_client_id_parent_id_alias_language;
ALTER TABLE IF EXISTS ONLY public.jos_mail_templates DROP CONSTRAINT IF EXISTS jos_mail_templates_idx_template_id_language;
ALTER TABLE IF EXISTS ONLY public.jos_languages DROP CONSTRAINT IF EXISTS jos_languages_pkey;
ALTER TABLE IF EXISTS ONLY public.jos_languages DROP CONSTRAINT IF EXISTS jos_languages_idx_sef;
ALTER TABLE IF EXISTS ONLY public.jos_languages DROP CONSTRAINT IF EXISTS jos_languages_idx_langcode;
ALTER TABLE IF EXISTS ONLY public.jos_history DROP CONSTRAINT IF EXISTS jos_history_pkey;
ALTER TABLE IF EXISTS ONLY public.jos_guidedtours DROP CONSTRAINT IF EXISTS jos_guidedtours_pkey;
ALTER TABLE IF EXISTS ONLY public.jos_guidedtour_steps DROP CONSTRAINT IF EXISTS jos_guidedtour_steps_pkey;
ALTER TABLE IF EXISTS ONLY public.jos_finder_types DROP CONSTRAINT IF EXISTS jos_finder_types_title;
ALTER TABLE IF EXISTS ONLY public.jos_finder_types DROP CONSTRAINT IF EXISTS jos_finder_types_pkey;
ALTER TABLE IF EXISTS ONLY public.jos_finder_terms DROP CONSTRAINT IF EXISTS jos_finder_terms_pkey;
ALTER TABLE IF EXISTS ONLY public.jos_finder_terms DROP CONSTRAINT IF EXISTS jos_finder_terms_idx_term_language;
ALTER TABLE IF EXISTS ONLY public.jos_finder_terms_common DROP CONSTRAINT IF EXISTS jos_finder_terms_common_idx_term_language;
ALTER TABLE IF EXISTS ONLY public.jos_finder_taxonomy DROP CONSTRAINT IF EXISTS jos_finder_taxonomy_pkey;
ALTER TABLE IF EXISTS ONLY public.jos_finder_taxonomy_map DROP CONSTRAINT IF EXISTS jos_finder_taxonomy_map_pkey;
ALTER TABLE IF EXISTS ONLY public.jos_finder_logging DROP CONSTRAINT IF EXISTS jos_finder_logging_pkey;
ALTER TABLE IF EXISTS ONLY public.jos_finder_links_terms DROP CONSTRAINT IF EXISTS jos_finder_links_terms_pkey;
ALTER TABLE IF EXISTS ONLY public.jos_finder_links DROP CONSTRAINT IF EXISTS jos_finder_links_pkey;
ALTER TABLE IF EXISTS ONLY public.jos_finder_filters DROP CONSTRAINT IF EXISTS jos_finder_filters_pkey;
ALTER TABLE IF EXISTS ONLY public.jos_fields DROP CONSTRAINT IF EXISTS jos_fields_pkey;
ALTER TABLE IF EXISTS ONLY public.jos_fields_groups DROP CONSTRAINT IF EXISTS jos_fields_groups_pkey;
ALTER TABLE IF EXISTS ONLY public.jos_fields_categories DROP CONSTRAINT IF EXISTS jos_fields_categories_pkey;
ALTER TABLE IF EXISTS ONLY public.jos_extensions DROP CONSTRAINT IF EXISTS jos_extensions_pkey;
ALTER TABLE IF EXISTS ONLY public.jos_contentitem_tag_map DROP CONSTRAINT IF EXISTS jos_contentitem_tag_map_pkey;
ALTER TABLE IF EXISTS ONLY public.jos_content_types DROP CONSTRAINT IF EXISTS jos_content_types_pkey;
ALTER TABLE IF EXISTS ONLY public.jos_content_rating DROP CONSTRAINT IF EXISTS jos_content_rating_pkey;
ALTER TABLE IF EXISTS ONLY public.jos_content DROP CONSTRAINT IF EXISTS jos_content_pkey;
ALTER TABLE IF EXISTS ONLY public.jos_content_frontpage DROP CONSTRAINT IF EXISTS jos_content_frontpage_pkey;
ALTER TABLE IF EXISTS ONLY public.jos_contact_details DROP CONSTRAINT IF EXISTS jos_contact_details_pkey;
ALTER TABLE IF EXISTS ONLY public.jos_categories DROP CONSTRAINT IF EXISTS jos_categories_pkey;
ALTER TABLE IF EXISTS ONLY public.jos_banners DROP CONSTRAINT IF EXISTS jos_banners_pkey;
ALTER TABLE IF EXISTS ONLY public.jos_banner_tracks DROP CONSTRAINT IF EXISTS jos_banner_tracks_pkey;
ALTER TABLE IF EXISTS ONLY public.jos_banner_clients DROP CONSTRAINT IF EXISTS jos_banner_clients_pkey;
ALTER TABLE IF EXISTS ONLY public.jos_associations DROP CONSTRAINT IF EXISTS jos_associations_idx_context_id;
ALTER TABLE IF EXISTS ONLY public.jos_assets DROP CONSTRAINT IF EXISTS jos_assets_pkey;
ALTER TABLE IF EXISTS ONLY public.jos_assets DROP CONSTRAINT IF EXISTS jos_assets_idx_asset_name;
ALTER TABLE IF EXISTS ONLY public.jos_action_logs_users DROP CONSTRAINT IF EXISTS jos_action_logs_users_pkey;
ALTER TABLE IF EXISTS ONLY public.jos_action_logs DROP CONSTRAINT IF EXISTS jos_action_logs_pkey;
ALTER TABLE IF EXISTS ONLY public.jos_action_logs_extensions DROP CONSTRAINT IF EXISTS jos_action_logs_extensions_pkey;
ALTER TABLE IF EXISTS ONLY public.jos_action_log_config DROP CONSTRAINT IF EXISTS jos_action_log_config_pkey;
ALTER TABLE IF EXISTS ONLY public.actividad DROP CONSTRAINT IF EXISTS actividad_pkey;
ALTER TABLE IF EXISTS public.trafico_nginx ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.jos_workflows ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.jos_workflow_transitions ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.jos_workflow_stages ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.jos_viewlevels ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.jos_users ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.jos_usergroups ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.jos_user_notes ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.jos_user_mfa ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.jos_user_keys ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.jos_updates ALTER COLUMN update_id DROP DEFAULT;
ALTER TABLE IF EXISTS public.jos_update_sites ALTER COLUMN update_site_id DROP DEFAULT;
ALTER TABLE IF EXISTS public.jos_ucm_content ALTER COLUMN core_content_id DROP DEFAULT;
ALTER TABLE IF EXISTS public.jos_ucm_base ALTER COLUMN ucm_id DROP DEFAULT;
ALTER TABLE IF EXISTS public.jos_tuf_metadata ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.jos_template_styles ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.jos_template_overrides ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.jos_tags ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.jos_schemaorg ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.jos_scheduler_tasks ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.jos_scheduler_logs ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.jos_redirect_links ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.jos_privacy_requests ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.jos_privacy_consents ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.jos_postinstall_messages ALTER COLUMN postinstall_message_id DROP DEFAULT;
ALTER TABLE IF EXISTS public.jos_overrider ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.jos_newsfeeds ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.jos_modules ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.jos_messages ALTER COLUMN message_id DROP DEFAULT;
ALTER TABLE IF EXISTS public.jos_menu_types ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.jos_menu ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.jos_languages ALTER COLUMN lang_id DROP DEFAULT;
ALTER TABLE IF EXISTS public.jos_history ALTER COLUMN version_id DROP DEFAULT;
ALTER TABLE IF EXISTS public.jos_guidedtours ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.jos_guidedtour_steps ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.jos_finder_types ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.jos_finder_terms ALTER COLUMN term_id DROP DEFAULT;
ALTER TABLE IF EXISTS public.jos_finder_taxonomy ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.jos_finder_links ALTER COLUMN link_id DROP DEFAULT;
ALTER TABLE IF EXISTS public.jos_finder_filters ALTER COLUMN filter_id DROP DEFAULT;
ALTER TABLE IF EXISTS public.jos_fields_groups ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.jos_fields ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.jos_extensions ALTER COLUMN extension_id DROP DEFAULT;
ALTER TABLE IF EXISTS public.jos_content_types ALTER COLUMN type_id DROP DEFAULT;
ALTER TABLE IF EXISTS public.jos_content ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.jos_contact_details ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.jos_categories ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.jos_banners ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.jos_banner_clients ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.jos_assets ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.jos_action_logs_extensions ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.jos_action_logs ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.jos_action_log_config ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.actividad ALTER COLUMN id DROP DEFAULT;
DROP SEQUENCE IF EXISTS public.trafico_nginx_id_seq;
DROP TABLE IF EXISTS public.trafico_nginx;
DROP SEQUENCE IF EXISTS public.jos_workflows_id_seq;
DROP TABLE IF EXISTS public.jos_workflows;
DROP SEQUENCE IF EXISTS public.jos_workflow_transitions_id_seq;
DROP TABLE IF EXISTS public.jos_workflow_transitions;
DROP SEQUENCE IF EXISTS public.jos_workflow_stages_id_seq;
DROP TABLE IF EXISTS public.jos_workflow_stages;
DROP TABLE IF EXISTS public.jos_workflow_associations;
DROP TABLE IF EXISTS public.jos_webauthn_credentials;
DROP SEQUENCE IF EXISTS public.jos_viewlevels_id_seq;
DROP TABLE IF EXISTS public.jos_viewlevels;
DROP SEQUENCE IF EXISTS public.jos_users_id_seq;
DROP TABLE IF EXISTS public.jos_users;
DROP SEQUENCE IF EXISTS public.jos_usergroups_id_seq;
DROP TABLE IF EXISTS public.jos_usergroups;
DROP TABLE IF EXISTS public.jos_user_usergroup_map;
DROP TABLE IF EXISTS public.jos_user_profiles;
DROP SEQUENCE IF EXISTS public.jos_user_notes_id_seq;
DROP TABLE IF EXISTS public.jos_user_notes;
DROP SEQUENCE IF EXISTS public.jos_user_mfa_id_seq;
DROP TABLE IF EXISTS public.jos_user_mfa;
DROP SEQUENCE IF EXISTS public.jos_user_keys_id_seq;
DROP TABLE IF EXISTS public.jos_user_keys;
DROP SEQUENCE IF EXISTS public.jos_updates_update_id_seq;
DROP TABLE IF EXISTS public.jos_updates;
DROP SEQUENCE IF EXISTS public.jos_update_sites_update_site_id_seq;
DROP TABLE IF EXISTS public.jos_update_sites_extensions;
DROP TABLE IF EXISTS public.jos_update_sites;
DROP SEQUENCE IF EXISTS public.jos_ucm_content_core_content_id_seq;
DROP TABLE IF EXISTS public.jos_ucm_content;
DROP SEQUENCE IF EXISTS public.jos_ucm_base_ucm_id_seq;
DROP TABLE IF EXISTS public.jos_ucm_base;
DROP SEQUENCE IF EXISTS public.jos_tuf_metadata_id_seq;
DROP TABLE IF EXISTS public.jos_tuf_metadata;
DROP SEQUENCE IF EXISTS public.jos_template_styles_id_seq;
DROP TABLE IF EXISTS public.jos_template_styles;
DROP SEQUENCE IF EXISTS public.jos_template_overrides_id_seq;
DROP TABLE IF EXISTS public.jos_template_overrides;
DROP SEQUENCE IF EXISTS public.jos_tags_id_seq;
DROP TABLE IF EXISTS public.jos_tags;
DROP TABLE IF EXISTS public.jos_session;
DROP TABLE IF EXISTS public.jos_schemas;
DROP SEQUENCE IF EXISTS public.jos_schemaorg_id_seq;
DROP TABLE IF EXISTS public.jos_schemaorg;
DROP SEQUENCE IF EXISTS public.jos_scheduler_tasks_id_seq;
DROP TABLE IF EXISTS public.jos_scheduler_tasks;
DROP SEQUENCE IF EXISTS public.jos_scheduler_logs_id_seq;
DROP TABLE IF EXISTS public.jos_scheduler_logs;
DROP SEQUENCE IF EXISTS public.jos_redirect_links_id_seq;
DROP TABLE IF EXISTS public.jos_redirect_links;
DROP SEQUENCE IF EXISTS public.jos_privacy_requests_id_seq;
DROP TABLE IF EXISTS public.jos_privacy_requests;
DROP SEQUENCE IF EXISTS public.jos_privacy_consents_id_seq;
DROP TABLE IF EXISTS public.jos_privacy_consents;
DROP SEQUENCE IF EXISTS public.jos_postinstall_messages_postinstall_message_id_seq;
DROP TABLE IF EXISTS public.jos_postinstall_messages;
DROP SEQUENCE IF EXISTS public.jos_overrider_id_seq;
DROP TABLE IF EXISTS public.jos_overrider;
DROP SEQUENCE IF EXISTS public.jos_newsfeeds_id_seq;
DROP TABLE IF EXISTS public.jos_newsfeeds;
DROP TABLE IF EXISTS public.jos_modules_menu;
DROP SEQUENCE IF EXISTS public.jos_modules_id_seq;
DROP TABLE IF EXISTS public.jos_modules;
DROP SEQUENCE IF EXISTS public.jos_messages_message_id_seq;
DROP TABLE IF EXISTS public.jos_messages_cfg;
DROP TABLE IF EXISTS public.jos_messages;
DROP SEQUENCE IF EXISTS public.jos_menu_types_id_seq;
DROP TABLE IF EXISTS public.jos_menu_types;
DROP SEQUENCE IF EXISTS public.jos_menu_id_seq;
DROP TABLE IF EXISTS public.jos_menu;
DROP TABLE IF EXISTS public.jos_mail_templates;
DROP SEQUENCE IF EXISTS public.jos_languages_lang_id_seq;
DROP TABLE IF EXISTS public.jos_languages;
DROP SEQUENCE IF EXISTS public.jos_history_version_id_seq;
DROP TABLE IF EXISTS public.jos_history;
DROP SEQUENCE IF EXISTS public.jos_guidedtours_id_seq;
DROP TABLE IF EXISTS public.jos_guidedtours;
DROP SEQUENCE IF EXISTS public.jos_guidedtour_steps_id_seq;
DROP TABLE IF EXISTS public.jos_guidedtour_steps;
DROP SEQUENCE IF EXISTS public.jos_finder_types_id_seq;
DROP TABLE IF EXISTS public.jos_finder_types;
DROP TABLE IF EXISTS public.jos_finder_tokens_aggregate;
DROP TABLE IF EXISTS public.jos_finder_tokens;
DROP SEQUENCE IF EXISTS public.jos_finder_terms_term_id_seq;
DROP TABLE IF EXISTS public.jos_finder_terms_common;
DROP TABLE IF EXISTS public.jos_finder_terms;
DROP TABLE IF EXISTS public.jos_finder_taxonomy_map;
DROP SEQUENCE IF EXISTS public.jos_finder_taxonomy_id_seq;
DROP TABLE IF EXISTS public.jos_finder_taxonomy;
DROP TABLE IF EXISTS public.jos_finder_logging;
DROP TABLE IF EXISTS public.jos_finder_links_terms;
DROP SEQUENCE IF EXISTS public.jos_finder_links_link_id_seq;
DROP TABLE IF EXISTS public.jos_finder_links;
DROP SEQUENCE IF EXISTS public.jos_finder_filters_filter_id_seq;
DROP TABLE IF EXISTS public.jos_finder_filters;
DROP TABLE IF EXISTS public.jos_fields_values;
DROP SEQUENCE IF EXISTS public.jos_fields_id_seq;
DROP SEQUENCE IF EXISTS public.jos_fields_groups_id_seq;
DROP TABLE IF EXISTS public.jos_fields_groups;
DROP TABLE IF EXISTS public.jos_fields_categories;
DROP TABLE IF EXISTS public.jos_fields;
DROP SEQUENCE IF EXISTS public.jos_extensions_extension_id_seq;
DROP TABLE IF EXISTS public.jos_extensions;
DROP TABLE IF EXISTS public.jos_contentitem_tag_map;
DROP SEQUENCE IF EXISTS public.jos_content_types_type_id_seq;
DROP TABLE IF EXISTS public.jos_content_types;
DROP TABLE IF EXISTS public.jos_content_rating;
DROP SEQUENCE IF EXISTS public.jos_content_id_seq;
DROP TABLE IF EXISTS public.jos_content_frontpage;
DROP TABLE IF EXISTS public.jos_content;
DROP SEQUENCE IF EXISTS public.jos_contact_details_id_seq;
DROP TABLE IF EXISTS public.jos_contact_details;
DROP SEQUENCE IF EXISTS public.jos_categories_id_seq;
DROP TABLE IF EXISTS public.jos_categories;
DROP SEQUENCE IF EXISTS public.jos_banners_id_seq;
DROP TABLE IF EXISTS public.jos_banners;
DROP TABLE IF EXISTS public.jos_banner_tracks;
DROP SEQUENCE IF EXISTS public.jos_banner_clients_id_seq;
DROP TABLE IF EXISTS public.jos_banner_clients;
DROP TABLE IF EXISTS public.jos_associations;
DROP SEQUENCE IF EXISTS public.jos_assets_id_seq;
DROP TABLE IF EXISTS public.jos_assets;
DROP TABLE IF EXISTS public.jos_action_logs_users;
DROP SEQUENCE IF EXISTS public.jos_action_logs_id_seq;
DROP SEQUENCE IF EXISTS public.jos_action_logs_extensions_id_seq;
DROP TABLE IF EXISTS public.jos_action_logs_extensions;
DROP TABLE IF EXISTS public.jos_action_logs;
DROP SEQUENCE IF EXISTS public.jos_action_log_config_id_seq;
DROP TABLE IF EXISTS public.jos_action_log_config;
DROP SEQUENCE IF EXISTS public.actividad_id_seq;
DROP TABLE IF EXISTS public.actividad;
DROP FUNCTION IF EXISTS public.soundex(input text);
--
-- Name: soundex(text); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION public.soundex(input text) RETURNS text
    LANGUAGE plpgsql IMMUTABLE STRICT COST 500
    AS $$
DECLARE
  soundex text = '';
  char text;
  symbol text;
  last_symbol text = '';
  pos int = 1;
BEGIN
  WHILE length(soundex) < 4 LOOP
    char = upper(substr(input, pos, 1));
    pos = pos + 1;
    CASE char
    WHEN '' THEN
      -- End of input string
      IF soundex = '' THEN
        RETURN '';
      ELSE
        RETURN rpad(soundex, 4, '0');
      END IF;
    WHEN 'B', 'F', 'P', 'V' THEN
      symbol = '1';
    WHEN 'C', 'G', 'J', 'K', 'Q', 'S', 'X', 'Z' THEN
      symbol = '2';
    WHEN 'D', 'T' THEN
      symbol = '3';
    WHEN 'L' THEN
      symbol = '4';
    WHEN 'M', 'N' THEN
      symbol = '5';
    WHEN 'R' THEN
      symbol = '6';
    ELSE
      -- Not a consonant; no output, but next similar consonant will be re-recorded
      symbol = '';
    END CASE;

    IF soundex = '' THEN
      -- First character; only accept strictly English ASCII characters
      IF char ~>=~ 'A' AND char ~<=~ 'Z' THEN
        soundex = char;
        last_symbol = symbol;
      END IF;
    ELSIF last_symbol != symbol THEN
      soundex = soundex || symbol;
      last_symbol = symbol;
    END IF;
  END LOOP;

  RETURN soundex;
END;
$$;


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: actividad; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.actividad (
    id integer NOT NULL,
    fecha timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    servicio character varying(50) NOT NULL,
    tipo_evento character varying(50) NOT NULL,
    codigo_http integer,
    ip_origen character varying(50),
    descripcion text
);


--
-- Name: actividad_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.actividad_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: actividad_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.actividad_id_seq OWNED BY public.actividad.id;


--
-- Name: jos_action_log_config; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.jos_action_log_config (
    id integer NOT NULL,
    type_title character varying(255) DEFAULT ''::character varying NOT NULL,
    type_alias character varying(255) DEFAULT ''::character varying NOT NULL,
    id_holder character varying(255),
    title_holder character varying(255),
    table_name character varying(255),
    text_prefix character varying(255)
);


--
-- Name: jos_action_log_config_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.jos_action_log_config_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: jos_action_log_config_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.jos_action_log_config_id_seq OWNED BY public.jos_action_log_config.id;


--
-- Name: jos_action_logs; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.jos_action_logs (
    id integer NOT NULL,
    message_language_key character varying(255) DEFAULT ''::character varying NOT NULL,
    message text NOT NULL,
    log_date timestamp without time zone NOT NULL,
    extension character varying(50) DEFAULT ''::character varying NOT NULL,
    user_id integer DEFAULT 0 NOT NULL,
    item_id integer DEFAULT 0 NOT NULL,
    ip_address character varying(40) DEFAULT '0.0.0.0'::character varying NOT NULL
);


--
-- Name: jos_action_logs_extensions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.jos_action_logs_extensions (
    id integer NOT NULL,
    extension character varying(50) DEFAULT ''::character varying NOT NULL
);


--
-- Name: jos_action_logs_extensions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.jos_action_logs_extensions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: jos_action_logs_extensions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.jos_action_logs_extensions_id_seq OWNED BY public.jos_action_logs_extensions.id;


--
-- Name: jos_action_logs_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.jos_action_logs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: jos_action_logs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.jos_action_logs_id_seq OWNED BY public.jos_action_logs.id;


--
-- Name: jos_action_logs_users; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.jos_action_logs_users (
    user_id integer NOT NULL,
    notify integer NOT NULL,
    extensions text NOT NULL
);


--
-- Name: jos_assets; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.jos_assets (
    id integer NOT NULL,
    parent_id bigint DEFAULT 0 NOT NULL,
    lft bigint DEFAULT 0 NOT NULL,
    rgt bigint DEFAULT 0 NOT NULL,
    level integer NOT NULL,
    name character varying(50) NOT NULL,
    title character varying(100) NOT NULL,
    rules character varying(5120) NOT NULL
);


--
-- Name: COLUMN jos_assets.id; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.jos_assets.id IS 'Primary Key';


--
-- Name: COLUMN jos_assets.parent_id; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.jos_assets.parent_id IS 'Nested set parent.';


--
-- Name: COLUMN jos_assets.lft; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.jos_assets.lft IS 'Nested set lft.';


--
-- Name: COLUMN jos_assets.rgt; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.jos_assets.rgt IS 'Nested set rgt.';


--
-- Name: COLUMN jos_assets.level; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.jos_assets.level IS 'The cached level in the nested tree.';


--
-- Name: COLUMN jos_assets.name; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.jos_assets.name IS 'The unique name for the asset.';


--
-- Name: COLUMN jos_assets.title; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.jos_assets.title IS 'The descriptive title for the asset.';


--
-- Name: COLUMN jos_assets.rules; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.jos_assets.rules IS 'JSON encoded access control.';


--
-- Name: jos_assets_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.jos_assets_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: jos_assets_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.jos_assets_id_seq OWNED BY public.jos_assets.id;


--
-- Name: jos_associations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.jos_associations (
    id integer NOT NULL,
    context character varying(50) NOT NULL,
    key character(32) NOT NULL
);


--
-- Name: COLUMN jos_associations.id; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.jos_associations.id IS 'A reference to the associated item.';


--
-- Name: COLUMN jos_associations.context; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.jos_associations.context IS 'The context of the associated item.';


--
-- Name: COLUMN jos_associations.key; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.jos_associations.key IS 'The key for the association computed from an md5 on associated ids.';


--
-- Name: jos_banner_clients; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.jos_banner_clients (
    id integer NOT NULL,
    name character varying(255) DEFAULT ''::character varying NOT NULL,
    contact character varying(255) DEFAULT ''::character varying NOT NULL,
    email character varying(255) DEFAULT ''::character varying NOT NULL,
    extrainfo text NOT NULL,
    state smallint DEFAULT 0 NOT NULL,
    checked_out integer,
    checked_out_time timestamp without time zone,
    metakey text,
    own_prefix smallint DEFAULT 0 NOT NULL,
    metakey_prefix character varying(255) DEFAULT ''::character varying NOT NULL,
    purchase_type smallint DEFAULT '-1'::integer NOT NULL,
    track_clicks smallint DEFAULT '-1'::integer NOT NULL,
    track_impressions smallint DEFAULT '-1'::integer NOT NULL
);


--
-- Name: jos_banner_clients_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.jos_banner_clients_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: jos_banner_clients_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.jos_banner_clients_id_seq OWNED BY public.jos_banner_clients.id;


--
-- Name: jos_banner_tracks; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.jos_banner_tracks (
    track_date timestamp without time zone NOT NULL,
    track_type bigint NOT NULL,
    banner_id bigint NOT NULL,
    count bigint DEFAULT 0 NOT NULL
);


--
-- Name: jos_banners; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.jos_banners (
    id integer NOT NULL,
    cid bigint DEFAULT 0 NOT NULL,
    type bigint DEFAULT 0 NOT NULL,
    name character varying(255) DEFAULT ''::character varying NOT NULL,
    alias character varying(255) DEFAULT ''::character varying NOT NULL,
    imptotal bigint DEFAULT 0 NOT NULL,
    impmade bigint DEFAULT 0 NOT NULL,
    clicks bigint DEFAULT 0 NOT NULL,
    clickurl character varying(2048) DEFAULT ''::character varying NOT NULL,
    state smallint DEFAULT 0 NOT NULL,
    catid bigint DEFAULT 0 NOT NULL,
    description text NOT NULL,
    custombannercode character varying(2048) NOT NULL,
    sticky smallint DEFAULT 0 NOT NULL,
    ordering bigint DEFAULT 0 NOT NULL,
    metakey text,
    params text NOT NULL,
    own_prefix smallint DEFAULT 0 NOT NULL,
    metakey_prefix character varying(255) DEFAULT ''::character varying NOT NULL,
    purchase_type smallint DEFAULT '-1'::integer NOT NULL,
    track_clicks smallint DEFAULT '-1'::integer NOT NULL,
    track_impressions smallint DEFAULT '-1'::integer NOT NULL,
    checked_out integer,
    checked_out_time timestamp without time zone,
    publish_up timestamp without time zone,
    publish_down timestamp without time zone,
    reset timestamp without time zone,
    created timestamp without time zone NOT NULL,
    language character varying(7) DEFAULT ''::character varying NOT NULL,
    created_by bigint DEFAULT 0 NOT NULL,
    created_by_alias character varying(255) DEFAULT ''::character varying NOT NULL,
    modified timestamp without time zone NOT NULL,
    modified_by bigint DEFAULT 0 NOT NULL,
    version bigint DEFAULT 1 NOT NULL
);


--
-- Name: jos_banners_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.jos_banners_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: jos_banners_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.jos_banners_id_seq OWNED BY public.jos_banners.id;


--
-- Name: jos_categories; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.jos_categories (
    id integer NOT NULL,
    asset_id bigint DEFAULT 0 NOT NULL,
    parent_id integer DEFAULT 0 NOT NULL,
    lft bigint DEFAULT 0 NOT NULL,
    rgt bigint DEFAULT 0 NOT NULL,
    level integer DEFAULT 0 NOT NULL,
    path character varying(255) DEFAULT ''::character varying NOT NULL,
    extension character varying(50) DEFAULT ''::character varying NOT NULL,
    title character varying(255) DEFAULT ''::character varying NOT NULL,
    alias character varying(255) DEFAULT ''::character varying NOT NULL,
    note character varying(255) DEFAULT ''::character varying NOT NULL,
    description text,
    published smallint DEFAULT 0 NOT NULL,
    checked_out integer,
    checked_out_time timestamp without time zone,
    access bigint DEFAULT 0 NOT NULL,
    params text,
    metadesc character varying(1024) DEFAULT ''::character varying NOT NULL,
    metakey character varying(1024) DEFAULT ''::character varying NOT NULL,
    metadata character varying(2048) DEFAULT ''::character varying NOT NULL,
    created_user_id integer DEFAULT 0 NOT NULL,
    created_time timestamp without time zone NOT NULL,
    modified_user_id integer DEFAULT 0 NOT NULL,
    modified_time timestamp without time zone NOT NULL,
    hits integer DEFAULT 0 NOT NULL,
    language character varying(7) DEFAULT ''::character varying NOT NULL,
    version bigint DEFAULT 1 NOT NULL
);


--
-- Name: COLUMN jos_categories.asset_id; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.jos_categories.asset_id IS 'FK to the #__assets table.';


--
-- Name: COLUMN jos_categories.metadesc; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.jos_categories.metadesc IS 'The meta description for the page.';


--
-- Name: COLUMN jos_categories.metakey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.jos_categories.metakey IS 'The keywords for the page.';


--
-- Name: COLUMN jos_categories.metadata; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.jos_categories.metadata IS 'JSON encoded metadata properties.';


--
-- Name: jos_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.jos_categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: jos_categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.jos_categories_id_seq OWNED BY public.jos_categories.id;


--
-- Name: jos_contact_details; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.jos_contact_details (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    alias character varying(255) NOT NULL,
    con_position character varying(255),
    address text,
    suburb character varying(100),
    state character varying(100),
    country character varying(100),
    postcode character varying(100),
    telephone character varying(255),
    fax character varying(255),
    misc text,
    image character varying(255),
    email_to character varying(255),
    default_con smallint DEFAULT 0 NOT NULL,
    published smallint DEFAULT 0 NOT NULL,
    checked_out integer,
    checked_out_time timestamp without time zone,
    ordering bigint DEFAULT 0 NOT NULL,
    params text NOT NULL,
    user_id bigint DEFAULT 0 NOT NULL,
    catid bigint DEFAULT 0 NOT NULL,
    access bigint DEFAULT 0 NOT NULL,
    mobile character varying(255) DEFAULT ''::character varying NOT NULL,
    webpage character varying(255) DEFAULT ''::character varying NOT NULL,
    sortname1 character varying(255) DEFAULT ''::character varying NOT NULL,
    sortname2 character varying(255) DEFAULT ''::character varying NOT NULL,
    sortname3 character varying(255) DEFAULT ''::character varying NOT NULL,
    language character varying(7) NOT NULL,
    created timestamp without time zone NOT NULL,
    created_by integer DEFAULT 0 NOT NULL,
    created_by_alias character varying(255) DEFAULT ''::character varying NOT NULL,
    modified timestamp without time zone NOT NULL,
    modified_by integer DEFAULT 0 NOT NULL,
    metakey text,
    metadesc text NOT NULL,
    metadata text NOT NULL,
    featured smallint DEFAULT 0 NOT NULL,
    publish_up timestamp without time zone,
    publish_down timestamp without time zone,
    version bigint DEFAULT 1 NOT NULL,
    hits bigint DEFAULT 0 NOT NULL
);


--
-- Name: COLUMN jos_contact_details.featured; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.jos_contact_details.featured IS 'Set if contact is featured.';


--
-- Name: jos_contact_details_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.jos_contact_details_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: jos_contact_details_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.jos_contact_details_id_seq OWNED BY public.jos_contact_details.id;


--
-- Name: jos_content; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.jos_content (
    id integer NOT NULL,
    asset_id bigint DEFAULT 0 NOT NULL,
    title character varying(255) DEFAULT ''::character varying NOT NULL,
    alias character varying(255) DEFAULT ''::character varying NOT NULL,
    introtext text NOT NULL,
    fulltext text NOT NULL,
    state smallint DEFAULT 0 NOT NULL,
    catid bigint DEFAULT 0 NOT NULL,
    created timestamp without time zone NOT NULL,
    created_by bigint DEFAULT 0 NOT NULL,
    created_by_alias character varying(255) DEFAULT ''::character varying NOT NULL,
    modified timestamp without time zone NOT NULL,
    modified_by bigint DEFAULT 0 NOT NULL,
    checked_out integer,
    checked_out_time timestamp without time zone,
    publish_up timestamp without time zone,
    publish_down timestamp without time zone,
    images text NOT NULL,
    urls text NOT NULL,
    attribs character varying(5120) NOT NULL,
    version bigint DEFAULT 1 NOT NULL,
    ordering bigint DEFAULT 0 NOT NULL,
    metakey text,
    metadesc text NOT NULL,
    access bigint DEFAULT 0 NOT NULL,
    hits bigint DEFAULT 0 NOT NULL,
    metadata text NOT NULL,
    featured smallint DEFAULT 0 NOT NULL,
    language character varying(7) DEFAULT ''::character varying NOT NULL,
    note character varying(255) DEFAULT ''::character varying NOT NULL
);


--
-- Name: COLUMN jos_content.asset_id; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.jos_content.asset_id IS 'FK to the #__assets table.';


--
-- Name: COLUMN jos_content.featured; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.jos_content.featured IS 'Set if article is featured.';


--
-- Name: COLUMN jos_content.language; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.jos_content.language IS 'The language code for the article.';


--
-- Name: jos_content_frontpage; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.jos_content_frontpage (
    content_id bigint DEFAULT 0 NOT NULL,
    ordering bigint DEFAULT 0 NOT NULL,
    featured_up timestamp without time zone,
    featured_down timestamp without time zone
);


--
-- Name: jos_content_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.jos_content_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: jos_content_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.jos_content_id_seq OWNED BY public.jos_content.id;


--
-- Name: jos_content_rating; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.jos_content_rating (
    content_id bigint DEFAULT 0 NOT NULL,
    rating_sum bigint DEFAULT 0 NOT NULL,
    rating_count bigint DEFAULT 0 NOT NULL,
    lastip character varying(50) DEFAULT ''::character varying NOT NULL
);


--
-- Name: jos_content_types; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.jos_content_types (
    type_id integer NOT NULL,
    type_title character varying(255) DEFAULT ''::character varying NOT NULL,
    type_alias character varying(255) DEFAULT ''::character varying NOT NULL,
    "table" character varying(2048) DEFAULT ''::character varying NOT NULL,
    rules text NOT NULL,
    field_mappings text NOT NULL,
    router character varying(255) DEFAULT ''::character varying NOT NULL,
    content_history_options character varying(5120) DEFAULT NULL::character varying
);


--
-- Name: COLUMN jos_content_types.content_history_options; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.jos_content_types.content_history_options IS 'JSON string for com_contenthistory options';


--
-- Name: jos_content_types_type_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.jos_content_types_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: jos_content_types_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.jos_content_types_type_id_seq OWNED BY public.jos_content_types.type_id;


--
-- Name: jos_contentitem_tag_map; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.jos_contentitem_tag_map (
    type_alias character varying(255) DEFAULT ''::character varying NOT NULL,
    core_content_id integer NOT NULL,
    content_item_id integer NOT NULL,
    tag_id integer NOT NULL,
    tag_date timestamp without time zone DEFAULT '1970-01-01 00:00:00'::timestamp without time zone NOT NULL,
    type_id integer NOT NULL
);


--
-- Name: COLUMN jos_contentitem_tag_map.core_content_id; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.jos_contentitem_tag_map.core_content_id IS 'PK from the core content table';


--
-- Name: COLUMN jos_contentitem_tag_map.content_item_id; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.jos_contentitem_tag_map.content_item_id IS 'PK from the content type table';


--
-- Name: COLUMN jos_contentitem_tag_map.tag_id; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.jos_contentitem_tag_map.tag_id IS 'PK from the tag table';


--
-- Name: COLUMN jos_contentitem_tag_map.tag_date; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.jos_contentitem_tag_map.tag_date IS 'Date of most recent save for this tag-item';


--
-- Name: COLUMN jos_contentitem_tag_map.type_id; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.jos_contentitem_tag_map.type_id IS 'PK from the content_type table';


--
-- Name: jos_extensions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.jos_extensions (
    extension_id integer NOT NULL,
    package_id bigint DEFAULT 0 NOT NULL,
    name character varying(100) NOT NULL,
    type character varying(20) NOT NULL,
    element character varying(100) NOT NULL,
    changelogurl text,
    folder character varying(100) NOT NULL,
    client_id smallint NOT NULL,
    enabled smallint DEFAULT 0 NOT NULL,
    access bigint DEFAULT 1 NOT NULL,
    protected smallint DEFAULT 0 NOT NULL,
    locked smallint DEFAULT 0 NOT NULL,
    manifest_cache text NOT NULL,
    params text NOT NULL,
    custom_data text NOT NULL,
    checked_out integer,
    checked_out_time timestamp without time zone,
    ordering bigint DEFAULT 0,
    state bigint DEFAULT 0,
    note character varying(255)
);


--
-- Name: COLUMN jos_extensions.package_id; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.jos_extensions.package_id IS 'Parent package ID for extensions installed as a package.';


--
-- Name: COLUMN jos_extensions.protected; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.jos_extensions.protected IS 'Flag to indicate if the extension is protected. Protected extensions cannot be disabled.';


--
-- Name: COLUMN jos_extensions.locked; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.jos_extensions.locked IS 'Flag to indicate if the extension is locked. Locked extensions cannot be uninstalled.';


--
-- Name: jos_extensions_extension_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.jos_extensions_extension_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: jos_extensions_extension_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.jos_extensions_extension_id_seq OWNED BY public.jos_extensions.extension_id;


--
-- Name: jos_fields; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.jos_fields (
    id integer NOT NULL,
    asset_id bigint DEFAULT 0 NOT NULL,
    context character varying(255) DEFAULT ''::character varying NOT NULL,
    group_id bigint DEFAULT 0 NOT NULL,
    title character varying(255) DEFAULT ''::character varying NOT NULL,
    name character varying(255) DEFAULT ''::character varying NOT NULL,
    label character varying(255) DEFAULT ''::character varying NOT NULL,
    default_value text,
    type character varying(255) DEFAULT 'text'::character varying NOT NULL,
    note character varying(255) DEFAULT ''::character varying NOT NULL,
    description text NOT NULL,
    state smallint DEFAULT 0 NOT NULL,
    required smallint DEFAULT 0 NOT NULL,
    only_use_in_subform smallint DEFAULT 0 NOT NULL,
    checked_out integer,
    checked_out_time timestamp without time zone,
    ordering bigint DEFAULT 0 NOT NULL,
    params text NOT NULL,
    fieldparams text NOT NULL,
    language character varying(7) DEFAULT ''::character varying NOT NULL,
    created_time timestamp without time zone NOT NULL,
    created_user_id bigint DEFAULT 0 NOT NULL,
    modified_time timestamp without time zone NOT NULL,
    modified_by bigint DEFAULT 0 NOT NULL,
    access bigint DEFAULT 0 NOT NULL
);


--
-- Name: jos_fields_categories; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.jos_fields_categories (
    field_id bigint DEFAULT 0 NOT NULL,
    category_id bigint DEFAULT 0 NOT NULL
);


--
-- Name: jos_fields_groups; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.jos_fields_groups (
    id integer NOT NULL,
    asset_id bigint DEFAULT 0 NOT NULL,
    context character varying(255) DEFAULT ''::character varying NOT NULL,
    title character varying(255) DEFAULT ''::character varying NOT NULL,
    note character varying(255) DEFAULT ''::character varying NOT NULL,
    description text NOT NULL,
    state smallint DEFAULT 0 NOT NULL,
    checked_out integer,
    checked_out_time timestamp without time zone,
    ordering integer DEFAULT 0 NOT NULL,
    params text NOT NULL,
    language character varying(7) DEFAULT ''::character varying NOT NULL,
    created timestamp without time zone NOT NULL,
    created_by bigint DEFAULT 0 NOT NULL,
    modified timestamp without time zone NOT NULL,
    modified_by bigint DEFAULT 0 NOT NULL,
    access bigint DEFAULT 1 NOT NULL
);


--
-- Name: jos_fields_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.jos_fields_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: jos_fields_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.jos_fields_groups_id_seq OWNED BY public.jos_fields_groups.id;


--
-- Name: jos_fields_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.jos_fields_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: jos_fields_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.jos_fields_id_seq OWNED BY public.jos_fields.id;


--
-- Name: jos_fields_values; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.jos_fields_values (
    field_id bigint DEFAULT 0 NOT NULL,
    item_id character varying(255) DEFAULT ''::character varying NOT NULL,
    value text
);


--
-- Name: jos_finder_filters; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.jos_finder_filters (
    filter_id integer NOT NULL,
    title character varying(255) NOT NULL,
    alias character varying(255) NOT NULL,
    state smallint DEFAULT 1 NOT NULL,
    created timestamp without time zone NOT NULL,
    created_by integer DEFAULT 0 NOT NULL,
    created_by_alias character varying(255) DEFAULT ''::character varying NOT NULL,
    modified timestamp without time zone NOT NULL,
    modified_by integer DEFAULT 0 NOT NULL,
    checked_out integer,
    checked_out_time timestamp without time zone,
    map_count integer DEFAULT 0 NOT NULL,
    data text,
    params text
);


--
-- Name: jos_finder_filters_filter_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.jos_finder_filters_filter_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: jos_finder_filters_filter_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.jos_finder_filters_filter_id_seq OWNED BY public.jos_finder_filters.filter_id;


--
-- Name: jos_finder_links; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.jos_finder_links (
    link_id integer NOT NULL,
    url character varying(255) NOT NULL,
    route character varying(400) NOT NULL,
    title character varying(400) DEFAULT NULL::character varying,
    description text,
    indexdate timestamp without time zone NOT NULL,
    md5sum character varying(32) DEFAULT NULL::character varying,
    published smallint DEFAULT 1 NOT NULL,
    state integer DEFAULT 1 NOT NULL,
    access integer DEFAULT 0 NOT NULL,
    language character varying(7) DEFAULT ''::character varying NOT NULL,
    publish_start_date timestamp without time zone,
    publish_end_date timestamp without time zone,
    start_date timestamp without time zone,
    end_date timestamp without time zone,
    list_price numeric(8,2) DEFAULT 0 NOT NULL,
    sale_price numeric(8,2) DEFAULT 0 NOT NULL,
    type_id bigint NOT NULL,
    object bytea
);


--
-- Name: jos_finder_links_link_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.jos_finder_links_link_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: jos_finder_links_link_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.jos_finder_links_link_id_seq OWNED BY public.jos_finder_links.link_id;


--
-- Name: jos_finder_links_terms; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.jos_finder_links_terms (
    link_id integer NOT NULL,
    term_id integer NOT NULL,
    weight numeric(8,2) DEFAULT 0 NOT NULL
);


--
-- Name: jos_finder_logging; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.jos_finder_logging (
    searchterm character varying(255) DEFAULT ''::character varying NOT NULL,
    md5sum character varying(32) DEFAULT ''::character varying NOT NULL,
    query bytea NOT NULL,
    hits integer DEFAULT 1 NOT NULL,
    results integer DEFAULT 0 NOT NULL
);


--
-- Name: jos_finder_taxonomy; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.jos_finder_taxonomy (
    id integer NOT NULL,
    parent_id integer DEFAULT 0 NOT NULL,
    lft integer DEFAULT 0 NOT NULL,
    rgt integer DEFAULT 0 NOT NULL,
    level integer DEFAULT 0 NOT NULL,
    path character varying(400) DEFAULT ''::character varying NOT NULL,
    title character varying(255) DEFAULT ''::character varying NOT NULL,
    alias character varying(400) DEFAULT ''::character varying NOT NULL,
    state smallint DEFAULT 1 NOT NULL,
    access smallint DEFAULT 1 NOT NULL,
    language character varying(7) DEFAULT ''::character varying NOT NULL
);


--
-- Name: jos_finder_taxonomy_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.jos_finder_taxonomy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: jos_finder_taxonomy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.jos_finder_taxonomy_id_seq OWNED BY public.jos_finder_taxonomy.id;


--
-- Name: jos_finder_taxonomy_map; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.jos_finder_taxonomy_map (
    link_id integer NOT NULL,
    node_id integer NOT NULL
);


--
-- Name: jos_finder_terms; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.jos_finder_terms (
    term_id integer NOT NULL,
    term character varying(75) NOT NULL,
    stem character varying(75) DEFAULT ''::character varying NOT NULL,
    common smallint DEFAULT 0 NOT NULL,
    phrase smallint DEFAULT 0 NOT NULL,
    weight numeric(8,2) DEFAULT 0 NOT NULL,
    soundex character varying(75) DEFAULT ''::character varying NOT NULL,
    links integer DEFAULT 0 NOT NULL,
    language character varying(7) DEFAULT ''::character varying NOT NULL
);


--
-- Name: jos_finder_terms_common; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.jos_finder_terms_common (
    term character varying(75) NOT NULL,
    language character varying(7) DEFAULT ''::character varying NOT NULL,
    custom integer DEFAULT 0 NOT NULL
);


--
-- Name: jos_finder_terms_term_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.jos_finder_terms_term_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: jos_finder_terms_term_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.jos_finder_terms_term_id_seq OWNED BY public.jos_finder_terms.term_id;


--
-- Name: jos_finder_tokens; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.jos_finder_tokens (
    term character varying(75) NOT NULL,
    stem character varying(75) DEFAULT ''::character varying NOT NULL,
    common smallint DEFAULT 0 NOT NULL,
    phrase smallint DEFAULT 0 NOT NULL,
    weight numeric(8,2) DEFAULT 1 NOT NULL,
    context smallint DEFAULT 2 NOT NULL,
    language character varying(7) DEFAULT ''::character varying NOT NULL
);


--
-- Name: jos_finder_tokens_aggregate; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.jos_finder_tokens_aggregate (
    term_id integer NOT NULL,
    term character varying(75) NOT NULL,
    stem character varying(75) DEFAULT ''::character varying NOT NULL,
    common smallint DEFAULT 0 NOT NULL,
    phrase smallint DEFAULT 0 NOT NULL,
    term_weight numeric(8,2) DEFAULT 0 NOT NULL,
    context smallint DEFAULT 2 NOT NULL,
    context_weight numeric(8,2) DEFAULT 0 NOT NULL,
    total_weight numeric(8,2) DEFAULT 0 NOT NULL,
    language character varying(7) DEFAULT ''::character varying NOT NULL
);


--
-- Name: jos_finder_types; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.jos_finder_types (
    id integer NOT NULL,
    title character varying(100) NOT NULL,
    mime character varying(100) DEFAULT ''::character varying NOT NULL
);


--
-- Name: jos_finder_types_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.jos_finder_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: jos_finder_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.jos_finder_types_id_seq OWNED BY public.jos_finder_types.id;


--
-- Name: jos_guidedtour_steps; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.jos_guidedtour_steps (
    id integer NOT NULL,
    tour_id bigint DEFAULT 0 NOT NULL,
    title character varying(255) NOT NULL,
    published smallint DEFAULT 0 NOT NULL,
    description text NOT NULL,
    ordering bigint DEFAULT 0 NOT NULL,
    "position" character varying(255) NOT NULL,
    target character varying(255) NOT NULL,
    type bigint NOT NULL,
    interactive_type bigint DEFAULT 1 NOT NULL,
    url character varying(255) NOT NULL,
    created timestamp without time zone NOT NULL,
    created_by bigint DEFAULT 0 NOT NULL,
    modified timestamp without time zone NOT NULL,
    modified_by bigint DEFAULT 0 NOT NULL,
    checked_out_time timestamp without time zone,
    checked_out integer,
    language character varying(7) DEFAULT ''::character varying NOT NULL,
    note character varying(255) DEFAULT ''::character varying NOT NULL,
    params text
);


--
-- Name: jos_guidedtour_steps_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.jos_guidedtour_steps_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: jos_guidedtour_steps_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.jos_guidedtour_steps_id_seq OWNED BY public.jos_guidedtour_steps.id;


--
-- Name: jos_guidedtours; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.jos_guidedtours (
    id integer NOT NULL,
    title character varying(255) DEFAULT ''::character varying NOT NULL,
    uid character varying(255) DEFAULT ''::character varying NOT NULL,
    description text NOT NULL,
    ordering bigint DEFAULT 0 NOT NULL,
    extensions text NOT NULL,
    url character varying(255) NOT NULL,
    created timestamp without time zone NOT NULL,
    created_by bigint DEFAULT 0 NOT NULL,
    modified timestamp without time zone NOT NULL,
    modified_by bigint DEFAULT 0 NOT NULL,
    checked_out_time timestamp without time zone,
    checked_out integer,
    published smallint DEFAULT 0 NOT NULL,
    language character varying(7) DEFAULT ''::character varying NOT NULL,
    note character varying(255) DEFAULT ''::character varying NOT NULL,
    access bigint DEFAULT 0 NOT NULL,
    autostart integer DEFAULT 0 NOT NULL
);


--
-- Name: jos_guidedtours_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.jos_guidedtours_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: jos_guidedtours_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.jos_guidedtours_id_seq OWNED BY public.jos_guidedtours.id;


--
-- Name: jos_history; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.jos_history (
    version_id integer NOT NULL,
    item_id character varying(50) NOT NULL,
    version_note character varying(255) DEFAULT ''::character varying NOT NULL,
    save_date timestamp with time zone NOT NULL,
    editor_user_id integer DEFAULT 0 NOT NULL,
    character_count integer DEFAULT 0 NOT NULL,
    sha1_hash character varying(50) DEFAULT ''::character varying NOT NULL,
    version_data text NOT NULL,
    keep_forever smallint DEFAULT 0 NOT NULL,
    is_current smallint DEFAULT 0 NOT NULL,
    is_legacy smallint DEFAULT 0 NOT NULL
);


--
-- Name: COLUMN jos_history.version_note; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.jos_history.version_note IS 'Optional version name';


--
-- Name: COLUMN jos_history.character_count; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.jos_history.character_count IS 'Number of characters in this version.';


--
-- Name: COLUMN jos_history.sha1_hash; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.jos_history.sha1_hash IS 'SHA1 hash of the version_data column.';


--
-- Name: COLUMN jos_history.version_data; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.jos_history.version_data IS 'json-encoded string of version data';


--
-- Name: COLUMN jos_history.keep_forever; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.jos_history.keep_forever IS '0=auto delete; 1=keep';


--
-- Name: jos_history_version_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.jos_history_version_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: jos_history_version_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.jos_history_version_id_seq OWNED BY public.jos_history.version_id;


--
-- Name: jos_languages; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.jos_languages (
    lang_id integer NOT NULL,
    asset_id bigint DEFAULT 0 NOT NULL,
    lang_code character varying(7) NOT NULL,
    title character varying(50) NOT NULL,
    title_native character varying(50) NOT NULL,
    sef character varying(50) NOT NULL,
    image character varying(50) NOT NULL,
    description character varying(512) NOT NULL,
    metakey text,
    metadesc text NOT NULL,
    sitename character varying(1024) DEFAULT ''::character varying NOT NULL,
    published bigint DEFAULT 0 NOT NULL,
    access integer DEFAULT 0 NOT NULL,
    ordering bigint DEFAULT 0 NOT NULL
);


--
-- Name: jos_languages_lang_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.jos_languages_lang_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: jos_languages_lang_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.jos_languages_lang_id_seq OWNED BY public.jos_languages.lang_id;


--
-- Name: jos_mail_templates; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.jos_mail_templates (
    template_id character varying(127) DEFAULT ''::character varying NOT NULL,
    extension character varying(127) DEFAULT ''::character varying NOT NULL,
    language character(7) DEFAULT ''::bpchar NOT NULL,
    subject character varying(255) DEFAULT ''::character varying NOT NULL,
    body text NOT NULL,
    htmlbody text NOT NULL,
    attachments text NOT NULL,
    params text NOT NULL
);


--
-- Name: jos_menu; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.jos_menu (
    id integer NOT NULL,
    menutype character varying(24) NOT NULL,
    title character varying(255) NOT NULL,
    alias character varying(255) NOT NULL,
    note character varying(255) DEFAULT ''::character varying NOT NULL,
    path character varying(1024) DEFAULT ''::character varying NOT NULL,
    link character varying(1024) NOT NULL,
    type character varying(16) NOT NULL,
    published smallint DEFAULT 0 NOT NULL,
    parent_id integer DEFAULT 1 NOT NULL,
    level integer DEFAULT 0 NOT NULL,
    component_id integer DEFAULT 0 NOT NULL,
    checked_out integer,
    checked_out_time timestamp without time zone,
    "browserNav" smallint DEFAULT 0 NOT NULL,
    access bigint DEFAULT 0 NOT NULL,
    img character varying(255) DEFAULT ''::character varying NOT NULL,
    template_style_id integer DEFAULT 0 NOT NULL,
    params text NOT NULL,
    lft bigint DEFAULT 0 NOT NULL,
    rgt bigint DEFAULT 0 NOT NULL,
    home smallint DEFAULT 0 NOT NULL,
    language character varying(7) DEFAULT ''::character varying NOT NULL,
    client_id smallint DEFAULT 0 NOT NULL,
    publish_up timestamp without time zone,
    publish_down timestamp without time zone
);


--
-- Name: COLUMN jos_menu.menutype; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.jos_menu.menutype IS 'The type of menu this item belongs to. FK to #__menu_types.menutype';


--
-- Name: COLUMN jos_menu.title; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.jos_menu.title IS 'The display title of the menu item.';


--
-- Name: COLUMN jos_menu.alias; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.jos_menu.alias IS 'The SEF alias of the menu item.';


--
-- Name: COLUMN jos_menu.path; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.jos_menu.path IS 'The computed path of the menu item based on the alias field.';


--
-- Name: COLUMN jos_menu.link; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.jos_menu.link IS 'The actually link the menu item refers to.';


--
-- Name: COLUMN jos_menu.type; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.jos_menu.type IS 'The type of link: Component, URL, Alias, Separator';


--
-- Name: COLUMN jos_menu.published; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.jos_menu.published IS 'The published state of the menu link.';


--
-- Name: COLUMN jos_menu.parent_id; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.jos_menu.parent_id IS 'The parent menu item in the menu tree.';


--
-- Name: COLUMN jos_menu.level; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.jos_menu.level IS 'The relative level in the tree.';


--
-- Name: COLUMN jos_menu.component_id; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.jos_menu.component_id IS 'FK to #__extensions.id';


--
-- Name: COLUMN jos_menu.checked_out; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.jos_menu.checked_out IS 'FK to #__users.id';


--
-- Name: COLUMN jos_menu.checked_out_time; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.jos_menu.checked_out_time IS 'The time the menu item was checked out.';


--
-- Name: COLUMN jos_menu."browserNav"; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.jos_menu."browserNav" IS 'The click behaviour of the link.';


--
-- Name: COLUMN jos_menu.access; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.jos_menu.access IS 'The access level required to view the menu item.';


--
-- Name: COLUMN jos_menu.img; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.jos_menu.img IS 'The image of the menu item.';


--
-- Name: COLUMN jos_menu.params; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.jos_menu.params IS 'JSON encoded data for the menu item.';


--
-- Name: COLUMN jos_menu.lft; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.jos_menu.lft IS 'Nested set lft.';


--
-- Name: COLUMN jos_menu.rgt; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.jos_menu.rgt IS 'Nested set rgt.';


--
-- Name: COLUMN jos_menu.home; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.jos_menu.home IS 'Indicates if this menu item is the home or default page.';


--
-- Name: jos_menu_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.jos_menu_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: jos_menu_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.jos_menu_id_seq OWNED BY public.jos_menu.id;


--
-- Name: jos_menu_types; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.jos_menu_types (
    id integer NOT NULL,
    asset_id bigint DEFAULT 0 NOT NULL,
    menutype character varying(24) NOT NULL,
    title character varying(48) NOT NULL,
    description character varying(255) DEFAULT ''::character varying NOT NULL,
    client_id integer DEFAULT 0 NOT NULL,
    ordering integer DEFAULT 0 NOT NULL
);


--
-- Name: jos_menu_types_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.jos_menu_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: jos_menu_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.jos_menu_types_id_seq OWNED BY public.jos_menu_types.id;


--
-- Name: jos_messages; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.jos_messages (
    message_id integer NOT NULL,
    user_id_from bigint DEFAULT 0 NOT NULL,
    user_id_to bigint DEFAULT 0 NOT NULL,
    folder_id smallint DEFAULT 0 NOT NULL,
    date_time timestamp without time zone NOT NULL,
    state smallint DEFAULT 0 NOT NULL,
    priority smallint DEFAULT 0 NOT NULL,
    subject character varying(255) DEFAULT ''::character varying NOT NULL,
    message text NOT NULL
);


--
-- Name: jos_messages_cfg; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.jos_messages_cfg (
    user_id bigint DEFAULT 0 NOT NULL,
    cfg_name character varying(100) DEFAULT ''::character varying NOT NULL,
    cfg_value character varying(255) DEFAULT ''::character varying NOT NULL
);


--
-- Name: jos_messages_message_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.jos_messages_message_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: jos_messages_message_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.jos_messages_message_id_seq OWNED BY public.jos_messages.message_id;


--
-- Name: jos_modules; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.jos_modules (
    id integer NOT NULL,
    asset_id bigint DEFAULT 0 NOT NULL,
    title character varying(100) DEFAULT ''::character varying NOT NULL,
    note character varying(255) DEFAULT ''::character varying NOT NULL,
    content text,
    ordering bigint DEFAULT 0 NOT NULL,
    "position" character varying(50) DEFAULT ''::character varying NOT NULL,
    checked_out integer,
    checked_out_time timestamp without time zone,
    publish_up timestamp without time zone,
    publish_down timestamp without time zone,
    published smallint DEFAULT 0 NOT NULL,
    module character varying(50) DEFAULT NULL::character varying,
    access bigint DEFAULT 0 NOT NULL,
    showtitle smallint DEFAULT 1 NOT NULL,
    params text NOT NULL,
    client_id smallint DEFAULT 0 NOT NULL,
    language character varying(7) NOT NULL
);


--
-- Name: jos_modules_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.jos_modules_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: jos_modules_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.jos_modules_id_seq OWNED BY public.jos_modules.id;


--
-- Name: jos_modules_menu; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.jos_modules_menu (
    moduleid bigint DEFAULT 0 NOT NULL,
    menuid bigint DEFAULT 0 NOT NULL
);


--
-- Name: jos_newsfeeds; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.jos_newsfeeds (
    catid bigint DEFAULT 0 NOT NULL,
    id integer NOT NULL,
    name character varying(100) DEFAULT ''::character varying NOT NULL,
    alias character varying(100) DEFAULT ''::character varying NOT NULL,
    link character varying(2048) DEFAULT ''::character varying NOT NULL,
    published smallint DEFAULT 0 NOT NULL,
    numarticles bigint DEFAULT 1 NOT NULL,
    cache_time bigint DEFAULT 3600 NOT NULL,
    checked_out integer,
    checked_out_time timestamp without time zone,
    ordering bigint DEFAULT 0 NOT NULL,
    rtl smallint DEFAULT 0 NOT NULL,
    access bigint DEFAULT 0 NOT NULL,
    language character varying(7) DEFAULT ''::character varying NOT NULL,
    params text NOT NULL,
    created timestamp without time zone NOT NULL,
    created_by integer DEFAULT 0 NOT NULL,
    created_by_alias character varying(255) DEFAULT ''::character varying NOT NULL,
    modified timestamp without time zone NOT NULL,
    modified_by integer DEFAULT 0 NOT NULL,
    metakey text,
    metadesc text NOT NULL,
    metadata text NOT NULL,
    publish_up timestamp without time zone,
    publish_down timestamp without time zone,
    description text NOT NULL,
    version bigint DEFAULT 1 NOT NULL,
    hits bigint DEFAULT 0 NOT NULL,
    images text NOT NULL
);


--
-- Name: jos_newsfeeds_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.jos_newsfeeds_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: jos_newsfeeds_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.jos_newsfeeds_id_seq OWNED BY public.jos_newsfeeds.id;


--
-- Name: jos_overrider; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.jos_overrider (
    id integer NOT NULL,
    constant character varying(255) NOT NULL,
    string text NOT NULL,
    file character varying(255) NOT NULL
);


--
-- Name: COLUMN jos_overrider.id; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.jos_overrider.id IS 'Primary Key';


--
-- Name: jos_overrider_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.jos_overrider_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: jos_overrider_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.jos_overrider_id_seq OWNED BY public.jos_overrider.id;


--
-- Name: jos_postinstall_messages; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.jos_postinstall_messages (
    postinstall_message_id integer NOT NULL,
    extension_id bigint DEFAULT 700 NOT NULL,
    title_key character varying(255) DEFAULT ''::character varying NOT NULL,
    description_key character varying(255) DEFAULT ''::character varying NOT NULL,
    action_key character varying(255) DEFAULT ''::character varying NOT NULL,
    language_extension character varying(255) DEFAULT 'com_postinstall'::character varying NOT NULL,
    language_client_id smallint DEFAULT 1 NOT NULL,
    type character varying(10) DEFAULT 'link'::character varying NOT NULL,
    action_file character varying(255) DEFAULT ''::character varying,
    action character varying(255) DEFAULT ''::character varying,
    condition_file character varying(255) DEFAULT NULL::character varying,
    condition_method character varying(255) DEFAULT NULL::character varying,
    version_introduced character varying(255) DEFAULT '3.2.0'::character varying NOT NULL,
    enabled smallint DEFAULT 1 NOT NULL
);


--
-- Name: COLUMN jos_postinstall_messages.extension_id; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.jos_postinstall_messages.extension_id IS 'FK to jos_extensions';


--
-- Name: COLUMN jos_postinstall_messages.title_key; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.jos_postinstall_messages.title_key IS 'Lang key for the title';


--
-- Name: COLUMN jos_postinstall_messages.description_key; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.jos_postinstall_messages.description_key IS 'Lang key for description';


--
-- Name: COLUMN jos_postinstall_messages.language_extension; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.jos_postinstall_messages.language_extension IS 'Extension holding lang keys';


--
-- Name: COLUMN jos_postinstall_messages.type; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.jos_postinstall_messages.type IS 'Message type - message, link, action';


--
-- Name: COLUMN jos_postinstall_messages.action_file; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.jos_postinstall_messages.action_file IS 'RAD URI to the PHP file containing action method';


--
-- Name: COLUMN jos_postinstall_messages.action; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.jos_postinstall_messages.action IS 'Action method name or URL';


--
-- Name: COLUMN jos_postinstall_messages.condition_file; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.jos_postinstall_messages.condition_file IS 'RAD URI to file holding display condition method';


--
-- Name: COLUMN jos_postinstall_messages.condition_method; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.jos_postinstall_messages.condition_method IS 'Display condition method, must return boolean';


--
-- Name: COLUMN jos_postinstall_messages.version_introduced; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.jos_postinstall_messages.version_introduced IS 'Version when this message was introduced';


--
-- Name: jos_postinstall_messages_postinstall_message_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.jos_postinstall_messages_postinstall_message_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: jos_postinstall_messages_postinstall_message_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.jos_postinstall_messages_postinstall_message_id_seq OWNED BY public.jos_postinstall_messages.postinstall_message_id;


--
-- Name: jos_privacy_consents; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.jos_privacy_consents (
    id integer NOT NULL,
    user_id bigint DEFAULT 0 NOT NULL,
    state smallint DEFAULT 1 NOT NULL,
    created timestamp without time zone NOT NULL,
    subject character varying(255) DEFAULT ''::character varying NOT NULL,
    body text NOT NULL,
    remind smallint DEFAULT 0 NOT NULL,
    token character varying(100) DEFAULT ''::character varying NOT NULL
);


--
-- Name: jos_privacy_consents_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.jos_privacy_consents_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: jos_privacy_consents_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.jos_privacy_consents_id_seq OWNED BY public.jos_privacy_consents.id;


--
-- Name: jos_privacy_requests; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.jos_privacy_requests (
    id integer NOT NULL,
    email character varying(100) DEFAULT ''::character varying NOT NULL,
    requested_at timestamp without time zone NOT NULL,
    status smallint DEFAULT 0 NOT NULL,
    request_type character varying(25) DEFAULT ''::character varying NOT NULL,
    confirm_token character varying(100) DEFAULT ''::character varying NOT NULL,
    confirm_token_created_at timestamp without time zone
);


--
-- Name: jos_privacy_requests_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.jos_privacy_requests_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: jos_privacy_requests_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.jos_privacy_requests_id_seq OWNED BY public.jos_privacy_requests.id;


--
-- Name: jos_redirect_links; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.jos_redirect_links (
    id integer NOT NULL,
    old_url character varying(2048) NOT NULL,
    new_url character varying(2048),
    referer character varying(2048) NOT NULL,
    comment character varying(255) DEFAULT ''::character varying NOT NULL,
    hits bigint DEFAULT 0 NOT NULL,
    published smallint NOT NULL,
    created_date timestamp without time zone NOT NULL,
    modified_date timestamp without time zone NOT NULL,
    header integer DEFAULT 301 NOT NULL
);


--
-- Name: jos_redirect_links_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.jos_redirect_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: jos_redirect_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.jos_redirect_links_id_seq OWNED BY public.jos_redirect_links.id;


--
-- Name: jos_scheduler_logs; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.jos_scheduler_logs (
    id integer NOT NULL,
    taskname character varying(255) DEFAULT ''::character varying NOT NULL,
    tasktype character varying(128) NOT NULL,
    duration numeric(5,3) NOT NULL,
    jobid integer NOT NULL,
    taskid integer NOT NULL,
    exitcode integer NOT NULL,
    lastdate timestamp without time zone,
    nextdate timestamp without time zone
);


--
-- Name: jos_scheduler_logs_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.jos_scheduler_logs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: jos_scheduler_logs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.jos_scheduler_logs_id_seq OWNED BY public.jos_scheduler_logs.id;


--
-- Name: jos_scheduler_tasks; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.jos_scheduler_tasks (
    id integer NOT NULL,
    asset_id bigint DEFAULT 0 NOT NULL,
    title character varying(255) NOT NULL,
    type character varying(128) NOT NULL,
    execution_rules text,
    cron_rules text,
    state smallint DEFAULT 0 NOT NULL,
    last_exit_code integer DEFAULT 0 NOT NULL,
    last_execution timestamp without time zone,
    next_execution timestamp without time zone,
    times_executed integer DEFAULT 0 NOT NULL,
    times_failed integer DEFAULT 0,
    locked timestamp without time zone,
    priority smallint DEFAULT 0 NOT NULL,
    ordering bigint DEFAULT 0 NOT NULL,
    cli_exclusive smallint DEFAULT 0 NOT NULL,
    params text NOT NULL,
    note text,
    created timestamp without time zone NOT NULL,
    created_by bigint DEFAULT 0 NOT NULL,
    checked_out integer,
    checked_out_time timestamp without time zone
);


--
-- Name: jos_scheduler_tasks_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.jos_scheduler_tasks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: jos_scheduler_tasks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.jos_scheduler_tasks_id_seq OWNED BY public.jos_scheduler_tasks.id;


--
-- Name: jos_schemaorg; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.jos_schemaorg (
    id integer NOT NULL,
    "itemId" bigint,
    context character varying(100),
    "schemaType" character varying(100),
    schema text
);


--
-- Name: jos_schemaorg_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.jos_schemaorg_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: jos_schemaorg_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.jos_schemaorg_id_seq OWNED BY public.jos_schemaorg.id;


--
-- Name: jos_schemas; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.jos_schemas (
    extension_id bigint NOT NULL,
    version_id character varying(20) NOT NULL
);


--
-- Name: jos_session; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.jos_session (
    session_id bytea NOT NULL,
    client_id smallint,
    guest smallint DEFAULT 1,
    "time" integer DEFAULT 0 NOT NULL,
    data text,
    userid bigint DEFAULT 0,
    username character varying(150) DEFAULT ''::character varying
);


--
-- Name: jos_tags; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.jos_tags (
    id integer NOT NULL,
    parent_id bigint DEFAULT 0 NOT NULL,
    lft bigint DEFAULT 0 NOT NULL,
    rgt bigint DEFAULT 0 NOT NULL,
    level integer DEFAULT 0 NOT NULL,
    path character varying(255) DEFAULT ''::character varying NOT NULL,
    title character varying(255) NOT NULL,
    alias character varying(255) DEFAULT ''::character varying NOT NULL,
    note character varying(255) DEFAULT ''::character varying NOT NULL,
    description text NOT NULL,
    published smallint DEFAULT 0 NOT NULL,
    checked_out integer,
    checked_out_time timestamp without time zone,
    access bigint DEFAULT 0 NOT NULL,
    params text NOT NULL,
    metadesc character varying(1024) NOT NULL,
    metakey character varying(1024) DEFAULT ''::character varying NOT NULL,
    metadata character varying(2048) NOT NULL,
    created_user_id integer DEFAULT 0 NOT NULL,
    created_time timestamp without time zone NOT NULL,
    created_by_alias character varying(255) DEFAULT ''::character varying NOT NULL,
    modified_user_id integer DEFAULT 0 NOT NULL,
    modified_time timestamp without time zone NOT NULL,
    images text NOT NULL,
    urls text NOT NULL,
    hits integer DEFAULT 0 NOT NULL,
    language character varying(7) DEFAULT ''::character varying NOT NULL,
    version bigint DEFAULT 1 NOT NULL,
    publish_up timestamp without time zone,
    publish_down timestamp without time zone
);


--
-- Name: jos_tags_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.jos_tags_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: jos_tags_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.jos_tags_id_seq OWNED BY public.jos_tags.id;


--
-- Name: jos_template_overrides; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.jos_template_overrides (
    id integer NOT NULL,
    template character varying(50) DEFAULT ''::character varying NOT NULL,
    hash_id character varying(255) DEFAULT ''::character varying NOT NULL,
    extension_id bigint DEFAULT 0,
    state smallint DEFAULT 0 NOT NULL,
    action character varying(50) DEFAULT ''::character varying NOT NULL,
    client_id smallint DEFAULT 0 NOT NULL,
    created_date timestamp without time zone NOT NULL,
    modified_date timestamp without time zone
);


--
-- Name: jos_template_overrides_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.jos_template_overrides_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: jos_template_overrides_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.jos_template_overrides_id_seq OWNED BY public.jos_template_overrides.id;


--
-- Name: jos_template_styles; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.jos_template_styles (
    id integer NOT NULL,
    template character varying(50) DEFAULT ''::character varying NOT NULL,
    client_id smallint DEFAULT 0 NOT NULL,
    home character varying(7) DEFAULT '0'::character varying NOT NULL,
    title character varying(255) DEFAULT ''::character varying NOT NULL,
    inheritable smallint DEFAULT 0 NOT NULL,
    parent character varying(50) DEFAULT ''::character varying,
    params text NOT NULL
);


--
-- Name: jos_template_styles_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.jos_template_styles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: jos_template_styles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.jos_template_styles_id_seq OWNED BY public.jos_template_styles.id;


--
-- Name: jos_tuf_metadata; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.jos_tuf_metadata (
    id integer NOT NULL,
    update_site_id bigint DEFAULT 0 NOT NULL,
    root text,
    targets text,
    snapshot text,
    "timestamp" text,
    mirrors text
);


--
-- Name: TABLE jos_tuf_metadata; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON TABLE public.jos_tuf_metadata IS 'Secure TUF Updates';


--
-- Name: jos_tuf_metadata_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.jos_tuf_metadata_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: jos_tuf_metadata_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.jos_tuf_metadata_id_seq OWNED BY public.jos_tuf_metadata.id;


--
-- Name: jos_ucm_base; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.jos_ucm_base (
    ucm_id integer NOT NULL,
    ucm_item_id bigint NOT NULL,
    ucm_type_id bigint NOT NULL,
    ucm_language_id bigint NOT NULL
);


--
-- Name: jos_ucm_base_ucm_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.jos_ucm_base_ucm_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: jos_ucm_base_ucm_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.jos_ucm_base_ucm_id_seq OWNED BY public.jos_ucm_base.ucm_id;


--
-- Name: jos_ucm_content; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.jos_ucm_content (
    core_content_id integer NOT NULL,
    core_type_alias character varying(255) DEFAULT ''::character varying NOT NULL,
    core_title character varying(255) DEFAULT ''::character varying NOT NULL,
    core_alias character varying(255) DEFAULT ''::character varying NOT NULL,
    core_body text,
    core_state smallint DEFAULT 0 NOT NULL,
    core_checked_out_time timestamp without time zone,
    core_checked_out_user_id integer,
    core_access bigint DEFAULT 0 NOT NULL,
    core_params text,
    core_featured smallint DEFAULT 0 NOT NULL,
    core_metadata text,
    core_created_user_id bigint DEFAULT 0 NOT NULL,
    core_created_by_alias character varying(255) DEFAULT ''::character varying NOT NULL,
    core_created_time timestamp without time zone NOT NULL,
    core_modified_user_id bigint DEFAULT 0 NOT NULL,
    core_modified_time timestamp without time zone NOT NULL,
    core_language character varying(7) DEFAULT ''::character varying NOT NULL,
    core_publish_up timestamp without time zone,
    core_publish_down timestamp without time zone,
    core_content_item_id bigint DEFAULT 0 NOT NULL,
    asset_id bigint DEFAULT 0 NOT NULL,
    core_images text,
    core_urls text,
    core_hits bigint DEFAULT 0 NOT NULL,
    core_version bigint DEFAULT 1 NOT NULL,
    core_ordering bigint DEFAULT 0 NOT NULL,
    core_metakey text,
    core_metadesc text,
    core_catid bigint DEFAULT 0 NOT NULL,
    core_type_id bigint DEFAULT 0 NOT NULL
);


--
-- Name: jos_ucm_content_core_content_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.jos_ucm_content_core_content_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: jos_ucm_content_core_content_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.jos_ucm_content_core_content_id_seq OWNED BY public.jos_ucm_content.core_content_id;


--
-- Name: jos_update_sites; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.jos_update_sites (
    update_site_id integer NOT NULL,
    name character varying(100) DEFAULT ''::character varying,
    type character varying(20) DEFAULT ''::character varying,
    location text NOT NULL,
    enabled bigint DEFAULT 0,
    last_check_timestamp bigint DEFAULT 0,
    extra_query character varying(1000) DEFAULT ''::character varying,
    checked_out integer,
    checked_out_time timestamp without time zone
);


--
-- Name: TABLE jos_update_sites; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON TABLE public.jos_update_sites IS 'Update Sites';


--
-- Name: jos_update_sites_extensions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.jos_update_sites_extensions (
    update_site_id bigint DEFAULT 0 NOT NULL,
    extension_id bigint DEFAULT 0 NOT NULL
);


--
-- Name: TABLE jos_update_sites_extensions; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON TABLE public.jos_update_sites_extensions IS 'Links extensions to update sites';


--
-- Name: jos_update_sites_update_site_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.jos_update_sites_update_site_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: jos_update_sites_update_site_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.jos_update_sites_update_site_id_seq OWNED BY public.jos_update_sites.update_site_id;


--
-- Name: jos_updates; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.jos_updates (
    update_id integer NOT NULL,
    update_site_id bigint DEFAULT 0,
    extension_id bigint DEFAULT 0,
    name character varying(100) DEFAULT ''::character varying,
    description text NOT NULL,
    element character varying(100) DEFAULT ''::character varying,
    type character varying(20) DEFAULT ''::character varying,
    folder character varying(20) DEFAULT ''::character varying,
    client_id smallint DEFAULT 0,
    version character varying(32) DEFAULT ''::character varying,
    data text NOT NULL,
    detailsurl text NOT NULL,
    infourl text NOT NULL,
    changelogurl text,
    extra_query character varying(1000) DEFAULT ''::character varying
);


--
-- Name: TABLE jos_updates; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON TABLE public.jos_updates IS 'Available Updates';


--
-- Name: jos_updates_update_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.jos_updates_update_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: jos_updates_update_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.jos_updates_update_id_seq OWNED BY public.jos_updates.update_id;


--
-- Name: jos_user_keys; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.jos_user_keys (
    id integer NOT NULL,
    user_id character varying(255) NOT NULL,
    token character varying(255) NOT NULL,
    series character varying(255) NOT NULL,
    "time" character varying(200) NOT NULL,
    uastring character varying(255) NOT NULL
);


--
-- Name: jos_user_keys_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.jos_user_keys_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: jos_user_keys_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.jos_user_keys_id_seq OWNED BY public.jos_user_keys.id;


--
-- Name: jos_user_mfa; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.jos_user_mfa (
    id integer NOT NULL,
    user_id bigint NOT NULL,
    title character varying(255) DEFAULT ''::character varying NOT NULL,
    method character varying(100) NOT NULL,
    "default" smallint DEFAULT 0 NOT NULL,
    options text NOT NULL,
    created_on timestamp without time zone NOT NULL,
    last_used timestamp without time zone,
    tries bigint DEFAULT 0 NOT NULL,
    last_try timestamp without time zone
);


--
-- Name: TABLE jos_user_mfa; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON TABLE public.jos_user_mfa IS 'Multi-factor Authentication settings';


--
-- Name: jos_user_mfa_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.jos_user_mfa_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: jos_user_mfa_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.jos_user_mfa_id_seq OWNED BY public.jos_user_mfa.id;


--
-- Name: jos_user_notes; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.jos_user_notes (
    id integer NOT NULL,
    user_id integer DEFAULT 0 NOT NULL,
    catid integer DEFAULT 0 NOT NULL,
    subject character varying(100) DEFAULT ''::character varying NOT NULL,
    body text NOT NULL,
    state smallint DEFAULT 0 NOT NULL,
    checked_out integer,
    checked_out_time timestamp without time zone,
    created_user_id integer DEFAULT 0 NOT NULL,
    created_time timestamp without time zone NOT NULL,
    modified_user_id integer DEFAULT 0 NOT NULL,
    modified_time timestamp without time zone NOT NULL,
    review_time timestamp without time zone,
    publish_up timestamp without time zone,
    publish_down timestamp without time zone
);


--
-- Name: jos_user_notes_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.jos_user_notes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: jos_user_notes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.jos_user_notes_id_seq OWNED BY public.jos_user_notes.id;


--
-- Name: jos_user_profiles; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.jos_user_profiles (
    user_id bigint NOT NULL,
    profile_key character varying(100) NOT NULL,
    profile_value text NOT NULL,
    ordering bigint DEFAULT 0 NOT NULL
);


--
-- Name: TABLE jos_user_profiles; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON TABLE public.jos_user_profiles IS 'Simple user profile storage table';


--
-- Name: jos_user_usergroup_map; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.jos_user_usergroup_map (
    user_id bigint DEFAULT 0 NOT NULL,
    group_id bigint DEFAULT 0 NOT NULL
);


--
-- Name: COLUMN jos_user_usergroup_map.user_id; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.jos_user_usergroup_map.user_id IS 'Foreign Key to #__users.id';


--
-- Name: COLUMN jos_user_usergroup_map.group_id; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.jos_user_usergroup_map.group_id IS 'Foreign Key to #__usergroups.id';


--
-- Name: jos_usergroups; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.jos_usergroups (
    id integer NOT NULL,
    parent_id bigint DEFAULT 0 NOT NULL,
    lft bigint DEFAULT 0 NOT NULL,
    rgt bigint DEFAULT 0 NOT NULL,
    title character varying(100) DEFAULT ''::character varying NOT NULL
);


--
-- Name: COLUMN jos_usergroups.id; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.jos_usergroups.id IS 'Primary Key';


--
-- Name: COLUMN jos_usergroups.parent_id; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.jos_usergroups.parent_id IS 'Adjacency List Reference Id';


--
-- Name: COLUMN jos_usergroups.lft; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.jos_usergroups.lft IS 'Nested set lft.';


--
-- Name: COLUMN jos_usergroups.rgt; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.jos_usergroups.rgt IS 'Nested set rgt.';


--
-- Name: jos_usergroups_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.jos_usergroups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: jos_usergroups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.jos_usergroups_id_seq OWNED BY public.jos_usergroups.id;


--
-- Name: jos_users; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.jos_users (
    id integer NOT NULL,
    name character varying(255) DEFAULT ''::character varying NOT NULL,
    username character varying(150) DEFAULT ''::character varying NOT NULL,
    email character varying(100) DEFAULT ''::character varying NOT NULL,
    password character varying(100) DEFAULT ''::character varying NOT NULL,
    block smallint DEFAULT 0 NOT NULL,
    "sendEmail" smallint DEFAULT 0,
    "registerDate" timestamp without time zone NOT NULL,
    "lastvisitDate" timestamp without time zone,
    activation character varying(100) DEFAULT ''::character varying NOT NULL,
    params text NOT NULL,
    "lastResetTime" timestamp without time zone,
    "resetCount" bigint DEFAULT 0 NOT NULL,
    "otpKey" character varying(1000) DEFAULT ''::character varying NOT NULL,
    otep character varying(1000) DEFAULT ''::character varying NOT NULL,
    "requireReset" smallint DEFAULT 0,
    "authProvider" character varying(100) DEFAULT ''::character varying NOT NULL
);


--
-- Name: COLUMN jos_users."lastResetTime"; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.jos_users."lastResetTime" IS 'Date of last password reset';


--
-- Name: COLUMN jos_users."resetCount"; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.jos_users."resetCount" IS 'Count of password resets since lastResetTime';


--
-- Name: COLUMN jos_users."requireReset"; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.jos_users."requireReset" IS 'Require user to reset password on next login';


--
-- Name: jos_users_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.jos_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: jos_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.jos_users_id_seq OWNED BY public.jos_users.id;


--
-- Name: jos_viewlevels; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.jos_viewlevels (
    id integer NOT NULL,
    title character varying(100) DEFAULT ''::character varying NOT NULL,
    ordering bigint DEFAULT 0 NOT NULL,
    rules character varying(5120) NOT NULL
);


--
-- Name: COLUMN jos_viewlevels.id; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.jos_viewlevels.id IS 'Primary Key';


--
-- Name: COLUMN jos_viewlevels.rules; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.jos_viewlevels.rules IS 'JSON encoded access control.';


--
-- Name: jos_viewlevels_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.jos_viewlevels_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: jos_viewlevels_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.jos_viewlevels_id_seq OWNED BY public.jos_viewlevels.id;


--
-- Name: jos_webauthn_credentials; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.jos_webauthn_credentials (
    id character varying(1000) NOT NULL,
    user_id character varying(128) NOT NULL,
    label character varying(190) NOT NULL,
    credential text NOT NULL
);


--
-- Name: jos_workflow_associations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.jos_workflow_associations (
    item_id bigint DEFAULT 0 NOT NULL,
    stage_id bigint DEFAULT 0 NOT NULL,
    extension character varying(50) NOT NULL
);


--
-- Name: COLUMN jos_workflow_associations.item_id; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.jos_workflow_associations.item_id IS 'Extension table id value';


--
-- Name: COLUMN jos_workflow_associations.stage_id; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.jos_workflow_associations.stage_id IS 'Foreign Key to #__workflow_stages.id';


--
-- Name: jos_workflow_stages; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.jos_workflow_stages (
    id integer NOT NULL,
    asset_id bigint DEFAULT 0 NOT NULL,
    ordering bigint DEFAULT 0 NOT NULL,
    workflow_id bigint DEFAULT 0 NOT NULL,
    published smallint DEFAULT 0 NOT NULL,
    title character varying(255) NOT NULL,
    description text NOT NULL,
    "default" smallint DEFAULT 0 NOT NULL,
    "position" text,
    checked_out_time timestamp without time zone,
    checked_out integer
);


--
-- Name: jos_workflow_stages_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.jos_workflow_stages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: jos_workflow_stages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.jos_workflow_stages_id_seq OWNED BY public.jos_workflow_stages.id;


--
-- Name: jos_workflow_transitions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.jos_workflow_transitions (
    id integer NOT NULL,
    asset_id bigint DEFAULT 0 NOT NULL,
    ordering bigint DEFAULT 0 NOT NULL,
    workflow_id bigint DEFAULT 0 NOT NULL,
    published smallint DEFAULT 0 NOT NULL,
    title character varying(255) NOT NULL,
    description text NOT NULL,
    from_stage_id bigint DEFAULT 0 NOT NULL,
    to_stage_id bigint DEFAULT 0 NOT NULL,
    options text NOT NULL,
    checked_out_time timestamp without time zone,
    checked_out integer
);


--
-- Name: jos_workflow_transitions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.jos_workflow_transitions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: jos_workflow_transitions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.jos_workflow_transitions_id_seq OWNED BY public.jos_workflow_transitions.id;


--
-- Name: jos_workflows; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.jos_workflows (
    id integer NOT NULL,
    asset_id bigint DEFAULT 0 NOT NULL,
    published smallint DEFAULT 0 NOT NULL,
    title character varying(255) DEFAULT ''::character varying NOT NULL,
    description text NOT NULL,
    extension character varying(50) NOT NULL,
    "default" smallint DEFAULT 0 NOT NULL,
    ordering bigint DEFAULT 0 NOT NULL,
    created timestamp without time zone NOT NULL,
    created_by bigint DEFAULT 0 NOT NULL,
    modified timestamp without time zone NOT NULL,
    modified_by bigint DEFAULT 0 NOT NULL,
    checked_out_time timestamp without time zone,
    checked_out integer
);


--
-- Name: jos_workflows_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.jos_workflows_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: jos_workflows_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.jos_workflows_id_seq OWNED BY public.jos_workflows.id;


--
-- Name: trafico_nginx; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.trafico_nginx (
    id bigint NOT NULL,
    fecha timestamp with time zone NOT NULL,
    ip_origen character varying(100),
    metodo character varying(10),
    ruta text,
    codigo_http integer,
    bytes_enviados bigint,
    tiempo_respuesta double precision,
    creado_en timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


--
-- Name: trafico_nginx_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.trafico_nginx_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: trafico_nginx_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.trafico_nginx_id_seq OWNED BY public.trafico_nginx.id;


--
-- Name: actividad id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.actividad ALTER COLUMN id SET DEFAULT nextval('public.actividad_id_seq'::regclass);


--
-- Name: jos_action_log_config id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jos_action_log_config ALTER COLUMN id SET DEFAULT nextval('public.jos_action_log_config_id_seq'::regclass);


--
-- Name: jos_action_logs id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jos_action_logs ALTER COLUMN id SET DEFAULT nextval('public.jos_action_logs_id_seq'::regclass);


--
-- Name: jos_action_logs_extensions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jos_action_logs_extensions ALTER COLUMN id SET DEFAULT nextval('public.jos_action_logs_extensions_id_seq'::regclass);


--
-- Name: jos_assets id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jos_assets ALTER COLUMN id SET DEFAULT nextval('public.jos_assets_id_seq'::regclass);


--
-- Name: jos_banner_clients id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jos_banner_clients ALTER COLUMN id SET DEFAULT nextval('public.jos_banner_clients_id_seq'::regclass);


--
-- Name: jos_banners id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jos_banners ALTER COLUMN id SET DEFAULT nextval('public.jos_banners_id_seq'::regclass);


--
-- Name: jos_categories id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jos_categories ALTER COLUMN id SET DEFAULT nextval('public.jos_categories_id_seq'::regclass);


--
-- Name: jos_contact_details id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jos_contact_details ALTER COLUMN id SET DEFAULT nextval('public.jos_contact_details_id_seq'::regclass);


--
-- Name: jos_content id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jos_content ALTER COLUMN id SET DEFAULT nextval('public.jos_content_id_seq'::regclass);


--
-- Name: jos_content_types type_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jos_content_types ALTER COLUMN type_id SET DEFAULT nextval('public.jos_content_types_type_id_seq'::regclass);


--
-- Name: jos_extensions extension_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jos_extensions ALTER COLUMN extension_id SET DEFAULT nextval('public.jos_extensions_extension_id_seq'::regclass);


--
-- Name: jos_fields id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jos_fields ALTER COLUMN id SET DEFAULT nextval('public.jos_fields_id_seq'::regclass);


--
-- Name: jos_fields_groups id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jos_fields_groups ALTER COLUMN id SET DEFAULT nextval('public.jos_fields_groups_id_seq'::regclass);


--
-- Name: jos_finder_filters filter_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jos_finder_filters ALTER COLUMN filter_id SET DEFAULT nextval('public.jos_finder_filters_filter_id_seq'::regclass);


--
-- Name: jos_finder_links link_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jos_finder_links ALTER COLUMN link_id SET DEFAULT nextval('public.jos_finder_links_link_id_seq'::regclass);


--
-- Name: jos_finder_taxonomy id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jos_finder_taxonomy ALTER COLUMN id SET DEFAULT nextval('public.jos_finder_taxonomy_id_seq'::regclass);


--
-- Name: jos_finder_terms term_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jos_finder_terms ALTER COLUMN term_id SET DEFAULT nextval('public.jos_finder_terms_term_id_seq'::regclass);


--
-- Name: jos_finder_types id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jos_finder_types ALTER COLUMN id SET DEFAULT nextval('public.jos_finder_types_id_seq'::regclass);


--
-- Name: jos_guidedtour_steps id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jos_guidedtour_steps ALTER COLUMN id SET DEFAULT nextval('public.jos_guidedtour_steps_id_seq'::regclass);


--
-- Name: jos_guidedtours id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jos_guidedtours ALTER COLUMN id SET DEFAULT nextval('public.jos_guidedtours_id_seq'::regclass);


--
-- Name: jos_history version_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jos_history ALTER COLUMN version_id SET DEFAULT nextval('public.jos_history_version_id_seq'::regclass);


--
-- Name: jos_languages lang_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jos_languages ALTER COLUMN lang_id SET DEFAULT nextval('public.jos_languages_lang_id_seq'::regclass);


--
-- Name: jos_menu id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jos_menu ALTER COLUMN id SET DEFAULT nextval('public.jos_menu_id_seq'::regclass);


--
-- Name: jos_menu_types id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jos_menu_types ALTER COLUMN id SET DEFAULT nextval('public.jos_menu_types_id_seq'::regclass);


--
-- Name: jos_messages message_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jos_messages ALTER COLUMN message_id SET DEFAULT nextval('public.jos_messages_message_id_seq'::regclass);


--
-- Name: jos_modules id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jos_modules ALTER COLUMN id SET DEFAULT nextval('public.jos_modules_id_seq'::regclass);


--
-- Name: jos_newsfeeds id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jos_newsfeeds ALTER COLUMN id SET DEFAULT nextval('public.jos_newsfeeds_id_seq'::regclass);


--
-- Name: jos_overrider id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jos_overrider ALTER COLUMN id SET DEFAULT nextval('public.jos_overrider_id_seq'::regclass);


--
-- Name: jos_postinstall_messages postinstall_message_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jos_postinstall_messages ALTER COLUMN postinstall_message_id SET DEFAULT nextval('public.jos_postinstall_messages_postinstall_message_id_seq'::regclass);


--
-- Name: jos_privacy_consents id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jos_privacy_consents ALTER COLUMN id SET DEFAULT nextval('public.jos_privacy_consents_id_seq'::regclass);


--
-- Name: jos_privacy_requests id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jos_privacy_requests ALTER COLUMN id SET DEFAULT nextval('public.jos_privacy_requests_id_seq'::regclass);


--
-- Name: jos_redirect_links id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jos_redirect_links ALTER COLUMN id SET DEFAULT nextval('public.jos_redirect_links_id_seq'::regclass);


--
-- Name: jos_scheduler_logs id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jos_scheduler_logs ALTER COLUMN id SET DEFAULT nextval('public.jos_scheduler_logs_id_seq'::regclass);


--
-- Name: jos_scheduler_tasks id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jos_scheduler_tasks ALTER COLUMN id SET DEFAULT nextval('public.jos_scheduler_tasks_id_seq'::regclass);


--
-- Name: jos_schemaorg id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jos_schemaorg ALTER COLUMN id SET DEFAULT nextval('public.jos_schemaorg_id_seq'::regclass);


--
-- Name: jos_tags id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jos_tags ALTER COLUMN id SET DEFAULT nextval('public.jos_tags_id_seq'::regclass);


--
-- Name: jos_template_overrides id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jos_template_overrides ALTER COLUMN id SET DEFAULT nextval('public.jos_template_overrides_id_seq'::regclass);


--
-- Name: jos_template_styles id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jos_template_styles ALTER COLUMN id SET DEFAULT nextval('public.jos_template_styles_id_seq'::regclass);


--
-- Name: jos_tuf_metadata id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jos_tuf_metadata ALTER COLUMN id SET DEFAULT nextval('public.jos_tuf_metadata_id_seq'::regclass);


--
-- Name: jos_ucm_base ucm_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jos_ucm_base ALTER COLUMN ucm_id SET DEFAULT nextval('public.jos_ucm_base_ucm_id_seq'::regclass);


--
-- Name: jos_ucm_content core_content_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jos_ucm_content ALTER COLUMN core_content_id SET DEFAULT nextval('public.jos_ucm_content_core_content_id_seq'::regclass);


--
-- Name: jos_update_sites update_site_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jos_update_sites ALTER COLUMN update_site_id SET DEFAULT nextval('public.jos_update_sites_update_site_id_seq'::regclass);


--
-- Name: jos_updates update_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jos_updates ALTER COLUMN update_id SET DEFAULT nextval('public.jos_updates_update_id_seq'::regclass);


--
-- Name: jos_user_keys id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jos_user_keys ALTER COLUMN id SET DEFAULT nextval('public.jos_user_keys_id_seq'::regclass);


--
-- Name: jos_user_mfa id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jos_user_mfa ALTER COLUMN id SET DEFAULT nextval('public.jos_user_mfa_id_seq'::regclass);


--
-- Name: jos_user_notes id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jos_user_notes ALTER COLUMN id SET DEFAULT nextval('public.jos_user_notes_id_seq'::regclass);


--
-- Name: jos_usergroups id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jos_usergroups ALTER COLUMN id SET DEFAULT nextval('public.jos_usergroups_id_seq'::regclass);


--
-- Name: jos_users id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jos_users ALTER COLUMN id SET DEFAULT nextval('public.jos_users_id_seq'::regclass);


--
-- Name: jos_viewlevels id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jos_viewlevels ALTER COLUMN id SET DEFAULT nextval('public.jos_viewlevels_id_seq'::regclass);


--
-- Name: jos_workflow_stages id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jos_workflow_stages ALTER COLUMN id SET DEFAULT nextval('public.jos_workflow_stages_id_seq'::regclass);


--
-- Name: jos_workflow_transitions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jos_workflow_transitions ALTER COLUMN id SET DEFAULT nextval('public.jos_workflow_transitions_id_seq'::regclass);


--
-- Name: jos_workflows id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jos_workflows ALTER COLUMN id SET DEFAULT nextval('public.jos_workflows_id_seq'::regclass);


--
-- Name: trafico_nginx id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.trafico_nginx ALTER COLUMN id SET DEFAULT nextval('public.trafico_nginx_id_seq'::regclass);


--
-- Data for Name: actividad; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.actividad (id, fecha, servicio, tipo_evento, codigo_http, ip_origen, descripcion) FROM stdin;
1	2026-09-28 17:55:04.702212	joomla	GET	200	192.168.1.10	Acceso página principal
2	2026-09-28 17:55:04.702212	joomla	GET	200	192.168.1.11	Consulta de artículo
3	2026-09-28 17:55:04.702212	joomla	POST	200	192.168.1.10	Inicio de sesión
4	2026-09-28 17:55:04.702212	joomla	GET	404	192.168.1.12	Página no encontrada
5	2026-09-28 17:55:04.702212	joomla	GET	200	192.168.1.13	Acceso página principal
6	2026-09-28 17:55:04.702212	joomla	GET	200	192.168.1.10	Consulta de artículo
7	2026-09-28 17:55:04.702212	joomla	GET	404	192.168.1.14	Recurso inexistente
8	2026-09-28 17:55:04.702212	joomla	POST	200	192.168.1.11	Formulario enviado
9	2026-09-28 17:55:04.702212	joomla	GET	500	192.168.1.15	Error interno simulado
10	2026-09-28 17:55:04.702212	joomla	GET	200	192.168.1.12	Acceso página principal
\.


--
-- Data for Name: jos_action_log_config; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.jos_action_log_config (id, type_title, type_alias, id_holder, title_holder, table_name, text_prefix) FROM stdin;
1	article	com_content.article	id	title	#__content	PLG_ACTIONLOG_JOOMLA
2	article	com_content.form	id	title	#__content	PLG_ACTIONLOG_JOOMLA
3	banner	com_banners.banner	id	name	#__banners	PLG_ACTIONLOG_JOOMLA
4	user_note	com_users.note	id	subject	#__user_notes	PLG_ACTIONLOG_JOOMLA
5	media	com_media.file		name		PLG_ACTIONLOG_JOOMLA
6	category	com_categories.category	id	title	#__categories	PLG_ACTIONLOG_JOOMLA
7	menu	com_menus.menu	id	title	#__menu_types	PLG_ACTIONLOG_JOOMLA
8	menu_item	com_menus.item	id	title	#__menu	PLG_ACTIONLOG_JOOMLA
9	newsfeed	com_newsfeeds.newsfeed	id	name	#__newsfeeds	PLG_ACTIONLOG_JOOMLA
10	link	com_redirect.link	id	old_url	#__redirect_links	PLG_ACTIONLOG_JOOMLA
11	tag	com_tags.tag	id	title	#__tags	PLG_ACTIONLOG_JOOMLA
12	style	com_templates.style	id	title	#__template_styles	PLG_ACTIONLOG_JOOMLA
13	plugin	com_plugins.plugin	extension_id	name	#__extensions	PLG_ACTIONLOG_JOOMLA
14	component_config	com_config.component	extension_id	name		PLG_ACTIONLOG_JOOMLA
15	contact	com_contact.contact	id	name	#__contact_details	PLG_ACTIONLOG_JOOMLA
16	module	com_modules.module	id	title	#__modules	PLG_ACTIONLOG_JOOMLA
17	access_level	com_users.level	id	title	#__viewlevels	PLG_ACTIONLOG_JOOMLA
18	banner_client	com_banners.client	id	name	#__banner_clients	PLG_ACTIONLOG_JOOMLA
19	application_config	com_config.application		name		PLG_ACTIONLOG_JOOMLA
20	task	com_scheduler.task	id	title	#__scheduler_tasks	PLG_ACTIONLOG_JOOMLA
21	field	com_fields.field	id	title	#__fields	PLG_ACTIONLOG_JOOMLA
22	guidedtour	com_guidedtours.state	id	title	#__guidedtours	PLG_ACTIONLOG_JOOMLA
23	contact	com_contact.form	id	name	#__contact_details	PLG_ACTIONLOG_JOOMLA
\.


--
-- Data for Name: jos_action_logs; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.jos_action_logs (id, message_language_key, message, log_date, extension, user_id, item_id, ip_address) FROM stdin;
1	PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN	{"action":"login","userid":758,"username":"admin","accountlink":"index.php?option=com_users&task=user.edit&id=758","app":"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR"}	2026-09-28 18:37:50	com_users	758	0	COM_ACTIONLOGS_DISABLED
2	PLG_ACTIONLOG_JOOMLA_GUIDEDTOURS_TOURCOMPLETED	{"id":12,"title":"Welcome to Joomla!","state":"completed","step":6,"userid":758,"username":"admin","accountlink":"index.php?option=com_users&task=user.edit&id=758"}	2026-09-28 18:38:18	com_guidedtours.state	758	12	COM_ACTIONLOGS_DISABLED
3	PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED	{"action":"add","type":"PLG_ACTIONLOG_JOOMLA_TYPE_MEDIA","id":0,"title":"cat-cat-meme.png","itemlink":"index.php?option=com_media&path=local-images:\\/","userid":758,"username":"admin","accountlink":"index.php?option=com_users&task=user.edit&id=758"}	2026-09-28 18:41:35	com_media.file	758	0	COM_ACTIONLOGS_DISABLED
4	PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED	{"action":"add","type":"PLG_ACTIONLOG_JOOMLA_TYPE_MEDIA","id":0,"title":"diagrama_arquitectura_joomla_ligero.jpg","itemlink":"index.php?option=com_media&path=local-images:\\/ahhh","userid":758,"username":"admin","accountlink":"index.php?option=com_users&task=user.edit&id=758"}	2026-09-28 18:49:05	com_media.file	758	0	COM_ACTIONLOGS_DISABLED
5	PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED	{"action":"add","type":"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE","id":1,"title":"Comunicaciones","itemlink":"index.php?option=com_content&task=article.edit&id=1","userid":758,"username":"admin","accountlink":"index.php?option=com_users&task=user.edit&id=758"}	2026-09-28 18:49:42	com_content.article	758	1	COM_ACTIONLOGS_DISABLED
6	PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED	{"action":"update","type":"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE","id":"1","title":"Comunicaciones","itemlink":"index.php?option=com_content&task=article.edit&id=1","userid":758,"username":"admin","accountlink":"index.php?option=com_users&task=user.edit&id=758"}	2026-09-28 18:49:47	com_content.article	758	1	COM_ACTIONLOGS_DISABLED
7	PLG_ACTIONLOG_JOOMLA_USER_CHECKIN	{"action":"checkin","type":"PLG_ACTIONLOG_JOOMLA_TYPE_USER","id":758,"title":"admin","itemlink":"index.php?option=com_users&task=user.edit&id=758","userid":758,"username":"admin","accountlink":"index.php?option=com_users&task=user.edit&id=758","table":"#__content"}	2026-09-28 18:49:47	com_checkin	758	758	COM_ACTIONLOGS_DISABLED
8	PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED	{"action":"update","type":"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE","id":"1","title":"Comunicaciones","itemlink":"index.php?option=com_content&task=article.edit&id=1","userid":758,"username":"admin","accountlink":"index.php?option=com_users&task=user.edit&id=758"}	2026-09-28 18:51:38	com_content.article	758	1	COM_ACTIONLOGS_DISABLED
9	PLG_ACTIONLOG_JOOMLA_USER_CHECKIN	{"action":"checkin","type":"PLG_ACTIONLOG_JOOMLA_TYPE_USER","id":758,"title":"admin","itemlink":"index.php?option=com_users&task=user.edit&id=758","userid":758,"username":"admin","accountlink":"index.php?option=com_users&task=user.edit&id=758","table":"#__content"}	2026-09-28 18:51:38	com_checkin	758	758	COM_ACTIONLOGS_DISABLED
10	PLG_ACTIONLOG_JOOMLA_USER_CHECKIN	{"action":"checkin","type":"PLG_ACTIONLOG_JOOMLA_TYPE_USER","id":758,"title":"admin","itemlink":"index.php?option=com_users&task=user.edit&id=758","userid":758,"username":"admin","accountlink":"index.php?option=com_users&task=user.edit&id=758","table":"#__menu"}	2026-09-28 18:52:29	com_checkin	758	758	COM_ACTIONLOGS_DISABLED
11	PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED	{"action":"update","type":"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM","id":101,"title":"Home","itemlink":"index.php?option=com_menus&task=item.edit&id=101","userid":758,"username":"admin","accountlink":"index.php?option=com_users&task=user.edit&id=758"}	2026-09-28 18:54:18	com_menus.item	758	101	COM_ACTIONLOGS_DISABLED
12	PLG_ACTIONLOG_JOOMLA_USER_CHECKIN	{"action":"checkin","type":"PLG_ACTIONLOG_JOOMLA_TYPE_USER","id":758,"title":"admin","itemlink":"index.php?option=com_users&task=user.edit&id=758","userid":758,"username":"admin","accountlink":"index.php?option=com_users&task=user.edit&id=758","table":"#__menu"}	2026-09-28 18:54:18	com_checkin	758	758	COM_ACTIONLOGS_DISABLED
41	PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN	{"action":"login","userid":758,"username":"admin","accountlink":"index.php?option=com_users&task=user.edit&id=758","app":"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR"}	2026-10-01 19:45:46	com_users	758	0	COM_ACTIONLOGS_DISABLED
42	PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED	{"action":"add","type":"PLG_ACTIONLOG_JOOMLA_TYPE_USER","id":759,"title":"usuario","itemlink":"index.php?option=com_users&task=user.edit&id=759","userid":758,"username":"admin","accountlink":"index.php?option=com_users&task=user.edit&id=758"}	2026-10-01 19:47:22	com_users	758	759	COM_ACTIONLOGS_DISABLED
43	PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN	{"action":"login","userid":759,"username":"usuario","accountlink":"index.php?option=com_users&task=user.edit&id=759","app":"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE"}	2026-10-01 19:53:50	com_users	759	0	COM_ACTIONLOGS_DISABLED
44	PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT	{"action":"logout","id":759,"userid":759,"username":"usuario","accountlink":"index.php?option=com_users&task=user.edit&id=759","app":"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE"}	2026-10-01 19:53:55	com_users	759	759	COM_ACTIONLOGS_DISABLED
\.


--
-- Data for Name: jos_action_logs_extensions; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.jos_action_logs_extensions (id, extension) FROM stdin;
1	com_banners
2	com_cache
3	com_categories
4	com_config
5	com_contact
6	com_content
7	com_installer
8	com_media
9	com_menus
10	com_messages
11	com_modules
12	com_newsfeeds
13	com_plugins
14	com_redirect
15	com_tags
16	com_templates
17	com_users
18	com_checkin
19	com_scheduler
20	com_fields
21	com_guidedtours
\.


--
-- Data for Name: jos_action_logs_users; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.jos_action_logs_users (user_id, notify, extensions) FROM stdin;
\.


--
-- Data for Name: jos_assets; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.jos_assets (id, parent_id, lft, rgt, level, name, title, rules) FROM stdin;
2	1	1	2	1	com_admin	com_admin	{}
3	1	3	6	1	com_banners	com_banners	{"core.admin":{"7":1},"core.manage":{"6":1}}
4	1	7	8	1	com_cache	com_cache	{"core.admin":{"7":1},"core.manage":{"7":1}}
5	1	9	10	1	com_checkin	com_checkin	{"core.admin":{"7":1},"core.manage":{"7":1}}
6	1	11	12	1	com_config	com_config	{}
7	1	13	16	1	com_contact	com_contact	{"core.admin":{"7":1},"core.manage":{"6":1}}
28	3	4	5	2	com_banners.category.3	Uncategorised	{}
29	7	14	15	2	com_contact.category.4	Uncategorised	{}
1	0	0	185	0	root.1	Root Asset	{"core.login.site":{"6":1,"2":1},"core.login.admin":{"6":1},"core.login.api":{"8":1},"core.login.offline":{"6":1},"core.admin":{"8":1},"core.manage":{"7":1},"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}
8	1	17	40	1	com_content	com_content	{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.edit":{"4":1},"core.edit.state":{"5":1},"core.execute.transition":{"6":1,"5":1}}
27	8	18	21	2	com_content.category.2	Uncategorised	{}
9	1	41	42	1	com_cpanel	com_cpanel	{}
10	1	43	44	1	com_installer	com_installer	{"core.manage":{"7":0},"core.delete":{"7":0},"core.edit.state":{"7":0}}
11	1	45	48	1	com_languages	com_languages	{"core.admin":{"7":1}}
12	11	46	47	2	com_languages.language.1	English (en-GB)	{}
13	1	49	50	1	com_login	com_login	{}
14	1	51	52	1	com_mails	com_mails	{}
15	1	53	54	1	com_media	com_media	{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":{"5":1}}
16	1	55	58	1	com_menus	com_menus	{"core.admin":{"7":1}}
17	1	59	60	1	com_messages	com_messages	{"core.admin":{"7":1},"core.manage":{"7":1}}
18	1	61	134	1	com_modules	com_modules	{"core.admin":{"7":1}}
19	1	135	138	1	com_newsfeeds	com_newsfeeds	{"core.admin":{"7":1},"core.manage":{"6":1}}
20	1	139	140	1	com_plugins	com_plugins	{"core.admin":{"7":1}}
21	1	141	142	1	com_redirect	com_redirect	{"core.admin":{"7":1}}
23	1	143	144	1	com_templates	com_templates	{"core.admin":{"7":1}}
24	1	149	152	1	com_users	com_users	{"core.admin":{"7":1}}
26	1	153	154	1	com_wrapper	com_wrapper	{}
30	19	136	137	2	com_newsfeeds.category.5	Uncategorised	{}
32	24	150	151	2	com_users.category.7	Uncategorised	{}
33	1	155	156	1	com_finder	com_finder	{"core.admin":{"7":1},"core.manage":{"6":1}}
34	1	157	158	1	com_joomlaupdate	com_joomlaupdate	{}
35	1	159	160	1	com_tags	com_tags	{}
36	1	161	162	1	com_contenthistory	com_contenthistory	{}
37	1	163	164	1	com_ajax	com_ajax	{}
38	1	165	166	1	com_postinstall	com_postinstall	{}
39	18	62	63	2	com_modules.module.1	Main Menu	{}
40	18	64	65	2	com_modules.module.2	Login	{}
41	18	66	67	2	com_modules.module.3	Popular Articles	{}
42	18	68	69	2	com_modules.module.4	Recently Added Articles	{}
43	18	70	71	2	com_modules.module.8	Toolbar	{}
44	18	72	73	2	com_modules.module.9	Notifications	{}
45	18	74	75	2	com_modules.module.10	Logged-in Users	{}
46	18	76	77	2	com_modules.module.12	Admin Menu	{}
49	18	82	83	2	com_modules.module.15	Title	{}
50	18	84	85	2	com_modules.module.16	Login Form	{}
51	18	86	87	2	com_modules.module.17	Breadcrumbs	{}
52	18	88	89	2	com_modules.module.79	Multilanguage status	{}
53	18	92	93	2	com_modules.module.86	Joomla Version	{}
54	16	56	57	2	com_menus.menu.1	Main Menu	{}
55	18	96	97	2	com_modules.module.87	Sample Data	{}
56	8	22	39	2	com_content.workflow.1	COM_WORKFLOW_BASIC_WORKFLOW	{}
57	56	23	24	3	com_content.stage.1	COM_WORKFLOW_BASIC_STAGE	{}
58	56	25	26	3	com_content.transition.1	UNPUBLISH	{}
59	56	27	28	3	com_content.transition.2	PUBLISH	{}
60	56	29	30	3	com_content.transition.3	TRASH	{}
61	56	31	32	3	com_content.transition.4	ARCHIVE	{}
62	56	33	34	3	com_content.transition.5	FEATURE	{}
63	56	35	36	3	com_content.transition.6	UNFEATURE	{}
64	56	37	38	3	com_content.transition.7	PUBLISH_AND_FEATURE	{}
65	1	145	146	1	com_privacy	com_privacy	{}
66	1	147	148	1	com_actionlogs	com_actionlogs	{}
67	18	78	79	2	com_modules.module.88	Latest Actions	{}
68	18	80	81	2	com_modules.module.89	Privacy Dashboard	{}
70	18	90	91	2	com_modules.module.103	Site	{}
71	18	94	95	2	com_modules.module.104	System	{}
72	18	98	99	2	com_modules.module.91	System Dashboard	{}
73	18	100	101	2	com_modules.module.92	Content Dashboard	{}
74	18	102	103	2	com_modules.module.93	Menus Dashboard	{}
75	18	104	105	2	com_modules.module.94	Components Dashboard	{}
76	18	106	107	2	com_modules.module.95	Users Dashboard	{}
77	18	108	109	2	com_modules.module.99	Frontend Link	{}
78	18	110	111	2	com_modules.module.100	Messages	{}
79	18	112	113	2	com_modules.module.101	Post Install Messages	{}
80	18	114	115	2	com_modules.module.102	User Status	{}
82	18	116	117	2	com_modules.module.105	3rd Party	{}
83	18	118	119	2	com_modules.module.106	Help Dashboard	{}
84	18	120	121	2	com_modules.module.107	Privacy Requests	{}
85	18	122	123	2	com_modules.module.108	Privacy Status	{}
86	18	124	125	2	com_modules.module.96	Popular Articles	{}
87	18	126	127	2	com_modules.module.97	Recently Added Articles	{}
88	18	128	129	2	com_modules.module.98	Logged-in Users	{}
89	18	130	131	2	com_modules.module.90	Login Support	{}
90	1	167	174	1	com_scheduler	com_scheduler	{}
91	1	175	176	1	com_associations	com_associations	{}
92	1	177	178	1	com_categories	com_categories	{}
93	1	179	180	1	com_fields	com_fields	{}
94	1	181	182	1	com_workflow	com_workflow	{}
95	1	183	184	1	com_guidedtours	com_guidedtours	{}
96	18	132	133	2	com_modules.module.109	Guided Tours	{}
97	90	168	169	2	com_scheduler.task.1	Rotate Logs	{}
98	90	170	171	2	com_scheduler.task.2	Session GC	{}
99	90	172	173	2	com_scheduler.task.3	Update Notification	{}
100	27	19	20	3	com_content.article.1	Comunicaciones	{}
\.


--
-- Data for Name: jos_associations; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.jos_associations (id, context, key) FROM stdin;
\.


--
-- Data for Name: jos_banner_clients; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.jos_banner_clients (id, name, contact, email, extrainfo, state, checked_out, checked_out_time, metakey, own_prefix, metakey_prefix, purchase_type, track_clicks, track_impressions) FROM stdin;
\.


--
-- Data for Name: jos_banner_tracks; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.jos_banner_tracks (track_date, track_type, banner_id, count) FROM stdin;
\.


--
-- Data for Name: jos_banners; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.jos_banners (id, cid, type, name, alias, imptotal, impmade, clicks, clickurl, state, catid, description, custombannercode, sticky, ordering, metakey, params, own_prefix, metakey_prefix, purchase_type, track_clicks, track_impressions, checked_out, checked_out_time, publish_up, publish_down, reset, created, language, created_by, created_by_alias, modified, modified_by, version) FROM stdin;
\.


--
-- Data for Name: jos_categories; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.jos_categories (id, asset_id, parent_id, lft, rgt, level, path, extension, title, alias, note, description, published, checked_out, checked_out_time, access, params, metadesc, metakey, metadata, created_user_id, created_time, modified_user_id, modified_time, hits, language, version) FROM stdin;
1	0	0	0	11	0		system	ROOT	root			1	\N	\N	1	{}			{}	758	2026-09-28 17:56:41.694304	758	2026-09-28 17:56:41.694304	0	*	1
2	27	1	1	2	1	uncategorised	com_content	Uncategorised	uncategorised			1	\N	\N	1	{"category_layout":"","image":"","workflow_id":"use_default"}			{"author":"","robots":""}	758	2026-09-28 17:56:41.694304	758	2026-09-28 17:56:41.694304	0	*	1
3	28	1	3	4	1	uncategorised	com_banners	Uncategorised	uncategorised			1	\N	\N	1	{"category_layout":"","image":""}			{"author":"","robots":""}	758	2026-09-28 17:56:41.694304	758	2026-09-28 17:56:41.694304	0	*	1
4	29	1	5	6	1	uncategorised	com_contact	Uncategorised	uncategorised			1	\N	\N	1	{"category_layout":"","image":""}			{"author":"","robots":""}	758	2026-09-28 17:56:41.694304	758	2026-09-28 17:56:41.694304	0	*	1
5	30	1	7	8	1	uncategorised	com_newsfeeds	Uncategorised	uncategorised			1	\N	\N	1	{"category_layout":"","image":""}			{"author":"","robots":""}	758	2026-09-28 17:56:41.694304	758	2026-09-28 17:56:41.694304	0	*	1
7	32	1	9	10	1	uncategorised	com_users	Uncategorised	uncategorised			1	\N	\N	1	{"category_layout":"","image":""}			{"author":"","robots":""}	758	2026-09-28 17:56:41.694304	758	2026-09-28 17:56:41.694304	0	*	1
\.


--
-- Data for Name: jos_contact_details; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.jos_contact_details (id, name, alias, con_position, address, suburb, state, country, postcode, telephone, fax, misc, image, email_to, default_con, published, checked_out, checked_out_time, ordering, params, user_id, catid, access, mobile, webpage, sortname1, sortname2, sortname3, language, created, created_by, created_by_alias, modified, modified_by, metakey, metadesc, metadata, featured, publish_up, publish_down, version, hits) FROM stdin;
\.


--
-- Data for Name: jos_content; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.jos_content (id, asset_id, title, alias, introtext, fulltext, state, catid, created, created_by, created_by_alias, modified, modified_by, checked_out, checked_out_time, publish_up, publish_down, images, urls, attribs, version, ordering, metakey, metadesc, access, hits, metadata, featured, language, note) FROM stdin;
1	100	Comunicaciones	comunicaciones	<p><img src="images/ahhh/diagrama_arquitectura_joomla_ligero.jpg" width="1200" height="800" loading="lazy" data-path="local-images:/ahhh/diagrama_arquitectura_joomla_ligero.jpg"><br><br></p>\r\n<p><img src="images/cat-cat-meme.png" width="498" height="400" loading="lazy" data-path="local-images:/cat-cat-meme.png"><br><br></p>		1	2	2026-09-28 18:49:42	758		2026-09-28 18:51:38	758	\N	\N	2026-09-28 18:49:42	\N	{"image_intro":"","image_intro_alt":"","float_intro":"","image_intro_caption":"","image_fulltext":"","image_fulltext_alt":"","float_fulltext":"","image_fulltext_caption":""}	{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}	{"article_layout":"","show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_page_title":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}	3	0			1	8	{"robots":"","author":"","rights":""}	0	*	
\.


--
-- Data for Name: jos_content_frontpage; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.jos_content_frontpage (content_id, ordering, featured_up, featured_down) FROM stdin;
1	1	\N	\N
\.


--
-- Data for Name: jos_content_rating; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.jos_content_rating (content_id, rating_sum, rating_count, lastip) FROM stdin;
\.


--
-- Data for Name: jos_content_types; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.jos_content_types (type_id, type_title, type_alias, "table", rules, field_mappings, router, content_history_options) FROM stdin;
1	Article	com_content.article	{"special":{"dbtable":"#__content","key":"id","type":"ArticleTable","prefix":"Joomla\\\\Component\\\\Content\\\\Administrator\\\\Table\\\\","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"Joomla\\\\CMS\\\\Table\\\\","config":"array()"}}		{"common":{"core_content_item_id":"id","core_title":"title","core_state":"state","core_alias":"alias","core_created_user_id":"created_by","core_created_by_alias":"created_by_alias","core_created_time":"created","core_modified_time":"modified","core_body":"introtext", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"attribs", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "asset_id":"asset_id", "note":"note"}, "special":{"fulltext":"fulltext"}}	ContentHelperRoute::getArticleRoute	{"formFile":"administrator\\/components\\/com_content\\/forms\\/article.xml", "hideFields":["asset_id","checked_out","checked_out_time","version"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits", "ordering"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"tags","targetTable":"#__tags","targetColumn":"id","displayColumn":"title"} ]}
2	Contact	com_contact.contact	{"special":{"dbtable":"#__contact_details","key":"id","type":"ContactTable","prefix":"Joomla\\\\Component\\\\Contact\\\\Administrator\\\\Table\\\\","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"Joomla\\\\CMS\\\\Table\\\\","config":"array()"}}		{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"address", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"image", "core_urls":"webpage", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "asset_id":"null"}, "special":{"con_position":"con_position","suburb":"suburb","state":"state","country":"country","postcode":"postcode","telephone":"telephone","fax":"fax","misc":"misc","email_to":"email_to","default_con":"default_con","user_id":"user_id","mobile":"mobile","sortname1":"sortname1","sortname2":"sortname2","sortname3":"sortname3"}}	ContactHelperRoute::getContactRoute	{"formFile":"administrator\\/components\\/com_contact\\/forms\\/contact.xml","hideFields":["default_con","checked_out","checked_out_time","version"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"], "displayLookup":[ {"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"tags","targetTable":"#__tags","targetColumn":"id","displayColumn":"title"} ] }
3	Newsfeed	com_newsfeeds.newsfeed	{"special":{"dbtable":"#__newsfeeds","key":"id","type":"NewsfeedTable","prefix":"Joomla\\\\Component\\\\Newsfeeds\\\\Administrator\\\\Table\\\\","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"Joomla\\\\CMS\\\\Table\\\\","config":"array()"}}		{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"link", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "asset_id":"null"}, "special":{"numarticles":"numarticles","cache_time":"cache_time","rtl":"rtl"}}	NewsfeedsHelperRoute::getNewsfeedRoute	{"formFile":"administrator\\/components\\/com_newsfeeds\\/forms\\/newsfeed.xml","hideFields":["asset_id","checked_out","checked_out_time","version"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"tags","targetTable":"#__tags","targetColumn":"id","displayColumn":"title"} ]}
4	User	com_users.user	{"special":{"dbtable":"#__users","key":"id","type":"User","prefix":"Joomla\\\\CMS\\\\Table\\\\","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"Joomla\\\\CMS\\\\Table\\\\","config":"array()"}}		{"common":{"core_content_item_id":"id","core_title":"name","core_state":"null","core_alias":"username","core_created_time":"registerDate","core_modified_time":"lastvisitDate","core_body":"null", "core_hits":"null","core_publish_up":"null","core_publish_down":"null","access":"null", "core_params":"params", "core_featured":"null", "core_metadata":"null", "core_language":"null", "core_images":"null", "core_urls":"null", "core_version":"null", "core_ordering":"null", "core_metakey":"null", "core_metadesc":"null", "core_catid":"null", "asset_id":"null"}, "special":{}}		
5	Article Category	com_content.category	{"special":{"dbtable":"#__categories","key":"id","type":"CategoryTable","prefix":"Joomla\\\\Component\\\\Categories\\\\Administrator\\\\Table\\\\","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"Joomla\\\\CMS\\\\Table\\\\","config":"array()"}}		{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}	ContentHelperRoute::getCategoryRoute	{"formFile":"administrator\\/components\\/com_categories\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"tags","targetTable":"#__tags","targetColumn":"id","displayColumn":"title"}]}
6	Contact Category	com_contact.category	{"special":{"dbtable":"#__categories","key":"id","type":"CategoryTable","prefix":"Joomla\\\\Component\\\\Categories\\\\Administrator\\\\Table\\\\","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"Joomla\\\\CMS\\\\Table\\\\","config":"array()"}}		{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}	ContactHelperRoute::getCategoryRoute	{"formFile":"administrator\\/components\\/com_categories\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"tags","targetTable":"#__tags","targetColumn":"id","displayColumn":"title"}]}
7	Newsfeeds Category	com_newsfeeds.category	{"special":{"dbtable":"#__categories","key":"id","type":"CategoryTable","prefix":"Joomla\\\\Component\\\\Categories\\\\Administrator\\\\Table\\\\","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"Joomla\\\\CMS\\\\Table\\\\","config":"array()"}}		{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}	NewsfeedsHelperRoute::getCategoryRoute	{"formFile":"administrator\\/components\\/com_categories\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"tags","targetTable":"#__tags","targetColumn":"id","displayColumn":"title"}]}
8	Tag	com_tags.tag	{"special":{"dbtable":"#__tags","key":"tag_id","type":"TagTable","prefix":"Joomla\\\\Component\\\\Tags\\\\Administrator\\\\Table\\\\","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"Joomla\\\\CMS\\\\Table\\\\","config":"array()"}}		{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"null", "asset_id":"null"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path"}}	TagsHelperRoute::getTagRoute	{"formFile":"administrator\\/components\\/com_tags\\/forms\\/tag.xml", "hideFields":["checked_out","checked_out_time","version", "lft", "rgt", "level", "path", "urls", "publish_up", "publish_down"],"ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}
9	Banner	com_banners.banner	{"special":{"dbtable":"#__banners","key":"id","type":"BannerTable","prefix":"Joomla\\\\Component\\\\Banners\\\\Administrator\\\\Table\\\\","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"Joomla\\\\CMS\\\\Table\\\\","config":"array()"}}		{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"null","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"link", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "asset_id":"null"}, "special":{"imptotal":"imptotal", "impmade":"impmade", "clicks":"clicks", "clickurl":"clickurl", "custombannercode":"custombannercode", "cid":"cid", "purchase_type":"purchase_type", "track_impressions":"track_impressions", "track_clicks":"track_clicks"}}		{"formFile":"administrator\\/components\\/com_banners\\/forms\\/banner.xml", "hideFields":["checked_out","checked_out_time","version", "reset"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "imptotal", "impmade", "reset"], "convertToInt":["publish_up", "publish_down", "ordering"], "displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"cid","targetTable":"#__banner_clients","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}
10	Banners Category	com_banners.category	{"special":{"dbtable":"#__categories","key":"id","type":"CategoryTable","prefix":"Joomla\\\\Component\\\\Categories\\\\Administrator\\\\Table\\\\","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"Joomla\\\\CMS\\\\Table\\\\","config":"array()"}}		{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "asset_id":"asset_id"}, "special": {"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}		{"formFile":"administrator\\/components\\/com_categories\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"], "convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"tags","targetTable":"#__tags","targetColumn":"id","displayColumn":"title"}]}
11	Banner Client	com_banners.client	{"special":{"dbtable":"#__banner_clients","key":"id","type":"ClientTable","prefix":"Joomla\\\\Component\\\\Banners\\\\Administrator\\\\Table\\\\"}}				{"formFile":"administrator\\/components\\/com_banners\\/forms\\/client.xml", "hideFields":["checked_out","checked_out_time"], "ignoreChanges":["checked_out", "checked_out_time"], "convertToInt":[], "displayLookup":[]}
12	User Notes	com_users.note	{"special":{"dbtable":"#__user_notes","key":"id","type":"NoteTable","prefix":"Joomla\\\\Component\\\\Users\\\\Administrator\\\\Table\\\\"}}				{"formFile":"administrator\\/components\\/com_users\\/forms\\/note.xml", "hideFields":["checked_out","checked_out_time", "publish_up", "publish_down"],"ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time"], "convertToInt":["publish_up", "publish_down"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}
13	User Notes Category	com_users.category	{"special":{"dbtable":"#__categories","key":"id","type":"CategoryTable","prefix":"Joomla\\\\Component\\\\Categories\\\\Administrator\\\\Table\\\\","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"Joomla\\\\CMS\\\\Table\\\\","config":"array()"}}		{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}		{"formFile":"administrator\\/components\\/com_categories\\/forms\\/category.xml", "hideFields":["checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"], "convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"tags","targetTable":"#__tags","targetColumn":"id","displayColumn":"title"}]}
14	Module	com_modules.module	{"special":{"dbtable":"#__modules","key":"id","type":"Module","prefix":"Joomla\\\\CMS\\\\Table\\\\"}}		{}		{"formFile":"administrator\\/components\\/com_modules\\/forms\\/module.xml", "hideFields":["checked_out", "checked_out_time", "publish_up", "publish_down"], "ignoreChanges":["checked_out", "checked_out_time"], "convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"checked_out", "targetTable":"#__users", "targetColumn":"id", "displayColumn":"name"}]}
\.


--
-- Data for Name: jos_contentitem_tag_map; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.jos_contentitem_tag_map (type_alias, core_content_id, content_item_id, tag_id, tag_date, type_id) FROM stdin;
\.


--
-- Data for Name: jos_extensions; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.jos_extensions (extension_id, package_id, name, type, element, changelogurl, folder, client_id, enabled, access, protected, locked, manifest_cache, params, custom_data, checked_out, checked_out_time, ordering, state, note) FROM stdin;
4	0	com_cache	component	com_cache			1	1	1	1	1	{"name":"com_cache","type":"component","creationDate":"2006-04","author":"Joomla! Project","copyright":"(C) 2006 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"4.0.0","description":"COM_CACHE_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Component\\\\Cache"}			\N	\N	0	0	\N
8	0	com_cpanel	component	com_cpanel			1	1	1	1	1	{"name":"com_cpanel","type":"component","creationDate":"2007-06","author":"Joomla! Project","copyright":"(C) 2007 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"4.0.0","description":"COM_CPANEL_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Component\\\\Cpanel"}			\N	\N	0	0	\N
9	0	com_installer	component	com_installer			1	1	1	1	1	{"name":"com_installer","type":"component","creationDate":"2006-04","author":"Joomla! Project","copyright":"(C) 2006 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"4.0.0","description":"COM_INSTALLER_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Component\\\\Installer"}	{"cachetimeout":"6","minimum_stability":"4"}		\N	\N	0	0	\N
10	0	com_languages	component	com_languages			1	1	1	1	1	{"name":"com_languages","type":"component","creationDate":"2006-04","author":"Joomla! Project","copyright":"(C) 2006 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"4.0.0","description":"COM_LANGUAGES_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Component\\\\Languages"}	{"administrator":"en-GB","site":"en-GB"}		\N	\N	0	0	\N
11	0	com_login	component	com_login			1	1	1	1	1	{"name":"com_login","type":"component","creationDate":"2006-04","author":"Joomla! Project","copyright":"(C) 2006 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"4.0.0","description":"COM_LOGIN_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Component\\\\Login"}			\N	\N	0	0	\N
13	0	com_menus	component	com_menus			1	1	1	1	1	{"name":"com_menus","type":"component","creationDate":"2006-04","author":"Joomla! Project","copyright":"(C) 2006 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"4.0.0","description":"COM_MENUS_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Component\\\\Menus","filename":"menus"}	{"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":""}		\N	\N	0	0	\N
14	0	com_messages	component	com_messages			1	1	1	1	1	{"name":"com_messages","type":"component","creationDate":"2006-04","author":"Joomla! Project","copyright":"(C) 2006 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"4.0.0","description":"COM_MESSAGES_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Component\\\\Messages"}			\N	\N	0	0	\N
15	0	com_modules	component	com_modules			1	1	1	1	1	{"name":"com_modules","type":"component","creationDate":"2006-04","author":"Joomla! Project","copyright":"(C) 2006 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"4.0.0","description":"COM_MODULES_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Component\\\\Modules","filename":"modules"}			\N	\N	0	0	\N
17	0	com_plugins	component	com_plugins			1	1	1	1	1	{"name":"com_plugins","type":"component","creationDate":"2006-04","author":"Joomla! Project","copyright":"(C) 2006 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"4.0.0","description":"COM_PLUGINS_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Component\\\\Plugins"}			\N	\N	0	0	\N
18	0	com_templates	component	com_templates			1	1	1	1	1	{"name":"com_templates","type":"component","creationDate":"2006-04","author":"Joomla! Project","copyright":"(C) 2006 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"4.0.0","description":"COM_TEMPLATES_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Component\\\\Templates"}	{"template_positions_display":"0","upload_limit":"10","image_formats":"gif,bmp,jpg,jpeg,png,webp","source_formats":"txt,less,ini,xml,js,php,css,scss,sass,json","font_formats":"woff,woff2,ttf,otf","compressed_formats":"zip","difference":"SideBySide"}		\N	\N	0	0	\N
20	0	com_config	component	com_config			1	1	0	1	1	{"name":"com_config","type":"component","creationDate":"2006-04","author":"Joomla! Project","copyright":"(C) 2006 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"4.0.0","description":"COM_CONFIG_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Component\\\\Config","filename":"config"}	{"filters":{"1":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"9":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"6":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"7":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"2":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"3":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"4":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"5":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"8":{"filter_type":"NONE","filter_tags":"","filter_attributes":""}}}		\N	\N	0	0	\N
21	0	com_redirect	component	com_redirect			1	1	0	0	1	{"name":"com_redirect","type":"component","creationDate":"2006-04","author":"Joomla! Project","copyright":"(C) 2006 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"4.0.0","description":"COM_REDIRECT_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Component\\\\Redirect"}			\N	\N	0	0	\N
67	0	mod_loginsupport	module	mod_loginsupport			1	1	1	0	1	{"name":"mod_loginsupport","type":"module","creationDate":"2019-06","author":"Joomla! Project","copyright":"(C) 2019 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"4.0.0","description":"MOD_LOGINSUPPORT_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Module\\\\Loginsupport","filename":"mod_loginsupport"}			\N	\N	0	0	\N
26	0	com_contenthistory	component	com_contenthistory			1	1	1	0	1	{"name":"com_contenthistory","type":"component","creationDate":"2013-05","author":"Joomla! Project","copyright":"(C) 2013 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"4.0.0","description":"COM_CONTENTHISTORY_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Component\\\\Contenthistory","filename":"contenthistory"}			\N	\N	0	0	\N
27	0	com_ajax	component	com_ajax			1	1	1	1	1	{"name":"com_ajax","type":"component","creationDate":"2013-08","author":"Joomla! Project","copyright":"(C) 2013 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"4.0.0","description":"COM_AJAX_XML_DESCRIPTION","group":"","changelogurl":"","filename":"ajax"}			\N	\N	0	0	\N
28	0	com_postinstall	component	com_postinstall			1	1	1	1	1	{"name":"com_postinstall","type":"component","creationDate":"2013-09","author":"Joomla! Project","copyright":"(C) 2013 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"4.0.0","description":"COM_POSTINSTALL_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Component\\\\Postinstall"}			\N	\N	0	0	\N
29	0	com_fields	component	com_fields			1	1	1	0	1	{"name":"com_fields","type":"component","creationDate":"2016-03","author":"Joomla! Project","copyright":"(C) 2016 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"4.0.0","description":"COM_FIELDS_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Component\\\\Fields","filename":"fields"}			\N	\N	0	0	\N
31	0	com_privacy	component	com_privacy			1	1	1	0	1	{"name":"com_privacy","type":"component","creationDate":"2018-05","author":"Joomla! Project","copyright":"(C) 2018 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.9.0","description":"COM_PRIVACY_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Component\\\\Privacy","filename":"privacy"}			\N	\N	0	0	\N
33	0	com_workflow	component	com_workflow			1	1	0	1	1	{"name":"com_workflow","type":"component","creationDate":"2017-06","author":"Joomla! Project","copyright":"(C) 2018 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"4.0.0","description":"COM_WORKFLOW_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Component\\\\Workflow"}	{}		\N	\N	0	0	\N
35	0	com_scheduler	component	com_scheduler			1	1	1	0	1	{"name":"com_scheduler","type":"component","creationDate":"2021-07","author":"Joomla! Project","copyright":"(C) 2021 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"4.1.0","description":"COM_SCHEDULER_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Component\\\\Scheduler"}	{}		\N	\N	0	0	\N
38	0	lib_phpass	library	phpass			0	1	1	1	1	{"name":"lib_phpass","type":"library","creationDate":"2004-01","author":"Solar Designer","copyright":"","authorEmail":"solar@openwall.com","authorUrl":"https:\\/\\/www.openwall.com\\/phpass\\/","version":"0.5.1","description":"LIB_PHPASS_XML_DESCRIPTION","group":"","changelogurl":"","filename":"phpass"}			\N	\N	0	0	\N
42	0	mod_banners	module	mod_banners			0	1	1	0	1	{"name":"mod_banners","type":"module","creationDate":"2006-07","author":"Joomla! Project","copyright":"(C) 2006 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_BANNERS_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Module\\\\Banners","filename":"mod_banners"}			\N	\N	0	0	\N
46	0	mod_footer	module	mod_footer			0	1	1	0	1	{"name":"mod_footer","type":"module","creationDate":"2006-07","author":"Joomla! Project","copyright":"(C) 2006 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FOOTER_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Module\\\\Footer","filename":"mod_footer"}			\N	\N	0	0	\N
50	0	mod_random_image	module	mod_random_image			0	1	1	0	1	{"name":"mod_random_image","type":"module","creationDate":"2006-07","author":"Joomla! Project","copyright":"(C) 2006 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_RANDOM_IMAGE_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Module\\\\RandomImage","filename":"mod_random_image"}			\N	\N	0	0	\N
54	0	mod_users_latest	module	mod_users_latest			0	1	1	0	1	{"name":"mod_users_latest","type":"module","creationDate":"2009-12","author":"Joomla! Project","copyright":"(C) 2009 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_USERS_LATEST_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Module\\\\UsersLatest","filename":"mod_users_latest"}			\N	\N	0	0	\N
59	0	mod_languages	module	mod_languages			0	1	1	0	1	{"name":"mod_languages","type":"module","creationDate":"2010-02","author":"Joomla! Project","copyright":"(C) 2010 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.5.0","description":"MOD_LANGUAGES_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Module\\\\Languages","filename":"mod_languages"}			\N	\N	0	0	\N
62	0	mod_custom	module	mod_custom			1	1	1	0	1	{"name":"mod_custom","type":"module","creationDate":"2004-07","author":"Joomla! Project","copyright":"(C) 2005 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Module\\\\Custom","filename":"mod_custom"}			\N	\N	0	0	\N
66	0	mod_login	module	mod_login			1	1	1	0	1	{"name":"mod_login","type":"module","creationDate":"2005-03","author":"Joomla! Project","copyright":"(C) 2005 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Module\\\\Login","filename":"mod_login"}			\N	\N	0	0	\N
72	0	mod_messages	module	mod_messages			1	1	1	0	1	{"name":"mod_messages","type":"module","creationDate":"2019-07","author":"Joomla! Project","copyright":"(C) 2019 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"4.0.0","description":"MOD_MESSAGES_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Module\\\\Messages","filename":"mod_messages"}			\N	\N	0	0	\N
76	0	mod_toolbar	module	mod_toolbar			1	1	1	0	1	{"name":"mod_toolbar","type":"module","creationDate":"2005-11","author":"Joomla! Project","copyright":"(C) 2005 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_TOOLBAR_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Module\\\\Toolbar","filename":"mod_toolbar"}			\N	\N	0	0	\N
80	0	mod_tags_popular	module	mod_tags_popular			0	1	1	0	1	{"name":"mod_tags_popular","type":"module","creationDate":"2013-01","author":"Joomla! Project","copyright":"(C) 2013 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"MOD_TAGS_POPULAR_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Module\\\\TagsPopular","filename":"mod_tags_popular"}	{"maximum":"5","timeframe":"alltime","owncache":"1"}		\N	\N	0	0	\N
82	0	mod_sampledata	module	mod_sampledata			1	1	1	0	1	{"name":"mod_sampledata","type":"module","creationDate":"2017-07","author":"Joomla! Project","copyright":"(C) 2017 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.8.0","description":"MOD_SAMPLEDATA_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Module\\\\Sampledata","filename":"mod_sampledata"}	{}		\N	\N	0	0	\N
86	0	mod_privacy_status	module	mod_privacy_status			1	1	1	0	1	{"name":"mod_privacy_status","type":"module","creationDate":"2019-07","author":"Joomla! Project","copyright":"(C) 2019 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"4.0.0","description":"MOD_PRIVACY_STATUS_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Module\\\\PrivacyStatus","filename":"mod_privacy_status"}	{}		\N	\N	0	0	\N
90	0	plg_api-authentication_token	plugin	token		api-authentication	0	1	1	0	1	{"name":"plg_api-authentication_token","type":"plugin","creationDate":"2019-11","author":"Joomla! Project","copyright":"(C) 2020 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"4.0.0","description":"PLG_API-AUTHENTICATION_TOKEN_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\ApiAuthentication\\\\Token","filename":"token"}	{}		\N	\N	2	0	\N
94	0	plg_behaviour_compat6	plugin	compat6		behaviour	0	0	1	0	1	{"name":"plg_behaviour_compat6","type":"plugin","creationDate":"2025-04","author":"Joomla! Project","copyright":"(C) 2025 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"6.0.0","description":"PLG_COMPAT6_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\Behaviour\\\\Compat6","filename":"compat6"}	{"classes_aliases":"0","legacy_classes":"1"}		\N	\N	1	0	\N
96	0	plg_behaviour_versionable	plugin	versionable		behaviour	0	1	1	0	1	{"name":"plg_behaviour_versionable","type":"plugin","creationDate":"2015-08","author":"Joomla! Project","copyright":"(C) 2016 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"4.0.0","description":"PLG_BEHAVIOUR_VERSIONABLE_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\Behaviour\\\\Versionable","filename":"versionable"}	{}		\N	\N	3	0	\N
99	0	plg_content_contact	plugin	contact		content	0	1	1	0	1	{"name":"plg_content_contact","type":"plugin","creationDate":"2014-01","author":"Joomla! Project","copyright":"(C) 2014 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.2","description":"PLG_CONTENT_CONTACT_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\Content\\\\Contact","filename":"contact"}			\N	\N	2	0	\N
103	0	plg_content_joomla	plugin	joomla		content	0	1	1	0	1	{"name":"plg_content_joomla","type":"plugin","creationDate":"2010-11","author":"Joomla! Project","copyright":"(C) 2010 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_JOOMLA_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\Content\\\\Joomla","filename":"joomla"}			\N	\N	6	0	\N
107	0	plg_content_vote	plugin	vote		content	0	0	1	0	1	{"name":"plg_content_vote","type":"plugin","creationDate":"2005-11","author":"Joomla! Project","copyright":"(C) 2005 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_VOTE_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\Content\\\\Vote","filename":"vote"}			\N	\N	10	0	\N
110	0	plg_editors-xtd_fields	plugin	fields		editors-xtd	0	1	1	0	1	{"name":"plg_editors-xtd_fields","type":"plugin","creationDate":"2017-02","author":"Joomla! Project","copyright":"(C) 2017 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_EDITORS-XTD_FIELDS_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\EditorsXtd\\\\Fields","filename":"fields"}			\N	\N	3	0	\N
114	0	plg_editors-xtd_pagebreak	plugin	pagebreak		editors-xtd	0	1	1	0	1	{"name":"plg_editors-xtd_pagebreak","type":"plugin","creationDate":"2004-08","author":"Joomla! Project","copyright":"(C) 2005 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\EditorsXtd\\\\PageBreak","filename":"pagebreak"}			\N	\N	7	0	\N
117	0	plg_editors_none	plugin	none		editors	0	1	1	1	1	{"name":"plg_editors_none","type":"plugin","creationDate":"2005-09","author":"Joomla! Project","copyright":"(C) 2005 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_NONE_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\Editors\\\\None","filename":"none"}			\N	\N	2	0	\N
119	0	plg_extension_finder	plugin	finder		extension	0	1	1	0	1	{"name":"plg_extension_finder","type":"plugin","creationDate":"2018-06","author":"Joomla! Project","copyright":"(C) 2019 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"4.0.0","description":"PLG_EXTENSION_FINDER_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\Extension\\\\Finder","filename":"finder"}			\N	\N	1	0	\N
120	0	plg_extension_joomla	plugin	joomla		extension	0	1	1	0	1	{"name":"plg_extension_joomla","type":"plugin","creationDate":"2010-05","author":"Joomla! Project","copyright":"(C) 2010 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\Extension\\\\Joomla","filename":"joomla"}			\N	\N	2	0	\N
123	0	plg_fields_calendar	plugin	calendar		fields	0	1	1	0	1	{"name":"plg_fields_calendar","type":"plugin","creationDate":"2016-03","author":"Joomla! Project","copyright":"(C) 2016 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_CALENDAR_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\Fields\\\\Calendar","filename":"calendar"}			\N	\N	1	0	\N
127	0	plg_fields_imagelist	plugin	imagelist		fields	0	1	1	0	1	{"name":"plg_fields_imagelist","type":"plugin","creationDate":"2016-03","author":"Joomla! Project","copyright":"(C) 2016 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_IMAGELIST_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\Fields\\\\Imagelist","filename":"imagelist"}			\N	\N	5	0	\N
129	0	plg_fields_list	plugin	list		fields	0	1	1	0	1	{"name":"plg_fields_list","type":"plugin","creationDate":"2016-03","author":"Joomla! Project","copyright":"(C) 2016 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_LIST_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\Fields\\\\ListField","filename":"list"}			\N	\N	7	0	\N
133	0	plg_fields_radio	plugin	radio		fields	0	1	1	0	1	{"name":"plg_fields_radio","type":"plugin","creationDate":"2016-03","author":"Joomla! Project","copyright":"(C) 2016 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_RADIO_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\Fields\\\\Radio","filename":"radio"}			\N	\N	11	0	\N
136	0	plg_fields_text	plugin	text		fields	0	1	1	0	1	{"name":"plg_fields_text","type":"plugin","creationDate":"2016-03","author":"Joomla! Project","copyright":"(C) 2016 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_TEXT_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\Fields\\\\Text","filename":"text"}			\N	\N	14	0	\N
138	0	plg_fields_url	plugin	url		fields	0	1	1	0	1	{"name":"plg_fields_url","type":"plugin","creationDate":"2016-03","author":"Joomla! Project","copyright":"(C) 2016 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_URL_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\Fields\\\\Url","filename":"url"}			\N	\N	16	0	\N
143	0	plg_finder_contacts	plugin	contacts		finder	0	1	1	0	1	{"name":"plg_finder_contacts","type":"plugin","creationDate":"2011-08","author":"Joomla! Project","copyright":"(C) 2011 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CONTACTS_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\Finder\\\\Contacts","filename":"contacts"}			\N	\N	2	0	\N
146	0	plg_finder_tags	plugin	tags		finder	0	1	1	0	1	{"name":"plg_finder_tags","type":"plugin","creationDate":"2013-02","author":"Joomla! Project","copyright":"(C) 2013 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_TAGS_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\Finder\\\\Tags","filename":"tags"}			\N	\N	5	0	\N
150	0	plg_installer_urlinstaller	plugin	urlinstaller		installer	0	1	1	0	1	{"name":"plg_installer_urlinstaller","type":"plugin","creationDate":"2016-05","author":"Joomla! Project","copyright":"(C) 2016 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.6.0","description":"PLG_INSTALLER_URLINSTALLER_PLUGIN_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\Installer\\\\Url","filename":"urlinstaller"}			\N	\N	3	0	\N
154	0	plg_media-action_rotate	plugin	rotate		media-action	0	1	1	0	1	{"name":"plg_media-action_rotate","type":"plugin","creationDate":"2017-01","author":"Joomla! Project","copyright":"(C) 2017 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"4.0.0","description":"PLG_MEDIA-ACTION_ROTATE_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\MediaAction\\\\Rotate","filename":"rotate"}	{}		\N	\N	3	0	\N
157	0	plg_privacy_contact	plugin	contact		privacy	0	1	1	0	1	{"name":"plg_privacy_contact","type":"plugin","creationDate":"2018-07","author":"Joomla! Project","copyright":"(C) 2018 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.9.0","description":"PLG_PRIVACY_CONTACT_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\Privacy\\\\Contact","filename":"contact"}	{}		\N	\N	3	0	\N
161	0	plg_quickicon_autoupdate	plugin	autoupdate		quickicon	0	1	1	0	1	{"name":"plg_quickicon_autoupdate","type":"plugin","creationDate":"2025-03","author":"Joomla! Project","copyright":"(C) 2025 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"5.4.0","description":"PLG_QUICKICON_AUTOUPDATE_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\Quickicon\\\\Autoupdate","filename":"autoupdate"}			\N	\N	1	0	\N
165	0	plg_quickicon_downloadkey	plugin	downloadkey		quickicon	0	1	1	0	1	{"name":"plg_quickicon_downloadkey","type":"plugin","creationDate":"2019-10","author":"Joomla! Project","copyright":"(C) 2019 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"4.0.0","description":"PLG_QUICKICON_DOWNLOADKEY_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\Quickicon\\\\Downloadkey","filename":"downloadkey"}			\N	\N	5	0	\N
5	0	com_categories	component	com_categories			1	1	1	1	1	{"name":"com_categories","type":"component","creationDate":"2007-12","author":"Joomla! Project","copyright":"(C) 2007 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"4.0.0","description":"COM_CATEGORIES_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Component\\\\Categories"}			\N	\N	0	0	\N
173	0	plg_schemaorg_book	plugin	book		schemaorg	0	1	1	0	1	{"name":"plg_schemaorg_book","type":"plugin","creationDate":"2023-07","author":"Joomla! Project","copyright":"(C) 2023 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"5.0.0","description":"PLG_SCHEMAORG_BOOK_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\Schemaorg\\\\Book","filename":"book"}	{}		\N	\N	3	0	\N
176	0	plg_schemaorg_organization	plugin	organization		schemaorg	0	1	1	0	1	{"name":"plg_schemaorg_organization","type":"plugin","creationDate":"2023-07","author":"Joomla! Project","copyright":"(C) 2023 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"5.0.0","description":"PLG_SCHEMAORG_ORGANIZATION_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\Schemaorg\\\\Organization","filename":"organization"}	{}		\N	\N	6	0	\N
180	0	plg_system_accessibility	plugin	accessibility		system	0	0	1	0	1	{"name":"plg_system_accessibility","type":"plugin","creationDate":"2020-02-15","author":"Joomla! Project","copyright":"(C) 2020 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"4.0.0","description":"PLG_SYSTEM_ACCESSIBILITY_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\System\\\\Accessibility","filename":"accessibility"}	{}		\N	\N	1	0	\N
184	0	plg_system_fields	plugin	fields		system	0	1	1	0	1	{"name":"plg_system_fields","type":"plugin","creationDate":"2016-03","author":"Joomla! Project","copyright":"(C) 2016 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_SYSTEM_FIELDS_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\System\\\\Fields","filename":"fields"}			\N	\N	5	0	\N
186	0	plg_system_httpheaders	plugin	httpheaders		system	0	1	1	0	1	{"name":"plg_system_httpheaders","type":"plugin","creationDate":"2017-10","author":"Joomla! Project","copyright":"(C) 2018 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"4.0.0","description":"PLG_SYSTEM_HTTPHEADERS_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\System\\\\Httpheaders","filename":"httpheaders"}	{}		\N	\N	7	0	\N
190	0	plg_system_log	plugin	log		system	0	1	1	0	1	{"name":"plg_system_log","type":"plugin","creationDate":"2007-04","author":"Joomla! Project","copyright":"(C) 2007 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LOG_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\System\\\\Log","filename":"log"}			\N	\N	11	0	\N
193	0	plg_system_redirect	plugin	redirect		system	0	0	1	0	1	{"name":"plg_system_redirect","type":"plugin","creationDate":"2009-04","author":"Joomla! Project","copyright":"(C) 2009 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_REDIRECT_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\System\\\\Redirect","filename":"redirect"}			\N	\N	15	0	\N
197	0	plg_system_sef	plugin	sef		system	0	1	1	0	1	{"name":"plg_system_sef","type":"plugin","creationDate":"2007-12","author":"Joomla! Project","copyright":"(C) 2007 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEF_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\System\\\\Sef","filename":"sef"}	{"domain":"","indexphp":"1","trailingslash":"0","enforcesuffix":"1","strictrouting":"1"}		\N	\N	19	0	\N
201	0	plg_system_task_notification	plugin	tasknotification		system	0	1	1	0	1	{"name":"plg_system_task_notification","type":"plugin","creationDate":"2021-09","author":"Joomla! Project","copyright":"(C) 2021 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"4.1","description":"PLG_SYSTEM_TASK_NOTIFICATION_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\System\\\\TaskNotification","filename":"tasknotification"}			\N	\N	24	0	\N
205	0	plg_task_globalcheckin	plugin	globalcheckin		task	0	1	1	0	1	{"name":"plg_task_globalcheckin","type":"plugin","creationDate":"2023-06-22","author":"Joomla! Project","copyright":"(C) 2023 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"5.0.0","description":"PLG_TASK_GLOBALCHECKIN_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\Task\\\\Globalcheckin","filename":"globalcheckin"}	{}		\N	\N	3	0	\N
209	0	plg_task_sessiongc	plugin	sessiongc		task	0	1	1	0	1	{"name":"plg_task_sessiongc","type":"plugin","creationDate":"2023-08","author":"Joomla! Project","copyright":"(C) 2023 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"5.0.0","description":"PLG_TASK_SESSIONGC_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\Task\\\\SessionGC","filename":"sessiongc"}	{}		\N	\N	7	0	\N
213	0	plg_multifactorauth_yubikey	plugin	yubikey		multifactorauth	0	1	1	0	1	{"name":"plg_multifactorauth_yubikey","type":"plugin","creationDate":"2013-09","author":"Joomla! Project","copyright":"(C) 2013 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"PLG_MULTIFACTORAUTH_YUBIKEY_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\Multifactorauth\\\\Yubikey","filename":"yubikey"}			\N	\N	2	0	\N
216	0	plg_multifactorauth_fixed	plugin	fixed		multifactorauth	0	0	1	0	1	{"name":"plg_multifactorauth_fixed","type":"plugin","creationDate":"2022-05","author":"Joomla! Project","copyright":"(C) 2022 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"4.2.0","description":"PLG_MULTIFACTORAUTH_FIXED_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\Multifactorauth\\\\Fixed","filename":"fixed"}			\N	\N	5	0	\N
1	0	com_wrapper	component	com_wrapper			1	1	1	0	1	{"name":"com_wrapper","type":"component","creationDate":"2006-04","author":"Joomla! Project","copyright":"(C) 2007 Open Source Matters, Inc.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"4.0.0","description":"COM_WRAPPER_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Component\\\\Wrapper","filename":"wrapper"}			\N	\N	0	0	\N
2	0	com_admin	component	com_admin			1	1	1	1	1	{"name":"com_admin","type":"component","creationDate":"2006-04","author":"Joomla! Project","copyright":"(C) 2006 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"4.0.0","description":"COM_ADMIN_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Component\\\\Admin"}			\N	\N	0	0	\N
3	0	com_banners	component	com_banners			1	1	1	0	1	{"name":"com_banners","type":"component","creationDate":"2006-04","author":"Joomla! Project","copyright":"(C) 2006 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"4.0.0","description":"COM_BANNERS_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Component\\\\Banners","filename":"banners"}	{"purchase_type":"3","track_impressions":"0","track_clicks":"0","metakey_prefix":"","save_history":"1","history_limit":10}		\N	\N	0	0	\N
220	0	plg_user_terms	plugin	terms		user	0	0	1	0	1	{"name":"plg_user_terms","type":"plugin","creationDate":"2018-06","author":"Joomla! Project","copyright":"(C) 2018 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.9.0","description":"PLG_USER_TERMS_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\User\\\\Terms","filename":"terms"}	{}		\N	\N	4	0	\N
221	0	plg_user_token	plugin	token		user	0	1	1	0	1	{"name":"plg_user_token","type":"plugin","creationDate":"2019-11","author":"Joomla! Project","copyright":"(C) 2020 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.9.0","description":"PLG_USER_TOKEN_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\User\\\\Token","filename":"token"}	{}		\N	\N	5	0	\N
224	0	plg_webservices_contact	plugin	contact		webservices	0	1	1	0	1	{"name":"plg_webservices_contact","type":"plugin","creationDate":"2019-09","author":"Joomla! Project","copyright":"(C) 2019 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"4.0.0","description":"PLG_WEBSERVICES_CONTACT_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\WebServices\\\\Contact","filename":"contact"}	{}		\N	\N	3	0	\N
227	0	plg_webservices_joomlaupdate	plugin	joomlaupdate		webservices	0	1	1	0	1	{"name":"plg_webservices_joomlaupdate","type":"plugin","creationDate":"2025-03","author":"Joomla! Project","copyright":"(C) 2025 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"5.4.0","description":"PLG_WEBSERVICES_JOOMLAUPDATE_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\WebServices\\\\Joomlaupdate","filename":"joomlaupdate"}	{}		\N	\N	6	0	\N
231	0	plg_webservices_messages	plugin	messages		webservices	0	1	1	0	1	{"name":"plg_webservices_messages","type":"plugin","creationDate":"2019-09","author":"Joomla! Project","copyright":"(C) 2019 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"4.0.0","description":"PLG_WEBSERVICES_MESSAGES_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\WebServices\\\\Messages","filename":"messages"}	{}		\N	\N	10	0	\N
235	0	plg_webservices_privacy	plugin	privacy		webservices	0	1	1	0	1	{"name":"plg_webservices_privacy","type":"plugin","creationDate":"2019-09","author":"Joomla! Project","copyright":"(C) 2019 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"4.0.0","description":"PLG_WEBSERVICES_PRIVACY_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\WebServices\\\\Privacy","filename":"privacy"}	{}		\N	\N	14	0	\N
238	0	plg_webservices_templates	plugin	templates		webservices	0	1	1	0	1	{"name":"plg_webservices_templates","type":"plugin","creationDate":"2019-09","author":"Joomla! Project","copyright":"(C) 2019 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"4.0.0","description":"PLG_WEBSERVICES_TEMPLATES_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\WebServices\\\\Templates","filename":"templates"}	{}		\N	\N	17	0	\N
242	0	plg_workflow_publishing	plugin	publishing		workflow	0	1	1	0	1	{"name":"plg_workflow_publishing","type":"plugin","creationDate":"2020-03","author":"Joomla! Project","copyright":"(C) 2020 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"4.0.0","description":"PLG_WORKFLOW_PUBLISHING_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\Workflow\\\\Publishing","filename":"publishing"}	{}		\N	\N	3	0	\N
247	0	files_joomla	file	joomla			0	1	1	1	1	{"name":"files_joomla","type":"file","creationDate":"2026-08","author":"Joomla! Project","copyright":"(C) 2019 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"6.1.3","description":"FILES_JOOMLA_XML_DESCRIPTION","group":"","changelogurl":""}			\N	\N	0	0	\N
248	0	English (en-GB) Language Pack	package	pkg_en-GB			0	1	1	1	1	{"name":"English (en-GB) Language Pack","type":"package","creationDate":"2026-08","author":"Joomla! Project","copyright":"(C) 2019 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"6.1.3.1","description":"en-GB language pack","group":"","changelogurl":"","filename":"pkg_en-GB"}			\N	\N	0	0	\N
249	248	English (en-GB)	language	en-GB			0	1	1	1	1	{"name":"English (en-GB)","type":"language","creationDate":"2026-08","author":"Joomla! Project","copyright":"(C) 2006 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"6.1.3","description":"en-GB site language","group":"","changelogurl":""}			\N	\N	0	0	\N
250	248	English (en-GB)	language	en-GB			1	1	1	1	1	{"name":"English (en-GB)","type":"language","creationDate":"2026-08","author":"Joomla! Project","copyright":"(C) 2005 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"6.1.3","description":"en-GB administrator language","group":"","changelogurl":""}			\N	\N	0	0	\N
6	0	com_checkin	component	com_checkin			1	1	1	1	1	{"name":"com_checkin","type":"component","creationDate":"2006-04","author":"Joomla! Project","copyright":"(C) 2006 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"4.0.0","description":"COM_CHECKIN_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Component\\\\Checkin"}			\N	\N	0	0	\N
7	0	com_contact	component	com_contact			1	1	1	0	1	{"name":"com_contact","type":"component","creationDate":"2006-04","author":"Joomla! Project","copyright":"(C) 2006 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"4.0.0","description":"COM_CONTACT_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Component\\\\Contact","filename":"contact"}	{"contact_layout":"_:default","show_contact_category":"hide","save_history":"1","history_limit":10,"show_contact_list":"0","presentation_style":"sliders","show_tags":"1","show_info":"1","show_name":"1","show_position":"1","show_email":"0","show_street_address":"1","show_suburb":"1","show_state":"1","show_postcode":"1","show_country":"1","show_telephone":"1","show_mobile":"1","show_fax":"1","show_webpage":"1","show_image":"1","show_misc":"1","image":"","allow_vcard":"0","show_articles":"0","articles_display_num":"10","show_profile":"0","show_user_custom_fields":["-1"],"show_links":"0","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","contact_icons":"0","icon_address":"","icon_email":"","icon_telephone":"","icon_mobile":"","icon_fax":"","icon_misc":"","category_layout":"_:default","show_category_title":"1","show_description":"1","show_description_image":"0","maxLevel":"-1","show_subcat_desc":"1","show_empty_categories":"0","show_cat_items":"1","show_cat_tags":"1","show_base_description":"1","maxLevelcat":"-1","show_subcat_desc_cat":"1","show_empty_categories_cat":"0","show_cat_items_cat":"1","filter_field":"0","show_pagination_limit":"0","show_headings":"1","show_image_heading":"0","show_position_headings":"1","show_email_headings":"0","show_telephone_headings":"1","show_mobile_headings":"0","show_fax_headings":"0","show_suburb_headings":"1","show_state_headings":"1","show_country_headings":"1","show_pagination":"2","show_pagination_results":"1","initial_sort":"ordering","captcha":"","show_email_form":"1","show_email_copy":"0","banned_email":"","banned_subject":"","banned_text":"","validate_session":"1","custom_reply":"0","redirect":"","show_feed_link":"1","sef_ids":1,"custom_fields_enable":"1"}		\N	\N	0	0	\N
12	0	com_media	component	com_media			1	1	0	1	1	{"name":"com_media","type":"component","creationDate":"2006-04","author":"Joomla! Project","copyright":"(C) 2006 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MEDIA_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Component\\\\Media","filename":"media"}	{"upload_maxsize":"10","file_path":"files","image_path":"images","restrict_uploads":"1","allowed_media_usergroup":"3","restrict_uploads_extensions":"bmp,gif,jpg,jpeg,png,ico,webp,avif,mp3,m4a,mp4a,ogg,mp4,mp4v,mpeg,mov,odg,odp,ods,odt,pdf,ppt,txt,xcf,xls,csv","check_mime":"1","image_extensions":"bmp,gif,jpg,png,jpeg,webp,avif","audio_extensions":"mp3,m4a,mp4a,ogg","video_extensions":"mp4,mp4v,mpeg,mov,webm","doc_extensions":"odg,odp,ods,odt,pdf,ppt,txt,xcf,xls,csv","ignore_extensions":"","upload_mime":"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,image\\/webp,image\\/avif,audio\\/ogg,audio\\/mpeg,audio\\/mp4,video\\/mp4,video\\/webm,video\\/mpeg,video\\/quicktime,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip"}		\N	\N	0	0	\N
16	0	com_newsfeeds	component	com_newsfeeds			1	1	1	0	1	{"name":"com_newsfeeds","type":"component","creationDate":"2006-04","author":"Joomla! Project","copyright":"(C) 2006 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"4.0.0","description":"COM_NEWSFEEDS_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Component\\\\Newsfeeds","filename":"newsfeeds"}	{"newsfeed_layout":"_:default","save_history":"1","history_limit":5,"show_feed_image":"1","show_feed_description":"1","show_item_description":"1","feed_character_count":"0","feed_display_order":"des","float_first":"right","float_second":"right","show_tags":"1","category_layout":"_:default","show_category_title":"1","show_description":"1","show_description_image":"1","maxLevel":"-1","show_empty_categories":"0","show_subcat_desc":"1","show_cat_items":"1","show_cat_tags":"1","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_items_cat":"1","filter_field":"1","show_pagination_limit":"1","show_headings":"1","show_articles":"0","show_link":"1","show_pagination":"1","show_pagination_results":"1","sef_ids":1}		\N	\N	0	0	\N
19	0	com_content	component	com_content			1	1	0	1	1	{"name":"com_content","type":"component","creationDate":"2006-04","author":"Joomla! Project","copyright":"(C) 2006 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"4.0.0","description":"COM_CONTENT_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Component\\\\Content","filename":"content"}	{"article_layout":"_:default","show_title":"1","link_titles":"1","show_intro":"1","info_block_position":"0","info_block_show_title":"1","show_category":"1","link_category":"1","show_parent_category":"0","link_parent_category":"0","show_associations":"0","flags":"1","show_author":"1","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"1","show_item_navigation":"1","show_readmore":"1","show_readmore_title":"1","readmore_limit":100,"show_tags":"1","record_hits":"1","show_hits":"1","show_noauth":"0","urls_position":0,"captcha":"","show_publishing_options":"1","show_article_options":"1","show_configure_edit_options":"1","show_permissions":"1","show_associations_edit":"1","save_history":"1","history_limit":10,"show_urls_images_frontend":"0","show_urls_images_backend":"1","targeta":0,"targetb":0,"targetc":0,"float_intro":"left","float_fulltext":"left","category_layout":"_:blog","show_category_title":"0","show_description":"0","show_description_image":"0","maxLevel":"1","show_empty_categories":"0","show_no_articles":"1","show_category_heading_title_text":"1","show_subcat_desc":"1","show_cat_num_articles":"0","show_cat_tags":"1","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_num_articles_cat":"1","num_leading_articles":1,"blog_class_leading":"","num_intro_articles":4,"blog_class":"","num_columns":1,"multi_column_order":"0","num_links":4,"show_subcategory_content":"0","link_intro_image":"0","show_pagination_limit":"1","filter_field":"hide","show_headings":"1","list_show_date":"0","date_format":"","list_show_hits":"1","list_show_author":"1","display_num":"10","orderby_pri":"order","orderby_sec":"rdate","order_date":"published","show_pagination":"2","show_pagination_results":"1","show_featured":"show","show_feed_link":"1","feed_summary":"0","feed_show_readmore":"0","sef_ids":1,"custom_fields_enable":"1","workflow_enabled":"0"}		\N	\N	0	0	\N
22	0	com_users	component	com_users			1	1	0	1	1	{"name":"com_users","type":"component","creationDate":"2006-04","author":"Joomla! Project","copyright":"(C) 2006 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"4.0.0","description":"COM_USERS_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Component\\\\Users","filename":"users"}	{"allowUserRegistration":"0","new_usertype":"2","guest_usergroup":"9","sendpassword":"0","useractivation":"2","mail_to_admin":"1","captcha":"","frontend_userparams":"1","site_language":"0","change_login_name":"0","reset_count":"10","reset_time":"1","minimum_length":"12","minimum_integers":"0","minimum_symbols":"0","minimum_uppercase":"0","save_history":"1","history_limit":5,"mailSubjectPrefix":"","mailBodySuffix":""}		\N	\N	0	0	\N
23	0	com_finder	component	com_finder			1	1	0	0	1	{"name":"com_finder","type":"component","creationDate":"2011-08","author":"Joomla! Project","copyright":"(C) 2011 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"4.0.0","description":"COM_FINDER_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Component\\\\Finder","filename":"finder"}	{"enabled":"0","show_description":"1","description_length":255,"allow_empty_query":"0","show_url":"1","show_autosuggest":"1","show_suggested_query":"1","show_explained_query":"1","show_advanced":"1","show_advanced_tips":"1","expand_advanced":"0","show_date_filters":"0","sort_order":"relevance","sort_direction":"desc","highlight_terms":"1","opensearch_name":"","opensearch_description":"","batch_size":"50","title_multiplier":"1.7","text_multiplier":"0.7","meta_multiplier":"1.2","path_multiplier":"2.0","misc_multiplier":"0.3","stem":"1","stemmer":"snowball","enable_logging":"0"}		\N	\N	0	0	\N
71	0	mod_frontend	module	mod_frontend			1	1	1	0	1	{"name":"mod_frontend","type":"module","creationDate":"2019-07","author":"Joomla! Project","copyright":"(C) 2019 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"4.0.0","description":"MOD_FRONTEND_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Module\\\\Frontend","filename":"mod_frontend"}			\N	\N	0	0	\N
25	0	com_tags	component	com_tags			1	1	1	0	1	{"name":"com_tags","type":"component","creationDate":"2013-12","author":"Joomla! Project","copyright":"(C) 2013 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"4.0.0","description":"COM_TAGS_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Component\\\\Tags","filename":"tags"}	{"tag_layout":"_:default","save_history":"1","history_limit":5,"show_tag_title":"0","tag_list_show_tag_image":"0","tag_list_show_tag_description":"0","tag_list_image":"","tag_list_orderby":"title","tag_list_orderby_direction":"ASC","show_headings":"0","tag_list_show_date":"0","tag_list_show_item_image":"0","tag_list_show_item_description":"0","tag_list_item_maximum_characters":0,"return_any_or_all":"1","include_children":"0","maximum":200,"tag_list_language_filter":"all","tags_layout":"_:default","all_tags_orderby":"title","all_tags_orderby_direction":"ASC","all_tags_show_tag_image":"0","all_tags_show_tag_description":"0","all_tags_tag_maximum_characters":20,"all_tags_show_tag_hits":"0","filter_field":"1","show_pagination_limit":"1","show_pagination":"2","show_pagination_results":"1","tag_field_ajax_mode":"1","show_feed_link":"1"}		\N	\N	0	0	\N
30	0	com_associations	component	com_associations			1	1	1	0	1	{"name":"com_associations","type":"component","creationDate":"2017-01","author":"Joomla! Project","copyright":"(C) 2017 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"4.0.0","description":"COM_ASSOCIATIONS_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Component\\\\Associations"}			\N	\N	0	0	\N
32	0	com_actionlogs	component	com_actionlogs			1	1	1	0	1	{"name":"com_actionlogs","type":"component","creationDate":"2018-05","author":"Joomla! Project","copyright":"(C) 2018 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.9.0","description":"COM_ACTIONLOGS_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Component\\\\Actionlogs"}	{"ip_logging":0,"csv_delimiter":",","loggable_extensions":["com_banners","com_cache","com_categories","com_checkin","com_config","com_contact","com_content","com_fields","com_guidedtours","com_installer","com_media","com_menus","com_messages","com_modules","com_newsfeeds","com_plugins","com_redirect","com_scheduler","com_tags","com_templates","com_users"]}		\N	\N	0	0	\N
34	0	com_mails	component	com_mails			1	1	1	1	1	{"name":"com_mails","type":"component","creationDate":"2019-01","author":"Joomla! Project","copyright":"(C) 2019 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"4.0.0","description":"COM_MAILS_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Component\\\\Mails"}			\N	\N	0	0	\N
36	0	com_guidedtours	component	com_guidedtours			1	1	0	0	1	{"name":"com_guidedtours","type":"component","creationDate":"2023-02","author":"Joomla! Project","copyright":"(C) 2023 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"4.3.0","description":"COM_GUIDEDTOURS_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Component\\\\Guidedtours"}	{}		\N	\N	0	0	\N
37	0	lib_joomla	library	joomla			0	1	1	1	1	{"name":"lib_joomla","type":"library","creationDate":"2008-01","author":"Joomla! Project","copyright":"(C) 2008 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"https:\\/\\/www.joomla.org","version":"13.1","description":"LIB_JOOMLA_XML_DESCRIPTION","group":"","changelogurl":"","filename":"joomla"}			\N	\N	0	0	\N
39	0	mod_articles_archive	module	mod_articles_archive			0	1	1	0	1	{"name":"mod_articles_archive","type":"module","creationDate":"2006-07","author":"Joomla! Project","copyright":"(C) 2006 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Module\\\\ArticlesArchive","filename":"mod_articles_archive"}			\N	\N	0	0	\N
40	0	mod_articles_latest	module	mod_articles_latest			0	1	1	0	1	{"name":"mod_articles_latest","type":"module","creationDate":"2004-07","author":"Joomla! Project","copyright":"(C) 2005 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LATEST_NEWS_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Module\\\\ArticlesLatest","filename":"mod_articles_latest"}			\N	\N	0	0	\N
41	0	mod_articles_popular	module	mod_articles_popular			0	1	1	0	1	{"name":"mod_articles_popular","type":"module","creationDate":"2006-07","author":"Joomla! Project","copyright":"(C) 2006 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Module\\\\ArticlesPopular","filename":"mod_articles_popular"}			\N	\N	0	0	\N
43	0	mod_breadcrumbs	module	mod_breadcrumbs			0	1	1	0	1	{"name":"mod_breadcrumbs","type":"module","creationDate":"2006-07","author":"Joomla! Project","copyright":"(C) 2006 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_BREADCRUMBS_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Module\\\\Breadcrumbs","filename":"mod_breadcrumbs"}			\N	\N	0	0	\N
44	0	mod_custom	module	mod_custom			0	1	1	0	1	{"name":"mod_custom","type":"module","creationDate":"2004-07","author":"Joomla! Project","copyright":"(C) 2005 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Module\\\\Custom","filename":"mod_custom"}			\N	\N	0	0	\N
45	0	mod_feed	module	mod_feed			0	1	1	0	1	{"name":"mod_feed","type":"module","creationDate":"2005-07","author":"Joomla! Project","copyright":"(C) 2005 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FEED_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Module\\\\Feed","filename":"mod_feed"}			\N	\N	0	0	\N
47	0	mod_login	module	mod_login			0	1	1	0	1	{"name":"mod_login","type":"module","creationDate":"2006-07","author":"Joomla! Project","copyright":"(C) 2006 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Module\\\\Login","filename":"mod_login"}			\N	\N	0	0	\N
48	0	mod_menu	module	mod_menu			0	1	1	0	1	{"name":"mod_menu","type":"module","creationDate":"2004-07","author":"Joomla! Project","copyright":"(C) 2005 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MENU_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Module\\\\Menu","filename":"mod_menu"}			\N	\N	0	0	\N
49	0	mod_articles_news	module	mod_articles_news			0	1	1	0	1	{"name":"mod_articles_news","type":"module","creationDate":"2006-07","author":"Joomla! Project","copyright":"(C) 2006 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_NEWS_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Module\\\\ArticlesNews","filename":"mod_articles_news"}			\N	\N	0	0	\N
51	0	mod_related_items	module	mod_related_items			0	1	1	0	1	{"name":"mod_related_items","type":"module","creationDate":"2004-07","author":"Joomla! Project","copyright":"(C) 2005 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_RELATED_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Module\\\\RelatedItems","filename":"mod_related_items"}			\N	\N	0	0	\N
52	0	mod_stats	module	mod_stats			0	1	1	0	1	{"name":"mod_stats","type":"module","creationDate":"2004-07","author":"Joomla! Project","copyright":"(C) 2005 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATS_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Module\\\\Stats","filename":"mod_stats"}			\N	\N	0	0	\N
53	0	mod_syndicate	module	mod_syndicate			0	1	1	0	1	{"name":"mod_syndicate","type":"module","creationDate":"2006-05","author":"Joomla! Project","copyright":"(C) 2006 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SYNDICATE_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Module\\\\Syndicate","filename":"mod_syndicate"}			\N	\N	0	0	\N
55	0	mod_whosonline	module	mod_whosonline			0	1	1	0	1	{"name":"mod_whosonline","type":"module","creationDate":"2004-07","author":"Joomla! Project","copyright":"(C) 2005 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WHOSONLINE_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Module\\\\Whosonline","filename":"mod_whosonline"}			\N	\N	0	0	\N
56	0	mod_wrapper	module	mod_wrapper			0	1	1	0	1	{"name":"mod_wrapper","type":"module","creationDate":"2004-10","author":"Joomla! Project","copyright":"(C) 2005 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WRAPPER_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Module\\\\Wrapper","filename":"mod_wrapper"}			\N	\N	0	0	\N
57	0	mod_articles_category	module	mod_articles_category			0	1	1	0	1	{"name":"mod_articles_category","type":"module","creationDate":"2010-02","author":"Joomla! Project","copyright":"(C) 2010 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Module\\\\ArticlesCategory","filename":"mod_articles_category"}			\N	\N	0	0	\N
58	0	mod_articles_categories	module	mod_articles_categories			0	1	1	0	1	{"name":"mod_articles_categories","type":"module","creationDate":"2010-02","author":"Joomla! Project","copyright":"(C) 2010 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Module\\\\ArticlesCategories","filename":"mod_articles_categories"}			\N	\N	0	0	\N
60	0	mod_finder	module	mod_finder			0	1	0	0	1	{"name":"mod_finder","type":"module","creationDate":"2011-08","author":"Joomla! Project","copyright":"(C) 2011 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FINDER_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Module\\\\Finder","filename":"mod_finder"}			\N	\N	0	0	\N
61	0	mod_articles	module	mod_articles			0	1	0	0	1	{"name":"mod_articles","type":"module","creationDate":"2024-07","author":"Joomla! Project","copyright":"(C) 2024 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"5.2.0","description":"MOD_ARTICLES_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Module\\\\Articles","filename":"mod_articles"}			\N	\N	0	0	\N
63	0	mod_feed	module	mod_feed			1	1	1	0	1	{"name":"mod_feed","type":"module","creationDate":"2005-07","author":"Joomla! Project","copyright":"(C) 2005 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FEED_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Module\\\\Feed","filename":"mod_feed"}			\N	\N	0	0	\N
64	0	mod_latest	module	mod_latest			1	1	1	0	1	{"name":"mod_latest","type":"module","creationDate":"2004-07","author":"Joomla! Project","copyright":"(C) 2005 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LATEST_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Module\\\\Latest","filename":"mod_latest"}			\N	\N	0	0	\N
65	0	mod_logged	module	mod_logged			1	1	1	0	1	{"name":"mod_logged","type":"module","creationDate":"2005-01","author":"Joomla! Project","copyright":"(C) 2005 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGGED_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Module\\\\Logged","filename":"mod_logged"}			\N	\N	0	0	\N
68	0	mod_menu	module	mod_menu			1	1	1	0	1	{"name":"mod_menu","type":"module","creationDate":"2006-03","author":"Joomla! Project","copyright":"(C) 2006 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MENU_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Module\\\\Menu","filename":"mod_menu"}			\N	\N	0	0	\N
69	0	mod_popular	module	mod_popular			1	1	1	0	1	{"name":"mod_popular","type":"module","creationDate":"2004-07","author":"Joomla! Project","copyright":"(C) 2005 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Module\\\\Popular","filename":"mod_popular"}			\N	\N	0	0	\N
70	0	mod_quickicon	module	mod_quickicon			1	1	1	0	1	{"name":"mod_quickicon","type":"module","creationDate":"2005-11","author":"Joomla! Project","copyright":"(C) 2005 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_QUICKICON_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Module\\\\Quickicon","filename":"mod_quickicon"}			\N	\N	0	0	\N
73	0	mod_post_installation_messages	module	mod_post_installation_messages			1	1	1	0	1	{"name":"mod_post_installation_messages","type":"module","creationDate":"2019-07","author":"Joomla! Project","copyright":"(C) 2019 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"4.0.0","description":"MOD_POST_INSTALLATION_MESSAGES_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Module\\\\PostInstallationMessages","filename":"mod_post_installation_messages"}			\N	\N	0	0	\N
74	0	mod_user	module	mod_user			1	1	1	0	1	{"name":"mod_user","type":"module","creationDate":"2019-07","author":"Joomla! Project","copyright":"(C) 2019 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"4.0.0","description":"MOD_USER_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Module\\\\User","filename":"mod_user"}			\N	\N	0	0	\N
75	0	mod_title	module	mod_title			1	1	1	0	1	{"name":"mod_title","type":"module","creationDate":"2005-11","author":"Joomla! Project","copyright":"(C) 2005 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_TITLE_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Module\\\\Title","filename":"mod_title"}			\N	\N	0	0	\N
77	0	mod_multilangstatus	module	mod_multilangstatus			1	1	1	0	1	{"name":"mod_multilangstatus","type":"module","creationDate":"2011-09","author":"Joomla! Project","copyright":"(C) 2011 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MULTILANGSTATUS_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Module\\\\MultilangStatus","filename":"mod_multilangstatus"}	{"cache":"0"}		\N	\N	0	0	\N
78	0	mod_version	module	mod_version			1	1	1	0	1	{"name":"mod_version","type":"module","creationDate":"2012-01","author":"Joomla! Project","copyright":"(C) 2012 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_VERSION_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Module\\\\Version","filename":"mod_version"}	{"cache":"0"}		\N	\N	0	0	\N
79	0	mod_stats_admin	module	mod_stats_admin			1	1	1	0	1	{"name":"mod_stats_admin","type":"module","creationDate":"2004-07","author":"Joomla! Project","copyright":"(C) 2005 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATS_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Module\\\\StatsAdmin","filename":"mod_stats_admin"}	{"serverinfo":"0","siteinfo":"0","counter":"0","increase":"0","cache":"1","cache_time":"900","cachemode":"static"}		\N	\N	0	0	\N
81	0	mod_tags_similar	module	mod_tags_similar			0	1	1	0	1	{"name":"mod_tags_similar","type":"module","creationDate":"2013-01","author":"Joomla! Project","copyright":"(C) 2013 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"MOD_TAGS_SIMILAR_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Module\\\\TagsSimilar","filename":"mod_tags_similar"}	{"maximum":"5","matchtype":"any","owncache":"1"}		\N	\N	0	0	\N
83	0	mod_latestactions	module	mod_latestactions			1	1	1	0	1	{"name":"mod_latestactions","type":"module","creationDate":"2018-05","author":"Joomla! Project","copyright":"(C) 2018 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.9.0","description":"MOD_LATESTACTIONS_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Module\\\\LatestActions","filename":"mod_latestactions"}	{}		\N	\N	0	0	\N
84	0	mod_privacy_dashboard	module	mod_privacy_dashboard			1	1	1	0	1	{"name":"mod_privacy_dashboard","type":"module","creationDate":"2018-06","author":"Joomla! Project","copyright":"(C) 2018 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.9.0","description":"MOD_PRIVACY_DASHBOARD_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Module\\\\PrivacyDashboard","filename":"mod_privacy_dashboard"}	{}		\N	\N	0	0	\N
85	0	mod_submenu	module	mod_submenu			1	1	1	0	1	{"name":"mod_submenu","type":"module","creationDate":"2006-02","author":"Joomla! Project","copyright":"(C) 2006 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SUBMENU_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Module\\\\Submenu","filename":"mod_submenu"}	{}		\N	\N	0	0	\N
87	0	mod_guidedtours	module	mod_guidedtours			1	1	1	0	1	{"name":"mod_guidedtours","type":"module","creationDate":"2023-02","author":"Joomla! Project","copyright":"(C) 2023 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"4.3.0","description":"MOD_GUIDEDTOURS_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Module\\\\GuidedTours","filename":"mod_guidedtours"}	{}		\N	\N	0	0	\N
88	0	plg_actionlog_joomla	plugin	joomla		actionlog	0	1	1	0	1	{"name":"plg_actionlog_joomla","type":"plugin","creationDate":"2018-05","author":"Joomla! Project","copyright":"(C) 2018 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.9.0","description":"PLG_ACTIONLOG_JOOMLA_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\Actionlog\\\\Joomla","filename":"joomla"}	{}		\N	\N	1	0	\N
89	0	plg_api-authentication_basic	plugin	basic		api-authentication	0	0	1	0	1	{"name":"plg_api-authentication_basic","type":"plugin","creationDate":"2005-11","author":"Joomla! Project","copyright":"(C) 2019 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"4.0.0","description":"PLG_API-AUTHENTICATION_BASIC_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\ApiAuthentication\\\\Basic","filename":"basic"}	{}		\N	\N	1	0	\N
91	0	plg_authentication_cookie	plugin	cookie		authentication	0	1	1	0	1	{"name":"plg_authentication_cookie","type":"plugin","creationDate":"2013-07","author":"Joomla! Project","copyright":"(C) 2013 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_AUTHENTICATION_COOKIE_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\Authentication\\\\Cookie","filename":"cookie"}			\N	\N	1	0	\N
92	0	plg_authentication_joomla	plugin	joomla		authentication	0	1	1	1	1	{"name":"plg_authentication_joomla","type":"plugin","creationDate":"2005-11","author":"Joomla! Project","copyright":"(C) 2005 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_AUTHENTICATION_JOOMLA_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\Authentication\\\\Joomla","filename":"joomla"}			\N	\N	2	0	\N
93	0	plg_authentication_ldap	plugin	ldap		authentication	0	0	1	0	1	{"name":"plg_authentication_ldap","type":"plugin","creationDate":"2005-11","author":"Joomla! Project","copyright":"(C) 2005 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LDAP_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\Authentication\\\\Ldap","filename":"ldap"}	{"host":"","port":"389","use_ldapV3":"0","negotiate_tls":"0","no_referrals":"0","auth_method":"bind","base_dn":"","search_string":"","users_dn":"","username":"admin","password":"bobby7","ldap_fullname":"fullName","ldap_email":"mail","ldap_uid":"uid"}		\N	\N	3	0	\N
95	0	plg_behaviour_taggable	plugin	taggable		behaviour	0	1	1	0	1	{"name":"plg_behaviour_taggable","type":"plugin","creationDate":"2015-08","author":"Joomla! Project","copyright":"(C) 2016 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"4.0.0","description":"PLG_BEHAVIOUR_TAGGABLE_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\Behaviour\\\\Taggable","filename":"taggable"}	{}		\N	\N	2	0	\N
97	0	plg_captcha_powcaptcha	plugin	powcaptcha		captcha	0	1	1	0	1	{"name":"plg_captcha_powcaptcha","type":"plugin","creationDate":"2025-12","author":"Joomla! Project","copyright":"(C) 2025 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"6.1.0","description":"PLG_CAPTCHA_POWCAPTCHA_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\Captcha\\\\POWCaptcha","filename":"powcaptcha"}	{}		\N	\N	1	0	\N
98	0	plg_content_confirmconsent	plugin	confirmconsent		content	0	0	1	0	1	{"name":"plg_content_confirmconsent","type":"plugin","creationDate":"2018-05","author":"Joomla! Project","copyright":"(C) 2018 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.9.0","description":"PLG_CONTENT_CONFIRMCONSENT_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\Content\\\\ConfirmConsent","filename":"confirmconsent"}	{}		\N	\N	1	0	\N
100	0	plg_content_emailcloak	plugin	emailcloak		content	0	1	1	0	1	{"name":"plg_content_emailcloak","type":"plugin","creationDate":"2005-11","author":"Joomla! Project","copyright":"(C) 2005 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\Content\\\\EmailCloak","filename":"emailcloak"}	{"mode":"1"}		\N	\N	3	0	\N
101	0	plg_content_fields	plugin	fields		content	0	1	1	0	1	{"name":"plg_content_fields","type":"plugin","creationDate":"2017-02","author":"Joomla! Project","copyright":"(C) 2017 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_CONTENT_FIELDS_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\Content\\\\Fields","filename":"fields"}			\N	\N	4	0	\N
102	0	plg_content_finder	plugin	finder		content	0	1	1	0	1	{"name":"plg_content_finder","type":"plugin","creationDate":"2011-12","author":"Joomla! Project","copyright":"(C) 2011 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_FINDER_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\Content\\\\Finder","filename":"finder"}			\N	\N	5	0	\N
104	0	plg_content_loadmodule	plugin	loadmodule		content	0	1	1	0	1	{"name":"plg_content_loadmodule","type":"plugin","creationDate":"2005-11","author":"Joomla! Project","copyright":"(C) 2005 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LOADMODULE_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\Content\\\\LoadModule","filename":"loadmodule"}	{"style":"xhtml"}		\N	\N	7	0	\N
105	0	plg_content_pagebreak	plugin	pagebreak		content	0	1	1	0	1	{"name":"plg_content_pagebreak","type":"plugin","creationDate":"2005-11","author":"Joomla! Project","copyright":"(C) 2005 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\Content\\\\PageBreak","filename":"pagebreak"}	{"title":"1","multipage_toc":"1","showall":"1"}		\N	\N	8	0	\N
106	0	plg_content_pagenavigation	plugin	pagenavigation		content	0	1	1	0	1	{"name":"plg_content_pagenavigation","type":"plugin","creationDate":"2006-01","author":"Joomla! Project","copyright":"(C) 2006 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_PAGENAVIGATION_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\Content\\\\PageNavigation","filename":"pagenavigation"}	{"position":"1"}		\N	\N	9	0	\N
108	0	plg_editors-xtd_article	plugin	article		editors-xtd	0	1	1	0	1	{"name":"plg_editors-xtd_article","type":"plugin","creationDate":"2009-10","author":"Joomla! Project","copyright":"(C) 2009 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_ARTICLE_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\EditorsXtd\\\\Article","filename":"article"}			\N	\N	1	0	\N
109	0	plg_editors-xtd_contact	plugin	contact		editors-xtd	0	1	1	0	1	{"name":"plg_editors-xtd_contact","type":"plugin","creationDate":"2016-10","author":"Joomla! Project","copyright":"(C) 2016 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_EDITORS-XTD_CONTACT_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\EditorsXtd\\\\Contact","filename":"contact"}			\N	\N	2	0	\N
111	0	plg_editors-xtd_image	plugin	image		editors-xtd	0	1	1	0	1	{"name":"plg_editors-xtd_image","type":"plugin","creationDate":"2004-08","author":"Joomla! Project","copyright":"(C) 2005 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_IMAGE_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\EditorsXtd\\\\Image","filename":"image"}			\N	\N	4	0	\N
112	0	plg_editors-xtd_menu	plugin	menu		editors-xtd	0	1	1	0	1	{"name":"plg_editors-xtd_menu","type":"plugin","creationDate":"2016-08","author":"Joomla! Project","copyright":"(C) 2016 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_EDITORS-XTD_MENU_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\EditorsXtd\\\\Menu","filename":"menu"}			\N	\N	5	0	\N
113	0	plg_editors-xtd_module	plugin	module		editors-xtd	0	1	1	0	1	{"name":"plg_editors-xtd_module","type":"plugin","creationDate":"2015-10","author":"Joomla! Project","copyright":"(C) 2015 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.5.0","description":"PLG_MODULE_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\EditorsXtd\\\\Module","filename":"module"}			\N	\N	6	0	\N
115	0	plg_editors-xtd_readmore	plugin	readmore		editors-xtd	0	1	1	0	1	{"name":"plg_editors-xtd_readmore","type":"plugin","creationDate":"2006-03","author":"Joomla! Project","copyright":"(C) 2006 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_READMORE_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\EditorsXtd\\\\ReadMore","filename":"readmore"}			\N	\N	8	0	\N
116	0	plg_editors_codemirror	plugin	codemirror		editors	0	1	1	0	1	{"name":"plg_editors_codemirror","type":"plugin","creationDate":"28 March 2011","author":"Marijn Haverbeke","copyright":"Copyright (C) 2014 - 2021 by Marijn Haverbeke <marijnh@gmail.com> and others","authorEmail":"marijnh@gmail.com","authorUrl":"https:\\/\\/codemirror.net\\/","version":"6.0.0","description":"PLG_CODEMIRROR_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\Editors\\\\CodeMirror","filename":"codemirror"}	{"lineNumbers":"1","lineWrapping":"1","matchTags":"1","matchBrackets":"1","marker-gutter":"1","autoCloseTags":"1","autoCloseBrackets":"1","autoFocus":"1","theme":"default","tabmode":"indent"}		\N	\N	1	0	\N
166	0	plg_quickicon_privacycheck	plugin	privacycheck		quickicon	0	1	1	0	1	{"name":"plg_quickicon_privacycheck","type":"plugin","creationDate":"2018-06","author":"Joomla! Project","copyright":"(C) 2018 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.9.0","description":"PLG_QUICKICON_PRIVACYCHECK_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\Quickicon\\\\PrivacyCheck","filename":"privacycheck"}	{}		\N	\N	6	0	\N
167	0	plg_quickicon_phpversioncheck	plugin	phpversioncheck		quickicon	0	1	1	0	1	{"name":"plg_quickicon_phpversioncheck","type":"plugin","creationDate":"2016-08","author":"Joomla! Project","copyright":"(C) 2016 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_QUICKICON_PHPVERSIONCHECK_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\Quickicon\\\\PhpVersionCheck","filename":"phpversioncheck"}			\N	\N	7	0	\N
118	0	plg_editors_tinymce	plugin	tinymce		editors	0	1	1	0	1	{"name":"plg_editors_tinymce","type":"plugin","creationDate":"2005-08","author":"Tiny Technologies, Inc","copyright":"Tiny Technologies, Inc","authorEmail":"N\\/A","authorUrl":"https:\\/\\/www.tiny.cloud","version":"8.6.0","description":"PLG_TINY_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\Editors\\\\TinyMCE","filename":"tinymce"}	{"configuration":{"toolbars":{"2":{"toolbar1":["bold","underline","strikethrough","|","undo","redo","|","bullist","numlist","|","pastetext"]},"1":{"menu":["edit","insert","view","format","table","tools"],"toolbar1":["bold","italic","underline","strikethrough","|","alignleft","aligncenter","alignright","alignjustify","|","blocks","|","bullist","numlist","|","outdent","indent","|","undo","redo","|","link","unlink","anchor","code","|","hr","table","|","subscript","superscript","|","charmap","pastetext","preview"]},"0":{"menu":["edit","insert","view","format","table","tools"],"toolbar1":["bold","italic","underline","strikethrough","|","alignleft","aligncenter","alignright","alignjustify","|","styles","|","blocks","fontfamily","fontsize","|","searchreplace","|","bullist","numlist","|","outdent","indent","|","undo","redo","|","link","unlink","anchor","image","|","code","|","forecolor","backcolor","|","fullscreen","|","table","|","subscript","superscript","|","charmap","emoticons","media","hr","ltr","rtl","|","cut","copy","paste","pastetext","|","visualchars","visualblocks","nonbreaking","blockquote","jtemplate","|","print","preview","codesample","insertdatetime","removeformat","language","abbr","abbr_remove"]}},"setoptions":{"2":{"access":["1"],"skin":"0","skin_admin":"0","mobile":"0","drag_drop":"1","path":"","entity_encoding":"raw","lang_mode":"1","text_direction":"ltr","content_css":"1","content_css_custom":"","relative_urls":"1","newlines":"0","use_config_textfilters":"0","invalid_elements":"script,applet,iframe","valid_elements":"","extended_elements":"","resizing":"1","resize_horizontal":"1","element_path":"1","wordcount":"1","image_advtab":"0","advlist":"1","autosave":"1","contextmenu":"1","custom_plugin":"","custom_button":""},"1":{"access":["6","2"],"skin":"0","skin_admin":"0","mobile":"0","drag_drop":"1","path":"","entity_encoding":"raw","lang_mode":"1","text_direction":"ltr","content_css":"1","content_css_custom":"","relative_urls":"1","newlines":"0","use_config_textfilters":"0","invalid_elements":"script,applet,iframe","valid_elements":"","extended_elements":"","resizing":"1","resize_horizontal":"1","element_path":"1","wordcount":"1","image_advtab":"0","advlist":"1","autosave":"1","contextmenu":"1","custom_plugin":"","custom_button":""},"0":{"access":["7","4","8"],"skin":"0","skin_admin":"0","mobile":"0","drag_drop":"1","path":"","entity_encoding":"raw","lang_mode":"1","text_direction":"ltr","content_css":"1","content_css_custom":"","relative_urls":"1","newlines":"0","use_config_textfilters":"0","invalid_elements":"script,applet,iframe","valid_elements":"","extended_elements":"","resizing":"1","resize_horizontal":"1","element_path":"1","wordcount":"1","image_advtab":"1","advlist":"1","autosave":"1","contextmenu":"1","custom_plugin":"","custom_button":""}}},"sets_amount":3,"html_height":"550px","html_width":"100%"}		\N	\N	3	0	\N
121	0	plg_extension_joomlaupdate	plugin	joomlaupdate		extension	0	1	1	0	1	{"name":"plg_extension_joomlaupdate","type":"plugin","creationDate":"2025-02","author":"Joomla! Project","copyright":"(C) 2025 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.0.0","description":"PLG_EXTENSION_JOOMLAUPDATE_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\Extension\\\\Joomlaupdate","filename":"joomlaupdate"}			\N	\N	3	0	\N
122	0	plg_extension_namespacemap	plugin	namespacemap		extension	0	1	1	1	1	{"name":"plg_extension_namespacemap","type":"plugin","creationDate":"2017-05","author":"Joomla! Project","copyright":"(C) 2017 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"4.0.0","description":"PLG_EXTENSION_NAMESPACEMAP_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\Extension\\\\NamespaceMap","filename":"namespacemap"}	{}		\N	\N	4	0	\N
124	0	plg_fields_checkboxes	plugin	checkboxes		fields	0	1	1	0	1	{"name":"plg_fields_checkboxes","type":"plugin","creationDate":"2016-03","author":"Joomla! Project","copyright":"(C) 2016 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_CHECKBOXES_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\Fields\\\\Checkboxes","filename":"checkboxes"}			\N	\N	2	0	\N
125	0	plg_fields_color	plugin	color		fields	0	1	1	0	1	{"name":"plg_fields_color","type":"plugin","creationDate":"2016-03","author":"Joomla! Project","copyright":"(C) 2016 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_COLOR_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\Fields\\\\Color","filename":"color"}			\N	\N	3	0	\N
126	0	plg_fields_editor	plugin	editor		fields	0	1	1	0	1	{"name":"plg_fields_editor","type":"plugin","creationDate":"2016-03","author":"Joomla! Project","copyright":"(C) 2016 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_EDITOR_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\Fields\\\\Editor","filename":"editor"}	{"buttons":0,"width":"100%","height":"250px","filter":"\\\\Joomla\\\\CMS\\\\Component\\\\ComponentHelper::filterText"}		\N	\N	4	0	\N
128	0	plg_fields_integer	plugin	integer		fields	0	1	1	0	1	{"name":"plg_fields_integer","type":"plugin","creationDate":"2016-03","author":"Joomla! Project","copyright":"(C) 2016 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_INTEGER_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\Fields\\\\Integer","filename":"integer"}	{"multiple":"0","first":"1","last":"100","step":"1"}		\N	\N	6	0	\N
130	0	plg_fields_media	plugin	media		fields	0	1	1	0	1	{"name":"plg_fields_media","type":"plugin","creationDate":"2016-03","author":"Joomla! Project","copyright":"(C) 2016 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_MEDIA_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\Fields\\\\Media","filename":"media"}			\N	\N	8	0	\N
131	0	plg_fields_note	plugin	note		fields	0	1	1	0	1	{"name":"plg_fields_note","type":"plugin","creationDate":"2025-03","author":"Joomla! Project","copyright":"(C) 2025 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"6.0.0","description":"PLG_FIELDS_NOTE_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\Fields\\\\Note","filename":"note"}	{"class":"alert alert-info","heading":"h4"}		\N	\N	9	0	\N
132	0	plg_fields_number	plugin	number		fields	0	1	1	0	1	{"name":"plg_fields_number","type":"plugin","creationDate":"2025-03","author":"Joomla! Project","copyright":"(C) 2025 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"6.0.0","description":"PLG_FIELDS_NUMBER_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\Fields\\\\Number","filename":"number"}	{"min":"1.0","max":"100.0","step":"0.1","currency":"0","symbol":"","position":"0","decimals":"2"}		\N	\N	10	0	\N
134	0	plg_fields_sql	plugin	sql		fields	0	1	1	0	1	{"name":"plg_fields_sql","type":"plugin","creationDate":"2016-03","author":"Joomla! Project","copyright":"(C) 2016 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_SQL_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\Fields\\\\SQL","filename":"sql"}			\N	\N	12	0	\N
135	0	plg_fields_subform	plugin	subform		fields	0	1	1	0	1	{"name":"plg_fields_subform","type":"plugin","creationDate":"2017-06","author":"Joomla! Project","copyright":"(C) 2019 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"4.0.0","description":"PLG_FIELDS_SUBFORM_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\Fields\\\\Subform","filename":"subform"}			\N	\N	13	0	\N
137	0	plg_fields_textarea	plugin	textarea		fields	0	1	1	0	1	{"name":"plg_fields_textarea","type":"plugin","creationDate":"2016-03","author":"Joomla! Project","copyright":"(C) 2016 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_TEXTAREA_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\Fields\\\\Textarea","filename":"textarea"}	{"rows":10,"cols":10,"maxlength":"","filter":"\\\\Joomla\\\\CMS\\\\Component\\\\ComponentHelper::filterText"}		\N	\N	15	0	\N
139	0	plg_fields_user	plugin	user		fields	0	1	1	0	1	{"name":"plg_fields_user","type":"plugin","creationDate":"2016-03","author":"Joomla! Project","copyright":"(C) 2016 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_USER_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\Fields\\\\User","filename":"user"}			\N	\N	17	0	\N
140	0	plg_fields_usergrouplist	plugin	usergrouplist		fields	0	1	1	0	1	{"name":"plg_fields_usergrouplist","type":"plugin","creationDate":"2016-03","author":"Joomla! Project","copyright":"(C) 2016 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_USERGROUPLIST_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\Fields\\\\UsergroupList","filename":"usergrouplist"}			\N	\N	18	0	\N
141	0	plg_filesystem_local	plugin	local		filesystem	0	1	1	0	1	{"name":"plg_filesystem_local","type":"plugin","creationDate":"2017-04","author":"Joomla! Project","copyright":"(C) 2017 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"4.0.0","description":"PLG_FILESYSTEM_LOCAL_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\Filesystem\\\\Local","filename":"local"}	{}		\N	\N	1	0	\N
142	0	plg_finder_categories	plugin	categories		finder	0	1	1	0	1	{"name":"plg_finder_categories","type":"plugin","creationDate":"2011-08","author":"Joomla! Project","copyright":"(C) 2011 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CATEGORIES_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\Finder\\\\Categories","filename":"categories"}			\N	\N	1	0	\N
144	0	plg_finder_content	plugin	content		finder	0	1	1	0	1	{"name":"plg_finder_content","type":"plugin","creationDate":"2011-08","author":"Joomla! Project","copyright":"(C) 2011 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CONTENT_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\Finder\\\\Content","filename":"content"}			\N	\N	3	0	\N
145	0	plg_finder_newsfeeds	plugin	newsfeeds		finder	0	1	1	0	1	{"name":"plg_finder_newsfeeds","type":"plugin","creationDate":"2011-08","author":"Joomla! Project","copyright":"(C) 2011 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\Finder\\\\Newsfeeds","filename":"newsfeeds"}			\N	\N	4	0	\N
147	0	plg_installer_folderinstaller	plugin	folderinstaller		installer	0	1	1	0	1	{"name":"plg_installer_folderinstaller","type":"plugin","creationDate":"2016-05","author":"Joomla! Project","copyright":"(C) 2016 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.6.0","description":"PLG_INSTALLER_FOLDERINSTALLER_PLUGIN_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\Installer\\\\Folder","filename":"folderinstaller"}			\N	\N	2	0	\N
148	0	plg_installer_override	plugin	override		installer	0	1	1	0	1	{"name":"plg_installer_override","type":"plugin","creationDate":"2018-06","author":"Joomla! Project","copyright":"(C) 2018 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"4.0.0","description":"PLG_INSTALLER_OVERRIDE_PLUGIN_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\Installer\\\\Override","filename":"override"}			\N	\N	4	0	\N
149	0	plg_installer_packageinstaller	plugin	packageinstaller		installer	0	1	1	0	1	{"name":"plg_installer_packageinstaller","type":"plugin","creationDate":"2016-05","author":"Joomla! Project","copyright":"(C) 2016 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.6.0","description":"PLG_INSTALLER_PACKAGEINSTALLER_PLUGIN_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\Installer\\\\Package","filename":"packageinstaller"}			\N	\N	1	0	\N
151	0	plg_installer_webinstaller	plugin	webinstaller		installer	0	1	1	0	1	{"name":"plg_installer_webinstaller","type":"plugin","creationDate":"2017-04","author":"Joomla! Project","copyright":"(C) 2018 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"4.0.0","description":"PLG_INSTALLER_WEBINSTALLER_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\Installer\\\\Web","filename":"webinstaller"}	{"tab_position":"1"}		\N	\N	5	0	\N
152	0	plg_media-action_crop	plugin	crop		media-action	0	1	1	0	1	{"name":"plg_media-action_crop","type":"plugin","creationDate":"2017-01","author":"Joomla! Project","copyright":"(C) 2017 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"4.0.0","description":"PLG_MEDIA-ACTION_CROP_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\MediaAction\\\\Crop","filename":"crop"}	{}		\N	\N	1	0	\N
153	0	plg_media-action_resize	plugin	resize		media-action	0	1	1	0	1	{"name":"plg_media-action_resize","type":"plugin","creationDate":"2017-01","author":"Joomla! Project","copyright":"(C) 2017 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"4.0.0","description":"PLG_MEDIA-ACTION_RESIZE_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\MediaAction\\\\Resize","filename":"resize"}	{}		\N	\N	2	0	\N
155	0	plg_privacy_actionlogs	plugin	actionlogs		privacy	0	1	1	0	1	{"name":"plg_privacy_actionlogs","type":"plugin","creationDate":"2018-07","author":"Joomla! Project","copyright":"(C) 2018 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.9.0","description":"PLG_PRIVACY_ACTIONLOGS_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\Privacy\\\\Actionlogs","filename":"actionlogs"}	{}		\N	\N	1	0	\N
156	0	plg_privacy_consents	plugin	consents		privacy	0	1	1	0	1	{"name":"plg_privacy_consents","type":"plugin","creationDate":"2018-07","author":"Joomla! Project","copyright":"(C) 2018 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.9.0","description":"PLG_PRIVACY_CONSENTS_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\Privacy\\\\Consents","filename":"consents"}	{}		\N	\N	2	0	\N
158	0	plg_privacy_content	plugin	content		privacy	0	1	1	0	1	{"name":"plg_privacy_content","type":"plugin","creationDate":"2018-07","author":"Joomla! Project","copyright":"(C) 2018 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.9.0","description":"PLG_PRIVACY_CONTENT_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\Privacy\\\\Content","filename":"content"}	{}		\N	\N	4	0	\N
159	0	plg_privacy_message	plugin	message		privacy	0	1	1	0	1	{"name":"plg_privacy_message","type":"plugin","creationDate":"2018-07","author":"Joomla! Project","copyright":"(C) 2018 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.9.0","description":"PLG_PRIVACY_MESSAGE_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\Privacy\\\\Message","filename":"message"}	{}		\N	\N	5	0	\N
160	0	plg_privacy_user	plugin	user		privacy	0	1	1	0	1	{"name":"plg_privacy_user","type":"plugin","creationDate":"2018-05","author":"Joomla! Project","copyright":"(C) 2018 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.9.0","description":"PLG_PRIVACY_USER_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\Privacy\\\\User","filename":"user"}	{}		\N	\N	6	0	\N
162	0	plg_quickicon_joomlaupdate	plugin	joomlaupdate		quickicon	0	1	1	0	1	{"name":"plg_quickicon_joomlaupdate","type":"plugin","creationDate":"2011-08","author":"Joomla! Project","copyright":"(C) 2011 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\Quickicon\\\\Joomlaupdate","filename":"joomlaupdate"}			\N	\N	2	0	\N
163	0	plg_quickicon_extensionupdate	plugin	extensionupdate		quickicon	0	1	1	0	1	{"name":"plg_quickicon_extensionupdate","type":"plugin","creationDate":"2011-08","author":"Joomla! Project","copyright":"(C) 2011 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\Quickicon\\\\Extensionupdate","filename":"extensionupdate"}			\N	\N	3	0	\N
164	0	plg_quickicon_overridecheck	plugin	overridecheck		quickicon	0	1	1	0	1	{"name":"plg_quickicon_overridecheck","type":"plugin","creationDate":"2018-06","author":"Joomla! Project","copyright":"(C) 2018 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"4.0.0","description":"PLG_QUICKICON_OVERRIDECHECK_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\Quickicon\\\\OverrideCheck","filename":"overridecheck"}			\N	\N	4	0	\N
168	0	plg_quickicon_eos	plugin	eos		quickicon	0	1	1	0	1	{"name":"plg_quickicon_eos","type":"plugin","creationDate":"2023-05","author":"Joomla! Project","copyright":"(C) 2023 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"4.4.0","description":"PLG_QUICKICON_EOS_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\Quickicon\\\\Eos","filename":"eos"}			\N	\N	8	0	\N
169	0	plg_sampledata_blog	plugin	blog		sampledata	0	1	1	0	1	{"name":"plg_sampledata_blog","type":"plugin","creationDate":"2017-07","author":"Joomla! Project","copyright":"(C) 2017 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.8.0","description":"PLG_SAMPLEDATA_BLOG_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\SampleData\\\\Blog","filename":"blog"}			\N	\N	1	0	\N
170	0	plg_sampledata_multilang	plugin	multilang		sampledata	0	1	1	0	1	{"name":"plg_sampledata_multilang","type":"plugin","creationDate":"2018-07","author":"Joomla! Project","copyright":"(C) 2018 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"4.0.0","description":"PLG_SAMPLEDATA_MULTILANG_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\SampleData\\\\MultiLanguage","filename":"multilang"}			\N	\N	2	0	\N
171	0	plg_schemaorg_article	plugin	article		schemaorg	0	1	1	0	1	{"name":"plg_schemaorg_article","type":"plugin","creationDate":"2024-01","author":"Joomla! Project","copyright":"(C) 2024 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"5.1.0","description":"PLG_SCHEMAORG_ARTICLE_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\Schemaorg\\\\Article","filename":"article"}	{}		\N	\N	1	0	\N
172	0	plg_schemaorg_blogposting	plugin	blogposting		schemaorg	0	1	1	0	1	{"name":"plg_schemaorg_blogposting","type":"plugin","creationDate":"2023-07","author":"Joomla! Project","copyright":"(C) 2023 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"5.0.0","description":"PLG_SCHEMAORG_BLOGPOSTING_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\Schemaorg\\\\BlogPosting","filename":"blogposting"}	{}		\N	\N	2	0	\N
174	0	plg_schemaorg_event	plugin	event		schemaorg	0	1	1	0	1	{"name":"plg_schemaorg_event","type":"plugin","creationDate":"2023-07","author":"Joomla! Project","copyright":"(C) 2023 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"5.0.0","description":"PLG_SCHEMAORG_EVENT_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\Schemaorg\\\\Event","filename":"event"}	{}		\N	\N	4	0	\N
175	0	plg_schemaorg_jobposting	plugin	jobposting		schemaorg	0	1	1	0	1	{"name":"plg_schemaorg_jobposting","type":"plugin","creationDate":"2023-07","author":"Joomla! Project","copyright":"(C) 2023 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"5.0.0","description":"PLG_SCHEMAORG_JOBPOSTING_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\Schemaorg\\\\JobPosting","filename":"jobposting"}	{}		\N	\N	5	0	\N
177	0	plg_schemaorg_person	plugin	person		schemaorg	0	1	1	0	1	{"name":"plg_schemaorg_person","type":"plugin","creationDate":"2023-07","author":"Joomla! Project","copyright":"(C) 2023 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"5.0.0","description":"PLG_SCHEMAORG_PERSON_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\Schemaorg\\\\Person","filename":"person"}	{}		\N	\N	7	0	\N
178	0	plg_schemaorg_recipe	plugin	recipe		schemaorg	0	1	1	0	1	{"name":"plg_schemaorg_recipe","type":"plugin","creationDate":"2023-07","author":"Joomla! Project","copyright":"(C) 2023 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"5.0.0","description":"PLG_SCHEMAORG_RECIPE_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\Schemaorg\\\\Recipe","filename":"recipe"}	{}		\N	\N	8	0	\N
179	0	plg_schemaorg_custom	plugin	custom		schemaorg	0	1	1	0	1	{"name":"plg_schemaorg_custom","type":"plugin","creationDate":"2024-03","author":"Joomla! Project","copyright":"(C) 2024 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"5.1.0","description":"PLG_SCHEMAORG_CUSTOM_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\Schemaorg\\\\Custom","filename":"custom"}	{}		\N	\N	9	0	\N
181	0	plg_system_actionlogs	plugin	actionlogs		system	0	1	1	0	1	{"name":"plg_system_actionlogs","type":"plugin","creationDate":"2018-05","author":"Joomla! Project","copyright":"(C) 2018 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.9.0","description":"PLG_SYSTEM_ACTIONLOGS_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\System\\\\ActionLogs","filename":"actionlogs"}	{}		\N	\N	2	0	\N
182	0	plg_system_cache	plugin	cache		system	0	0	1	0	1	{"name":"plg_system_cache","type":"plugin","creationDate":"2007-02","author":"Joomla! Project","copyright":"(C) 2007 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CACHE_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\System\\\\Cache","filename":"cache"}	{"browsercache":"0","cachetime":"15"}		\N	\N	3	0	\N
183	0	plg_system_debug	plugin	debug		system	0	1	1	0	1	{"name":"plg_system_debug","type":"plugin","creationDate":"2006-12","author":"Joomla! Project","copyright":"(C) 2006 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_DEBUG_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\System\\\\Debug","filename":"debug"}	{"profile":"1","queries":"1","memory":"1","language_files":"1","language_strings":"1","strip-first":"1","strip-prefix":"","strip-suffix":""}		\N	\N	4	0	\N
185	0	plg_system_highlight	plugin	highlight		system	0	1	1	0	1	{"name":"plg_system_highlight","type":"plugin","creationDate":"2011-08","author":"Joomla! Project","copyright":"(C) 2011 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\System\\\\Highlight","filename":"highlight"}			\N	\N	6	0	\N
187	0	plg_system_jooa11y	plugin	jooa11y		system	0	1	1	0	1	{"name":"plg_system_jooa11y","type":"plugin","creationDate":"2022-02","author":"Joomla! Project","copyright":"(C) 2021 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"4.2.0","description":"PLG_SYSTEM_JOOA11Y_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\System\\\\Jooa11y","filename":"jooa11y"}			\N	\N	8	0	\N
188	0	plg_system_languagecode	plugin	languagecode		system	0	0	1	0	1	{"name":"plg_system_languagecode","type":"plugin","creationDate":"2011-11","author":"Joomla! Project","copyright":"(C) 2011 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\System\\\\LanguageCode","filename":"languagecode"}			\N	\N	9	0	\N
189	0	plg_system_languagefilter	plugin	languagefilter		system	0	0	1	0	1	{"name":"plg_system_languagefilter","type":"plugin","creationDate":"2010-07","author":"Joomla! Project","copyright":"(C) 2010 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\System\\\\LanguageFilter","filename":"languagefilter"}			\N	\N	10	0	\N
191	0	plg_system_logout	plugin	logout		system	0	1	1	0	1	{"name":"plg_system_logout","type":"plugin","creationDate":"2009-04","author":"Joomla! Project","copyright":"(C) 2009 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\System\\\\Logout","filename":"logout"}			\N	\N	12	0	\N
192	0	plg_system_privacyconsent	plugin	privacyconsent		system	0	0	1	0	1	{"name":"plg_system_privacyconsent","type":"plugin","creationDate":"2018-04","author":"Joomla! Project","copyright":"(C) 2018 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.9.0","description":"PLG_SYSTEM_PRIVACYCONSENT_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\System\\\\PrivacyConsent","filename":"privacyconsent"}	{}		\N	\N	14	0	\N
194	0	plg_system_remember	plugin	remember		system	0	1	1	0	1	{"name":"plg_system_remember","type":"plugin","creationDate":"2007-04","author":"Joomla! Project","copyright":"(C) 2007 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_REMEMBER_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\System\\\\Remember","filename":"remember"}			\N	\N	16	0	\N
195	0	plg_system_schedulerunner	plugin	schedulerunner		system	0	1	1	0	1	{"name":"plg_system_schedulerunner","type":"plugin","creationDate":"2021-08","author":"Joomla! Project","copyright":"(C) 2021 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"4.1","description":"PLG_SYSTEM_SCHEDULERUNNER_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\System\\\\ScheduleRunner","filename":"schedulerunner"}	{}		\N	\N	17	0	\N
196	0	plg_system_schemaorg	plugin	schemaorg		system	0	1	1	0	1	{"name":"plg_system_schemaorg","type":"plugin","creationDate":"2023-07","author":"Joomla! Project","copyright":"(C) 2023 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"5.0.0","description":"PLG_SYSTEM_SCHEMAORG_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\System\\\\Schemaorg","filename":"schemaorg"}	{}		\N	\N	18	0	\N
198	0	plg_system_shortcut	plugin	shortcut		system	0	1	1	0	1	{"name":"plg_system_shortcut","type":"plugin","creationDate":"2022-06","author":"Joomla! Project","copyright":"(C) 2022 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"4.2.0","description":"PLG_SYSTEM_SHORTCUT_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\System\\\\Shortcut","filename":"shortcut"}	{}		\N	\N	21	0	\N
199	0	plg_system_skipto	plugin	skipto		system	0	1	1	0	1	{"name":"plg_system_skipto","type":"plugin","creationDate":"2020-02","author":"Joomla! Project","copyright":"(C) 2019 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"4.0.0","description":"PLG_SYSTEM_SKIPTO_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\System\\\\Skipto","filename":"skipto"}	{}		\N	\N	22	0	\N
202	0	plg_system_webauthn	plugin	webauthn		system	0	1	1	0	1	{"name":"plg_system_webauthn","type":"plugin","creationDate":"2019-07-02","author":"Joomla! Project","copyright":"(C) 2020 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"4.0.0","description":"PLG_SYSTEM_WEBAUTHN_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\System\\\\Webauthn","filename":"webauthn"}	{}		\N	\N	26	0	\N
203	0	plg_task_check_files	plugin	checkfiles		task	0	1	1	0	1	{"name":"plg_task_check_files","type":"plugin","creationDate":"2021-08","author":"Joomla! Project","copyright":"(C) 2021 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"4.1","description":"PLG_TASK_CHECK_FILES_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\Task\\\\Checkfiles","filename":"checkfiles"}	{}		\N	\N	1	0	\N
204	0	plg_task_deleteactionlogs	plugin	deleteactionlogs		task	0	1	1	0	1	{"name":"plg_task_deleteactionlogs","type":"plugin","creationDate":"2023-07","author":"Joomla! Project","copyright":"(C) 2023 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"5.0.0","description":"PLG_TASK_DELETEACTIONLOGS_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\Task\\\\DeleteActionLogs","filename":"deleteactionlogs"}	{}		\N	\N	2	0	\N
206	0	plg_task_requests	plugin	requests		task	0	1	1	0	1	{"name":"plg_task_requests","type":"plugin","creationDate":"2021-08","author":"Joomla! Project","copyright":"(C) 2021 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"4.1","description":"PLG_TASK_REQUESTS_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\Task\\\\Requests","filename":"requests"}	{}		\N	\N	4	0	\N
207	0	plg_task_privacyconsent	plugin	privacyconsent		task	0	1	1	0	1	{"name":"plg_task_privacyconsent","type":"plugin","creationDate":"2023-07","author":"Joomla! Project","copyright":"(C) 2023 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"5.0.0","description":"PLG_TASK_PRIVACYCONSENT_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\Task\\\\PrivacyConsent","filename":"privacyconsent"}	{}		\N	\N	5	0	\N
208	0	plg_task_rotatelogs	plugin	rotatelogs		task	0	1	1	0	1	{"name":"plg_task_rotatelogs","type":"plugin","creationDate":"2023-07","author":"Joomla! Project","copyright":"(C) 2023 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"5.0.0","description":"PLG_TASK_ROTATELOGS_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\Task\\\\RotateLogs","filename":"rotatelogs"}	{}		\N	\N	6	0	\N
210	0	plg_task_site_status	plugin	sitestatus		task	0	1	1	0	1	{"name":"plg_task_site_status","type":"plugin","creationDate":"2021-08","author":"Joomla! Project","copyright":"(C) 2021 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"4.1","description":"PLG_TASK_SITE_STATUS_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\Task\\\\SiteStatus","filename":"sitestatus"}	{}		\N	\N	8	0	\N
211	0	plg_task_updatenotification	plugin	updatenotification		task	0	1	1	0	1	{"name":"plg_task_updatenotification","type":"plugin","creationDate":"2023-07","author":"Joomla! Project","copyright":"(C) 2023 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"5.0.0","description":"PLG_TASK_UPDATENOTIFICATION_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\Task\\\\UpdateNotification","filename":"updatenotification"}	{}		\N	\N	9	0	\N
212	0	plg_multifactorauth_totp	plugin	totp		multifactorauth	0	1	1	0	1	{"name":"plg_multifactorauth_totp","type":"plugin","creationDate":"2013-08","author":"Joomla! Project","copyright":"(C) 2013 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"PLG_MULTIFACTORAUTH_TOTP_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\Multifactorauth\\\\Totp","filename":"totp"}			\N	\N	1	0	\N
214	0	plg_multifactorauth_webauthn	plugin	webauthn		multifactorauth	0	1	1	0	1	{"name":"plg_multifactorauth_webauthn","type":"plugin","creationDate":"2022-05","author":"Joomla! Project","copyright":"(C) 2022 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"4.2.0","description":"PLG_MULTIFACTORAUTH_WEBAUTHN_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\Multifactorauth\\\\Webauthn","filename":"webauthn"}			\N	\N	3	0	\N
215	0	plg_multifactorauth_email	plugin	email		multifactorauth	0	1	1	0	1	{"name":"plg_multifactorauth_email","type":"plugin","creationDate":"2022-05","author":"Joomla! Project","copyright":"(C) 2022 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"4.2.0","description":"PLG_MULTIFACTORAUTH_EMAIL_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\Multifactorauth\\\\Email","filename":"email"}			\N	\N	4	0	\N
217	0	plg_user_contactcreator	plugin	contactcreator		user	0	0	1	0	1	{"name":"plg_user_contactcreator","type":"plugin","creationDate":"2009-08","author":"Joomla! Project","copyright":"(C) 2009 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTACTCREATOR_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\User\\\\ContactCreator","filename":"contactcreator"}	{"autowebpage":"","category":"4","autopublish":"0"}		\N	\N	1	0	\N
218	0	plg_user_joomla	plugin	joomla		user	0	1	1	0	1	{"name":"plg_user_joomla","type":"plugin","creationDate":"2006-12","author":"Joomla! Project","copyright":"(C) 2006 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_USER_JOOMLA_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\User\\\\Joomla","filename":"joomla"}	{"autoregister":"1","mail_to_user":"1","forceLogout":"1"}		\N	\N	2	0	\N
219	0	plg_user_profile	plugin	profile		user	0	0	1	0	1	{"name":"plg_user_profile","type":"plugin","creationDate":"2008-01","author":"Joomla! Project","copyright":"(C) 2008 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_USER_PROFILE_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\User\\\\Profile","filename":"profile"}	{"register-require_address1":"1","register-require_address2":"1","register-require_city":"1","register-require_region":"1","register-require_country":"1","register-require_postal_code":"1","register-require_phone":"1","register-require_website":"1","register-require_favoritebook":"1","register-require_aboutme":"1","register-require_tos":"1","register-require_dob":"1","profile-require_address1":"1","profile-require_address2":"1","profile-require_city":"1","profile-require_region":"1","profile-require_country":"1","profile-require_postal_code":"1","profile-require_phone":"1","profile-require_website":"1","profile-require_favoritebook":"1","profile-require_aboutme":"1","profile-require_tos":"1","profile-require_dob":"1"}		\N	\N	3	0	\N
222	0	plg_webservices_banners	plugin	banners		webservices	0	1	1	0	1	{"name":"plg_webservices_banners","type":"plugin","creationDate":"2019-09","author":"Joomla! Project","copyright":"(C) 2019 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"4.0.0","description":"PLG_WEBSERVICES_BANNERS_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\WebServices\\\\Banners","filename":"banners"}	{}		\N	\N	1	0	\N
223	0	plg_webservices_config	plugin	config		webservices	0	1	1	0	1	{"name":"plg_webservices_config","type":"plugin","creationDate":"2019-09","author":"Joomla! Project","copyright":"(C) 2019 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"4.0.0","description":"PLG_WEBSERVICES_CONFIG_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\WebServices\\\\Config","filename":"config"}	{}		\N	\N	2	0	\N
225	0	plg_webservices_content	plugin	content		webservices	0	1	1	0	1	{"name":"plg_webservices_content","type":"plugin","creationDate":"2019-09","author":"Joomla! Project","copyright":"(C) 2019 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"4.0.0","description":"PLG_WEBSERVICES_CONTENT_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\WebServices\\\\Content","filename":"content"}	{}		\N	\N	4	0	\N
226	0	plg_webservices_installer	plugin	installer		webservices	0	1	1	0	1	{"name":"plg_webservices_installer","type":"plugin","creationDate":"2020-06","author":"Joomla! Project","copyright":"(C) 2020 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"4.0.0","description":"PLG_WEBSERVICES_INSTALLER_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\WebServices\\\\Installer","filename":"installer"}	{}		\N	\N	5	0	\N
228	0	plg_webservices_languages	plugin	languages		webservices	0	1	1	0	1	{"name":"plg_webservices_languages","type":"plugin","creationDate":"2019-09","author":"Joomla! Project","copyright":"(C) 2019 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"4.0.0","description":"PLG_WEBSERVICES_LANGUAGES_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\WebServices\\\\Languages","filename":"languages"}	{}		\N	\N	7	0	\N
229	0	plg_webservices_media	plugin	media		webservices	0	1	1	0	1	{"name":"plg_webservices_media","type":"plugin","creationDate":"2021-05","author":"Joomla! Project","copyright":"(C) 2021 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"4.1.0","description":"PLG_WEBSERVICES_MEDIA_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\WebServices\\\\Media","filename":"media"}	{}		\N	\N	8	0	\N
230	0	plg_webservices_menus	plugin	menus		webservices	0	1	1	0	1	{"name":"plg_webservices_menus","type":"plugin","creationDate":"2019-09","author":"Joomla! Project","copyright":"(C) 2019 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"4.0.0","description":"PLG_WEBSERVICES_MENUS_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\WebServices\\\\Menus","filename":"menus"}	{}		\N	\N	9	0	\N
232	0	plg_webservices_modules	plugin	modules		webservices	0	1	1	0	1	{"name":"plg_webservices_modules","type":"plugin","creationDate":"2019-09","author":"Joomla! Project","copyright":"(C) 2019 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"4.0.0","description":"PLG_WEBSERVICES_MODULES_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\WebServices\\\\Modules","filename":"modules"}	{}		\N	\N	11	0	\N
233	0	plg_webservices_newsfeeds	plugin	newsfeeds		webservices	0	1	1	0	1	{"name":"plg_webservices_newsfeeds","type":"plugin","creationDate":"2019-09","author":"Joomla! Project","copyright":"(C) 2019 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"4.0.0","description":"PLG_WEBSERVICES_NEWSFEEDS_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\WebServices\\\\Newsfeeds","filename":"newsfeeds"}	{}		\N	\N	12	0	\N
234	0	plg_webservices_plugins	plugin	plugins		webservices	0	1	1	0	1	{"name":"plg_webservices_plugins","type":"plugin","creationDate":"2019-09","author":"Joomla! Project","copyright":"(C) 2019 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"4.0.0","description":"PLG_WEBSERVICES_PLUGINS_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\WebServices\\\\Plugins","filename":"plugins"}	{}		\N	\N	13	0	\N
236	0	plg_webservices_redirect	plugin	redirect		webservices	0	1	1	0	1	{"name":"plg_webservices_redirect","type":"plugin","creationDate":"2019-09","author":"Joomla! Project","copyright":"(C) 2019 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"4.0.0","description":"PLG_WEBSERVICES_REDIRECT_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\WebServices\\\\Redirect","filename":"redirect"}	{}		\N	\N	15	0	\N
237	0	plg_webservices_tags	plugin	tags		webservices	0	1	1	0	1	{"name":"plg_webservices_tags","type":"plugin","creationDate":"2019-09","author":"Joomla! Project","copyright":"(C) 2019 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"4.0.0","description":"PLG_WEBSERVICES_TAGS_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\WebServices\\\\Tags","filename":"tags"}	{}		\N	\N	16	0	\N
239	0	plg_webservices_users	plugin	users		webservices	0	1	1	0	1	{"name":"plg_webservices_users","type":"plugin","creationDate":"2019-09","author":"Joomla! Project","copyright":"(C) 2019 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"4.0.0","description":"PLG_WEBSERVICES_USERS_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\WebServices\\\\Users","filename":"users"}	{}		\N	\N	18	0	\N
240	0	plg_workflow_featuring	plugin	featuring		workflow	0	1	1	0	1	{"name":"plg_workflow_featuring","type":"plugin","creationDate":"2020-03","author":"Joomla! Project","copyright":"(C) 2020 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"4.0.0","description":"PLG_WORKFLOW_FEATURING_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\Workflow\\\\Featuring","filename":"featuring"}	{}		\N	\N	1	0	\N
241	0	plg_workflow_notification	plugin	notification		workflow	0	1	1	0	1	{"name":"plg_workflow_notification","type":"plugin","creationDate":"2020-05","author":"Joomla! Project","copyright":"(C) 2020 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"4.0.0","description":"PLG_WORKFLOW_NOTIFICATION_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\Workflow\\\\Notification","filename":"notification"}	{}		\N	\N	2	0	\N
243	0	plg_system_guidedtours	plugin	guidedtours		system	0	1	1	0	1	{"name":"plg_system_guidedtours","type":"plugin","creationDate":"2023-02","author":"Joomla! Project","copyright":"(C) 2023 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"4.3.0","description":"PLG_SYSTEM_GUIDEDTOURS_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\System\\\\GuidedTours","filename":"guidedtours"}	{}		\N	\N	15	0	\N
244	0	atum	template	atum			1	1	1	0	1	{"name":"atum","type":"template","creationDate":"2016-09","author":"Joomla! Project","copyright":"(C) 2016 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"","version":"1.0","description":"TPL_ATUM_XML_DESCRIPTION","group":"","changelogurl":"","inheritable":true,"filename":"templateDetails"}			\N	\N	0	0	\N
245	0	cassiopeia	template	cassiopeia			0	1	1	0	1	{"name":"cassiopeia","type":"template","creationDate":"2017-02","author":"Joomla! Project","copyright":"(C) 2017 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"","version":"1.0","description":"TPL_CASSIOPEIA_XML_DESCRIPTION","group":"","changelogurl":"","inheritable":true,"filename":"templateDetails"}	{"brand":"1","logoFile":"","siteTitle":"","siteDescription":"","useFontScheme":"0","colorName":"colors_standard","fluidContainer":"0","stickyHeader":0,"backTop":0,"colorSettings":0,"fontSettings":0}		\N	\N	0	0	\N
246	0	cassiopeia_extended	template	cassiopeia_extended			0	1	1	0	1	{"name":"cassiopeia_extended","type":"template","creationDate":"2025-07","author":"Joomla! Project","copyright":"(C) 2025 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"","version":"1.0","description":"TPL_CASSIOPEIA_EXTENDED_XML_DESCRIPTION","group":"","changelogurl":"","inheritable":false,"parent":"cassiopeia","filename":"templateDetails"}	{"brand":"1","logoFile":"","siteTitle":"","siteDescription":"","useFontScheme":"0","systemFontBody":"","systemFontHeading":"","colorName":"colors_standard","fluidContainer":"0","stickyHeader":"0","backTop":"0","colorSettings":"0","headerbg":"rgb(193, 205, 207)","headercolor":"rgb(23, 23, 23)","bodybg":"rgb(254, 254, 254)","bodycolor":"rgb(23, 23, 23)","linkcolor":"rgb(29, 121, 137)","linkcolorh":"rgb(14, 59, 67)","btnbg":"rgb(206, 60, 55)","btnbgh":"rgb(131, 35, 32)","btncolor":"rgb(254, 254, 254)","btncolorh":"rgb(254, 254, 254)","footerbg":"rgb(29, 121, 137)","footercolor":"rgb(254, 254, 254)","fontSettings":"0","bodysize":"1","h1size":"2","h2size":"1.7","h3size":"1.5"}		\N	\N	0	0	\N
251	248	English (en-GB)	language	en-GB			3	1	1	1	1	{"name":"English (en-GB)","type":"language","creationDate":"2026-08","author":"Joomla! Project","copyright":"(C) 2020 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"6.1.3","description":"en-GB api language","group":"","changelogurl":""}			\N	\N	0	0	\N
24	0	com_joomlaupdate	component	com_joomlaupdate			1	1	0	1	1	{"name":"com_joomlaupdate","type":"component","creationDate":"2021-08","author":"Joomla! Project","copyright":"(C) 2012 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"4.0.3","description":"COM_JOOMLAUPDATE_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Component\\\\Joomlaupdate"}	{"updatesource":"default","customurl":"","autoupdate_status":0,"autoupdate":0,"minimum_stability":"4","update_token":"F1czDXe5UqBAcyYFQCLLAvJvCle3hPBSz5HnIwlq"}		\N	\N	0	0	\N
200	0	plg_system_stats	plugin	stats		system	0	0	1	0	1	{"name":"plg_system_stats","type":"plugin","creationDate":"2013-11","author":"Joomla! Project","copyright":"(C) 2013 Open Source Matters, Inc.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.5.0","description":"PLG_SYSTEM_STATS_XML_DESCRIPTION","group":"","changelogurl":"","namespace":"Joomla\\\\Plugin\\\\System\\\\Stats","filename":"stats"}	{"mode":3,"lastrun":1790620725,"unique_id":"b239c162b77b00a80f31edd72fd7c9f94d6afddf","interval":12}		\N	\N	23	0	\N
\.


--
-- Data for Name: jos_fields; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.jos_fields (id, asset_id, context, group_id, title, name, label, default_value, type, note, description, state, required, only_use_in_subform, checked_out, checked_out_time, ordering, params, fieldparams, language, created_time, created_user_id, modified_time, modified_by, access) FROM stdin;
\.


--
-- Data for Name: jos_fields_categories; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.jos_fields_categories (field_id, category_id) FROM stdin;
\.


--
-- Data for Name: jos_fields_groups; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.jos_fields_groups (id, asset_id, context, title, note, description, state, checked_out, checked_out_time, ordering, params, language, created, created_by, modified, modified_by, access) FROM stdin;
\.


--
-- Data for Name: jos_fields_values; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.jos_fields_values (field_id, item_id, value) FROM stdin;
\.


--
-- Data for Name: jos_finder_filters; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.jos_finder_filters (filter_id, title, alias, state, created, created_by, created_by_alias, modified, modified_by, checked_out, checked_out_time, map_count, data, params) FROM stdin;
\.


--
-- Data for Name: jos_finder_links; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.jos_finder_links (link_id, url, route, title, description, indexdate, md5sum, published, state, access, language, publish_start_date, publish_end_date, start_date, end_date, list_price, sale_price, type_id, object) FROM stdin;
1	index.php?option=com_content&view=article&id=1	index.php?option=com_content&view=article&id=1:comunicaciones&catid=2	Comunicaciones	 	2026-09-28 18:51:38	2650c671117fbe0ee4d60996ac1fd882	1	1	1	*	2026-09-28 18:49:42	\N	2026-09-28 18:49:42	\N	0.00	0.00	1	\\x4f3a35323a224a6f6f6d6c615c436f6d706f6e656e745c46696e6465725c41646d696e6973747261746f725c496e64657865725c526573756c74223a31393a7b693a303b693a313b693a313b733a353a22656e2d4742223b693a323b733a313a2220223b693a333b613a32353a7b733a323a226964223b693a313b733a353a22616c696173223b733a31343a22636f6d756e69636163696f6e6573223b733a373a2273756d6d617279223b733a3332353a223c703e3c696d67207372633d22696d616765732f616868682f6469616772616d615f6172717569746563747572615f6a6f6f6d6c615f6c696765726f2e6a7067222077696474683d223132303022206865696768743d2238303022206c6f6164696e673d226c617a792220646174612d706174683d226c6f63616c2d696d616765733a2f616868682f6469616772616d615f6172717569746563747572615f6a6f6f6d6c615f6c696765726f2e6a7067223e3c62723e3c62723e3c2f703e0d0a3c703e3c696d67207372633d22696d616765732f6361742d6361742d6d656d652e706e67222077696474683d2234393822206865696768743d2234303022206c6f6164696e673d226c617a792220646174612d706174683d226c6f63616c2d696d616765733a2f6361742d6361742d6d656d652e706e67223e3c62723e3c62723e3c2f703e223b733a343a22626f6479223b733a303a22223b733a363a22696d61676573223b733a3137333a227b22696d6167655f696e74726f223a22222c22696d6167655f696e74726f5f616c74223a22222c22666c6f61745f696e74726f223a22222c22696d6167655f696e74726f5f63617074696f6e223a22222c22696d6167655f66756c6c74657874223a22222c22696d6167655f66756c6c746578745f616c74223a22222c22666c6f61745f66756c6c74657874223a22222c22696d6167655f66756c6c746578745f63617074696f6e223a22227d223b733a353a226361746964223b693a323b733a31303a22637265617465645f6279223b693a3735383b733a31363a22637265617465645f62795f616c696173223b733a303a22223b733a383a226d6f646966696564223b733a31393a22323032362d30392d32382031383a35313a3338223b733a31313a226d6f6469666965645f6279223b693a3735383b733a363a22706172616d73223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a333a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a38363a7b733a31343a2261727469636c655f6c61796f7574223b733a393a225f3a64656661756c74223b733a31303a2273686f775f7469746c65223b733a313a2231223b733a31313a226c696e6b5f7469746c6573223b733a313a2231223b733a31303a2273686f775f696e74726f223b733a313a2231223b733a31393a22696e666f5f626c6f636b5f706f736974696f6e223b733a313a2230223b733a32313a22696e666f5f626c6f636b5f73686f775f7469746c65223b733a313a2231223b733a31333a2273686f775f63617465676f7279223b733a313a2231223b733a31333a226c696e6b5f63617465676f7279223b733a313a2231223b733a32303a2273686f775f706172656e745f63617465676f7279223b733a313a2230223b733a32303a226c696e6b5f706172656e745f63617465676f7279223b733a313a2230223b733a31373a2273686f775f6173736f63696174696f6e73223b733a313a2230223b733a353a22666c616773223b733a313a2231223b733a31313a2273686f775f617574686f72223b733a313a2231223b733a31313a226c696e6b5f617574686f72223b733a313a2230223b733a31363a2273686f775f6372656174655f64617465223b733a313a2230223b733a31363a2273686f775f6d6f646966795f64617465223b733a313a2230223b733a31373a2273686f775f7075626c6973685f64617465223b733a313a2231223b733a32303a2273686f775f6974656d5f6e617669676174696f6e223b733a313a2231223b733a31333a2273686f775f726561646d6f7265223b733a313a2231223b733a31393a2273686f775f726561646d6f72655f7469746c65223b733a313a2231223b733a31343a22726561646d6f72655f6c696d6974223b693a3130303b733a393a2273686f775f74616773223b733a313a2231223b733a31313a227265636f72645f68697473223b733a313a2231223b733a393a2273686f775f68697473223b733a313a2231223b733a31313a2273686f775f6e6f61757468223b733a313a2230223b733a31333a2275726c735f706f736974696f6e223b693a303b733a373a2263617074636861223b733a303a22223b733a32333a2273686f775f7075626c697368696e675f6f7074696f6e73223b733a313a2231223b733a32303a2273686f775f61727469636c655f6f7074696f6e73223b733a313a2231223b733a32373a2273686f775f636f6e6669677572655f656469745f6f7074696f6e73223b733a313a2231223b733a31363a2273686f775f7065726d697373696f6e73223b733a313a2231223b733a32323a2273686f775f6173736f63696174696f6e735f65646974223b733a313a2231223b733a31323a22736176655f686973746f7279223b733a313a2231223b733a31333a22686973746f72795f6c696d6974223b693a31303b733a32353a2273686f775f75726c735f696d616765735f66726f6e74656e64223b733a313a2230223b733a32343a2273686f775f75726c735f696d616765735f6261636b656e64223b733a313a2231223b733a373a2274617267657461223b693a303b733a373a2274617267657462223b693a303b733a373a2274617267657463223b693a303b733a31313a22666c6f61745f696e74726f223b733a343a226c656674223b733a31343a22666c6f61745f66756c6c74657874223b733a343a226c656674223b733a31353a2263617465676f72795f6c61796f7574223b733a363a225f3a626c6f67223b733a31393a2273686f775f63617465676f72795f7469746c65223b733a313a2230223b733a31363a2273686f775f6465736372697074696f6e223b733a313a2230223b733a32323a2273686f775f6465736372697074696f6e5f696d616765223b733a313a2230223b733a383a226d61784c6576656c223b733a313a2231223b733a32313a2273686f775f656d7074795f63617465676f72696573223b733a313a2230223b733a31363a2273686f775f6e6f5f61727469636c6573223b733a313a2231223b733a33323a2273686f775f63617465676f72795f68656164696e675f7469746c655f74657874223b733a313a2231223b733a31363a2273686f775f7375626361745f64657363223b733a313a2231223b733a32313a2273686f775f6361745f6e756d5f61727469636c6573223b733a313a2230223b733a31333a2273686f775f6361745f74616773223b733a313a2231223b733a32313a2273686f775f626173655f6465736372697074696f6e223b733a313a2231223b733a31313a226d61784c6576656c636174223b733a323a222d31223b733a32353a2273686f775f656d7074795f63617465676f726965735f636174223b733a313a2230223b733a32303a2273686f775f7375626361745f646573635f636174223b733a313a2231223b733a32353a2273686f775f6361745f6e756d5f61727469636c65735f636174223b733a313a2231223b733a32303a226e756d5f6c656164696e675f61727469636c6573223b693a313b733a31383a22626c6f675f636c6173735f6c656164696e67223b733a303a22223b733a31383a226e756d5f696e74726f5f61727469636c6573223b693a343b733a31303a22626c6f675f636c617373223b733a303a22223b733a31313a226e756d5f636f6c756d6e73223b693a313b733a31383a226d756c74695f636f6c756d6e5f6f72646572223b733a313a2230223b733a393a226e756d5f6c696e6b73223b693a343b733a32343a2273686f775f73756263617465676f72795f636f6e74656e74223b733a313a2230223b733a31363a226c696e6b5f696e74726f5f696d616765223b733a313a2230223b733a32313a2273686f775f706167696e6174696f6e5f6c696d6974223b733a313a2231223b733a31323a2266696c7465725f6669656c64223b733a343a2268696465223b733a31333a2273686f775f68656164696e6773223b733a313a2231223b733a31343a226c6973745f73686f775f64617465223b733a313a2230223b733a31313a22646174655f666f726d6174223b733a303a22223b733a31343a226c6973745f73686f775f68697473223b733a313a2231223b733a31363a226c6973745f73686f775f617574686f72223b733a313a2231223b733a31313a22646973706c61795f6e756d223b733a323a223130223b733a31313a226f7264657262795f707269223b733a353a226f72646572223b733a31313a226f7264657262795f736563223b733a353a227264617465223b733a31303a226f726465725f64617465223b733a393a227075626c6973686564223b733a31353a2273686f775f706167696e6174696f6e223b733a313a2232223b733a32333a2273686f775f706167696e6174696f6e5f726573756c7473223b733a313a2231223b733a31333a2273686f775f6665617475726564223b733a343a2273686f77223b733a31343a2273686f775f666565645f6c696e6b223b733a313a2231223b733a31323a22666565645f73756d6d617279223b733a313a2230223b733a31383a22666565645f73686f775f726561646d6f7265223b733a313a2230223b733a373a227365665f696473223b693a313b733a32303a22637573746f6d5f6669656c64735f656e61626c65223b733a313a2231223b733a31363a22776f726b666c6f775f656e61626c6564223b733a313a2230223b7d733a31343a22002a00696e697469616c697a6564223b623a313b733a31323a22002a00736570617261746f72223b733a313a222e223b7d733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a333a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a333a7b733a363a22726f626f7473223b733a303a22223b733a363a22617574686f72223b733a303a22223b733a363a22726967687473223b733a303a22223b7d733a31343a22002a00696e697469616c697a6564223b623a313b733a31323a22002a00736570617261746f72223b733a313a222e223b7d733a373a2276657273696f6e223b693a333b733a383a226f72646572696e67223b693a303b733a383a2263617465676f7279223b733a31333a22556e63617465676f7269736564223b733a393a226361745f7374617465223b693a313b733a31303a226361745f616363657373223b693a313b733a343a22736c7567223b733a31363a22313a636f6d756e69636163696f6e6573223b733a373a22636174736c7567223b733a31353a22323a756e63617465676f7269736564223b733a363a22617574686f72223b733a31333a2241646d696e6973747261646f72223b733a363a226c61796f7574223b733a373a2261727469636c65223b733a373a22636f6e74657874223b733a31393a22636f6d5f636f6e74656e742e61727469636c65223b733a31303a226d657461617574686f72223b4e3b7d693a343b4e3b693a353b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a383a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a373a226d6574616b6579223b693a343b733a383a226d65746164657363223b693a353b733a31303a226d657461617574686f72223b693a363b733a363a22617574686f72223b693a373b733a31363a22637265617465645f62795f616c696173223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d693a363b733a313a222a223b693a373b4e3b693a383b4e3b693a393b733a31393a22323032362d30392d32382031383a34393a3432223b693a31303b4e3b693a31313b733a36393a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d313a636f6d756e69636163696f6e65732663617469643d32223b693a31323b4e3b693a31333b733a31393a22323032362d30392d32382031383a34393a3432223b693a31343b693a313b693a31353b613a343a7b733a343a2254797065223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a373a2241727469636c65223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a313a222a223b733a363a226e6573746564223b623a303b733a323a226964223b693a333b7d7d733a363a22417574686f72223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a31333a2241646d696e6973747261646f72223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a313a222a223b733a363a226e6573746564223b623a303b733a323a226964223b693a353b7d7d733a383a2243617465676f7279223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a31333a22556e63617465676f7269736564223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a313a222a223b733a363a226e6573746564223b623a313b733a323a226964223b693a373b7d7d733a383a224c616e6775616765223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a313a222a223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a313a222a223b733a363a226e6573746564223b623a303b733a323a226964223b693a393b7d7d7d693a31363b733a31343a22436f6d756e69636163696f6e6573223b693a31373b693a313b693a31383b733a34363a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d31223b7d
\.


--
-- Data for Name: jos_finder_links_terms; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.jos_finder_links_terms (link_id, term_id, weight) FROM stdin;
1	3	3.44
1	2	1.04
1	1	0.17
\.


--
-- Data for Name: jos_finder_logging; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.jos_finder_logging (searchterm, md5sum, query, hits, results) FROM stdin;
\.


--
-- Data for Name: jos_finder_taxonomy; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.jos_finder_taxonomy (id, parent_id, lft, rgt, level, path, title, alias, state, access, language) FROM stdin;
2	1	1	4	1	type	Type	type	1	1	*
3	2	2	3	2	type/article	Article	article	1	1	*
4	1	5	8	1	author	Author	author	1	1	*
5	4	6	7	2	author/administrador	Administrador	administrador	1	1	*
6	1	9	12	1	category	Category	category	1	1	*
7	6	10	11	2	category/uncategorised	Uncategorised	uncategorised	1	1	*
1	0	0	17	0		ROOT	root	1	1	*
8	1	13	16	1	language	Language	language	1	1	*
9	8	14	15	2	language/4086f6336014c75439f87cbda42d9c51	*	4086f6336014c75439f87cbda42d9c51	1	1	*
\.


--
-- Data for Name: jos_finder_taxonomy_map; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.jos_finder_taxonomy_map (link_id, node_id) FROM stdin;
1	3
1	5
1	7
1	9
\.


--
-- Data for Name: jos_finder_terms; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.jos_finder_terms (term_id, term, stem, common, phrase, weight, soundex, links, language) FROM stdin;
3	comunicaciones	comunicaciones	0	0	0.93	C552	3	*
1	1	1	0	0	0.10		3	*
2	administrador	administrador	0	0	0.87	A355	3	*
\.


--
-- Data for Name: jos_finder_terms_common; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.jos_finder_terms_common (term, language, custom) FROM stdin;
i	en	0
me	en	0
my	en	0
myself	en	0
we	en	0
our	en	0
ours	en	0
ourselves	en	0
you	en	0
your	en	0
yours	en	0
yourself	en	0
yourselves	en	0
he	en	0
him	en	0
his	en	0
himself	en	0
she	en	0
her	en	0
hers	en	0
herself	en	0
it	en	0
its	en	0
itself	en	0
they	en	0
them	en	0
their	en	0
theirs	en	0
themselves	en	0
what	en	0
which	en	0
who	en	0
whom	en	0
this	en	0
that	en	0
these	en	0
those	en	0
am	en	0
is	en	0
are	en	0
was	en	0
were	en	0
be	en	0
been	en	0
being	en	0
have	en	0
has	en	0
had	en	0
having	en	0
do	en	0
does	en	0
did	en	0
doing	en	0
would	en	0
should	en	0
could	en	0
ought	en	0
i'm	en	0
you're	en	0
he's	en	0
she's	en	0
it's	en	0
we're	en	0
they're	en	0
i've	en	0
you've	en	0
we've	en	0
they've	en	0
i'd	en	0
you'd	en	0
he'd	en	0
she'd	en	0
we'd	en	0
they'd	en	0
i'll	en	0
you'll	en	0
he'll	en	0
she'll	en	0
we'll	en	0
they'll	en	0
isn't	en	0
aren't	en	0
wasn't	en	0
weren't	en	0
hasn't	en	0
haven't	en	0
hadn't	en	0
doesn't	en	0
don't	en	0
didn't	en	0
won't	en	0
wouldn't	en	0
shan't	en	0
shouldn't	en	0
can't	en	0
cannot	en	0
couldn't	en	0
mustn't	en	0
let's	en	0
that's	en	0
who's	en	0
what's	en	0
here's	en	0
there's	en	0
when's	en	0
where's	en	0
why's	en	0
how's	en	0
a	en	0
an	en	0
the	en	0
and	en	0
but	en	0
if	en	0
or	en	0
because	en	0
as	en	0
until	en	0
while	en	0
of	en	0
at	en	0
by	en	0
for	en	0
with	en	0
about	en	0
against	en	0
between	en	0
into	en	0
through	en	0
during	en	0
before	en	0
after	en	0
above	en	0
below	en	0
to	en	0
from	en	0
up	en	0
down	en	0
in	en	0
out	en	0
on	en	0
off	en	0
over	en	0
under	en	0
again	en	0
further	en	0
then	en	0
once	en	0
here	en	0
there	en	0
when	en	0
where	en	0
why	en	0
how	en	0
all	en	0
any	en	0
both	en	0
each	en	0
few	en	0
more	en	0
most	en	0
other	en	0
some	en	0
such	en	0
no	en	0
nor	en	0
not	en	0
only	en	0
own	en	0
same	en	0
so	en	0
than	en	0
too	en	0
very	en	0
\.


--
-- Data for Name: jos_finder_tokens; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.jos_finder_tokens (term, stem, common, phrase, weight, context, language) FROM stdin;
\.


--
-- Data for Name: jos_finder_tokens_aggregate; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.jos_finder_tokens_aggregate (term_id, term, stem, common, phrase, term_weight, context, context_weight, total_weight, language) FROM stdin;
\.


--
-- Data for Name: jos_finder_types; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.jos_finder_types (id, title, mime) FROM stdin;
1	Article	
\.


--
-- Data for Name: jos_guidedtour_steps; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.jos_guidedtour_steps (id, tour_id, title, published, description, ordering, "position", target, type, interactive_type, url, created, created_by, modified, modified_by, checked_out_time, checked_out, language, note, params) FROM stdin;
1	1	COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_NEW_TITLE	1	COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_NEW_DESCRIPTION	1	bottom	.button-new	2	1	administrator/index.php?option=com_guidedtours&view=tours	2026-09-28 17:56:43.000376	758	2026-09-28 17:56:43.000376	758	\N	\N	*		\N
2	1	COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_TITLE_TITLE	1	COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_TITLE_DESCRIPTION	2	bottom	#jform_title	2	2	administrator/index.php?option=com_guidedtours&view=tour&layout=edit	2026-09-28 17:56:43.000376	758	2026-09-28 17:56:43.000376	758	\N	\N	*		\N
3	1	COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_URL_TITLE	1	COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_URL_DESCRIPTION	3	top	#jform_url	2	2	administrator/index.php?option=com_guidedtours&view=tour&layout=edit	2026-09-28 17:56:43.000376	758	2026-09-28 17:56:43.000376	758	\N	\N	*		\N
4	1	COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_CONTENT_TITLE	1	COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_CONTENT_DESCRIPTION	4	bottom	#jform_description,#jform_description_ifr	2	3	administrator/index.php?option=com_guidedtours&view=tour&layout=edit	2026-09-28 17:56:43.000376	758	2026-09-28 17:56:43.000376	758	\N	\N	*		\N
5	1	COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_COMPONENT_TITLE	1	COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_COMPONENT_DESCRIPTION	5	top	joomla-field-fancy-select .choices	2	3	administrator/index.php?option=com_guidedtours&view=tour&layout=edit	2026-09-28 17:56:43.000376	758	2026-09-28 17:56:43.000376	758	\N	\N	*		\N
6	1	COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_AUTOSTART_TITLE	1	COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_AUTOSTART_DESCRIPTION	6	bottom	#jform_autostart0	2	3		2026-09-28 17:56:43.000376	758	2026-09-28 17:56:43.000376	758	\N	\N	*		\N
7	1	COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_SAVECLOSE_TITLE	1	COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_SAVECLOSE_DESCRIPTION	7	top	#save-group-children-save .button-save	2	1	administrator/index.php?option=com_guidedtours&view=tour&layout=edit	2026-09-28 17:56:43.000376	758	2026-09-28 17:56:43.000376	758	\N	\N	*		\N
8	1	COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_CONGRATULATIONS_TITLE	1	COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_CONGRATULATIONS_DESCRIPTION	8	bottom		0	1	administrator/index.php?option=com_guidedtours&view=tour&layout=edit	2026-09-28 17:56:43.000376	758	2026-09-28 17:56:43.000376	758	\N	\N	*		\N
9	2	COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_COUNTER_TITLE	1	COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_COUNTER_DESCRIPTION	9	top	#toursList tbody tr:nth-last-of-type(1) td:nth-of-type(5) .btn	2	1		2026-09-28 17:56:43.000376	758	2026-09-28 17:56:43.000376	758	\N	\N	*		\N
10	2	COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_NEW_TITLE	1	COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_NEW_DESCRIPTION	10	bottom	.button-new	2	1		2026-09-28 17:56:43.000376	758	2026-09-28 17:56:43.000376	758	\N	\N	*		\N
11	2	COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_TITLE_TITLE	1	COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_TITLE_DESCRIPTION	11	bottom	#jform_title	2	2		2026-09-28 17:56:43.000376	758	2026-09-28 17:56:43.000376	758	\N	\N	*		\N
12	2	COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_DESCRIPTION_TITLE	1	COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_DESCRIPTION_DESCRIPTION	12	bottom	#jform_description,#jform_description_ifr	2	3		2026-09-28 17:56:43.000376	758	2026-09-28 17:56:43.000376	758	\N	\N	*		\N
13	2	COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_STATUS_TITLE	1	COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_STATUS_DESCRIPTION	13	bottom	#jform_published	2	3		2026-09-28 17:56:43.000376	758	2026-09-28 17:56:43.000376	758	\N	\N	*		\N
14	2	COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_POSITION_TITLE	1	COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_POSITION_DESCRIPTION	14	top	#jform_position	2	3		2026-09-28 17:56:43.000376	758	2026-09-28 17:56:43.000376	758	\N	\N	*		\N
15	2	COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_TARGET_TITLE	1	COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_TARGET_DESCRIPTION	15	top	#jform_target	2	3		2026-09-28 17:56:43.000376	758	2026-09-28 17:56:43.000376	758	\N	\N	*		\N
16	2	COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_TYPE_TITLE	1	COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_TYPE_DESCRIPTION	16	top	#jform_type	2	3		2026-09-28 17:56:43.000376	758	2026-09-28 17:56:43.000376	758	\N	\N	*		\N
17	2	COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_SAVECLOSE_TITLE	1	COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_SAVECLOSE_DESCRIPTION	17	bottom	#save-group-children-save .button-save	2	1		2026-09-28 17:56:43.000376	758	2026-09-28 17:56:43.000376	758	\N	\N	*		\N
18	2	COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_CONGRATULATIONS_TITLE	1	COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_CONGRATULATIONS_DESCRIPTION	18	bottom		0	1		2026-09-28 17:56:43.000376	758	2026-09-28 17:56:43.000376	758	\N	\N	*		\N
19	3	COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_NEW_TITLE	1	COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_NEW_DESCRIPTION	19	bottom	.button-new	2	1	administrator/index.php?option=com_content&view=articles	2026-09-28 17:56:43.000376	758	2026-09-28 17:56:43.000376	758	\N	\N	*		\N
20	3	COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_TITLE_TITLE	1	COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_TITLE_DESCRIPTION	20	bottom	#jform_title	2	2	administrator/index.php?option=com_content&view=article&layout=edit	2026-09-28 17:56:43.000376	758	2026-09-28 17:56:43.000376	758	\N	\N	*		\N
21	3	COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_ALIAS_TITLE	1	COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_ALIAS_DESCRIPTION	21	bottom	#jform_alias	2	2	administrator/index.php?option=com_content&view=article&layout=edit	2026-09-28 17:56:43.000376	758	2026-09-28 17:56:43.000376	758	\N	\N	*		\N
22	3	COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_CONTENT_TITLE	1	COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_CONTENT_DESCRIPTION	22	bottom	#jform_articletext,#jform_articletext_ifr	2	3	administrator/index.php?option=com_content&view=article&layout=edit	2026-09-28 17:56:43.000376	758	2026-09-28 17:56:43.000376	758	\N	\N	*		\N
23	3	COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_STATUS_TITLE	1	COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_STATUS_DESCRIPTION	23	bottom	#jform_state	2	3	administrator/index.php?option=com_content&view=article&layout=edit	2026-09-28 17:56:43.000376	758	2026-09-28 17:56:43.000376	758	\N	\N	*		\N
24	3	COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_CATEGORY_TITLE	1	COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_CATEGORY_DESCRIPTION	24	top	joomla-field-fancy-select .choices[data-type=select-one]	2	3	administrator/index.php?option=com_content&view=article&layout=edit	2026-09-28 17:56:43.000376	758	2026-09-28 17:56:43.000376	758	\N	\N	*		\N
25	3	COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_FEATURED_TITLE	1	COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_FEATURED_DESCRIPTION	25	bottom	#jform_featured0	2	3	administrator/index.php?option=com_content&view=article&layout=edit	2026-09-28 17:56:43.000376	758	2026-09-28 17:56:43.000376	758	\N	\N	*		\N
26	3	COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_ACCESS_TITLE	1	COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_ACCESS_DESCRIPTION	26	bottom	#jform_access	2	3	administrator/index.php?option=com_content&view=article&layout=edit	2026-09-28 17:56:43.000376	758	2026-09-28 17:56:43.000376	758	\N	\N	*		\N
27	3	COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_TAGS_TITLE	1	COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_TAGS_DESCRIPTION	27	top	joomla-field-fancy-select .choices[data-type=select-multiple]	2	3	administrator/index.php?option=com_content&view=article&layout=edit	2026-09-28 17:56:43.000376	758	2026-09-28 17:56:43.000376	758	\N	\N	*		\N
28	3	COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_NOTE_TITLE	1	COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_NOTE_DESCRIPTION	28	top	#jform_note	2	2	administrator/index.php?option=com_content&view=article&layout=edit	2026-09-28 17:56:43.000376	758	2026-09-28 17:56:43.000376	758	\N	\N	*		\N
29	3	COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_VERSIONNOTE_TITLE	1	COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_VERSIONNOTE_DESCRIPTION	29	top	#jform_version_note	2	2	administrator/index.php?option=com_content&view=article&layout=edit	2026-09-28 17:56:43.000376	758	2026-09-28 17:56:43.000376	758	\N	\N	*		\N
30	3	COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_SAVECLOSE_TITLE	1	COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_SAVECLOSE_DESCRIPTION	30	bottom	#save-group-children-save .button-save	2	1	administrator/index.php?option=com_content&view=article&layout=edit	2026-09-28 17:56:43.000376	758	2026-09-28 17:56:43.000376	758	\N	\N	*		\N
31	3	COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_CONGRATULATIONS_TITLE	1	COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_CONGRATULATIONS_DESCRIPTION	31	bottom		0	1	administrator/index.php?option=com_content&view=article&layout=edit	2026-09-28 17:56:43.000376	758	2026-09-28 17:56:43.000376	758	\N	\N	*		\N
32	4	COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_NEW_TITLE	1	COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_NEW_DESCRIPTION	32	bottom	.button-new	2	1	administrator/index.php?option=com_categories&view=categories&extension=com_content	2026-09-28 17:56:43.000376	758	2026-09-28 17:56:43.000376	758	\N	\N	*		\N
33	4	COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_TITLE_TITLE	1	COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_TITLE_DESCRIPTION	33	bottom	#jform_title	2	2	administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content	2026-09-28 17:56:43.000376	758	2026-09-28 17:56:43.000376	758	\N	\N	*		\N
34	4	COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_ALIAS_TITLE	1	COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_ALIAS_DESCRIPTION	34	bottom	#jform_alias	2	2	administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content	2026-09-28 17:56:43.000376	758	2026-09-28 17:56:43.000376	758	\N	\N	*		\N
35	4	COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_CONTENT_TITLE	1	COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_CONTENT_DESCRIPTION	35	bottom	#jform_description,#jform_description_ifr	2	3	administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content	2026-09-28 17:56:43.000376	758	2026-09-28 17:56:43.000376	758	\N	\N	*		\N
36	4	COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_PARENT_TITLE	1	COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_PARENT_DESCRIPTION	36	top	joomla-field-fancy-select .choices[data-type=select-one]	2	3	administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content	2026-09-28 17:56:43.000376	758	2026-09-28 17:56:43.000376	758	\N	\N	*		\N
37	4	COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_STATUS_TITLE	1	COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_STATUS_DESCRIPTION	37	bottom	#jform_published	2	3	administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content	2026-09-28 17:56:43.000376	758	2026-09-28 17:56:43.000376	758	\N	\N	*		\N
38	4	COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_ACCESS_TITLE	1	COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_ACCESS_DESCRIPTION	38	bottom	#jform_access	2	3	administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content	2026-09-28 17:56:43.000376	758	2026-09-28 17:56:43.000376	758	\N	\N	*		\N
39	4	COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_TAGS_TITLE	1	COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_TAGS_DESCRIPTION	39	top	joomla-field-fancy-select .choices[data-type=select-multiple]	2	3	administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content	2026-09-28 17:56:43.000376	758	2026-09-28 17:56:43.000376	758	\N	\N	*		\N
40	4	COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_NOTE_TITLE	1	COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_NOTE_DESCRIPTION	40	top	#jform_note	2	2	administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content	2026-09-28 17:56:43.000376	758	2026-09-28 17:56:43.000376	758	\N	\N	*		\N
41	4	COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_VERSIONNOTE_TITLE	1	COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_VERSIONNOTE_DESCRIPTION	41	top	#jform_version_note	2	2	administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content	2026-09-28 17:56:43.000376	758	2026-09-28 17:56:43.000376	758	\N	\N	*		\N
42	4	COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_SAVECLOSE_TITLE	1	COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_SAVECLOSE_DESCRIPTION	42	bottom	#save-group-children-save .button-save	2	1	administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content	2026-09-28 17:56:43.000376	758	2026-09-28 17:56:43.000376	758	\N	\N	*		\N
43	4	COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_CONGRATULATIONS_TITLE	1	COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_CONGRATULATIONS_DESCRIPTION	43	bottom		0	1	administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content	2026-09-28 17:56:43.000376	758	2026-09-28 17:56:43.000376	758	\N	\N	*		\N
44	5	COM_GUIDEDTOURS_TOUR_MENUS_STEP_NEW_TITLE	1	COM_GUIDEDTOURS_TOUR_MENUS_STEP_NEW_DESCRIPTION	44	bottom	.button-new	2	1	administrator/index.php?option=com_menus&view=menus	2026-09-28 17:56:43.000376	758	2026-09-28 17:56:43.000376	758	\N	\N	*		\N
45	5	COM_GUIDEDTOURS_TOUR_MENUS_STEP_TITLE_TITLE	1	COM_GUIDEDTOURS_TOUR_MENUS_STEP_TITLE_DESCRIPTION	45	bottom	#jform_title	2	2	administrator/index.php?option=com_menus&view=menu&layout=edit	2026-09-28 17:56:43.000376	758	2026-09-28 17:56:43.000376	758	\N	\N	*		\N
46	5	COM_GUIDEDTOURS_TOUR_MENUS_STEP_UNIQUENAME_TITLE	1	COM_GUIDEDTOURS_TOUR_MENUS_STEP_UNIQUENAME_DESCRIPTION	46	top	#jform_menutype	2	2	administrator/index.php?option=com_menus&view=menu&layout=edit	2026-09-28 17:56:43.000376	758	2026-09-28 17:56:43.000376	758	\N	\N	*		\N
47	5	COM_GUIDEDTOURS_TOUR_MENUS_STEP_DESCRIPTION_TITLE	1	COM_GUIDEDTOURS_TOUR_MENUS_STEP_DESCRIPTION_DESCRIPTION	47	top	#jform_menudescription	2	2	administrator/index.php?option=com_menus&view=menu&layout=edit	2026-09-28 17:56:43.000376	758	2026-09-28 17:56:43.000376	758	\N	\N	*		\N
48	5	COM_GUIDEDTOURS_TOUR_MENUS_STEP_SAVECLOSE_TITLE	1	COM_GUIDEDTOURS_TOUR_MENUS_STEP_SAVECLOSE_DESCRIPTION	48	bottom	#save-group-children-save .button-save	2	1	administrator/index.php?option=com_menus&view=menu&layout=edit	2026-09-28 17:56:43.000376	758	2026-09-28 17:56:43.000376	758	\N	\N	*		\N
49	5	COM_GUIDEDTOURS_TOUR_MENUS_STEP_CONGRATULATIONS_TITLE	1	COM_GUIDEDTOURS_TOUR_MENUS_STEP_CONGRATULATIONS_DESCRIPTION	49	bottom		0	1	administrator/index.php?option=com_menus&view=menu&layout=edit	2026-09-28 17:56:43.000376	758	2026-09-28 17:56:43.000376	758	\N	\N	*		\N
50	6	COM_GUIDEDTOURS_TOUR_TAGS_STEP_NEW_TITLE	1	COM_GUIDEDTOURS_TOUR_TAGS_STEP_NEW_DESCRIPTION	50	bottom	.button-new	2	1	administrator/index.php?option=com_tags&view=tags	2026-09-28 17:56:43.000376	758	2026-09-28 17:56:43.000376	758	\N	\N	*		\N
51	6	COM_GUIDEDTOURS_TOUR_TAGS_STEP_TITLE_TITLE	1	COM_GUIDEDTOURS_TOUR_TAGS_STEP_TITLE_DESCRIPTION	51	bottom	#jform_title	2	2	administrator/index.php?option=com_tags&view=tag&layout=edit	2026-09-28 17:56:43.000376	758	2026-09-28 17:56:43.000376	758	\N	\N	*		\N
52	6	COM_GUIDEDTOURS_TOUR_TAGS_STEP_ALIAS_TITLE	1	COM_GUIDEDTOURS_TOUR_TAGS_STEP_ALIAS_DESCRIPTION	52	bottom	#jform_alias	2	2	administrator/index.php?option=com_tags&view=tag&layout=edit	2026-09-28 17:56:43.000376	758	2026-09-28 17:56:43.000376	758	\N	\N	*		\N
53	6	COM_GUIDEDTOURS_TOUR_TAGS_STEP_CONTENT_TITLE	1	COM_GUIDEDTOURS_TOUR_TAGS_STEP_CONTENT_DESCRIPTION	53	bottom	#jform_description,#jform_description_ifr	2	3	administrator/index.php?option=com_tags&view=tag&layout=edit	2026-09-28 17:56:43.000376	758	2026-09-28 17:56:43.000376	758	\N	\N	*		\N
54	6	COM_GUIDEDTOURS_TOUR_TAGS_STEP_PARENT_TITLE	1	COM_GUIDEDTOURS_TOUR_TAGS_STEP_PARENT_DESCRIPTION	54	top	joomla-field-fancy-select .choices[data-type=select-one]	2	3	administrator/index.php?option=com_tags&view=tag&layout=edit	2026-09-28 17:56:43.000376	758	2026-09-28 17:56:43.000376	758	\N	\N	*		\N
55	6	COM_GUIDEDTOURS_TOUR_TAGS_STEP_STATUS_TITLE	1	COM_GUIDEDTOURS_TOUR_TAGS_STEP_STATUS_DESCRIPTION	55	bottom	#jform_published	2	3	administrator/index.php?option=com_tags&view=tag&layout=edit	2026-09-28 17:56:43.000376	758	2026-09-28 17:56:43.000376	758	\N	\N	*		\N
56	6	COM_GUIDEDTOURS_TOUR_TAGS_STEP_ACCESS_TITLE	1	COM_GUIDEDTOURS_TOUR_TAGS_STEP_ACCESS_DESCRIPTION	56	bottom	#jform_access	2	3	administrator/index.php?option=com_tags&view=tag&layout=edit	2026-09-28 17:56:43.000376	758	2026-09-28 17:56:43.000376	758	\N	\N	*		\N
57	6	COM_GUIDEDTOURS_TOUR_TAGS_STEP_NOTE_TITLE	1	COM_GUIDEDTOURS_TOUR_TAGS_STEP_NOTE_DESCRIPTION	57	top	#jform_note	2	2	administrator/index.php?option=com_tags&view=tag&layout=edit	2026-09-28 17:56:43.000376	758	2026-09-28 17:56:43.000376	758	\N	\N	*		\N
58	6	COM_GUIDEDTOURS_TOUR_TAGS_STEP_VERSIONNOTE_TITLE	1	COM_GUIDEDTOURS_TOUR_TAGS_STEP_VERSIONNOTE_DESCRIPTION	58	top	#jform_version_note	2	2	administrator/index.php?option=com_tags&view=tag&layout=edit	2026-09-28 17:56:43.000376	758	2026-09-28 17:56:43.000376	758	\N	\N	*		\N
59	6	COM_GUIDEDTOURS_TOUR_TAGS_STEP_SAVECLOSE_TITLE	1	COM_GUIDEDTOURS_TOUR_TAGS_STEP_SAVECLOSE_DESCRIPTION	59	bottom	#save-group-children-save .button-save	2	1	administrator/index.php?option=com_tags&view=tag&layout=edit	2026-09-28 17:56:43.000376	758	2026-09-28 17:56:43.000376	758	\N	\N	*		\N
60	6	COM_GUIDEDTOURS_TOUR_TAGS_STEP_CONGRATULATIONS_TITLE	1	COM_GUIDEDTOURS_TOUR_TAGS_STEP_CONGRATULATIONS_DESCRIPTION	60	bottom		0	1	administrator/index.php?option=com_tags&view=tag&layout=edit	2026-09-28 17:56:43.000376	758	2026-09-28 17:56:43.000376	758	\N	\N	*		\N
61	7	COM_GUIDEDTOURS_TOUR_BANNERS_STEP_NEW_TITLE	1	COM_GUIDEDTOURS_TOUR_BANNERS_STEP_NEW_DESCRIPTION	61	bottom	.button-new	2	1	administrator/index.php?option=com_banners&view=banners	2026-09-28 17:56:43.000376	758	2026-09-28 17:56:43.000376	758	\N	\N	*		\N
62	7	COM_GUIDEDTOURS_TOUR_BANNERS_STEP_TITLE_TITLE	1	COM_GUIDEDTOURS_TOUR_BANNERS_STEP_TITLE_DESCRIPTION	62	bottom	#jform_name	2	2	administrator/index.php?option=com_banners&view=banner&layout=edit	2026-09-28 17:56:43.000376	758	2026-09-28 17:56:43.000376	758	\N	\N	*		\N
63	7	COM_GUIDEDTOURS_TOUR_BANNERS_STEP_ALIAS_TITLE	1	COM_GUIDEDTOURS_TOUR_BANNERS_STEP_ALIAS_DESCRIPTION	63	bottom	#jform_alias	2	2	administrator/index.php?option=com_banners&view=banner&layout=edit	2026-09-28 17:56:43.000376	758	2026-09-28 17:56:43.000376	758	\N	\N	*		\N
64	7	COM_GUIDEDTOURS_TOUR_BANNERS_STEP_DETAILS_TITLE	1	COM_GUIDEDTOURS_TOUR_BANNERS_STEP_DETAILS_DESCRIPTION	64	bottom	.col-lg-9	2	3	administrator/index.php?option=com_banners&view=banner&layout=edit	2026-09-28 17:56:43.000376	758	2026-09-28 17:56:43.000376	758	\N	\N	*		\N
65	7	COM_GUIDEDTOURS_TOUR_BANNERS_STEP_STATUS_TITLE	1	COM_GUIDEDTOURS_TOUR_BANNERS_STEP_STATUS_DESCRIPTION	65	bottom	#jform_state	2	3	administrator/index.php?option=com_banners&view=banner&layout=edit	2026-09-28 17:56:43.000376	758	2026-09-28 17:56:43.000376	758	\N	\N	*		\N
66	7	COM_GUIDEDTOURS_TOUR_BANNERS_STEP_CATEGORY_TITLE	1	COM_GUIDEDTOURS_TOUR_BANNERS_STEP_CATEGORY_DESCRIPTION	66	top	joomla-field-fancy-select .choices[data-type=select-one]	2	3	administrator/index.php?option=com_banners&view=banner&layout=edit	2026-09-28 17:56:43.000376	758	2026-09-28 17:56:43.000376	758	\N	\N	*		\N
67	7	COM_GUIDEDTOURS_TOUR_BANNERS_STEP_PINNED_TITLE	1	COM_GUIDEDTOURS_TOUR_BANNERS_STEP_PINNED_DESCRIPTION	67	bottom	#jform_sticky1	2	3	administrator/index.php?option=com_banners&view=banner&layout=edit	2026-09-28 17:56:43.000376	758	2026-09-28 17:56:43.000376	758	\N	\N	*		\N
68	7	COM_GUIDEDTOURS_TOUR_BANNERS_STEP_VERSIONNOTE_TITLE	1	COM_GUIDEDTOURS_TOUR_BANNERS_STEP_VERSIONNOTE_DESCRIPTION	68	top	#jform_version_note	2	2	administrator/index.php?option=com_banners&view=banner&layout=edit	2026-09-28 17:56:43.000376	758	2026-09-28 17:56:43.000376	758	\N	\N	*		\N
69	7	COM_GUIDEDTOURS_TOUR_BANNERS_STEP_SAVECLOSE_TITLE	1	COM_GUIDEDTOURS_TOUR_BANNERS_STEP_SAVECLOSE_DESCRIPTION	69	bottom	#save-group-children-save .button-save	2	1	administrator/index.php?option=com_banners&view=banner&layout=edit	2026-09-28 17:56:43.000376	758	2026-09-28 17:56:43.000376	758	\N	\N	*		\N
70	7	COM_GUIDEDTOURS_TOUR_BANNERS_STEP_CONGRATULATIONS_TITLE	1	COM_GUIDEDTOURS_TOUR_BANNERS_STEP_CONGRATULATIONS_DESCRIPTION	70	bottom		0	1	administrator/index.php?option=com_banners&view=banner&layout=edit	2026-09-28 17:56:43.000376	758	2026-09-28 17:56:43.000376	758	\N	\N	*		\N
71	8	COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_NEW_TITLE	1	COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_NEW_DESCRIPTION	71	bottom	.button-new	2	1	administrator/index.php?option=com_contact&view=contacts	2026-09-28 17:56:43.000376	758	2026-09-28 17:56:43.000376	758	\N	\N	*		\N
72	8	COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_TITLE_TITLE	1	COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_TITLE_DESCRIPTION	72	bottom	#jform_name	2	2	administrator/index.php?option=com_contact&view=contact&layout=edit	2026-09-28 17:56:43.000376	758	2026-09-28 17:56:43.000376	758	\N	\N	*		\N
73	8	COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_ALIAS_TITLE	1	COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_ALIAS_DESCRIPTION	73	bottom	#jform_alias	2	2	administrator/index.php?option=com_contact&view=contact&layout=edit	2026-09-28 17:56:43.000376	758	2026-09-28 17:56:43.000376	758	\N	\N	*		\N
74	8	COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_DETAILS_TITLE	1	COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_DETAILS_DESCRIPTION	74	bottom	.col-lg-9	0	1	administrator/index.php?option=com_contact&view=contact&layout=edit	2026-09-28 17:56:43.000376	758	2026-09-28 17:56:43.000376	758	\N	\N	*		\N
75	8	COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_STATUS_TITLE	1	COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_STATUS_DESCRIPTION	75	bottom	#jform_published	2	3	administrator/index.php?option=com_contact&view=contact&layout=edit	2026-09-28 17:56:43.000376	758	2026-09-28 17:56:43.000376	758	\N	\N	*		\N
76	8	COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_CATEGORY_TITLE	1	COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_CATEGORY_DESCRIPTION	76	top	joomla-field-fancy-select .choices[data-type=select-one]	2	3	administrator/index.php?option=com_contact&view=contact&layout=edit	2026-09-28 17:56:43.000376	758	2026-09-28 17:56:43.000376	758	\N	\N	*		\N
77	8	COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_FEATURED_TITLE	1	COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_FEATURED_DESCRIPTION	77	bottom	#jform_featured0	2	3	administrator/index.php?option=com_contact&view=contact&layout=edit	2026-09-28 17:56:43.000376	758	2026-09-28 17:56:43.000376	758	\N	\N	*		\N
78	8	COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_ACCESS_TITLE	1	COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_ACCESS_DESCRIPTION	78	bottom	#jform_access	2	3	administrator/index.php?option=com_contact&view=contact&layout=edit	2026-09-28 17:56:43.000376	758	2026-09-28 17:56:43.000376	758	\N	\N	*		\N
79	8	COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_TAGS_TITLE	1	COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_TAGS_DESCRIPTION	79	top	joomla-field-fancy-select .choices[data-type=select-multiple]	2	3	administrator/index.php?option=com_contact&view=contact&layout=edit	2026-09-28 17:56:43.000376	758	2026-09-28 17:56:43.000376	758	\N	\N	*		\N
80	8	COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_VERSIONNOTE_TITLE	1	COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_VERSIONNOTE_DESCRIPTION	80	top	#jform_version_note	2	2	administrator/index.php?option=com_contact&view=contact&layout=edit	2026-09-28 17:56:43.000376	758	2026-09-28 17:56:43.000376	758	\N	\N	*		\N
81	8	COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_SAVECLOSE_TITLE	1	COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_SAVECLOSE_DESCRIPTION	81	bottom	#save-group-children-save .button-save	2	1	administrator/index.php?option=com_contact&view=contact&layout=edit	2026-09-28 17:56:43.000376	758	2026-09-28 17:56:43.000376	758	\N	\N	*		\N
82	8	COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_CONGRATULATIONS_TITLE	1	COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_CONGRATULATIONS_DESCRIPTION	82	bottom		0	1	administrator/index.php?option=com_contact&view=contact&layout=edit	2026-09-28 17:56:43.000376	758	2026-09-28 17:56:43.000376	758	\N	\N	*		\N
83	9	COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_NEW_TITLE	1	COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_NEW_DESCRIPTION	83	bottom	.button-new	2	1	administrator/index.php?option=com_newsfeeds&view=newsfeeds	2026-09-28 17:56:43.000376	758	2026-09-28 17:56:43.000376	758	\N	\N	*		\N
84	9	COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_TITLE_TITLE	1	COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_TITLE_DESCRIPTION	84	bottom	#jform_name	2	2	administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit	2026-09-28 17:56:43.000376	758	2026-09-28 17:56:43.000376	758	\N	\N	*		\N
85	9	COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_ALIAS_TITLE	1	COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_ALIAS_DESCRIPTION	85	bottom	#jform_alias	2	2	administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit	2026-09-28 17:56:43.000376	758	2026-09-28 17:56:43.000376	758	\N	\N	*		\N
86	9	COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_LINK_TITLE	1	COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_LINK_DESCRIPTION	86	bottom	#jform_link	2	2	administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit	2026-09-28 17:56:43.000376	758	2026-09-28 17:56:43.000376	758	\N	\N	*		\N
87	9	COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_DESCRIPTION_TITLE	1	COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_DESCRIPTION_DESCRIPTION	87	bottom	#jform_description,#jform_description_ifr	2	3	administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit	2026-09-28 17:56:43.000376	758	2026-09-28 17:56:43.000376	758	\N	\N	*		\N
88	9	COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_STATUS_TITLE	1	COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_STATUS_DESCRIPTION	88	bottom	#jform_published	2	3	administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit	2026-09-28 17:56:43.000376	758	2026-09-28 17:56:43.000376	758	\N	\N	*		\N
89	9	COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_CATEGORY_TITLE	1	COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_CATEGORY_DESCRIPTION	89	top	joomla-field-fancy-select .choices[data-type=select-one]	2	3	administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit	2026-09-28 17:56:43.000376	758	2026-09-28 17:56:43.000376	758	\N	\N	*		\N
90	9	COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_ACCESS_TITLE	1	COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_ACCESS_DESCRIPTION	90	bottom	#jform_access	2	3	administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit	2026-09-28 17:56:43.000376	758	2026-09-28 17:56:43.000376	758	\N	\N	*		\N
91	9	COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_TAGS_TITLE	1	COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_TAGS_DESCRIPTION	91	top	joomla-field-fancy-select .choices[data-type=select-multiple]	2	3	administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit	2026-09-28 17:56:43.000376	758	2026-09-28 17:56:43.000376	758	\N	\N	*		\N
92	9	COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_VERSIONNOTE_TITLE	1	COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_VERSIONNOTE_DESCRIPTION	92	top	#jform_version_note	2	2	administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit	2026-09-28 17:56:43.000376	758	2026-09-28 17:56:43.000376	758	\N	\N	*		\N
93	9	COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_SAVECLOSE_TITLE	1	COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_SAVECLOSE_DESCRIPTION	93	bottom	#save-group-children-save .button-save	2	1	administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit	2026-09-28 17:56:43.000376	758	2026-09-28 17:56:43.000376	758	\N	\N	*		\N
94	9	COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_CONGRATULATIONS_TITLE	1	COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_CONGRATULATIONS_DESCRIPTION	94	bottom		0	1	administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit	2026-09-28 17:56:43.000376	758	2026-09-28 17:56:43.000376	758	\N	\N	*		\N
95	10	COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_NEW_TITLE	1	COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_NEW_DESCRIPTION	95	bottom	.button-new	2	1	administrator/index.php?option=com_finder&view=filters	2026-09-28 17:56:43.000376	758	2026-09-28 17:56:43.000376	758	\N	\N	*		\N
96	10	COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_TITLE_TITLE	1	COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_TITLE_DESCRIPTION	96	bottom	#jform_title	2	2	administrator/index.php?option=com_finder&view=filter&layout=edit	2026-09-28 17:56:43.000376	758	2026-09-28 17:56:43.000376	758	\N	\N	*		\N
97	10	COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_ALIAS_TITLE	1	COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_ALIAS_DESCRIPTION	97	bottom	#jform_alias	2	2	administrator/index.php?option=com_finder&view=filter&layout=edit	2026-09-28 17:56:43.000376	758	2026-09-28 17:56:43.000376	758	\N	\N	*		\N
98	10	COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_CONTENT_TITLE	1	COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_CONTENT_DESCRIPTION	98	bottom	.col-lg-9	0	1	administrator/index.php?option=com_finder&view=filter&layout=edit	2026-09-28 17:56:43.000376	758	2026-09-28 17:56:43.000376	758	\N	\N	*		\N
99	10	COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_STATUS_TITLE	1	COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_STATUS_DESCRIPTION	99	bottom	#jform_state	2	3	administrator/index.php?option=com_finder&view=filter&layout=edit	2026-09-28 17:56:43.000376	758	2026-09-28 17:56:43.000376	758	\N	\N	*		\N
100	10	COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_SAVECLOSE_TITLE	1	COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_SAVECLOSE_DESCRIPTION	100	bottom	#save-group-children-save .button-save	2	1	administrator/index.php?option=com_finder&view=filter&layout=edit	2026-09-28 17:56:43.000376	758	2026-09-28 17:56:43.000376	758	\N	\N	*		\N
101	10	COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_CONGRATULATIONS_TITLE	1	COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_CONGRATULATIONS_DESCRIPTION	101	bottom		0	1	administrator/index.php?option=com_finder&view=filter&layout=edit	2026-09-28 17:56:43.000376	758	2026-09-28 17:56:43.000376	758	\N	\N	*		\N
102	11	COM_GUIDEDTOURS_TOUR_USERS_STEP_NEW_TITLE	1	COM_GUIDEDTOURS_TOUR_USERS_STEP_NEW_DESCRIPTION	102	bottom	.button-new	2	1	administrator/index.php?option=com_users&view=user&layout=edit	2026-09-28 17:56:43.000376	758	2026-09-28 17:56:43.000376	758	\N	\N	*		\N
103	11	COM_GUIDEDTOURS_TOUR_USERS_STEP_NAME_TITLE	1	COM_GUIDEDTOURS_TOUR_USERS_STEP_NAME_DESCRIPTION	103	bottom	#jform_name	2	2	administrator/index.php?option=com_users&view=user&layout=edit	2026-09-28 17:56:43.000376	758	2026-09-28 17:56:43.000376	758	\N	\N	*		\N
104	11	COM_GUIDEDTOURS_TOUR_USERS_STEP_LOGINNAME_TITLE	1	COM_GUIDEDTOURS_TOUR_USERS_STEP_LOGINNAME_DESCRIPTION	104	bottom	#jform_username	2	2	administrator/index.php?option=com_users&view=user&layout=edit	2026-09-28 17:56:43.000376	758	2026-09-28 17:56:43.000376	758	\N	\N	*		\N
105	11	COM_GUIDEDTOURS_TOUR_USERS_STEP_PASSWORD_TITLE	1	COM_GUIDEDTOURS_TOUR_USERS_STEP_PASSWORD_DESCRIPTION	105	bottom	#jform_password	2	2	administrator/index.php?option=com_users&view=user&layout=edit	2026-09-28 17:56:43.000376	758	2026-09-28 17:56:43.000376	758	\N	\N	*		\N
106	11	COM_GUIDEDTOURS_TOUR_USERS_STEP_PASSWORD2_TITLE	1	COM_GUIDEDTOURS_TOUR_USERS_STEP_PASSWORD2_DESCRIPTION	106	bottom	#jform_password2	2	2	administrator/index.php?option=com_users&view=user&layout=edit	2026-09-28 17:56:43.000376	758	2026-09-28 17:56:43.000376	758	\N	\N	*		\N
107	11	COM_GUIDEDTOURS_TOUR_USERS_STEP_EMAIL_TITLE	1	COM_GUIDEDTOURS_TOUR_USERS_STEP_EMAIL_DESCRIPTION	107	bottom	#jform_email	2	2	administrator/index.php?option=com_users&view=user&layout=edit	2026-09-28 17:56:43.000376	758	2026-09-28 17:56:43.000376	758	\N	\N	*		\N
108	11	COM_GUIDEDTOURS_TOUR_USERS_STEP_SYSTEMEMAIL_TITLE	1	COM_GUIDEDTOURS_TOUR_USERS_STEP_SYSTEMEMAIL_DESCRIPTION	108	top	#jform_sendEmail0	2	3	administrator/index.php?option=com_users&view=user&layout=edit	2026-09-28 17:56:43.000376	758	2026-09-28 17:56:43.000376	758	\N	\N	*		\N
109	11	COM_GUIDEDTOURS_TOUR_USERS_STEP_STATUS_TITLE	1	COM_GUIDEDTOURS_TOUR_USERS_STEP_STATUS_DESCRIPTION	109	top	#jform_block0	2	3	administrator/index.php?option=com_users&view=user&layout=edit	2026-09-28 17:56:43.000376	758	2026-09-28 17:56:43.000376	758	\N	\N	*		\N
110	11	COM_GUIDEDTOURS_TOUR_USERS_STEP_PASSWORDRESET_TITLE	1	COM_GUIDEDTOURS_TOUR_USERS_STEP_PASSWORDRESET_DESCRIPTION	110	top	#jform_requireReset0	2	3	administrator/index.php?option=com_users&view=user&layout=edit	2026-09-28 17:56:43.000376	758	2026-09-28 17:56:43.000376	758	\N	\N	*		\N
111	11	COM_GUIDEDTOURS_TOUR_USERS_STEP_SAVECLOSE_TITLE	1	COM_GUIDEDTOURS_TOUR_USERS_STEP_SAVECLOSE_DESCRIPTION	111	bottom	#save-group-children-save .button-save	2	1	administrator/index.php?option=com_users&view=user&layout=edit	2026-09-28 17:56:43.000376	758	2026-09-28 17:56:43.000376	758	\N	\N	*		\N
112	11	COM_GUIDEDTOURS_TOUR_USERS_STEP_CONGRATULATIONS_TITLE	1	COM_GUIDEDTOURS_TOUR_USERS_STEP_CONGRATULATIONS_DESCRIPTION	112	bottom		0	1	administrator/index.php?option=com_users&view=user&layout=edit	2026-09-28 17:56:43.000376	758	2026-09-28 17:56:43.000376	758	\N	\N	*		\N
113	12	COM_GUIDEDTOURS_TOUR_WELCOMETOJOOMLA_STEP_MENUS_TITLE	1	COM_GUIDEDTOURS_TOUR_WELCOMETOJOOMLA_STEP_MENUS_DESCRIPTION	113	right	#sidebarmenu	0	1		2026-09-28 17:56:43.000376	758	2026-09-28 17:56:43.000376	758	\N	\N	*		\N
114	12	COM_GUIDEDTOURS_TOUR_WELCOMETOJOOMLA_STEP_QUICKACCESS_TITLE	1	COM_GUIDEDTOURS_TOUR_WELCOMETOJOOMLA_STEP_QUICKACCESS_DESCRIPTION	114	center		0	1		2026-09-28 17:56:43.000376	758	2026-09-28 17:56:43.000376	758	\N	\N	*		\N
115	12	COM_GUIDEDTOURS_TOUR_WELCOMETOJOOMLA_STEP_NOTIFICATIONS_TITLE	1	COM_GUIDEDTOURS_TOUR_WELCOMETOJOOMLA_STEP_NOTIFICATIONS_DESCRIPTION	115	left	.quickicons-for-update_quickicon .card	0	1		2026-09-28 17:56:43.000376	758	2026-09-28 17:56:43.000376	758	\N	\N	*		\N
116	12	COM_GUIDEDTOURS_TOUR_WELCOMETOJOOMLA_STEP_TOPBAR_TITLE	1	COM_GUIDEDTOURS_TOUR_WELCOMETOJOOMLA_STEP_TOPBAR_DESCRIPTION	116	bottom	#header	0	1		2026-09-28 17:56:43.000376	758	2026-09-28 17:56:43.000376	758	\N	\N	*		\N
117	12	COM_GUIDEDTOURS_TOUR_WELCOMETOJOOMLA_STEP_FINALWORDS_TITLE	1	COM_GUIDEDTOURS_TOUR_WELCOMETOJOOMLA_STEP_FINALWORDS_DESCRIPTION	117	right	#sidebarmenu nav > ul:first-of-type > li:last-child	0	1		2026-09-28 17:56:43.000376	758	2026-09-28 17:56:43.000376	758	\N	\N	*		\N
\.


--
-- Data for Name: jos_guidedtours; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.jos_guidedtours (id, title, uid, description, ordering, extensions, url, created, created_by, modified, modified_by, checked_out_time, checked_out, published, language, note, access, autostart) FROM stdin;
1	COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_TITLE	joomla-guidedtours	COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_DESCRIPTION	1	["com_guidedtours"]	administrator/index.php?option=com_guidedtours&view=tours	2026-09-28 17:56:42.97536	758	2026-09-28 17:56:42.97536	758	\N	\N	1	*		1	0
2	COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_TITLE	joomla-guidedtoursteps	COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_DESCRIPTION	2	["com_guidedtours"]	administrator/index.php?option=com_guidedtours&view=tours	2026-09-28 17:56:42.97536	758	2026-09-28 17:56:42.97536	758	\N	\N	1	*		1	0
3	COM_GUIDEDTOURS_TOUR_ARTICLES_TITLE	joomla-articles	COM_GUIDEDTOURS_TOUR_ARTICLES_DESCRIPTION	3	["com_content","com_categories"]	administrator/index.php?option=com_content&view=articles	2026-09-28 17:56:42.97536	758	2026-09-28 17:56:42.97536	758	\N	\N	1	*		1	0
4	COM_GUIDEDTOURS_TOUR_CATEGORIES_TITLE	joomla-categories	COM_GUIDEDTOURS_TOUR_CATEGORIES_DESCRIPTION	4	["com_content","com_categories"]	administrator/index.php?option=com_categories&view=categories&extension=com_content	2026-09-28 17:56:42.97536	758	2026-09-28 17:56:42.97536	758	\N	\N	1	*		1	0
5	COM_GUIDEDTOURS_TOUR_MENUS_TITLE	joomla-menus	COM_GUIDEDTOURS_TOUR_MENUS_DESCRIPTION	5	["com_menus"]	administrator/index.php?option=com_menus&view=menus	2026-09-28 17:56:42.97536	758	2026-09-28 17:56:42.97536	758	\N	\N	1	*		1	0
6	COM_GUIDEDTOURS_TOUR_TAGS_TITLE	joomla-tags	COM_GUIDEDTOURS_TOUR_TAGS_DESCRIPTION	6	["com_tags"]	administrator/index.php?option=com_tags&view=tags	2026-09-28 17:56:42.97536	758	2026-09-28 17:56:42.97536	758	\N	\N	1	*		1	0
7	COM_GUIDEDTOURS_TOUR_BANNERS_TITLE	joomla-banners	COM_GUIDEDTOURS_TOUR_BANNERS_DESCRIPTION	7	["com_banners"]	administrator/index.php?option=com_banners&view=banners	2026-09-28 17:56:42.97536	758	2026-09-28 17:56:42.97536	758	\N	\N	1	*		1	0
8	COM_GUIDEDTOURS_TOUR_CONTACTS_TITLE	joomla-contacts	COM_GUIDEDTOURS_TOUR_CONTACTS_DESCRIPTION	8	["com_contact"]	administrator/index.php?option=com_contact&view=contacts	2026-09-28 17:56:42.97536	758	2026-09-28 17:56:42.97536	758	\N	\N	1	*		1	0
9	COM_GUIDEDTOURS_TOUR_NEWSFEEDS_TITLE	joomla-newsfeeds	COM_GUIDEDTOURS_TOUR_NEWSFEEDS_DESCRIPTION	9	["com_newsfeeds"]	administrator/index.php?option=com_newsfeeds&view=newsfeeds	2026-09-28 17:56:42.97536	758	2026-09-28 17:56:42.97536	758	\N	\N	1	*		1	0
10	COM_GUIDEDTOURS_TOUR_SMARTSEARCH_TITLE	joomla-smartsearch	COM_GUIDEDTOURS_TOUR_SMARTSEARCH_DESCRIPTION	10	["com_finder"]	administrator/index.php?option=com_finder&view=filters	2026-09-28 17:56:42.97536	758	2026-09-28 17:56:42.97536	758	\N	\N	1	*		1	0
11	COM_GUIDEDTOURS_TOUR_USERS_TITLE	joomla-users	COM_GUIDEDTOURS_TOUR_USERS_DESCRIPTION	11	["com_users"]	administrator/index.php?option=com_users&view=users	2026-09-28 17:56:42.97536	758	2026-09-28 17:56:42.97536	758	\N	\N	1	*		1	0
12	COM_GUIDEDTOURS_TOUR_WELCOMETOJOOMLA_TITLE	joomla-welcome	COM_GUIDEDTOURS_TOUR_WELCOMETOJOOMLA_DESCRIPTION	12	["com_cpanel"]	administrator/index.php	2026-09-28 17:56:42.97536	758	2026-09-28 17:56:42.97536	758	\N	\N	1	*		1	1
\.


--
-- Data for Name: jos_history; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.jos_history (version_id, item_id, version_note, save_date, editor_user_id, character_count, sha1_hash, version_data, keep_forever, is_current, is_legacy) FROM stdin;
1	com_content.article.1		2026-09-28 18:49:42+00	758	1940	9a4fb98093754a269686b3e8fd3625192dcaa3b2	{"id":1,"title":"Comunicaciones","alias":"comunicaciones","note":"","catid":2,"state":1,"created":"2026-09-28 18:49:42","created_by":758,"created_by_alias":"","publish_up":"2026-09-28 18:49:42","publish_down":null,"featured_up":"","featured_down":"","metakey":"","metadesc":"","access":1,"language":"*","featured":0,"schema":{"extendJed":""},"attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","images":"{\\"image_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":\\"\\",\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":\\"\\",\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":\\"\\",\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\"}","transition":"","tags":{},"typeAlias":"com_content.article","asset_id":100,"introtext":"<p><img src=\\"images\\/ahhh\\/diagrama_arquitectura_joomla_ligero.jpg\\" width=\\"1200\\" height=\\"800\\" loading=\\"lazy\\" data-path=\\"local-images:\\/ahhh\\/diagrama_arquitectura_joomla_ligero.jpg\\"><br><br><\\/p>\\r\\n<p><img src=\\"images\\/cat-cat-meme.png\\" width=\\"498\\" height=\\"400\\" loading=\\"lazy\\" data-path=\\"local-images:\\/cat-cat-meme.png\\"><br><br><\\/p>","fulltext":"","ordering":0}	0	1	0
\.


--
-- Data for Name: jos_languages; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.jos_languages (lang_id, asset_id, lang_code, title, title_native, sef, image, description, metakey, metadesc, sitename, published, access, ordering) FROM stdin;
1	0	en-GB	English (en-GB)	English (United Kingdom)	en	en_gb					1	1	1
\.


--
-- Data for Name: jos_mail_templates; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.jos_mail_templates (template_id, extension, language, subject, body, htmlbody, attachments, params) FROM stdin;
com_config.test_mail	com_config	       	COM_CONFIG_SENDMAIL_SUBJECT	COM_CONFIG_SENDMAIL_BODY			{"tags":["sitename","method"]}
com_contact.mail	com_contact	       	COM_CONTACT_ENQUIRY_SUBJECT	COM_CONTACT_ENQUIRY_TEXT			{"tags":["sitename","name","email","subject","body","url","customfields"]}
com_contact.mail.copy	com_contact	       	COM_CONTACT_COPYSUBJECT_OF	COM_CONTACT_COPYTEXT_OF			{"tags":["sitename","name","email","subject","body","url","customfields","contactname"]}
com_users.massmail.mail	com_users	       	COM_USERS_MASSMAIL_MAIL_SUBJECT	COM_USERS_MASSMAIL_MAIL_BODY			{"tags":["subject","body","subjectprefix","bodysuffix"]}
com_users.password_reset	com_users	       	COM_USERS_EMAIL_PASSWORD_RESET_SUBJECT	COM_USERS_EMAIL_PASSWORD_RESET_BODY			{"tags":["name","email","sitename","link_text","link_html","token"]}
com_users.reminder	com_users	       	COM_USERS_EMAIL_USERNAME_REMINDER_SUBJECT	COM_USERS_EMAIL_USERNAME_REMINDER_BODY			{"tags":["name","username","sitename","email","link_text","link_html"]}
com_joomlaupdate.update.success	com_joomlaupdate	       	COM_JOOMLAUPDATE_UPDATE_SUCCESS_MAIL_SUBJECT	COM_JOOMLAUPDATE_UPDATE_SUCCESS_MAIL_BODY			{"tags":["newversion","oldversion","sitename","url"]}
com_joomlaupdate.update.failed	com_joomlaupdate	       	COM_JOOMLAUPDATE_UPDATE_FAILED_MAIL_SUBJECT	COM_JOOMLAUPDATE_UPDATE_FAILED_MAIL_BODY			{"tags":["newversion","oldversion","sitename","url"]}
plg_task_updatenotification.mail	plg_task_updatenotification	       	PLG_TASK_UPDATENOTIFICATION_EMAIL_SUBJECT	PLG_TASK_UPDATENOTIFICATION_EMAIL_BODY			{"tags":["newversion","curversion","sitename","url","link","releasenews"]}
plg_user_joomla.mail	plg_user_joomla	       	PLG_USER_JOOMLA_NEW_USER_EMAIL_SUBJECT	PLG_USER_JOOMLA_NEW_USER_EMAIL_BODY			{"tags":["name","sitename","url","username","password","email"]}
com_actionlogs.notification	com_actionlogs	       	COM_ACTIONLOGS_EMAIL_SUBJECT	COM_ACTIONLOGS_EMAIL_BODY	COM_ACTIONLOGS_EMAIL_HTMLBODY		{"tags":["messages","message","date","extension","username","ip_address"]}
com_privacy.userdataexport	com_privacy	       	COM_PRIVACY_EMAIL_DATA_EXPORT_COMPLETED_SUBJECT	COM_PRIVACY_EMAIL_DATA_EXPORT_COMPLETED_BODY			{"tags":["sitename","url"]}
com_privacy.notification.export	com_privacy	       	COM_PRIVACY_EMAIL_REQUEST_SUBJECT_EXPORT_REQUEST	COM_PRIVACY_EMAIL_REQUEST_BODY_EXPORT_REQUEST			{"tags":["sitename","url","tokenurl","formurl","token"]}
com_privacy.notification.remove	com_privacy	       	COM_PRIVACY_EMAIL_REQUEST_SUBJECT_REMOVE_REQUEST	COM_PRIVACY_EMAIL_REQUEST_BODY_REMOVE_REQUEST			{"tags":["sitename","url","tokenurl","formurl","token"]}
com_privacy.notification.admin.export	com_privacy	       	COM_PRIVACY_EMAIL_ADMIN_REQUEST_SUBJECT_EXPORT_REQUEST	COM_PRIVACY_EMAIL_ADMIN_REQUEST_BODY_EXPORT_REQUEST			{"tags":["sitename","url","tokenurl","formurl","token"]}
com_privacy.notification.admin.remove	com_privacy	       	COM_PRIVACY_EMAIL_ADMIN_REQUEST_SUBJECT_REMOVE_REQUEST	COM_PRIVACY_EMAIL_ADMIN_REQUEST_BODY_REMOVE_REQUEST			{"tags":["sitename","url","tokenurl","formurl","token"]}
com_users.registration.user.admin_activation	com_users	       	COM_USERS_EMAIL_ACCOUNT_DETAILS	COM_USERS_EMAIL_REGISTERED_WITH_ADMIN_ACTIVATION_BODY_NOPW			{"tags":["name","sitename","activate","siteurl","username"]}
com_users.registration.user.admin_activation_w_pw	com_users	       	COM_USERS_EMAIL_ACCOUNT_DETAILS	COM_USERS_EMAIL_REGISTERED_WITH_ADMIN_ACTIVATION_BODY			{"tags":["name","sitename","activate","siteurl","username","password_clear"]}
com_users.registration.user.self_activation	com_users	       	COM_USERS_EMAIL_ACCOUNT_DETAILS	COM_USERS_EMAIL_REGISTERED_WITH_ACTIVATION_BODY_NOPW			{"tags":["name","sitename","activate","siteurl","username"]}
com_users.registration.user.self_activation_w_pw	com_users	       	COM_USERS_EMAIL_ACCOUNT_DETAILS	COM_USERS_EMAIL_REGISTERED_WITH_ACTIVATION_BODY			{"tags":["name","sitename","activate","siteurl","username","password_clear"]}
com_users.registration.user.registration_mail	com_users	       	COM_USERS_EMAIL_ACCOUNT_DETAILS	COM_USERS_EMAIL_REGISTERED_BODY_NOPW			{"tags":["name","sitename","siteurl","username"]}
com_users.registration.user.registration_mail_w_pw	com_users	       	COM_USERS_EMAIL_ACCOUNT_DETAILS	COM_USERS_EMAIL_REGISTERED_BODY			{"tags":["name","sitename","siteurl","username","password_clear"]}
com_users.registration.admin.new_notification	com_users	       	COM_USERS_EMAIL_ACCOUNT_DETAILS	COM_USERS_EMAIL_REGISTERED_NOTIFICATION_TO_ADMIN_BODY			{"tags":["name","sitename","siteurl","username"]}
com_users.registration.user.admin_activated	com_users	       	COM_USERS_EMAIL_ACTIVATED_BY_ADMIN_ACTIVATION_SUBJECT	COM_USERS_EMAIL_ACTIVATED_BY_ADMIN_ACTIVATION_BODY			{"tags":["name","sitename","siteurl","username"]}
com_users.registration.admin.verification_request	com_users	       	COM_USERS_EMAIL_ACTIVATE_WITH_ADMIN_ACTIVATION_SUBJECT	COM_USERS_EMAIL_ACTIVATE_WITH_ADMIN_ACTIVATION_BODY			{"tags":["name","sitename","email","username","activate"]}
plg_task_privacyconsent.request.reminder	plg_task_privacyconsent	       	PLG_TASK_PRIVACYCONSENT_EMAIL_REMIND_SUBJECT	PLG_TASK_PRIVACYCONSENT_EMAIL_REMIND_BODY			{"tags":["sitename","url","tokenurl","formurl","token"]}
com_messages.new_message	com_messages	       	COM_MESSAGES_NEW_MESSAGE	COM_MESSAGES_NEW_MESSAGE_BODY			{"tags":["subject","message","fromname","sitename","siteurl","fromemail","toname","toemail"]}
plg_system_tasknotification.failure_mail	plg_system_tasknotification	       	PLG_SYSTEM_TASK_NOTIFICATION_FAILURE_MAIL_SUBJECT	PLG_SYSTEM_TASK_NOTIFICATION_FAILURE_MAIL_BODY			{"tags": ["task_id", "task_title", "exit_code", "exec_data_time", "task_output"]}
plg_system_tasknotification.fatal_recovery_mail	plg_system_tasknotification	       	PLG_SYSTEM_TASK_NOTIFICATION_FATAL_MAIL_SUBJECT	PLG_SYSTEM_TASK_NOTIFICATION_FATAL_MAIL_BODY			{"tags": ["task_id", "task_title"]}
plg_system_tasknotification.orphan_mail	plg_system_tasknotification	       	PLG_SYSTEM_TASK_NOTIFICATION_ORPHAN_MAIL_SUBJECT	PLG_SYSTEM_TASK_NOTIFICATION_ORPHAN_MAIL_BODY			{"tags": ["task_id", "task_title"]}
plg_system_tasknotification.success_mail	plg_system_tasknotification	       	PLG_SYSTEM_TASK_NOTIFICATION_SUCCESS_MAIL_SUBJECT	PLG_SYSTEM_TASK_NOTIFICATION_SUCCESS_MAIL_BODY			{"tags":["task_id", "task_title", "exec_data_time", "task_output"]}
plg_multifactorauth_email.mail	plg_multifactorauth_email	       	PLG_MULTIFACTORAUTH_EMAIL_EMAIL_SUBJECT	PLG_MULTIFACTORAUTH_EMAIL_EMAIL_BODY			{"tags":["code","sitename","siteurl","username","email","fullname"]}
plg_content_joomla.newarticle	plg_content_joomla	       	PLG_CONTENT_JOOMLA_NEW_ARTICLE_SUBJECT	PLG_CONTENT_JOOMLA_NEW_ARTICLE_BODY			{"tags":["sitename","name","email","title","url"]}
\.


--
-- Data for Name: jos_menu; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.jos_menu (id, menutype, title, alias, note, path, link, type, published, parent_id, level, component_id, checked_out, checked_out_time, "browserNav", access, img, template_style_id, params, lft, rgt, home, language, client_id, publish_up, publish_down) FROM stdin;
1		Menu_Item_Root	root					1	0	0	0	\N	\N	0	0		0		0	43	0	*	0	\N	\N
2	main	com_banners	Banners		Banners	index.php?option=com_banners	component	1	1	1	3	\N	\N	0	0	class:bookmark	0		1	10	0	*	1	\N	\N
3	main	com_banners	Banners		Banners/Banners	index.php?option=com_banners&view=banners	component	1	2	2	3	\N	\N	0	0	class:banners	0		2	3	0	*	1	\N	\N
4	main	com_banners_categories	Categories		Banners/Categories	index.php?option=com_categories&view=categories&extension=com_banners	component	1	2	2	5	\N	\N	0	0	class:banners-cat	0		4	5	0	*	1	\N	\N
5	main	com_banners_clients	Clients		Banners/Clients	index.php?option=com_banners&view=clients	component	1	2	2	3	\N	\N	0	0	class:banners-clients	0		6	7	0	*	1	\N	\N
6	main	com_banners_tracks	Tracks		Banners/Tracks	index.php?option=com_banners&view=tracks	component	1	2	2	3	\N	\N	0	0	class:banners-tracks	0		8	9	0	*	1	\N	\N
7	main	com_contact	Contacts		Contacts	index.php?option=com_contact	component	1	1	1	7	\N	\N	0	0	class:address-book	0		11	20	0	*	1	\N	\N
8	main	com_contact_contacts	Contacts		Contacts/Contacts	index.php?option=com_contact&view=contacts	component	1	7	2	7	\N	\N	0	0	class:contact	0		12	13	0	*	1	\N	\N
9	main	com_contact_categories	Categories		Contacts/Categories	index.php?option=com_categories&view=categories&extension=com_contact	component	1	7	2	5	\N	\N	0	0	class:contact-cat	0		14	15	0	*	1	\N	\N
10	main	com_newsfeeds	News Feeds		News Feeds	index.php?option=com_newsfeeds	component	1	1	1	16	\N	\N	0	0	class:rss	0		23	28	0	*	1	\N	\N
11	main	com_newsfeeds_feeds	Feeds		News Feeds/Feeds	index.php?option=com_newsfeeds&view=newsfeeds	component	1	10	2	16	\N	\N	0	0	class:newsfeeds	0		24	25	0	*	1	\N	\N
12	main	com_newsfeeds_categories	Categories		News Feeds/Categories	index.php?option=com_categories&view=categories&extension=com_newsfeeds	component	1	10	2	5	\N	\N	0	0	class:newsfeeds-cat	0		26	27	0	*	1	\N	\N
13	main	com_finder	Smart Search		Smart Search	index.php?option=com_finder	component	1	1	1	23	\N	\N	0	0	class:search-plus	0		29	38	0	*	1	\N	\N
14	main	com_tags	Tags		Tags	index.php?option=com_tags&view=tags	component	1	1	1	25	\N	\N	0	1	class:tags	0		39	40	0		1	\N	\N
15	main	com_associations	Multilingual Associations		Multilingual Associations	index.php?option=com_associations&view=associations	component	1	1	1	30	\N	\N	0	0	class:language	0		21	22	0	*	1	\N	\N
16	main	mod_menu_fields	Contact Custom Fields		contact/Custom Fields	index.php?option=com_fields&context=com_contact.contact	component	1	7	2	29	\N	\N	0	0	class:messages-add	0		16	17	0	*	1	\N	\N
17	main	mod_menu_fields_group	Contact Custom Fields Group		contact/Custom Fields Group	index.php?option=com_fields&view=groups&context=com_contact.contact	component	1	7	2	29	\N	\N	0	0	class:messages-add	0		18	19	0	*	1	\N	\N
18	main	com_finder_index	Smart-Search-Index		Smart Search/Index	index.php?option=com_finder&view=index	component	1	13	2	23	\N	\N	0	0	class:finder	0		30	31	0	*	1	\N	\N
19	main	com_finder_maps	Smart-Search-Maps		Smart Search/Maps	index.php?option=com_finder&view=maps	component	1	13	2	23	\N	\N	0	0	class:finder-maps	0		32	33	0	*	1	\N	\N
20	main	com_finder_filters	Smart-Search-Filters		Smart Search/Filters	index.php?option=com_finder&view=filters	component	1	13	2	23	\N	\N	0	0	class:finder-filters	0		34	35	0	*	1	\N	\N
21	main	com_finder_searches	Smart-Search-Searches		Smart Search/Searches	index.php?option=com_finder&view=searches	component	1	13	2	23	\N	\N	0	0	class:finder-searches	0		36	37	0	*	1	\N	\N
101	mainmenu	Home	home		home	index.php?option=com_content&view=article&id=1	component	1	1	1	19	\N	\N	0	1	 	0	{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_icon_css":"","menu_image":"","menu_image_css":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"1","page_heading":"","pageclass_sfx":"","menu-meta_description":"","robots":""}	41	42	1	*	0	\N	\N
\.


--
-- Data for Name: jos_menu_types; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.jos_menu_types (id, asset_id, menutype, title, description, client_id, ordering) FROM stdin;
1	0	mainmenu	Main Menu	The main menu for the site	0	1
\.


--
-- Data for Name: jos_messages; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.jos_messages (message_id, user_id_from, user_id_to, folder_id, date_time, state, priority, subject, message) FROM stdin;
\.


--
-- Data for Name: jos_messages_cfg; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.jos_messages_cfg (user_id, cfg_name, cfg_value) FROM stdin;
\.


--
-- Data for Name: jos_modules; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.jos_modules (id, asset_id, title, note, content, ordering, "position", checked_out, checked_out_time, publish_up, publish_down, published, module, access, showtitle, params, client_id, language) FROM stdin;
1	39	Main Menu			1	sidebar-right	\N	\N	\N	\N	1	mod_menu	1	1	{"menutype":"mainmenu","startLevel":"0","endLevel":"0","showAllChildren":"1","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}	0	*
2	40	Login			1	login	\N	\N	\N	\N	1	mod_login	1	1		1	*
3	41	Popular Articles			6	cpanel	\N	\N	\N	\N	1	mod_popular	3	1	{"count":"5","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0", "bootstrap_size": "12","header_tag":"h2"}	1	*
4	42	Recently Added Articles			4	cpanel	\N	\N	\N	\N	1	mod_latest	3	1	{"count":"5","ordering":"c_dsc","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0", "bootstrap_size": "12","header_tag":"h2"}	1	*
8	43	Toolbar			1	toolbar	\N	\N	\N	\N	1	mod_toolbar	3	1		1	*
9	44	Notifications			3	icon	\N	\N	\N	\N	1	mod_quickicon	3	1	{"context":"update_quickicon","header_icon":"icon-sync","show_jupdate":"1","show_eupdate":"1","show_oupdate":"1","show_privacy":"1","layout":"_:default","moduleclass_sfx":"","cache":1,"cache_time":900,"style":"0","module_tag":"div","bootstrap_size":"12","header_tag":"h2","header_class":""}	1	*
10	45	Logged-in Users			2	cpanel	\N	\N	\N	\N	1	mod_logged	3	1	{"count":"5","name":"1","layout":"_:default","moduleclass_sfx":"","cache":"0", "bootstrap_size": "12","header_tag":"h2"}	1	*
12	46	Admin Menu			1	menu	\N	\N	\N	\N	1	mod_menu	3	1	{"layout":"","moduleclass_sfx":"","shownew":"1","showhelp":"1","cache":"0"}	1	*
15	49	Title			1	title	\N	\N	\N	\N	1	mod_title	3	1		1	*
16	50	Login Form			7	sidebar-right	\N	\N	\N	\N	1	mod_login	1	1	{"greeting":"1","name":"0"}	0	*
17	51	Breadcrumbs			1	breadcrumbs	\N	\N	\N	\N	1	mod_breadcrumbs	1	1	{"moduleclass_sfx":"","showHome":"1","homeText":"","showComponent":"1","separator":"","cache":"0","cache_time":"0","cachemode":"itemid"}	0	*
79	52	Multilanguage status			2	status	\N	\N	\N	\N	1	mod_multilangstatus	3	1	{"layout":"_:default","moduleclass_sfx":"","cache":"0"}	1	*
86	53	Joomla Version			1	status	\N	\N	\N	\N	1	mod_version	3	1	{"layout":"_:default","moduleclass_sfx":"","cache":"0"}	1	*
87	55	Sample Data			1	cpanel	\N	\N	\N	\N	1	mod_sampledata	6	1	{"bootstrap_size": "12","header_tag":"h2"}	1	*
88	67	Latest Actions			3	cpanel	\N	\N	\N	\N	1	mod_latestactions	6	1	{"bootstrap_size": "12","header_tag":"h2"}	1	*
89	68	Privacy Dashboard			5	cpanel	\N	\N	\N	\N	1	mod_privacy_dashboard	6	1	{"bootstrap_size": "12","header_tag":"h2"}	1	*
90	89	Login Support			1	sidebar	\N	\N	\N	\N	1	mod_loginsupport	1	1	{"forum_url":"https://forum.joomla.org/","documentation_url":"https://docs.joomla.org/","news_url":"https://www.joomla.org/announcements.html","automatic_title":1,"prepare_content":1,"layout":"_:default","moduleclass_sfx":"","cache":1,"cache_time":900,"module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}	1	*
91	72	System Dashboard			1	cpanel-system	\N	\N	\N	\N	1	mod_submenu	1	0	{"menutype":"*","preset":"system","layout":"_:default","moduleclass_sfx":"","module_tag":"div","bootstrap_size":"12","header_tag":"h2","header_class":"","style":"System-none"}	1	*
92	73	Content Dashboard			1	cpanel-content	\N	\N	\N	\N	1	mod_submenu	1	0	{"menutype":"*","preset":"content","layout":"_:default","moduleclass_sfx":"","module_tag":"div","bootstrap_size":"12","header_tag":"h2","header_class":"","style":"System-none"}	1	*
93	74	Menus Dashboard			1	cpanel-menus	\N	\N	\N	\N	1	mod_submenu	1	0	{"menutype":"*","preset":"menus","layout":"_:default","moduleclass_sfx":"","module_tag":"div","bootstrap_size":"12","header_tag":"h2","header_class":"","style":"System-none"}	1	*
94	75	Components Dashboard			1	cpanel-components	\N	\N	\N	\N	1	mod_submenu	1	0	{"menutype":"*","preset":"components","layout":"_:default","moduleclass_sfx":"","module_tag":"div","bootstrap_size":"12","header_tag":"h2","header_class":"","style":"System-none"}	1	*
95	76	Users Dashboard			1	cpanel-users	\N	\N	\N	\N	1	mod_submenu	1	0	{"menutype":"*","preset":"users","layout":"_:default","moduleclass_sfx":"","module_tag":"div","bootstrap_size":"12","header_tag":"h2","header_class":"","style":"System-none"}	1	*
96	86	Popular Articles			3	cpanel-content	\N	\N	\N	\N	1	mod_popular	3	1	{"count":"5","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0", "bootstrap_size": "12","header_tag":"h2"}	1	*
97	87	Recently Added Articles			4	cpanel-content	\N	\N	\N	\N	1	mod_latest	3	1	{"count":"5","ordering":"c_dsc","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0", "bootstrap_size": "12","header_tag":"h2"}	1	*
98	88	Logged-in Users			2	cpanel-users	\N	\N	\N	\N	1	mod_logged	3	1	{"count":"5","name":"1","layout":"_:default","moduleclass_sfx":"","cache":"0", "bootstrap_size": "12","header_tag":"h2"}	1	*
99	77	Frontend Link			5	status	\N	\N	\N	\N	1	mod_frontend	1	1		1	*
100	78	Messages			4	status	\N	\N	\N	\N	1	mod_messages	3	1		1	*
101	79	Post Install Messages			3	status	\N	\N	\N	\N	1	mod_post_installation_messages	3	1		1	*
102	80	User Status			6	status	\N	\N	\N	\N	1	mod_user	3	1		1	*
103	70	Site			1	icon	\N	\N	\N	\N	1	mod_quickicon	1	1	{"context":"site_quickicon","header_icon":"icon-desktop","show_users":"1","show_articles":"1","show_categories":"1","show_media":"1","show_menuItems":"1","show_modules":"1","show_plugins":"1","show_templates":"1","layout":"_:default","moduleclass_sfx":"","cache":1,"cache_time":900,"style":"0","module_tag":"div","bootstrap_size":"12","header_tag":"h2","header_class":""}	1	*
104	71	System			2	icon	\N	\N	\N	\N	1	mod_quickicon	1	1	{"context":"system_quickicon","header_icon":"icon-wrench","show_global":"1","show_checkin":"1","show_cache":"1","layout":"_:default","moduleclass_sfx":"","cache":1,"cache_time":900,"style":"0","module_tag":"div","bootstrap_size":"12","header_tag":"h2","header_class":""}	1	*
105	82	3rd Party			4	icon	\N	\N	\N	\N	1	mod_quickicon	1	1	{"context":"mod_quickicon","header_icon":"icon-boxes","load_plugins":"1","layout":"_:default","moduleclass_sfx":"","cache":1,"cache_time":900,"style":"0","module_tag":"div","bootstrap_size":"12","header_tag":"h2","header_class":""}	1	*
106	83	Help Dashboard			1	cpanel-help	\N	\N	\N	\N	1	mod_submenu	1	0	{"menutype":"*","preset":"help","layout":"_:default","moduleclass_sfx":"","style":"System-none","module_tag":"div","bootstrap_size":"12","header_tag":"h2","header_class":""}	1	*
107	84	Privacy Requests			1	cpanel-privacy	\N	\N	\N	\N	1	mod_privacy_dashboard	1	1	{"layout":"_:default","moduleclass_sfx":"","cache":1,"cache_time":900,"cachemode":"static","style":"0","module_tag":"div","bootstrap_size":"12","header_tag":"h2","header_class":""}	1	*
108	85	Privacy Status			1	cpanel-privacy	\N	\N	\N	\N	1	mod_privacy_status	1	1	{"layout":"_:default","moduleclass_sfx":"","cache":1,"cache_time":900,"cachemode":"static","style":"0","module_tag":"div","bootstrap_size":"12","header_tag":"h2","header_class":""}	1	*
109	96	Guided Tours			1	status	\N	\N	\N	\N	1	mod_guidedtours	1	1		1	*
\.


--
-- Data for Name: jos_modules_menu; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.jos_modules_menu (moduleid, menuid) FROM stdin;
1	0
2	0
3	0
4	0
6	0
7	0
8	0
9	0
10	0
12	0
14	0
15	0
16	0
17	0
79	0
86	0
87	0
88	0
89	0
90	0
91	0
92	0
93	0
94	0
95	0
96	0
97	0
98	0
99	0
100	0
101	0
102	0
103	0
104	0
105	0
106	0
107	0
108	0
109	0
\.


--
-- Data for Name: jos_newsfeeds; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.jos_newsfeeds (catid, id, name, alias, link, published, numarticles, cache_time, checked_out, checked_out_time, ordering, rtl, access, language, params, created, created_by, created_by_alias, modified, modified_by, metakey, metadesc, metadata, publish_up, publish_down, description, version, hits, images) FROM stdin;
\.


--
-- Data for Name: jos_overrider; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.jos_overrider (id, constant, string, file) FROM stdin;
\.


--
-- Data for Name: jos_postinstall_messages; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.jos_postinstall_messages (postinstall_message_id, extension_id, title_key, description_key, action_key, language_extension, language_client_id, type, action_file, action, condition_file, condition_method, version_introduced, enabled) FROM stdin;
1	247	COM_CPANEL_WELCOME_BEGINNERS_TITLE	COM_CPANEL_WELCOME_BEGINNERS_MESSAGE		com_cpanel	1	message					3.2.0	1
2	247	COM_CPANEL_MSG_STATS_COLLECTION_TITLE	COM_CPANEL_MSG_STATS_COLLECTION_BODY		com_cpanel	1	message			admin://components/com_admin/postinstall/statscollection.php	admin_postinstall_statscollection_condition	3.5.0	1
3	247	PLG_SYSTEM_HTTPHEADERS_POSTINSTALL_INTRODUCTION_TITLE	PLG_SYSTEM_HTTPHEADERS_POSTINSTALL_INTRODUCTION_BODY	PLG_SYSTEM_HTTPHEADERS_POSTINSTALL_INTRODUCTION_ACTION	plg_system_httpheaders	1	action	site://plugins/system/httpheaders/postinstall/introduction.php	httpheaders_postinstall_action	site://plugins/system/httpheaders/postinstall/introduction.php	httpheaders_postinstall_condition	4.0.0	1
4	247	COM_USERS_POSTINSTALL_MULTIFACTORAUTH_TITLE	COM_USERS_POSTINSTALL_MULTIFACTORAUTH_BODY	COM_USERS_POSTINSTALL_MULTIFACTORAUTH_ACTION	com_users	1	action	admin://components/com_users/postinstall/multifactorauth.php	com_users_postinstall_mfa_action	admin://components/com_users/postinstall/multifactorauth.php	com_users_postinstall_mfa_condition	4.2.0	1
5	247	COM_JOOMLAUPDATE_POSTINSTALL_MSG_AUTOMATED_UPDATES_TITLE	COM_JOOMLAUPDATE_POSTINSTALL_MSG_AUTOMATED_UPDATES_DESCRIPTION	COM_JOOMLAUPDATE_POSTINSTALL_MSG_AUTOMATED_UPDATES_ACTION	com_joomlaupdate	1	action	admin://components/com_joomlaupdate/postinstall/autoupdate.php	com_joomlaupdate_postinstall_autoupdate_action	admin://components/com_joomlaupdate/postinstall/autoupdate.php	com_joomlaupdate_postinstall_autoupdate_condition	5.4.0	1
\.


--
-- Data for Name: jos_privacy_consents; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.jos_privacy_consents (id, user_id, state, created, subject, body, remind, token) FROM stdin;
\.


--
-- Data for Name: jos_privacy_requests; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.jos_privacy_requests (id, email, requested_at, status, request_type, confirm_token, confirm_token_created_at) FROM stdin;
\.


--
-- Data for Name: jos_redirect_links; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.jos_redirect_links (id, old_url, new_url, referer, comment, hits, published, created_date, modified_date, header) FROM stdin;
\.


--
-- Data for Name: jos_scheduler_logs; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.jos_scheduler_logs (id, taskname, tasktype, duration, jobid, taskid, exitcode, lastdate, nextdate) FROM stdin;
1	Session GC	Session Data Purge	0.003	2	1	0	2026-10-01 19:36:13	2026-10-02 19:36:13
2	Update Notification	Joomla! Update Notification	1.286	3	1	0	2026-10-01 19:37:35	2026-10-02 19:37:35
\.


--
-- Data for Name: jos_scheduler_tasks; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.jos_scheduler_tasks (id, asset_id, title, type, execution_rules, cron_rules, state, last_exit_code, last_execution, next_execution, times_executed, times_failed, locked, priority, ordering, cli_exclusive, params, note, created, created_by, checked_out, checked_out_time) FROM stdin;
1	97	Rotate Logs	rotation.logs	{"rule-type":"interval-days","interval-days":"30","exec-day":"28","exec-time":"17:00"}	{"type":"interval","exp":"P30D"}	1	0	\N	2026-10-28 17:00:00	0	0	\N	0	0	0	{"individual_log":false,"log_file":"","notifications":{"success_mail":"0","failure_mail":"1","fatal_failure_mail":"1","orphan_mail":"1"},"logstokeep":1}	\N	2026-09-28 17:56:42.919895	758	\N	\N
2	98	Session GC	session.gc	{"rule-type":"interval-hours","interval-hours":"24","exec-day":"01","exec-time":"17:00"}	{"type":"interval","exp":"PT24H"}	1	0	2026-10-01 19:36:13	2026-10-02 19:36:13	1	0	\N	0	0	0	{"individual_log":false,"log_file":"","notifications":{"success_mail":"0","failure_mail":"1","fatal_failure_mail":"1","orphan_mail":"1"},"enable_session_gc":1,"enable_session_metadata_gc":1}	\N	2026-09-28 17:56:42.919895	758	\N	\N
3	99	Update Notification	update.notification	{"rule-type":"interval-hours","interval-hours":"24","exec-day":"01","exec-time":"17:00"}	{"type":"interval","exp":"PT24H"}	1	0	2026-10-01 19:37:35	2026-10-02 19:37:35	1	0	\N	0	0	0	{"individual_log":false,"log_file":"","notifications":{"success_mail":"0","failure_mail":"1","fatal_failure_mail":"1","orphan_mail":"1"},"email":"","language_override":""}	\N	2026-09-28 17:56:42.919895	758	\N	\N
\.


--
-- Data for Name: jos_schemaorg; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.jos_schemaorg (id, "itemId", context, "schemaType", schema) FROM stdin;
\.


--
-- Data for Name: jos_schemas; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.jos_schemas (extension_id, version_id) FROM stdin;
247	6.1.0-2026-03-13
\.


--
-- Data for Name: jos_session; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.jos_session (session_id, client_id, guest, "time", data, userid, username) FROM stdin;
\\x3863623165633461326435323030623835306263626665373263366266636233	1	0	1790884407	joomla|s:1032:"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjY6e3M6Nzoic2Vzc2lvbiI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo3OiJjb3VudGVyIjtpOjE5O3M6NToidGltZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NToic3RhcnQiO2k6MTc5MDg4MzkzNjtzOjQ6Imxhc3QiO2k6MTc5MDg4NDQwNTtzOjM6Im5vdyI7aToxNzkwODg0NDA3O31zOjU6InRva2VuIjtzOjMyOiJjZTBjNmM3OTc5ZjA0NzM2MTM3NjE1ZmY4MTZmMWFlMSI7fXM6ODoicmVnaXN0cnkiO086MjQ6Ikpvb21sYVxSZWdpc3RyeVxSZWdpc3RyeSI6Mzp7czo3OiIAKgBkYXRhIjtPOjg6InN0ZENsYXNzIjoxOntzOjk6ImNvbV91c2VycyI7Tzo4OiJzdGRDbGFzcyI6MTp7czo0OiJlZGl0IjtPOjg6InN0ZENsYXNzIjoxOntzOjQ6InVzZXIiO086ODoic3RkQ2xhc3MiOjE6e3M6NDoiZGF0YSI7Tjt9fX19czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjEyOiIAKgBzZXBhcmF0b3IiO3M6MToiLiI7fXM6NDoidXNlciI7TzoyMDoiSm9vbWxhXENNU1xVc2VyXFVzZXIiOjE6e3M6MjoiaWQiO2k6NzU4O31zOjk6ImNvbV91c2VycyI7Tzo4OiJzdGRDbGFzcyI6MTp7czoxMToibWZhX2NoZWNrZWQiO2k6MTt9czoxMToiYXBwbGljYXRpb24iO086ODoic3RkQ2xhc3MiOjE6e3M6NToicXVldWUiO2E6MDp7fX1zOjU6ImJsb2NrIjtzOjc6InVuYmxvY2siO31zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6MTI6IgAqAHNlcGFyYXRvciI7czoxOiIuIjt9";	758	admin
\\x3362373330336330333734633838393261393663323034636337666632633931	0	1	1790884440	joomla|s:772:"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjQ6e3M6Nzoic2Vzc2lvbiI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo1OiJ0aW1lciI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo1OiJzdGFydCI7aToxNzkwODg0NDM1O3M6NDoibGFzdCI7aToxNzkwODg0NDM1O3M6Mzoibm93IjtpOjE3OTA4ODQ0NDA7fXM6NzoiY291bnRlciI7aToyO3M6NToidG9rZW4iO3M6MzI6ImJkMDYxOGJhYWM1YTdmZTc2OWQ3NzNiNTBiNGJhNGEwIjt9czoxMToiYXBwbGljYXRpb24iO086ODoic3RkQ2xhc3MiOjE6e3M6NToicXVldWUiO2E6MDp7fX1zOjg6InJlZ2lzdHJ5IjtPOjI0OiJKb29tbGFcUmVnaXN0cnlcUmVnaXN0cnkiOjM6e3M6NzoiACoAZGF0YSI7Tzo4OiJzdGRDbGFzcyI6MDp7fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjA7czoxMjoiACoAc2VwYXJhdG9yIjtzOjE6Ii4iO31zOjQ6InVzZXIiO086MjA6Ikpvb21sYVxDTVNcVXNlclxVc2VyIjoxOntzOjI6ImlkIjtpOjA7fX1zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6MTI6IgAqAHNlcGFyYXRvciI7czoxOiIuIjt9";	0	
\.


--
-- Data for Name: jos_tags; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.jos_tags (id, parent_id, lft, rgt, level, path, title, alias, note, description, published, checked_out, checked_out_time, access, params, metadesc, metakey, metadata, created_user_id, created_time, created_by_alias, modified_user_id, modified_time, images, urls, hits, language, version, publish_up, publish_down) FROM stdin;
1	0	0	1	0		ROOT	root			1	\N	\N	1					758	2026-09-28 17:56:41.095123		758	2026-09-28 17:56:41.095123			0	*	1	\N	\N
\.


--
-- Data for Name: jos_template_overrides; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.jos_template_overrides (id, template, hash_id, extension_id, state, action, client_id, created_date, modified_date) FROM stdin;
\.


--
-- Data for Name: jos_template_styles; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.jos_template_styles (id, template, client_id, home, title, inheritable, parent, params) FROM stdin;
10	atum	1	1	Atum - Default	1		{"hue":"hsl(214, 63%, 20%)","bg-light":"#f0f4fb","text-dark":"#495057","text-light":"#ffffff","link-color":"#2a69b8","special-color":"#001b4c","colorScheme":"os","monochrome":"0","loginLogo":"","loginLogoAlt":"","logoBrandLarge":"","logoBrandLargeAlt":"","logoBrandSmall":"","logoBrandSmallAlt":""}
11	cassiopeia	0	1	Cassiopeia - Default	1		{"brand":"1","logoFile":"","siteTitle":"","siteDescription":"","useFontScheme":"0","colorName":"colors_standard","fluidContainer":"0","stickyHeader":0,"backTop":0}
12	cassiopeia_extended	0	0	Cassiopeia Extended - Default	0	cassiopeia	{"brand":"1","logoFile":"","siteTitle":"","siteDescription":"","useFontScheme":"0","systemFontBody":"","systemFontHeading":"","colorName":"colors_standard","fluidContainer":"0","stickyHeader":"0","backTop":"0","colorSettings":"0","headerbg":"rgb(193, 205, 207)","headercolor":"rgb(23, 23, 23)","bodybg":"rgb(254, 254, 254)","bodycolor":"rgb(23, 23, 23)","linkcolor":"rgb(29, 121, 137)","linkcolorh":"rgb(14, 59, 67)","btnbg":"rgb(206, 60, 55)","btnbgh":"rgb(131, 35, 32)","btncolor":"rgb(254, 254, 254)","btncolorh":"rgb(254, 254, 254)","footerbg":"rgb(29, 121, 137)","footercolor":"rgb(254, 254, 254)","fontSettings":"0","bodysize":"1","h1size":"2","h2size":"1.7","h3size":"1.5"}
\.


--
-- Data for Name: jos_tuf_metadata; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.jos_tuf_metadata (id, update_site_id, root, targets, snapshot, "timestamp", mirrors) FROM stdin;
1	1	{"signed":{"_type":"root","spec_version":"1.0","version":16,"expires":"2027-09-17T18:55:11Z","keys":{"00e432b504508246e2bd536dd6c13e55e8b3256f0be9f767fae26da6c2a28663":{"keytype":"ed25519","scheme":"ed25519","keyid_hash_algorithms":["sha256","sha512"],"keyval":{"public":"250f8d293c49817a83909dead96ad82b62f7ac16844cf589f8d2f0e0b15cab21"}},"07eb082f367c034a95878687f6648aa76d93652b6ee73e58817053d89af6c44f":{"keytype":"ed25519","scheme":"ed25519","keyid_hash_algorithms":["sha256","sha512"],"keyval":{"public":"9b2af2d9b9727227735253d795bd27ea8f0e294a5f3603e822dc5052b44802b9"}},"179d107f20a2354ac5bd9a1f32a2df1763c0059617f0c132bebeb4816a1a8637":{"keytype":"ed25519","scheme":"ed25519","keyid_hash_algorithms":["sha256","sha512"],"keyval":{"public":"159a4195cbafce2bb959f09ab2b36a2127b8967f94d389f65f1e7892fccfe8b8"}},"192ad7343e7d431533d9577fd957b6f924680177db4dc6c0e146dad6810a90a4":{"keytype":"ed25519","scheme":"ed25519","keyid_hash_algorithms":["sha256","sha512"],"keyval":{"public":"042b66e1431a1f5c2c15b4a16ea60f23f466851b58e9ff057dbfc2a5e0d821d1"}},"1b1b1dd55b2c1c7258714cf1c1ae06f23e4607b28c762d016a9d81c48ffe5669":{"keytype":"ed25519","scheme":"ed25519","keyid_hash_algorithms":["sha256","sha512"],"keyval":{"public":"a18e5ebabc19d5d5984b601a292ece61ba3662ab2d071dc520da5bd4f8948799"}},"273e94e5477e306ad6de75be1524860e219e265ff9a57c81ababd0691e45706c":{"keytype":"ed25519","scheme":"ed25519","keyid_hash_algorithms":["sha256","sha512"],"keyval":{"public":"1cb6702338830ef1c9e76a022fed27172d475bbaace754d8141ebc96dad8b15f"}},"284c8164fd395e9178dc66929787f0650cda6acff0fd769ef697203d7553c481":{"keytype":"ed25519","scheme":"ed25519","keyid_hash_algorithms":["sha256","sha512"],"keyval":{"public":"546cdff30cc1ad6dd5f3d1e173672d94bd61a9507199af064142f70cde8de4e3"}},"2dcaf3d0e552f150792f7c636d45429246dcfa34ac35b46a44f5c87cd17d457e":{"keytype":"ed25519","scheme":"ed25519","keyid_hash_algorithms":["sha256","sha512"],"keyval":{"public":"cb0a7a131961a20edea051d6dc2b091fb650bd399bd8514adb67b3c60db9f8f9"}},"31dd7c7290d664c9b88c0dead2697175293ea7df81b7f24153a37370fd3901c3":{"keytype":"ed25519","scheme":"ed25519","keyid_hash_algorithms":["sha256","sha512"],"keyval":{"public":"589d029a68b470deff1ca16dbf3eea6b5b3fcba0ae7bb52c468abc7fb058b2a2"}},"9e41a9d62d94c6a1c8a304f62c5bd72d84a9f286f27e8327cedeacb09e5156cc":{"keytype":"ed25519","scheme":"ed25519","keyid_hash_algorithms":["sha256","sha512"],"keyval":{"public":"6043c8bacc76ac5c9750f45454dd865c6ca1fc57d69e14cc192cfd420f6a66a9"}},"9eabc37383b243cd236375c66693db385911914b52556e1ec05fc70ed45e1bfe":{"keytype":"ed25519","scheme":"ed25519","keyid_hash_algorithms":["sha256","sha512"],"keyval":{"public":"a4b8509488f1c29ab0b1f610e7452fbec78b4f33f1fba5a418d6ff087c567429"}},"a1a4b7fdbeedfdeff12d7776de098a2f8de8d2ab7bfe10062a281b3819b078c1":{"keytype":"ed25519","scheme":"ed25519","keyid_hash_algorithms":["sha256","sha512"],"keyval":{"public":"ea764b0b475b3c396627ac6689cbd8f54a5f93e87b6f5e3eb44a7ccafb542ff3"}},"a599a27a3ec4d520059c591338759dc401006b1c4cb1db85a286e667253d28b6":{"keytype":"ed25519","scheme":"ed25519","keyid_hash_algorithms":["sha256","sha512"],"keyval":{"public":"45e416d24d13a60ace5ab028827d5cfc8ba177bb9466bf2acd8efa6e3547911a"}},"ba3914be50eea8ecf6d5e7a8d3564dbbad99415d9cc229b9ee081ed86f69f803":{"keytype":"ed25519","scheme":"ed25519","keyid_hash_algorithms":["sha256","sha512"],"keyval":{"public":"1cbfa7dcac9659e5a8a946ec999bd28f53b451e38ce5827980bed2686098cf19"}},"bfee044dd4574a281c9b7c0b6829913ef292c66c0512d1091a298cfca8493da9":{"keytype":"ed25519","scheme":"ed25519","keyid_hash_algorithms":["sha256","sha512"],"keyval":{"public":"6eb44460e5914e8e0df726ddb90bd1f3771b8ce5af19b40fb01ac5a85b023a6f"}},"c9fe1ff72da60a30ea5e612fa2ef4ca329fb46d9e1965b811bf9f2de44ffdf18":{"keytype":"ed25519","scheme":"ed25519","keyid_hash_algorithms":["sha256","sha512"],"keyval":{"public":"390d45fce58e41fec922092b138eaf719ed2036c8722bd694a6832ab6ca18409"}},"e2229942b0fc1e6d7f82adf258e5bdadac10046d1470b7ec459c9eb4e076026b":{"keytype":"ed25519","scheme":"ed25519","keyid_hash_algorithms":["sha256","sha512"],"keyval":{"public":"ad1950e117b29ebe7a38635a2e574123e07571e4f9a011783e053b5f15d2562a"}},"ecc851a051c8d6439331ff0a37c7727321fc39896a34f950f73638b8a7cb472e":{"keytype":"ed25519","scheme":"ed25519","keyid_hash_algorithms":["sha256","sha512"],"keyval":{"public":"5d451915bc2b93a0e4e4745bc6a8b292d58996d50e0fb66c78c7827152a65879"}}},"roles":{"root":{"keyids":["1b1b1dd55b2c1c7258714cf1c1ae06f23e4607b28c762d016a9d81c48ffe5669","2dcaf3d0e552f150792f7c636d45429246dcfa34ac35b46a44f5c87cd17d457e","192ad7343e7d431533d9577fd957b6f924680177db4dc6c0e146dad6810a90a4"],"threshold":1},"snapshot":{"keyids":["07eb082f367c034a95878687f6648aa76d93652b6ee73e58817053d89af6c44f","2dcaf3d0e552f150792f7c636d45429246dcfa34ac35b46a44f5c87cd17d457e","ecc851a051c8d6439331ff0a37c7727321fc39896a34f950f73638b8a7cb472e","e2229942b0fc1e6d7f82adf258e5bdadac10046d1470b7ec459c9eb4e076026b","bfee044dd4574a281c9b7c0b6829913ef292c66c0512d1091a298cfca8493da9","9eabc37383b243cd236375c66693db385911914b52556e1ec05fc70ed45e1bfe","273e94e5477e306ad6de75be1524860e219e265ff9a57c81ababd0691e45706c","00e432b504508246e2bd536dd6c13e55e8b3256f0be9f767fae26da6c2a28663","179d107f20a2354ac5bd9a1f32a2df1763c0059617f0c132bebeb4816a1a8637","a1a4b7fdbeedfdeff12d7776de098a2f8de8d2ab7bfe10062a281b3819b078c1","192ad7343e7d431533d9577fd957b6f924680177db4dc6c0e146dad6810a90a4","a599a27a3ec4d520059c591338759dc401006b1c4cb1db85a286e667253d28b6","284c8164fd395e9178dc66929787f0650cda6acff0fd769ef697203d7553c481","ba3914be50eea8ecf6d5e7a8d3564dbbad99415d9cc229b9ee081ed86f69f803","c9fe1ff72da60a30ea5e612fa2ef4ca329fb46d9e1965b811bf9f2de44ffdf18"],"threshold":1},"targets":{"keyids":["31dd7c7290d664c9b88c0dead2697175293ea7df81b7f24153a37370fd3901c3","ecc851a051c8d6439331ff0a37c7727321fc39896a34f950f73638b8a7cb472e","e2229942b0fc1e6d7f82adf258e5bdadac10046d1470b7ec459c9eb4e076026b","bfee044dd4574a281c9b7c0b6829913ef292c66c0512d1091a298cfca8493da9","9eabc37383b243cd236375c66693db385911914b52556e1ec05fc70ed45e1bfe","273e94e5477e306ad6de75be1524860e219e265ff9a57c81ababd0691e45706c","00e432b504508246e2bd536dd6c13e55e8b3256f0be9f767fae26da6c2a28663","179d107f20a2354ac5bd9a1f32a2df1763c0059617f0c132bebeb4816a1a8637","a1a4b7fdbeedfdeff12d7776de098a2f8de8d2ab7bfe10062a281b3819b078c1","284c8164fd395e9178dc66929787f0650cda6acff0fd769ef697203d7553c481","c9fe1ff72da60a30ea5e612fa2ef4ca329fb46d9e1965b811bf9f2de44ffdf18"],"threshold":1},"timestamp":{"keyids":["9e41a9d62d94c6a1c8a304f62c5bd72d84a9f286f27e8327cedeacb09e5156cc"],"threshold":1}},"consistent_snapshot":true},"signatures":[{"keyid":"1b1b1dd55b2c1c7258714cf1c1ae06f23e4607b28c762d016a9d81c48ffe5669","sig":"45cabce9321e0091f9a88a862d250c35f6efede25c7c6eab6cbf738d176c366308bb24cedc80812244259a0d56fd796b2ebd13f98d6aba5c8220df4f136a8504"}]}	{"signed":{"_type":"targets","spec_version":"1.0","version":115,"expires":"2026-12-29T16:58:55Z","targets":{"Joomla_5.1.2-Stable-Upgrade_Package.zip":{"length":28134889,"hashes":{"sha512":"d6b46cdedb9b31d01a607fe4c2f3a830a3265ed6ae5c0cb7b0f836b1b016ee7c639bd8948df00baf1b61a87f2fc71368a80b39e67ef9ec2b8842ee0ab09a620f"},"custom":{"client":"site","description":"Joomla! 5.1.2 Release","downloads":[{"url":"https://downloads.joomla.org/cms/joomla5/5-1-2/Joomla_5.1.2-Stable-Update_Package.zip","format":"zip","type":"full"},{"url":"https://github.com/joomla/joomla-cms/releases/download/5.1.2/Joomla_5.1.2-Stable-Update_Package.zip","format":"zip","type":"full"},{"url":"https://update.joomla.org/releases/5.1.2/Joomla_5.1.2-Stable-Update_Package.zip","format":"zip","type":"full"}],"element":"joomla","infourl":{"url":"https://www.joomla.org/announcements/release-news/5909-joomla-5-1-2-and-joomla-4-4-6-security-and-bug-fix-release.html","title":"Joomla! 5.1.2 Release"},"maintainer":"Joomla! Production Department","maintainerurl":"https://www.joomla.org","name":"Joomla! 5.1.2","php_minimum":"8.1.0","channel":"6.x","stability":"Stable","supported_databases":{"mariadb":"10.4","mysql":"8.0.13","postgresql":"11.0"},"targetplatform":{"name":"joomla","version":"(5\\\\.[0-4])|^(4\\\\.4)"},"type":"file","version":"5.1.2"}},"Joomla_5.4.1-Stable-Update_Package.zip":{"length":30009045,"hashes":{"sha512":"aeddd1143cd574ff3f6e9bc7d7c67bf5d21dc1b404d98498a691b1fff12f5d245b48424f97155f20e2807e4ee2c1aed7313fae3ab8c0d27a08a20947c166c43e"},"custom":{"client":"site","description":"Joomla! 5.4.1 Release","downloads":[{"url":"https://downloads.joomla.org/cms/joomla5/5-4-1/Joomla_5.4.1-Stable-Update_Package.zip","format":"zip","type":"full"},{"url":"https://github.com/joomla/joomla-cms/releases/download/5.4.1/Joomla_5.4.1-Stable-Update_Package.zip","format":"zip","type":"full"},{"url":"https://update.joomla.org/releases/5.4.1/Joomla_5.4.1-Stable-Update_Package.zip","format":"zip","type":"full"}],"element":"joomla","infourl":{"url":"https://www.joomla.org/announcements/release-news/5941-joomla-6-0-1-and-5-4-1-bugfix-release.html","title":"Joomla! 5.4.1 Release"},"maintainer":"Joomla! Production Department","maintainerurl":"https://www.joomla.org","name":"Joomla! 5.4.1","php_minimum":"8.1.0","channel":"5.x","stability":"Stable","supported_databases":{"mariadb":"10.4","mysql":"8.0.13","postgresql":"11.0"},"targetplatform":{"name":"joomla","version":"(5\\\\.[0-4])|^(4\\\\.4)"},"type":"file","version":"5.4.1"}},"Joomla_5.4.2-Stable-Update_Package.zip":{"length":30316442,"hashes":{"sha512":"e83add95a43103ec2d6ccada9e33a29fa6feb2d8e27b6bd16376f4a75d9b588c029b1f24c97b0772e3a6eb0e20d2b8e0e3526cf2af242d90c280ef63abeddaa9"},"custom":{"client":"site","description":"Joomla! 5.4.2 Release","downloads":[{"url":"https://downloads.joomla.org/cms/joomla5/5-4-2/Joomla_5.4.2-Stable-Update_Package.zip","format":"zip","type":"full"},{"url":"https://github.com/joomla/joomla-cms/releases/download/5.4.2/Joomla_5.4.2-Stable-Update_Package.zip","format":"zip","type":"full"},{"url":"https://update.joomla.org/releases/5.4.2/Joomla_5.4.2-Stable-Update_Package.zip","format":"zip","type":"full"}],"element":"joomla","infourl":{"url":"https://www.joomla.org/announcements/release-news/5942-joomla-6-0-2-and-5-4-2-security-bugfix-release.html","title":"Joomla! 5.4.2 Release"},"maintainer":"Joomla! Production Department","maintainerurl":"https://www.joomla.org","name":"Joomla! 5.4.2","php_minimum":"8.1.0","channel":"5.x","stability":"Stable","supported_databases":{"mariadb":"10.4","mysql":"8.0.13","postgresql":"11.0"},"targetplatform":{"name":"joomla","version":"(5\\\\.[0-4])|^(4\\\\.4)"},"type":"file","version":"5.4.2"}},"Joomla_5.4.3-Stable-Update_Package.zip":{"length":30403970,"hashes":{"sha512":"63901b3cca37a59fe8028e0adb01eda3bb3669dc410c21b1ab7cb040997980c75d2d52b242d053800a542f4d60cf6a15e5fdabc963014c35aef80f6b8b02857f"},"custom":{"client":"site","description":"Joomla! 5.4.3 Release","downloads":[{"url":"https://downloads.joomla.org/cms/joomla5/5-4-3/Joomla_5.4.3-Stable-Update_Package.zip","format":"zip","type":"full"},{"url":"https://github.com/joomla/joomla-cms/releases/download/5.4.3/Joomla_5.4.3-Stable-Update_Package.zip","format":"zip","type":"full"},{"url":"https://update.joomla.org/releases/5.4.3/Joomla_5.4.3-Stable-Update_Package.zip","format":"zip","type":"full"}],"element":"joomla","infourl":{"url":"https://www.joomla.org/announcements/release-news/5943-joomla-6-0-3-and-5-4-3-bugfix-release.html","title":"Joomla! 5.4.3 Release"},"maintainer":"Joomla! Production Department","maintainerurl":"https://www.joomla.org","name":"Joomla! 5.4.3","php_minimum":"8.1.0","channel":"5.x","stability":"Stable","supported_databases":{"mariadb":"10.4","mysql":"8.0.13","postgresql":"11.0"},"targetplatform":{"name":"joomla","version":"(5\\\\.[0-4])|^(4\\\\.4)"},"type":"file","version":"5.4.3"}},"Joomla_5.4.4-Stable-Update_Package.zip":{"length":30488702,"hashes":{"sha512":"56497e3c1bf1b9b21e8149a15e36dd1590f6adffd13b38005af40afdf2a33761fbacc9628c5ea6b0e21eb04fb1ca20ca9bc96b2add4b626ed0b567f43994a65e"},"custom":{"client":"site","description":"Joomla! 5.4.4 Release","downloads":[{"url":"https://downloads.joomla.org/cms/joomla5/5-4-4/Joomla_5.4.4-Stable-Update_Package.zip","format":"zip","type":"full"},{"url":"https://github.com/joomla/joomla-cms/releases/download/5.4.4/Joomla_5.4.4-Stable-Update_Package.zip","format":"zip","type":"full"},{"url":"https://update.joomla.org/releases/5.4.4/Joomla_5.4.4-Stable-Update_Package.zip","format":"zip","type":"full"}],"element":"joomla","infourl":{"url":"https://www.joomla.org/announcements/release-news/5944-joomla-6-0-4-5-4-4-security-bugfix-release.html","title":"Joomla! 5.4.4 Release"},"maintainer":"Joomla! Production Department","maintainerurl":"https://www.joomla.org","name":"Joomla! 5.4.4","php_minimum":"8.1.0","channel":"5.x","stability":"Stable","supported_databases":{"mariadb":"10.4","mysql":"8.0.13","postgresql":"11.0"},"targetplatform":{"name":"joomla","version":"(5\\\\.[0-4])|^(4\\\\.4)"},"type":"file","version":"5.4.4"}},"Joomla_5.4.5-Stable-Update_Package.zip":{"length":30498375,"hashes":{"sha512":"c4ebb9a6782c6ef1a3fe58231b78dbf301e212f0f33325e2a17e8014331dab5dee99ebaf2f90eb3e795d1c24ddc55d9485dba095e3f76d0780a80d0f61204ef2"},"custom":{"client":"site","description":"Joomla! 5.4.5 Release","downloads":[{"url":"https://downloads.joomla.org/cms/joomla5/5-4-5/Joomla_5.4.5-Stable-Update_Package.zip","format":"zip","type":"full"},{"url":"https://github.com/joomla/joomla-cms/releases/download/5.4.5/Joomla_5.4.5-Stable-Update_Package.zip","format":"zip","type":"full"},{"url":"https://update.joomla.org/releases/5.4.5/Joomla_5.4.5-Stable-Update_Package.zip","format":"zip","type":"full"}],"element":"joomla","infourl":{"url":"https://www.joomla.org/announcements/release-news/5951-joomla-5-4-5-bugfix-release.html","title":"Joomla! 5.4.5 Release"},"maintainer":"Joomla! Production Department","maintainerurl":"https://www.joomla.org","name":"Joomla! 5.4.5","php_minimum":"8.1.0","channel":"5.x","stability":"Stable","supported_databases":{"mariadb":"10.4","mysql":"8.0.13","postgresql":"11.0"},"targetplatform":{"name":"joomla","version":"(5\\\\.[0-4])|^(4\\\\.4)"},"type":"file","version":"5.4.5"}},"Joomla_5.4.5-rc1-Release_Candidate-Update_Package.zip":{"length":30498394,"hashes":{"sha512":"902e15b690f8bb33de3d139bc861362bd9f073fef506ce150bdc0f29bf8bde6c10aefa0518bb4f57f39576117913cddf59a8c325c7a517c21d7b6b1aea48aee8"},"custom":{"client":"site","description":"Joomla! 5.4.5-rc1 Release","downloads":[{"url":"https://github.com/joomla/joomla-cms/releases/download/5.4.5-rc1/Joomla_5.4.5-rc1-Release_Candidate-Update_Package.zip","format":"zip","type":"full"}],"element":"joomla","infourl":{"url":"https://github.com/joomla/joomla-cms/releases/tag/5.4.5-rc1","title":"Joomla! 5.4.5-rc1 Release"},"maintainer":"Joomla! Production Department","maintainerurl":"https://www.joomla.org","name":"Joomla! 5.4.5-rc1","php_minimum":"8.1.0","channel":"5.x","stability":"RC","supported_databases":{"mariadb":"10.4","mysql":"8.0.13","postgresql":"11.0"},"targetplatform":{"name":"joomla","version":"(5\\\\.[0-4])|^(4\\\\.4)"},"type":"file","version":"5.4.5-rc1"}},"Joomla_5.4.6-Stable-Update_Package.zip":{"length":31661279,"hashes":{"sha512":"40d8b14c59c9af7ad098247a70d195c307f31597365cc4b5133b7ffc896c236b3266b45fc6c05879624c96e7f1af26b66ef3c371482b54b130b9faa65622f2fd"},"custom":{"client":"site","description":"Joomla! 5.4.6 Release","downloads":[{"url":"https://downloads.joomla.org/cms/joomla5/5-4-6/Joomla_5.4.6-Stable-Update_Package.zip","format":"zip","type":"full"},{"url":"https://github.com/joomla/joomla-cms/releases/download/5.4.6/Joomla_5.4.6-Stable-Update_Package.zip","format":"zip","type":"full"},{"url":"https://update.joomla.org/releases/5.4.6/Joomla_5.4.6-Stable-Update_Package.zip","format":"zip","type":"full"}],"element":"joomla","infourl":{"url":"https://www.joomla.org/announcements/release-news/5954-joomla-6-1-1-5-4-6-security-bugfix-release.html","title":"Joomla! 5.4.6 Release"},"maintainer":"Joomla! Production Department","maintainerurl":"https://www.joomla.org","name":"Joomla! 5.4.6","php_minimum":"8.1.0","channel":"5.x","stability":"Stable","supported_databases":{"mariadb":"10.4","mysql":"8.0.13","postgresql":"11.0"},"targetplatform":{"name":"joomla","version":"(5\\\\.[0-4])|^(4\\\\.4)"},"type":"file","version":"5.4.6"}},"Joomla_5.4.6-rc1-Release_Candidate-Update_Package.zip":{"length":31656827,"hashes":{"sha512":"e327d1ce0979ad1b10d46d7ba30abd55bd61299d0ac627f99d00310a84f45811573cf153976b0f32d2047c2d9ad72fd59d42594617439ec7250aff7e85801c97"},"custom":{"client":"site","description":"Joomla! 5.4.6-rc1 Release","downloads":[{"url":"https://github.com/joomla/joomla-cms/releases/download/5.4.6-rc1/Joomla_5.4.6-rc1-Release_Candidate-Update_Package.zip","format":"zip","type":"full"}],"element":"joomla","infourl":{"url":"https://github.com/joomla/joomla-cms/releases/tag/5.4.6-rc1","title":"Joomla! 5.4.6-rc1 Release"},"maintainer":"Joomla! Production Department","maintainerurl":"https://www.joomla.org","name":"Joomla! 5.4.6-rc1","php_minimum":"8.1.0","channel":"5.x","stability":"RC","supported_databases":{"mariadb":"10.4","mysql":"8.0.13","postgresql":"11.0"},"targetplatform":{"name":"joomla","version":"(5\\\\.[0-4])|^(4\\\\.4)"},"type":"file","version":"5.4.6-rc1"}},"Joomla_5.4.7-Stable-Update_Package.zip":{"length":31851429,"hashes":{"sha512":"e1abbac01fe804d4eb64b1327ace9db4356e39a8782ab547b5257be308ea9215badec27821eae936b9a2db2f120fc175357f54ac3ca5af2313ec2af52eb44223"},"custom":{"client":"site","description":"Joomla! 5.4.7 Release","downloads":[{"url":"https://downloads.joomla.org/cms/joomla5/5-4-7/Joomla_5.4.7-Stable-Update_Package.zip","format":"zip","type":"full"},{"url":"https://github.com/joomla/joomla-cms/releases/download/5.4.7/Joomla_5.4.7-Stable-Update_Package.zip","format":"zip","type":"full"},{"url":"https://update.joomla.org/releases/5.4.7/Joomla_5.4.7-Stable-Update_Package.zip","format":"zip","type":"full"}],"element":"joomla","infourl":{"url":"https://www.joomla.org/announcements/release-news/5955-joomla-6-1-2-5-4-7-security-bugfix-release.html","title":"Joomla! 5.4.7 Release"},"maintainer":"Joomla! Production Department","maintainerurl":"https://www.joomla.org","name":"Joomla! 5.4.7","php_minimum":"8.1.0","channel":"5.x","stability":"Stable","supported_databases":{"mariadb":"10.4","mysql":"8.0.13","postgresql":"11.0"},"targetplatform":{"name":"joomla","version":"(5\\\\.[0-4])|^(4\\\\.4)"},"type":"file","version":"5.4.7"}},"Joomla_5.4.7-rc1-Release_Candidate-Update_Package.zip":{"length":31847733,"hashes":{"sha512":"e70bdb5ceceb837fe99ee49ca0bbc0f7bfeade3e024dba5a90a8d84e56079c13a231a93dcb6d637b6b07b22e7d98c8f894fc6a2de614f0544f48550c3e15506b"},"custom":{"client":"site","description":"Joomla! 5.4.7-rc1 Release","downloads":[{"url":"https://github.com/joomla/joomla-cms/releases/download/5.4.7-rc1/Joomla_5.4.7-rc1-Release_Candidate-Update_Package.zip","format":"zip","type":"full"}],"element":"joomla","infourl":{"url":"https://github.com/joomla/joomla-cms/releases/tag/5.4.7-rc1","title":"Joomla! 5.4.7-rc1 Release"},"maintainer":"Joomla! Production Department","maintainerurl":"https://www.joomla.org","name":"Joomla! 5.4.7-rc1","php_minimum":"8.1.0","channel":"5.x","stability":"RC","supported_databases":{"mariadb":"10.4","mysql":"8.0.13","postgresql":"11.0"},"targetplatform":{"name":"joomla","version":"(5\\\\.[0-4])|^(4\\\\.4)"},"type":"file","version":"5.4.7-rc1"}},"Joomla_5.4.8-Stable-Update_Package.zip":{"length":31921433,"hashes":{"sha512":"86e9451f94887dbbee1475596fb91d58c2650e12cebfa976d2e0962e94e71d93683b42ce2d911cc9911ea42ca28e9c341dd002ddd8814f41a372e1732a5d0b3e"},"custom":{"client":"site","description":"Joomla! 5.4.8 Release","downloads":[{"url":"https://downloads.joomla.org/cms/joomla5/5-4-8/Joomla_5.4.8-Stable-Update_Package.zip","format":"zip","type":"full"},{"url":"https://github.com/joomla/joomla-cms/releases/download/5.4.8/Joomla_5.4.8-Stable-Update_Package.zip","format":"zip","type":"full"},{"url":"https://update.joomla.org/releases/5.4.8/Joomla_5.4.8-Stable-Update_Package.zip","format":"zip","type":"full"}],"element":"joomla","infourl":{"url":"https://www.joomla.org/announcements/release-news/5957-joomla-6-1-3-5-4-8-security-bugfix-release.html","title":"Joomla! 5.4.8 Release"},"maintainer":"Joomla! Production Department","maintainerurl":"https://www.joomla.org","name":"Joomla! 5.4.8","php_minimum":"8.1.0","channel":"5.x","stability":"Stable","supported_databases":{"mariadb":"10.4","mysql":"8.0.13","postgresql":"11.0"},"targetplatform":{"name":"joomla","version":"(5\\\\.[0-4])|^(4\\\\.4)"},"type":"file","version":"5.4.8"}},"Joomla_5.4.8-rc1-Release_Candidate-Update_Package.zip":{"length":31919278,"hashes":{"sha512":"442ec82e57c50d317895fc85bb53cd0fc6abd6937ee3d32da0abfdbc75c7476a1a4817f686aa687c269c2d6ef0bdbb3d3ea2413b6220958a21d8a5623709deea"},"custom":{"client":"site","description":"Joomla! 5.4.8-rc1 Release","downloads":[{"url":"https://github.com/joomla/joomla-cms/releases/download/5.4.8-rc1/Joomla_5.4.8-rc1-Release_Candidate-Update_Package.zip","format":"zip","type":"full"}],"element":"joomla","infourl":{"url":"https://github.com/joomla/joomla-cms/releases/tag/5.4.8-rc1","title":"Joomla! 5.4.8-rc1 Release"},"maintainer":"Joomla! Production Department","maintainerurl":"https://www.joomla.org","name":"Joomla! 5.4.8-rc1","php_minimum":"8.1.0","channel":"5.x","stability":"RC","supported_databases":{"mariadb":"10.4","mysql":"8.0.13","postgresql":"11.0"},"targetplatform":{"name":"joomla","version":"(5\\\\.[0-4])|^(4\\\\.4)"},"type":"file","version":"5.4.8-rc1"}},"Joomla_5.4.8-rc2-Release_Candidate-Update_Package.zip":{"length":31919276,"hashes":{"sha512":"201c6ab2a5f4a44950067856379865a1af5ea61c875ce90510ab2f9c9c0f4f9aa087048a7f469ed698bb41b532f87c8ebf3caaf1aa2ded754b3edc591e2eb280"},"custom":{"client":"site","description":"Joomla! 5.4.8-rc2 Release","downloads":[{"url":"https://github.com/joomla/joomla-cms/releases/download/5.4.8-rc2/Joomla_5.4.8-rc2-Release_Candidate-Update_Package.zip","format":"zip","type":"full"}],"element":"joomla","infourl":{"url":"https://github.com/joomla/joomla-cms/releases/tag/5.4.8-rc2","title":"Joomla! 5.4.8-rc2 Release"},"maintainer":"Joomla! Production Department","maintainerurl":"https://www.joomla.org","name":"Joomla! 5.4.8-rc2","php_minimum":"8.1.0","channel":"5.x","stability":"RC","supported_databases":{"mariadb":"10.4","mysql":"8.0.13","postgresql":"11.0"},"targetplatform":{"name":"joomla","version":"(5\\\\.[0-4])|^(4\\\\.4)"},"type":"file","version":"5.4.8-rc2"}},"Joomla_5.4.9-Stable-Update_Package.zip":{"length":32018270,"hashes":{"sha512":"29fc5bd0ed3c2be2867e016cc6ed68eb28410928a0b1a1271e2a378e436268a35e1ac8b51e8f9091b58c3c09c82041472539d23fb030704a94465fad293ed6d5"},"custom":{"client":"site","description":"Joomla! 5.4.9 Release","downloads":[{"url":"https://downloads.joomla.org/cms/joomla5/5-4-9/Joomla_5.4.9-Stable-Update_Package.zip","format":"zip","type":"full"},{"url":"https://github.com/joomla/joomla-cms/releases/download/5.4.9/Joomla_5.4.9-Stable-Update_Package.zip","format":"zip","type":"full"},{"url":"https://update.joomla.org/releases/5.4.9/Joomla_5.4.9-Stable-Update_Package.zip","format":"zip","type":"full"}],"element":"joomla","infourl":{"url":"https://www.joomla.org/announcements/release-news/joomla-6-1-4-5-4-9-security-bugfix-release.html","title":"Joomla! 5.4.9 Release"},"maintainer":"Joomla! Production Department","maintainerurl":"https://www.joomla.org","name":"Joomla! 5.4.9","php_minimum":"8.1.0","channel":"5.x","stability":"Stable","supported_databases":{"mariadb":"10.4","mysql":"8.0.13","postgresql":"11.0"},"targetplatform":{"name":"joomla","version":"(5\\\\.[0-4])|^(4\\\\.4)"},"type":"file","version":"5.4.9"}},"Joomla_5.4.9-rc1-Release_Candidate-Update_Package.zip":{"length":32013420,"hashes":{"sha512":"60ca3bae4930f44f0e0f8538c094b65d6e5b4c0a18aa94b773b5e15f1367c2dade0d049a1ee9a848298dd88a233e9bb41efc5e76b7a50ca0740513cae9d52f48"},"custom":{"client":"site","description":"Joomla! 5.4.9-rc1 Release","downloads":[{"url":"https://github.com/joomla/joomla-cms/releases/download/5.4.9-rc1/Joomla_5.4.9-rc1-Release_Candidate-Update_Package.zip","format":"zip","type":"full"}],"element":"joomla","infourl":{"url":"https://github.com/joomla/joomla-cms/releases/tag/5.4.9-rc1","title":"Joomla! 5.4.9-rc1 Release"},"maintainer":"Joomla! Production Department","maintainerurl":"https://www.joomla.org","name":"Joomla! 5.4.9-rc1","php_minimum":"8.1.0","channel":"5.x","stability":"RC","supported_databases":{"mariadb":"10.4","mysql":"8.0.13","postgresql":"11.0"},"targetplatform":{"name":"joomla","version":"(5\\\\.[0-4])|^(4\\\\.4)"},"type":"file","version":"5.4.9-rc1"}},"Joomla_6.0.1-Stable-Update_Package.zip":{"length":30247182,"hashes":{"sha512":"38f8dd3ff1fd48b9973193a4484591b3b9f4a7516eb7640ff1687d84c81d4dc8cd05f6f58b9f48172bae41a466442f4a5af4a23e3d63869aeb1b05f4fdd6512e"},"custom":{"client":"site","description":"Joomla! 6.0.1 Release","downloads":[{"url":"https://downloads.joomla.org/cms/joomla6/6-0-1/Joomla_6.0.1-Stable-Update_Package.zip","format":"zip","type":"full"},{"url":"https://github.com/joomla/joomla-cms/releases/download/6.0.1/Joomla_6.0.1-Stable-Update_Package.zip","format":"zip","type":"full"},{"url":"https://update.joomla.org/releases/6.0.1/Joomla_6.0.1-Stable-Update_Package.zip","format":"zip","type":"full"}],"element":"joomla","infourl":{"url":"https://www.joomla.org/announcements/release-news/5941-joomla-6-0-1-and-5-4-1-bugfix-release.html","title":"Joomla! 6.0.1 Release"},"maintainer":"Joomla! Production Department","maintainerurl":"https://www.joomla.org","name":"Joomla! 6.0.1","php_minimum":"8.3.0","channel":"6.x","stability":"Stable","supported_databases":{"mariadb":"10.4","mysql":"8.0.13","postgresql":"12.0"},"targetplatform":{"name":"joomla","version":"(6\\\\.[0-4])|^(5\\\\.4)"},"type":"file","version":"6.0.1"}},"Joomla_6.0.2-Stable-Update_Package.zip":{"length":30555623,"hashes":{"sha512":"c0cff255fcf8e0359453c18365f4906afcce115981a5114e3388da583ad192bde320c8bdd191cd8ca4e55ad5585c9c4cd098c2e1661d8a109d37b94340e4b6a6"},"custom":{"client":"site","description":"Joomla! 6.0.2 Release","downloads":[{"url":"https://downloads.joomla.org/cms/joomla6/6-0-2/Joomla_6.0.2-Stable-Update_Package.zip","format":"zip","type":"full"},{"url":"https://github.com/joomla/joomla-cms/releases/download/6.0.2/Joomla_6.0.2-Stable-Update_Package.zip","format":"zip","type":"full"},{"url":"https://update.joomla.org/releases/6.0.2/Joomla_6.0.2-Stable-Update_Package.zip","format":"zip","type":"full"}],"element":"joomla","infourl":{"url":"https://www.joomla.org/announcements/release-news/5942-joomla-6-0-2-and-5-4-2-security-bugfix-release.html","title":"Joomla! 6.0.2 Release"},"maintainer":"Joomla! Production Department","maintainerurl":"https://www.joomla.org","name":"Joomla! 6.0.2","php_minimum":"8.3.0","channel":"6.x","stability":"Stable","supported_databases":{"mariadb":"10.4","mysql":"8.0.13","postgresql":"12.0"},"targetplatform":{"name":"joomla","version":"(6\\\\.[0-4])|^(5\\\\.4)"},"type":"file","version":"6.0.2"}},"Joomla_6.0.3-Stable-Update_Package.zip":{"length":30645479,"hashes":{"sha512":"212a681935d260925cbb15e0fa4d9c9e40978aa32ab7137ff1e0775be26eaa6634317521ec8a411aed3f76990758cbe4dcec3c86186458238dc45f8a3886e5dc"},"custom":{"client":"site","description":"Joomla! 6.0.3 Release","downloads":[{"url":"https://downloads.joomla.org/cms/joomla6/6-0-3/Joomla_6.0.3-Stable-Update_Package.zip","format":"zip","type":"full"},{"url":"https://github.com/joomla/joomla-cms/releases/download/6.0.3/Joomla_6.0.3-Stable-Update_Package.zip","format":"zip","type":"full"},{"url":"https://update.joomla.org/releases/6.0.3/Joomla_6.0.3-Stable-Update_Package.zip","format":"zip","type":"full"}],"element":"joomla","infourl":{"url":"https://www.joomla.org/announcements/release-news/5943-joomla-6-0-3-and-5-4-3-bugfix-release.html","title":"Joomla! 6.0.3 Release"},"maintainer":"Joomla! Production Department","maintainerurl":"https://www.joomla.org","name":"Joomla! 6.0.3","php_minimum":"8.3.0","channel":"6.x","stability":"Stable","supported_databases":{"mariadb":"10.4","mysql":"8.0.13","postgresql":"12.0"},"targetplatform":{"name":"joomla","version":"(6\\\\.[0-4])|^(5\\\\.4)"},"type":"file","version":"6.0.3"}},"Joomla_6.0.4-Stable-Update_Package.zip":{"length":30730380,"hashes":{"sha512":"39de3d222482dc1d6ba3041c9cbfb259dbf17762d917af59906c1c5c43b5da5016d5fb54d788f8b866fb473e4b57e3f1780db74be115300c181897c75e38c2e5"},"custom":{"client":"site","description":"Joomla! 6.0.4 Release","downloads":[{"url":"https://downloads.joomla.org/cms/joomla6/6-0-4/Joomla_6.0.4-Stable-Update_Package.zip","format":"zip","type":"full"},{"url":"https://github.com/joomla/joomla-cms/releases/download/6.0.4/Joomla_6.0.4-Stable-Update_Package.zip","format":"zip","type":"full"},{"url":"https://update.joomla.org/releases/6.0.4/Joomla_6.0.4-Stable-Update_Package.zip","format":"zip","type":"full"}],"element":"joomla","infourl":{"url":"https://www.joomla.org/announcements/release-news/5944-joomla-6-0-4-5-4-4-security-bugfix-release.html","title":"Joomla! 6.0.4 Release"},"maintainer":"Joomla! Production Department","maintainerurl":"https://www.joomla.org","name":"Joomla! 6.0.4","php_minimum":"8.3.0","channel":"6.x","stability":"Stable","supported_databases":{"mariadb":"10.4","mysql":"8.0.13","postgresql":"12.0"},"targetplatform":{"name":"joomla","version":"(6\\\\.[0-4])|^(5\\\\.4)"},"type":"file","version":"6.0.4"}},"Joomla_6.1.0-Stable-Update_Package.zip":{"length":31441199,"hashes":{"sha512":"e066487307a7952450d4f37ce97a576ae185728793d081c98416db9bb2a830fa4cfea0c5f6c7828bb91523cd26d6120c0d5111fc39962fa71cd875a8983c2c1a"},"custom":{"client":"site","description":"Joomla! 6.1.0 Release","downloads":[{"url":"https://downloads.joomla.org/cms/joomla6/6-1-0/Joomla_6.1.0-Stable-Update_Package.zip","format":"zip","type":"full"},{"url":"https://github.com/joomla/joomla-cms/releases/download/6.1.0/Joomla_6.1.0-Stable-Update_Package.zip","format":"zip","type":"full"},{"url":"https://update.joomla.org/releases/6.1.0/Joomla_6.1.0-Stable-Update_Package.zip","format":"zip","type":"full"}],"element":"joomla","infourl":{"url":"https://www.joomla.org/announcements/release-news/5950-joomla-6-1-is-here.html","title":"Joomla! 6.1.0 Release"},"maintainer":"Joomla! Production Department","maintainerurl":"https://www.joomla.org","name":"Joomla! 6.1.0","php_minimum":"8.3.0","channel":"6.x","stability":"Stable","supported_databases":{"mariadb":"10.4","mysql":"8.0.13","postgresql":"12.0"},"targetplatform":{"name":"joomla","version":"(6\\\\.[0-4])|^(5\\\\.4)"},"type":"file","version":"6.1.0"}},"Joomla_6.1.0-alpha2-Alpha-Full_Package.zip":{"length":33107068,"hashes":{"sha512":"be9711e1bda18981f077369105399eff9e8ab9203cad43d2c5385689e32db7bc6e11f3b5e406194dd9c2d7f5892bb92c6702cf5436badf3d971150ffcfda0a72"},"custom":{"client":"site","description":"Joomla! 6.1.0-alpha2 Release","downloads":[{"url":"https://github.com/joomla/joomla-cms/releases/download/6.1.0-alpha2/Joomla_6.1.0-alpha2-Alpha-Update_Package.zip","format":"zip","type":"full"}],"element":"joomla","infourl":{"url":"https://developer.joomla.org/news/1015-joomla-6-1-alpha2-see-how-its-coming-together.html","title":"Joomla! 6.1.0-alpha2 Release"},"maintainer":"Joomla! Production Department","maintainerurl":"https://www.joomla.org","name":"Joomla! 6.1.0-alpha2","php_minimum":"8.3.0","channel":"6.x","stability":"Alpha","supported_databases":{"mariadb":"10.4","mysql":"8.0.13","postgresql":"12.0"},"targetplatform":{"name":"joomla","version":"(6\\\\.[0-4])|^(5\\\\.4)"},"type":"file","version":"6.1.0-alpha2"}},"Joomla_6.1.0-alpha2-Alpha-Update_Package.zip":{"length":30736927,"hashes":{"sha512":"388790c8b32f624e5b33531f4a41eefa85b5273e76e20a847b01c7eaa59367939317581e5f75ade6c024f25894740c9651ce2faaa330ac8a7fb863434c170879"},"custom":{"client":"site","description":"Joomla! 6.1.0-alpha2 Release","downloads":[{"url":"https://github.com/joomla/joomla-cms/releases/download/6.1.0-alpha2/Joomla_6.1.0-alpha2-Alpha-Update_Package.zip","format":"zip","type":"full"}],"element":"joomla","infourl":{"url":"https://developer.joomla.org/news/1015-joomla-6-1-alpha2-see-how-its-coming-together.html","title":"Joomla! 6.1.0-alpha2 Release"},"maintainer":"Joomla! Production Department","maintainerurl":"https://www.joomla.org","name":"Joomla! 6.1.0-alpha2","php_minimum":"8.3.0","channel":"6.x","stability":"Alpha","supported_databases":{"mariadb":"10.4","mysql":"8.0.13","postgresql":"12.0"},"targetplatform":{"name":"joomla","version":"(6\\\\.[0-4])|^(5\\\\.4)"},"type":"file","version":"6.1.0-alpha2"}},"Joomla_6.1.0-alpha3-Alpha-Full_Package.zip":{"length":33216519,"hashes":{"sha512":"16eb1fb81ef4b0c2f3ebca14538945d291623f544d77946e556fc2f17561bda55c256be4f56c0f5034609bbc10e7dcbf0995691b0cd613f5dc58658fe964333b"},"custom":{"client":"site","description":"Joomla! 6.1.0-alpha3 Release","downloads":[{"url":"https://github.com/joomla/joomla-cms/releases/download/6.1.0-alpha3/Joomla_6.1.0-alpha3-Alpha-Update_Package.zip","format":"zip","type":"full"}],"element":"joomla","infourl":{"url":"https://developer.joomla.org/news/1018-joomla-6-1-alpha3-wrapping-up-the-alpha-phase.html","title":"Joomla! 6.1.0-alpha3 Release"},"maintainer":"Joomla! Production Department","maintainerurl":"https://www.joomla.org","name":"Joomla! 6.1.0-alpha3","php_minimum":"8.3.0","channel":"6.x","stability":"Alpha","supported_databases":{"mariadb":"10.4","mysql":"8.0.13","postgresql":"12.0"},"targetplatform":{"name":"joomla","version":"(6\\\\.[0-4])|^(5\\\\.4)"},"type":"file","version":"6.1.0-alpha3"}},"Joomla_6.1.0-alpha3-Alpha-Update_Package.zip":{"length":30842460,"hashes":{"sha512":"9290f78cdba43c0bbb4e9b812a1e06cd548e6a4e14b51529d50d5acab3fdb4f7ab5cc6828655596159af41962b51f5a14008a26f06e3f9c5b3781f309cb52a19"},"custom":{"client":"site","description":"Joomla! 6.1.0-alpha3 Release","downloads":[{"url":"https://github.com/joomla/joomla-cms/releases/download/6.1.0-alpha3/Joomla_6.1.0-alpha3-Alpha-Update_Package.zip","format":"zip","type":"full"}],"element":"joomla","infourl":{"url":"https://developer.joomla.org/news/1018-joomla-6-1-alpha3-wrapping-up-the-alpha-phase.html","title":"Joomla! 6.1.0-alpha3 Release"},"maintainer":"Joomla! Production Department","maintainerurl":"https://www.joomla.org","name":"Joomla! 6.1.0-alpha3","php_minimum":"8.3.0","channel":"6.x","stability":"Alpha","supported_databases":{"mariadb":"10.4","mysql":"8.0.13","postgresql":"12.0"},"targetplatform":{"name":"joomla","version":"(6\\\\.[0-4])|^(5\\\\.4)"},"type":"file","version":"6.1.0-alpha3"}},"Joomla_6.1.0-beta3-Beta-Update_Package.zip":{"length":31413826,"hashes":{"sha512":"9f03df89f3112706026cd9e99f4e3e1cc46a706db8492957e093ae416aadc568b422bcebbf74d45ffc07072d011c0d64e64e9891adcc3f56326da22ccb62d449"},"custom":{"client":"site","description":"Joomla! 6.1.0-beta3 Release","downloads":[{"url":"https://github.com/joomla/joomla-cms/releases/download/6.1.0-beta3/Joomla_6.1.0-beta3-Beta-Update_Package.zip","format":"zip","type":"full"}],"element":"joomla","infourl":{"url":"https://developer.joomla.org/news/1026-joomla-6-1-beta3-help-make-it-stable.html","title":"Joomla! 6.1.0-beta3 Release"},"maintainer":"Joomla! Production Department","maintainerurl":"https://www.joomla.org","name":"Joomla! 6.1.0-beta3","php_minimum":"8.3.0","channel":"6.x","stability":"Beta","supported_databases":{"mariadb":"10.4","mysql":"8.0.13","postgresql":"12.0"},"targetplatform":{"name":"joomla","version":"(6\\\\.[0-4])|^(5\\\\.4)"},"type":"file","version":"6.1.0-beta3"}},"Joomla_6.1.0-rc1-Release_Candidate-Update_Package.zip":{"length":31432633,"hashes":{"sha512":"6b06981c9e3dc2f0345fc7ef6372d14fa4d84f5f8f424465139dd0ec9c596cf297a554a61b0bcbe02d1c4b494f5e8f1abb821f715222f1f3610045ea7c5f60cc"},"custom":{"client":"site","description":"Joomla! 6.1.0-rc1 Release","downloads":[{"url":"https://github.com/joomla/joomla-cms/releases/download/6.1.0-rc1/Joomla_6.1.0-rc1-Release_Candidate-Update_Package.zip","format":"zip","type":"full"}],"element":"joomla","infourl":{"url":"https://www.joomla.org/news/5945-joomla-6-1-release-candidate-test-the-final-package.html","title":"Joomla! 6.1.0-rc1 Release"},"maintainer":"Joomla! Production Department","maintainerurl":"https://www.joomla.org","name":"Joomla! 6.1.0-rc1","php_minimum":"8.3.0","channel":"6.x","stability":"RC","supported_databases":{"mariadb":"10.4","mysql":"8.0.13","postgresql":"12.0"},"targetplatform":{"name":"joomla","version":"(6\\\\.[0-4])|^(5\\\\.4)"},"type":"file","version":"6.1.0-rc1"}},"Joomla_6.1.0-rc2-Release_Candidate-Update_Package.zip":{"length":31433359,"hashes":{"sha512":"b9b85aa048c26face653f9fb62f4ca28c294fa2a9c643aed73b581742d07db6d9d0b3169b4f7a437d1b233fe4771e0efe6395280a22139afa0a459908ba5d9b3"},"custom":{"client":"site","description":"Joomla! 6.1.0-rc2 Release","downloads":[{"url":"https://github.com/joomla/joomla-cms/releases/download/6.1.0-rc2/Joomla_6.1.0-rc2-Release_Candidate-Update_Package.zip","format":"zip","type":"full"}],"element":"joomla","infourl":{"url":"https://www.joomla.org/announcements/release-news/5949-joomla-6-1-release-candidate-2-test-the-final-package.html","title":"Joomla! 6.1.0-rc2 Release"},"maintainer":"Joomla! Production Department","maintainerurl":"https://www.joomla.org","name":"Joomla! 6.1.0-rc2","php_minimum":"8.3.0","channel":"6.x","stability":"RC","supported_databases":{"mariadb":"10.4","mysql":"8.0.13","postgresql":"12.0"},"targetplatform":{"name":"joomla","version":"(6\\\\.[0-4])|^(5\\\\.4)"},"type":"file","version":"6.1.0-rc2"}},"Joomla_6.1.0-rc3-Release_Candidate-Update_Package.zip":{"length":31441220,"hashes":{"sha512":"5e66b9407f56f0d5d948a85743872e034a1e45b2d8b0cd876cbedb16edcfe39a32f95172677e2a12514a062aae8e1eb94ca3612ea1adb757c3911865cf2e242b"},"custom":{"client":"site","description":"Joomla! 6.1.0-rc3 Release","downloads":[{"url":"https://github.com/joomla/joomla-cms/releases/download/6.1.0-rc3/Joomla_6.1.0-rc3-Release_Candidate-Update_Package.zip","format":"zip","type":"full"}],"element":"joomla","infourl":{"url":"https://www.joomla.org/announcements/release-news/5952-joomla-6-1-release-candidate-3-test-the-final-package.html","title":"Joomla! 6.1.0-rc3 Release"},"maintainer":"Joomla! Production Department","maintainerurl":"https://www.joomla.org","name":"Joomla! 6.1.0-rc3","php_minimum":"8.3.0","channel":"6.x","stability":"RC","supported_databases":{"mariadb":"10.4","mysql":"8.0.13","postgresql":"12.0"},"targetplatform":{"name":"joomla","version":"(6\\\\.[0-4])|^(5\\\\.4)"},"type":"file","version":"6.1.0-rc3"}},"Joomla_6.1.1-Stable-Update_Package.zip":{"length":32594982,"hashes":{"sha512":"17deb752b2b3cfa828d9537bc216cfd48202f60fba9cee7e40998fc69012a0089144a0f9468fef0010ccd202da63638a1d5dc130726d23f15b96defe49e65685"},"custom":{"client":"site","description":"Joomla! 6.1.1 Release","downloads":[{"url":"https://downloads.joomla.org/cms/joomla6/6-1-1/Joomla_6.1.1-Stable-Update_Package.zip","format":"zip","type":"full"},{"url":"https://github.com/joomla/joomla-cms/releases/download/6.1.1/Joomla_6.1.1-Stable-Update_Package.zip","format":"zip","type":"full"},{"url":"https://update.joomla.org/releases/6.1.1/Joomla_6.1.1-Stable-Update_Package.zip","format":"zip","type":"full"}],"element":"joomla","infourl":{"url":"https://www.joomla.org/announcements/release-news/5954-joomla-6-1-1-5-4-6-security-bugfix-release.html","title":"Joomla! 6.1.1 Release"},"maintainer":"Joomla! Production Department","maintainerurl":"https://www.joomla.org","name":"Joomla! 6.1.1","php_minimum":"8.3.0","channel":"6.x","stability":"Stable","supported_databases":{"mariadb":"10.4","mysql":"8.0.13","postgresql":"12.0"},"targetplatform":{"name":"joomla","version":"(6\\\\.[0-4])|^(5\\\\.4)"},"type":"file","version":"6.1.1"}},"Joomla_6.1.1-rc1-Release_Candidate-Update_Package.zip":{"length":32593613,"hashes":{"sha512":"92ecff9ab0d49f82954709c781ba899899ac51d53c755b02f020d8c4b4c1947c8640519d2e1467ffdef53809ede6382f0da8255ae537ab38aea02be3dec421ca"},"custom":{"client":"site","description":"Joomla! 6.1.1-rc1 Release","downloads":[{"url":"https://github.com/joomla/joomla-cms/releases/download/6.1.1-rc1/Joomla_6.1.1-rc1-Release_Candidate-Update_Package.zip","format":"zip","type":"full"}],"element":"joomla","infourl":{"url":"https://github.com/joomla/joomla-cms/releases/tag/6.1.1-rc1","title":"Joomla! 6.1.1-rc1 Release"},"maintainer":"Joomla! Production Department","maintainerurl":"https://www.joomla.org","name":"Joomla! 6.1.1-rc1","php_minimum":"8.3.0","channel":"6.x","stability":"RC","supported_databases":{"mariadb":"10.4","mysql":"8.0.13","postgresql":"12.0"},"targetplatform":{"name":"joomla","version":"(6\\\\.[0-4])|^(5\\\\.4)"},"type":"file","version":"6.1.1-rc1"}},"Joomla_6.1.2-Stable-Update_Package.zip":{"length":32955671,"hashes":{"sha512":"92583e1301ddd9b8715fec76b1157ca8d7f2201d6e7e53127d307c430c1e78a0a32d8db552540fb15bb899fc5fb2ca0e91c18537b6034c408742e0148973576b"},"custom":{"client":"site","description":"Joomla! 6.1.2 Release","downloads":[{"url":"https://downloads.joomla.org/cms/joomla6/6-1-2/Joomla_6.1.2-Stable-Update_Package.zip","format":"zip","type":"full"},{"url":"https://github.com/joomla/joomla-cms/releases/download/6.1.2/Joomla_6.1.2-Stable-Update_Package.zip","format":"zip","type":"full"},{"url":"https://update.joomla.org/releases/6.1.2/Joomla_6.1.2-Stable-Update_Package.zip","format":"zip","type":"full"}],"element":"joomla","infourl":{"url":"https://www.joomla.org/announcements/release-news/5955-joomla-6-1-2-5-4-7-security-bugfix-release.html","title":"Joomla! 6.1.2 Release"},"maintainer":"Joomla! Production Department","maintainerurl":"https://www.joomla.org","name":"Joomla! 6.1.2","php_minimum":"8.3.0","channel":"6.x","stability":"Stable","supported_databases":{"mariadb":"10.4","mysql":"8.0.13","postgresql":"12.0"},"targetplatform":{"name":"joomla","version":"(6\\\\.[0-4])|^(5\\\\.4)"},"type":"file","version":"6.1.2"}},"Joomla_6.1.2-rc1-Release_Candidate-Update_Package.zip":{"length":32944838,"hashes":{"sha512":"d006b3e855dfbed2dde9e4cdaccbac53a3fdee1c5ad6912a8a77fc29579dcb3119d1845d712c2272e51a95414619684baa76dbc83690ed716d6b0b261abfcc2a"},"custom":{"client":"site","description":"Joomla! 6.1.2-rc1 Release","downloads":[{"url":"https://github.com/joomla/joomla-cms/releases/download/6.1.2-rc1/Joomla_6.1.2-rc1-Release_Candidate-Update_Package.zip","format":"zip","type":"full"}],"element":"joomla","infourl":{"url":"https://github.com/joomla/joomla-cms/releases/tag/6.1.2-rc1","title":"Joomla! 6.1.2-rc1 Release"},"maintainer":"Joomla! Production Department","maintainerurl":"https://www.joomla.org","name":"Joomla! 6.1.2-rc1","php_minimum":"8.3.0","channel":"6.x","stability":"RC","supported_databases":{"mariadb":"10.4","mysql":"8.0.13","postgresql":"12.0"},"targetplatform":{"name":"joomla","version":"(6\\\\.[0-4])|^(5\\\\.4)"},"type":"file","version":"6.1.2-rc1"}},"Joomla_6.1.2-rc2-Release_Candidate-Update_Package.zip":{"length":32947291,"hashes":{"sha512":"e55782640120cabe47188b443a57f9a178b15fc140a6aef65226298ed2b0e16d88d82ccae2f9be9fd70a00a6582f429a16e5e39fe9b95a4858f48b2a39b36455"},"custom":{"client":"site","description":"Joomla! 6.1.2-rc2 Release","downloads":[{"url":"https://github.com/joomla/joomla-cms/releases/download/6.1.2-rc2/Joomla_6.1.2-rc2-Release_Candidate-Update_Package.zip","format":"zip","type":"full"}],"element":"joomla","infourl":{"url":"https://github.com/joomla/joomla-cms/releases/tag/6.1.2-rc2","title":"Joomla! 6.1.2-rc2 Release"},"maintainer":"Joomla! Production Department","maintainerurl":"https://www.joomla.org","name":"Joomla! 6.1.2-rc2","php_minimum":"8.3.0","channel":"6.x","stability":"RC","supported_databases":{"mariadb":"10.4","mysql":"8.0.13","postgresql":"12.0"},"targetplatform":{"name":"joomla","version":"(6\\\\.[0-4])|^(5\\\\.4)"},"type":"file","version":"6.1.2-rc2"}},"Joomla_6.1.2-rc3-Release_Candidate-Update_Package.zip":{"length":32951517,"hashes":{"sha512":"b846e7b89c3dde8fe81e59b4a6664dea72197d1a6ca2e10a6318417ab8439268c57e17c0ff89361e4afbdfc1510321874a711cdd9684fcf9ce842ece1638789e"},"custom":{"client":"site","description":"Joomla! 6.1.2-rc3 Release","downloads":[{"url":"https://github.com/joomla/joomla-cms/releases/download/6.1.2-rc3/Joomla_6.1.2-rc3-Release_Candidate-Update_Package.zip","format":"zip","type":"full"}],"element":"joomla","infourl":{"url":"https://github.com/joomla/joomla-cms/releases/edit/6.1.2-rc3","title":"Joomla! 6.1.2-rc3 Release"},"maintainer":"Joomla! Production Department","maintainerurl":"https://www.joomla.org","name":"Joomla! 6.1.2-rc3","php_minimum":"8.3.0","channel":"6.x","stability":"RC","supported_databases":{"mariadb":"10.4","mysql":"8.0.13","postgresql":"12.0"},"targetplatform":{"name":"joomla","version":"(6\\\\.[0-4])|^(5\\\\.4)"},"type":"file","version":"6.1.2-rc3"}},"Joomla_6.1.3-Stable-Update_Package.zip":{"length":33023112,"hashes":{"sha512":"91b4eae07ddc73626dc11da88de88b7752528def632e58f4f502ef3e56510c9f7e15ca66e06a8541291ea5dbefb32657194c065366927da6aba184dbeebdd610"},"custom":{"client":"site","description":"Joomla! 6.1.3 Release","downloads":[{"url":"https://downloads.joomla.org/cms/joomla6/6-1-3/Joomla_6.1.3-Stable-Update_Package.zip","format":"zip","type":"full"},{"url":"https://github.com/joomla/joomla-cms/releases/download/6.1.3/Joomla_6.1.3-Stable-Update_Package.zip","format":"zip","type":"full"},{"url":"https://update.joomla.org/releases/6.1.3/Joomla_6.1.3-Stable-Update_Package.zip","format":"zip","type":"full"}],"element":"joomla","infourl":{"url":"https://www.joomla.org/announcements/release-news/5957-joomla-6-1-3-5-4-8-security-bugfix-release.html","title":"Joomla! 6.1.3 Release"},"maintainer":"Joomla! Production Department","maintainerurl":"https://www.joomla.org","name":"Joomla! 6.1.3","php_minimum":"8.3.0","channel":"6.x","stability":"Stable","supported_databases":{"mariadb":"10.4","mysql":"8.0.13","postgresql":"12.0"},"targetplatform":{"name":"joomla","version":"(6\\\\.[0-4])|^(5\\\\.4)"},"type":"file","version":"6.1.3"}},"Joomla_6.1.3-rc1-Release_Candidate-Update_Package.zip":{"length":33001951,"hashes":{"sha512":"71eee7cfa031b2977e07dbfe69bc73fd8c55b40bb658b2d8bde9ebf7670921ded81f3ea279a798fc8b7ce24c3047454e1fc40a22e23f7054fdbcb0d457113d25"},"custom":{"client":"site","description":"Joomla! 6.1.3-rc2 Release","downloads":[{"url":"https://github.com/joomla/joomla-cms/releases/download/6.1.3-rc2/Joomla_6.1.3-rc2-Release_Candidate-Update_Package.zip","format":"zip","type":"full"}],"element":"joomla","infourl":{"url":"https://github.com/joomla/joomla-cms/releases/tag/6.1.3-rc2","title":"Joomla! 6.1.3-rc2 Release"},"maintainer":"Joomla! Production Department","maintainerurl":"https://www.joomla.org","name":"Joomla! 6.1.3-rc2","php_minimum":"8.3.0","channel":"6.x","stability":"RC","supported_databases":{"mariadb":"10.4","mysql":"8.0.13","postgresql":"12.0"},"targetplatform":{"name":"joomla","version":"(6\\\\.[0-4])|^(5\\\\.4)"},"type":"file","version":"6.1.3-rc2"}},"Joomla_6.1.3-rc2-Release_Candidate-Update_Package.zip":{"length":33020933,"hashes":{"sha512":"dfb9a965e3edc8d8dbebe00ab567b4417c2e4e385cebe381c50f081c2dadebfd646ae20fd670fb01f25a3182b002aed147200362ceac85825eb1f22148f63947"},"custom":{"client":"site","description":"Joomla! 6.1.3-rc2 Release","downloads":[{"url":"https://github.com/joomla/joomla-cms/releases/download/6.1.3-rc2/Joomla_6.1.3-rc2-Release_Candidate-Update_Package.zip","format":"zip","type":"full"}],"element":"joomla","infourl":{"url":"https://github.com/joomla/joomla-cms/releases/tag/6.1.3-rc2","title":"Joomla! 6.1.3-rc2 Release"},"maintainer":"Joomla! Production Department","maintainerurl":"https://www.joomla.org","name":"Joomla! 6.1.3-rc2","php_minimum":"8.3.0","channel":"6.x","stability":"RC","supported_databases":{"mariadb":"10.4","mysql":"8.0.13","postgresql":"12.0"},"targetplatform":{"name":"joomla","version":"(6\\\\.[0-4])|^(5\\\\.4)"},"type":"file","version":"6.1.3-rc2"}},"Joomla_6.1.4-Stable-Update_Package.zip":{"length":33143037,"hashes":{"sha512":"e46163eafabb14e69251c40c6d7a8af16dab479f88daa5d72c77b958f16f021732506458c0a27a557aee3843debed167f9ab875d1ac7a96a98a841d18c22a6e3"},"custom":{"client":"site","description":"Joomla! 6.1.4 Release","downloads":[{"url":"https://downloads.joomla.org/cms/joomla6/6-1-4/Joomla_6.1.4-Stable-Update_Package.zip","format":"zip","type":"full"},{"url":"https://github.com/joomla/joomla-cms/releases/download/6.1.4/Joomla_6.1.4-Stable-Update_Package.zip","format":"zip","type":"full"},{"url":"https://update.joomla.org/releases/6.1.4/Joomla_6.1.4-Stable-Update_Package.zip","format":"zip","type":"full"}],"element":"joomla","infourl":{"url":"https://www.joomla.org/announcements/release-news/joomla-6-1-4-5-4-9-security-bugfix-release.html","title":"Joomla! 6.1.4 Release"},"maintainer":"Joomla! Production Department","maintainerurl":"https://www.joomla.org","name":"Joomla! 6.1.4","php_minimum":"8.3.0","channel":"6.x","stability":"Stable","supported_databases":{"mariadb":"10.4","mysql":"8.0.13","postgresql":"12.0"},"targetplatform":{"name":"joomla","version":"(6\\\\.[0-4])|^(5\\\\.4)"},"type":"file","version":"6.1.4"}},"Joomla_6.1.4-rc1-Release_Candidate-Update_Package.zip":{"length":33134165,"hashes":{"sha512":"dbe5306221cdba5f0574cb3e53818f03ce0daee8f2a8604d3ddcb13bd0588b0e50ca0208172d1f3d73ceb6624cc446a7820d2db72427879930118e4e176a279f"},"custom":{"client":"site","description":"Joomla! 6.1.4-rc1 Release","downloads":[{"url":"https://github.com/joomla/joomla-cms/releases/download/6.1.4-rc1/Joomla_6.1.4-rc1-Release_Candidate-Update_Package.zip","format":"zip","type":"full"}],"element":"joomla","infourl":{"url":"https://github.com/joomla/joomla-cms/releases/tag/6.1.4-rc1","title":"Joomla! 6.1.4-rc1 Release"},"maintainer":"Joomla! Production Department","maintainerurl":"https://www.joomla.org","name":"Joomla! 6.1.4-rc1","php_minimum":"8.3.0","channel":"6.x","stability":"RC","supported_databases":{"mariadb":"10.4","mysql":"8.0.13","postgresql":"12.0"},"targetplatform":{"name":"joomla","version":"(6\\\\.[0-4])|^(5\\\\.4)"},"type":"file","version":"6.1.4-rc1"}},"Joomla_6.2.0-alpha3-Alpha-Update_Package.zip":{"length":32173625,"hashes":{"sha512":"b966f0cd9b89ebd29066f333333cd98e27f889f5bb03248bc13c4aae4df34916b03b7f3779b2e0b2c325ba46c3a479cec163d5c141ebf2df94db86611dfc7d16"},"custom":{"client":"site","description":"Joomla! 6.2.0-alpha3 Release","downloads":[{"url":"https://github.com/joomla/joomla-cms/releases/download/6.2.0-alpha3/Joomla_6.2.0-alpha3-Alpha-Update_Package.zip","format":"zip","type":"full"}],"element":"joomla","infourl":{"url":"https://developer.joomla.org/news/1067-joomla-6-2-alpha3-one-step-closer-to-beta.html","title":"Joomla! 6.2.0-alpha3 Release"},"maintainer":"Joomla! Production Department","maintainerurl":"https://www.joomla.org","name":"Joomla! 6.2.0-alpha3","php_minimum":"8.3.0","channel":"6.x","stability":"Alpha","supported_databases":{"mariadb":"10.4","mysql":"8.0.13","postgresql":"12.0"},"targetplatform":{"name":"joomla","version":"(6\\\\.[0-4])|^(5\\\\.4)"},"type":"file","version":"6.2.0-alpha3"}},"Joomla_6.2.0-beta1-Beta-Update_Package.zip":{"length":32310957,"hashes":{"sha512":"c3a7cd4b44de8e495744b9e8c9ba270ccb4baaca6fbf77b4077bf424bfb71b2bbc266a5ca47f13b53c2f7adca835cd5c0c7c42e1cfe40b46df3db577e5d9cc34"},"custom":{"client":"site","description":"Joomla! 6.2.0-beta1 Release","downloads":[{"url":"https://github.com/joomla/joomla-cms/releases/download/6.2.0-beta1/Joomla_6.2.0-beta1-Beta-Update_Package.zip","format":"zip","type":"full"}],"element":"joomla","infourl":{"url":"https://developer.joomla.org/news/1078-joomla-6-2-beta-1-the-next-phase-starts-now.html","title":"Joomla! 6.2.0-beta1 Release"},"maintainer":"Joomla! Production Department","maintainerurl":"https://www.joomla.org","name":"Joomla! 6.2.0-beta1","php_minimum":"8.3.0","channel":"6.x","stability":"Beta","supported_databases":{"mariadb":"10.4","mysql":"8.0.13","postgresql":"12.0"},"targetplatform":{"name":"joomla","version":"(6\\\\.[0-4])|^(5\\\\.4)"},"type":"file","version":"6.2.0-beta1"}},"Joomla_6.2.0-beta2-Beta-Update_Package.zip":{"length":32341522,"hashes":{"sha512":"7ed474098a2100b4c9bd77af5a5db8e84dbde4e1513f086a27bfacae5150f6511700421f604823d7b3341ff2898ee8e3bcb562504da543cc0b6c176bdf569d48"},"custom":{"client":"site","description":"Joomla! 6.2.0-beta2 Release","downloads":[{"url":"https://github.com/joomla/joomla-cms/releases/download/6.2.0-beta2/Joomla_6.2.0-beta2-Beta-Update_Package.zip","format":"zip","type":"full"}],"element":"joomla","infourl":{"url":"https://developer.joomla.org/news/1079-joomla-6-2-beta-2-test-test-test.html","title":"Joomla! 6.2.0-beta2 Release"},"maintainer":"Joomla! Production Department","maintainerurl":"https://www.joomla.org","name":"Joomla! 6.2.0-beta2","php_minimum":"8.3.0","channel":"6.x","stability":"Beta","supported_databases":{"mariadb":"10.4","mysql":"8.0.13","postgresql":"12.0"},"targetplatform":{"name":"joomla","version":"(6\\\\.[0-4])|^(5\\\\.4)"},"type":"file","version":"6.2.0-beta2"}},"Joomla_6.2.0-beta3-Beta-Update_Package.zip":{"length":32456217,"hashes":{"sha512":"759b7a649089fe01a21f83242f7bbe55eaba8665651de3921be7a839b289d96c30af96b73452e3654e98b66226b1930a95f592c1f4a774a4d86e2429c0c206d9"},"custom":{"client":"site","description":"Joomla! 6.2.0-rc1 Release","downloads":[{"url":"https://github.com/joomla/joomla-cms/releases/download/6.2.0-rc1/Joomla_6.2.0-rc1-Release_Candidate-Update_Package.zip","format":"zip","type":"full"}],"element":"joomla","infourl":{"url":"https://www.joomla.org/announcements/release-news/joomla-6-2-release-candidate-test-the-final-package.html","title":"Joomla! 6.2.0-rc1 Release"},"maintainer":"Joomla! Production Department","maintainerurl":"https://www.joomla.org","name":"Joomla! 6.2.0-rc1","php_minimum":"8.3.0","channel":"6.x","stability":"RC","supported_databases":{"mariadb":"10.4","mysql":"8.0.13","postgresql":"12.0"},"targetplatform":{"name":"joomla","version":"(6\\\\.[0-4])|^(5\\\\.4)"},"type":"file","version":"6.2.0-rc1"}},"Joomla_6.2.0-rc1-Release_Candidate-Update_Package.zip":{"length":32480040,"hashes":{"sha512":"32e5ef6b17366c21776d8daa3d46266b5b1a7579b1f8acdebf2184f8725c7a7b9a40b7501e6125e49ea1d0fb3e32de6bdd29383125e308081859c5d35e2f6c55"},"custom":{"client":"site","description":"Joomla! 6.2.0-rc1 Release","downloads":[{"url":"https://github.com/joomla/joomla-cms/releases/download/6.2.0-rc1/Joomla_6.2.0-rc1-Release_Candidate-Update_Package.zip","format":"zip","type":"full"}],"element":"joomla","infourl":{"url":"https://www.joomla.org/announcements/release-news/joomla-6-2-release-candidate-test-the-final-package.html","title":"Joomla! 6.2.0-rc1 Release"},"maintainer":"Joomla! Production Department","maintainerurl":"https://www.joomla.org","name":"Joomla! 6.2.0-rc1","php_minimum":"8.3.0","channel":"6.x","stability":"RC","supported_databases":{"mariadb":"10.4","mysql":"8.0.13","postgresql":"12.0"},"targetplatform":{"name":"joomla","version":"(6\\\\.[0-4])|^(5\\\\.4)"},"type":"file","version":"6.2.0-rc1"}}}},"signatures":[{"keyid":"c9fe1ff72da60a30ea5e612fa2ef4ca329fb46d9e1965b811bf9f2de44ffdf18","sig":"1fee4be8bac6fbd954ebf49c39230828acfa0cd92e1c93eb882c9c731fc1ca307b336077022611cef13b46a6c37497d2ecbde57bc950dcd8f022cf1bb9f8e105"},{"keyid":"284c8164fd395e9178dc66929787f0650cda6acff0fd769ef697203d7553c481","sig":"236305371c96f3cad3a0174e10b27aa0986fce1242571ff8bfe8061414527b3f3731c7198232779a0b1771afcbb65beb386e30f12cd7201c38a4482bfe07080e"}]}	{"signed":{"_type":"snapshot","spec_version":"1.0","version":131,"expires":"2027-04-27T17:16:31Z","meta":{"targets.json":{"length":48373,"hashes":{"sha512":"dcd1ed984d013638c185bd5a2312c2cd57637429190a7aa7ed7f1c305a9f378577070643a1d48af340684271bbbefc635ced7ad3e59e3e5795307be34329f067"},"version":115}}},"signatures":[{"keyid":"c9fe1ff72da60a30ea5e612fa2ef4ca329fb46d9e1965b811bf9f2de44ffdf18","sig":"d23da8f43f3efab9e3d624ff9ce1ddb6fea7fb12e13f28c5e5d86a2d80c8350d73719b8e1cc69388304ef65d2da7ed23826b6a57534dcad19078dc5513d98c02"}]}	{"signed":{"_type":"timestamp","spec_version":"1.0","version":1260,"expires":"2026-10-03T01:11:58Z","meta":{"snapshot.json":{"length":534,"hashes":{"sha512":"222ac151ef4aa3513223df6dbb9ee48786358fe4e3ed2468292dbd74eca5b4c781d8453971e0a62d5050d223e56b0e9163a265ec4461c91229f17e3822847a75"},"version":131}}},"signatures":[{"keyid":"9e41a9d62d94c6a1c8a304f62c5bd72d84a9f286f27e8327cedeacb09e5156cc","sig":"1c3b871c7b0304abe66189a0ac8a6f3b169420e9ab83190c92299355787e28203d9db7e8fe16bb54227f5d08de49c1235da972399cc84333457a643078125307"}]}	\N
\.


--
-- Data for Name: jos_ucm_base; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.jos_ucm_base (ucm_id, ucm_item_id, ucm_type_id, ucm_language_id) FROM stdin;
\.


--
-- Data for Name: jos_ucm_content; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.jos_ucm_content (core_content_id, core_type_alias, core_title, core_alias, core_body, core_state, core_checked_out_time, core_checked_out_user_id, core_access, core_params, core_featured, core_metadata, core_created_user_id, core_created_by_alias, core_created_time, core_modified_user_id, core_modified_time, core_language, core_publish_up, core_publish_down, core_content_item_id, asset_id, core_images, core_urls, core_hits, core_version, core_ordering, core_metakey, core_metadesc, core_catid, core_type_id) FROM stdin;
\.


--
-- Data for Name: jos_update_sites; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.jos_update_sites (update_site_id, name, type, location, enabled, last_check_timestamp, extra_query, checked_out, checked_out_time) FROM stdin;
1	Joomla! Core	tuf	https://update.joomla.org/cms/	1	1790883456		\N	\N
2	Accredited Joomla! Translations	collection	https://update.joomla.org/language/translationlist_6.xml	1	1790883948		\N	\N
3	Joomla! Update Component	extension	https://update.joomla.org/core/extensions/com_joomlaupdate.xml	1	1790883949		\N	\N
\.


--
-- Data for Name: jos_update_sites_extensions; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.jos_update_sites_extensions (update_site_id, extension_id) FROM stdin;
1	247
2	248
3	24
\.


--
-- Data for Name: jos_updates; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.jos_updates (update_id, update_site_id, extension_id, name, description, element, type, folder, client_id, version, data, detailsurl, infourl, changelogurl, extra_query) FROM stdin;
209	1	247	Joomla! 6.1.4	Joomla! 6.1.4 Release	joomla	file		0	6.1.4		https://update.joomla.org/cms/	https://www.joomla.org/announcements/release-news/joomla-6-1-4-5-4-9-security-bugfix-release.html	\N	
210	2	0	Afrikaans		pkg_af-ZA	package		0	6.0.3.1		https://update.joomla.org/language/details6/af-ZA_details.xml			
211	2	0	Arabic Unitag		pkg_ar-AA	package		0	6.1.4.1		https://update.joomla.org/language/details6/ar-AA_details.xml			
212	2	0	Belarusian		pkg_be-BY	package		0	6.1.1.1		https://update.joomla.org/language/details6/be-BY_details.xml			
213	2	0	Bulgarian		pkg_bg-BG	package		0	6.0.3.1		https://update.joomla.org/language/details6/bg-BG_details.xml			
214	2	0	Catalan		pkg_ca-ES	package		0	6.1.4.1		https://update.joomla.org/language/details6/ca-ES_details.xml			
215	2	0	Chinese, Simplified		pkg_zh-CN	package		0	6.0.1.4		https://update.joomla.org/language/details6/zh-CN_details.xml			
216	2	0	Chinese, Traditional		pkg_zh-TW	package		0	6.0.4.1		https://update.joomla.org/language/details6/zh-TW_details.xml			
217	2	0	Croatian		pkg_hr-HR	package		0	6.0.3.2		https://update.joomla.org/language/details6/hr-HR_details.xml			
218	2	0	Czech		pkg_cs-CZ	package		0	6.1.4.1		https://update.joomla.org/language/details6/cs-CZ_details.xml			
219	2	0	Danish		pkg_da-DK	package		0	6.1.4.1		https://update.joomla.org/language/details6/da-DK_details.xml			
220	2	0	Dutch		pkg_nl-NL	package		0	6.1.4.1		https://update.joomla.org/language/details6/nl-NL_details.xml			
221	2	0	English, Australia		pkg_en-AU	package		0	6.1.1.1		https://update.joomla.org/language/details6/en-AU_details.xml			
222	2	0	English, Canada		pkg_en-CA	package		0	6.1.1.1		https://update.joomla.org/language/details6/en-CA_details.xml			
223	2	0	English, New Zealand		pkg_en-NZ	package		0	6.1.1.1		https://update.joomla.org/language/details6/en-NZ_details.xml			
224	2	0	English, USA		pkg_en-US	package		0	6.1.1.2		https://update.joomla.org/language/details6/en-US_details.xml			
225	2	0	Estonian		pkg_et-EE	package		0	6.1.4.1		https://update.joomla.org/language/details6/et-EE_details.xml			
226	2	0	Finnish		pkg_fi-FI	package		0	6.1.3.1		https://update.joomla.org/language/details6/fi-FI_details.xml			
227	2	0	Flemish		pkg_nl-BE	package		0	6.1.4.1		https://update.joomla.org/language/details6/nl-BE_details.xml			
228	2	0	French		pkg_fr-FR	package		0	6.1.4.2		https://update.joomla.org/language/details6/fr-FR_details.xml			
229	2	0	French, Canada		pkg_fr-CA	package		0	6.1.4.2		https://update.joomla.org/language/details6/fr-CA_details.xml			
230	2	0	Georgian		pkg_ka-GE	package		0	6.1.4.1		https://update.joomla.org/language/details6/ka-GE_details.xml			
231	2	0	German		pkg_de-DE	package		0	6.1.4.1		https://update.joomla.org/language/details6/de-DE_details.xml			
232	2	0	German, Austria		pkg_de-AT	package		0	6.1.4.1		https://update.joomla.org/language/details6/de-AT_details.xml			
233	2	0	German, Liechtenstein		pkg_de-LI	package		0	6.1.4.1		https://update.joomla.org/language/details6/de-LI_details.xml			
234	2	0	German, Luxembourg		pkg_de-LU	package		0	6.1.4.1		https://update.joomla.org/language/details6/de-LU_details.xml			
235	2	0	German, Switzerland		pkg_de-CH	package		0	6.1.4.1		https://update.joomla.org/language/details6/de-CH_details.xml			
236	2	0	Greek		pkg_el-GR	package		0	6.1.4.1		https://update.joomla.org/language/details6/el-GR_details.xml			
237	2	0	Hungarian		pkg_hu-HU	package		0	6.1.2.1		https://update.joomla.org/language/details6/hu-HU_details.xml			
238	2	0	Irish		pkg_ga-IE	package		0	6.1.2.1		https://update.joomla.org/language/details6/ga-IE_details.xml			
239	2	0	Italian		pkg_it-IT	package		0	6.1.4.1		https://update.joomla.org/language/details6/it-IT_details.xml			
240	2	0	Japanese		pkg_ja-JP	package		0	6.1.3.1		https://update.joomla.org/language/details6/ja-JP_details.xml			
241	2	0	Laotian		pkg_lo-LA	package		0	6.0.4.1		https://update.joomla.org/language/details6/lo-LA_details.xml			
242	2	0	Latvian		pkg_lv-LV	package		0	6.0.3.1		https://update.joomla.org/language/details6/lv-LV_details.xml			
243	2	0	Lithuanian		pkg_lt-LT	package		0	6.1.3.2		https://update.joomla.org/language/details6/lt-LT_details.xml			
244	2	0	Malay		pkg_ms-MY	package		0	6.1.3.1		https://update.joomla.org/language/details6/ms-MY_details.xml			
245	2	0	Norwegian Bokmål		pkg_nb-NO	package		0	6.1.4.1		https://update.joomla.org/language/details6/nb-NO_details.xml			
246	2	0	Persian Farsi		pkg_fa-IR	package		0	6.1.4.1		https://update.joomla.org/language/details6/fa-IR_details.xml			
247	2	0	Polish		pkg_pl-PL	package		0	6.0.0.1		https://update.joomla.org/language/details6/pl-PL_details.xml			
248	2	0	Portuguese, Brazil		pkg_pt-BR	package		0	6.0.3.1		https://update.joomla.org/language/details6/pt-BR_details.xml			
249	2	0	Portuguese, Portugal		pkg_pt-PT	package		0	6.1.0.1		https://update.joomla.org/language/details6/pt-PT_details.xml			
250	2	0	Romanian		pkg_ro-RO	package		0	6.0.0.1		https://update.joomla.org/language/details6/ro-RO_details.xml			
251	2	0	Russian		pkg_ru-RU	package		0	6.1.1.1		https://update.joomla.org/language/details6/ru-RU_details.xml			
252	2	0	Serbian, Cyrillic		pkg_sr-RS	package		0	6.1.1.1		https://update.joomla.org/language/details6/sr-RS_details.xml			
253	2	0	Serbian, Latin		pkg_sr-YU	package		0	6.0.4.1		https://update.joomla.org/language/details6/sr-YU_details.xml			
254	2	0	Slovak		pkg_sk-SK	package		0	6.1.0.1		https://update.joomla.org/language/details6/sk-SK_details.xml			
255	2	0	Slovenian		pkg_sl-SI	package		0	6.1.3.1		https://update.joomla.org/language/details6/sl-SI_details.xml			
256	2	0	Spanish		pkg_es-ES	package		0	6.1.4.1		https://update.joomla.org/language/details6/es-ES_details.xml			
257	2	0	Swedish		pkg_sv-SE	package		0	6.1.4.1		https://update.joomla.org/language/details6/sv-SE_details.xml			
258	2	0	Tamil, India		pkg_ta-IN	package		0	6.1.4.1		https://update.joomla.org/language/details6/ta-IN_details.xml			
259	2	0	Thai		pkg_th-TH	package		0	6.0.0.2		https://update.joomla.org/language/details6/th-TH_details.xml			
260	2	0	Turkish		pkg_tr-TR	package		0	6.1.4.1		https://update.joomla.org/language/details6/tr-TR_details.xml			
261	2	0	Ukrainian		pkg_uk-UA	package		0	6.1.2.1		https://update.joomla.org/language/details6/uk-UA_details.xml			
262	2	0	Welsh		pkg_cy-GB	package		0	6.1.4.1		https://update.joomla.org/language/details6/cy-GB_details.xml			
\.


--
-- Data for Name: jos_user_keys; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.jos_user_keys (id, user_id, token, series, "time", uastring) FROM stdin;
\.


--
-- Data for Name: jos_user_mfa; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.jos_user_mfa (id, user_id, title, method, "default", options, created_on, last_used, tries, last_try) FROM stdin;
\.


--
-- Data for Name: jos_user_notes; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.jos_user_notes (id, user_id, catid, subject, body, state, checked_out, checked_out_time, created_user_id, created_time, modified_user_id, modified_time, review_time, publish_up, publish_down) FROM stdin;
\.


--
-- Data for Name: jos_user_profiles; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.jos_user_profiles (user_id, profile_key, profile_value, ordering) FROM stdin;
758	guidedtour.id.12	{"state":"completed"}	0
\.


--
-- Data for Name: jos_user_usergroup_map; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.jos_user_usergroup_map (user_id, group_id) FROM stdin;
758	8
759	2
\.


--
-- Data for Name: jos_usergroups; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.jos_usergroups (id, parent_id, lft, rgt, title) FROM stdin;
1	0	1	18	Public
2	1	8	15	Registered
3	2	9	14	Author
4	3	10	13	Editor
5	4	11	12	Publisher
6	1	4	7	Manager
7	6	5	6	Administrator
8	1	16	17	Super Users
9	1	2	3	Guest
\.


--
-- Data for Name: jos_users; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.jos_users (id, name, username, email, password, block, "sendEmail", "registerDate", "lastvisitDate", activation, params, "lastResetTime", "resetCount", "otpKey", otep, "requireReset", "authProvider") FROM stdin;
758	Administrador	admin	admin@parcial.local	$2y$12$S7YDTtQkSv8xjstUFRHN.ORrMeVa/3d4OGWYATsd/lDvs1IvCdkdG	0	1	2026-09-28 17:56:44	2026-10-01 19:45:46	0		\N	0			0	
759	usuario	usuario	usuario@parcial.local	$2y$12$Cf2CidFQlchLS1eufPf77eKXnlRuu7QhPZNXLutNgs4UU0lmYJTpq	0	0	2026-10-01 19:47:22	2026-10-01 19:53:55		{"admin_style":"","colorScheme":"","allowTourAutoStart":"","admin_language":"","language":"","editor":"","timezone":"","a11y_mono":"0","a11y_contrast":"0","a11y_highlight":"0","a11y_font":"0"}	\N	0			0	
\.


--
-- Data for Name: jos_viewlevels; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.jos_viewlevels (id, title, ordering, rules) FROM stdin;
1	Public	0	[1]
2	Registered	2	[6,2,8]
3	Special	3	[6,3,8]
5	Guest	1	[9]
6	Super Users	4	[8]
\.


--
-- Data for Name: jos_webauthn_credentials; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.jos_webauthn_credentials (id, user_id, label, credential) FROM stdin;
\.


--
-- Data for Name: jos_workflow_associations; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.jos_workflow_associations (item_id, stage_id, extension) FROM stdin;
1	1	com_content.article
\.


--
-- Data for Name: jos_workflow_stages; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.jos_workflow_stages (id, asset_id, ordering, workflow_id, published, title, description, "default", "position", checked_out_time, checked_out) FROM stdin;
1	57	1	1	1	COM_WORKFLOW_BASIC_STAGE		1	\N	\N	\N
\.


--
-- Data for Name: jos_workflow_transitions; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.jos_workflow_transitions (id, asset_id, ordering, workflow_id, published, title, description, from_stage_id, to_stage_id, options, checked_out_time, checked_out) FROM stdin;
1	58	1	1	1	UNPUBLISH		-1	1	{"publishing":"0"}	\N	\N
2	59	2	1	1	PUBLISH		-1	1	{"publishing":"1"}	\N	\N
3	60	3	1	1	TRASH		-1	1	{"publishing":"-2"}	\N	\N
4	61	4	1	1	ARCHIVE		-1	1	{"publishing":"2"}	\N	\N
5	62	5	1	1	FEATURE		-1	1	{"featuring":"1"}	\N	\N
6	63	6	1	1	UNFEATURE		-1	1	{"featuring":"0"}	\N	\N
7	64	7	1	1	PUBLISH_AND_FEATURE		-1	1	{"publishing":"1","featuring":"1"}	\N	\N
\.


--
-- Data for Name: jos_workflows; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.jos_workflows (id, asset_id, published, title, description, extension, "default", ordering, created, created_by, modified, modified_by, checked_out_time, checked_out) FROM stdin;
1	56	1	COM_WORKFLOW_BASIC_WORKFLOW		com_content.article	1	1	2026-09-28 17:56:41.425068	758	2026-09-28 17:56:41.425068	758	\N	\N
\.


--
-- Data for Name: trafico_nginx; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.trafico_nginx (id, fecha, ip_origen, metodo, ruta, codigo_http, bytes_enviados, tiempo_respuesta, creado_en) FROM stdin;
1	2026-09-28 18:27:14+00	172.20.0.1	POST	/index.php/component/users/login	499	0	0.142	2026-09-28 18:32:35.713488+00
2	2026-09-28 18:27:15+00	172.20.0.1	POST	/index.php/component/users/login	303	0	0.332	2026-09-28 18:32:35.718544+00
3	2026-09-28 18:27:15+00	172.20.0.1	GET	/index.php/component/users/login	200	3199	0.049	2026-09-28 18:32:35.720637+00
4	2026-09-28 18:27:18+00	172.20.0.1	POST	/index.php/component/users/login	303	0	0.25	2026-09-28 18:32:35.722432+00
5	2026-09-28 18:27:18+00	172.20.0.1	GET	/index.php/component/users/login	200	3199	0.055	2026-09-28 18:32:35.723699+00
6	2026-09-28 18:27:20+00	172.20.0.1	GET	/index.php	200	2354	0.071	2026-09-28 18:32:35.72505+00
7	2026-09-28 18:27:26+00	172.20.0.1	POST	/grafana/api/user/auth-tokens/rotate	200	32	0.039	2026-09-28 18:32:35.726545+00
8	2026-09-28 18:31:49+00	172.20.0.1	POST	/installation/index.php	404	4004	0.08	2026-09-28 18:32:35.727873+00
9	2026-09-28 18:33:08+00	172.20.0.1	POST	/index.php	303	0	0.049	2026-09-28 18:33:09.738378+00
10	2026-09-28 18:33:09+00	172.20.0.1	GET	/index.php/component/users/login	200	3181	0.059	2026-09-28 18:33:09.740246+00
11	2026-09-28 18:33:10+00	172.20.0.1	POST	/index.php/component/users/login	499	0	0.186	2026-09-28 18:33:11.74175+00
12	2026-09-28 18:33:10+00	172.20.0.1	POST	/index.php/component/users/login	303	0	0.282	2026-09-28 18:33:11.756134+00
13	2026-09-28 18:33:11+00	172.20.0.1	GET	/index.php/component/users/login	200	3199	0.05	2026-09-28 18:33:11.758304+00
14	2026-09-28 18:33:12+00	172.20.0.1	POST	/index.php/component/users/login	499	0	0.167	2026-09-28 18:33:13.76046+00
15	2026-09-28 18:33:13+00	172.20.0.1	POST	/index.php/component/users/login	303	0	0.251	2026-09-28 18:33:13.76236+00
16	2026-09-28 18:33:13+00	172.20.0.1	GET	/index.php/component/users/login	200	3199	0.048	2026-09-28 18:33:13.763631+00
17	2026-09-28 18:33:15+00	172.20.0.1	GET	/index.php	200	2354	0.133	2026-09-28 18:33:15.766231+00
18	2026-09-28 18:35:31+00	172.20.0.1	GET	/grafana/apis/dashboard.grafana.app/v2/namespaces/default/dashboards/actividad-joomla/dto	200	19075	0.02	2026-09-28 18:35:31.824544+00
19	2026-09-28 18:35:31+00	172.20.0.1	GET	/grafana/api/frontend/assets	200	230	0.005	2026-09-28 18:35:31.837751+00
20	2026-09-28 18:35:31+00	172.20.0.1	GET	/grafana/api/prometheus/grafana/api/v1/rules	200	71	0.005	2026-09-28 18:35:31.839588+00
21	2026-09-28 18:35:31+00	172.20.0.1	GET	/grafana/api/annotations	200	32	0.011	2026-09-28 18:35:31.841195+00
22	2026-09-28 18:35:31+00	172.20.0.1	POST	/grafana/api/frontend-metrics	200	25	0.003	2026-09-28 18:35:31.842638+00
23	2026-09-28 18:35:50+00	172.20.0.1	GET	/grafana/api/live/ws	101	507	533.12	2026-09-28 18:35:51.849488+00
24	2026-09-28 18:35:51+00	172.20.0.1	GET	/grafana/api/live/ws	502	559	0	2026-09-28 18:35:51.862546+00
25	2026-09-28 18:35:51+00	172.20.0.1	GET	/grafana/api/login/ping	502	559	0	2026-09-28 18:35:51.864179+00
26	2026-09-28 18:35:53+00	172.20.0.1	GET	/grafana/api/live/ws	502	559	0	2026-09-28 18:35:53.867155+00
27	2026-09-28 18:36:00+00	172.20.0.1	GET	/grafana/api/annotations	200	32	0.008	2026-09-28 18:36:01.884805+00
28	2026-09-28 18:36:00+00	172.20.0.1	GET	/grafana/public/build/statPanel.280c9ee0cecc3c4a4196.js	200	3899	0.003	2026-09-28 18:36:01.897417+00
29	2026-09-28 18:36:00+00	172.20.0.1	POST	/grafana/api/ds/query	200	306	0.023	2026-09-28 18:36:01.899281+00
30	2026-09-28 18:36:00+00	172.20.0.1	POST	/grafana/api/ds/query	200	804	0.022	2026-09-28 18:36:01.900656+00
31	2026-09-28 18:36:00+00	172.20.0.1	POST	/grafana/api/ds/query	200	331	0.058	2026-09-28 18:36:01.902144+00
32	2026-09-28 18:36:01+00	172.20.0.1	GET	/grafana/d/actividad-joomla/monitoreo-de-trafico-web	200	15838	0.023	2026-09-28 18:36:03.904382+00
33	2026-09-28 18:36:02+00	172.20.0.1	GET	/grafana/api/live/ws	101	268	6.466	2026-09-28 18:36:03.91796+00
34	2026-09-28 18:36:02+00	172.20.0.1	GET	/grafana/apis/preferences.grafana.app/v1/namespaces/default/preferences/merged	200	229	0.004	2026-09-28 18:36:03.920202+00
35	2026-09-28 18:36:02+00	172.20.0.1	POST	/grafana/apis/features.grafana.app/v0alpha1/namespaces/default/ofrep/v1/evaluate/flags	200	43677	0.004	2026-09-28 18:36:03.921421+00
36	2026-09-28 18:36:02+00	172.20.0.1	GET	/grafana/api/plugins/grafana-lokiexplore-app/settings	200	3333	0.003	2026-09-28 18:36:03.922783+00
37	2026-09-28 18:36:02+00	172.20.0.1	GET	/grafana/api/plugins/grafana-exploretraces-app/settings	200	3729	0.003	2026-09-28 18:36:03.925317+00
38	2026-09-28 18:36:02+00	172.20.0.1	GET	/grafana/api/plugins/grafana-metricsdrilldown-app/settings	200	5645	0.003	2026-09-28 18:36:03.926652+00
39	2026-09-28 18:36:02+00	172.20.0.1	GET	/grafana/api/plugins/grafana-pyroscope-app/settings	200	4297	0.002	2026-09-28 18:36:03.928535+00
40	2026-09-28 18:36:02+00	172.20.0.1	GET	/grafana/public/plugins/grafana-metricsdrilldown-app/module.js	200	40066	0.008	2026-09-28 18:36:03.930243+00
41	2026-09-28 18:36:02+00	172.20.0.1	GET	/grafana/public/plugins/grafana-pyroscope-app/module.js	200	30810	0.006	2026-09-28 18:36:03.931913+00
42	2026-09-28 18:36:02+00	172.20.0.1	GET	/grafana/apis/dashboard.grafana.app/	200	752	0.003	2026-09-28 18:36:03.933583+00
43	2026-09-28 18:36:02+00	172.20.0.1	GET	/grafana/api/user/orgs	200	77	0.006	2026-09-28 18:36:03.935547+00
44	2026-09-28 18:36:02+00	172.20.0.1	GET	/grafana/apis/preferences.grafana.app/v1/namespaces/default/preferences	200	110	0.003	2026-09-28 18:36:03.937549+00
45	2026-09-28 18:36:02+00	172.20.0.1	GET	/grafana/api/user/stars	200	32	0.029	2026-09-28 18:36:03.939686+00
46	2026-09-28 18:36:02+00	172.20.0.1	GET	/grafana/apis/dashboard.grafana.app/v2/namespaces/default/dashboards/actividad-joomla/dto	200	19075	0.017	2026-09-28 18:36:03.941391+00
47	2026-09-28 18:36:02+00	172.20.0.1	GET	/grafana/api/prometheus/grafana/api/v1/rules	200	71	0.007	2026-09-28 18:36:03.94359+00
48	2026-09-28 18:36:02+00	172.20.0.1	GET	/grafana/api/plugins/grafana-postgresql-datasource/settings	200	1387	0.002	2026-09-28 18:36:03.945228+00
49	2026-09-28 18:36:03+00	172.20.0.1	GET	/grafana/api/annotations	200	32	0.005	2026-09-28 18:36:03.947872+00
50	2026-09-28 18:36:03+00	172.20.0.1	POST	/grafana/api/ds/query	200	307	0.046	2026-09-28 18:36:03.949261+00
51	2026-09-28 18:36:03+00	172.20.0.1	POST	/grafana/api/ds/query	200	879	0.047	2026-09-28 18:36:03.951437+00
52	2026-09-28 18:36:03+00	172.20.0.1	POST	/grafana/api/ds/query	200	332	0.053	2026-09-28 18:36:03.95251+00
53	2026-09-28 18:36:08+00	172.20.0.1	GET	/grafana/api/annotations	200	32	0.007	2026-09-28 18:36:09.95574+00
54	2026-09-28 18:36:08+00	172.20.0.1	POST	/grafana/api/ds/query	200	332	0.049	2026-09-28 18:36:09.969813+00
55	2026-09-28 18:36:08+00	172.20.0.1	POST	/grafana/api/ds/query	200	307	0.048	2026-09-28 18:36:09.971824+00
56	2026-09-28 18:36:08+00	172.20.0.1	POST	/grafana/api/ds/query	200	1215	0.053	2026-09-28 18:36:09.973454+00
57	2026-09-28 18:36:12+00	172.20.0.1	POST	/grafana/api/frontend-metrics	200	25	0.002	2026-09-28 18:36:13.974858+00
58	2026-09-28 18:36:14+00	172.20.0.1	GET	/grafana/api/annotations	200	32	0.007	2026-09-28 18:36:15.977827+00
59	2026-09-28 18:36:14+00	172.20.0.1	POST	/grafana/api/ds/query	200	331	0.047	2026-09-28 18:36:15.987247+00
60	2026-09-28 18:36:14+00	172.20.0.1	POST	/grafana/api/ds/query	200	308	0.046	2026-09-28 18:36:15.997501+00
61	2026-09-28 18:36:14+00	172.20.0.1	POST	/grafana/api/ds/query	200	1250	0.048	2026-09-28 18:36:16.002676+00
62	2026-09-28 18:36:17+00	172.20.0.1	GET	/jupyter/api/kernels	200	2	0.004	2026-09-28 18:36:18.007345+00
63	2026-09-28 18:36:17+00	172.20.0.1	GET	/jupyter/api/terminals	200	2	0.004	2026-09-28 18:36:18.008861+00
64	2026-09-28 18:36:17+00	172.20.0.1	GET	/jupyter/api/sessions	200	2	0.006	2026-09-28 18:36:18.009983+00
65	2026-09-28 18:36:18+00	172.20.0.1	GET	/jupyter/api/contents/work	200	489	0.065	2026-09-28 18:36:20.012719+00
66	2026-09-28 18:36:21+00	172.20.0.1	GET	/index.php	200	2354	0.089	2026-09-28 18:36:22.017281+00
67	2026-09-28 18:36:23+00	172.20.0.1	POST	/index.php	303	0	0.037	2026-09-28 18:36:24.031734+00
68	2026-09-28 18:36:23+00	172.20.0.1	GET	/index.php/component/users/login	200	3181	0.052	2026-09-28 18:36:24.044871+00
69	2026-09-28 18:36:24+00	172.20.0.1	POST	/index.php/component/users/login	499	0	0.186	2026-09-28 18:36:26.047841+00
70	2026-09-28 18:36:25+00	172.20.0.1	POST	/index.php/component/users/login	303	0	0.278	2026-09-28 18:36:26.062296+00
71	2026-09-28 18:36:25+00	172.20.0.1	GET	/index.php/component/users/login	200	3199	0.056	2026-09-28 18:36:26.064094+00
72	2026-09-28 18:36:27+00	172.20.0.1	POST	/index.php/component/users/login	303	0	0.256	2026-09-28 18:36:28.066856+00
73	2026-09-28 18:36:27+00	172.20.0.1	GET	/index.php/component/users/login	200	3199	0.076	2026-09-28 18:36:28.069396+00
74	2026-09-28 18:36:28+00	172.20.0.1	GET	/jupyter/api/kernels	200	2	0.004	2026-09-28 18:36:30.072962+00
75	2026-09-28 18:36:28+00	172.20.0.1	GET	/jupyter/api/terminals	200	2	0.004	2026-09-28 18:36:30.087391+00
76	2026-09-28 18:36:28+00	172.20.0.1	GET	/jupyter/api/sessions	200	2	0.005	2026-09-28 18:36:30.089304+00
77	2026-09-28 18:36:28+00	172.20.0.1	GET	/jupyter/api/contents/work	200	489	0.006	2026-09-28 18:36:30.09039+00
78	2026-09-28 18:36:28+00	172.20.0.1	GET	/grafana/api/annotations	200	32	0.009	2026-09-28 18:36:30.091453+00
79	2026-09-28 18:36:28+00	172.20.0.1	POST	/grafana/api/ds/query	200	308	0.051	2026-09-28 18:36:30.092566+00
80	2026-09-28 18:36:28+00	172.20.0.1	POST	/grafana/api/ds/query	200	1386	0.052	2026-09-28 18:36:30.093642+00
81	2026-09-28 18:36:28+00	172.20.0.1	POST	/grafana/api/ds/query	200	332	0.061	2026-09-28 18:36:30.094671+00
82	2026-09-28 18:36:32+00	172.20.0.1	POST	/index.php/component/users/login	303	0	0.256	2026-09-28 18:36:34.097995+00
83	2026-09-28 18:36:32+00	172.20.0.1	GET	/index.php/component/users/login	200	3199	0.054	2026-09-28 18:36:34.110842+00
84	2026-09-28 18:36:34+00	172.20.0.1	POST	/index.php/component/users/login	303	0	0.323	2026-09-28 18:36:36.11365+00
85	2026-09-28 18:36:34+00	172.20.0.1	GET	/index.php/component/users/login	200	3199	0.067	2026-09-28 18:36:36.127685+00
86	2026-09-28 18:36:36+00	172.20.0.1	POST	/index.php/component/users/login	303	0	0.256	2026-09-28 18:36:38.130614+00
87	2026-09-28 18:36:36+00	172.20.0.1	GET	/index.php/component/users/login	200	3199	0.046	2026-09-28 18:36:38.13594+00
88	2026-09-28 18:36:38+00	172.20.0.1	GET	/grafana/api/annotations	200	32	0.008	2026-09-28 18:36:40.138377+00
89	2026-09-28 18:36:38+00	172.20.0.1	POST	/grafana/api/ds/query	200	332	0.01	2026-09-28 18:36:40.14018+00
90	2026-09-28 18:36:38+00	172.20.0.1	POST	/grafana/api/ds/query	200	308	0.055	2026-09-28 18:36:40.141725+00
91	2026-09-28 18:36:38+00	172.20.0.1	POST	/grafana/api/ds/query	200	1481	0.054	2026-09-28 18:36:40.143363+00
92	2026-09-28 18:36:49+00	172.20.0.1	POST	/installation/index.php	404	4004	0.038	2026-09-28 18:36:50.145394+00
93	2026-09-28 18:36:53+00	172.20.0.1	GET	/index.php	200	2354	0.062	2026-09-28 18:36:54.161077+00
94	2026-09-28 18:37:16+00	172.20.0.1	POST	/grafana/api/user/auth-tokens/rotate	200	32	0.043	2026-09-28 18:37:18.193708+00
95	2026-09-28 18:37:28+00	172.20.0.1	GET	/jupyter/api/events/subscribe	101	498	70.595	2026-09-28 18:37:30.211958+00
96	2026-09-28 18:37:40+00	172.20.0.1	GET	/administrator/	200	3589	0.075	2026-09-28 18:37:42.237401+00
97	2026-09-28 18:37:40+00	172.20.0.1	GET	/media/templates/administrator/atum/css/vendor/joomla-custom-elements/joomla-alert.min.css	200	2498	0.002	2026-09-28 18:37:42.240034+00
98	2026-09-28 18:37:40+00	172.20.0.1	GET	/media/templates/administrator/atum/css/vendor/fontawesome-free/fontawesome.min.css	200	29139	0.011	2026-09-28 18:37:42.241657+00
99	2026-09-28 18:37:40+00	172.20.0.1	GET	/media/templates/administrator/atum/js/template.min.js	200	1928	0.003	2026-09-28 18:37:42.243043+00
100	2026-09-28 18:37:40+00	172.20.0.1	GET	/media/vendor/bootstrap/js/dropdown.min.js	200	2455	0.003	2026-09-28 18:37:42.244416+00
101	2026-09-28 18:37:40+00	172.20.0.1	GET	/media/templates/administrator/atum/images/logos/brand-large.svg	200	3344	0.001	2026-09-28 18:37:42.245552+00
102	2026-09-28 18:37:40+00	172.20.0.1	GET	/media/plg_system_shortcut/js/shortcut.min.js	200	1357	0.001	2026-09-28 18:37:42.247315+00
103	2026-09-28 18:37:40+00	172.20.0.1	GET	/media/templates/administrator/atum/css/template.min.css	200	54413	0.019	2026-09-28 18:37:42.248651+00
104	2026-09-28 18:37:40+00	172.20.0.1	GET	/media/templates/administrator/atum/images/logos/brand-small.svg	200	1481	0.001	2026-09-28 18:37:42.250445+00
105	2026-09-28 18:37:40+00	172.20.0.1	GET	/media/templates/administrator/atum/images/logos/login.svg	200	1368	0.001	2026-09-28 18:37:42.251689+00
106	2026-09-28 18:37:40+00	172.20.0.1	GET	/media/mod_login/js/admin-login.min.js	200	309	0.001	2026-09-28 18:37:42.253112+00
107	2026-09-28 18:37:40+00	172.20.0.1	GET	/media/vendor/hotkeysjs/js/hotkeys.min.js	200	3320	0.002	2026-09-28 18:37:42.254433+00
108	2026-09-28 18:37:40+00	172.20.0.1	GET	/media/vendor/skipto/js/skipto.min.js	200	8855	0.003	2026-09-28 18:37:42.256927+00
109	2026-09-28 18:37:40+00	172.20.0.1	GET	/media/vendor/bootstrap/js/dom.min.js	200	6685	0.003	2026-09-28 18:37:42.259542+00
110	2026-09-28 18:37:40+00	172.20.0.1	GET	/media/vendor/roboto-fontface/fonts/roboto/Roboto-Bold.woff2	200	64740	0.005	2026-09-28 18:37:42.261458+00
111	2026-09-28 18:37:40+00	172.20.0.1	GET	/media/vendor/bootstrap/js/popper.min.js	200	7706	0.006	2026-09-28 18:37:42.262975+00
112	2026-09-28 18:37:40+00	172.20.0.1	GET	/media/vendor/roboto-fontface/fonts/roboto/Roboto-Regular.woff2	200	64632	0.007	2026-09-28 18:37:42.265035+00
113	2026-09-28 18:37:50+00	172.20.0.1	POST	/administrator/index.php	303	0	0.313	2026-09-28 18:37:52.271085+00
114	2026-09-28 18:37:50+00	172.20.0.1	GET	/administrator/index.php	200	9806	0.17	2026-09-28 18:37:52.283627+00
115	2026-09-28 18:37:50+00	172.20.0.1	GET	/media/plg_system_guidedtours/css/guidedtours.min.css	200	1456	0.001	2026-09-28 18:37:52.285798+00
116	2026-09-28 18:37:50+00	172.20.0.1	GET	/media/com_cpanel/js/admin-cpanel-default.min.js	200	975	0.001	2026-09-28 18:37:52.288354+00
117	2026-09-28 18:37:50+00	172.20.0.1	GET	/media/mod_quickicon/js/quickicon.min.js	200	525	0.002	2026-09-28 18:37:52.289957+00
118	2026-09-28 18:37:50+00	172.20.0.1	GET	/media/mod_sampledata/js/sampledata-process.min.js	200	1234	0.002	2026-09-28 18:37:52.292286+00
119	2026-09-28 18:37:50+00	172.20.0.1	GET	/media/vendor/bootstrap/js/collapse.min.js	200	1517	0.002	2026-09-28 18:37:52.293833+00
120	2026-09-28 18:37:50+00	172.20.0.1	GET	/media/com_cpanel/js/admin-system-loader.min.js	200	619	0.002	2026-09-28 18:37:52.295332+00
121	2026-09-28 18:37:50+00	172.20.0.1	GET	/media/plg_system_guidedtours/js/guidedtours.min.js	200	20170	0.007	2026-09-28 18:37:52.29713+00
122	2026-09-28 18:37:50+00	172.20.0.1	GET	/media/templates/administrator/atum/images/icons/dashboard.svg	200	884	0.001	2026-09-28 18:37:52.298288+00
123	2026-09-28 18:37:50+00	172.20.0.1	GET	/media/plg_quickicon_autoupdate/js/healthcheck.min.js	200	569	0.001	2026-09-28 18:37:52.29972+00
124	2026-09-28 18:37:50+00	172.20.0.1	GET	/media/plg_quickicon_joomlaupdate/js/jupdatecheck.min.js	200	632	0.001	2026-09-28 18:37:52.300995+00
125	2026-09-28 18:37:50+00	172.20.0.1	GET	/media/plg_quickicon_extensionupdate/js/extensionupdatecheck.min.js	200	596	0.001	2026-09-28 18:37:52.302517+00
126	2026-09-28 18:37:50+00	172.20.0.1	GET	/media/plg_quickicon_overridecheck/js/overridecheck.min.js	200	758	0.001	2026-09-28 18:37:52.304272+00
127	2026-09-28 18:37:50+00	172.20.0.1	GET	/media/plg_system_stats/js/stats-message.min.js	200	736	0.001	2026-09-28 18:37:52.305997+00
128	2026-09-28 18:37:50+00	172.20.0.1	GET	/media/vendor/metismenujs/js/metismenujs.min.js	200	1519	0.001	2026-09-28 18:37:52.30783+00
129	2026-09-28 18:37:50+00	172.20.0.1	GET	/media/plg_quickicon_privacycheck/js/privacycheck.min.js	200	761	0.002	2026-09-28 18:37:52.309613+00
130	2026-09-28 18:37:50+00	172.20.0.1	GET	/media/mod_menu/js/admin-menu.min.js	200	1049	0.002	2026-09-28 18:37:52.312034+00
131	2026-09-28 18:37:50+00	172.20.0.1	GET	/media/vendor/roboto-fontface/fonts/roboto/Roboto-Medium.woff2	200	65484	0.001	2026-09-28 18:37:52.313471+00
132	2026-09-28 18:37:50+00	172.20.0.1	GET	/media/vendor/fontawesome-free/webfonts/fa-brands-400.woff2	200	118684	0.003	2026-09-28 18:37:52.315171+00
133	2026-09-28 18:37:50+00	172.20.0.1	GET	/administrator/index.php	200	874	0.065	2026-09-28 18:37:52.316764+00
134	2026-09-28 18:37:50+00	172.20.0.1	GET	/administrator/index.php	200	2867	0.079	2026-09-28 18:37:52.318524+00
135	2026-09-28 18:37:51+00	172.20.0.1	GET	/administrator/index.php	200	27	0.845	2026-09-28 18:37:52.320871+00
136	2026-09-28 18:37:51+00	172.20.0.1	GET	/administrator/index.php	200	21	0.064	2026-09-28 18:37:52.322298+00
137	2026-09-28 18:38:00+00	172.20.0.1	GET	/administrator/index.php	200	2	8.722	2026-09-28 18:38:02.326756+00
138	2026-09-28 18:38:00+00	172.20.0.1	GET	/administrator/index.php	200	83	0.046	2026-09-28 18:38:02.340201+00
139	2026-09-28 18:38:00+00	172.20.0.1	GET	/administrator/index.php	200	2	0.048	2026-09-28 18:38:02.341735+00
140	2026-09-28 18:38:18+00	172.20.0.1	GET	/administrator/index.php	200	146	0.068	2026-09-28 18:38:20.345699+00
141	2026-09-28 18:38:29+00	172.20.0.1	GET	/administrator/index.php	200	7190	0.106	2026-09-28 18:38:30.35251+00
142	2026-09-28 18:38:29+00	172.20.0.1	GET	/media/legacy/js/toolbar.min.js	200	581	0.002	2026-09-28 18:38:30.366104+00
143	2026-09-28 18:38:29+00	172.20.0.1	GET	/media/system/js/joomla-toolbar-button.min.js	200	867	0.003	2026-09-28 18:38:30.36819+00
144	2026-09-28 18:38:29+00	172.20.0.1	GET	/media/vendor/roboto-fontface/fonts/roboto/Roboto-Light.woff2	200	64320	0.002	2026-09-28 18:38:30.370947+00
145	2026-09-28 18:38:30+00	172.20.0.1	GET	/administrator/index.php	200	873	0.06	2026-09-28 18:38:30.373425+00
146	2026-09-28 18:38:31+00	172.20.0.1	GET	/jupyter/api/events/subscribe	101	0	59.997	2026-09-28 18:38:32.376662+00
147	2026-09-28 18:38:45+00	172.20.0.1	GET	/administrator/index.php	200	10	0.049	2026-09-28 18:38:46.406132+00
148	2026-09-28 18:38:56+00	172.20.0.1	GET	/administrator/index.php	303	0	0.061	2026-09-28 18:38:56.426067+00
149	2026-09-28 18:38:56+00	172.20.0.1	GET	/administrator/index.php	200	17915	0.192	2026-09-28 18:38:56.428725+00
150	2026-09-28 18:38:56+00	172.20.0.1	GET	/media/system/css/fields/joomla-media-select.min.css	200	236	0.001	2026-09-28 18:38:56.438298+00
151	2026-09-28 18:38:56+00	172.20.0.1	GET	/media/templates/administrator/atum/css/vendor/joomla-custom-elements/joomla-tab.min.css	200	1466	0.001	2026-09-28 18:38:56.44059+00
152	2026-09-28 18:38:56+00	172.20.0.1	GET	/media/system/css/fields/joomla-field-media.min.css	200	638	0.001	2026-09-28 18:38:56.44387+00
153	2026-09-28 18:38:56+00	172.20.0.1	GET	/media/templates/administrator/atum/css/vendor/choicesjs/choices.min.css	200	3102	0.002	2026-09-28 18:38:56.44649+00
154	2026-09-28 18:38:56+00	172.20.0.1	GET	/media/system/css/fields/calendar.min.css	200	1371	0.001	2026-09-28 18:38:56.448519+00
155	2026-09-28 18:38:56+00	172.20.0.1	GET	/media/system/css/fields/joomla-field-permissions.min.css	200	717	0.001	2026-09-28 18:38:56.449919+00
156	2026-09-28 18:38:56+00	172.20.0.1	GET	/media/plg_editors_tinymce/js/tinymce.min.js	200	1327	0.001	2026-09-28 18:38:56.451227+00
157	2026-09-28 18:38:56+00	172.20.0.1	GET	/media/system/js/editors/editors.min.js	200	932	0.002	2026-09-28 18:38:56.452401+00
158	2026-09-28 18:38:56+00	172.20.0.1	GET	/media/vendor/joomla-custom-elements/js/joomla-tab.min.js	200	2583	0.002	2026-09-28 18:38:56.453919+00
159	2026-09-28 18:38:56+00	172.20.0.1	GET	/media/com_content/js/admin-article-readmore.min.js	200	482	0.002	2026-09-28 18:38:56.455982+00
160	2026-09-28 18:38:56+00	172.20.0.1	GET	/media/plg_editors_tinymce/js/plugins/jxtdbuttons/plugin.min.js	200	1391	0.001	2026-09-28 18:38:56.458158+00
161	2026-09-28 18:38:56+00	172.20.0.1	GET	/media/plg_editors_tinymce/js/plugins/joomla-highlighter/plugin.min.js	200	1083	0.002	2026-09-28 18:38:56.459889+00
162	2026-09-28 18:38:56+00	172.20.0.1	GET	/media/plg_editors_tinymce/js/plugins/dragdrop/plugin.min.js	200	1322	0.001	2026-09-28 18:38:56.461356+00
163	2026-09-28 18:38:56+00	172.20.0.1	GET	/media/plg_editors_tinymce/js/plugins/jtemplate/plugin.min.js	200	3573	0.002	2026-09-28 18:38:56.46284+00
164	2026-09-28 18:38:56+00	172.20.0.1	GET	/media/system/js/fields/select-colour.min.js	200	404	0.001	2026-09-28 18:38:56.46439+00
165	2026-09-28 18:38:56+00	172.20.0.1	GET	/media/plg_editors_tinymce/js/plugins/abbr/plugin.min.js	200	1082	0.001	2026-09-28 18:38:56.465977+00
166	2026-09-28 18:38:56+00	172.20.0.1	GET	/media/system/js/fields/joomla-field-fancy-select.min.js	200	2086	0.001	2026-09-28 18:38:56.467346+00
167	2026-09-28 18:38:56+00	172.20.0.1	GET	/media/system/js/fields/joomla-field-media.min.js	200	2505	0.001	2026-09-28 18:38:56.468767+00
168	2026-09-28 18:38:56+00	172.20.0.1	GET	/media/system/js/fields/joomla-media-select.min.js	200	3520	0.001	2026-09-28 18:38:56.470211+00
169	2026-09-28 18:38:56+00	172.20.0.1	GET	/media/system/js/fields/joomla-field-user.min.js	200	1006	0.001	2026-09-28 18:38:56.471878+00
170	2026-09-28 18:38:56+00	172.20.0.1	GET	/media/vendor/short-and-sweet/js/short-and-sweet.min.js	200	1028	0.001	2026-09-28 18:38:56.473487+00
171	2026-09-28 18:38:56+00	172.20.0.1	GET	/media/plg_editors-xtd_image/js/button-image.min.js	200	502	0.001	2026-09-28 18:38:56.475141+00
172	2026-09-28 18:38:56+00	172.20.0.1	GET	/media/system/js/fields/joomla-field-permissions.min.js	200	1323	0.001	2026-09-28 18:38:56.477286+00
173	2026-09-28 18:38:56+00	172.20.0.1	GET	/media/system/js/inlinehelp.min.js	200	487	0.001	2026-09-28 18:38:56.478984+00
174	2026-09-28 18:38:56+00	172.20.0.1	GET	/media/layouts/js/joomla/form/field/category-change.min.js	200	446	0.002	2026-09-28 18:38:56.480371+00
175	2026-09-28 18:38:56+00	172.20.0.1	GET	/media/system/js/fields/calendar-locales/date/gregorian/date-helper.min.js	200	1716	0.001	2026-09-28 18:38:56.481936+00
176	2026-09-28 18:38:56+00	172.20.0.1	GET	/media/vendor/choicesjs/js/choices.min.js	200	20739	0.005	2026-09-28 18:38:56.483271+00
177	2026-09-28 18:38:56+00	172.20.0.1	GET	/media/system/js/fields/calendar.min.js	200	7200	0.002	2026-09-28 18:38:56.484464+00
178	2026-09-28 18:38:56+00	172.20.0.1	GET	/media/templates/administrator/atum/images/select-bg-dark.svg	200	508	0.001	2026-09-28 18:38:56.485944+00
179	2026-09-28 18:38:56+00	172.20.0.1	GET	/media/vendor/roboto-fontface/fonts/roboto/Roboto-RegularItalic.woff2	200	70280	0.003	2026-09-28 18:38:56.487519+00
180	2026-09-28 18:38:56+00	172.20.0.1	GET	/media/system/js/editors/editor-api.min.js	200	785	0.001	2026-09-28 18:38:56.489065+00
181	2026-09-28 18:38:56+00	172.20.0.1	GET	/media/system/js/editors/editor-decorator.min.js	200	343	0.002	2026-09-28 18:38:56.490473+00
182	2026-09-28 18:38:56+00	172.20.0.1	GET	/media/vendor/tinymce/tinymce.min.js	200	167760	0.047	2026-09-28 18:38:56.491741+00
183	2026-09-28 18:38:56+00	172.20.0.1	GET	/media/vendor/tinymce/plugins/autolink/plugin.min.js	200	1616	0.002	2026-09-28 18:38:58.493943+00
184	2026-09-28 18:38:56+00	172.20.0.1	GET	/media/vendor/tinymce/plugins/lists/plugin.min.js	200	2106	0.001	2026-09-28 18:38:58.507102+00
185	2026-09-28 18:38:56+00	172.20.0.1	GET	/media/vendor/tinymce/plugins/importcss/plugin.min.js	200	1859	0.001	2026-09-28 18:38:58.509506+00
186	2026-09-28 18:38:56+00	172.20.0.1	GET	/media/vendor/tinymce/models/dom/model.min.js	200	32718	0.008	2026-09-28 18:38:58.511712+00
187	2026-09-28 18:38:56+00	172.20.0.1	GET	/media/vendor/tinymce/icons/default/icons.min.js	200	27641	0.007	2026-09-28 18:38:58.513782+00
188	2026-09-28 18:38:56+00	172.20.0.1	GET	/media/vendor/tinymce/plugins/quickbars/plugin.min.js	200	2225	0.001	2026-09-28 18:38:58.515643+00
189	2026-09-28 18:38:56+00	172.20.0.1	GET	/media/vendor/tinymce/plugins/searchreplace/plugin.min.js	200	5413	0.002	2026-09-28 18:38:58.51749+00
190	2026-09-28 18:38:56+00	172.20.0.1	GET	/media/vendor/tinymce/plugins/link/plugin.min.js	200	6928	0.002	2026-09-28 18:38:58.519675+00
191	2026-09-28 18:38:56+00	172.20.0.1	GET	/media/vendor/tinymce/plugins/anchor/plugin.min.js	200	1267	0.001	2026-09-28 18:38:58.521475+00
192	2026-09-28 18:38:56+00	172.20.0.1	GET	/media/vendor/tinymce/plugins/code/plugin.min.js	200	468	0.002	2026-09-28 18:38:58.523275+00
193	2026-09-28 18:38:56+00	172.20.0.1	GET	/media/vendor/tinymce/plugins/image/plugin.min.js	200	6839	0.009	2026-09-28 18:38:58.525157+00
194	2026-09-28 18:38:56+00	172.20.0.1	GET	/media/vendor/tinymce/plugins/fullscreen/plugin.min.js	200	5828	0.002	2026-09-28 18:38:58.526927+00
195	2026-09-28 18:38:56+00	172.20.0.1	GET	/media/vendor/tinymce/plugins/table/plugin.min.js	200	13702	0.003	2026-09-28 18:38:58.528856+00
196	2026-09-28 18:38:56+00	172.20.0.1	GET	/media/vendor/tinymce/themes/silver/theme.min.js	200	141845	0.032	2026-09-28 18:38:58.530785+00
197	2026-09-28 18:38:56+00	172.20.0.1	GET	/media/vendor/tinymce/plugins/emoticons/plugin.min.js	200	2818	0.001	2026-09-28 18:38:58.532478+00
198	2026-09-28 18:38:56+00	172.20.0.1	GET	/media/vendor/tinymce/plugins/charmap/plugin.min.js	200	4394	0.002	2026-09-28 18:38:58.534356+00
199	2026-09-28 18:38:56+00	172.20.0.1	GET	/media/vendor/tinymce/plugins/directionality/plugin.min.js	200	1981	0.003	2026-09-28 18:38:58.536454+00
200	2026-09-28 18:38:56+00	172.20.0.1	GET	/media/vendor/tinymce/plugins/visualblocks/plugin.min.js	200	543	0.001	2026-09-28 18:38:58.538326+00
201	2026-09-28 18:38:56+00	172.20.0.1	GET	/media/vendor/tinymce/plugins/nonbreaking/plugin.min.js	200	742	0.001	2026-09-28 18:38:58.540691+00
202	2026-09-28 18:38:56+00	172.20.0.1	GET	/media/vendor/tinymce/plugins/visualchars/plugin.min.js	200	2465	0.004	2026-09-28 18:38:58.54291+00
203	2026-09-28 18:38:56+00	172.20.0.1	GET	/media/vendor/tinymce/plugins/media/plugin.min.js	200	6339	0.009	2026-09-28 18:38:58.545172+00
204	2026-09-28 18:38:56+00	172.20.0.1	GET	/media/vendor/tinymce/plugins/preview/plugin.min.js	200	3267	0.001	2026-09-28 18:38:58.547028+00
205	2026-09-28 18:38:56+00	172.20.0.1	GET	/media/vendor/tinymce/plugins/codesample/plugin.min.js	200	15664	0.004	2026-09-28 18:38:58.549248+00
206	2026-09-28 18:38:56+00	172.20.0.1	GET	/media/vendor/tinymce/plugins/insertdatetime/plugin.min.js	200	1252	0.002	2026-09-28 18:38:58.551446+00
207	2026-09-28 18:38:56+00	172.20.0.1	GET	/media/vendor/tinymce/plugins/advlist/plugin.min.js	200	1730	0.003	2026-09-28 18:38:58.55353+00
208	2026-09-28 18:38:56+00	172.20.0.1	GET	/media/vendor/tinymce/plugins/wordcount/plugin.min.js	200	5325	0.005	2026-09-28 18:38:58.555081+00
209	2026-09-28 18:38:56+00	172.20.0.1	GET	/media/vendor/tinymce/plugins/autosave/plugin.min.js	200	1354	0.002	2026-09-28 18:38:58.556898+00
210	2026-09-28 18:38:56+00	172.20.0.1	GET	/media/vendor/tinymce/skins/ui/oxide-dark/skin.min.css	200	24696	0.008	2026-09-28 18:38:58.558535+00
211	2026-09-28 18:38:56+00	172.20.0.1	GET	/media/templates/site/cassiopeia/css/editor.min.css	200	429	0.001	2026-09-28 18:38:58.560531+00
212	2026-09-28 18:38:56+00	172.20.0.1	GET	/media/vendor/tinymce/skins/content/dark/content.min.css	200	504	0.001	2026-09-28 18:38:58.562062+00
213	2026-09-28 18:38:56+00	172.20.0.1	GET	/media/vendor/tinymce/skins/ui/oxide-dark/content.min.css	200	7535	0.002	2026-09-28 18:38:58.563799+00
214	2026-09-28 18:38:56+00	172.20.0.1	GET	/media/vendor/tinymce/plugins/emoticons/js/emojis.min.js	200	30308	0.005	2026-09-28 18:38:58.565913+00
215	2026-09-28 18:40:48+00	172.20.0.1	GET	/media/system/images/joomla-loader.svg	200	1632	0.001	2026-09-28 18:40:50.601389+00
216	2026-09-28 18:40:48+00	172.20.0.1	GET	/administrator/index.php	200	3737	0.069	2026-09-28 18:40:50.615433+00
217	2026-09-28 18:40:48+00	172.20.0.1	GET	/media/com_media/css/media-manager.min.css	200	4233	0.001	2026-09-28 18:40:50.617146+00
218	2026-09-28 18:40:48+00	172.20.0.1	GET	/media/com_media/js/media-manager.min.js	200	62804	0.011	2026-09-28 18:40:50.618594+00
219	2026-09-28 18:40:48+00	172.20.0.1	GET	/administrator/index.php	200	1870	0.09	2026-09-28 18:40:50.619811+00
220	2026-09-28 18:40:48+00	172.20.0.1	GET	/images/joomla_black.png	200	4979	0.001	2026-09-28 18:40:50.621746+00
221	2026-09-28 18:40:48+00	172.20.0.1	GET	/images/powered_by.png	200	3197	0.001	2026-09-28 18:40:50.623189+00
222	2026-09-28 18:41:28+00	172.20.0.1	GET	/grafana/api/annotations	200	32	0.033	2026-09-28 18:41:30.635905+00
223	2026-09-28 18:41:28+00	172.20.0.1	POST	/grafana/api/ds/query	200	308	0.029	2026-09-28 18:41:30.649578+00
224	2026-09-28 18:41:28+00	172.20.0.1	POST	/grafana/api/ds/query	200	1981	0.052	2026-09-28 18:41:30.650968+00
225	2026-09-28 18:41:28+00	172.20.0.1	POST	/grafana/api/ds/query	200	333	0.069	2026-09-28 18:41:30.652371+00
226	2026-09-28 18:41:35+00	172.20.0.1	POST	/administrator/index.php	200	478	0.102	2026-09-28 18:41:36.656259+00
227	2026-09-28 18:41:35+00	172.20.0.1	GET	/images/cat-cat-meme.png	200	109368	0.001	2026-09-28 18:41:36.65865+00
228	2026-09-28 18:41:37+00	172.20.0.1	GET	/administrator/index.php	200	533	0.06	2026-09-28 18:41:38.661242+00
229	2026-09-28 18:41:37+00	172.20.0.1	GET	/images/cat-cat-meme.png	200	109368	0.001	2026-09-28 18:41:38.665442+00
230	2026-09-28 18:41:39+00	172.20.0.1	POST	/administrator/index.php	409	58	0.088	2026-09-28 18:41:40.668665+00
231	2026-09-28 18:41:49+00	172.20.0.1	POST	/installation/index.php	404	4004	0.042	2026-09-28 18:41:50.686923+00
232	2026-09-28 18:42:10+00	172.20.0.1	GET	/administrator/index.php	200	3737	0.076	2026-09-28 18:42:12.695725+00
233	2026-09-28 18:42:10+00	172.20.0.1	GET	/administrator/index.php	200	2294	0.093	2026-09-28 18:42:12.710243+00
234	2026-09-28 18:42:10+00	172.20.0.1	GET	/images/cat-cat-meme.png	304	0	0.002	2026-09-28 18:42:12.711755+00
235	2026-09-28 18:42:37+00	172.20.0.1	GET	/administrator/index.php	200	533	0.047	2026-09-28 18:42:38.722509+00
236	2026-09-28 18:42:42+00	172.20.0.1	POST	/grafana/api/ds/query	200	335	0.016	2026-09-28 18:42:44.736812+00
237	2026-09-28 18:42:42+00	172.20.0.1	GET	/grafana/api/annotations	200	32	0.01	2026-09-28 18:42:44.749723+00
238	2026-09-28 18:42:42+00	172.20.0.1	POST	/grafana/api/ds/query	200	309	0.013	2026-09-28 18:42:44.751685+00
239	2026-09-28 18:42:42+00	172.20.0.1	POST	/grafana/api/ds/query	200	1910	0.011	2026-09-28 18:42:44.753463+00
240	2026-09-28 18:42:44+00	172.20.0.1	GET	/jupyter/api/kernelspecs	200	498	0.082	2026-09-28 18:42:46.7561+00
241	2026-09-28 18:42:44+00	172.20.0.1	GET	/jupyter/api/me	200	194	0.072	2026-09-28 18:42:46.768863+00
242	2026-09-28 18:42:44+00	172.20.0.1	GET	/jupyter/api/kernels	200	2	0.073	2026-09-28 18:42:46.770516+00
243	2026-09-28 18:42:44+00	172.20.0.1	GET	/jupyter/api/terminals	200	2	0.073	2026-09-28 18:42:46.773063+00
244	2026-09-28 18:42:44+00	172.20.0.1	GET	/jupyter/api/sessions	200	2	0.065	2026-09-28 18:42:46.77435+00
245	2026-09-28 18:42:44+00	172.20.0.1	GET	/jupyter/api/contents/work	200	489	0.07	2026-09-28 18:42:46.775803+00
246	2026-09-28 18:42:50+00	172.20.0.1	POST	/grafana/api/ds/query	200	309	0.018	2026-09-28 18:42:50.778623+00
247	2026-09-28 18:42:50+00	172.20.0.1	POST	/grafana/api/ds/query	200	335	0.018	2026-09-28 18:42:50.792008+00
248	2026-09-28 18:42:50+00	172.20.0.1	POST	/grafana/api/ds/query	200	1896	0.018	2026-09-28 18:42:50.793809+00
249	2026-09-28 18:42:50+00	172.20.0.1	GET	/grafana/api/annotations	200	32	0.022	2026-09-28 18:42:50.79503+00
250	2026-09-28 18:42:55+00	172.20.0.1	GET	/jupyter/api/kernels	200	2	0.004	2026-09-28 18:42:56.799964+00
251	2026-09-28 18:42:55+00	172.20.0.1	GET	/jupyter/api/terminals	200	2	0.007	2026-09-28 18:42:56.81905+00
252	2026-09-28 18:42:55+00	172.20.0.1	GET	/jupyter/api/sessions	200	2	0.007	2026-09-28 18:42:56.83209+00
253	2026-09-28 18:42:55+00	172.20.0.1	GET	/jupyter/api/contents/work	200	489	0.016	2026-09-28 18:42:56.841168+00
254	2026-09-28 18:43:46+00	172.20.0.1	GET	/jupyter/api/kernelspecs	200	498	0.003	2026-09-28 18:43:46.851342+00
255	2026-09-28 18:43:46+00	172.20.0.1	GET	/jupyter/api/me	200	194	0.004	2026-09-28 18:43:46.864816+00
256	2026-09-28 18:43:55+00	172.20.0.1	GET	/jupyter/api/events/subscribe	101	498	70.813	2026-09-28 18:43:56.870712+00
257	2026-09-28 18:44:44+00	172.20.0.1	GET	/administrator/index.php	200	3737	0.067	2026-09-28 18:44:44.901476+00
258	2026-09-28 18:44:44+00	172.20.0.1	GET	/administrator/index.php	200	2294	0.06	2026-09-28 18:44:44.915268+00
259	2026-09-28 18:44:44+00	172.20.0.1	GET	/images/cat-cat-meme.png	304	0	0.001	2026-09-28 18:44:44.917512+00
260	2026-09-28 18:44:49+00	172.20.0.1	POST	/administrator/index.php	413	585	0.022	2026-09-28 18:44:50.921756+00
261	2026-09-28 18:44:55+00	172.20.0.1	POST	/administrator/index.php	413	585	0.003	2026-09-28 18:44:56.939189+00
262	2026-09-28 18:44:58+00	172.20.0.1	GET	/jupyter/api/events/subscribe	101	0	60.002	2026-09-28 18:44:58.953138+00
263	2026-09-28 18:45:06+00	172.20.0.1	GET	/administrator/index.php	200	3737	0.073	2026-09-28 18:45:06.970877+00
264	2026-09-28 18:45:06+00	172.20.0.1	GET	/administrator/index.php	200	2294	0.049	2026-09-28 18:45:06.979635+00
265	2026-09-28 18:45:06+00	172.20.0.1	GET	/images/cat-cat-meme.png	304	0	0.001	2026-09-28 18:45:06.984559+00
266	2026-09-28 18:45:11+00	172.20.0.1	POST	/administrator/index.php	413	585	0.005	2026-09-28 18:45:12.988545+00
267	2026-09-28 18:45:29+00	172.20.0.1	GET	/administrator/index.php	200	3737	0.088	2026-09-28 18:45:31.009609+00
268	2026-09-28 18:45:29+00	172.20.0.1	GET	/administrator/index.php	200	2294	0.056	2026-09-28 18:45:31.023145+00
269	2026-09-28 18:45:29+00	172.20.0.1	GET	/images/cat-cat-meme.png	304	0	0.001	2026-09-28 18:45:31.025073+00
270	2026-09-28 18:45:33+00	172.20.0.1	POST	/administrator/index.php	413	585	0.004	2026-09-28 18:45:35.028608+00
271	2026-09-28 18:45:41+00	172.20.0.1	POST	/administrator/index.php	200	372	0.058	2026-09-28 18:45:43.043141+00
272	2026-09-28 18:45:43+00	172.20.0.1	GET	/administrator/index.php	200	57	0.047	2026-09-28 18:45:45.046872+00
273	2026-09-28 18:45:48+00	172.20.0.1	GET	/administrator/index.php	200	57	0.046	2026-09-28 18:45:49.050994+00
274	2026-09-28 18:45:49+00	172.20.0.1	GET	/administrator/index.php	200	57	0.047	2026-09-28 18:45:51.066566+00
275	2026-09-28 18:45:50+00	172.20.0.1	GET	/administrator/index.php	200	57	0.046	2026-09-28 18:45:51.080487+00
276	2026-09-28 18:45:51+00	172.20.0.1	GET	/administrator/index.php	200	57	0.046	2026-09-28 18:45:53.08417+00
277	2026-09-28 18:45:56+00	172.20.0.1	POST	/administrator/index.php	413	585	0.005	2026-09-28 18:45:57.098554+00
278	2026-09-28 18:46:02+00	172.20.0.1	POST	/administrator/index.php	413	585	0.004	2026-09-28 18:46:03.114557+00
279	2026-09-28 18:46:49+00	172.20.0.1	POST	/installation/index.php	404	4004	0.052	2026-09-28 18:46:51.173676+00
280	2026-09-28 18:47:08+00	172.20.0.1	POST	/grafana/api/user/auth-tokens/rotate	200	32	0.061	2026-09-28 18:47:09.217363+00
281	2026-09-28 18:49:05+00	172.20.0.1	POST	/administrator/index.php	200	561	0.071	2026-09-28 18:49:07.312361+00
282	2026-09-28 18:49:05+00	172.20.0.1	GET	/images/ahhh/diagrama_arquitectura_joomla_ligero.jpg	200	120571	0.001	2026-09-28 18:49:07.326663+00
283	2026-09-28 18:49:08+00	172.20.0.1	GET	/administrator/index.php	200	645	0.056	2026-09-28 18:49:09.329603+00
284	2026-09-28 18:49:08+00	172.20.0.1	GET	/images/ahhh/diagrama_arquitectura_joomla_ligero.jpg	200	120571	0.001	2026-09-28 18:49:09.331613+00
285	2026-09-28 18:49:43+00	172.20.0.1	POST	/administrator/index.php	303	0	0.532	2026-09-28 18:49:43.344807+00
286	2026-09-28 18:49:43+00	172.20.0.1	GET	/administrator/index.php	200	18793	0.161	2026-09-28 18:49:43.346655+00
287	2026-09-28 18:49:43+00	172.20.0.1	GET	/media/vendor/bootstrap/js/modal.min.js	200	2538	0.002	2026-09-28 18:49:45.349022+00
288	2026-09-28 18:49:43+00	172.20.0.1	GET	/images/cat-cat-meme.png	304	0	0.001	2026-09-28 18:49:45.362951+00
289	2026-09-28 18:49:43+00	172.20.0.1	GET	/images/ahhh/diagrama_arquitectura_joomla_ligero.jpg	304	0	0.002	2026-09-28 18:49:45.365345+00
290	2026-09-28 18:49:47+00	172.20.0.1	POST	/administrator/index.php	303	0	0.333	2026-09-28 18:49:49.368449+00
291	2026-09-28 18:49:47+00	172.20.0.1	GET	/administrator/index.php	200	11007	0.135	2026-09-28 18:49:49.381989+00
292	2026-09-28 18:49:47+00	172.20.0.1	GET	/media/system/js/table-columns.min.js	200	1323	0.001	2026-09-28 18:49:49.383605+00
293	2026-09-28 18:49:47+00	172.20.0.1	GET	/media/templates/administrator/atum/css/system/searchtools/searchtools.min.css	200	529	0.002	2026-09-28 18:49:49.385043+00
294	2026-09-28 18:49:47+00	172.20.0.1	GET	/media/system/js/multiselect.min.js	200	917	0.002	2026-09-28 18:49:49.386718+00
295	2026-09-28 18:49:47+00	172.20.0.1	GET	/media/system/js/list-view.min.js	200	558	0.001	2026-09-28 18:49:49.387983+00
296	2026-09-28 18:49:47+00	172.20.0.1	GET	/media/layouts/js/joomla/html/batch/batch-copymove.min.js	200	418	0.001	2026-09-28 18:49:49.38922+00
297	2026-09-28 18:49:47+00	172.20.0.1	GET	/media/layouts/js/joomla/html/batch/batch-tag-addremove.min.js	200	359	0.001	2026-09-28 18:49:49.390462+00
298	2026-09-28 18:49:47+00	172.20.0.1	GET	/media/system/js/searchtools.min.js	200	2724	0.002	2026-09-28 18:49:49.391998+00
299	2026-09-28 18:49:54+00	172.20.0.1	GET	/administrator/index.php	200	10460	0.129	2026-09-28 18:49:55.39483+00
300	2026-09-28 18:49:54+00	172.20.0.1	GET	/media/vendor/dragula/css/dragula.min.css	200	171	0.001	2026-09-28 18:49:55.407691+00
301	2026-09-28 18:49:54+00	172.20.0.1	GET	/media/vendor/dragula/js/dragula.min.js	200	5038	0.002	2026-09-28 18:49:55.409859+00
302	2026-09-28 18:49:54+00	172.20.0.1	GET	/media/system/js/draggable.min.js	200	1068	0.001	2026-09-28 18:49:55.411145+00
303	2026-09-28 18:50:32+00	172.20.0.1	GET	/administrator/index.php	303	0	0.054	2026-09-28 18:50:33.426309+00
304	2026-09-28 18:50:32+00	172.20.0.1	GET	/administrator/index.php	200	9505	0.099	2026-09-28 18:50:33.4414+00
305	2026-09-28 18:50:32+00	172.20.0.1	GET	/media/com_menus/js/admin-item-edit.min.js	200	1063	0.002	2026-09-28 18:50:33.443491+00
306	2026-09-28 18:50:32+00	172.20.0.1	GET	/media/system/js/fields/modal-content-select-field.min.js	200	1189	0.002	2026-09-28 18:50:33.445061+00
307	2026-09-28 18:50:32+00	172.20.0.1	GET	/media/com_menus/js/admin-item-edit_modules.min.js	200	1052	0.002	2026-09-28 18:50:33.446416+00
308	2026-09-28 18:50:36+00	172.20.0.1	POST	/administrator/index.php	303	0	0.115	2026-09-28 18:50:37.44895+00
309	2026-09-28 18:50:36+00	172.20.0.1	GET	/administrator/index.php	200	10460	0.1	2026-09-28 18:50:37.462285+00
310	2026-09-28 18:51:26+00	172.20.0.1	GET	/administrator/index.php	200	10948	0.266	2026-09-28 18:51:27.477903+00
311	2026-09-28 18:51:35+00	172.20.0.1	GET	/administrator/index.php	303	0	0.072	2026-09-28 18:51:35.493568+00
312	2026-09-28 18:51:35+00	172.20.0.1	GET	/administrator/index.php	200	18765	0.143	2026-09-28 18:51:35.495663+00
313	2026-09-28 18:51:35+00	172.20.0.1	GET	/images/ahhh/diagrama_arquitectura_joomla_ligero.jpg	304	0	0.001	2026-09-28 18:51:35.497155+00
314	2026-09-28 18:51:35+00	172.20.0.1	GET	/images/cat-cat-meme.png	304	0	0.001	2026-09-28 18:51:35.499102+00
315	2026-09-28 18:51:38+00	172.20.0.1	POST	/administrator/index.php	303	0	0.376	2026-09-28 18:51:39.502025+00
316	2026-09-28 18:51:39+00	172.20.0.1	GET	/administrator/index.php	200	11007	0.114	2026-09-28 18:51:39.504121+00
317	2026-09-28 18:51:47+00	172.20.0.1	GET	/administrator/index.php	200	10460	0.09	2026-09-28 18:51:49.509853+00
318	2026-09-28 18:51:49+00	172.20.0.1	POST	/installation/index.php	404	4004	0.044	2026-09-28 18:51:51.518131+00
319	2026-09-28 18:52:01+00	172.20.0.1	POST	/administrator/index.php	303	19866	0.091	2026-09-28 18:52:03.537472+00
320	2026-09-28 18:52:01+00	172.20.0.1	GET	/administrator/index.php	200	10372	0.103	2026-09-28 18:52:03.550134+00
321	2026-09-28 18:52:18+00	172.20.0.1	GET	/administrator/index.php	303	0	0.073	2026-09-28 18:52:19.555958+00
322	2026-09-28 18:52:18+00	172.20.0.1	GET	/administrator/index.php	200	11804	0.137	2026-09-28 18:52:19.569003+00
323	2026-09-28 18:52:29+00	172.20.0.1	POST	/administrator/index.php	303	0	0.078	2026-09-28 18:52:29.57455+00
324	2026-09-28 18:52:29+00	172.20.0.1	GET	/administrator/index.php	200	10372	0.09	2026-09-28 18:52:31.577018+00
325	2026-09-28 18:52:38+00	172.20.0.1	POST	/administrator/index.php	303	19866	0.094	2026-09-28 18:52:39.593037+00
326	2026-09-28 18:52:38+00	172.20.0.1	GET	/administrator/index.php	200	10371	0.089	2026-09-28 18:52:39.594865+00
327	2026-09-28 18:52:40+00	172.20.0.1	POST	/administrator/index.php	303	19866	0.084	2026-09-28 18:52:41.595293+00
328	2026-09-28 18:52:40+00	172.20.0.1	GET	/administrator/index.php	200	10372	0.104	2026-09-28 18:52:41.60802+00
329	2026-09-28 18:53:41+00	172.20.0.1	GET	/administrator/index.php	303	0	0.062	2026-09-28 18:53:43.626672+00
330	2026-09-28 18:53:42+00	172.20.0.1	GET	/administrator/index.php	200	11804	0.127	2026-09-28 18:53:43.64+00
331	2026-09-28 18:53:54+00	172.20.0.1	GET	/administrator/index.php	200	5274	0.086	2026-09-28 18:53:55.646568+00
332	2026-09-28 18:53:54+00	172.20.0.1	GET	/media/system/js/modal-content-select.min.js	200	500	0.001	2026-09-28 18:53:55.648421+00
333	2026-09-28 18:53:54+00	172.20.0.1	GET	/media/com_menus/js/admin-item-modal.min.js	200	399	0.002	2026-09-28 18:53:55.650121+00
334	2026-09-28 18:54:01+00	172.20.0.1	POST	/administrator/index.php	303	0	0.106	2026-09-28 18:54:03.654442+00
335	2026-09-28 18:54:01+00	172.20.0.1	GET	/administrator/index.php	200	10596	0.121	2026-09-28 18:54:03.65712+00
336	2026-09-28 18:54:06+00	172.20.0.1	GET	/administrator/index.php	200	4720	0.112	2026-09-28 18:54:07.661003+00
337	2026-09-28 18:54:06+00	172.20.0.1	GET	/media/com_content/js/admin-articles-modal.min.js	200	568	0.001	2026-09-28 18:54:07.6629+00
338	2026-09-28 18:54:18+00	172.20.0.1	POST	/administrator/index.php	303	0	0.179	2026-09-28 18:54:19.666146+00
339	2026-09-28 18:54:18+00	172.20.0.1	GET	/administrator/index.php	200	10403	0.119	2026-09-28 18:54:19.668127+00
340	2026-09-28 18:54:24+00	172.20.0.1	GET	/administrator/index.php	200	10338	0.132	2026-09-28 18:54:25.672038+00
341	2026-09-28 18:54:35+00	172.20.0.1	GET	/	200	2992	0.096	2026-09-28 18:54:35.6781+00
342	2026-09-28 18:54:35+00	172.20.0.1	GET	/images/ahhh/diagrama_arquitectura_joomla_ligero.jpg	304	0	0.001	2026-09-28 18:54:35.681833+00
343	2026-09-28 18:54:35+00	172.20.0.1	GET	/images/cat-cat-meme.png	304	0	0	2026-09-28 18:54:35.684116+00
344	2026-09-28 18:54:57+00	172.20.0.1	POST	/grafana/api/ds/query	200	1597	0.011	2026-09-28 18:54:57.692431+00
345	2026-09-28 18:54:57+00	172.20.0.1	POST	/grafana/api/ds/query	200	308	0.013	2026-09-28 18:54:57.706538+00
346	2026-09-28 18:54:57+00	172.20.0.1	GET	/grafana/api/annotations	200	32	0.039	2026-09-28 18:54:57.70851+00
347	2026-09-28 18:54:57+00	172.20.0.1	POST	/grafana/api/ds/query	200	342	0.052	2026-09-28 18:54:57.710212+00
348	2026-09-28 18:54:57+00	172.20.0.1	GET	/grafana/api/live/ws	101	446	1135.279	2026-09-28 18:54:57.712153+00
349	2026-09-28 18:54:57+00	172.20.0.1	GET	/jupyter/api/kernelspecs	200	498	0.004	2026-09-28 18:54:57.714862+00
350	2026-09-28 18:54:57+00	172.20.0.1	GET	/jupyter/api/me	200	194	0.005	2026-09-28 18:54:57.716819+00
351	2026-09-28 18:54:57+00	172.20.0.1	GET	/jupyter/api/kernels	200	2	0.005	2026-09-28 18:54:57.718502+00
352	2026-09-28 18:54:57+00	172.20.0.1	GET	/jupyter/api/terminals	200	2	0.005	2026-09-28 18:54:57.720535+00
353	2026-09-28 18:54:57+00	172.20.0.1	GET	/jupyter/api/sessions	200	2	0.004	2026-09-28 18:54:57.722527+00
354	2026-09-28 18:54:57+00	172.20.0.1	GET	/jupyter/api/contents/work	200	489	0.008	2026-09-28 18:54:57.725454+00
355	2026-09-28 18:54:57+00	172.20.0.1	GET	/jupyter/api/events/subscribe	101	249	0.192	2026-09-28 18:54:59.728284+00
\.


--
-- Name: actividad_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.actividad_id_seq', 10, true);


--
-- Name: jos_action_log_config_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.jos_action_log_config_id_seq', 24, false);


--
-- Name: jos_action_logs_extensions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.jos_action_logs_extensions_id_seq', 22, false);


--
-- Name: jos_action_logs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.jos_action_logs_id_seq', 44, true);


--
-- Name: jos_assets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.jos_assets_id_seq', 100, true);


--
-- Name: jos_banner_clients_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.jos_banner_clients_id_seq', 1, false);


--
-- Name: jos_banners_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.jos_banners_id_seq', 1, false);


--
-- Name: jos_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.jos_categories_id_seq', 8, false);


--
-- Name: jos_contact_details_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.jos_contact_details_id_seq', 1, false);


--
-- Name: jos_content_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.jos_content_id_seq', 1, true);


--
-- Name: jos_content_types_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.jos_content_types_type_id_seq', 10000, false);


--
-- Name: jos_extensions_extension_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.jos_extensions_extension_id_seq', 251, true);


--
-- Name: jos_fields_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.jos_fields_groups_id_seq', 1, false);


--
-- Name: jos_fields_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.jos_fields_id_seq', 1, false);


--
-- Name: jos_finder_filters_filter_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.jos_finder_filters_filter_id_seq', 1, false);


--
-- Name: jos_finder_links_link_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.jos_finder_links_link_id_seq', 1, true);


--
-- Name: jos_finder_taxonomy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.jos_finder_taxonomy_id_seq', 9, true);


--
-- Name: jos_finder_terms_term_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.jos_finder_terms_term_id_seq', 3, true);


--
-- Name: jos_finder_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.jos_finder_types_id_seq', 1, true);


--
-- Name: jos_guidedtour_steps_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.jos_guidedtour_steps_id_seq', 118, false);


--
-- Name: jos_guidedtours_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.jos_guidedtours_id_seq', 13, false);


--
-- Name: jos_history_version_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.jos_history_version_id_seq', 1, true);


--
-- Name: jos_languages_lang_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.jos_languages_lang_id_seq', 2, false);


--
-- Name: jos_menu_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.jos_menu_id_seq', 102, false);


--
-- Name: jos_menu_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.jos_menu_types_id_seq', 2, false);


--
-- Name: jos_messages_message_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.jos_messages_message_id_seq', 1, false);


--
-- Name: jos_modules_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.jos_modules_id_seq', 110, false);


--
-- Name: jos_newsfeeds_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.jos_newsfeeds_id_seq', 1, false);


--
-- Name: jos_overrider_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.jos_overrider_id_seq', 1, false);


--
-- Name: jos_postinstall_messages_postinstall_message_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.jos_postinstall_messages_postinstall_message_id_seq', 5, true);


--
-- Name: jos_privacy_consents_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.jos_privacy_consents_id_seq', 1, false);


--
-- Name: jos_privacy_requests_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.jos_privacy_requests_id_seq', 1, false);


--
-- Name: jos_redirect_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.jos_redirect_links_id_seq', 1, false);


--
-- Name: jos_scheduler_logs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.jos_scheduler_logs_id_seq', 2, true);


--
-- Name: jos_scheduler_tasks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.jos_scheduler_tasks_id_seq', 4, false);


--
-- Name: jos_schemaorg_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.jos_schemaorg_id_seq', 1, false);


--
-- Name: jos_tags_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.jos_tags_id_seq', 2, false);


--
-- Name: jos_template_overrides_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.jos_template_overrides_id_seq', 1, false);


--
-- Name: jos_template_styles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.jos_template_styles_id_seq', 13, false);


--
-- Name: jos_tuf_metadata_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.jos_tuf_metadata_id_seq', 1, true);


--
-- Name: jos_ucm_base_ucm_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.jos_ucm_base_ucm_id_seq', 1, false);


--
-- Name: jos_ucm_content_core_content_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.jos_ucm_content_core_content_id_seq', 1, false);


--
-- Name: jos_update_sites_update_site_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.jos_update_sites_update_site_id_seq', 4, false);


--
-- Name: jos_updates_update_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.jos_updates_update_id_seq', 262, true);


--
-- Name: jos_user_keys_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.jos_user_keys_id_seq', 1, false);


--
-- Name: jos_user_mfa_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.jos_user_mfa_id_seq', 1, false);


--
-- Name: jos_user_notes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.jos_user_notes_id_seq', 1, false);


--
-- Name: jos_usergroups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.jos_usergroups_id_seq', 10, false);


--
-- Name: jos_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.jos_users_id_seq', 759, true);


--
-- Name: jos_viewlevels_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.jos_viewlevels_id_seq', 7, false);


--
-- Name: jos_workflow_stages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.jos_workflow_stages_id_seq', 2, false);


--
-- Name: jos_workflow_transitions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.jos_workflow_transitions_id_seq', 8, false);


--
-- Name: jos_workflows_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.jos_workflows_id_seq', 2, false);


--
-- Name: trafico_nginx_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.trafico_nginx_id_seq', 368, true);


--
-- Name: actividad actividad_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.actividad
    ADD CONSTRAINT actividad_pkey PRIMARY KEY (id);


--
-- Name: jos_action_log_config jos_action_log_config_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jos_action_log_config
    ADD CONSTRAINT jos_action_log_config_pkey PRIMARY KEY (id);


--
-- Name: jos_action_logs_extensions jos_action_logs_extensions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jos_action_logs_extensions
    ADD CONSTRAINT jos_action_logs_extensions_pkey PRIMARY KEY (id);


--
-- Name: jos_action_logs jos_action_logs_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jos_action_logs
    ADD CONSTRAINT jos_action_logs_pkey PRIMARY KEY (id);


--
-- Name: jos_action_logs_users jos_action_logs_users_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jos_action_logs_users
    ADD CONSTRAINT jos_action_logs_users_pkey PRIMARY KEY (user_id);


--
-- Name: jos_assets jos_assets_idx_asset_name; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jos_assets
    ADD CONSTRAINT jos_assets_idx_asset_name UNIQUE (name);


--
-- Name: jos_assets jos_assets_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jos_assets
    ADD CONSTRAINT jos_assets_pkey PRIMARY KEY (id);


--
-- Name: jos_associations jos_associations_idx_context_id; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jos_associations
    ADD CONSTRAINT jos_associations_idx_context_id PRIMARY KEY (context, id);


--
-- Name: jos_banner_clients jos_banner_clients_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jos_banner_clients
    ADD CONSTRAINT jos_banner_clients_pkey PRIMARY KEY (id);


--
-- Name: jos_banner_tracks jos_banner_tracks_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jos_banner_tracks
    ADD CONSTRAINT jos_banner_tracks_pkey PRIMARY KEY (track_date, track_type, banner_id);


--
-- Name: jos_banners jos_banners_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jos_banners
    ADD CONSTRAINT jos_banners_pkey PRIMARY KEY (id);


--
-- Name: jos_categories jos_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jos_categories
    ADD CONSTRAINT jos_categories_pkey PRIMARY KEY (id);


--
-- Name: jos_contact_details jos_contact_details_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jos_contact_details
    ADD CONSTRAINT jos_contact_details_pkey PRIMARY KEY (id);


--
-- Name: jos_content_frontpage jos_content_frontpage_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jos_content_frontpage
    ADD CONSTRAINT jos_content_frontpage_pkey PRIMARY KEY (content_id);


--
-- Name: jos_content jos_content_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jos_content
    ADD CONSTRAINT jos_content_pkey PRIMARY KEY (id);


--
-- Name: jos_content_rating jos_content_rating_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jos_content_rating
    ADD CONSTRAINT jos_content_rating_pkey PRIMARY KEY (content_id);


--
-- Name: jos_content_types jos_content_types_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jos_content_types
    ADD CONSTRAINT jos_content_types_pkey PRIMARY KEY (type_id);


--
-- Name: jos_contentitem_tag_map jos_contentitem_tag_map_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jos_contentitem_tag_map
    ADD CONSTRAINT jos_contentitem_tag_map_pkey PRIMARY KEY (type_id, content_item_id, tag_id);


--
-- Name: jos_extensions jos_extensions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jos_extensions
    ADD CONSTRAINT jos_extensions_pkey PRIMARY KEY (extension_id);


--
-- Name: jos_fields_categories jos_fields_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jos_fields_categories
    ADD CONSTRAINT jos_fields_categories_pkey PRIMARY KEY (field_id, category_id);


--
-- Name: jos_fields_groups jos_fields_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jos_fields_groups
    ADD CONSTRAINT jos_fields_groups_pkey PRIMARY KEY (id);


--
-- Name: jos_fields jos_fields_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jos_fields
    ADD CONSTRAINT jos_fields_pkey PRIMARY KEY (id);


--
-- Name: jos_finder_filters jos_finder_filters_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jos_finder_filters
    ADD CONSTRAINT jos_finder_filters_pkey PRIMARY KEY (filter_id);


--
-- Name: jos_finder_links jos_finder_links_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jos_finder_links
    ADD CONSTRAINT jos_finder_links_pkey PRIMARY KEY (link_id);


--
-- Name: jos_finder_links_terms jos_finder_links_terms_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jos_finder_links_terms
    ADD CONSTRAINT jos_finder_links_terms_pkey PRIMARY KEY (link_id, term_id);


--
-- Name: jos_finder_logging jos_finder_logging_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jos_finder_logging
    ADD CONSTRAINT jos_finder_logging_pkey PRIMARY KEY (md5sum);


--
-- Name: jos_finder_taxonomy_map jos_finder_taxonomy_map_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jos_finder_taxonomy_map
    ADD CONSTRAINT jos_finder_taxonomy_map_pkey PRIMARY KEY (link_id, node_id);


--
-- Name: jos_finder_taxonomy jos_finder_taxonomy_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jos_finder_taxonomy
    ADD CONSTRAINT jos_finder_taxonomy_pkey PRIMARY KEY (id);


--
-- Name: jos_finder_terms_common jos_finder_terms_common_idx_term_language; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jos_finder_terms_common
    ADD CONSTRAINT jos_finder_terms_common_idx_term_language UNIQUE (term, language);


--
-- Name: jos_finder_terms jos_finder_terms_idx_term_language; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jos_finder_terms
    ADD CONSTRAINT jos_finder_terms_idx_term_language UNIQUE (term, language);


--
-- Name: jos_finder_terms jos_finder_terms_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jos_finder_terms
    ADD CONSTRAINT jos_finder_terms_pkey PRIMARY KEY (term_id);


--
-- Name: jos_finder_types jos_finder_types_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jos_finder_types
    ADD CONSTRAINT jos_finder_types_pkey PRIMARY KEY (id);


--
-- Name: jos_finder_types jos_finder_types_title; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jos_finder_types
    ADD CONSTRAINT jos_finder_types_title UNIQUE (title);


--
-- Name: jos_guidedtour_steps jos_guidedtour_steps_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jos_guidedtour_steps
    ADD CONSTRAINT jos_guidedtour_steps_pkey PRIMARY KEY (id);


--
-- Name: jos_guidedtours jos_guidedtours_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jos_guidedtours
    ADD CONSTRAINT jos_guidedtours_pkey PRIMARY KEY (id);


--
-- Name: jos_history jos_history_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jos_history
    ADD CONSTRAINT jos_history_pkey PRIMARY KEY (version_id);


--
-- Name: jos_languages jos_languages_idx_langcode; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jos_languages
    ADD CONSTRAINT jos_languages_idx_langcode UNIQUE (lang_code);


--
-- Name: jos_languages jos_languages_idx_sef; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jos_languages
    ADD CONSTRAINT jos_languages_idx_sef UNIQUE (sef);


--
-- Name: jos_languages jos_languages_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jos_languages
    ADD CONSTRAINT jos_languages_pkey PRIMARY KEY (lang_id);


--
-- Name: jos_mail_templates jos_mail_templates_idx_template_id_language; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jos_mail_templates
    ADD CONSTRAINT jos_mail_templates_idx_template_id_language UNIQUE (template_id, language);


--
-- Name: jos_menu jos_menu_idx_client_id_parent_id_alias_language; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jos_menu
    ADD CONSTRAINT jos_menu_idx_client_id_parent_id_alias_language UNIQUE (client_id, parent_id, alias, language);


--
-- Name: jos_menu jos_menu_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jos_menu
    ADD CONSTRAINT jos_menu_pkey PRIMARY KEY (id);


--
-- Name: jos_menu_types jos_menu_types_idx_menutype; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jos_menu_types
    ADD CONSTRAINT jos_menu_types_idx_menutype UNIQUE (menutype);


--
-- Name: jos_menu_types jos_menu_types_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jos_menu_types
    ADD CONSTRAINT jos_menu_types_pkey PRIMARY KEY (id);


--
-- Name: jos_messages_cfg jos_messages_cfg_idx_user_var_name; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jos_messages_cfg
    ADD CONSTRAINT jos_messages_cfg_idx_user_var_name UNIQUE (user_id, cfg_name);


--
-- Name: jos_messages jos_messages_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jos_messages
    ADD CONSTRAINT jos_messages_pkey PRIMARY KEY (message_id);


--
-- Name: jos_modules_menu jos_modules_menu_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jos_modules_menu
    ADD CONSTRAINT jos_modules_menu_pkey PRIMARY KEY (moduleid, menuid);


--
-- Name: jos_modules jos_modules_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jos_modules
    ADD CONSTRAINT jos_modules_pkey PRIMARY KEY (id);


--
-- Name: jos_newsfeeds jos_newsfeeds_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jos_newsfeeds
    ADD CONSTRAINT jos_newsfeeds_pkey PRIMARY KEY (id);


--
-- Name: jos_overrider jos_overrider_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jos_overrider
    ADD CONSTRAINT jos_overrider_pkey PRIMARY KEY (id);


--
-- Name: jos_postinstall_messages jos_postinstall_messages_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jos_postinstall_messages
    ADD CONSTRAINT jos_postinstall_messages_pkey PRIMARY KEY (postinstall_message_id);


--
-- Name: jos_privacy_consents jos_privacy_consents_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jos_privacy_consents
    ADD CONSTRAINT jos_privacy_consents_pkey PRIMARY KEY (id);


--
-- Name: jos_privacy_requests jos_privacy_requests_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jos_privacy_requests
    ADD CONSTRAINT jos_privacy_requests_pkey PRIMARY KEY (id);


--
-- Name: jos_redirect_links jos_redirect_links_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jos_redirect_links
    ADD CONSTRAINT jos_redirect_links_pkey PRIMARY KEY (id);


--
-- Name: jos_scheduler_logs jos_scheduler_logs_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jos_scheduler_logs
    ADD CONSTRAINT jos_scheduler_logs_pkey PRIMARY KEY (id);


--
-- Name: jos_scheduler_tasks jos_scheduler_tasks_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jos_scheduler_tasks
    ADD CONSTRAINT jos_scheduler_tasks_pkey PRIMARY KEY (id);


--
-- Name: jos_schemaorg jos_schemaorg_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jos_schemaorg
    ADD CONSTRAINT jos_schemaorg_pkey PRIMARY KEY (id);


--
-- Name: jos_schemas jos_schemas_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jos_schemas
    ADD CONSTRAINT jos_schemas_pkey PRIMARY KEY (extension_id, version_id);


--
-- Name: jos_session jos_session_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jos_session
    ADD CONSTRAINT jos_session_pkey PRIMARY KEY (session_id);


--
-- Name: jos_tags jos_tags_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jos_tags
    ADD CONSTRAINT jos_tags_pkey PRIMARY KEY (id);


--
-- Name: jos_template_overrides jos_template_overrides_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jos_template_overrides
    ADD CONSTRAINT jos_template_overrides_pkey PRIMARY KEY (id);


--
-- Name: jos_template_styles jos_template_styles_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jos_template_styles
    ADD CONSTRAINT jos_template_styles_pkey PRIMARY KEY (id);


--
-- Name: jos_tuf_metadata jos_tuf_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jos_tuf_metadata
    ADD CONSTRAINT jos_tuf_metadata_pkey PRIMARY KEY (id);


--
-- Name: jos_ucm_base jos_ucm_base_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jos_ucm_base
    ADD CONSTRAINT jos_ucm_base_pkey PRIMARY KEY (ucm_id);


--
-- Name: jos_ucm_content jos_ucm_content_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jos_ucm_content
    ADD CONSTRAINT jos_ucm_content_pkey PRIMARY KEY (core_content_id);


--
-- Name: jos_update_sites_extensions jos_update_sites_extensions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jos_update_sites_extensions
    ADD CONSTRAINT jos_update_sites_extensions_pkey PRIMARY KEY (update_site_id, extension_id);


--
-- Name: jos_update_sites jos_update_sites_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jos_update_sites
    ADD CONSTRAINT jos_update_sites_pkey PRIMARY KEY (update_site_id);


--
-- Name: jos_updates jos_updates_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jos_updates
    ADD CONSTRAINT jos_updates_pkey PRIMARY KEY (update_id);


--
-- Name: jos_user_keys jos_user_keys_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jos_user_keys
    ADD CONSTRAINT jos_user_keys_pkey PRIMARY KEY (id);


--
-- Name: jos_user_keys jos_user_keys_series; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jos_user_keys
    ADD CONSTRAINT jos_user_keys_series UNIQUE (series);


--
-- Name: jos_user_mfa jos_user_mfa_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jos_user_mfa
    ADD CONSTRAINT jos_user_mfa_pkey PRIMARY KEY (id);


--
-- Name: jos_user_notes jos_user_notes_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jos_user_notes
    ADD CONSTRAINT jos_user_notes_pkey PRIMARY KEY (id);


--
-- Name: jos_user_profiles jos_user_profiles_idx_user_id_profile_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jos_user_profiles
    ADD CONSTRAINT jos_user_profiles_idx_user_id_profile_key UNIQUE (user_id, profile_key);


--
-- Name: jos_user_usergroup_map jos_user_usergroup_map_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jos_user_usergroup_map
    ADD CONSTRAINT jos_user_usergroup_map_pkey PRIMARY KEY (user_id, group_id);


--
-- Name: jos_usergroups jos_usergroups_idx_usergroup_parent_title_lookup; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jos_usergroups
    ADD CONSTRAINT jos_usergroups_idx_usergroup_parent_title_lookup UNIQUE (parent_id, title);


--
-- Name: jos_usergroups jos_usergroups_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jos_usergroups
    ADD CONSTRAINT jos_usergroups_pkey PRIMARY KEY (id);


--
-- Name: jos_users jos_users_idx_username; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jos_users
    ADD CONSTRAINT jos_users_idx_username UNIQUE (username);


--
-- Name: jos_users jos_users_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jos_users
    ADD CONSTRAINT jos_users_pkey PRIMARY KEY (id);


--
-- Name: jos_viewlevels jos_viewlevels_idx_assetgroup_title_lookup; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jos_viewlevels
    ADD CONSTRAINT jos_viewlevels_idx_assetgroup_title_lookup UNIQUE (title);


--
-- Name: jos_viewlevels jos_viewlevels_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jos_viewlevels
    ADD CONSTRAINT jos_viewlevels_pkey PRIMARY KEY (id);


--
-- Name: jos_webauthn_credentials jos_webauthn_credentials_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jos_webauthn_credentials
    ADD CONSTRAINT jos_webauthn_credentials_pkey PRIMARY KEY (id);


--
-- Name: jos_workflow_associations jos_workflow_associations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jos_workflow_associations
    ADD CONSTRAINT jos_workflow_associations_pkey PRIMARY KEY (item_id, extension);


--
-- Name: jos_workflow_stages jos_workflow_stages_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jos_workflow_stages
    ADD CONSTRAINT jos_workflow_stages_pkey PRIMARY KEY (id);


--
-- Name: jos_workflow_transitions jos_workflow_transitions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jos_workflow_transitions
    ADD CONSTRAINT jos_workflow_transitions_pkey PRIMARY KEY (id);


--
-- Name: jos_workflows jos_workflows_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jos_workflows
    ADD CONSTRAINT jos_workflows_pkey PRIMARY KEY (id);


--
-- Name: trafico_nginx trafico_nginx_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.trafico_nginx
    ADD CONSTRAINT trafico_nginx_pkey PRIMARY KEY (id);


--
-- Name: _jos_finder_tokens_aggregate_keyword_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _jos_finder_tokens_aggregate_keyword_id ON public.jos_finder_tokens_aggregate USING btree (term_id);


--
-- Name: idx_trafico_codigo; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_trafico_codigo ON public.trafico_nginx USING btree (codigo_http);


--
-- Name: idx_trafico_fecha; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_trafico_fecha ON public.trafico_nginx USING btree (fecha);


--
-- Name: idx_trafico_ip; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_trafico_ip ON public.trafico_nginx USING btree (ip_origen);


--
-- Name: jos_action_logs_idx_extension_itemid; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_action_logs_idx_extension_itemid ON public.jos_action_logs USING btree (extension, item_id);


--
-- Name: jos_action_logs_idx_user_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_action_logs_idx_user_id ON public.jos_action_logs USING btree (user_id);


--
-- Name: jos_action_logs_idx_user_id_extension; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_action_logs_idx_user_id_extension ON public.jos_action_logs USING btree (user_id, extension);


--
-- Name: jos_action_logs_idx_user_id_logdate; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_action_logs_idx_user_id_logdate ON public.jos_action_logs USING btree (user_id, log_date);


--
-- Name: jos_action_logs_users_idx_notify; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_action_logs_users_idx_notify ON public.jos_action_logs_users USING btree (notify);


--
-- Name: jos_assets_idx_lft_rgt; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_assets_idx_lft_rgt ON public.jos_assets USING btree (lft, rgt);


--
-- Name: jos_assets_idx_parent_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_assets_idx_parent_id ON public.jos_assets USING btree (parent_id);


--
-- Name: jos_associations_idx_key; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_associations_idx_key ON public.jos_associations USING btree (key);


--
-- Name: jos_banner_clients_idx_metakey_prefix; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_banner_clients_idx_metakey_prefix ON public.jos_banner_clients USING btree (metakey_prefix);


--
-- Name: jos_banner_clients_idx_own_prefix; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_banner_clients_idx_own_prefix ON public.jos_banner_clients USING btree (own_prefix);


--
-- Name: jos_banner_tracks_idx_banner_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_banner_tracks_idx_banner_id ON public.jos_banner_tracks USING btree (banner_id);


--
-- Name: jos_banner_tracks_idx_track_date; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_banner_tracks_idx_track_date ON public.jos_banner_tracks USING btree (track_date);


--
-- Name: jos_banner_tracks_idx_track_type; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_banner_tracks_idx_track_type ON public.jos_banner_tracks USING btree (track_type);


--
-- Name: jos_banners_idx_banner_catid; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_banners_idx_banner_catid ON public.jos_banners USING btree (catid);


--
-- Name: jos_banners_idx_language; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_banners_idx_language ON public.jos_banners USING btree (language);


--
-- Name: jos_banners_idx_metakey_prefix; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_banners_idx_metakey_prefix ON public.jos_banners USING btree (metakey_prefix);


--
-- Name: jos_banners_idx_own_prefix; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_banners_idx_own_prefix ON public.jos_banners USING btree (own_prefix);


--
-- Name: jos_banners_idx_state; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_banners_idx_state ON public.jos_banners USING btree (state);


--
-- Name: jos_categories_cat_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_categories_cat_idx ON public.jos_categories USING btree (extension, published, access);


--
-- Name: jos_categories_idx_access; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_categories_idx_access ON public.jos_categories USING btree (access);


--
-- Name: jos_categories_idx_alias; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_categories_idx_alias ON public.jos_categories USING btree (alias);


--
-- Name: jos_categories_idx_checkout; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_categories_idx_checkout ON public.jos_categories USING btree (checked_out);


--
-- Name: jos_categories_idx_language; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_categories_idx_language ON public.jos_categories USING btree (language);


--
-- Name: jos_categories_idx_left_right; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_categories_idx_left_right ON public.jos_categories USING btree (lft, rgt);


--
-- Name: jos_categories_idx_path; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_categories_idx_path ON public.jos_categories USING btree (path);


--
-- Name: jos_contact_details_idx_access; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_contact_details_idx_access ON public.jos_contact_details USING btree (access);


--
-- Name: jos_contact_details_idx_catid; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_contact_details_idx_catid ON public.jos_contact_details USING btree (catid);


--
-- Name: jos_contact_details_idx_checkout; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_contact_details_idx_checkout ON public.jos_contact_details USING btree (checked_out);


--
-- Name: jos_contact_details_idx_createdby; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_contact_details_idx_createdby ON public.jos_contact_details USING btree (created_by);


--
-- Name: jos_contact_details_idx_featured_catid; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_contact_details_idx_featured_catid ON public.jos_contact_details USING btree (featured, catid);


--
-- Name: jos_contact_details_idx_language; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_contact_details_idx_language ON public.jos_contact_details USING btree (language);


--
-- Name: jos_contact_details_idx_state; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_contact_details_idx_state ON public.jos_contact_details USING btree (published);


--
-- Name: jos_content_idx_access; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_content_idx_access ON public.jos_content USING btree (access);


--
-- Name: jos_content_idx_alias; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_content_idx_alias ON public.jos_content USING btree (alias);


--
-- Name: jos_content_idx_catid; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_content_idx_catid ON public.jos_content USING btree (catid);


--
-- Name: jos_content_idx_checkout; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_content_idx_checkout ON public.jos_content USING btree (checked_out);


--
-- Name: jos_content_idx_createdby; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_content_idx_createdby ON public.jos_content USING btree (created_by);


--
-- Name: jos_content_idx_featured_catid; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_content_idx_featured_catid ON public.jos_content USING btree (featured, catid);


--
-- Name: jos_content_idx_language; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_content_idx_language ON public.jos_content USING btree (language);


--
-- Name: jos_content_idx_state; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_content_idx_state ON public.jos_content USING btree (state);


--
-- Name: jos_content_types_idx_alias; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_content_types_idx_alias ON public.jos_content_types USING btree (type_alias);


--
-- Name: jos_contentitem_tag_map_idx_core_content_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_contentitem_tag_map_idx_core_content_id ON public.jos_contentitem_tag_map USING btree (core_content_id);


--
-- Name: jos_contentitem_tag_map_idx_date_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_contentitem_tag_map_idx_date_id ON public.jos_contentitem_tag_map USING btree (tag_date, tag_id);


--
-- Name: jos_contentitem_tag_map_idx_tag_type; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_contentitem_tag_map_idx_tag_type ON public.jos_contentitem_tag_map USING btree (tag_id, type_id);


--
-- Name: jos_extensions_element_clientid; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_extensions_element_clientid ON public.jos_extensions USING btree (element, client_id);


--
-- Name: jos_extensions_element_folder_clientid; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_extensions_element_folder_clientid ON public.jos_extensions USING btree (element, folder, client_id);


--
-- Name: jos_extensions_extension; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_extensions_extension ON public.jos_extensions USING btree (type, element, folder, client_id);


--
-- Name: jos_fields_groups_idx_access; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_fields_groups_idx_access ON public.jos_fields_groups USING btree (access);


--
-- Name: jos_fields_groups_idx_checked_out; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_fields_groups_idx_checked_out ON public.jos_fields_groups USING btree (checked_out);


--
-- Name: jos_fields_groups_idx_context; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_fields_groups_idx_context ON public.jos_fields_groups USING btree (context);


--
-- Name: jos_fields_groups_idx_created_by; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_fields_groups_idx_created_by ON public.jos_fields_groups USING btree (created_by);


--
-- Name: jos_fields_groups_idx_language; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_fields_groups_idx_language ON public.jos_fields_groups USING btree (language);


--
-- Name: jos_fields_groups_idx_state; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_fields_groups_idx_state ON public.jos_fields_groups USING btree (state);


--
-- Name: jos_fields_idx_access; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_fields_idx_access ON public.jos_fields USING btree (access);


--
-- Name: jos_fields_idx_checked_out; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_fields_idx_checked_out ON public.jos_fields USING btree (checked_out);


--
-- Name: jos_fields_idx_context; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_fields_idx_context ON public.jos_fields USING btree (context);


--
-- Name: jos_fields_idx_created_user_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_fields_idx_created_user_id ON public.jos_fields USING btree (created_user_id);


--
-- Name: jos_fields_idx_language; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_fields_idx_language ON public.jos_fields USING btree (language);


--
-- Name: jos_fields_idx_state; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_fields_idx_state ON public.jos_fields USING btree (state);


--
-- Name: jos_fields_values_idx_field_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_fields_values_idx_field_id ON public.jos_fields_values USING btree (field_id);


--
-- Name: jos_fields_values_idx_item_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_fields_values_idx_item_id ON public.jos_fields_values USING btree (item_id);


--
-- Name: jos_finder_links_idx_language; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_finder_links_idx_language ON public.jos_finder_links USING btree (language);


--
-- Name: jos_finder_links_idx_md5; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_finder_links_idx_md5 ON public.jos_finder_links USING btree (md5sum);


--
-- Name: jos_finder_links_idx_published_list; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_finder_links_idx_published_list ON public.jos_finder_links USING btree (published, state, access, publish_start_date, publish_end_date, list_price);


--
-- Name: jos_finder_links_idx_published_sale; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_finder_links_idx_published_sale ON public.jos_finder_links USING btree (published, state, access, publish_start_date, publish_end_date, sale_price);


--
-- Name: jos_finder_links_idx_title; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_finder_links_idx_title ON public.jos_finder_links USING btree (title);


--
-- Name: jos_finder_links_idx_type; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_finder_links_idx_type ON public.jos_finder_links USING btree (type_id);


--
-- Name: jos_finder_links_idx_url; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_finder_links_idx_url ON public.jos_finder_links USING btree (substr((url)::text, 0, 76));


--
-- Name: jos_finder_links_terms_idx_link_term_weight; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_finder_links_terms_idx_link_term_weight ON public.jos_finder_links_terms USING btree (link_id, term_id, weight);


--
-- Name: jos_finder_links_terms_idx_term_weight; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_finder_links_terms_idx_term_weight ON public.jos_finder_links_terms USING btree (term_id, weight);


--
-- Name: jos_finder_logging_idx_md5sum; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_finder_logging_idx_md5sum ON public.jos_finder_logging USING btree (md5sum);


--
-- Name: jos_finder_logging_idx_searchterm; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_finder_logging_idx_searchterm ON public.jos_finder_logging USING btree (searchterm);


--
-- Name: jos_finder_taxonomy_access; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_finder_taxonomy_access ON public.jos_finder_taxonomy USING btree (access);


--
-- Name: jos_finder_taxonomy_alias; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_finder_taxonomy_alias ON public.jos_finder_taxonomy USING btree (alias);


--
-- Name: jos_finder_taxonomy_idx_parent_published; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_finder_taxonomy_idx_parent_published ON public.jos_finder_taxonomy USING btree (parent_id, state, access);


--
-- Name: jos_finder_taxonomy_language; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_finder_taxonomy_language ON public.jos_finder_taxonomy USING btree (language);


--
-- Name: jos_finder_taxonomy_level; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_finder_taxonomy_level ON public.jos_finder_taxonomy USING btree (level);


--
-- Name: jos_finder_taxonomy_lft_rgt; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_finder_taxonomy_lft_rgt ON public.jos_finder_taxonomy USING btree (lft, rgt);


--
-- Name: jos_finder_taxonomy_map_link_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_finder_taxonomy_map_link_id ON public.jos_finder_taxonomy_map USING btree (link_id);


--
-- Name: jos_finder_taxonomy_map_node_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_finder_taxonomy_map_node_id ON public.jos_finder_taxonomy_map USING btree (node_id);


--
-- Name: jos_finder_taxonomy_path; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_finder_taxonomy_path ON public.jos_finder_taxonomy USING btree (path);


--
-- Name: jos_finder_taxonomy_state; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_finder_taxonomy_state ON public.jos_finder_taxonomy USING btree (state);


--
-- Name: jos_finder_terms_common_idx_lang; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_finder_terms_common_idx_lang ON public.jos_finder_terms_common USING btree (language);


--
-- Name: jos_finder_terms_idx_language; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_finder_terms_idx_language ON public.jos_finder_terms USING btree (language);


--
-- Name: jos_finder_terms_idx_soundex_phrase; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_finder_terms_idx_soundex_phrase ON public.jos_finder_terms USING btree (soundex, phrase);


--
-- Name: jos_finder_terms_idx_stem_phrase; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_finder_terms_idx_stem_phrase ON public.jos_finder_terms USING btree (stem, phrase);


--
-- Name: jos_finder_terms_idx_term_phrase; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_finder_terms_idx_term_phrase ON public.jos_finder_terms USING btree (term, phrase);


--
-- Name: jos_finder_tokens_aggregate_token; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_finder_tokens_aggregate_token ON public.jos_finder_tokens_aggregate USING btree (term);


--
-- Name: jos_finder_tokens_idx_context; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_finder_tokens_idx_context ON public.jos_finder_tokens USING btree (context);


--
-- Name: jos_finder_tokens_idx_language; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_finder_tokens_idx_language ON public.jos_finder_tokens USING btree (language);


--
-- Name: jos_finder_tokens_idx_stem; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_finder_tokens_idx_stem ON public.jos_finder_tokens USING btree (stem);


--
-- Name: jos_finder_tokens_idx_word; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_finder_tokens_idx_word ON public.jos_finder_tokens USING btree (term);


--
-- Name: jos_guidedtour_steps_idx_language; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_guidedtour_steps_idx_language ON public.jos_guidedtour_steps USING btree (language);


--
-- Name: jos_guidedtour_steps_idx_state; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_guidedtour_steps_idx_state ON public.jos_guidedtour_steps USING btree (published);


--
-- Name: jos_guidedtour_steps_idx_tour_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_guidedtour_steps_idx_tour_id ON public.jos_guidedtour_steps USING btree (tour_id);


--
-- Name: jos_guidedtours_idx_access; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_guidedtours_idx_access ON public.jos_guidedtours USING btree (access);


--
-- Name: jos_guidedtours_idx_language; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_guidedtours_idx_language ON public.jos_guidedtours USING btree (language);


--
-- Name: jos_guidedtours_idx_state; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_guidedtours_idx_state ON public.jos_guidedtours USING btree (published);


--
-- Name: jos_guidedtours_idx_uid; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_guidedtours_idx_uid ON public.jos_guidedtours USING btree (uid);


--
-- Name: jos_history_idx_save_date; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_history_idx_save_date ON public.jos_history USING btree (save_date);


--
-- Name: jos_history_idx_ucm_item_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_history_idx_ucm_item_id ON public.jos_history USING btree (item_id);


--
-- Name: jos_languages_idx_access; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_languages_idx_access ON public.jos_languages USING btree (access);


--
-- Name: jos_languages_idx_ordering; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_languages_idx_ordering ON public.jos_languages USING btree (ordering);


--
-- Name: jos_mail_templates_idx_language; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_mail_templates_idx_language ON public.jos_mail_templates USING btree (language);


--
-- Name: jos_mail_templates_idx_template_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_mail_templates_idx_template_id ON public.jos_mail_templates USING btree (template_id);


--
-- Name: jos_menu_idx_alias; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_menu_idx_alias ON public.jos_menu USING btree (alias);


--
-- Name: jos_menu_idx_componentid; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_menu_idx_componentid ON public.jos_menu USING btree (component_id, menutype, published, access);


--
-- Name: jos_menu_idx_language; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_menu_idx_language ON public.jos_menu USING btree (language);


--
-- Name: jos_menu_idx_left_right; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_menu_idx_left_right ON public.jos_menu USING btree (lft, rgt);


--
-- Name: jos_menu_idx_menutype; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_menu_idx_menutype ON public.jos_menu USING btree (menutype);


--
-- Name: jos_menu_idx_path; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_menu_idx_path ON public.jos_menu USING btree (path);


--
-- Name: jos_messages_useridto_state; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_messages_useridto_state ON public.jos_messages USING btree (user_id_to, state);


--
-- Name: jos_modules_idx_language; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_modules_idx_language ON public.jos_modules USING btree (language);


--
-- Name: jos_modules_newsfeeds; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_modules_newsfeeds ON public.jos_modules USING btree (module, published);


--
-- Name: jos_modules_published; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_modules_published ON public.jos_modules USING btree (published, access);


--
-- Name: jos_newsfeeds_idx_access; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_newsfeeds_idx_access ON public.jos_newsfeeds USING btree (access);


--
-- Name: jos_newsfeeds_idx_catid; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_newsfeeds_idx_catid ON public.jos_newsfeeds USING btree (catid);


--
-- Name: jos_newsfeeds_idx_checkout; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_newsfeeds_idx_checkout ON public.jos_newsfeeds USING btree (checked_out);


--
-- Name: jos_newsfeeds_idx_createdby; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_newsfeeds_idx_createdby ON public.jos_newsfeeds USING btree (created_by);


--
-- Name: jos_newsfeeds_idx_language; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_newsfeeds_idx_language ON public.jos_newsfeeds USING btree (language);


--
-- Name: jos_newsfeeds_idx_state; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_newsfeeds_idx_state ON public.jos_newsfeeds USING btree (published);


--
-- Name: jos_privacy_consents_idx_user_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_privacy_consents_idx_user_id ON public.jos_privacy_consents USING btree (user_id);


--
-- Name: jos_redirect_links_idx_link_modified; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_redirect_links_idx_link_modified ON public.jos_redirect_links USING btree (modified_date);


--
-- Name: jos_redirect_links_idx_old_url; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_redirect_links_idx_old_url ON public.jos_redirect_links USING btree (old_url);


--
-- Name: jos_scheduler_logs_idx_lastdate; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_scheduler_logs_idx_lastdate ON public.jos_scheduler_logs USING btree (lastdate);


--
-- Name: jos_scheduler_logs_idx_nextdate; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_scheduler_logs_idx_nextdate ON public.jos_scheduler_logs USING btree (nextdate);


--
-- Name: jos_scheduler_logs_idx_taskname; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_scheduler_logs_idx_taskname ON public.jos_scheduler_logs USING btree (taskname);


--
-- Name: jos_scheduler_logs_idx_tasktype; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_scheduler_logs_idx_tasktype ON public.jos_scheduler_logs USING btree (tasktype);


--
-- Name: jos_scheduler_tasks_idx_checked_out; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_scheduler_tasks_idx_checked_out ON public.jos_scheduler_tasks USING btree (checked_out);


--
-- Name: jos_scheduler_tasks_idx_cli_exclusive; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_scheduler_tasks_idx_cli_exclusive ON public.jos_scheduler_tasks USING btree (cli_exclusive);


--
-- Name: jos_scheduler_tasks_idx_last_exit; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_scheduler_tasks_idx_last_exit ON public.jos_scheduler_tasks USING btree (last_exit_code);


--
-- Name: jos_scheduler_tasks_idx_locked; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_scheduler_tasks_idx_locked ON public.jos_scheduler_tasks USING btree (locked);


--
-- Name: jos_scheduler_tasks_idx_next_exec; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_scheduler_tasks_idx_next_exec ON public.jos_scheduler_tasks USING btree (next_execution);


--
-- Name: jos_scheduler_tasks_idx_priority; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_scheduler_tasks_idx_priority ON public.jos_scheduler_tasks USING btree (priority);


--
-- Name: jos_scheduler_tasks_idx_state; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_scheduler_tasks_idx_state ON public.jos_scheduler_tasks USING btree (state);


--
-- Name: jos_scheduler_tasks_idx_type; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_scheduler_tasks_idx_type ON public.jos_scheduler_tasks USING btree (type);


--
-- Name: jos_session_idx_client_id_guest; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_session_idx_client_id_guest ON public.jos_session USING btree (client_id, guest);


--
-- Name: jos_session_time; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_session_time ON public.jos_session USING btree ("time");


--
-- Name: jos_session_userid; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_session_userid ON public.jos_session USING btree (userid);


--
-- Name: jos_tags_cat_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_tags_cat_idx ON public.jos_tags USING btree (published, access);


--
-- Name: jos_tags_idx_access; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_tags_idx_access ON public.jos_tags USING btree (access);


--
-- Name: jos_tags_idx_alias; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_tags_idx_alias ON public.jos_tags USING btree (alias);


--
-- Name: jos_tags_idx_checkout; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_tags_idx_checkout ON public.jos_tags USING btree (checked_out);


--
-- Name: jos_tags_idx_language; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_tags_idx_language ON public.jos_tags USING btree (language);


--
-- Name: jos_tags_idx_left_right; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_tags_idx_left_right ON public.jos_tags USING btree (lft, rgt);


--
-- Name: jos_tags_idx_path; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_tags_idx_path ON public.jos_tags USING btree (path);


--
-- Name: jos_template_overrides_idx_extension_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_template_overrides_idx_extension_id ON public.jos_template_overrides USING btree (extension_id);


--
-- Name: jos_template_overrides_idx_template; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_template_overrides_idx_template ON public.jos_template_overrides USING btree (template);


--
-- Name: jos_template_styles_idx_client_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_template_styles_idx_client_id ON public.jos_template_styles USING btree (client_id);


--
-- Name: jos_template_styles_idx_client_id_home; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_template_styles_idx_client_id_home ON public.jos_template_styles USING btree (client_id, home);


--
-- Name: jos_template_styles_idx_template; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_template_styles_idx_template ON public.jos_template_styles USING btree (template);


--
-- Name: jos_ucm_base_ucm_item_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_ucm_base_ucm_item_id ON public.jos_ucm_base USING btree (ucm_item_id);


--
-- Name: jos_ucm_base_ucm_language_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_ucm_base_ucm_language_id ON public.jos_ucm_base USING btree (ucm_language_id);


--
-- Name: jos_ucm_base_ucm_type_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_ucm_base_ucm_type_id ON public.jos_ucm_base USING btree (ucm_type_id);


--
-- Name: jos_ucm_content_idx_access; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_ucm_content_idx_access ON public.jos_ucm_content USING btree (core_access);


--
-- Name: jos_ucm_content_idx_alias; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_ucm_content_idx_alias ON public.jos_ucm_content USING btree (core_alias);


--
-- Name: jos_ucm_content_idx_content_type; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_ucm_content_idx_content_type ON public.jos_ucm_content USING btree (core_type_alias);


--
-- Name: jos_ucm_content_idx_core_checked_out_user_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_ucm_content_idx_core_checked_out_user_id ON public.jos_ucm_content USING btree (core_checked_out_user_id);


--
-- Name: jos_ucm_content_idx_core_created_user_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_ucm_content_idx_core_created_user_id ON public.jos_ucm_content USING btree (core_created_user_id);


--
-- Name: jos_ucm_content_idx_core_modified_user_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_ucm_content_idx_core_modified_user_id ON public.jos_ucm_content USING btree (core_modified_user_id);


--
-- Name: jos_ucm_content_idx_core_type_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_ucm_content_idx_core_type_id ON public.jos_ucm_content USING btree (core_type_id);


--
-- Name: jos_ucm_content_idx_created_time; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_ucm_content_idx_created_time ON public.jos_ucm_content USING btree (core_created_time);


--
-- Name: jos_ucm_content_idx_language; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_ucm_content_idx_language ON public.jos_ucm_content USING btree (core_language);


--
-- Name: jos_ucm_content_idx_modified_time; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_ucm_content_idx_modified_time ON public.jos_ucm_content USING btree (core_modified_time);


--
-- Name: jos_ucm_content_idx_title; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_ucm_content_idx_title ON public.jos_ucm_content USING btree (core_title);


--
-- Name: jos_ucm_content_tag_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_ucm_content_tag_idx ON public.jos_ucm_content USING btree (core_state, core_access);


--
-- Name: jos_user_keys_idx_user_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_user_keys_idx_user_id ON public.jos_user_keys USING btree (user_id);


--
-- Name: jos_user_mfa_idx_user_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_user_mfa_idx_user_id ON public.jos_user_mfa USING btree (user_id);


--
-- Name: jos_user_notes_idx_category_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_user_notes_idx_category_id ON public.jos_user_notes USING btree (catid);


--
-- Name: jos_user_notes_idx_user_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_user_notes_idx_user_id ON public.jos_user_notes USING btree (user_id);


--
-- Name: jos_usergroups_idx_usergroup_adjacency_lookup; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_usergroups_idx_usergroup_adjacency_lookup ON public.jos_usergroups USING btree (parent_id);


--
-- Name: jos_usergroups_idx_usergroup_nested_set_lookup; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_usergroups_idx_usergroup_nested_set_lookup ON public.jos_usergroups USING btree (lft, rgt);


--
-- Name: jos_usergroups_idx_usergroup_title_lookup; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_usergroups_idx_usergroup_title_lookup ON public.jos_usergroups USING btree (title);


--
-- Name: jos_users_email; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_users_email ON public.jos_users USING btree (email);


--
-- Name: jos_users_email_lower; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_users_email_lower ON public.jos_users USING btree (lower((email)::text));


--
-- Name: jos_users_idx_block; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_users_idx_block ON public.jos_users USING btree (block);


--
-- Name: jos_users_idx_name; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_users_idx_name ON public.jos_users USING btree (name);


--
-- Name: jos_webauthn_credentials_user_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_webauthn_credentials_user_id ON public.jos_webauthn_credentials USING btree (user_id);


--
-- Name: jos_workflow_associations_idx_extension; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_workflow_associations_idx_extension ON public.jos_workflow_associations USING btree (extension);


--
-- Name: jos_workflow_associations_idx_item_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_workflow_associations_idx_item_id ON public.jos_workflow_associations USING btree (item_id);


--
-- Name: jos_workflow_associations_idx_item_stage_extension; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_workflow_associations_idx_item_stage_extension ON public.jos_workflow_associations USING btree (item_id, stage_id, extension);


--
-- Name: jos_workflow_associations_idx_stage_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_workflow_associations_idx_stage_id ON public.jos_workflow_associations USING btree (stage_id);


--
-- Name: jos_workflow_stages_idx_asset_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_workflow_stages_idx_asset_id ON public.jos_workflow_stages USING btree (asset_id);


--
-- Name: jos_workflow_stages_idx_checked_out; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_workflow_stages_idx_checked_out ON public.jos_workflow_stages USING btree (checked_out);


--
-- Name: jos_workflow_stages_idx_default; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_workflow_stages_idx_default ON public.jos_workflow_stages USING btree ("default");


--
-- Name: jos_workflow_stages_idx_title; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_workflow_stages_idx_title ON public.jos_workflow_stages USING btree (title);


--
-- Name: jos_workflow_stages_idx_workflow_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_workflow_stages_idx_workflow_id ON public.jos_workflow_stages USING btree (workflow_id);


--
-- Name: jos_workflow_transitions_idx_asset_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_workflow_transitions_idx_asset_id ON public.jos_workflow_transitions USING btree (asset_id);


--
-- Name: jos_workflow_transitions_idx_checked_out; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_workflow_transitions_idx_checked_out ON public.jos_workflow_transitions USING btree (checked_out);


--
-- Name: jos_workflow_transitions_idx_from_stage_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_workflow_transitions_idx_from_stage_id ON public.jos_workflow_transitions USING btree (from_stage_id);


--
-- Name: jos_workflow_transitions_idx_title; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_workflow_transitions_idx_title ON public.jos_workflow_transitions USING btree (title);


--
-- Name: jos_workflow_transitions_idx_to_stage_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_workflow_transitions_idx_to_stage_id ON public.jos_workflow_transitions USING btree (to_stage_id);


--
-- Name: jos_workflow_transitions_idx_workflow_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_workflow_transitions_idx_workflow_id ON public.jos_workflow_transitions USING btree (workflow_id);


--
-- Name: jos_workflows_idx_asset_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_workflows_idx_asset_id ON public.jos_workflows USING btree (asset_id);


--
-- Name: jos_workflows_idx_checked_out; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_workflows_idx_checked_out ON public.jos_workflows USING btree (checked_out);


--
-- Name: jos_workflows_idx_created; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_workflows_idx_created ON public.jos_workflows USING btree (created);


--
-- Name: jos_workflows_idx_created_by; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_workflows_idx_created_by ON public.jos_workflows USING btree (created_by);


--
-- Name: jos_workflows_idx_default; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_workflows_idx_default ON public.jos_workflows USING btree ("default");


--
-- Name: jos_workflows_idx_extension; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_workflows_idx_extension ON public.jos_workflows USING btree (extension);


--
-- Name: jos_workflows_idx_modified; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_workflows_idx_modified ON public.jos_workflows USING btree (modified);


--
-- Name: jos_workflows_idx_modified_by; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_workflows_idx_modified_by ON public.jos_workflows USING btree (modified_by);


--
-- Name: jos_workflows_idx_title; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jos_workflows_idx_title ON public.jos_workflows USING btree (title);


--
-- PostgreSQL database dump complete
--

\unrestrict gZJYcdmHfuwS2naFZNgkvezxdf2rFTI5sJg2DyvG7Kwk3hYyXfcKFOy8Z6WDDFY

