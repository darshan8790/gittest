##################################################################
# Author : Aniket Pradhane                                       # 
# EMP ID : 609                                                   # 
# Purpose : Enable Instance level MFA using google Authenticator #
# Date : 25 April 2019                                           # 
##################################################################
#!/bin/bash

#configure google auth for newly created user
CMD=`google-authenticator --time-based --disallow-reuse --force --rate-limit=3 --rate-time=30 --window-size=3`

echo "$CMD"

echo "Save the generated emergency scratch codes and use secret key"
echo "Or open httpo Url for scanning QR code"
ME="`whoami`"
echo "MFA is now enabled for user: $ME "
