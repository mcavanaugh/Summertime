#!/usr/bin/env ruby

require 'csv'

fn="/home/mike/NYSE.csv"

def csv_import(filename)
  @parsed_file=CSV::Reader.parse(File.open(filename, 'rb'))
   n=0
   p "start of csv_import\n"
   @parsed_file.each  do |row|
     p row
     c=SymbolInfo.new
     c.symbol=row[0]
     c.company_name=row[1]
     c.exchange=row[2]
     if c.save
        n=n+1
        GC.start if n%50==0
     end
   end
   printf "Processed %d rows\n",n
end

p "start\n"

csv_import(fn)

