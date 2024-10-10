#!/bin/bash
select opcion in Listar DondeEstoy QuienEsta
do 
	case $opcion in 
		Listar)
			 ls
		;;
		DondeEstoy)
			pwd
		;;
		QuienEsta)
			who
		;;
		*)
			echo "Opción no válida"
		;;
	esac
done

