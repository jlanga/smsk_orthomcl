shell.prefix("set -euo pipefail;")
configfile: "config.yaml"


snakefiles = "scripts/snakefiles/"

include: snakefiles + "folders"
include: snakefiles + "clean"
include: snakefiles + "raw"
include: snakefiles + "download"
include: snakefiles + "db"
include: snakefiles + "transdecoder"
include: snakefiles + "orthomcl"

rule all:
    input:
        # expand(
        #     transdecoder_dir + "{species}.pep",
        #     species = config["species"]
        # ),
        # download_dir + "uniref90.fa.gz",
        # download_dir + "swissprot.fa.gz",
        # download_dir + "pfama.hmm.gz",
        orthomcl_dir + "blastp_parsed/similarSequences.txt.gz"
