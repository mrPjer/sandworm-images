declare -a images=(
	"base"
	"lang-c_cpp"
	"lang-javascript"
	"lang-python2"
	"lang-python3"
)

for i in "${images[@]}"
do
	echo ":: Building $i"
	cd $i
	"./build.sh" $1
	cd ..
done
