##########################################################################################################
# Copyright (c) 2022,2023 Oracle and/or its affiliates, All rights reserved.                             #
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl. #
##########################################################################################################

#!/bin/bash

###########################################################
## This will update all our autogenerated README.md files.
## 
## The autogenerated content is placed between:
## <!-- BEGIN_TF_DOCS --> 
##   ... and ...
## <!-- END_TF_DOCS -->
## tags in the README.md files. DO NOT edit those sections
## manually! Any changes there will be lost!
##
## Note: this script actually generates the main
##       enterprise-landing-zone/README.md twice,
##       which is unavoidable due to our directory layout. 
##       We may need to revisit this if ve decide to use
##       different documentation parameters in modules/
##       and templates/ folders.
###########################################################

terraform-docs . 
terraform-docs -c .module-tf-docs.yml . 

