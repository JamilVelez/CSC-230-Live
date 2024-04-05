from django import forms
from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth.models import User

class UserSignUpForm(UserCreationForm):
    email = forms.EmailField(max_length=254, help_text='Required. Provide a valid email address.')

    class Meta:
        model = User
        fields = ('username', 'email', 'password1', 'password2',)

class AdminSignUpForm(UserCreationForm):
    class Meta(UserSignUpForm.Meta):
        model = User

    def save(self, commit=True):
        user = super().save(commit=False)
        user.is_staff = True  # Grant access to the admin site
        if commit:
            user.save()
        return user
