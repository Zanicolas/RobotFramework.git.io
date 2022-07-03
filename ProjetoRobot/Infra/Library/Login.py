import random

class Login():
    def sortear_nome(self):
        firstnames = ['Nicolas', 'Carlos', 'Guilherme', 'Carla', 'Nathalia', 'Sandra', 'Rochele']
        return random.choice(firstnames)

    def sortear_sobrenome(self):
        lastnames = ['Balbino', 'Zanatta', 'Silva', 'Bertoluzi', 'Vilas']
        return random.choice(lastnames)
    
    def sortear_email(self):
        emails = ['gmail', 'outlook', 'hotmail', 'yahoo', 'bing', 'bol', 'uol']
        nome,sobrenome = self.sortear_nome(self),self.sortear_sobrenome(self)
        email_return = nome+sobrenome+'@'+random.choice(emails)+'.com'
        return email_return

print(Login.sortear_nome(Login))
print(Login.sortear_sobrenome(Login))
print(Login.sortear_email(Login))