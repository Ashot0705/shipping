module ApplicationHelper
	def flash_for_field(field_name)
		flash[:notice] && flash[:notice][field_name] ? "#{field_name.capitalize} #{flash[:notice][field_name][0]}" : nil
	end
end
