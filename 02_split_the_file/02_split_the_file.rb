file_name  = "r_reflex.txt"
block_size = 10240.0 # 1 kB=1024 B, 10kB=10240 B

a, b = file_name.split('.')
a.to_s
b.to_s

file = IO.read(file_name)
file_size = file.size
steps = (file.size / block_size).ceil - 1

for i in 0..steps do
	new_file = file[(i * block_size)..(i.next * block_size - 1)]
	new_file_name = a + i.to_s + '.' +b
	File.open(new_file_name, 'w') {|f| f.write(new_file) }
end