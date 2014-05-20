.class public Lcom/tencent/tmassistantsdk/storage/table/DownloadLogTable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/tmassistantsdk/storage/table/ITableBase;


# static fields
.field public static final CREATE_TABLE_SQL:Ljava/lang/String; = "CREATE TABLE if not exists logData( _id INTEGER PRIMARY KEY AUTOINCREMENT, logData BLOB );"

.field private static final SQL_INSERT:Ljava/lang/String; = "INSERT INTO logData logData = ?"

.field public static final TABLE_NAME:Ljava/lang/String; = "logData"

.field private static mInstance:Lcom/tencent/tmassistantsdk/storage/table/DownloadLogTable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/tmassistantsdk/storage/table/DownloadLogTable;->mInstance:Lcom/tencent/tmassistantsdk/storage/table/DownloadLogTable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/tencent/tmassistantsdk/storage/table/DownloadLogTable;
    .locals 2

    .prologue
    .line 36
    const-class v1, Lcom/tencent/tmassistantsdk/storage/table/DownloadLogTable;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/tmassistantsdk/storage/table/DownloadLogTable;->mInstance:Lcom/tencent/tmassistantsdk/storage/table/DownloadLogTable;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcom/tencent/tmassistantsdk/storage/table/DownloadLogTable;

    invoke-direct {v0}, Lcom/tencent/tmassistantsdk/storage/table/DownloadLogTable;-><init>()V

    sput-object v0, Lcom/tencent/tmassistantsdk/storage/table/DownloadLogTable;->mInstance:Lcom/tencent/tmassistantsdk/storage/table/DownloadLogTable;

    .line 39
    :cond_0
    sget-object v0, Lcom/tencent/tmassistantsdk/storage/table/DownloadLogTable;->mInstance:Lcom/tencent/tmassistantsdk/storage/table/DownloadLogTable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 36
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public createTableSQL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    const-string v0, "CREATE TABLE if not exists logData( _id INTEGER PRIMARY KEY AUTOINCREMENT, logData BLOB );"

    return-object v0
.end method

.method public delete(Ljava/util/List;)Z
    .locals 5
    .parameter

    .prologue
    .line 90
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 91
    :cond_0
    const/4 v0, 0x0

    .line 112
    :goto_0
    return v0

    .line 95
    :cond_1
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v0, "("

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 97
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 98
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 99
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 103
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 104
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 107
    :cond_3
    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 109
    invoke-virtual {p0}, Lcom/tencent/tmassistantsdk/storage/table/DownloadLogTable;->getHelper()Lcom/tencent/tmassistantsdk/storage/helper/SqliteHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmassistantsdk/storage/helper/SqliteHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 110
    const-string v2, "logData"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "_id in "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 112
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getAlterSQL(II)[Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 181
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDatas(I)Lcom/tencent/tmassistantsdk/storage/table/DownloadLogTable$DataWrapper;
    .locals 11
    .parameter

    .prologue
    const/4 v9, 0x0

    .line 123
    new-instance v10, Lcom/tencent/tmassistantsdk/storage/table/DownloadLogTable$DataWrapper;

    invoke-direct {v10}, Lcom/tencent/tmassistantsdk/storage/table/DownloadLogTable$DataWrapper;-><init>()V

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v10, Lcom/tencent/tmassistantsdk/storage/table/DownloadLogTable$DataWrapper;->idList:Ljava/util/List;

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v10, Lcom/tencent/tmassistantsdk/storage/table/DownloadLogTable$DataWrapper;->dataList:Ljava/util/List;

    .line 129
    if-lez p1, :cond_5

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "0,"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 132
    :goto_0
    invoke-virtual {p0}, Lcom/tencent/tmassistantsdk/storage/table/DownloadLogTable;->getHelper()Lcom/tencent/tmassistantsdk/storage/helper/SqliteHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmassistantsdk/storage/helper/SqliteHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 135
    :try_start_0
    const-string v1, "logData"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "_id asc"

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 136
    if-eqz v0, :cond_1

    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 141
    :cond_0
    const-string v1, "_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 142
    iget-object v3, v10, Lcom/tencent/tmassistantsdk/storage/table/DownloadLogTable$DataWrapper;->idList:Ljava/util/List;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    const-string v1, "logData"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    .line 146
    iget-object v2, v10, Lcom/tencent/tmassistantsdk/storage/table/DownloadLogTable$DataWrapper;->dataList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    if-nez v1, :cond_0

    .line 155
    :cond_1
    if-eqz v0, :cond_2

    .line 156
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v9, v10

    .line 160
    :cond_3
    :goto_1
    return-object v9

    .line 152
    :catch_0
    move-exception v0

    move-object v0, v9

    :goto_2
    if-eqz v0, :cond_3

    .line 156
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 155
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v9, :cond_4

    .line 156
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    .line 155
    :catchall_1
    move-exception v1

    move-object v9, v0

    move-object v0, v1

    goto :goto_3

    .line 152
    :catch_1
    move-exception v1

    goto :goto_2

    :cond_5
    move-object v8, v9

    goto :goto_0
.end method

.method public getHelper()Lcom/tencent/tmassistantsdk/storage/helper/SqliteHelper;
    .locals 1

    .prologue
    .line 186
    invoke-static {}, Lcom/tencent/tmassistantsdk/storage/helper/AstSDKDBHelper;->getInstance()Lcom/tencent/tmassistantsdk/storage/helper/SqliteHelper;

    move-result-object v0

    return-object v0
.end method

.method public save(Ljava/util/List;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 62
    invoke-virtual {p0}, Lcom/tencent/tmassistantsdk/storage/table/DownloadLogTable;->getHelper()Lcom/tencent/tmassistantsdk/storage/helper/SqliteHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmassistantsdk/storage/helper/SqliteHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 65
    :try_start_0
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 66
    const-string v0, "INSERT INTO logData logData = ?"

    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v3

    .line 68
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 69
    const/4 v5, 0x1

    invoke-virtual {v3, v5, v0}, Landroid/database/sqlite/SQLiteStatement;->bindBlob(I[B)V

    .line 70
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 75
    :catch_0
    move-exception v0

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const/4 v0, 0x0

    .line 81
    :goto_1
    return v0

    .line 73
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 78
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move v0, v1

    .line 81
    goto :goto_1

    .line 75
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public save([B)Z
    .locals 4
    .parameter

    .prologue
    .line 49
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 50
    const-string v1, "logData"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 51
    invoke-virtual {p0}, Lcom/tencent/tmassistantsdk/storage/table/DownloadLogTable;->getHelper()Lcom/tencent/tmassistantsdk/storage/helper/SqliteHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/tmassistantsdk/storage/helper/SqliteHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 52
    const-string v2, "logData"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    const-string v0, "logData"

    return-object v0
.end method

.method public tableVersion()I
    .locals 1

    .prologue
    .line 165
    const/4 v0, 0x1

    return v0
.end method
