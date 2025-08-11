from fastapi import FastAPI
from router.General_WipTask_router import router as General_WipTask_router

app = FastAPI()


app.include_router(General_WipTask_router, prefix="/General_WipTask_routes")

@app.get("/")
async def root():
    return {"message": "API corriendo correctamente"}


