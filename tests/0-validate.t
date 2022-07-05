#!/bin/sh

test_description="Parse Validation using Jena RIOT"


: "${SHARNESS_TEST_SRCDIR:=.}"

. "$SHARNESS_TEST_SRCDIR/sharness.sh"


TESTDIR="../"

test_expect_success "Validating ontology and shape modules" "
  cd ${TESTDIR} ; echo $PWD ;sh .github/validate.sh
 "


test_done