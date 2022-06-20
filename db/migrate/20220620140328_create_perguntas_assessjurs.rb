class CreatePerguntasAssessjurs < ActiveRecord::Migration[6.1]
  def change
    create_table :perguntas_assessjurs do |t|
      t.text :duvida
      t.string :tel
      t.string :email
      t.string :tp_duvida
      t.string :status
      t.string :numatd

      t.timestamps
    end
  end
end
