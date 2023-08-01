numbers = [1, 2, 3, 4, 5]
sum = numbers.reduce(0) { |acc, num| acc + num }
puts sum # Output: 15

# **********************

def active_cells(components)
  selected_cells = UiConfiguration.total_cells
  active_cells = []
  components.reduce(0) do |sum, component|
    sum < selected_cells ? active_cells.push(component) : break
    sum + component.number_of_cells
  end
  active_cells
end
