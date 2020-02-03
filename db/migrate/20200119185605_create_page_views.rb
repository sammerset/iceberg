# frozen_string_literal: true

# rubocop:disable
ROM::SQL.migration do
  change do
    create_table :page_views do
      column :id,         Integer, primary_key: true, auto_increment: true
      column :title,      String
      column :position,   String
      column :url,        String, limit: 2048
      column :time_spent, String
      column :timestamp,  'decimal', precision: 14, scale: 3
      column :created_at, DateTime, null: false, default: Sequel::CURRENT_TIMESTAMP
      column :updated_at, DateTime, null: false, default: Sequel::CURRENT_TIMESTAMP

      foreign_key :visit_id, :visits, null: false
      index %i[url timestamp], unique: true
    end
  end
end
# rubocop:enable
