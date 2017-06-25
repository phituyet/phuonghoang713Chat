class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true
  #has_many :received_messages, class: "Message", foreign_key: :recipient_id
  def received_messages
    Message.where(recipient_id: id)
  end

  def sent_messages
    Message.where(sender_id: id)
  end

  # def to_s
  #   "#{name}:#{email}"
  # end
  #
  # def unread_messages
  #   received_messages.where(read_at: nil)
  # end
end
