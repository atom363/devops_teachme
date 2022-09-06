while True:
    try:
        task_num = float(input('Enter number of task (0 to exit): '))
    except ValueError:
        print('Input invalid')
        break

# Task 1:
    if task_num == 1.1:
        alien_color = 'green'
        if alien_color == 'green':
            print('Player earned 5 points')

    elif task_num == 1.2:
        alien_color = 'yellow'
        if alien_color == 'green':
            print('Player earned 5 points')

# Task 2:
    elif task_num == 2.1:
        alien_color = 'green'
        if alien_color == 'green':
            print('You just earned 5 point for shooting the alien')
        else:
            print('You just earned 10 point')

    elif task_num == 2.2:
        alien_color = 'red'
        if alien_color == 'green':
            print('You just earned 5 point for shooting the alien')
        else:
            print('You just earned 10 point')

# Task 3:
    elif task_num == 3.1:
        alien_color = 'green'
        if alien_color == 'green':
            print('You just earned 5 point')
        elif alien_color == 'yellow':
            print('You just earned 10 point')
        else:
            print('You just earned 15 point')

    elif task_num == 3.2:
        alien_color = 'yellow'
        if alien_color == 'green':
            print('You just earned 5 point')
        elif alien_color == 'yellow':
            print('You just earned 10 point')
        else:
            print('You just earned 15 point')

    elif task_num == 3.3:
        alien_color = 'red'
        if alien_color == 'green':
            print('You just earned 5 point')
        elif alien_color == 'yellow':
            print('You just earned 10 point')
        else:
            print('You just earned 15 point')

# Task 4:
    elif task_num == 4:
        try:
            age = int(input('Enter age of the person (in digits): '))
        except ValueError:
            print('Input invalid')
            continue
        if age < 2:
            print('The person is a baby')
        elif 2 <= age < 4:
            print('The person is a toddler')
        elif 4 <= age < 13:
            print('The person is a kid')
        elif 13 <= age < 20:
            print('The person is a teenager')
        elif 20 <= age < 65:
            print('The person is an adult')
        else:
            print('The person is an elder')

    elif task_num == 0:
        break

    else:
        break
