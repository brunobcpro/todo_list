class Item < ApplicationRecord
  # Validação para garantir que o status sempre tenha um valor
  validates :status, presence: true

  # Callback para inicializar o status como "Pendente" se não for definido
  after_initialize :set_default_status, if: :new_record?

  private

  def set_default_status
    self.status ||= "Pendente"
  end
end
