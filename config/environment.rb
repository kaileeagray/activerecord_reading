require "activerecord"
require_relative './lib/student'
require 'sqlite3'


connection = ActiveRecord::Base.establish_connection(
  :adapter => "sqlite3",
  :database => "db/songs.sqlite"
)

sql = <<-SQL
  CREATE TABLE IF NOT EXISTS songs (
  id INTEGER PRIMARY KEY,
  title TEXT,
  length INTEGER
  )
SQL

ActiveRecord::Base.connection.execute(sql)
