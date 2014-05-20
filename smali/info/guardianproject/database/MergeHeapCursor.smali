.class public Linfo/guardianproject/database/MergeHeapCursor;
.super Linfo/guardianproject/database/AbstractCursor;
.source "SourceFile"

# interfaces
.implements Linfo/guardianproject/database/IHeapCursor;


# instance fields
.field private mCursor:Linfo/guardianproject/database/IHeapCursor;

.field private mCursors:[Linfo/guardianproject/database/IHeapCursor;

.field private mObserver:Landroid/database/DataSetObserver;


# direct methods
.method public constructor <init>([Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava;)V
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0}, Linfo/guardianproject/database/AbstractCursor;-><init>()V

    .line 15
    new-instance v1, Linfo/guardianproject/database/MergeHeapCursor$1;

    invoke-direct {v1, p0}, Linfo/guardianproject/database/MergeHeapCursor$1;-><init>(Linfo/guardianproject/database/MergeHeapCursor;)V

    iput-object v1, p0, Linfo/guardianproject/database/MergeHeapCursor;->mObserver:Landroid/database/DataSetObserver;

    .line 32
    iput-object p1, p0, Linfo/guardianproject/database/MergeHeapCursor;->mCursors:[Linfo/guardianproject/database/IHeapCursor;

    .line 33
    aget-object v1, p1, v0

    iput-object v1, p0, Linfo/guardianproject/database/MergeHeapCursor;->mCursor:Linfo/guardianproject/database/IHeapCursor;

    .line 35
    :goto_0
    iget-object v1, p0, Linfo/guardianproject/database/MergeHeapCursor;->mCursors:[Linfo/guardianproject/database/IHeapCursor;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 40
    return-void

    .line 36
    :cond_0
    iget-object v1, p0, Linfo/guardianproject/database/MergeHeapCursor;->mCursors:[Linfo/guardianproject/database/IHeapCursor;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    .line 38
    iget-object v1, p0, Linfo/guardianproject/database/MergeHeapCursor;->mCursors:[Linfo/guardianproject/database/IHeapCursor;

    aget-object v1, v1, v0

    iget-object v2, p0, Linfo/guardianproject/database/MergeHeapCursor;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {v1, v2}, Linfo/guardianproject/database/IHeapCursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 35
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public checkIsCacheUseful(I)Z
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 321
    iget-object v0, p0, Linfo/guardianproject/database/MergeHeapCursor;->mCursors:[Linfo/guardianproject/database/IHeapCursor;

    array-length v3, v0

    .line 322
    const/4 v0, 0x1

    move v2, v1

    .line 323
    :goto_0
    if-lt v2, v3, :cond_0

    .line 330
    return v0

    .line 324
    :cond_0
    iget-object v4, p0, Linfo/guardianproject/database/MergeHeapCursor;->mCursors:[Linfo/guardianproject/database/IHeapCursor;

    aget-object v4, v4, v2

    if-eqz v4, :cond_1

    .line 325
    iget-object v4, p0, Linfo/guardianproject/database/MergeHeapCursor;->mCursors:[Linfo/guardianproject/database/IHeapCursor;

    aget-object v4, v4, v2

    invoke-interface {v4, p1}, Linfo/guardianproject/database/IHeapCursor;->checkIsCacheUseful(I)Z

    move-result v4

    if-nez v4, :cond_1

    move v0, v1

    .line 323
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public close()V
    .locals 3

    .prologue
    .line 157
    iget-object v0, p0, Linfo/guardianproject/database/MergeHeapCursor;->mCursors:[Linfo/guardianproject/database/IHeapCursor;

    array-length v1, v0

    .line 158
    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    .line 162
    invoke-super {p0}, Linfo/guardianproject/database/AbstractCursor;->close()V

    .line 163
    return-void

    .line 159
    :cond_0
    iget-object v2, p0, Linfo/guardianproject/database/MergeHeapCursor;->mCursors:[Linfo/guardianproject/database/IHeapCursor;

    aget-object v2, v2, v0

    if-eqz v2, :cond_1

    .line 160
    iget-object v2, p0, Linfo/guardianproject/database/MergeHeapCursor;->mCursors:[Linfo/guardianproject/database/IHeapCursor;

    aget-object v2, v2, v0

    invoke-interface {v2}, Linfo/guardianproject/database/IHeapCursor;->close()V

    .line 158
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public containKey(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 335
    iget-object v1, p0, Linfo/guardianproject/database/MergeHeapCursor;->mCursors:[Linfo/guardianproject/database/IHeapCursor;

    array-length v2, v1

    move v1, v0

    .line 337
    :goto_0
    if-lt v1, v2, :cond_0

    .line 344
    return v0

    .line 338
    :cond_0
    iget-object v3, p0, Linfo/guardianproject/database/MergeHeapCursor;->mCursors:[Linfo/guardianproject/database/IHeapCursor;

    aget-object v3, v3, v1

    if-eqz v3, :cond_1

    .line 339
    iget-object v3, p0, Linfo/guardianproject/database/MergeHeapCursor;->mCursors:[Linfo/guardianproject/database/IHeapCursor;

    aget-object v3, v3, v1

    invoke-interface {v3, p1}, Linfo/guardianproject/database/IHeapCursor;->containKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 340
    const/4 v0, 0x1

    .line 337
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public deactivate()V
    .locals 3

    .prologue
    .line 146
    iget-object v0, p0, Linfo/guardianproject/database/MergeHeapCursor;->mCursors:[Linfo/guardianproject/database/IHeapCursor;

    array-length v1, v0

    .line 147
    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    .line 152
    invoke-super {p0}, Linfo/guardianproject/database/AbstractCursor;->deactivate()V

    .line 153
    return-void

    .line 148
    :cond_0
    iget-object v2, p0, Linfo/guardianproject/database/MergeHeapCursor;->mCursors:[Linfo/guardianproject/database/IHeapCursor;

    aget-object v2, v2, v0

    if-eqz v2, :cond_1

    .line 149
    iget-object v2, p0, Linfo/guardianproject/database/MergeHeapCursor;->mCursors:[Linfo/guardianproject/database/IHeapCursor;

    aget-object v2, v2, v0

    invoke-interface {v2}, Linfo/guardianproject/database/IHeapCursor;->deactivate()V

    .line 147
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getBlob(I)[B
    .locals 1
    .parameter

    .prologue
    .line 130
    iget-object v0, p0, Linfo/guardianproject/database/MergeHeapCursor;->mCursor:Linfo/guardianproject/database/IHeapCursor;

    invoke-interface {v0, p1}, Linfo/guardianproject/database/IHeapCursor;->getBlob(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Linfo/guardianproject/database/MergeHeapCursor;->mCursor:Linfo/guardianproject/database/IHeapCursor;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Linfo/guardianproject/database/MergeHeapCursor;->mCursor:Linfo/guardianproject/database/IHeapCursor;

    invoke-interface {v0}, Linfo/guardianproject/database/IHeapCursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    .line 139
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method public getCount()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 45
    .line 46
    iget-object v1, p0, Linfo/guardianproject/database/MergeHeapCursor;->mCursors:[Linfo/guardianproject/database/IHeapCursor;

    array-length v2, v1

    move v1, v0

    .line 47
    :goto_0
    if-lt v1, v2, :cond_0

    .line 52
    return v0

    .line 48
    :cond_0
    iget-object v3, p0, Linfo/guardianproject/database/MergeHeapCursor;->mCursors:[Linfo/guardianproject/database/IHeapCursor;

    aget-object v3, v3, v1

    if-eqz v3, :cond_1

    .line 49
    iget-object v3, p0, Linfo/guardianproject/database/MergeHeapCursor;->mCursors:[Linfo/guardianproject/database/IHeapCursor;

    aget-object v3, v3, v1

    invoke-interface {v3}, Linfo/guardianproject/database/IHeapCursor;->getCount()I

    move-result v3

    add-int/2addr v0, v3

    .line 47
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getCursors()[Linfo/guardianproject/database/IHeapCursor;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Linfo/guardianproject/database/MergeHeapCursor;->mCursors:[Linfo/guardianproject/database/IHeapCursor;

    return-object v0
.end method

.method public getDouble(I)D
    .locals 2
    .parameter

    .prologue
    .line 118
    iget-object v0, p0, Linfo/guardianproject/database/MergeHeapCursor;->mCursor:Linfo/guardianproject/database/IHeapCursor;

    invoke-interface {v0, p1}, Linfo/guardianproject/database/IHeapCursor;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getFloat(I)F
    .locals 1
    .parameter

    .prologue
    .line 112
    iget-object v0, p0, Linfo/guardianproject/database/MergeHeapCursor;->mCursor:Linfo/guardianproject/database/IHeapCursor;

    invoke-interface {v0, p1}, Linfo/guardianproject/database/IHeapCursor;->getFloat(I)F

    move-result v0

    return v0
.end method

.method public getInt(I)I
    .locals 1
    .parameter

    .prologue
    .line 100
    iget-object v0, p0, Linfo/guardianproject/database/MergeHeapCursor;->mCursor:Linfo/guardianproject/database/IHeapCursor;

    invoke-interface {v0, p1}, Linfo/guardianproject/database/IHeapCursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getItem(I)Linfo/guardianproject/database/CursorDataItem;
    .locals 3
    .parameter

    .prologue
    .line 268
    iget-object v0, p0, Linfo/guardianproject/database/MergeHeapCursor;->mCursors:[Linfo/guardianproject/database/IHeapCursor;

    array-length v1, v0

    .line 270
    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    .line 278
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 271
    :cond_0
    iget-object v2, p0, Linfo/guardianproject/database/MergeHeapCursor;->mCursors:[Linfo/guardianproject/database/IHeapCursor;

    aget-object v2, v2, v0

    invoke-interface {v2}, Linfo/guardianproject/database/IHeapCursor;->getCount()I

    move-result v2

    .line 272
    if-ge p1, v2, :cond_1

    .line 273
    iget-object v1, p0, Linfo/guardianproject/database/MergeHeapCursor;->mCursors:[Linfo/guardianproject/database/IHeapCursor;

    aget-object v0, v1, v0

    invoke-interface {v0, p1}, Linfo/guardianproject/database/IHeapCursor;->getItem(I)Linfo/guardianproject/database/CursorDataItem;

    move-result-object v0

    goto :goto_1

    .line 275
    :cond_1
    sub-int/2addr p1, v2

    .line 270
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getItemByKey(Ljava/lang/Object;)Linfo/guardianproject/database/CursorDataItem;
    .locals 1
    .parameter

    .prologue
    .line 356
    iget-object v0, p0, Linfo/guardianproject/database/MergeHeapCursor;->mCursor:Linfo/guardianproject/database/IHeapCursor;

    invoke-interface {v0, p1}, Linfo/guardianproject/database/IHeapCursor;->getItemByKey(Ljava/lang/Object;)Linfo/guardianproject/database/CursorDataItem;

    move-result-object v0

    return-object v0
.end method

.method public getLong(I)J
    .locals 2
    .parameter

    .prologue
    .line 106
    iget-object v0, p0, Linfo/guardianproject/database/MergeHeapCursor;->mCursor:Linfo/guardianproject/database/IHeapCursor;

    invoke-interface {v0, p1}, Linfo/guardianproject/database/IHeapCursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPosistionMaps()[Landroid/util/SparseArray;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 297
    iget-object v0, p0, Linfo/guardianproject/database/MergeHeapCursor;->mCursors:[Linfo/guardianproject/database/IHeapCursor;

    array-length v2, v0

    .line 298
    new-array v3, v2, [Landroid/util/SparseArray;

    move v0, v1

    .line 299
    :goto_0
    if-lt v0, v2, :cond_0

    .line 302
    return-object v3

    .line 300
    :cond_0
    iget-object v4, p0, Linfo/guardianproject/database/MergeHeapCursor;->mCursors:[Linfo/guardianproject/database/IHeapCursor;

    aget-object v4, v4, v0

    invoke-interface {v4}, Linfo/guardianproject/database/IHeapCursor;->getPosistionMaps()[Landroid/util/SparseArray;

    move-result-object v4

    aget-object v4, v4, v1

    aput-object v4, v3, v0

    .line 299
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getShort(I)S
    .locals 1
    .parameter

    .prologue
    .line 94
    iget-object v0, p0, Linfo/guardianproject/database/MergeHeapCursor;->mCursor:Linfo/guardianproject/database/IHeapCursor;

    invoke-interface {v0, p1}, Linfo/guardianproject/database/IHeapCursor;->getShort(I)S

    move-result v0

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 88
    iget-object v0, p0, Linfo/guardianproject/database/MergeHeapCursor;->mCursor:Linfo/guardianproject/database/IHeapCursor;

    invoke-interface {v0, p1}, Linfo/guardianproject/database/IHeapCursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasLoadAllData()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 254
    iget-object v0, p0, Linfo/guardianproject/database/MergeHeapCursor;->mCursors:[Linfo/guardianproject/database/IHeapCursor;

    array-length v3, v0

    .line 255
    const/4 v0, 0x1

    move v2, v1

    .line 256
    :goto_0
    if-lt v2, v3, :cond_0

    .line 263
    return v0

    .line 257
    :cond_0
    iget-object v4, p0, Linfo/guardianproject/database/MergeHeapCursor;->mCursors:[Linfo/guardianproject/database/IHeapCursor;

    aget-object v4, v4, v2

    if-eqz v4, :cond_1

    .line 258
    iget-object v4, p0, Linfo/guardianproject/database/MergeHeapCursor;->mCursors:[Linfo/guardianproject/database/IHeapCursor;

    aget-object v4, v4, v2

    invoke-interface {v4}, Linfo/guardianproject/database/IHeapCursor;->hasLoadAllData()Z

    move-result v4

    if-nez v4, :cond_1

    move v0, v1

    .line 256
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public isCacheUseful()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 307
    iget-object v1, p0, Linfo/guardianproject/database/MergeHeapCursor;->mCursors:[Linfo/guardianproject/database/IHeapCursor;

    array-length v2, v1

    move v1, v0

    .line 309
    :goto_0
    if-lt v1, v2, :cond_0

    .line 316
    return v0

    .line 310
    :cond_0
    iget-object v3, p0, Linfo/guardianproject/database/MergeHeapCursor;->mCursors:[Linfo/guardianproject/database/IHeapCursor;

    aget-object v3, v3, v1

    if-eqz v3, :cond_1

    .line 311
    iget-object v3, p0, Linfo/guardianproject/database/MergeHeapCursor;->mCursors:[Linfo/guardianproject/database/IHeapCursor;

    aget-object v3, v3, v1

    invoke-interface {v3}, Linfo/guardianproject/database/IHeapCursor;->isCacheUseful()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 312
    const/4 v0, 0x1

    .line 309
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public isNull(I)Z
    .locals 1
    .parameter

    .prologue
    .line 124
    iget-object v0, p0, Linfo/guardianproject/database/MergeHeapCursor;->mCursor:Linfo/guardianproject/database/IHeapCursor;

    invoke-interface {v0, p1}, Linfo/guardianproject/database/IHeapCursor;->isNull(I)Z

    move-result v0

    return v0
.end method

.method public notifyChange(Ljava/lang/Object;Linfo/guardianproject/database/CursorDataItem;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 283
    iget-object v1, p0, Linfo/guardianproject/database/MergeHeapCursor;->mCursors:[Linfo/guardianproject/database/IHeapCursor;

    array-length v2, v1

    move v1, v0

    .line 285
    :goto_0
    if-lt v1, v2, :cond_0

    .line 292
    return v0

    .line 286
    :cond_0
    iget-object v3, p0, Linfo/guardianproject/database/MergeHeapCursor;->mCursors:[Linfo/guardianproject/database/IHeapCursor;

    aget-object v3, v3, v1

    if-eqz v3, :cond_1

    .line 287
    iget-object v3, p0, Linfo/guardianproject/database/MergeHeapCursor;->mCursors:[Linfo/guardianproject/database/IHeapCursor;

    aget-object v3, v3, v1

    invoke-interface {v3, p1, p2}, Linfo/guardianproject/database/IHeapCursor;->notifyChange(Ljava/lang/Object;Linfo/guardianproject/database/CursorDataItem;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 288
    const/4 v0, 0x1

    .line 285
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public onMove(II)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Linfo/guardianproject/database/MergeHeapCursor;->mCursor:Linfo/guardianproject/database/IHeapCursor;

    .line 61
    iget-object v0, p0, Linfo/guardianproject/database/MergeHeapCursor;->mCursors:[Linfo/guardianproject/database/IHeapCursor;

    array-length v3, v0

    move v2, v1

    move v0, v1

    .line 62
    :goto_0
    if-lt v2, v3, :cond_0

    .line 76
    :goto_1
    iget-object v2, p0, Linfo/guardianproject/database/MergeHeapCursor;->mCursor:Linfo/guardianproject/database/IHeapCursor;

    if-eqz v2, :cond_3

    .line 77
    iget-object v1, p0, Linfo/guardianproject/database/MergeHeapCursor;->mCursor:Linfo/guardianproject/database/IHeapCursor;

    sub-int v0, p2, v0

    invoke-interface {v1, v0}, Linfo/guardianproject/database/IHeapCursor;->moveToPosition(I)Z

    move-result v0

    .line 80
    :goto_2
    return v0

    .line 63
    :cond_0
    iget-object v4, p0, Linfo/guardianproject/database/MergeHeapCursor;->mCursors:[Linfo/guardianproject/database/IHeapCursor;

    aget-object v4, v4, v2

    if-eqz v4, :cond_2

    .line 64
    iget-object v4, p0, Linfo/guardianproject/database/MergeHeapCursor;->mCursors:[Linfo/guardianproject/database/IHeapCursor;

    aget-object v4, v4, v2

    invoke-interface {v4}, Linfo/guardianproject/database/IHeapCursor;->getCount()I

    move-result v4

    add-int/2addr v4, v0

    if-ge p2, v4, :cond_1

    .line 68
    iget-object v3, p0, Linfo/guardianproject/database/MergeHeapCursor;->mCursors:[Linfo/guardianproject/database/IHeapCursor;

    aget-object v2, v3, v2

    iput-object v2, p0, Linfo/guardianproject/database/MergeHeapCursor;->mCursor:Linfo/guardianproject/database/IHeapCursor;

    goto :goto_1

    .line 72
    :cond_1
    iget-object v4, p0, Linfo/guardianproject/database/MergeHeapCursor;->mCursors:[Linfo/guardianproject/database/IHeapCursor;

    aget-object v4, v4, v2

    invoke-interface {v4}, Linfo/guardianproject/database/IHeapCursor;->getCount()I

    move-result v4

    add-int/2addr v0, v4

    .line 62
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 80
    goto :goto_2
.end method

.method public putValue(ILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 349
    iget-object v0, p0, Linfo/guardianproject/database/MergeHeapCursor;->mCursor:Linfo/guardianproject/database/IHeapCursor;

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Linfo/guardianproject/database/MergeHeapCursor;->mCursor:Linfo/guardianproject/database/IHeapCursor;

    invoke-interface {v0, p1, p2}, Linfo/guardianproject/database/IHeapCursor;->putValue(ILjava/lang/Object;)V

    .line 352
    :cond_0
    return-void
.end method

.method public registerContentObserver(Landroid/database/ContentObserver;)V
    .locals 3
    .parameter

    .prologue
    .line 167
    iget-object v0, p0, Linfo/guardianproject/database/MergeHeapCursor;->mCursors:[Linfo/guardianproject/database/IHeapCursor;

    array-length v1, v0

    .line 168
    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    .line 173
    return-void

    .line 169
    :cond_0
    iget-object v2, p0, Linfo/guardianproject/database/MergeHeapCursor;->mCursors:[Linfo/guardianproject/database/IHeapCursor;

    aget-object v2, v2, v0

    if-eqz v2, :cond_1

    .line 170
    iget-object v2, p0, Linfo/guardianproject/database/MergeHeapCursor;->mCursors:[Linfo/guardianproject/database/IHeapCursor;

    aget-object v2, v2, v0

    invoke-interface {v2, p1}, Linfo/guardianproject/database/IHeapCursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 168
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 3
    .parameter

    .prologue
    .line 186
    iget-object v0, p0, Linfo/guardianproject/database/MergeHeapCursor;->mCursors:[Linfo/guardianproject/database/IHeapCursor;

    array-length v1, v0

    .line 187
    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    .line 192
    return-void

    .line 188
    :cond_0
    iget-object v2, p0, Linfo/guardianproject/database/MergeHeapCursor;->mCursors:[Linfo/guardianproject/database/IHeapCursor;

    aget-object v2, v2, v0

    if-eqz v2, :cond_1

    .line 189
    iget-object v2, p0, Linfo/guardianproject/database/MergeHeapCursor;->mCursors:[Linfo/guardianproject/database/IHeapCursor;

    aget-object v2, v2, v0

    invoke-interface {v2, p1}, Linfo/guardianproject/database/IHeapCursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 187
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public requery()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 207
    iget-object v1, p0, Linfo/guardianproject/database/MergeHeapCursor;->mCursors:[Linfo/guardianproject/database/IHeapCursor;

    array-length v2, v1

    move v1, v0

    .line 208
    :goto_0
    if-lt v1, v2, :cond_1

    .line 218
    const/4 v0, 0x1

    :cond_0
    return v0

    .line 209
    :cond_1
    iget-object v3, p0, Linfo/guardianproject/database/MergeHeapCursor;->mCursors:[Linfo/guardianproject/database/IHeapCursor;

    aget-object v3, v3, v1

    if-eqz v3, :cond_2

    .line 210
    iget-object v3, p0, Linfo/guardianproject/database/MergeHeapCursor;->mCursors:[Linfo/guardianproject/database/IHeapCursor;

    aget-object v3, v3, v1

    invoke-interface {v3}, Linfo/guardianproject/database/IHeapCursor;->requery()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 208
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setAutoBuildData(Z)V
    .locals 3
    .parameter

    .prologue
    .line 244
    iget-object v0, p0, Linfo/guardianproject/database/MergeHeapCursor;->mCursors:[Linfo/guardianproject/database/IHeapCursor;

    array-length v1, v0

    .line 245
    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    .line 250
    return-void

    .line 246
    :cond_0
    iget-object v2, p0, Linfo/guardianproject/database/MergeHeapCursor;->mCursors:[Linfo/guardianproject/database/IHeapCursor;

    aget-object v2, v2, v0

    if-eqz v2, :cond_1

    .line 247
    iget-object v2, p0, Linfo/guardianproject/database/MergeHeapCursor;->mCursors:[Linfo/guardianproject/database/IHeapCursor;

    aget-object v2, v2, v0

    invoke-interface {v2, p1}, Linfo/guardianproject/database/IHeapCursor;->setAutoBuildData(Z)V

    .line 245
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setDataCreator(Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava$ICursorDataItemCreator;)V
    .locals 3
    .parameter

    .prologue
    .line 234
    iget-object v0, p0, Linfo/guardianproject/database/MergeHeapCursor;->mCursors:[Linfo/guardianproject/database/IHeapCursor;

    array-length v1, v0

    .line 235
    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    .line 240
    return-void

    .line 236
    :cond_0
    iget-object v2, p0, Linfo/guardianproject/database/MergeHeapCursor;->mCursors:[Linfo/guardianproject/database/IHeapCursor;

    aget-object v2, v2, v0

    if-eqz v2, :cond_1

    .line 237
    iget-object v2, p0, Linfo/guardianproject/database/MergeHeapCursor;->mCursors:[Linfo/guardianproject/database/IHeapCursor;

    aget-object v2, v2, v0

    invoke-interface {v2, p1}, Linfo/guardianproject/database/IHeapCursor;->setDataCreator(Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava$ICursorDataItemCreator;)V

    .line 235
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setPageSize(I)V
    .locals 3
    .parameter

    .prologue
    .line 361
    iget-object v0, p0, Linfo/guardianproject/database/MergeHeapCursor;->mCursors:[Linfo/guardianproject/database/IHeapCursor;

    array-length v1, v0

    .line 362
    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    .line 367
    return-void

    .line 363
    :cond_0
    iget-object v2, p0, Linfo/guardianproject/database/MergeHeapCursor;->mCursors:[Linfo/guardianproject/database/IHeapCursor;

    aget-object v2, v2, v0

    if-eqz v2, :cond_1

    .line 364
    iget-object v2, p0, Linfo/guardianproject/database/MergeHeapCursor;->mCursors:[Linfo/guardianproject/database/IHeapCursor;

    aget-object v2, v2, v0

    invoke-interface {v2, p1}, Linfo/guardianproject/database/IHeapCursor;->setPageSize(I)V

    .line 362
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public unregisterContentObserver(Landroid/database/ContentObserver;)V
    .locals 3
    .parameter

    .prologue
    .line 176
    iget-object v0, p0, Linfo/guardianproject/database/MergeHeapCursor;->mCursors:[Linfo/guardianproject/database/IHeapCursor;

    array-length v1, v0

    .line 177
    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    .line 182
    return-void

    .line 178
    :cond_0
    iget-object v2, p0, Linfo/guardianproject/database/MergeHeapCursor;->mCursors:[Linfo/guardianproject/database/IHeapCursor;

    aget-object v2, v2, v0

    if-eqz v2, :cond_1

    .line 179
    iget-object v2, p0, Linfo/guardianproject/database/MergeHeapCursor;->mCursors:[Linfo/guardianproject/database/IHeapCursor;

    aget-object v2, v2, v0

    invoke-interface {v2, p1}, Linfo/guardianproject/database/IHeapCursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 177
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 3
    .parameter

    .prologue
    .line 196
    iget-object v0, p0, Linfo/guardianproject/database/MergeHeapCursor;->mCursors:[Linfo/guardianproject/database/IHeapCursor;

    array-length v1, v0

    .line 197
    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    .line 202
    return-void

    .line 198
    :cond_0
    iget-object v2, p0, Linfo/guardianproject/database/MergeHeapCursor;->mCursors:[Linfo/guardianproject/database/IHeapCursor;

    aget-object v2, v2, v0

    if-eqz v2, :cond_1

    .line 199
    iget-object v2, p0, Linfo/guardianproject/database/MergeHeapCursor;->mCursors:[Linfo/guardianproject/database/IHeapCursor;

    aget-object v2, v2, v0

    invoke-interface {v2, p1}, Linfo/guardianproject/database/IHeapCursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 197
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
