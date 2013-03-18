module ApplicationHelper
  def login_nav
    if @auth.present?
      "<li>#{link_to('logout', '/login', :method => :delete, :remote => :true, :class => 'button medium')}</li>"
    end
  end
end