from pydantic import BaseModel, Field

class UpdateWipTaskSchema(BaseModel):
    TypeTask: str = Field(..., min_length=1, max_length=20, description="Tipo de tarea, no puede estar vacío")
    ID_Process_Wip: int = Field(..., gt=0, description="ID del proceso WIP, debe ser mayor que 0")
    NewTask: str = Field(..., min_length=1, max_length=1500, description="Nuevo nombre de la tarea")
    NewTittle: str = Field(..., min_length=1, max_length=1500, description="Nuevo título de la tarea")


    
