module BooksHelper
    #Ici, le helper book_link prend un livre en paramètre et retourne un lien HTML. Dans la vue, j’ai remplacé le lien par un appel de ce helper. Notez les html_safe utilisés çà et là. Essayez votre code avec et sans. Sans, le code HTML ne sera pas interprété. Autrement dit, au lieu d’afficher un lien, cela va afficher la balise elle-même.
    def book_link the_book
    html = "<a href='/books/#{the_book.id}'>".html_safe
    html += the_book.title
    html += "</a>".html_safe
    html
  end
end