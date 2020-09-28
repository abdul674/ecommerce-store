module ApplicationHelper
  def flash_classes(type)
    {
      alert: 'alert-warning',
      notice: 'alert-success',
      error: 'alert-danger'
    }[type.to_sym]
  end
end
