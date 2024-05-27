#Some Examples for Lab1 of python in  ITI

#Question: Concatenate two strings "Hello" and "World" with a space in between.
welcome = "Hello" + " "+ "World"
print(welcome)
print("Hello" + " "+ "World")
#------------------------------

#Question: Create a tuple and list of the following values (10, 20, 30, 40, 50) and access its first and last elements.
Tuple_numbers = (10, 20, 30, 40, 50)
List_numbers = [10, 20, 30, 40, 50]
print(Tuple_numbers)
print(List_numbers)
#-----------------------------------

#Question: Concatenate two tuples (1, 2, 3) and (4, 5, 6).
tuple_1 = (1, 2, 3)
tuple_2 = (4, 5, 6)
Tuple_3 = tuple_1 + tuple_2
print(Tuple_3)
#-----------------------------------

#Question: Create a dictionary with keys "name", "age", and "city", and values "Alice", 25, and "New York" respectively. 
# Access the values
Info = {"name":'Alice',"age": 25,"city":'New York'}
print(Info)
print(Info["name"], Info["age"], Info["city"])
#--------------------------------------------------
#Check the type of the following objects: 10, 10.5, "Hello", [1, 2, 3].
x = 10
y = 10.5
z = "Hello"
f =[1, 2, 3]
print(type(x))
print(type(y))
print(type(z))
print(type(f))
#--------------------------------------------------
#Question: Use two formatting styles to to print the sentence "My name is Alice and I am 25 years old."
name = "Alice"
age = 25
print("My name is {}, I am {} years old".format(name, age))


print(f"My name is {name}, I am {age} years old")
#--------------------------------------------------
#Question: Use print statements with escape characters to print "Hello" on one line and "World" on the next line,
# and also print a tab-separated string "Tab Separated"

print("Hello\nworld")
print("Hello\tworld")
#---------------------------------------------------
#Question: Slice the string "Hello World" to get the substrings "Hello" and "World".
welcome = "Hello world"
print(welcome[:6])
print(welcome[6:]) 
#---------------
