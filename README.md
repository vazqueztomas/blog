# Personal Blog

This is a personal blog project built with Django.

## Requirements

- Python 3.11
- Django 5.1.6

## Installation

1. Clone the repository:
    ```sh
    git clone <repository-url>
    cd personal_blog
    ```

2. Install the dependencies:
    ```sh
    pipenv install
    ```

3. Activate the virtual environment:
    ```sh
    pipenv shell
    ```

4. Apply the migrations:
    ```sh
    python manage.py migrate
    ```

## Running the Project

To run the development server, use the following command:
```sh
python  runserver
```

Then, open your browser and go to http://127.0.0.1:8000/.

## Project Structure
manage.py: Django's command-line utility for administrative tasks.
personal_blog/: Main project directory.
__init__.py: Marks the directory as a Python package.
asgi.py: ASGI configuration.
settings.py: Project settings.
urls.py: URL declarations.
wsgi.py: WSGI configuration.

## License
This project is licensed under the MIT License.

## TO run:
pipenv run python manage.py runserver