class ReportFieldLine < ActiveRecord::Base
  attr_accessible :report_id, :report_field_id, :value

	belongs_to :report
	belongs_to :report_field

	validates_each :value, :if => :is_number? do |record, attr, value|
		if !record.report_field.required and (value.nil? or value.blank?)
			value = 0
		elsif value =~ /^\s*\d+(\.\d+)?\s*$/
			value = String(Integer(Float(value))) if record.report_field.field_type == 'I'
			value = String(Float(value)) if record.report_field.field_type == 'D'
		else
			record.errors.add(attr, "\"#{record.report_field.name}\" must be a number")
			record.report.errors.add(attr, "\"#{record.report_field.name}\" must be a number")
		end
	end

	def is_number?
		return report_field.is_number?
	end
end
