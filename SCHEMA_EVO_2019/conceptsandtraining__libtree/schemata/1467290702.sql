CREATE TABLE ancestors
  (
     node     UUID NOT NULL,
     ancestor UUID NOT NULL,
     CONSTRAINT idx UNIQUE (node, ancestor)
  ) with ( oids=FALSE );

CREATE INDEX idx_ancestor ON ancestors USING btree (ancestor);

CREATE INDEX idx_node ON ancestors USING btree (node);

CREATE TABLE nodes
  (
     id         UUID NOT NULL,
     parent     UUID,
     "position" SMALLINT DEFAULT NULL,
     properties JSONB NOT NULL,
     CONSTRAINT "primary" PRIMARY KEY (id)
  ) with ( oids=FALSE );

CREATE INDEX idx_parent ON nodes USING btree (parent);
