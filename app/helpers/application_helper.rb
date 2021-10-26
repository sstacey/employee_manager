module ApplicationHelper
  def sort_link(column:, label:)
    link_to(label, employees_path(column: column))
  end
end
