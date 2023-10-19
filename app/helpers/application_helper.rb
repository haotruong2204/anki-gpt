# frozen_string_literal: true

module ApplicationHelper
  FLASH_TYPE = {
    success: "success", error: "error", failed: "failed",
    alert: "error", notice: "success", danger: "danger"
  }.freeze

  def flash_class flash_type
    FLASH_TYPE[flash_type] || flash_type.to_s
  end

  def active_sidebar path, controller, action = "index"
    if current_page?(path) || (controller_name == controller && action_name == action)
      "active border-primary border-dashed"
    else
      "border-gray-200"
    end
  end

  def get_path_record id
    record_path Record.find id
  end
end
