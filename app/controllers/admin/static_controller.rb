class Admin::StaticController < Admin::ApplicationController
  before_filter :authenticate_admin!

  def home
  end
end
