#!/bin/bash
## Submit job to "Open" allocation if next line begins #PBS (rather than ##PBS)
#PBS -A open                 
## Alternatively, could comment out line above and uncomment two lines below (by removing one # on each line) to submit jobs to CyberLAMP
##PBS -A cyberlamp_class     
##PBS -l qos=cl_class        
## TODO: Check if students have access to cl_debug
##PBS -l qos=cl_debug        
## Time requested: 0 hours, 5 minutes, 0 seconds
#PBS -l walltime=00:05:00    
## Ask for 4 nodes, each with one core (you may be assigned multiple cores on the same node)
#PBS -l nodes=4:ppn=1        
## Each processors will use no more than 1GB of RAM
#PBS -l pmem=1gb             
## combine STDOUT and STDERR into one file
#PBS -j oe                   
## Specifices job name, so easy to find in qstat
#PBS -N Ast528Lab6Ex1        
## Uncomment next two PBS lines (by removing one of #'s in each line) and replace with your email if you want to be notifed when jobs start and stop
##PBS -M YOUR_EMAIL_HERE@psu.edu       
## Ask for emails when jobs begins, ends or aborts
##PBS -m abe                  

echo "Starting job $PBS_JOBNAME"
date
echo "Job id: $PBS_JOBID"
echo "Was assigned the following nodes"
cat $PBS_NODEFILE

echo "About to change into $PBS_O_WORKDIR"
cd $PBS_O_WORKDIR            # Change into directory where job was submitted from
echo "About to start Julia specifying list of assigned nodes"
julia --machine-file $PBS_NODEFILE ex1_parallel.jl
echo "Julia exited"
date

