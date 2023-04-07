#!/usr/bin/python3

#####################################################################
#
#     Note the log files need to be generated wih JSON
#               (and not JSON_PRETTY)
#
#     also thanks chatgpt for some super quick functions
#
#####################################################################


import os
import json


## set a couple of dir and file names
logfiledir = "mdclogfiles"
outputfilename = "mdc-key-master-list.json"





##########
def build_master_key_list(filename):
    master_key_list = set()

    with open(filename, 'r') as f:
        for line in f:
            json_object = json.loads(line.strip())
            master_key_list.update(json_object.keys())

    return list(master_key_list)

###############################################
# build the list of changelog files

def build_filelist(thisdir):
    # Create an empty dictionary to hold the file name
    file_list = []
    
    # Loop through the files in the directory
    for filename in os.listdir(thisdir):
        # Add the filename to the list
        file_list.append(filename)
        
    #print("files: ")
    #print(file_list)
    return file_list


######################

def dump_dict_to_file(data_dict, filename):
    with open(filename, 'w') as f:
        json.dump(data_dict, f, indent=4)





################# do the work procedurally because it s quick ##############

logfilelist = build_filelist(logfiledir)
# create a blank dictionary for file:master_key_list
master_keys_by_filename = {}


## filename = "autogen-INFO-update-changelog.mdc-somename.sql.log"
for filename in logfilelist:
    
    #build up the master list of json keys
    thislogfile = "" + logfiledir + "/" + filename + ""
    print("parse this logfile: " + thislogfile)
    master_key_list = build_master_key_list(thislogfile)
    master_keys_by_filename[filename] = master_key_list

## print("-------------------------")
## print(master_keys_by_filename)






print("-------------------------")
print("generated a file named: " + outputfilename)


dump_dict_to_file(master_keys_by_filename,outputfilename )







