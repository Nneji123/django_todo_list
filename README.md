# Django Todo List

Django Todo List is a web application developed using the Django web framework. It provides a simple to-do list management system with user authentication and social account login with django_allauth. This application is developed based on Class-Based Views (CBV) principles.

The application is deployed on the Railway.app platform and uses a database hosted on the same platform.

## Requirements

- Python 3.8.10
- Django 4.2
- django-allauth

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