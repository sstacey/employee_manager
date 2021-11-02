module ApplicationHelper
  def sort_link(column:, label:, table:)
    if column == params[:column]
      # link_to(label, employees_path(column: column, direction: next_direction))
      link_to(label, eval("#{table}_path(column: column, direction: next_direction)"))
    else
      # link_to(label, employees_path(column: column, direction: 'asc'))
      link_to(label, eval("#{table}_path(column: column, direction: 'asc')"))

    end
  end

  def next_direction
    params[:direction] == 'asc' ? 'desc' : 'asc'
  end
end
