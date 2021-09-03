#copy and go to dir
cpg (){
  if [ -d "$2" ];then
    cp $1 $2 && cd $2
  else
    cp $1 $2
  fi
}

#move and go to dir
mvg (){
  if [ -d "$2" ];then
    mv $1 $2 && cd $2
  else
    mv $1 $2
  fi
}
# Advanced Bash Script to Update the System
update () {
	echo "Starting Full System Update..."
	sudo apt update -qq
	sudo apt dist-upgrade -yy
	sudo apt-get autoremove -yy
	echo "--------------------"
	echo "- Update Complete! -"
	echo "--------------------"
	return
}
# Good Func to Extract Files
extract () {
	if [ -f $1 ] ; then
		case $1 in
			*.tar.bz2)	tar xjf $1		;;
			*.tar.gz)	tar xzf $1		;;
			*.bz2)		bunzip2 $1		;;
			*.rar)		rar x $1		;;
			*.gz)		gunzip $1		;;
			*.tar)		tar xf $1		;;
			*.tbz2)		tar xjf $1		;;
			*.tgz)		tar xzf $1		;;
			*.zip)		unzip $1		;;
			*.Z)		uncompress $1	;;
			*)			echo "'$1' cannot be extracted via extract()" ;;
		esac
	else
		echo "'$1' is not a valid file"
	fi
}
# Unzip and Remove
ziprm () {
	if [ -f $1 ] ; then
		unzip $1
		rm $1
	else
		echo "Need a valid zipfile"
	fi
}
function ytdl ()
{
    cd ~/Downloads/YouTube && {
        `which youtube-dl` "$@"
        cd - > /dev/null
    }
}
