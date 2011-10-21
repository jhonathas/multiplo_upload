class Foto < ActiveRecord::Base
 	
	include Rails.application.routes.url_helpers
	
	image_accessor :imagem
	
	def imagem_multipla=(value)
		self.imagem = value.first
	end

   #one convenient method to pass jq_upload the necessary information
	def to_jq_upload
		{
		 "name" => read_attribute(:imagem_name),
		 "size" => imagem.size,
		 "url" => foto_path(:id => id),
		 "thumbnail_url" => imagem.thumb('80x80#').url,
		 "delete_url" => foto_path(:id => id),
		 "delete_type" => "DELETE" 
		}
	end

end
