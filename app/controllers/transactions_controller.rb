class TransactionsController < ApplicationController
  def create
    @account = Account.find(params[:account_id])
    @transaction = @account.transactions.create(transaction_params)
    redirect_to account_path(@account)
  end

  private

  def transaction_params
    params.require(:transaction).permit(:amount, :sourceIban, :status)
  end
end
