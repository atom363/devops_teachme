from functools import wraps

# Task 1:

def log_args(func):
    @wraps(func)
    def log_printer(*args, **kwargs):
        print("Arguments of function: ")
        print(*args)
        for value in kwargs.values():
            print(value)
        ret = func(*args, **kwargs)
        print("Return value of function: ")
        print(ret)
    return log_printer

@log_args
def sum_items(a, b):
    c = a + b
    return c

sum_items(22, 4)
sum_items(a = 11, b = 2)


# Task 2:

list_of_users = ["User1", "User22", "Admin", "usr"]

def filter_list(func):
    @wraps(func)
    def list_filter(*args, **kwargs):
        filtered_list = list(filter(lambda x: len(x) >= 5, *args))
        func(filtered_list)
    return list_filter

@filter_list
def print_list(list1):
    print(list1)

print_list(list_of_users)

# Task 3:

MEMO = {}

def cache_results(func):
    @wraps(func)
    def wrapper(*args, **kwargs):
        cache_key = func.__name__ + str(args) + str(kwargs)
        if MEMO.get(cache_key):
            print(f"Result is in cache: {MEMO.get(cache_key)}")
            return MEMO.get(cache_key)
        else:
            res = func(*args, **kwargs)
            MEMO[cache_key] = res
            print(f"Result is new: {MEMO.get(cache_key)}")
            return res

    return wrapper

@cache_results
def multiplier(a, b):
    return a*b

@cache_results
def divider(a, b):
    return a/b

multiplier(1, 2)
multiplier(1, 2)

multiplier(2, 4)

divider(4, 2)
divider(10, 2)
divider(4, 2)
