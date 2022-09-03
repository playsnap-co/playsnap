# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_09_03_075851) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activities", force: :cascade do |t|
    t.string "title", null: false
    t.text "description", null: false
    t.bigint "category_id", null: false
    t.string "image_url", default: "", null: false
    t.string "video_url"
    t.integer "age_group", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "object", null: false
    t.index ["category_id"], name: "index_activities_on_category_id"
    t.check_constraint "age_group > 0 AND age_group <= 3", name: "age_group_check"
  end

  create_table "categories", force: :cascade do |t|
    t.string "sort", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "child_activities", force: :cascade do |t|
    t.bigint "child_id", null: false
    t.bigint "activity_id", null: false
    t.boolean "completed", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["activity_id"], name: "index_child_activities_on_activity_id"
    t.index ["child_id"], name: "index_child_activities_on_child_id"
  end

  create_table "children", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "name", default: "", null: false
    t.integer "age", default: 0, null: false
    t.string "gender", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_children_on_user_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "activity_id", null: false
    t.integer "rating", null: false
    t.text "content", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["activity_id"], name: "index_reviews_on_activity_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "username", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["username"], name: "index_users_on_username", unique: true
  end

  create_table "wishlists", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "activity_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["activity_id"], name: "index_wishlists_on_activity_id"
    t.index ["user_id"], name: "index_wishlists_on_user_id"
  end

  add_foreign_key "activities", "categories"
  add_foreign_key "child_activities", "activities"
  add_foreign_key "child_activities", "children"
  add_foreign_key "children", "users"
  add_foreign_key "reviews", "activities"
  add_foreign_key "reviews", "users"
  add_foreign_key "wishlists", "activities"
  add_foreign_key "wishlists", "users"
end
