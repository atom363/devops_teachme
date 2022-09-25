class MyEnumerate:
    def __init__(self, enum_list):
        try:
            test_iter = iter(enum_list)
        except TypeError as te:
            print('Argument is not iterable')
        self._list = enum_list
        self._index = 0

    def __iter__(self):
        return self

    def __next__(self):
        if self._index < len(self._list):
            index = self._index
            value = self._list[self._index]
            self._index += 1
            return index, value
        else:
            raise StopIteration


test_list = [10, 20, 30, 40]

for index, value in MyEnumerate(test_list):
    print(f"Value: {value} Index: {index}")