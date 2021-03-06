# ProblemStatement:
#Create a Shell script file
#Take user input for email id, phone and bank account number
#Sanitize and trim the input taken
#Check the validity of the input. i.e. valid email, 10 digit phone number and 5 digit account number
#Display ‘All inputs valid’, else ‘Some inputs are invalid’


if [[ "$1" =~ ^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,4}$ ]]
then
    echo "Email address $1 is valid."
else
    echo "Email address $1 is invalid."
fi

if ( [[ "$2" =~ [0-9] ]] && [[ ${#2} -eq 10 ]] )
then
   echo "Phonenumber $2 is valid."
else
    echo "Phonenumber $2 is invalid."
fi

if ( [[ "$3" =~ [0-9] ]] && [[ ${#3} -eq 5 ]] )
then
   echo "accountnumber $3 is valid"
else
    echo "accountnumber $3 is invalid."
fi
