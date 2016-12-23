import string
import random

def generate_string(str, size=5):
   if str == 'correct':
      chars=string.ascii_uppercase + string.digits + string.ascii_lowercase
      str = ''.join(random.choice(chars) for _ in range(size))
      return 'user1' + str
   else:
      return str

def is_error_page(title):
   if 'Error' not in title:
      return False
   else:
      return True
   
