import os

EnvValues = dict[str, str]

def get_database_configuration() -> dict[str, EnvValues]:
    return {
        "default": {
            "ENGINE": "django.db.backends.postgresql",
            "NAME": os.getenv("POSTGRES_DATABASE"),
            "USER": os.getenv("POSTGRES_USER"),
            "PASSWORD": os.getenv("POSTGRES_PASSWORD"),
            "HOST": os.getenv("POSTGRES_HOST"),
            "PORT": os.getenv("POSTGRES_DB_PORT"),
        }
    }

print("Database Configuration:", get_database_configuration()['default'])
