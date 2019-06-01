#*******************************************************************************************#
#                                                                                           #
#	Proteo V 1.0 : AN INSTALLATION PACKAGE FOR PROTEIN STRUCTURAL PREDICTION            #
#                                                                                           #
#*******************************************************************************************#
#   Contributors: Fahad Mehmood    (Department of Electrical Engineering,UET Lahore)        #
#       	  Moeez ur Rehman  (Department of Electrical Engineering,UET Lahore)        #
#	   	  Hammad 	   (Department of Electrical Engineering,UET Lahore)        #
#          	  Khizer Arif      (Department of Electrical Engineering,UET Lahore)        #
#*******************************************************************************************#


#! /bin/sh

#******************************** goto function ********************************************#

goto ()
{
	label=$1
	cmd=$(sed -n "/$label:/{:a;n;p;ba};" $0 | grep -v ':$')
	eval "$cmd"
	exit
}
#******************************* Password Funtion ******************************************#
Password ()
{
if sudo -n true 2>/dev/null; then
    echo "Super User Access Enabled"
	start;
else
   PASSWD="$(zenity --password --title=Authetication\n)";
case $? in
   	 0)
			echo -e $PASSWD | sudo -S echo " ";
			Password;
			exit ;;
         1) zenity 	--question \
			--text "Are you sure you want to exit the installation?" \
			--ok-label=Yes \
			--width=500 \
			--title="Proteo v1.0 Setup" \
			--cancel-label=No;
		case $? in
   			 0)
				echo "Installation Cancelled";
				exit ;;
    			 1)
				echo "Installation resumed";
				goto start;;
    			 -1)
        			echo "An unexpected error has occurred.";;
		esac;;
        -1)
                echo "An unexpected error has occurred.";
		zenity --error --width=500 --text "Error occurred during installation.";
		exit ;;
esac
fi
}

#******************************** Exit Case ************************************************#
start:
exit_case()
{
case $? in

         1) zenity 	--question \
			--text "Are you sure you want to exit the installation?" \
			--ok-label=Yes \
			--width=500 \
			--title="Proteo V1.0 Setup" \
			--cancel-label=No;
		case $? in
   			 0)
				echo "Installation Cancelled";
				exit ;;
    			 1)
				echo "Installation resumed";
				goto start;;
    			 -1)
        			echo "An unexpected error has occurred.";;
		esac;;
        -1)
                echo "An unexpected error has occurred.";
		zenity --error --width=500 --text "Error occurred during installation.";
		exit ;;
esac
}

#******************************** Main Page ************************************************#
Password;

zenity	--question \
	--height=400 --width=500 \
	--ok-label=Next \
	--cancel-label=Cancel \
	--title="Proteo V1.0 Setup" \
	--text="<span color=\"red\"><b><big>Welcome</big></b></span>\n\n \
Welcome to Proteo V1.0 Setup Wizard\n \
-------------------------------------------------------------------------------------------------------
Proteo is a Protein Structural Prediction Solution which installs all the necessary tools required to work with Protein Structure Prediction \n \

Proteo implements the complete software pipeline related to Protein Structural Prediction. It also provide a seperate GUI Application to install each tool related.\n\n\n\n\n\n\n\n\n \
Click Next to continue or Cancel to exit setup.\n"
exit_case;

#**************************** Internet Availability Check **********************************#
b=$(ping -q -w 1 -c 1 `ip r | grep default | cut -d ' ' -f 3` > /dev/null && echo 1 || echo 0);

if [ "$b" == 1 ]; then
	echo "Internet Available";
	zenity 	--info \
		--width=500 \
		--text "Internet connection check successful.\nTools installation will now proceed." \
		--title="Proteo V1.0 Setup"
else
	echo "No internet";
	zenity 	--error \
		--width=500 \
		--text "No internet connection available.\nPlease check your internet connection and restart the installation." \
		--title="Proteo V1.0 Setup"
	exit
fi

#************************************ Making Directories **********************************#
cd Shells
Shells=$(pwd);
sudo mkdir Proteo
cd Proteo
sudo mkdir Tools
cd Tools


