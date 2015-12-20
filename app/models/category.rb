# app/models/category.rb
#belongs_to signifie « appartient à » ; has_many signifie « possède plusieurs ». Littéralement, cela se lit ainsi : « Un livre appartient à une catégorie » et « Une catégorie possède plusieurs livres ». Retenez les mots-clés belongs_to et has_many.
class Category < ActiveRecord::Base
    has_many :books
end