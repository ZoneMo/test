.class public Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava;
.super Linfo/guardianproject/database/AbstractCursor;
.source "SourceFile"

# interfaces
.implements Linfo/guardianproject/database/IHeapCursor;


# static fields
.field static final NO_COUNT:I = -0x1

.field static final TAG:Ljava/lang/String; = "Cursor"


# instance fields
.field private autoBuildData:Z

.field public creator:Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava$ICursorDataItemCreator;

.field curDb:Linfo/guardianproject/database/HeapCursor;

.field private hasloadAllData:Z

.field private mColumnNameMap:Ljava/util/Map;

.field private mColumns:[Ljava/lang/String;

.field private mCount:I

.field private mDatabase:Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;

.field private mDriver:Linfo/guardianproject/database/sqlcipher/SQLiteCursorDriver;

.field private mQuery:Linfo/guardianproject/database/sqlcipher/SQLiteQueryInJava;

.field private mWindow:Linfo/guardianproject/database/CursorDataWindow;

.field private pageSize:I


# direct methods
.method public constructor <init>(Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;Linfo/guardianproject/database/sqlcipher/SQLiteCursorDriver;Ljava/lang/String;Linfo/guardianproject/database/sqlcipher/SQLiteQueryInJava;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 99
    invoke-direct {p0}, Linfo/guardianproject/database/AbstractCursor;-><init>()V

    .line 38
    const/4 v0, -0x1

    iput v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava;->mCount:I

    .line 44
    const/16 v0, 0xbb8

    iput v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava;->pageSize:I

    .line 100
    iput-object p1, p0, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava;->mDatabase:Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;

    .line 101
    iput-object p2, p0, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava;->mDriver:Linfo/guardianproject/database/sqlcipher/SQLiteCursorDriver;

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava;->mColumnNameMap:Ljava/util/Map;

    .line 103
    iput-object p4, p0, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava;->mQuery:Linfo/guardianproject/database/sqlcipher/SQLiteQueryInJava;

    .line 106
    :try_start_0
    invoke-virtual {p1}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->lock()V

    .line 109
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava;->mQuery:Linfo/guardianproject/database/sqlcipher/SQLiteQueryInJava;

    invoke-virtual {v0}, Linfo/guardianproject/database/sqlcipher/SQLiteQueryInJava;->columnCountLocked()I

    move-result v1

    .line 110
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava;->mColumns:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    .line 122
    invoke-virtual {p1}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->unlock()V

    .line 124
    return-void

    .line 114
    :cond_0
    :try_start_1
    iget-object v2, p0, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava;->mQuery:Linfo/guardianproject/database/sqlcipher/SQLiteQueryInJava;

    invoke-virtual {v2, v0}, Linfo/guardianproject/database/sqlcipher/SQLiteQueryInJava;->columnNameLocked(I)Ljava/lang/String;

    move-result-object v2

    .line 115
    iget-object v3, p0, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava;->mColumns:[Ljava/lang/String;

    aput-object v2, v3, v0

    .line 117
    const-string v3, "_id"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 118
    iput v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava;->mRowIdColumnIndex:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 121
    :catchall_0
    move-exception v0

    .line 122
    invoke-virtual {p1}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->unlock()V

    .line 123
    throw v0
.end method

.method private deactivateCommon()V
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava;->mWindow:Linfo/guardianproject/database/CursorDataWindow;

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava;->mWindow:Linfo/guardianproject/database/CursorDataWindow;

    invoke-virtual {v0}, Linfo/guardianproject/database/CursorDataWindow;->clearData()V

    .line 287
    const/4 v0, 0x0

    iput-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava;->mWindow:Linfo/guardianproject/database/CursorDataWindow;

    .line 289
    :cond_0
    return-void
.end method

.method private fillWindow(I)I
    .locals 4
    .parameter

    .prologue
    .line 225
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava;->mWindow:Linfo/guardianproject/database/CursorDataWindow;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava;->autoBuildData:Z

    if-eqz v0, :cond_0

    .line 226
    new-instance v0, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava$1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava$1;-><init>(Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava;Z)V

    iput-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava;->mWindow:Linfo/guardianproject/database/CursorDataWindow;

    .line 240
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava;->mWindow:Linfo/guardianproject/database/CursorDataWindow;

    invoke-virtual {v0, p1}, Linfo/guardianproject/database/CursorDataWindow;->setStartPosition(I)V

    .line 244
    :goto_0
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava;->mQuery:Linfo/guardianproject/database/sqlcipher/SQLiteQueryInJava;

    iget-object v1, p0, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava;->mWindow:Linfo/guardianproject/database/CursorDataWindow;

    iget v2, p0, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava;->pageSize:I

    iget-object v3, p0, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava;->curDb:Linfo/guardianproject/database/HeapCursor;

    invoke-virtual {v0, v1, p1, v2, v3}, Linfo/guardianproject/database/sqlcipher/SQLiteQueryInJava;->fillWindow(Linfo/guardianproject/database/CursorDataWindow;IILinfo/guardianproject/database/HeapCursor;)I

    move-result v0

    .line 245
    return v0

    .line 242
    :cond_0
    invoke-virtual {p0}, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava;->initHeapDb()V

    goto :goto_0
.end method


# virtual methods
.method public checkIsCacheUseful(I)Z
    .locals 1
    .parameter

    .prologue
    .line 454
    iget-boolean v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava;->autoBuildData:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 455
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava;->mWindow:Linfo/guardianproject/database/CursorDataWindow;

    invoke-virtual {v0, p1}, Linfo/guardianproject/database/CursorDataWindow;->checkIsCacheUseful(I)Z

    move-result v0

    goto :goto_0
.end method

.method protected checkPosition()V
    .locals 0

    .prologue
    .line 195
    invoke-super {p0}, Linfo/guardianproject/database/AbstractCursor;->checkPosition()V

    .line 196
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 305
    invoke-super {p0}, Linfo/guardianproject/database/AbstractCursor;->close()V

    .line 306
    invoke-direct {p0}, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava;->deactivateCommon()V

    .line 307
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava;->mQuery:Linfo/guardianproject/database/sqlcipher/SQLiteQueryInJava;

    invoke-virtual {v0}, Linfo/guardianproject/database/sqlcipher/SQLiteQueryInJava;->close()V

    .line 308
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava;->mDriver:Linfo/guardianproject/database/sqlcipher/SQLiteCursorDriver;

    invoke-interface {v0}, Linfo/guardianproject/database/sqlcipher/SQLiteCursorDriver;->cursorClosed()V

    .line 309
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava;->mWindow:Linfo/guardianproject/database/CursorDataWindow;

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava;->mWindow:Linfo/guardianproject/database/CursorDataWindow;

    invoke-virtual {v0}, Linfo/guardianproject/database/CursorDataWindow;->clearData()V

    .line 312
    :cond_0
    return-void
.end method

.method public containKey(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 462
    iget-boolean v1, p0, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava;->autoBuildData:Z

    if-nez v1, :cond_1

    .line 464
    :cond_0
    :goto_0
    return v0

    .line 463
    :cond_1
    iget-object v1, p0, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava;->mWindow:Linfo/guardianproject/database/CursorDataWindow;

    if-eqz v1, :cond_0

    .line 464
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava;->mWindow:Linfo/guardianproject/database/CursorDataWindow;

    invoke-virtual {v0, p1}, Linfo/guardianproject/database/CursorDataWindow;->containKey(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public createDataItem()Linfo/guardianproject/database/CursorDataItem;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava;->creator:Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava$ICursorDataItemCreator;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava;->creator:Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava$ICursorDataItemCreator;

    invoke-interface {v0}, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava$ICursorDataItemCreator;->createItem()Linfo/guardianproject/database/CursorDataItem;

    move-result-object v0

    .line 204
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public deactivate()V
    .locals 1

    .prologue
    .line 298
    invoke-super {p0}, Linfo/guardianproject/database/AbstractCursor;->deactivate()V

    .line 299
    invoke-direct {p0}, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava;->deactivateCommon()V

    .line 300
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava;->mDriver:Linfo/guardianproject/database/sqlcipher/SQLiteCursorDriver;

    invoke-interface {v0}, Linfo/guardianproject/database/sqlcipher/SQLiteCursorDriver;->cursorDeactivated()V

    .line 301
    return-void
.end method

.method protected finalize()V
    .locals 1

    .prologue
    .line 337
    :try_start_0
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava;->mWindow:Linfo/guardianproject/database/CursorDataWindow;

    if-eqz v0, :cond_0

    .line 338
    invoke-virtual {p0}, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava;->close()V

    .line 339
    invoke-static {}, Linfo/guardianproject/database/sqlcipher/SQLiteDebug;->notifyActiveCursorFinalized()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 343
    :cond_0
    invoke-super {p0}, Linfo/guardianproject/database/AbstractCursor;->finalize()V

    .line 345
    return-void

    .line 342
    :catchall_0
    move-exception v0

    .line 343
    invoke-super {p0}, Linfo/guardianproject/database/AbstractCursor;->finalize()V

    .line 344
    throw v0
.end method

.method public getBlob(I)[B
    .locals 1
    .parameter

    .prologue
    .line 409
    iget-boolean v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava;->autoBuildData:Z

    if-nez v0, :cond_0

    .line 410
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava;->curDb:Linfo/guardianproject/database/HeapCursor;

    invoke-virtual {v0, p1}, Linfo/guardianproject/database/HeapCursor;->getBlob(I)[B

    move-result-object v0

    .line 412
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getColumnIndex(Ljava/lang/String;)I
    .locals 7
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 251
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava;->mColumnNameMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 252
    iget-object v2, p0, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava;->mColumns:[Ljava/lang/String;

    .line 253
    array-length v3, v2

    .line 254
    new-instance v4, Ljava/util/HashMap;

    const/high16 v0, 0x3f80

    invoke-direct {v4, v3, v0}, Ljava/util/HashMap;-><init>(IF)V

    .line 255
    const/4 v0, 0x0

    :goto_0
    if-lt v0, v3, :cond_2

    .line 258
    iput-object v4, p0, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava;->mColumnNameMap:Ljava/util/Map;

    .line 262
    :cond_0
    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 263
    if-eq v0, v1, :cond_1

    .line 264
    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    .line 265
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "requesting column name with table name -- "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 266
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 269
    :cond_1
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava;->mColumnNameMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 270
    if-eqz v0, :cond_3

    .line 271
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 273
    :goto_1
    return v0

    .line 256
    :cond_2
    aget-object v5, v2, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 273
    goto :goto_1
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava;->mColumns:[Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, -0x1

    .line 184
    iget v1, p0, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava;->mCount:I

    if-ne v1, v2, :cond_1

    .line 185
    invoke-direct {p0, v0}, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava;->fillWindow(I)I

    move-result v1

    iput v1, p0, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava;->mCount:I

    .line 186
    iget-object v1, p0, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava;->mWindow:Linfo/guardianproject/database/CursorDataWindow;

    if-eqz v1, :cond_1

    .line 187
    iget v1, p0, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava;->mCount:I

    if-eq v1, v2, :cond_0

    iget v1, p0, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava;->mCount:I

    iget-object v2, p0, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava;->mWindow:Linfo/guardianproject/database/CursorDataWindow;

    invoke-virtual {v2}, Linfo/guardianproject/database/CursorDataWindow;->getLoadedNum()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava;->hasloadAllData:Z

    .line 189
    :cond_1
    iget-boolean v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava;->autoBuildData:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava;->hasloadAllData:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava;->mWindow:Linfo/guardianproject/database/CursorDataWindow;

    invoke-virtual {v0}, Linfo/guardianproject/database/CursorDataWindow;->getLoadedNum()I

    move-result v0

    :goto_0
    return v0

    :cond_2
    iget v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava;->mCount:I

    goto :goto_0

    :cond_3
    iget v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava;->mCount:I

    goto :goto_0
.end method

.method public getDatabase()Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava;->mDatabase:Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;

    return-object v0
.end method

.method public getDouble(I)D
    .locals 2
    .parameter

    .prologue
    .line 392
    iget-boolean v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava;->autoBuildData:Z

    if-nez v0, :cond_0

    .line 393
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava;->curDb:Linfo/guardianproject/database/HeapCursor;

    invoke-virtual {v0, p1}, Linfo/guardianproject/database/HeapCursor;->getDouble(I)D

    move-result-wide v0

    .line 395
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getFloat(I)F
    .locals 1
    .parameter

    .prologue
    .line 384
    iget-boolean v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava;->autoBuildData:Z

    if-nez v0, :cond_0

    .line 385
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava;->curDb:Linfo/guardianproject/database/HeapCursor;

    invoke-virtual {v0, p1}, Linfo/guardianproject/database/HeapCursor;->getFloat(I)F

    move-result v0

    .line 387
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getInt(I)I
    .locals 1
    .parameter

    .prologue
    .line 368
    iget-boolean v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava;->autoBuildData:Z

    if-nez v0, :cond_0

    .line 369
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava;->curDb:Linfo/guardianproject/database/HeapCursor;

    invoke-virtual {v0, p1}, Linfo/guardianproject/database/HeapCursor;->getInt(I)I

    move-result v0

    .line 371
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Linfo/guardianproject/database/CursorDataItem;
    .locals 1
    .parameter

    .prologue
    .line 418
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava;->mWindow:Linfo/guardianproject/database/CursorDataWindow;

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava;->mWindow:Linfo/guardianproject/database/CursorDataWindow;

    invoke-virtual {v0, p1}, Linfo/guardianproject/database/CursorDataWindow;->getItem(I)Linfo/guardianproject/database/CursorDataItem;

    move-result-object v0

    .line 421
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemByKey(Ljava/lang/Object;)Linfo/guardianproject/database/CursorDataItem;
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 479
    iget-boolean v1, p0, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava;->autoBuildData:Z

    if-nez v1, :cond_1

    .line 487
    :cond_0
    :goto_0
    return-object v0

    .line 483
    :cond_1
    iget-object v1, p0, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava;->mWindow:Linfo/guardianproject/database/CursorDataWindow;

    if-eqz v1, :cond_0

    .line 487
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava;->mWindow:Linfo/guardianproject/database/CursorDataWindow;

    invoke-virtual {v0, p1}, Linfo/guardianproject/database/CursorDataWindow;->getItemByKey(Ljava/lang/Object;)Linfo/guardianproject/database/CursorDataItem;

    move-result-object v0

    goto :goto_0
.end method

.method public getLong(I)J
    .locals 2
    .parameter

    .prologue
    .line 376
    iget-boolean v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava;->autoBuildData:Z

    if-nez v0, :cond_0

    .line 377
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava;->curDb:Linfo/guardianproject/database/HeapCursor;

    invoke-virtual {v0, p1}, Linfo/guardianproject/database/HeapCursor;->getLong(I)J

    move-result-wide v0

    .line 379
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getPosistionMaps()[Landroid/util/SparseArray;
    .locals 3

    .prologue
    .line 319
    iget-boolean v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava;->autoBuildData:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 322
    :goto_0
    return-object v0

    .line 320
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/util/SparseArray;

    .line 321
    const/4 v1, 0x0

    iget-object v2, p0, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava;->mWindow:Linfo/guardianproject/database/CursorDataWindow;

    invoke-virtual {v2}, Linfo/guardianproject/database/CursorDataWindow;->getPosistionMaps()Landroid/util/SparseArray;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_0
.end method

.method public getShort(I)S
    .locals 1
    .parameter

    .prologue
    .line 360
    iget-boolean v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava;->autoBuildData:Z

    if-nez v0, :cond_0

    .line 361
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava;->curDb:Linfo/guardianproject/database/HeapCursor;

    invoke-virtual {v0, p1}, Linfo/guardianproject/database/HeapCursor;->getShort(I)S

    move-result v0

    .line 363
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 352
    iget-boolean v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava;->autoBuildData:Z

    if-nez v0, :cond_0

    .line 353
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava;->curDb:Linfo/guardianproject/database/HeapCursor;

    invoke-virtual {v0, p1}, Linfo/guardianproject/database/HeapCursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 355
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLoadAllData()Z
    .locals 1

    .prologue
    .line 447
    iget-boolean v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava;->hasloadAllData:Z

    return v0
.end method

.method public initHeapDb()V
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava;->curDb:Linfo/guardianproject/database/HeapCursor;

    if-nez v0, :cond_0

    .line 132
    new-instance v0, Linfo/guardianproject/database/HeapCursor;

    iget-object v1, p0, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava;->mColumns:[Ljava/lang/String;

    invoke-direct {v0, v1}, Linfo/guardianproject/database/HeapCursor;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava;->curDb:Linfo/guardianproject/database/HeapCursor;

    .line 133
    :cond_0
    return-void
.end method

.method public isAutoBuildData()Z
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava;->autoBuildData:Z

    return v0
.end method

.method public isCacheUseful()Z
    .locals 1

    .prologue
    .line 175
    iget-boolean v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava;->autoBuildData:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 176
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava;->mWindow:Linfo/guardianproject/database/CursorDataWindow;

    invoke-virtual {v0}, Linfo/guardianproject/database/CursorDataWindow;->isCacheUseful()Z

    move-result v0

    goto :goto_0
.end method

.method public isNull(I)Z
    .locals 1
    .parameter

    .prologue
    .line 400
    iget-boolean v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava;->autoBuildData:Z

    if-nez v0, :cond_0

    .line 401
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava;->curDb:Linfo/guardianproject/database/HeapCursor;

    invoke-virtual {v0, p1}, Linfo/guardianproject/database/HeapCursor;->isNull(I)Z

    move-result v0

    .line 403
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyChange(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 440
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava;->notifyChange(Ljava/lang/Object;Linfo/guardianproject/database/CursorDataItem;)Z

    move-result v0

    return v0
.end method

.method public notifyChange(Ljava/lang/Object;Linfo/guardianproject/database/CursorDataItem;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 426
    iget-boolean v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava;->autoBuildData:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava;->mWindow:Linfo/guardianproject/database/CursorDataWindow;

    if-eqz v0, :cond_1

    .line 427
    iget-boolean v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava;->hasloadAllData:Z

    if-nez v0, :cond_0

    instance-of v0, p1, [Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava;->mWindow:Linfo/guardianproject/database/CursorDataWindow;

    invoke-virtual {v0, p1}, Linfo/guardianproject/database/CursorDataWindow;->containKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 428
    iget v1, p0, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava;->mCount:I

    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    array-length v0, v0

    sub-int v0, v1, v0

    iput v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava;->mCount:I

    .line 429
    iget v1, p0, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava;->pageSize:I

    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    array-length v0, v0

    sub-int v0, v1, v0

    iput v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava;->pageSize:I

    .line 431
    :cond_0
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava;->mWindow:Linfo/guardianproject/database/CursorDataWindow;

    invoke-virtual {v0, p1, p2}, Linfo/guardianproject/database/CursorDataWindow;->notifyChange(Ljava/lang/Object;Linfo/guardianproject/database/CursorDataItem;)Z

    move-result v0

    .line 435
    :goto_0
    return v0

    .line 432
    :cond_1
    iget-boolean v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava;->autoBuildData:Z

    if-nez v0, :cond_2

    .line 433
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava;->curDb:Linfo/guardianproject/database/HeapCursor;

    invoke-virtual {v0}, Linfo/guardianproject/database/HeapCursor;->clear()V

    .line 435
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onMove(II)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 150
    iget-boolean v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava;->autoBuildData:Z

    if-eqz v0, :cond_2

    .line 151
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava;->mWindow:Linfo/guardianproject/database/CursorDataWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava;->mWindow:Linfo/guardianproject/database/CursorDataWindow;

    invoke-virtual {v0, p2}, Linfo/guardianproject/database/CursorDataWindow;->containData(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 153
    :cond_0
    iget v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava;->pageSize:I

    div-int v0, p2, v0

    .line 154
    iget v1, p0, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava;->pageSize:I

    mul-int/2addr v0, v1

    invoke-direct {p0, v0}, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava;->fillWindow(I)I

    .line 168
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 158
    :cond_2
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava;->curDb:Linfo/guardianproject/database/HeapCursor;

    if-nez v0, :cond_3

    .line 159
    invoke-virtual {p0}, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava;->initHeapDb()V

    .line 161
    :cond_3
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava;->curDb:Linfo/guardianproject/database/HeapCursor;

    invoke-virtual {v0, p2}, Linfo/guardianproject/database/HeapCursor;->containData(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 162
    iget v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava;->pageSize:I

    div-int v0, p2, v0

    .line 163
    iget v1, p0, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava;->pageSize:I

    mul-int/2addr v0, v1

    invoke-direct {p0, v0}, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava;->fillWindow(I)I

    .line 166
    :cond_4
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava;->curDb:Linfo/guardianproject/database/HeapCursor;

    invoke-virtual {v0, p2}, Linfo/guardianproject/database/HeapCursor;->moveToPosition(I)Z

    goto :goto_0
.end method

.method public put(ILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 137
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava;->curDb:Linfo/guardianproject/database/HeapCursor;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava;->curDb:Linfo/guardianproject/database/HeapCursor;

    invoke-virtual {v0, p1, p2}, Linfo/guardianproject/database/HeapCursor;->put(ILjava/lang/Object;)V

    .line 140
    :cond_0
    return-void
.end method

.method public putValue(ILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 471
    iget-boolean v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava;->autoBuildData:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava;->curDb:Linfo/guardianproject/database/HeapCursor;

    if-nez v0, :cond_1

    .line 473
    :cond_0
    :goto_0
    return-void

    .line 472
    :cond_1
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava;->curDb:Linfo/guardianproject/database/HeapCursor;

    invoke-virtual {v0, p1, p2}, Linfo/guardianproject/database/HeapCursor;->put(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public rebulidAllChangeData(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 209
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava;->creator:Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava$ICursorDataItemCreator;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava;->creator:Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava$ICursorDataItemCreator;

    invoke-interface {v0, p1}, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava$ICursorDataItemCreator;->rebulidAllChangeData(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 212
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAutoBuildData(Z)V
    .locals 0
    .parameter

    .prologue
    .line 76
    iput-boolean p1, p0, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava;->autoBuildData:Z

    .line 78
    return-void
.end method

.method public setDataCreator(Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava$ICursorDataItemCreator;)V
    .locals 0
    .parameter

    .prologue
    .line 219
    iput-object p1, p0, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava;->creator:Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava$ICursorDataItemCreator;

    .line 220
    return-void
.end method

.method public setPageSize(I)V
    .locals 1
    .parameter

    .prologue
    .line 61
    const/16 v0, 0x3a98

    if-gt p1, v0, :cond_0

    const/16 v0, 0x7d0

    if-lt p1, v0, :cond_0

    .line 62
    iput p1, p0, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava;->pageSize:I

    .line 65
    :cond_0
    return-void
.end method
