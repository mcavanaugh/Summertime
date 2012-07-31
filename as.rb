require 'csv'

class csv_import < ActiveRecord::Base
  filename="/home/mike/2.csv"
  @parsed_file=CSV::Reader.parse(File.open(filename, 'rb'))
   n=0
   p "start of csv_import\n"
   @parsed_file.each  do |row|
     p row
     c=SymbolInfos.new
     c.symbol=row[1]
     c.company_name=row[2]
     c.exchange=row[3]
     if c.save
        n=n+1
        GC.start if n%50==0
     end
   end
   printf "Processed %d rows\n",n
end


