class MessagesController < ApplicationController

#  skip_before_action :authenticate_user, only: [:new]

  def index
    @messages = current_user.received_messages
  end
end
