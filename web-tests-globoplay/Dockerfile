FROM selenium/standalone-chrome:86.0-chromedriver-86.0
LABEL author="Leo Sales - lsales@g.globo"
COPY requirements.txt .
ENV PYTHONPATH=/usr/bin/python3:/home/seluser/.local/lib/python3.6/site-packages/:/home/seluser/.local/bin/
ENV PYTHONIOENCODING=utf8
ENV PATH=/home/seluser/.local/bin/:$PATH
RUN sudo apt-get update -qq && sudo apt-get install -qq -y python3-pip zip; \
    pip3 install -r requirements.txt; \
    sudo rm -rf /var/lib/apt/lists/*;