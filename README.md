# ECEN676-Project-Group9
Fall 2024 ECEN676 Project Group9

run this command: git clone --branch FDIP_master https://github.com/ChampSim/ChampSim.git

download the traces from here https://drive.google.com/file/d/1qs8t8-YWc7lLoYbjbH_d3lf1xdoYBznf/view

upload the ipc1_public.tar.gz to the ChampSim folder
run this command: tar -xzvf ipc1_public.tar.gz

Go to run_champsim.sh and change line 9 to: TRACE_DIR=$PWD/ipc1_public

Go to the folder "branch" and modify the bimodal.bpred:


Go to the folder "prefetcher" and upload the Entangling_2Ke.l1i_pref, Entangling_4Ke.l1i_pref, or Entangling_8Ke.l1i_pref to the folder.

Run this command to build:
./build_champsim.sh bimodal Entangling_2Ke no no no lru 1
or
./build_champsim.sh bimodal Entangling_4Ke no no no lru 1
or
./build_champsim.sh bimodal Entangling_8Ke no no no lru 1

After build successful, sbatch the job_submits