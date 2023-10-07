# frozen_string_literal: true

module ApplicationHelper
  FLASH_TYPE = {
    success: "success", error: "error", failed: "failed",
    alert: "error", notice: "success", danger: "danger"
  }.freeze

  def flash_class flash_type
    FLASH_TYPE[flash_type] || flash_type.to_s
  end
end
