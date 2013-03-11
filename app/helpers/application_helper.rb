module ApplicationHelper
  def intellinav
    links = ""
    if @auth.present?
      links += render :partial => 'layouts/hoodnav'
      links += "<li>#{link_to('Logout', login_path, :method => :delete)}"
    else
      links += "<li>#{link_to('Create Account', new_user_path)}</li>"
      links += "<li>#{link_to('Login', login_path)}</li>"
    end
  end
end