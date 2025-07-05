from fastapi import FastAPI
import random, string

app = FastAPI()

@app.get("/generate")
def generate_password(length: int = 12):
    chars = string.ascii_letters + string.digits + string.punctuation
    return {"password": ''.join(random.choice(chars) for _ in range(length))}