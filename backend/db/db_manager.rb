require 'pg'

class ManageDatabase
  def self.setup_table(conn)
    query = <<-SQL
      CREATE TABLE IF NOT EXISTS tests_data (
        id SERIAL PRIMARY KEY,
        cpf VARCHAR(14),
        nome_paciente VARCHAR(255),
        email_paciente VARCHAR(255),
        data_nascimento_paciente DATE,
        endereco_rua_paciente TEXT,
        cidade_paciente VARCHAR(255),
        estado_patiente VARCHAR(255),
        crm_medico VARCHAR(10),
        crm_medico_estado VARCHAR(2),
        nome_medico VARCHAR(255),
        email_medico VARCHAR(255),
        token_resultado_exame VARCHAR(6),
        data_exame DATE,
        tipo_exame VARCHAR(255),
        limites_tipo_exame VARCHAR(10),
        resultado_tipo_exame VARCHAR(5)
      )
    SQL

    conn.exec(query)
  end
end
