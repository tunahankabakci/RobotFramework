from faker import Faker
import random



HOMEPAGE_TRAFIK="https://www.sigortam.net"


fake=Faker(['tr_TR'])
F_TCKN=fake.ssn()
I_TCKN = F_TCKN[:5]
print(F_TCKN)
F_PHONE= str(random.randint(900,999))  + str(random.randint(1000000,9999999))
print(F_PHONE)
I_PHONE = F_PHONE[:6]
T_TCKN = "54398008186"
T_PHONE = "5995229900"



