module Validation
    def self.valid_name?(string)
      !string.nil? && !string.empty? && string.length <= 40 && string.match?(/\A[A-Za-z\-]+\z/)
    end
  
    def self.valid_inn?(string)
      !string.nil? && !string.empty? && string.match?(/\A[A-Z]{2}\d{10}\z/)
    end
  
    def self.after_date?(date)
      date && date <= Date.today
    end
  end
  
  name = "Valentyn"
  puts Validation.valid_name?(name) # Output: true
  
  inn = "AZ1234543456"
  puts Validation.valid_inn?(inn) # Output: true
  
  date = Date.parse("2003-10-05")
  puts Validation.after_date?(date) # Output: true
  