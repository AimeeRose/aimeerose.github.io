require 'rest_client'
require 'json'
require 'active_record'
require 'mysql'

db_spec = {
  adapter:  'mysql',
  host:     'localhost',
  username: 'root',
  password: '',
  database: 'govtrack'
}

ActiveRecord::Base.establish_connection(db_spec.merge(database: nil))
ActiveRecord::Base.connection.create_database('govtrack')
ActiveRecord::Base.establish_connection(db_spec)

ActiveRecord::Base.connection.create_table(:bills, id: false) do |t|
  t.string :bill_resolution_type
  t.string :bill_type
  t.string :bill_type_label
  t.text :committees
  t.integer :congress
  t.text :cosponsors
  t.string :current_status
  t.date :current_status_date
  t.string :current_status_description
  t.string :current_status_label
  t.string :display_number
  t.date :docs_house_gov_postdate
  t.integer :id
  t.date :introduced_date
  t.boolean :is_alive
  t.boolean :is_current
  t.string :link
  t.boolean :lock_title
  t.text :major_actions
  t.string :noun
  t.integer :number
  t.date :senate_floor_schedule_postdate
  t.string :sliplawnum
  t.string :sliplawpubpriv
  t.string :source
  t.string :source_link
  t.text :sponsor
  t.text :sponsor_role
  t.text :terms
  t.string :thomas_link
  t.string :title
  t.text :title_without_number
  t.text :titles
end

class Bill < ActiveRecord::Base; end

bills_json = JSON.parse(RestClient.get('https://govtrack.us/api/v2/bill?limit=600')); nil

bills_meta = bills_json['meta']
limit = bills_meta['limit']
offset = bills_meta['offset']
total_bills = bills_meta['total_count']

while (offset < total_bills) do
  puts "fetching bills #{offset} through #{offset + limit}"
  url = 'https://govtrack.us/api/v2/bill?limit=' + limit.to_s + '&offset=' + offset.to_s
  bills_json = JSON.parse(RestClient.get(url))
  current_bills = bills_json['objects']

  current_bills.each do |bill|
    bill_object = Bill.new(bill)
    bill_object.save!
  end

  puts "finished with bills #{offset} through #{offset + limit}"
  offset += limit
end

