#How do you slice a string to get the first five characters?
x = "Hello ITI"
print(x[0:5])
#Question: How do you slice a tuple to get every second element?
tuple_x = (1,2,3,4,5,6,7,8)
print(tuple_x[0::2])
print(tuple_x[1])
#Question: How do you print a the first item on  tuple , list , string, dictionary ?
list_iti = ["ahmed",25,"ali",12, True]
tuple_iti = ("ali",False,'Alaa',200)
ItI = "Hello Iti"
dict_ITI = {"Mohanad":27, "Ali":30, "Noor":29}
print(list_iti[0])
print(tuple_iti[0])
print(ItI[0])
print(dict_ITI['Mohanad'])


First_item= list(dict_ITI.values())[0] # Dict can't apply simple silcing that is why you had to change into list to get access
print(First_item)

#------------------------------------------
#Question: How do you print a tuple , list , string, dictionary with three styles ?
list_iti = ["ahmed",25,"ali",12, True]
tuple_iti = ("ali",False,'Alaa',200)
ItI = "Hello Iti"
dict_ITI = {"Mohanad":27, "Ali":30, "Noor":29}
print(list_iti)
print(tuple_iti)
print(ItI)
print(dict_ITI)

print(f'This is a list of:{list_iti}')
print(f'This is a tuple of:{tuple_iti}')
print("This is a String of: {ItI}")
print(f'This is a Dict of :{dict_ITI}')

print('This is a List of{}'.format(list_iti))
print('This is a tuple of {}'.format(tuple_iti))
print('This is a String {}'.format(ItI))
print('This is  dict {}'.format(dict_ITI))

#--------------------------------------

#Question: How do you check if the word ali is existed on string sentence ?
ItI = "Hello Iti"
if 'ali'in ItI :
    print("Ali on the String")
else:
    print("There is no Ali")
#-------------------------------------------
#Print all even numbers from 0 : 100 with three styles:
for x in range(0, 101):
    if x % 2 == 0:
        print(x)
#------------------------
x = list(range(101))
i = 0
while i < len(x):
    if x[i] % 2 == 0:
        print(x[i])
    i += 1
#------------------

x = list(range(101))
print(x[0::2])
#------------------------------------------------
#Print all odd numbers from 1 : 101. with three styles ?
x = list(range(102))
print(x[1::2])
#--------------------------------
for x in range(0, 102):
    if x % 2 != 0:
        print(x)
#-------------------------------
x = list(range(102))
i = 1
while i < len(x):
    if x[i] % 2 != 0:
        print(x[i])
    i += 1
#----------------------------------
#Question: How do you use the range() function to print numbers from 1 to 10?
for x in range(1, 11):
    print(x)
#-----------------------------------
#Question: How do you use the enumerate() function to print numbers from 1 to 10?
x = list(range(11))
for index in enumerate(x):
    print(index)
print(x(enumerate(11)))

         
          