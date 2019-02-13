class Contact
  # MixIn
  include ActiveModel::Model

  attr_accessor :name, :email, :subject, :message

  # validations
  validates :name, presence: true
  validates :email, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }, presence: true
  validates :message, presence: true, length: {maximum: 30}
  validates :message, presence: true, length: {maximum: 1000}

  # method例
  def all
    run_callbacks :save do
      'sample data'
    end
  end

  # method例
  def find(id)
    run_callbacks :save do
      %Q(sample data: #{id})
    end
  end

  # callback用 validation
  private
  def form_validation
    self.valid?
  end
end