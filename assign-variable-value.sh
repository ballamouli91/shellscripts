#! bin/bash
#assign a default value
echo ${arg:=Foo}
bank=HSBC
#assign the value to bank variable, see if the variable value has updated?
echo ${bank:=Citi}
#unset and try to assign the default value and see the changes of vlaue
unset bank
echo ${bank:=Citi}
#unset and try to assign the value and see the changes of vlaue
unset bank
echo ${bank:-sbi}

state=andhra
#IF we do not unset and try to assign the value athen this expression wont take the value
echo ${state-telanga}

#############****************######################
#observe the error when assigning the default vlaue to the argument in fucntion
die(){
  local error=${1:=Undefined error}
  echo "$0: $LINE $error" 
}
die "File not found"
die

#observe the error when assigning the  vlaue to the argument in fucntion
die(){
  local error=${1:-Undefined error}
  echo "$0: $LINE $error" 
}
# call die() with an argument 
die "File not found"
# call die() without an argument 
die
