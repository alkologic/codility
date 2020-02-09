def solution(a, b)
  a.zip(b).inject(0) do |count, pair|
    e, f = pair
    prod = e * f    
    gcd = e.gcd(f)

    while (gcd = prod.gcd(gcd)) != 1
      prod /= gcd 
    end

    prod == 1 ? count + 1 : count
  end  
end 
