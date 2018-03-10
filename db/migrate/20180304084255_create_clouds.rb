class CreateClouds < ActiveRecord::Migration[5.1]
  def change
    create_table :clouds do |t|
      t.string :name, null: false
      t.string :info, null: false
      t.json :configs, null: false  #AWS 클라우드 접속에 필요한 옵션 정보들을 json 형태로 받아서 처리한다
      t.string :description
      t.timestamps
    end
  end
end
