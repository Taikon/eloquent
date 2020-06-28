# 1. Use regexp with case statements for more flexible evaluation
# 2. Don't use ||= to initialize booleans. @cart ||= Cart.find(session[:cart_id]) is fine bc not a bool

# Accepts argument vector (CLI) and evaluates it with regexp case statements
# $ ruby ch2.rb War and Peas #=> 'Maybe Tolstoy?'
query = ARGV.join(' ')
puts query
search = case query
        when /War And .*/ then 'Maybe Tolstoy?'
        when /Romeo and .*/ then 'Maybe Shakespeare?'
        else 'No idea'
        end
puts search

query ||= ' '
puts query
