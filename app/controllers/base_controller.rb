class BaseController < ApplicationController
  before_action :logged_in_user
end
