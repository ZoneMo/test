.class public abstract Linfo/guardianproject/database/CursorDataWindow;
.super Landroid/database/sqlite/SQLiteClosable;
.source "SourceFile"


# static fields
.field private static final CACHE_CAN_USE_PERCENT:D = 0.1

.field private static final MAX_CHANGE_LIMIT:I = 0x32

.field public static final PAGE_SIZE_DEFAULT:I = 0xbb8

.field public static final PAGE_SIZE_MAX:I = 0x3a98

.field public static final PAGE_SIZE_MIN:I = 0x7d0


# instance fields
.field changeData:Ljava/util/ArrayList;

.field private datas:Ljava/util/HashMap;

.field fillItem:Linfo/guardianproject/database/CursorDataItem;

.field private lastAllCount:I

.field private mStartPos:I

.field private posistionMaps:Landroid/util/SparseArray;

.field tempData:Linfo/guardianproject/database/CursorDataItem;


# direct methods
.method public constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    .line 128
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteClosable;-><init>()V

    .line 129
    const/4 v0, 0x0

    iput v0, p0, Linfo/guardianproject/database/CursorDataWindow;->mStartPos:I

    .line 130
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Linfo/guardianproject/database/CursorDataWindow;->posistionMaps:Landroid/util/SparseArray;

    .line 131
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Linfo/guardianproject/database/CursorDataWindow;->datas:Ljava/util/HashMap;

    .line 132
    return-void
.end method

