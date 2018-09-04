class Account::GroupsController < ApplicationController
  # 记得要加入： before_action :authenticate_user!，限制必须要得登录使用者，才能看。
  before_action :authenticate_user!
  def index
    @groups = current_user.participated_groups
  end

end
