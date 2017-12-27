class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.integer :user_id
      # 가끔 integer 대신 belongs_to 자료형으로 설정될 수 있다. 같은 의미의 코드
      # t.belongs_to :user == t.integer :user_id

      t.timestamps null: false
    end
  end
end
