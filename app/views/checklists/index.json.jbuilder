json.array!(@checklists) do |checklist|
  json.extract! checklist, :id, :name, :description
  json.url checklist_url(checklist, format: :json)
end
