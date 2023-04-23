from django.db import models

# Create your models here.
class contact(models.Model):
    fname=models.CharField(max_length=50)
    lname=models.CharField(max_length=50)
    email=models.EmailField(max_length=50)
    contact=models.CharField(max_length=13)
    message=models.TextField()
    
    def __str__(self):
        return self.fname+" "+self.lname