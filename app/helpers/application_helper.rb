module ApplicationHelper
	def my_method(test)

	    u=URI.parse(test)
	    if (!u.scheme)
	        link = "http://" + test
	    else
	        link = test
	    end
	end

end