#************************************ Tools Selection Screen ******************************#
selection=$(zenity --list --checklist \
	--width=500 --height=400  --title="Proteo V1.0 Setup" --text="Select the tools for Protein Structural Prediction you want to install." --separator=':'\
	--column="Select" --column="Sr" --column="Tool name" --column="Size (MB)" \
	FALSE	:	"**** Internal Symmetry Prediction ****" " "\
        FALSE 	1	"SymD"				"4.29"\
	FALSE 	2 	"CE-Symm" 			"19.1"\
	FALSE	:	"**** KNOT Prediction ****" " "\
	FALSE 	3 	"Knoto-ID"			"16.4"\
	FALSE 	4 	"PyLink"			"7.4"\
	FALSE	:	"**** Stability Change Prediction ****" " "\
	FALSE 	5 	"STRUM"				"13.4"\
	FALSE 	6 	"BALL_SNP"			"153"\
	FALSE 	7 	"RadAA"				"15.5"\
	FALSE 	8 	"iSEE"				"0.8"\
	FALSE 	9 	"AUTO_MUTE"			"24.2"\
	FALSE 	10 	"MODICT"			"9.1"\
	FALSE	:	"**** Contact Map Prediction ****" " "\
	FALSE	11	"C2S"				"30.7"\
	FALSE	12	"FP Filter" 			"2.2"\
	FALSE	13	"Pconsc"			"1.0"\
	FALSE	14	"CCMPred"			"0.2"\
	FALSE	15	"bbcontacts"			"1.1"\
	FALSE	16	"BCL"				"168"\
	FALSE	17	"FreeContact"			"0.4"\
	FALSE	18	"PyMDmix"			"9.7"\
	FALSE	19	"RRDistMaps"			"153"\
	FALSE	20	"XLmap"				"0.6"\
	FALSE	21	"RDb2C"				"87.7"\
	FALSE	22	"DeepCov"			"81.1"\
	FALSE	23	"hoDCA"				"0.2"\
	FALSE	24	"MemConP"			"186"\
	FALSE	25	"RawMSA"			"0.3"\
	FALSE	26	"COUSCOus"			"0.1"\
	FALSE	27	"RADI"				"687"\
	FALSE	:	"*** Co-evolving Residue Prediction ***" " "\
	FALSE	28	"cooccurNET" 			"0.1"\
	FALSE	29	"CorMut"			"0.3"\
	FALSE	30	"EVCouplings"			"18.0"\
	FALSE	:	"*** Allosteric Site Prediction ***" " "\
	FALSE	31	"ALLO"				"0.2"\
	FALSE	32	"Allopred"			"0.2"\
	FALSE	:	"*** Volume Calculation ***" " "\
	FALSE	33	"Betavoid"			"1.8"\
	FALSE	34	"NanoShaper"			"4.7"\
	FALSE	35	"POVME"				"39.6"\
	FALSE	36	"Protein Volume"		"2.2"\
	FALSE	:	"*** Repetitive Element Prediction ***" " "\
	FALSE	37	"CE-Symmetry"			"0.4"\
	FALSE	38	"ReUPred"			"4.2"\
	FALSE	:	"*** Structure Conservation Prediction ***" " "\
	FALSE	39	"deltaGseg"			"2.3"\
	FALSE	40	"GP4Rate"			"2.8"\
	FALSE	41	"JABAWS"			"306"\
	FALSE	:	"*** Bioinformatic Workflows ***" " "\
	FALSE	42	"PHOTON"			"56.9"\
	FALSE	:	"*** Dynamics Prediction ***" "  "\
	FALSE	43	"GROMACS"			"25.4"\
	FALSE	44	"PLUMED"			"65.9"\
	FALSE	45	"ProDy"				"1.6"\
	FALSE	46	"MSMBuilder"			"0.3"\
	FALSE	47	"OpenMM"			"3.5"\
	FALSE	48	"UNRES"				"4.5"\
	FALSE	49	"TimeScapes"			"1.1"\
	FALSE	50	"CafeMol"			"44.0"\
	FALSE	51	"MD-TASK"			"32.0"\
	FALSE	52	"PBxplore"			"55.0"\
	FALSE	53	"WESTPA"			"3.7"\
	FALSE	54	"pywindow"			"8.9"\
	FALSE	55	"SeeKR"				"8.3"\
	FALSE	56	"gmxapi"			"2.1"\
	FALSE	57	"VAMPnet"			"0.3"\
	FALSE	58	"PyCGTOOL"			"0.9"\
	FALSE	59	"MDTraj"			"65.0"\
	FALSE	60	"enspara"			"23.1"\
	FALSE	61	"Evol"				"1.4"\
	FALSE	62	"physicalvalidation"		"29.3"\
	FALSE	:	"*** Coiled-coil Domain Prediction ***" " "\
	FALSE	63	"Socket"			"106"\
	FALSE	64	"LOGICOIL"			"0.2"\
	FALSE	:	"*** Disorder Prediction ***" "  "\
	FALSE	65	"Mobi"				"16.1"\
	FALSE	66	"VB_DCMM"			"103"\


)
echo $selection

