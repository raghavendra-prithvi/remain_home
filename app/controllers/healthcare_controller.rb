class HealthcareController < ApplicationController
  def medication
    @medication = Medication.all
  end

  def contact
  end

  def calendar
  end
  
  def backup_contact
  end

  def checklist
    @check_lists = Checklist.all
  end

  def reminders
    @ms = Medication.all
    @hour = Time.new.hour
  end
  
  
  def docgraph_proc
    
  end
  def import_docgraph_proc
    csv_text = File.read(params[:proc])
    csv = CSV.parse(csv_text, :headers => true)
    csv.each do |row|
      DocgraphProc.create!(row.to_hash)
    end
    render :text => csv_text.inspect.to_s
  end
  
end
