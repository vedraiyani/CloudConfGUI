# Makefile for run CloudConf
#
#
#
DIR=./my.ini
DIR2=./ini

.PHONY: run motif clean test mtest help


run:
	./cloudconf.py  -style cleanlooks

help:
	@echo "Usage: "
	@echo "      make  [command]"
	@echo "Command options:"
	@echo ""
	@echo "		run 	run the configure program in cleanlooks"
	@echo "		help	display this help message"
	@echo "		motif	run the configure program in motif style"
	@echo "		test	run the test use memory 1.0"
	@echo "		mtest	run the test use memory 1.3"
	@echo ""
	@echo "Default Command:"
	@echo "		run		the default command when just type make"


motif:
	./cloudconf.py  -style motif

test:
	./NPA_IAAScloudsim.jar $(DIR2)/20110303_NPA_NPA_0.8.ini 
	
	@echo "********TEST FOR  20110303_DVFS__.ini START***********"
	./IAAScloudsim.jar $(DIR2)/20110303_DVFS__.ini 
	@echo "********TEST FOR  20110303_DVFS__.ini  END ***********"
	
	@echo "********TEST FOR 20110303_IQR START***********"
	./IAAScloudsim.jar $(DIR2)/20110303_IQR_MC_1.5.ini 
	./IAAScloudsim.jar $(DIR2)/20110303_IQR_MMT_1.5.ini 
	./IAAScloudsim.jar $(DIR2)/20110303_IQR_RS_1.5.ini 
	./IAAScloudsim.jar $(DIR2)/20110303_IQR_MU_1.5.ini 
	@echo "********TEST FOR 20110303_IQR.ini END ***********"
	
	@echo "********TEST FOR 20110303_THR START***********"
	./IAAScloudsim.jar $(DIR2)/20110303_THR_MC_0.8.ini 
	./IAAScloudsim.jar $(DIR2)/20110303_THR_MMT_0.8.ini 
	./IAAScloudsim.jar $(DIR2)/20110303_THR_RS_0.8.ini 
	./IAAScloudsim.jar $(DIR2)/20110303_THR_MU_0.8.ini 
	@echo "********TEST FOR 20110303_THR.ini END ***********"
	
	@echo "********TEST FOR 20110303_MAD START***********"
	./IAAScloudsim.jar $(DIR2)/20110303_MAD_MC_2.5.ini 
	./IAAScloudsim.jar $(DIR2)/20110303_MAD_MMT_2.5.ini 
	./IAAScloudsim.jar $(DIR2)/20110303_MAD_MU_2.5.ini 
	./IAAScloudsim.jar $(DIR2)/20110303_MAD_RS_2.5.ini 
	@echo "********TEST FOR 20110303_MAD.ini END ***********"
	
	@echo "********TEST FOR 20110303_LR START***********"
	./IAAScloudsim.jar $(DIR2)/20110303_LR_MC_1.2.ini 
	./IAAScloudsim.jar $(DIR2)/20110303_LR_MMT_1.2.ini 
	./IAAScloudsim.jar $(DIR2)/20110303_LR_MU_1.2.ini 
	./IAAScloudsim.jar $(DIR2)/20110303_LR_RS_1.2.ini 
	@echo "********TEST FOR 20110303_LR.ini END ***********"
	
	@echo "********TEST FOR 20110303_LRR START***********"
	./IAAScloudsim.jar $(DIR2)/20110303_LRR_MC_1.2.ini 
	./IAAScloudsim.jar $(DIR2)/20110303_LRR_MMT_1.2.ini 
	./IAAScloudsim.jar $(DIR2)/20110303_LRR_MU_1.2.ini 
	./IAAScloudsim.jar $(DIR2)/20110303_LRR_RS_1.2.ini 
	@echo "********TEST FOR 20110303_LRR.ini END ***********"

mtest:
	./NPA_IAAScloudsim.jar $(DIR)/20110303_NPA_NPA_0.8.ini 
	
	@echo "********TEST FOR  $(DIR)/20110303_DVFS__.ini START***********"
	./IAAScloudsim.jar $(DIR)/20110303_DVFS__.ini 
	@echo "********TEST FOR  $(DIR)/20110303_DVFS__.ini  END ***********"
	
	@echo "********TEST FOR 20110303_IQR START***********"
	./IAAScloudsim.jar $(DIR)/20110303_IQR_MC_1.5.ini 
	./IAAScloudsim.jar $(DIR)/20110303_IQR_MMT_1.5.ini 
	./IAAScloudsim.jar $(DIR)/20110303_IQR_RS_1.5.ini 
	./IAAScloudsim.jar $(DIR)/20110303_IQR_MU_1.5.ini 
	@echo "********TEST FOR 20110303_IQR.ini END ***********"
	
	@echo "********TEST FOR 20110303_THR START***********"
	./IAAScloudsim.jar $(DIR)/20110303_THR_MC_0.8.ini 
	./IAAScloudsim.jar $(DIR)/20110303_THR_MMT_0.8.ini 
	./IAAScloudsim.jar $(DIR)/20110303_THR_RS_0.8.ini 
	./IAAScloudsim.jar $(DIR)/20110303_THR_MU_0.8.ini 
	@echo "********TEST FOR 20110303_THR.ini END ***********"
	
	@echo "********TEST FOR 20110303_MAD START***********"
	./IAAScloudsim.jar $(DIR)/20110303_MAD_MC_2.5.ini 
	./IAAScloudsim.jar $(DIR)/20110303_MAD_MMT_2.5.ini 
	./IAAScloudsim.jar $(DIR)/20110303_MAD_MU_2.5.ini 
	./IAAScloudsim.jar $(DIR)/20110303_MAD_RS_2.5.ini 
	@echo "********TEST FOR 20110303_MAD.ini END ***********"
	
	@echo "********TEST FOR 20110303_LR START***********"
	./IAAScloudsim.jar $(DIR)/20110303_LR_MC_1.2.ini 
	./IAAScloudsim.jar $(DIR)/20110303_LR_MMT_1.2.ini 
	./IAAScloudsim.jar $(DIR)/20110303_LR_MU_1.2.ini 
	./IAAScloudsim.jar $(DIR)/20110303_LR_RS_1.2.ini 
	@echo "********TEST FOR 20110303_LR.ini END ***********"
	
	@echo "********TEST FOR 20110303_LRR START***********"
	./IAAScloudsim.jar $(DIR)/20110303_LRR_MC_1.2.ini 
	./IAAScloudsim.jar $(DIR)/20110303_LRR_MMT_1.2.ini 
	./IAAScloudsim.jar $(DIR)/20110303_LRR_MU_1.2.ini 
	./IAAScloudsim.jar $(DIR)/20110303_LRR_RS_1.2.ini 
	@echo "********TEST FOR 20110303_LRR.ini END ***********"
