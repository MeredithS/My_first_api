module Institution
	class Info < Grape::API

		resource :company_data do
			desc "List all Companies"

			get do
				Company.all
			end

			desc "create a new company"
			params do
				requires :name, type:String
			end

			post do
				Company.create!({
					name:params[:name]
					})
			end

		end
	end
end