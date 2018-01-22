module ApplicationHelper
  def title_content(title, path = nil, path_name = nil)
    content_tag(:div,(
      content = content_tag(:h3, title)
      content += content_tag(:div,(
        link_to(path_name, path, class: "btn btn-outline-primary")
      ),
      class: "btn-toolbar mb-2 mb-md-0") if path
      content
      ),
    class: "d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pb-2 mb-3 border-bottom")
  end

  def menu_item(icon, title, url, icon_option = nil)
    content_tag(:li,
      (link_to url, class: "nav-link #{request.path == url ? 'active' : ''}" do
        item = fa_icon icon, class: icon_option
        item += title
        item += "<span class='sr-only' current=''></span>".html_safe if request.path == url
        item
      end),
      class: "nav-item"
    )
  end
end
