class AccountsController < ApplicationController

  before_action :find_will
  before_action :find_account , :except => [:index , :create]

  def index
    @accounts = controller_index(controller_name)
  end

  def create
    @account = controller_create( controller_name , params_account)
    respond_to do |format|
      format.js
    end
  end

  def show
    @account = controller_show( controller_name , params[:id] )
  end

  def update
    @account = controller_update( controller_name , params[:id] , params_account )
  end

  def destroy
    @account = controller_destroy( controller_name , params[:id] )
    respond_to do |format|
      format.js
    end
  end



  protected

  def find_will
    @will = current_will
  end

  def find_account
    @account = @will.accounts.find_by_id(params[:id])
  end

  def params_account
    params.require(:account).permit(:bank , :account_type , :heir)
  end
  
end