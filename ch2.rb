name = ARGV.join('')
order = case name
        when 'user_1' then 'order_1'
        when 'user_2' then 'order_2'
        when 'user_3' then 'order_3'
        else nil
        end
puts order

