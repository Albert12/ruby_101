FILE_NAME  = "r_reflex.txt"
a, b = FILE_NAME.split('.')
file = IO.read(FILE_NAME).force_encoding("KOI8-R")
arr = file.scan (/.{1,10240}/m)
arr.each_index { |i| File.open(a + i.to_s + '.' +b, 'w') { |f| f.write(arr[i]) } }