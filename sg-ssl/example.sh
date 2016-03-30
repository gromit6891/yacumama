#!/bin/bash
set -e
./clean.sh
./gen_root_ca.sh capass changeit
./gen_node_cert.sh proteus changeit capass && ./gen_node_cert.sh kraken changeit capass &&  ./gen_node_cert.sh tiamat changeit capass
./gen_client_node_cert.sh spock changeit capass
./gen_client_node_cert.sh kirk changeit capass