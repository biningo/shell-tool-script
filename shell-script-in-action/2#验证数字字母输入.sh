#/bin/bash
validPlphaNum(){
	
	validchars="$(echo $1 | sed -e 's/[^[:alnum:]]//g')"

	if [ $validchars = "$1" ] 
	then
		return 0
	else
			return 1
	fi
}
echo "Enter input:"
read input
if ! validPlphaNum $input ; then
  echo "Your input must consosy of noly letters and numbers." >&2
  exit 1
else
  echo "Input is valid."
fi

exit 0
