while [ 1 = 1 ]
do
        echo "Choose script number from homework (from 1 to 3) or 0 to exit"
        read key
        case $key in
                "1")
                        echo "Enter numbers you want to multiple: "
                        read num1
                        read num2
                        if source /home/vagrant/script1.sh $num1 $num2; then
                                echo "Result is even"
                        else
                                echo "Result isn't even"
                        fi
                        ;;

                "2")
                        source /home/vagrant/script2.sh
                        ;;

                "3")
                        source /home/vagrant/script3.sh
                        ;;

                "0")
                        break
                        ;;

                *)
                        echo "You must use only numbers from 1 to 4"
                        ;;
        esac
done