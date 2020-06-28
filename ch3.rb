=begin 
1. Use %w{ } over [ ]
2. Use hash = { key: value, ... } if :key is a sym
   You can't do the above if the key is not a sym
3. Use arg* to accept an infinite amount of arguments
   arg* doesn't need to be last. eg. add_line_item(datetime, line_items*, user)
4. Methods don't need (). It's only added to communicate the parameter has a default value
   change_color() #=> change to default color
   change_color("FFFFF")
5. A method that accepts a hash as it's last parameter doesn't need {}.
   load_font({ :font => 'Times New Roman', :size => 12 })
   load_font( :font => 'Times New Roman', :size => 12 )
   load_font :font => 'Times New Roman', :size => 12
   load_font(font: 'Times New Roman', size: 12)
6. pp is pretty print
   p uses inspect (Most useful for debugging)
   puts uses .to_s
=end   


hash = { 'product' => 1, 'zipcode' => '3X3 K2F', 200 => 'yes' }

hash = { :first_name => 'kai', :last_name => 'zhong' }
hash = { first_name: 'kai', last_name: 'zhong' }
hash.each{|pair| pp pair }
hash. each{|k, v| puts "individual key-value pairs: #{k} & #{v}"}

array = [ 1, 10, 34, 23, 5, 293, 39, 9, 0]
new_array = array.map{|i| i.to_s }
pp new_array

array.find_index{|i| i == 293}

array = %w(Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century who is thought to have scrambled parts of Cicero's De Finibus Bonorum et Malorum for use in a type specimen book)
def average_word_length(array)
  total = array.inject(0.0){|result, i| i.size + result }
  total / array.size
end
puts average_word_length(array)

# class Document
#   def add_authors(authors)
#     @authors += " #{authors.join(' ')}"
#   end
# end
# doc = Document.new
# doc.add_authors(['Liu Cixin', 'Ken Liu'])

# class Document
#   def add_authors(*authors)
#     @authors += " #{authors.join(' ')}"
#   end
# end

# doc.add_authors('Liu Cixin', 'Ken Liu')

