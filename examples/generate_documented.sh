#!/bin/bash

static_dirs="cmdline elwms matlab_and_octave python r"
modular_dirs="octave_modular python_modular r_modular"
lib_dirs=libshogun 

document_interface()
{
	iftype=$1
	
	if [ $iftype == "static" ]
	then
		if_dirs="${static_dirs}"
		if_descr_dir="static"

	elif [ $iftype == "modular" ]
	then
		if_dirs="${modular_dirs}"
		if_descr_dir="modular"
	fi

	for d in ${if_dirs}
	do

		files=`ls -1 undocumented/$d | grep -v check.sh`
		rm -rf documented/$d
		mkdir documented/$d


		for f in $files
		do
			doc=`echo $f | cut -f 1 -d '.' | sed 's/_modular$//'`.txt
			#echo undocumented/$d/$f
			if test -f undocumented/$d/$f
			then
				if test -f descriptions/${if_descr_dir}/$doc
				then
					suffix=`echo $f | cut -f 2 -d '.'`

					case "$suffix" in 
						(py)
							prefix="#"
							;;
						(sg)
							prefix="%"
							;;
						(m)
							prefix="%"
							;;
						(R)
							prefix="#"
							;;
					esac
					( cat descriptions/${if_descr_dir}/$doc | sed "s/^/$prefix /" ; \
						echo; \
						cat undocumented/$d/$f ) >documented/$d/$f
				else
					cat undocumented/$d/$f >documented/$d/$f
				fi
			fi
		done

		test -d undocumented/$d/graphical && \
			( mkdir documented/$d/graphical &&  \
			cp undocumented/$d/graphical/* documented/$d/graphical/ )
	done
}

document_interface "static"
document_interface "modular"
exit 0