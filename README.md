<p align="center">
  <img src="./static/favicon.ico" alt="ABUAD LMS Logo", width="120", height="120">
</p>
<h1 align="center">Django Todo List</h1>
<div align="center">

[![Language](https://img.shields.io/badge/Python-darkblue.svg?style=flat&logo=python&logoColor=white)](https://www.python.org)
[![Framework](https://img.shields.io/badge/Django-darkgreen.svg?style=flat&logo=django&logoColor=white)](https://github.com/Nneji123/django_todo_list)
[![HTML](https://img.shields.io/badge/HTML-black.svg?style=flat&logo=html5&logoColor=white)](https://github.com/Nneji123/django_todo_list)
[![CSS](https://img.shields.io/badge/CSS-blue.svg?style=flat&logo=css3&logoColor=white)](https://github.com/Nneji123/django_todo_list)
[![Javascript](https://img.shields.io/badge/Javascript-yellow.svg?style=flat&logo=javascript&logoColor=white)](https://github.com/Nneji123/django_todo_list)
[![Postgres](https://img.shields.io/badge/Postgres-darkblue.svg?style=flat&logo=postgres&logoColor=white)](https://github.com/Nneji123/django_todo_list)
![hosted](https://img.shields.io/badge/Railway-430098?style=flat&logo=railway&logoColor=white)
![reposize](https://img.shields.io/github/repo-size/Nneji123/django_todo_list)
</div>

Django Todo List is a web application developed using the Django web framework. It provides a simple to-do list management system with user authentication and social account login with django_allauth. This application is developed based on Class-Based Views (CBV) principles.

The application is deployed on the Railway.app platform and uses a database hosted on the same platform.

## Requirements

- Python 3.8.10
- Django 4.2
- django-allauth
- whitenoise `For rendering static files in deployment`

## Installation

1. Clone the repository


```bash
$ git clone https://github.com/nneji123/django_todo_list.
$ cd django_todo_list
```

2. Install the dependencies
$ pip install -r requirements.txt


3. Run the migrations  
`$ python manage.py migrate`

4. Create a superuser
`$ python manage.py createsuperuser`


5. Run the development server
`$ python manage.py runserver`


The application will be available at http://localhost:8000/

## Configuration

To use the social account login with django_allauth, you will need to provide the necessary configuration settings. In the `settings.py` file, add the following settings:

```python
INSTALLED_APPS = [
 # ...
 'allauth',
 'allauth.account',
 'allauth.socialaccount',
 'allauth.socialaccount.providers.<provider_name>',
 # ...
]

# ...

AUTHENTICATION_BACKENDS = [
 # ...
 'allauth.account.auth_backends.AuthenticationBackend',
 # ...
]

# ...

SOCIALACCOUNT_PROVIDERS = {
 '<provider_name>': {
     'APP': {
         'client_id': '<client_id>',
         'secret': '<secret>',
         'key': ''
     }
 }
}
```

Replace <provider_name>, <client_id>, and <secret> with the appropriate values for the social account provider you wish to use.

## Usage
To create a new to-do list, log in to the application and click the "New List" button on the dashboard page.
To add a new task to a to-do list, click on the list title to view the list and then click the "Add Task" button.
To mark a task as completed, click the "Complete" button next to the task.
To delete a task, click the "Delete" button next to the task.
To delete a to-do list, click the "Delete List" button on the list view page.

## License
Django Todo List is released under the [MIT](./LICENSE.md) License.