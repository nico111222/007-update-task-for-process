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


    @classmethod
    async def create_WipTask(cls, ID_General_WipTask: int, ID_General_Status=None, ID_General_Locations=None,
                             IDSubProcess=None, TypeTask=None, Task=None, Tittle=None, ID_Process_Wip=None):
        try:
            # Escapar comillas simples para evitar errores SQL
            TypeTask = TypeTask.replace("'", "''") if TypeTask else None
            Task = Task.replace("'", "''") if Task else None
            Tittle = Tittle.replace("'", "''") if Tittle else None

            textSQL = f"""
            EXEC dbo.SP_General_WipTask_Process_Wip_Insert
                @ID_General_WipTask = {ID_General_WipTask},
                @ID_General_Status = {ID_General_Status if ID_General_Status is not None else 'NULL'},
                @ID_General_Locations = {ID_General_Locations if ID_General_Locations is not None else 'NULL'},
                @IDSubProcess = {IDSubProcess if IDSubProcess is not None else 'NULL'},
                @TypeTask = {'NULL' if not TypeTask else f"'{TypeTask}'"},
                @Task = {'NULL' if not Task else f"'{Task}'"},
                @Tittle = {'NULL' if not Tittle else f"'{Tittle}'"},
                @ID_Process_Wip = {ID_Process_Wip if ID_Process_Wip is not None else 'NULL'}
            """
            db_connection = conn()
            result = await db_connection.connect_and_execute(SupplyNew, textSQL)
            return result
        except Exception as ex:
            raise Exception(ex)
