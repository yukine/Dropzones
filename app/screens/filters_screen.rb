class FiltersScreen < PM::TableScreen
  # searchable
  title "Filter Dropzones"
  tab_bar_item title: "Filters", item: "filter"

  def on_load
  end

  def table_data
  [{
    title: nil,
    cells: [{
      title: "Near Me",
      subtitle: "Find the DZs closest to you right now!"
    }, {
      title: "By State",
      subtitle: "All the DZs nicely organized by state.",
      action: :show_by_state,
      accessory_type: :disclosure_indicator
    }, {
      title: "Aircraft Type",
      subtitle: "Looking to jump a specific aircraft?",
      action: :show_by_aircraft,
      accessory_type: :disclosure_indicator
    }, {
      title: "Training Capabilities",
      subtitle: "Too cool for AFF and want to try static line?",
      action: :show_by_training,
      accessory_type: :disclosure_indicator
    },{
      title: "Services Offered",
      subtitle: "Make sure the DZ has what you're looking for.",
      action: :show_by_services,
      accessory_type: :disclosure_indicator
    }]
  }]
  end

  def show_by_state
    open StatesScreen
  end

  def show_by_aircraft
    open AircraftScreen
  end

  def show_by_training
    open TrainingScreen
  end

  def show_by_services
    open ServicesScreen
  end
end
