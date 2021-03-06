###########################################################
# Makefile generated by xIDE for uEnergy                   
#                                                          
# Project: eeg_sensor
# Configuration: Release
# Generated: Tue 24. Jun 15:12:40 2014
#                                                          
# WARNING: Do not edit this file. Any changes will be lost 
#          when the project is rebuilt.                    
#                                                          
###########################################################

XIDE_PROJECT=eeg_sensor
XIDE_CONFIG=Release
OUTPUT=eeg_sensor
OUTDIR=C:/Repository/AmbulatoryEEG/Firmware
DEFS=

OUTPUT_TYPE=0
LIBRARY_VERSION=Auto
SWAP_INTO_DATA=0
USE_FLASH=0
ERASE_NVM=1
CSFILE_CSR100x=hr_sensor_csr100x.keyr
CSFILE_CSR101x_A05=eeg_sensor_csr101x_A05.keyr
MASTER_DB=app_gatt_db.db
LIBPATHS=
INCPATHS=

DBS=\
\
      app_gatt_db.db\
      battery_service_db.db\
      dev_info_service_db.db\
      gap_service_db.db\
      gatt_service_db.db\
      eeg_service_db.db

INPUTS=\
      battery_service.c\
      gap_service.c\
      eeg_service.c\
      eeg_sensor.c\
      eeg_sensor_gatt.c\
      eeg_sensor_hw.c\
      nvm_access.c\
      dev_info_service.c\
      $(DBS)

KEYR=\
      eeg_sensor_csr100x.keyr\
      eeg_sensor_csr101x_A05.keyr


-include eeg_sensor.mak
include $(SDK)/genmakefile.uenergy
