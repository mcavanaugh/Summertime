#!/usr/bin/env ruby

nlimit=20

def doit(nl)
   p "start of doit\n"
   n = 0

   # first clear out the current records
   CurrentSymbol.delete_all

   # Create a new random set
   @si = SymbolInfo.order("random()").limit(nl)
   @si.each do |i|
     printf " %d %s\n",i.id,i.symbol
     c = CurrentSymbol.new
     c.symbol_info_id = i.id
     c.symbol = i.symbol
     if c.save
        n=n+1
        GC.start if n%50==0
     end
   end
   printf "Processed %d rows\n",n
end

p "start\n"

#printf "argv1 = %s %s\n", ARGV[0], ARGV[1]

#
doit(nlimit)

