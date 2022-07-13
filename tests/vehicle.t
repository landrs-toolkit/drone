#!/bin/sh

test_description="Drone ontology tests for vehicle shapes"

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
ROOT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )"/.. &> /dev/null && pwd )


. "$SCRIPT_DIR/sharness.sh"



TESTDIR="$SCRIPT_DIR/vehicle"
SHAPEDIR="$ROOT_DIR/shapes/shacl/node-shapes/"
ONTDIR="$ROOT_DIR/development/ontology/"

test_expect_failure "FAILURE: Failing graph" "
   pdm run pyshacl -m -i rdfs -e '$ONTDIR/ontology.ttl' -s '$SHAPEDIR/VehicleConstraint.ttl' '$TESTDIR/vehicle-invalid.ttl'
"


test_done