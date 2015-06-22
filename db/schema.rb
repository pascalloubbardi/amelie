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

ActiveRecord::Schema.define(version: 20150622160902) do

  create_table "categoriesproduits", force: :cascade do |t|
    t.string   "nomcategorie", limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
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
    t.string   "commentaireprospect",         limit: 255
    t.integer  "prospect_id",                 limit: 4
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
  end

  create_table "produits", force: :cascade do |t|
    t.string   "referenceproduit",       limit: 255
    t.string   "nonproduit",             limit: 255
    t.string   "origineproduit",         limit: 255
    t.string   "conditionnementproduit", limit: 255
    t.string   "gammeproduit",           limit: 255
    t.string   "conseilutilisation",     limit: 255
    t.string   "prixventeproduit",       limit: 255
    t.string   "prixachatproduit",       limit: 255
    t.string   "categoriesproduit_id",   limit: 255
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.string   "image_file_name",        limit: 255
    t.string   "image_content_type",     limit: 255
    t.integer  "image_file_size",        limit: 4
    t.datetime "image_updated_at"
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
    t.string   "comment",           limit: 255
    t.string   "activite",          limit: 255
    t.string   "habitat",           limit: 255
    t.string   "agemoyen",          limit: 255
    t.string   "tel1prospection",   limit: 255
    t.boolean  "tel2prospection",   limit: 1
    t.boolean  "tel3prospection",   limit: 1
    t.boolean  "mobileprospection", limit: 1
    t.boolean  "faxprospection",    limit: 1
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

end
