class PeopleController < ApplicationController

	def create
		Person.create(params[:person])
	end

	def update
		person = Person.find(params[:id])
		person.update!(person_params)
		redirect_to person_path(person)
	end

	private

		def person_params
			params.require(:person).permit(:name, :age)
		end

end
