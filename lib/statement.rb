require_relative 'account'

class Statement

  def print(transactions)
    puts 'date || credit || debit || balance'
    # transactions.sort_by.max {|s|s[0]} 
    transactions.reverse.each do |x|
    puts x
  end
end 

end