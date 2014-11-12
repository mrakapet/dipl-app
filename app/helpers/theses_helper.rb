module ThesesHelper
	def faculties
		ff = Faculty.all.map { |f| [f.name, f.id] }
		options_for_select(ff)
	end
end
