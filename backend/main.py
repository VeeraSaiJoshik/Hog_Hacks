from fastapi import FastAPI
import uvicorn
from openai import OpenAI
from dotenv import load_dotenv

app = FastAPI()


@app.get("/")
def read_root():
    return {"Hello": "World"}

if __name__ == "__main__":
    load_dotenv()
    uvicorn.run("__main__:app", host="127.0.0.1", port=8000, reload=True)
