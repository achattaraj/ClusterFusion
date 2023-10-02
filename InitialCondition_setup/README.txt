Open a terminal and run the shell script "create_InitCoor.sh"

1. "LT_writer.py" creates molecular templates (poly_A and poly_B) including bond and angles 
2. packmol input "populate.inp" packs 100 chain-A and 100 chain-B into a cubic box. It creates a "xyz" file containing coordinates for 400 chains. 
3. "Moltemplate.sh" takes the "xyz" file as input and creates the datafile "system.data" which can be used as the configuration file for LAMMPS simularion. 