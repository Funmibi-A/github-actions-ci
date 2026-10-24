FROM python:3.12-slim

ARG APP_ENV=projection
ENV APP_ENV=${APP_ENV}

WORKDIR /app

COPY app.py .

RUN useradd --create-home appuser \
    && chown -R appuser:appuser /app

USER appuser

CMD ["python", "-c", "from app import add; print('2 + 3 =', add(2, 3))"]
