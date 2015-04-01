class ProductsController < ApplicationController
	def index
	@products = Product.all
	end

	def show
	@product = Product.find(params[:id])
	end

	def new
	@product = Product.new
	end

	def create
	@product = Product.new(product_params)
		if @product.save
			redirect_to(:action => 'index')
		else
			render('new')
		end
	end

	def edit		
	end

	def update
	end

	def delete
	end
	 
	def destroy
	end

private

def product_params
	params.require(:product).permit(:name,:description,:price,:reduction,:image)
end

end