.method private clearData(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 284
    iget-object v0, p0, Linfo/guardianproject/database/CursorDataWindow;->changeData:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 285
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/guardianproject/database/CursorDataWindow;->changeData:Ljava/util/ArrayList;

    .line 287
    :cond_0
    iget-object v0, p0, Linfo/guardianproject/database/CursorDataWindow;->changeData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 288
    iget-object v0, p0, Linfo/guardianproject/database/CursorDataWindow;->changeData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    :cond_1
    iget-object v0, p0, Linfo/guardianproject/database/CursorDataWindow;->datas:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    const/4 v0, 0x1

    return v0
.end method

.method private updatePos([Ljava/lang/Object;)V
    .locals 10
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 296
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    move v0, v1

    move v2, v1

    .line 298
    :goto_0
    iget-object v3, p0, Linfo/guardianproject/database/CursorDataWindow;->posistionMaps:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-lt v0, v3, :cond_0

    .line 317
    iput-object v5, p0, Linfo/guardianproject/database/CursorDataWindow;->posistionMaps:Landroid/util/SparseArray;

    .line 318
    return-void

    .line 299
    :cond_0
    iget-object v3, p0, Linfo/guardianproject/database/CursorDataWindow;->posistionMaps:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    .line 300
    iget-object v3, p0, Linfo/guardianproject/database/CursorDataWindow;->posistionMaps:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    .line 301
    const/4 v3, 0x1

    .line 302
    array-length v8, p1

    move v4, v1

    :goto_1
    if-lt v4, v8, :cond_2

    .line 309
    :goto_2
    if-eqz v3, :cond_1

    .line 310
    sub-int v3, v6, v2

    invoke-virtual {v5, v3, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 298
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 302
    :cond_2
    aget-object v9, p1, v4

    .line 303
    invoke-virtual {v9, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 305
    add-int/lit8 v2, v2, 0x1

    move v3, v1

    .line 306
    goto :goto_2

    .line 302
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method


# virtual methods
.method public checkIsCacheUseful(I)Z
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 96
    const/16 v2, 0x32

    if-le p1, v2, :cond_1

    .line 106
    :cond_0
    :goto_0
    return v0

    .line 99
    :cond_1
    iget v2, p0, Linfo/guardianproject/database/CursorDataWindow;->lastAllCount:I

    const/16 v3, 0xa

    if-ge v2, v3, :cond_2

    move v0, v1

    .line 100
    goto :goto_0

    .line 102
    :cond_2
    int-to-double v2, p1

    iget v4, p0, Linfo/guardianproject/database/CursorDataWindow;->lastAllCount:I

    int-to-double v4, v4

    div-double/2addr v2, v4

    .line 106
    const-wide v4, 0x3fb999999999999aL

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public clearData()V
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Linfo/guardianproject/database/CursorDataWindow;->posistionMaps:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 251
    iget-object v0, p0, Linfo/guardianproject/database/CursorDataWindow;->datas:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 252
    return-void
.end method

.method public containData(I)Z
    .locals 1
    .parameter

    .prologue
    .line 160
    iget-object v0, p0, Linfo/guardianproject/database/CursorDataWindow;->posistionMaps:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public containKey(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 336
    instance-of v0, p1, [Ljava/lang/Object;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 337
    check-cast v0, [Ljava/lang/Object;

    .line 338
    array-length v3, v0

    if-ne v3, v1, :cond_1

    .line 339
    iget-object v3, p0, Linfo/guardianproject/database/CursorDataWindow;->datas:Ljava/util/HashMap;

    if-eqz v3, :cond_0

    iget-object v3, p0, Linfo/guardianproject/database/CursorDataWindow;->datas:Ljava/util/HashMap;

    aget-object v0, v0, v2

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 342
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 339
    goto :goto_0

    .line 342
    :cond_1
    iget-object v0, p0, Linfo/guardianproject/database/CursorDataWindow;->datas:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Linfo/guardianproject/database/CursorDataWindow;->datas:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public abstract createItem()Linfo/guardianproject/database/CursorDataItem;
.end method

.method public fillColumnBlob(I[B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 201
    iget-object v0, p0, Linfo/guardianproject/database/CursorDataWindow;->tempData:Linfo/guardianproject/database/CursorDataItem;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Linfo/guardianproject/database/CursorDataWindow;->tempData:Linfo/guardianproject/database/CursorDataItem;

    invoke-interface {v0, p1, p2}, Linfo/guardianproject/database/CursorDataItem;->fillColumnBlob(I[B)V

    .line 203
    :cond_0
    return-void
.end method

.method public fillColumnDouble(ID)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 207
    iget-object v0, p0, Linfo/guardianproject/database/CursorDataWindow;->tempData:Linfo/guardianproject/database/CursorDataItem;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Linfo/guardianproject/database/CursorDataWindow;->tempData:Linfo/guardianproject/database/CursorDataItem;

    invoke-interface {v0, p1, p2, p3}, Linfo/guardianproject/database/CursorDataItem;->fillColumnDouble(ID)V

    .line 209
    :cond_0
    return-void
.end method

.method public fillColumnFloat(IF)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 191
    iget-object v0, p0, Linfo/guardianproject/database/CursorDataWindow;->tempData:Linfo/guardianproject/database/CursorDataItem;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Linfo/guardianproject/database/CursorDataWindow;->tempData:Linfo/guardianproject/database/CursorDataItem;

    invoke-interface {v0, p1, p2}, Linfo/guardianproject/database/CursorDataItem;->fillColumnFloat(IF)V

    .line 193
    :cond_0
    return-void
.end method

.method public fillColumnInt(IJ)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 180
    iget-object v0, p0, Linfo/guardianproject/database/CursorDataWindow;->tempData:Linfo/guardianproject/database/CursorDataItem;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Linfo/guardianproject/database/CursorDataWindow;->tempData:Linfo/guardianproject/database/CursorDataItem;

    invoke-interface {v0, p1, p2, p3}, Linfo/guardianproject/database/CursorDataItem;->fillColumnInt(IJ)V

    .line 182
    :cond_0
    return-void
.end method

.method public fillColumnLong(IJ)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 186
    iget-object v0, p0, Linfo/guardianproject/database/CursorDataWindow;->tempData:Linfo/guardianproject/database/CursorDataItem;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Linfo/guardianproject/database/CursorDataWindow;->tempData:Linfo/guardianproject/database/CursorDataItem;

    invoke-interface {v0, p1, p2, p3}, Linfo/guardianproject/database/CursorDataItem;->fillColumnLong(IJ)V

    .line 188
    :cond_0
    return-void
.end method

.method public fillColumnNull(I)V
    .locals 1
    .parameter

    .prologue
    .line 213
    iget-object v0, p0, Linfo/guardianproject/database/CursorDataWindow;->tempData:Linfo/guardianproject/database/CursorDataItem;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Linfo/guardianproject/database/CursorDataWindow;->tempData:Linfo/guardianproject/database/CursorDataItem;

    invoke-interface {v0, p1}, Linfo/guardianproject/database/CursorDataItem;->fillColumnNull(I)V

    .line 215
    :cond_0
    return-void
.end method

.method public fillColumnString(ILjava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 196
    iget-object v0, p0, Linfo/guardianproject/database/CursorDataWindow;->tempData:Linfo/guardianproject/database/CursorDataItem;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Linfo/guardianproject/database/CursorDataWindow;->tempData:Linfo/guardianproject/database/CursorDataItem;

    invoke-interface {v0, p1, p2}, Linfo/guardianproject/database/CursorDataItem;->fillColumnString(ILjava/lang/String;)V

    .line 198
    :cond_0
    return-void
.end method

.method public fillEnd(I)V
    .locals 1
    .parameter

    .prologue
    .line 229
    const/4 v0, 0x0

    iput-object v0, p0, Linfo/guardianproject/database/CursorDataWindow;->tempData:Linfo/guardianproject/database/CursorDataItem;

    .line 230
    iget-object v0, p0, Linfo/guardianproject/database/CursorDataWindow;->posistionMaps:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    iput v0, p0, Linfo/guardianproject/database/CursorDataWindow;->lastAllCount:I

    .line 232
    return-void
.end method

.method public getItem(I)Linfo/guardianproject/database/CursorDataItem;
    .locals 2
    .parameter

    .prologue
    .line 56
    const/4 v0, 0x0

    .line 57
    invoke-virtual {p0, p1}, Linfo/guardianproject/database/CursorDataWindow;->containData(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    iget-object v0, p0, Linfo/guardianproject/database/CursorDataWindow;->posistionMaps:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 59
    iget-object v0, p0, Linfo/guardianproject/database/CursorDataWindow;->datas:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/guardianproject/database/CursorDataItem;

    .line 60
    if-nez v0, :cond_0

    .line 61
    invoke-virtual {p0}, Linfo/guardianproject/database/CursorDataWindow;->rebuildChangeData()V

    .line 62
    iget-object v0, p0, Linfo/guardianproject/database/CursorDataWindow;->datas:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/guardianproject/database/CursorDataItem;

    .line 71
    :cond_0
    return-object v0
.end method

.method public getItemByKey(Ljava/lang/Object;)Linfo/guardianproject/database/CursorDataItem;
    .locals 1
    .parameter

    .prologue
    .line 322
    iget-object v0, p0, Linfo/guardianproject/database/CursorDataWindow;->datas:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 323
    const/4 v0, 0x0

    .line 329
    :goto_0
    return-object v0

    .line 325
    :cond_0
    iget-object v0, p0, Linfo/guardianproject/database/CursorDataWindow;->datas:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/guardianproject/database/CursorDataItem;

    goto :goto_0
.end method

.method public getLoadedNum()I
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Linfo/guardianproject/database/CursorDataWindow;->posistionMaps:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    return v0
.end method

.method public getPosistionMaps()Landroid/util/SparseArray;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Linfo/guardianproject/database/CursorDataWindow;->posistionMaps:Landroid/util/SparseArray;

    return-object v0
.end method

.method public getStartPosition()I
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Linfo/guardianproject/database/CursorDataWindow;->mStartPos:I

    return v0
.end method

.method public isCacheUseful()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 79
    iget-object v2, p0, Linfo/guardianproject/database/CursorDataWindow;->changeData:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 90
    :cond_0
    :goto_0
    return v0

    .line 81
    :cond_1
    iget-object v2, p0, Linfo/guardianproject/database/CursorDataWindow;->changeData:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0x32

    if-le v2, v3, :cond_2

    move v0, v1

    .line 83
    goto :goto_0

    .line 85
    :cond_2
    iget-object v2, p0, Linfo/guardianproject/database/CursorDataWindow;->changeData:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    int-to-double v2, v2

    iget v4, p0, Linfo/guardianproject/database/CursorDataWindow;->lastAllCount:I

    int-to-double v4, v4

    div-double/2addr v2, v4

    .line 90
    const-wide v4, 0x3fb999999999999aL

    cmpg-double v2, v2, v4

    if-ltz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public notifyChange(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 279
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Linfo/guardianproject/database/CursorDataWindow;->notifyChange(Ljava/lang/Object;Linfo/guardianproject/database/CursorDataItem;)Z

    move-result v0

    return v0
.end method

.method public notifyChange(Ljava/lang/Object;Linfo/guardianproject/database/CursorDataItem;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 261
    if-eqz p2, :cond_0

    .line 263
    iget-object v0, p0, Linfo/guardianproject/database/CursorDataWindow;->datas:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    :goto_0
    return v1

    .line 266
    :cond_0
    instance-of v0, p1, [Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 267
    check-cast p1, [Ljava/lang/Object;

    .line 268
    array-length v2, p1

    move v0, v1

    :goto_1
    if-lt v0, v2, :cond_1

    .line 271
    invoke-direct {p0, p1}, Linfo/guardianproject/database/CursorDataWindow;->updatePos([Ljava/lang/Object;)V

    goto :goto_0

    .line 268
    :cond_1
    aget-object v3, p1, v0

    .line 269
    iget-object v4, p0, Linfo/guardianproject/database/CursorDataWindow;->datas:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 273
    :cond_2
    invoke-direct {p0, p1}, Linfo/guardianproject/database/CursorDataWindow;->clearData(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected onAllReferencesReleased()V
    .locals 0

    .prologue
    .line 256
    invoke-virtual {p0}, Linfo/guardianproject/database/CursorDataWindow;->clearData()V

    .line 257
    return-void
.end method

.method public rebuildChangeData()V
    .locals 5

    .prologue
    .line 112
    iget-object v0, p0, Linfo/guardianproject/database/CursorDataWindow;->changeData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 125
    :goto_0
    return-void

    .line 113
    :cond_0
    iget-object v0, p0, Linfo/guardianproject/database/CursorDataWindow;->changeData:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Linfo/guardianproject/database/CursorDataWindow;->rebulidAllChangeData(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    .line 115
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    .line 124
    iget-object v0, p0, Linfo/guardianproject/database/CursorDataWindow;->changeData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 116
    :cond_1
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/guardianproject/database/CursorDataItem;

    .line 117
    if-eqz v0, :cond_2

    .line 119
    iget-object v3, p0, Linfo/guardianproject/database/CursorDataWindow;->datas:Ljava/util/HashMap;

    invoke-interface {v0}, Linfo/guardianproject/database/CursorDataItem;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method public abstract rebulidAllChangeData(Ljava/util/ArrayList;)Ljava/util/ArrayList;
.end method

.method public rowEnd(II)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 218
    if-eqz p2, :cond_1

    .line 220
    iget-object v0, p0, Linfo/guardianproject/database/CursorDataWindow;->posistionMaps:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 226
    :cond_0
    :goto_0
    return-void

    .line 221
    :cond_1
    iget-object v0, p0, Linfo/guardianproject/database/CursorDataWindow;->tempData:Linfo/guardianproject/database/CursorDataItem;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Linfo/guardianproject/database/CursorDataWindow;->tempData:Linfo/guardianproject/database/CursorDataItem;

    invoke-interface {v0}, Linfo/guardianproject/database/CursorDataItem;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 223
    iget-object v1, p0, Linfo/guardianproject/database/CursorDataWindow;->datas:Ljava/util/HashMap;

    iget-object v2, p0, Linfo/guardianproject/database/CursorDataWindow;->tempData:Linfo/guardianproject/database/CursorDataItem;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    iget-object v1, p0, Linfo/guardianproject/database/CursorDataWindow;->posistionMaps:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public rowStart(I)V
    .locals 1
    .parameter

    .prologue
    .line 170
    invoke-virtual {p0, p1}, Linfo/guardianproject/database/CursorDataWindow;->containData(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 171
    invoke-virtual {p0}, Linfo/guardianproject/database/CursorDataWindow;->createItem()Linfo/guardianproject/database/CursorDataItem;

    move-result-object v0

    iput-object v0, p0, Linfo/guardianproject/database/CursorDataWindow;->tempData:Linfo/guardianproject/database/CursorDataItem;

    .line 176
    :cond_0
    return-void
.end method

.method public setStartPosition(I)V
    .locals 0
    .parameter

    .prologue
    .line 150
    iput p1, p0, Linfo/guardianproject/database/CursorDataWindow;->mStartPos:I

    .line 151
    return-void
.end method
