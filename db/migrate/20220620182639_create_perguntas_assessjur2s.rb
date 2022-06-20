class CreatePerguntasAssessjur2s < ActiveRecord::Migration[6.1]
  def change
    create_table :perguntas_assessjur2s do |t|
      t.json :duvida
      t.string :tel
      t.string :email
      t.string :tp_duvida
      t.string :status
      t.string :numatd

      t.timestamps
    end
  end
end
