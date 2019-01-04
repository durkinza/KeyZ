# Key files
generates key value associated files to store and retreive data
key files are created with a maximum key size and maximum data size and maximum row size

	Usage: key {-s | -g } -[oqd] file key
	       key -[hnkpv] file
		-h		Show help
		-g		Get data
		-n		For returning header values of file (k, v, p)
		-s		Set data
		-o		Set to no overwrite
		-q		For silencing misuse messages
		-d		Set debugging
	
		(Only available when creating a new key file)
		-k		For setting key value size (default: 32)
		-p		For setting number of rows in file (default: 64)
		-v		For setting max value size of file (default: 331)

Ex.

	key -k60 -v61 -p62 data.key
	key -n data.key
	60 61 62 
	
	rm data.key
	
	key data.key
	key -n data.key
	32 64 331
	
	echo John | key -s data.key Name 
	key -g data.key Name
	John 


Compression of strings is done with the Smaz libarary
https://github.com/antirez/smaz
