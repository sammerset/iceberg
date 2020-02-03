# frozen_string_literal: true

# rubocop:disable
ROM::SQL.migration do
  change do
    create_table :visits do
      column :id,                Integer, primary_key: true, auto_increment: true
      column :evid,              String
      column :vendor_site_id,    String
      column :vendor_visit_id,   String
      column :visit_ip,          String
      column :vendor_visitor_id, String
      column :created_at,        DateTime, null: false, default: Sequel::CURRENT_TIMESTAMP
      column :updated_at,        DateTime, null: false, default: Sequel::CURRENT_TIMESTAMP
    end
  end
end
# rubocop:enable
