def  sum() :
        a = int(input("Enter Num1 = "))
        b = int(input("Enter Num2 = "))
        print ("The result is = " , a + b)


sum()


def  Allcalc() :
        a= int (input("Enter Num1 = "))
        b = int(input("Enter Num2 = "))
        sign = str (input("Enter sign = "))
        print( a  + sign + b)

Allcalc()


def  user_data(name, age, city):
       print("{} is {} years old and from {}" .format(name, age, city))

user_data("ahmed", 19, "Helwan")
