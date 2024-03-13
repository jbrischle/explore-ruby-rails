class AccountsController < ApplicationController
  def index
    @accounts = Account.all
  end

  def show
    @account = Account.find(params[:id])
  end

  def new
    @account = Account.new
  end

  def create
    @account = Account.new(article_params)

    if @account.save
      redirect_to @account
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @account = Account.find(params[:id])
  end

  def update
    @account = Account.find(params[:id])

    if @account.update(article_params)
      redirect_to @account
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @account = Account.find(params[:id])
    @account.destroy

    redirect_to root_path, status: :see_other
  end

  private

  def article_params
    params.require(:account).permit(:title, :bankName, :iban)
  end

end
