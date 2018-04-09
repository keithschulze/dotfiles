#! /usr/bin/python

import os
from subprocess import check_call, CalledProcessError


def read_exts(path):
    with open(path, "r") as rdr:
        lines = rdr.readlines()

    return [l.strip() for l in lines]


def install_ext(ext_id):
    try:
        check_call(['code', '--install-extension', ext_id])
    except CalledProcessError as exc:
        print("Unable to install extension %s\n\n%s" %
              (ext_id, exc))

ext_list = os.path.join(
    os.path.dirname(os.path.realpath(__file__)),
    "extensions.txt"
)
exts = [install_ext(ext) for ext in read_exts(ext_list)]
