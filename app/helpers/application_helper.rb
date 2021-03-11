module ApplicationHelper
  # On dashboard, changes user's answers from forms to display "yes" or "no" depending on boolean
  def check_bool(answer)
    if answer.eql?(true)
      "Yes"
    else
      "No"
    end
  end

  # Open and read SVG file
  def show_svg(path)
    File.open("app/assets/images/svg_img/#{path}", "rb") do |file|
      raw file.read
    end
  end
end
