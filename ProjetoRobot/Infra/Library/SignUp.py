import email
import random

class SignUp:
    def sortear_nome(self):
        firstnames = ['Nicolas', 'Carlos', 'Guilherme', 'Carla', 'Nathalia', 'Sandra', 'Rochele']
        return random.choice(firstnames)

    def sortear_sobrenome(self):
        lastnames = ['Balbino', 'Zanatta', 'Silva', 'Bertoluzi', 'Vilas']
        return random.choice(lastnames)
    
    def sortear_telefone(self):
        phones= ['14998903363','14997856716','14998903362']
        return random.choice(phones)
    
    def sortear_email(self):
        emails = ['gmail', 'outlook', 'hotmail', 'yahoo', 'bing', 'bol', 'uol']
        return random.choice(emails)

    def montar_email(self):
        nome = self.sortear_nome()
        sobrenome = self.sortear_sobrenome()
        dominio = self.sortear_email()
        email = nome+sobrenome+"@"+dominio+".com"
        return email

    def sortear_senha(self):
        passwords= ['12345678', '87654321', 'senha123', 'senha***', 'senha321']
        return random.choice(passwords)


