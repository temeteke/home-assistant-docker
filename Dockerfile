FROM homeassistant/home-assistant

RUN apt-get update && apt-get install -y git && \
    pip install --no-cache-dir git+https://github.com/aparraga/braviarc.git@28b431a083f8ce4f7d7d19ab66970c3be679d95e

COPY cors.py homeassistant/components/http/

CMD [ "python", "-m", "homeassistant", "--config", "/config" ]
