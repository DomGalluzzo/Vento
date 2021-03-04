module ApplicationHelper
  # On dashboard, changes user's answers from forms to display "yes" or "no" depending on boolean
  def check_bool(answer)
    if answer.eql?(true)
      "Yes"
    else
      "No"
    end
  end
end
