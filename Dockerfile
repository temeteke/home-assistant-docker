FROM homeassistant/home-assistant

RUN pip install --no-cache-dir git+https://github.com/aparraga/braviarc.git
