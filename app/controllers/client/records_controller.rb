# frozen_string_literal: true

class Client::RecordsController < Client::BaseController
  before_action :set_record, only: [:show]

  def show
    svg = HandleSvgService.new
    @list_path = svg.handle_kanji @record.kanji_list
  end

  def create
    @record = Record.new record_params
    @record.account_id = current_account.id
    @record.name = "Code=#{SecureRandom.uuid}-#{Time.zone.now.to_i}"

    if @record.save
      flash[:success] = "Tạo bản ghi thành công."
      current_account.histories.create(
        type_history: :download,
        title: "Tạo bản nháp thành công.",
        description: "Chúc bạn học thật tốt với file luyện viết này",
        record_id: @record.id
      )
      redirect_to @record
    else
      flash[:error] = "Tạo bản ghi thất bại."
      redirect_to root_path
    end
  end

  private

  def record_params
    params.require(:record).permit Record::ATTRS
  end

  def set_record
    @record = Record.friendly.find(params[:id])
  end
end
