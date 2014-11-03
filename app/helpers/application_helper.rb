module ApplicationHelper
	def my_method(test)

	    u=URI.parse(test)
	    if (!u.scheme)
	        link = "http://" + test
	    else
	        link = test
	    end
	end

	def mark_required(object, attribute)
	  "*" if object.class.validators_on(attribute).map(&:class).include? ActiveRecord::Validations::PresenceValidator
	end

end
