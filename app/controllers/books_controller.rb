class BooksController < ApplicationController
  def index
      @books = Book.page(params[:page]).per(10)
      @categories = Category.all
  end

  def create
    Book.create title: params[:title], category_id: params[:category_id]
    redirect_to "/books"
  end

  def show
    @book = Book.find(params[:id])
  end
    
#Si l’update se passe bien, vous serez redirigé comme avant. Et sinon, le code appelle la vue de « show ». Pour que la vue de show fonctionne, elle a besoin de la variable @book, c’est pourquoi elle est là.
  def update
    @book = Book.find(params[:id])
      if @book.update title: params[:title]
    redirect_to "/books/#{params[:id]}"
      else
          render 'show'
      end
  end

  def destroy
    Book.find(params[:id]).destroy
    redirect_to "/books"
  end
end
