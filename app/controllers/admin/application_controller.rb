class Admin::ApplicationController < ApplicationController
  before_filter :authenticate_admin!

  add_breadcrumb "Admin", :admin_panel_path, :options => {:title => "Admin Panel"}

end
