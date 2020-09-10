class GreetingKata
    def GreetingKata.greet(name='my friend')
        greeting_upper = 'HELLO '
        greeting_norm = 'Hello, '
        upper_name_list = []
        norm_name_list = []
        
        if(name.instance_of? String)
            name = [name]
        end
        
        for i in 0..name.length-1
            current_name = delete_quote(name[i])
            if(is_str_uppercase(current_name))
                upper_name_list.push(current_name)
            else
                norm_name_list.push(current_name)
            end
        end
        
        greeting_upper += join_name(upper_name_list).upcase + '!'
        greeting_norm += join_name(norm_name_list) + '.'
        
        return "#{greeting_norm} AND #{greeting_upper}" if(norm_name_list.length > 0 && upper_name_list.length > 0)
        return greeting_upper if(upper_name_list.length > 0)
        greeting_norm if(norm_name_list.length > 0)
    end
    
    def GreetingKata.is_str_uppercase(str)
        str.each_char{ |c|
            return false if(c != ' ' && /[[:lowcase]]/.match(c))
        }
        true
    end
    
    def GreetingKata.join_name(list)
        str = list.join(', ')
        for i in 0..str.length-1
            p = str.length - 1 - i
            if(str[p] == ',')
                str[p] = (list.length == 2) ? ' and' : ', and'
                break
            end
        end
        str
    end
    
    def GreetingKata.delete_quote(str)
        str.gsub('\"', '')
    end
end