.class public Lcom/tencent/tmassistantsdk/channel/DBOption;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CREATE_TABLE_SQL:Ljava/lang/String; = "CREATE TABLE if not exists channeldata( itemId INTEGER PRIMARY KEY AUTOINCREMENT, itemData BLOB);"

.field private static final DATEBASE_VERSION:I = 0x1

.field private static final DB_NAME:Ljava/lang/String; = ".SystemConfig.db"

.field private static final QUERY_ALL_SQL:Ljava/lang/String; = "select * from channeldata"

.field private static final TABLE_NAME:Ljava/lang/String; = "channeldata"


# instance fields
.field private DB_PATH:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tmassistantsdk/channel/DBOption;->DB_PATH:Ljava/lang/String;

    .line 39
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/tencent/assistant/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tmassistantsdk/channel/DBOption;->DB_PATH:Ljava/lang/String;

    .line 41
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/tencent/tmassistantsdk/channel/DBOption;->DB_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 42
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 44
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 46
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tencent/tmassistantsdk/channel/DBOption;->DB_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".SystemConfig.db"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tmassistantsdk/channel/DBOption;->DB_PATH:Ljava/lang/String;

    .line 47
    return-void
.end method

.method private checkAndCreateTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 245
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v0

    .line 246
    if-eq v0, v1, :cond_1

    .line 248
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 251
    if-nez v0, :cond_0

    .line 254
    :try_start_0
    const-string v0, "CREATE TABLE if not exists channeldata( itemId INTEGER PRIMARY KEY AUTOINCREMENT, itemData BLOB);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 256
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 257
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 264
    :cond_1
    return-void

    .line 261
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method private closeDB(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter

    .prologue
    .line 226
    if-eqz p1, :cond_0

    .line 228
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    :try_start_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private declared-synchronized getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 185
    monitor-enter p0

    .line 188
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/tencent/tmassistantsdk/channel/DBOption;->DB_PATH:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 189
    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 216
    :cond_0
    monitor-exit p0

    return-object v0

    .line 195
    :cond_1
    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x14

    if-ge v1, v2, :cond_0

    .line 199
    :try_start_1
    iget-object v2, p0, Lcom/tencent/tmassistantsdk/channel/DBOption;->DB_PATH:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 207
    :goto_1
    if-nez v0, :cond_0

    .line 209
    const-wide/16 v2, 0x32

    :try_start_2
    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 195
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 185
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method private getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 150
    .line 153
    const/4 v0, 0x0

    move v4, v0

    move-object v0, v1

    move v1, v4

    :goto_0
    const/16 v2, 0x14

    if-ge v1, v2, :cond_1

    .line 157
    :try_start_0
    iget-object v2, p0, Lcom/tencent/tmassistantsdk/channel/DBOption;->DB_PATH:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 165
    :goto_1
    if-nez v0, :cond_0

    .line 167
    const-wide/16 v2, 0x32

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 153
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 171
    :cond_0
    invoke-direct {p0, v0}, Lcom/tencent/tmassistantsdk/channel/DBOption;->checkAndCreateTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 175
    :cond_1
    return-object v0

    :catch_0
    move-exception v2

    goto :goto_1
.end method


# virtual methods
.method public delete(J)Z
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 90
    invoke-direct {p0}, Lcom/tencent/tmassistantsdk/channel/DBOption;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 91
    if-eqz v2, :cond_0

    .line 93
    new-array v3, v0, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    .line 94
    const-string v1, "channeldata"

    const-string v4, "itemId=?"

    invoke-virtual {v2, v1, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 95
    invoke-direct {p0, v2}, Lcom/tencent/tmassistantsdk/channel/DBOption;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 99
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public insert(Lcom/tencent/tmassistantsdk/channel/TMAssistantSDKChannelDataItem;)J
    .locals 4
    .parameter

    .prologue
    const-wide/16 v0, -0x1

    .line 57
    if-nez p1, :cond_1

    .line 79
    :cond_0
    :goto_0
    return-wide v0

    .line 63
    :cond_1
    invoke-virtual {p1}, Lcom/tencent/tmassistantsdk/channel/TMAssistantSDKChannelDataItem;->getBuffer()[B

    move-result-object v2

    .line 64
    if-eqz v2, :cond_0

    .line 67
    invoke-direct {p0}, Lcom/tencent/tmassistantsdk/channel/DBOption;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 68
    if-eqz v3, :cond_0

    .line 70
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 71
    const-string v1, "itemData"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 72
    const-string v1, "channeldata"

    const-string v2, ""

    invoke-virtual {v3, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 75
    invoke-direct {p0, v3}, Lcom/tencent/tmassistantsdk/channel/DBOption;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0
.end method

.method public queryAll()Ljava/util/ArrayList;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 110
    invoke-direct {p0}, Lcom/tencent/tmassistantsdk/channel/DBOption;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 111
    if-eqz v1, :cond_2

    .line 113
    const-string v2, "select * from channeldata"

    invoke-virtual {v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 114
    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 116
    const-string v0, "itemId"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 117
    const-string v0, "itemData"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 123
    :cond_0
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 124
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    .line 126
    invoke-static {v6}, Lcom/tencent/tmassistantsdk/channel/TMAssistantSDKChannelDataItem;->getDataItemFromByte([B)Lcom/tencent/tmassistantsdk/channel/TMAssistantSDKChannelDataItem;

    move-result-object v6

    .line 127
    if-eqz v6, :cond_1

    .line 129
    invoke-virtual {v6, v5}, Lcom/tencent/tmassistantsdk/channel/TMAssistantSDKChannelDataItem;->setDBIdentity(I)V

    .line 130
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 134
    invoke-direct {p0, v1}, Lcom/tencent/tmassistantsdk/channel/DBOption;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 140
    :cond_2
    :goto_0
    return-object v0

    .line 137
    :cond_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 138
    invoke-direct {p0, v1}, Lcom/tencent/tmassistantsdk/channel/DBOption;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0
.end method
