from fastapi import APIRouter, HTTPException
from model.General_WipTask_model import General_WipTask_model
from schemas.General_WipTask_schema import UpdateWipTaskSchema

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

