module ApplicationHelper
  def full_title(page_title = '') #定义方法，参数可选
    base_title = "Ruby on Rails Tutorial Sample App" # 变量赋值
    if page_title.empty? # 布尔测试
      base_title #隐式返回值
    else
      "#{page_title} | #{base_title}" # 字符串插值
    end
  end
end
