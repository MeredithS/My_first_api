module Person
	class Info < Grape::API

		resource :employee_data do
			desc "List all Employees"

			get do
				Employee.all
			end

			desc "create a new employee"
			params do
				requires :first_name, type:String
				requires :last_name, type:String
				requires :job_title, type:String
				requires :company_id, type:Integer
			end

			post do
				Company.create!({
					first_name:params[:first_name],
					last_name:params[:last_name],
					job_title:params[:job_title],
					company_id:params[:company_id]
					})
			end
			
		end
	end
end