from fastapi import FastAPI
from apps import scrapper


app = FastAPI()


@app.get("/")
async def root():
    return {"message": "Hello Wiki app!"}


@app.get("/search/{value}")
async def search(value: str):
    return scrapper.wiki(value)
