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

ActiveRecord::Schema.define(version: 20180207211033) do

  create_table "achievements", id: :string, limit: 36, force: :cascade do |t|
    t.string "position_id"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["id"], name: "sqlite_autoindex_achievements_1", unique: true
  end

  create_table "authors", id: :string, force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.date "date_of_birth"
    t.string "nationalities"
    t.string "current_location"
    t.string "degree"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["id"], name: "sqlite_autoindex_authors_1", unique: true
  end

  create_table "certifications", id: :string, force: :cascade do |t|
    t.string "name"
    t.string "date_of_acquisition"
    t.string "icon"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "facade_id", limit: 36
    t.index ["id"], name: "sqlite_autoindex_certifications_1", unique: true
  end

  create_table "facade_skills", id: :string, force: :cascade do |t|
    t.string "facade_id", limit: 36
    t.string "skill_id", limit: 36
    t.index ["id"], name: "sqlite_autoindex_facade_skills_1", unique: true
  end

  create_table "facades", id: :string, limit: 36, force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "author_id"
    t.date "publication"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["id"], name: "sqlite_autoindex_facades_1", unique: true
  end

  create_table "position_skills", id: :string, force: :cascade do |t|
    t.string "position_id", limit: 36
    t.string "skill_id", limit: 36
    t.index ["id"], name: "sqlite_autoindex_position_skills_1", unique: true
  end

  create_table "positions", id: :string, force: :cascade do |t|
    t.string "company_name"
    t.string "company_website"
    t.date "joined"
    t.date "departed"
    t.string "job_title"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "facade_id", limit: 36
    t.index ["id"], name: "sqlite_autoindex_positions_1", unique: true
  end

  create_table "skills", id: :string, force: :cascade do |t|
    t.string "name"
    t.string "category"
    t.integer "level"
    t.integer "years"
    t.string "tag"
    t.boolean "major", default: false
    t.boolean "suppress", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["id"], name: "sqlite_autoindex_skills_1", unique: true
  end

  create_table "summaries", id: :string, force: :cascade do |t|
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "facade_id", limit: 36
    t.index ["id"], name: "sqlite_autoindex_summaries_1", unique: true
  end

  create_table "tags", id: :string, force: :cascade do |t|
    t.string "author_id"
    t.string "label"
    t.string "value"
    t.string "icon"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["id"], name: "sqlite_autoindex_tags_1", unique: true
  end

end
