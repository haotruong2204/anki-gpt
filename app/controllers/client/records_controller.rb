# frozen_string_literal: true

class Client::RecordsController < Client::BaseController
  def create
    @record = Record.new record_params
    @record.account_id = current_account.id

    if @record.save
      flash[:success] = "Tạo bản ghi thành công."
      current_account.histories.create(
        type_history: :download, 
        title: "Tải xuống file luyện viết #{@record.type_record}",
        description: "Chúc bạn học thật tốt với file luyện viết này"
      )
      redirect_to root_path
    else
      flash[:error] = "Tạo bản ghi thất bại."
      redirect_to root_path
    end
  end

  private

  def record_params
    params.require(:record).permit Record::ATTRS
  end
end
