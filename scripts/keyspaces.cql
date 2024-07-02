CREATE KEYSPACE media_player
  WITH replication = {'class': 'NetworkTopologyStrategy', 'replication_factor': '1'}
  AND durable_writes = true;

USE media_player;

CREATE TABLE media_player.songs (
     id uuid,
     title text,
     album text,
     artist text,
     created_at timestamp,
     PRIMARY KEY (id, created_at)
);
