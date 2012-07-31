#!/usr/bin/env ruby

require 'fastercsv'

fn="/home/mike//ZZ.csv"

def csv_import(ssym,filename)
   n=0
   p "start of csv_import\n"
   FasterCSV.foreach(filename,{:headers=>true, :return_headers=>false,:row_sep=>"\n"}) do |row|
     p row
     c=DailyPrice.new
     c.created_at=row[0]
     c.symbol=ssym
     c.opening=row[1]
     c.high=row[2]
     c.low=row[3]
     c.closing=row[4]
     c.volume=row[5]
     if c.save
        n=n+1
        GC.start if n%50==0
     end
   end
   printf "Processed %d rows\n",n
end

p "start\n"

printf "argv1 = %s %s\n", ARGV[0], ARGV[1]

#csv_import(fn)
csv_import(ARGV[0],ARGV[1])

