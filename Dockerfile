FROM python:3.9.1
ENV PYTHONUNBUFFERED=1
WORKDIR /snow_app

# By copying over requirements first, we make sure that Docker will cache
# our installed requirements rather than reinstall them on every build
COPY requirements.txt /snow_app
RUN pip install -r requirements.txt

# Now copy in our code, and run it
COPY . /snow_app
