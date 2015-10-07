# When done, submit this entire file.

# Part 1

def sum arr
  # YOUR CODE HERE
  sum=0;
  arr.each do |x|
  	sum=sum+x;
  end
  return sum;

end

def max_2_sum arr
  # YOUR CODE HERE
if arr.size==0 then
	return 0;
elsif arr.size==1 then
	temp=arr[0];
	return temp;
else
	n2=arr.sort
	return n2[n2.size-1]+n2[n2.size-2];
end
   
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  i=0;
if arr.size==0
	return false;
else
	while i<arr.size
 	j=i+1;
 	while j<arr.size
 		if (arr[i]+arr[j])==n
 			return true;
 		end
 		j+=1;
 	end
 	i+=1;
 	
 end
 return false
	
end
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello"
end

def starts_with_consonant? s
  # YOUR CODE HERE
	if /^a|^e|^i|^o|^u/i=~s
		return true;
	end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  	if /[^0-1]/=~s
	puts false;
	else
	i=0
	sum=0
	while i<s.size
	 	sum=sum+s[i].to_i*2**(s.size-i-1)
		i+=1;
	end
	return sum
end
end

# Part 3

class BookInStock
# YOUR CODE HERE
attr_accessor :ISBN
attr_accessor :BookPrice
	def initialize (isbnnum,price)
		begin
			if (isbnnum=="")||(price.to_i<=0)
				raise ArgumentError, "input fromat error"
			end
		@ISBN = isbnnum
		@BookPrice = price
		rescue Exception => e
			
		end
		
	end

	def price_as_string 
		return format("$%0.2f",@BookPrice)
	end
end