#************************************ Installation **************************************#
zenity 	--question \
	--text "<span><b>Ready to install</b></span>\n
Setup is now ready to install Proteo on your computer.
Installation will use at least 7-8GB of diskspace if all the softwares are selected." \
	--title="Proteo V1.0 Setup" \
	--height=400 --width=500 \
	--ok-label=Install \
	--cancel-label=Cancel \

exit_case


#************************** Tools Installation Screen ***********************************#
cd Shells;
if [ -z "$selection" ] ; then
   	echo "No Tools selected.";
  	zenity --error --width=500 --text "No Tools selected to install.";
exit;
fi
(
   echo $selection
    IFS=":" ; for word in $selection ; do
   case $word in

	1)
	cd $Shells;
	echo "# Installing SymD" ;
	chmod +x SymD_ubuntu.sh
		sudo bash SymD_ubuntu.sh
	sleep 2;;

	2)
	cd $Shells;
	echo "# Installing CE-Symm" ;
	chmod +x CESymm_ubuntu.sh
		sudo bash CESymm_ubuntu.sh
	sleep 2;;

	3)
	cd $Shells;
	echo "# Installing Knoto-ID" ;
	chmod +x Knoto-ID_ubuntu.sh;
		sudo bash Knoto-ID_ubuntu.sh;
	sleep 2;;

	4)
	cd $Shells;
	echo "# Installing PyLink" ;
	chmod +x PyLink_ubuntu.sh;
		sudo bash PyLink_ubuntu.sh;
	sleep 2;;

	5)
	cd $Shells;
	echo "# Installing STRUM" ;
	chmod +x STRUM_ubuntu.sh;
		sudo bash STRUM_ubuntu.sh;
	sleep 2;;

	6)
	cd $Shells;
	echo "# Installing BALLSNP" ;
	chmod +x BALLSNP_ubuntu.sh;
		sudo bash BALLSNP_ubuntu.sh;
	sleep 2;;

	7)
	cd $Shells;
	echo "# Installing RadAA" ;
	chmod +x RadAA_ubuntu.sh;
		sudo bash RadAA_ubuntu.sh;
	sleep 2;;

	8)
	cd $Shells;
	echo "# Installing iSEE" ;
	chmod +x iSee_ubuntu.sh;
	sudo bash iSee_ubuntu.sh;
	sleep 2;;

	9)
	cd $Shells;
	echo "# Installing AUTO_MUTE" ;
	chmod +x AutoMute_ubuntu.sh;
		sudo bash AutoMute_ubuntu.sh;
	sleep 2;;

	10)
	cd $Shells;
	echo "# Installing MODICT" ;
	chmod +x Modict_ubuntu.sh;
		sudo bash Modict_ubuntu.sh;
	sleep 2;;

	11)
	cd $Shells;
	echo "# Installing C2S" ;
	chmod +x C2S_ubuntu.sh
		sudo bash C2S_ubuntu.sh
	sleep 2;;

	12)
	cd $Shells;
	echo "# Installing FP Filter" ;
	chmod +x FPFilter_ubuntu.sh
		sudo bash FPFilter_ubuntu.sh
	sleep 2;;

	13)
	cd $Shells;
	echo "# Installing PconsC" ;
	chmod +x pconsC_ubuntu.sh;
		sudo bash pconsC_ubuntu.sh;
	sleep 2;;

	14)
	cd $Shells;
	echo "# Installing CCMpred" ;
	chmod +x CCMpred_ubuntu.sh;
		sudo bash CCMpred_ubuntu.sh;
	sleep 2;;

	15)
	cd $Shells;
	echo "# Installing bbcontacts" ;
	chmod +x bbcontacts_ubuntu.sh;
		sudo bash bbcontacts_ubuntu.sh;
	sleep 2;;

	16)
	cd $Shells;
	echo "# Installing BCL" ;
	chmod +x BCL_ubuntu.sh;
		sudo bash BCL_ubuntu.sh;
	sleep 2;;

	17)
	cd $Shells;
	echo "# Installing FreeConatct" ;
	chmod +x freecontact_ubuntu.sh;
		sudo bash freecontact_ubuntu.sh;
	sleep 2;;

	18)
	cd $Shells;
	echo "# Installing PyMDmix" ;
	chmod +x pyMDmix_ubuntu.sh;
	sudo bash pyMDmix_ubuntu.sh;
	sleep 2;;

	19)
	cd $Shells;
	echo "# Installing RRDistMaps" ;
	chmod +x RRDistMaps_ubuntu.sh;
	sudo bash RRDistMaps_ubuntu.sh;
	sleep 2;;

	20)
	cd $Shells;
	echo "# Installing XLMap" ;
	chmod +x XLmap_ubuntu.sh;
	sudo bash XLmap_ubuntu.sh;
	sleep 2;;

	21)
	cd $Shells;
	echo "# Installing RDb2C" ;
	chmod +x RDb2C_ubuntu.sh;
	sudo bash RDb2C_ubuntu.sh;
	sleep 2;;

	22)
	cd $Shells;
	echo "# Installing DeepCov" ;
	chmod +x DeepCov_ubuntu.sh;
	sudo bash DeepCov_ubuntu.sh;
	sleep 2;;

	23)
	cd $Shells;
	echo "# Installing hoDCA" ;
	chmod +x hoDCA_ubuntu.sh;
	sudo bash hoDCA_ubuntu.sh;
	sleep 2;;

	24)
	cd $Shells;
	echo "# Installing MemConP" ;
	chmod +x memconp_ubuntu.sh;
	sudo bash memconp_ubuntu.sh;
	sleep 2;;

	25)
	cd $Shells;
	echo "# Installing RawMSA" ;
	chmod +x rawmsa_ubuntu.sh;
	sudo bash rawmsa_ubuntu.sh;
	sleep 2;;
	
	26)
	cd $Shells;
	echo "# Installing COUSCOus" ;
	chmod +x cousous_ubuntu.sh;
	sudo bash cousous_ubuntu.sh;
	sleep 2;;

	27)
	cd $Shells;
	echo "# Installing RADI" ;
	chmod +x radi_ubuntu.sh;
	sudo bash radi_ubuntu.sh;
	sleep 2;;

	28)
	cd $Shells;
	echo "# Installing cooccurNET" ;
	chmod +x coocurnet_ubuntu.sh;
	sudo bash coocurnet_ubuntu.sh;
	sleep 2;;

	29)
	cd $Shells;
	echo "# Installing CorMut" ;
	chmod +x CorMut_ubuntu.sh;
	sudo bash CorMut_ubuntu.sh;
	sleep 2;;

	30)
	cd $Shells;
	echo "# Installing EVCouplings" ;
	chmod +x evcoupling_ubuntu.sh;
	sudo bash evcoupling_ubuntu.sh;
	sleep 2;;

	31)
	cd $Shells;
	echo "# Installing ALLO" ;
	chmod +x allomaster_ubuntu.sh;
	sudo bash allomaster_ubuntu.sh;
	sleep 2;;

	32)
	cd $Shells;
	echo "# Installing Allopred" ;
	chmod +x allopred_ubuntu.sh;
	sudo bash allopred_ubuntu.sh;
	sleep 2;;
	
	
	33)
	cd $Shells;
	echo "# Installing Betavoid" ;
	chmod +x betavoid_ubuntu.sh;
	sudo bash betavoid_ubuntu.sh;
	sleep 2;;

	34)
	cd $Shells;
	echo "# Installing NanoShaper" ;
	chmod +x nanoshaper_ubuntu.sh;
	sudo bash nanoshaper_ubuntu.sh;
	sleep 2;;

	35)
	cd $Shells;
	echo "# Installing POVME" ;
	chmod +x povme_ubuntu.sh;
	sudo bash povme_ubuntu.sh;
	sleep 2;;

	36)
	cd $Shells;
	echo "# Installing Protein Volume" ;
	chmod +x proteinvolume_ubuntu.sh;
	sudo bash proteinvolume_ubuntu.sh;
	sleep 2;;
	

	37)
	cd $Shells;
	echo "# Installing CE-Symmetry" ;
	chmod +x CE-symmetry_ubuntu.sh;
	sudo bash CE-symmetry_ubuntu.sh;
	sleep 2;;

	38)
	cd $Shells;
	echo "# Installing ReUPred" ;
	chmod +x reupred_ubuntu.sh;
	sudo bash reupred_ubuntu.sh;
	sleep 2;;

	39)
	cd $Shells;
	echo "# Installing deltaGseg" ;
	chmod +x deltagseg_ubuntu.sh;
	sudo bash deltagseg_ubuntu.sh;
	sleep 2;;

	40)
	cd $Shells;
	echo "# Installing GP4Rate" ;
	chmod +x gp4rate_ubuntu.sh;
	sudo bash gp4rate_ubuntu.sh;
	sleep 2;;

	41)
	cd $Shells;
	echo "# Installing JABAWS" ;
	chmod +x jawbaws_ubuntu.sh;
	sudo bash jawbaws_ubuntu.sh;
	sleep 2;;

	42)
	cd $Shells;
	echo "# Installing PHOTON" ;
	chmod +x PHOTON_ubuntu.sh;
	sudo bash CorMut_ubuntu.sh;
	sleep 2;;

	43)
	cd $Shells;
	echo "# Installing GROMACS" ;
	chmod +x Gromacs_ubuntu.sh;
	sudo bash Gromacs_ubuntu.sh;
	sleep 2;;

	44)
	cd $Shells;
	echo "# Installing PLUMED" ;
	chmod +x plumed_ubuntu.sh;
	sudo bash plumed_ubuntu.sh;
	sleep 2;;
	
	45)
	cd $Shells;
	echo "# Installing ProDy" ;
	chmod +x prody_ubuntu.sh;
	sudo bash prody_ubuntu.sh;
	sleep 2;;

	46)
	cd $Shells;
	echo "# Installing MSMBuilder" ;
	chmod +x msmbuilder_ubuntu.sh;
	sudo bash msmbuilder_ubuntu.sh;
	sleep 2;;

	47)
	cd $Shells;
	echo "# Installing OpenMM" ;
	chmod +x openmm_ubuntu.sh;
	sudo bash openmm_ubuntu.sh;
	sleep 2;;

	48)
	cd $Shells;
	echo "# Installing UNRES" ;
	chmod +x UNRES_ubuntu.sh;
	sudo bash UNRES_ubuntu.sh;
	sleep 2;;

	49)
	cd $Shells;
	echo "# Installing TimeScapes" ;
	chmod +x Timescape_ubuntu.sh;
	sudo bash Timescape_ubuntu.sh;
	sleep 2;;

	50)
	cd $Shells;
	echo "# Installing CafeMol" ;
	chmod +x cafemol_ubuntu.sh;
	sudo bash cafemol_ubuntu.sh;
	sleep 2;;

	51)
	cd $Shells;
	echo "# Installing MD-TASK" ;
	chmod +x MD-TASK_ubuntu.sh;
	sudo bash MD-TASK_ubuntu.sh;
	sleep 2;;

	52)
	cd $Shells;
	echo "# Installing PBxplore" ;
	chmod +x pbxplore_ubuntu.sh;
	sudo bash pbxlore_ubuntu.sh;
	sleep 2;;

	53)
	cd $Shells;
	echo "# Installing WESTPA" ;
	chmod +x westpa_ubuntu.sh;
	sudo bash westpa_ubuntu.sh;
	sleep 2;;

	54)
	cd $Shells;
	echo "# Installing pywindow" ;
	chmod +x pywindow_ubuntu.sh;
	sudo bash pywindow_ubuntu.sh;
	sleep 2;;

	55)
	cd $Shells;
	echo "# Installing SeeKR" ;
	chmod +x SEEKR_ubuntu.sh;
	sudo bash SEEKR_ubuntu.sh;
	sleep 2;;
	
	56)
	cd $Shells;
	echo "# Installing gmxapi" ;
	chmod +x gmxapi_ubuntu.sh;
	sudo bash gmxapi_ubuntu.sh;
	sleep 2;;

	57)
	cd $Shells;
	echo "# Installing VAMPnet" ;
	chmod +x VAMPNET_ubuntu.sh;
	sudo bash VAMPNET_ubuntu.sh;
	sleep 2;;

	58)
	cd $Shells;
	echo "# Installing PyCGTOOL" ;
	chmod +x pycgtool_ubuntu.sh;
	sudo bash pycgtool_ubuntu.sh;
	sleep 2;;

	59)
	cd $Shells;
	echo "# Installing MDTraj" ;
	chmod +x mdtraj_ubuntu.sh;
	sudo bash mdtraj_ubuntu.sh;
	sleep 2;;

	60)
	cd $Shells;
	echo "# Installing enspara" ;
	chmod +x enspara_ubuntu.sh;
	sudo bash enspara_ubuntu.sh;
	sleep 2;;

	61)
	cd $Shells;
	echo "# Installing Evol" ;
	chmod +x EVOL_ubuntu.sh;
	sudo bash EVOL_ubuntu.sh;
	sleep 2;;

	62)
	cd $Shells;
	echo "# Installing physical_validation" ;
	chmod +x physical_validation_ubuntu.sh;
	sudo bash physical_validation_ubuntu.sh;
	sleep 2;;

	63)
	cd $Shells;
	echo "# Installing Socket" ;
	chmod +x socket_ubuntu.sh;
	sudo bash socket_ubuntu.sh;
	sleep 2;;

	64)
	cd $Shells;
	echo "# Installing LOGICOIL" ;
	chmod +x LOGICOIL_ubuntu.sh;
	sudo bash LOGICOIL_ubuntu.sh;
	sleep 2;;

	65)
	cd $Shells;
	echo "# Installing Mobi" ;
	chmod +x mobi_ubuntu.sh;
	sudo bash mobi_ubuntu.sh;
	sleep 2;;

	66)
	cd $Shells;
	echo "# Installing VB-DCMM" ;
	chmod +x VB-DCMM_ubuntu.sh;
	sudo bash VB-DCMM_ubuntu.sh;
	sleep 2;;

	esac
	
done
) |
zenity 	--progress \
  	--title="Proteo V1.0 Setup" \
 	--text="Proteo Tools Installation in Progress" \
	--height=400 --width=500 \
	--pulsate \
  	--auto-close\
  	--auto-kill \

#********************** Installation finished *********************************#
zenity 	--info \
	--text "<span><b>Completing the Proteo Setup Wizard</b></span>\n
Click Finish to exit the Proteo Setup Wizard." \
	--title="Proteo v1.0 Setup" \
	--height=400 --width=500 \
	--ok-label=Finish






