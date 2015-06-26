# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150625185434) do

  create_table "categoriesproduits", force: :cascade do |t|
    t.string   "nomcategorie",   limit: 255
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.text     "descriptioncat", limit: 65535
  end

  create_table "ficheprospects", force: :cascade do |t|
    t.integer  "age",                         limit: 4
    t.string   "profession",                  limit: 255
    t.string   "famille",                     limit: 255
    t.boolean  "consomationcomplement",       limit: 1
    t.string   "frequenceconsomation",        limit: 255
    t.string   "beneficerechercher",          limit: 255
    t.string   "categoriecomplementconsomer", limit: 255
    t.string   "satisfactioneffetcomplement", limit: 255
    t.string   "originecomplement",           limit: 255
    t.integer  "budgetcomplement",            limit: 4
    t.string   "lieuachatcomplement",         limit: 255
    t.text     "commentaireprospect",         limit: 65535
    t.integer  "prospect_id",                 limit: 4
    t.datetime "created_at",                                null: false
    t.datetime "updated_at",                                null: false
  end

  create_table "order_items", force: :cascade do |t|
    t.integer  "produit_id",  limit: 4
    t.integer  "order_id",    limit: 4
    t.decimal  "unit_price",            precision: 12, scale: 3
    t.integer  "quantity",    limit: 4
    t.decimal  "total_price",           precision: 12, scale: 3
    t.datetime "created_at",                                     null: false
    t.datetime "updated_at",                                     null: false
  end

  add_index "order_items", ["order_id"], name: "index_order_items_on_order_id", using: :btree
  add_index "order_items", ["produit_id"], name: "index_order_items_on_produit_id", using: :btree

  create_table "order_statuses", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "orders", force: :cascade do |t|
    t.decimal  "subtotal",                  precision: 12, scale: 3
    t.decimal  "tax",                       precision: 12, scale: 3
    t.decimal  "shipping",                  precision: 12, scale: 3
    t.decimal  "total",                     precision: 12, scale: 3
    t.integer  "order_status_id", limit: 4
    t.datetime "created_at",                                         null: false
    t.datetime "updated_at",                                         null: false
  end

  add_index "orders", ["order_status_id"], name: "index_orders_on_order_status_id", using: :btree

  create_table "produits", force: :cascade do |t|
    t.string   "referenceproduit",       limit: 255
    t.string   "nonproduit",             limit: 255
    t.string   "origineproduit",         limit: 255
    t.string   "conditionnementproduit", limit: 255
    t.string   "gammeproduit",           limit: 255
    t.text     "conseilutilisation",     limit: 65535
    t.decimal  "price",                                precision: 12, scale: 3
    t.boolean  "active",                 limit: 1
    t.string   "categoriesproduit_id",   limit: 255
    t.datetime "created_at",                                                    null: false
    t.datetime "updated_at",                                                    null: false
    t.string   "image_file_name",        limit: 255
    t.string   "image_content_type",     limit: 255
    t.integer  "image_file_size",        limit: 4
    t.datetime "image_updated_at"
    t.text     "descripionprod",         limit: 65535
    t.string   "presentationprod",       limit: 255
    t.integer  "stockprod",              limit: 4
    t.text     "compositionprod",        limit: 65535
  end

  create_table "prospects", force: :cascade do |t|
    t.string   "date",              limit: 255
    t.string   "codepostal",        limit: 255
    t.string   "ville",             limit: 255
    t.string   "adresse",           limit: 255
    t.string   "genre",             limit: 255
    t.string   "nom",               limit: 255
    t.string   "prenom",            limit: 255
    t.string   "mail",              limit: 255
    t.string   "tel1",              limit: 255
    t.string   "tel2",              limit: 255
    t.string   "tel3",              limit: 255
    t.string   "mobile",            limit: 255
    t.string   "fax",               limit: 255
    t.string   "site",              limit: 255
    t.text     "comment",           limit: 65535
    t.string   "activite",          limit: 255
    t.string   "habitat",           limit: 255
    t.string   "agemoyen",          limit: 255
    t.string   "tel1prospection",   limit: 255
    t.boolean  "tel2prospection",   limit: 1
    t.boolean  "tel3prospection",   limit: 1
    t.boolean  "mobileprospection", limit: 1
    t.boolean  "faxprospection",    limit: 1
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  create_table "taggings", force: :cascade do |t|
    t.integer  "tag_id",        limit: 4
    t.integer  "taggable_id",   limit: 4
    t.string   "taggable_type", limit: 255
    t.integer  "tagger_id",     limit: 4
    t.string   "tagger_type",   limit: 255
    t.string   "context",       limit: 128
    t.datetime "created_at"
  end

  add_index "taggings", ["tag_id", "taggable_id", "taggable_type", "context", "tagger_id", "tagger_type"], name: "taggings_idx", unique: true, using: :btree
  add_index "taggings", ["taggable_id", "taggable_type", "context"], name: "index_taggings_on_taggable_id_and_taggable_type_and_context", using: :btree

  create_table "tags", force: :cascade do |t|
    t.string  "name",           limit: 255
    t.integer "taggings_count", limit: 4,   default: 0
  end

  add_index "tags", ["name"], name: "index_tags_on_name", unique: true, using: :btree

  add_foreign_key "order_items", "orders"
  add_foreign_key "order_items", "produits"
  add_foreign_key "orders", "order_statuses"
end
