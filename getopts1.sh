#!/bin/bash


while getopts "brgc:" OPTION; do

    case $OPTION in
    b)
        COLOR=BLUE
        ;;
    r)
        COLOR=RED
        ;;
    g)
        COLOR=GREEN
        ;;
    c)
        COLOR=$OPTARG
        [[ ! $COLOR =~ BLUE|RED|GREEN ]] && {
            echo "Incorrect options provided"
            exit 1
        }
        ;;
    *)
        echo "Incorrect options provided"
        exit 1
        ;;
    esac
done

echo "Color is $COLOR"
# When the script is invoked, the $OPTIND variable is set to 1, and it is incremented each time an option is parsed, until it reaches the last one. 
# CONSIDERING THE OPTIONS AS (-b -r -g  -c GREEN ji ) Therefore, in this case, it will have a value of 6 when it will reach the last element, which is GREEN, the mandatory argument required by the -a option.
echo "original options $OPTIND "
#shift is a shell builtin which moves the positional parameters of the script down a specified number of positions provided to it as a positive number, discarding the related arguments.
shift $(($OPTIND - 1))
echo "left out options are : $# "
# The way we launched the script above, the last provided argument, "ji", is not parsed by getopts, which at that point already finished its job.
#Now, if we make a shift of the value of $OPTIND - 1 (that is the effective number of the parsed options, 5 in this case) on the positional parameters, what remains are just the arguments that are not options, in this case "bye", that we can access by using the $* variable later in this script.
printf "Remaining arguments are: %s  $*"
exit 0;
