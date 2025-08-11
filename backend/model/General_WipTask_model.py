SupplyNew = "Driver=SQL Server;Server=localhost\\SQLEXPRESS;Database=TEST;UID=sa;PWD=Pass1234;"
from db.conn import conn

class General_WipTask_model():
    @classmethod
    async def get_WipTask(cls):
        try:
            textSQL = """
            SELECT 
             GW.ID_General_WipTask,
             GW.Task,
             GW.Tittle
            FROM General_WipTask GW
            """
            db_connection = conn()
            df = await db_connection.connect_and_execute(SupplyNew, textSQL)
            return df
        except Exception as ex:
            raise Exception(ex)

    @classmethod
    async def update_WipTask(cls, TypeTask, ID_Process_Wip, NewTask, NewTittle):
        try:
            # Escapar comillas simples para evitar errores SQL
            NewTask = NewTask.replace("'", "''")
            NewTittle = NewTittle.replace("'", "''")

            textSQL = f"""
            EXEC dbo.SP_General_Wiptask_Process_Wip_Update
                @TypeTask = '{TypeTask}',
                @ID_Process_Wip = {ID_Process_Wip},
                @NewTask = '{NewTask}',
                @NewTittle = '{NewTittle}'
            """
            db_connection = conn()
            df = await db_connection.connect_and_execute(SupplyNew, textSQL)
            return df
        except Exception as ex:
            raise Exception(ex)


 

