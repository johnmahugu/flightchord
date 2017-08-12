module ApplicationHelper
  
  def uikit_alert flash_type
    case flash_type
      when 'success'
        'uk-alert-success'
      when 'error'
        'uk-alert-danger'
      when 'alert'
        'uk-alert-warning'
      when 'notice'
        'uk-alert-primary'
      else
        'uk-alert-primary'
    end
  end

end
