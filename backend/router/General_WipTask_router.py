from fastapi import APIRouter, HTTPException
from model.General_WipTask_model import General_WipTask_model
from schemas.General_WipTask_schema import UpdateWipTaskSchema,CreateWipTaskSchema #agregue el crear task post

router = APIRouter()

@router.get('/')
async def get_WipTask():
    try:
        result = await General_WipTask_model.get_WipTask()
        return result
    except Exception as e:
        raise HTTPException(status_code=500, detail=str(e))

@router.put('/')
async def update_WipTask(data: UpdateWipTaskSchema):
    try:
        result = await General_WipTask_model.update_WipTask(
            data.TypeTask,
            data.ID_Process_Wip,
            data.NewTask,
            data.NewTittle
        )
        return {"message": "Actualizado correctamente", "result": result}
    except Exception as e:
        raise HTTPException(status_code=500, detail=str(e))

@router.post('/')
async def create_WipTask(data: CreateWipTaskSchema):
    try:
        result = await General_WipTask_model.create_WipTask(
            data.ID_General_WipTask,
            data.ID_General_Status,
            data.ID_General_Locations,
            data.IDSubProcess,
            data.TypeTask,
            data.Task,
            data.Tittle,
            data.ID_Process_Wip
        )
        return {"message": "Creado correctamente", "result": result}
    except Exception as e:
        raise HTTPException(status_code=500, detail=str(e))
