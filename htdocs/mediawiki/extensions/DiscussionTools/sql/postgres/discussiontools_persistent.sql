-- This file is automatically generated using maintenance/generateSchemaSql.php.
-- Source: sql/discussiontools_persistent.json
-- Do not modify this file directly.
-- See https://www.mediawiki.org/wiki/Manual:Schema_changes
CREATE TABLE discussiontools_items (
  it_id SERIAL NOT NULL,
  it_itemname TEXT NOT NULL,
  it_timestamp TIMESTAMPTZ DEFAULT NULL,
  it_actor BIGINT DEFAULT NULL,
  PRIMARY KEY(it_id)
);

CREATE UNIQUE INDEX it_itemname ON discussiontools_items (it_itemname);


CREATE TABLE discussiontools_item_ids (
  itid_id SERIAL NOT NULL,
  itid_itemid TEXT NOT NULL,
  PRIMARY KEY(itid_id)
);

CREATE UNIQUE INDEX itid_itemid ON discussiontools_item_ids (itid_itemid);


CREATE TABLE discussiontools_item_pages (
  itp_id SERIAL NOT NULL,
  itp_items_id INT NOT NULL,
  itp_page_id BIGINT NOT NULL,
  itp_oldest_revision_id BIGINT NOT NULL,
  itp_newest_revision_id BIGINT NOT NULL,
  PRIMARY KEY(itp_id)
);

CREATE UNIQUE INDEX itp_items_id_page_id ON discussiontools_item_pages (itp_items_id, itp_page_id);

CREATE UNIQUE INDEX itp_items_id_newest_revision_id ON discussiontools_item_pages (
  itp_items_id, itp_newest_revision_id
);


CREATE TABLE discussiontools_item_revisions (
  itr_id SERIAL NOT NULL,
  itr_itemid_id INT NOT NULL,
  itr_revision_id BIGINT NOT NULL,
  itr_items_id INT NOT NULL,
  itr_parent_id INT DEFAULT NULL,
  itr_transcludedfrom BIGINT DEFAULT NULL,
  itr_level SMALLINT NOT NULL,
  itr_headinglevel SMALLINT DEFAULT NULL,
  PRIMARY KEY(itr_id)
);

CREATE INDEX itr_revision_id ON discussiontools_item_revisions (itr_revision_id);

CREATE UNIQUE INDEX itr_itemid_id_revision_id ON discussiontools_item_revisions (itr_itemid_id, itr_revision_id);