#! /usr/bin/env python3

import fileinput
import os.path
import sys
import collections

# BASE_DIR denotes the application directory
BASE_DIR, throwaway = os.path.split(os.path.realpath(__file__))
BASE_DIR = os.path.realpath(BASE_DIR + "/..")

#Loc = collections.namedtuple('Loc', ['item_id', 'name'])





if __name__ == "__main__":
    with fileinput.input() as input_files:
        for line in input_files:
            id, group_id, target, is_true = line.split('\t')
            print('\\N' + '\thello')
            #print(line, file=sys.stderr)
            #doc_id, sent_id, words_str, poses_str = line.split('\t')
            #words = words_str.split(' ')
            #poses = poses_str.split(' ')
            #phrases = generate_nnp_phrases(words, poses)
            #generate_candidates(doc_id, sent_id, words, poses, phrases)


