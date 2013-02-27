file_name  = "r_reflex.txt"
a, b = file_name.split('.')
a.to_s
b.to_s
file = IO.read(file_name).force_encoding("KOI8-R").encode("utf-8", replace: nil)
arr = file.scan (/.{1,10240}/m)
arr.each_index { |i| File.open(a + i.to_s + '.' +b, 'w') { |f| f.write(arr[i]) } }