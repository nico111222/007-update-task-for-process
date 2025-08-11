from pydantic import BaseModel, Field
from typing import Optional

class UpdateWipTaskSchema(BaseModel):
    TypeTask: str = Field(..., min_length=1, max_length=20, description="Tipo de tarea, no puede estar vacío")
    ID_Process_Wip: int = Field(..., gt=0, description="ID del proceso WIP, debe ser mayor que 0")
    NewTask: str = Field(..., min_length=1, max_length=1500, description="Nuevo nombre de la tarea")
    NewTittle: str = Field(..., min_length=1, max_length=1500, description="Nuevo título de la tarea")

class CreateWipTaskSchema(BaseModel):
    ID_General_WipTask: int = Field(..., gt=0, description="ID único de la tarea WIP, debe ser mayor que 0")
    ID_General_Status: Optional[int] = Field(default=None, gt=0)
    ID_General_Locations: Optional[int] = Field(default=None, gt=0)
    IDSubProcess: Optional[int] = Field(default=None, gt=0)
    TypeTask: Optional[str] = Field(default=None, min_length=1, max_length=20)
    Task: Optional[str] = Field(default=None, min_length=1, max_length=1500)
    Tittle: Optional[str] = Field(default=None, min_length=1, max_length=1500)
    ID_Process_Wip: Optional[int] = Field(default=None, gt=0)
