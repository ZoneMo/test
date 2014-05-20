.class public abstract Linfo/guardianproject/database/AbstractCursor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/database/CrossProcessCursor;


# static fields
.field private static final TAG:Ljava/lang/String; = "Cursor"


# instance fields
.field protected mClosed:Z

.field mContentObservable:Landroid/database/ContentObservable;

.field protected mContentResolver:Landroid/content/ContentResolver;

.field protected mCurrentRowID:Ljava/lang/Long;

.field mDataSetObservable:Landroid/database/DataSetObservable;

.field private mNotifyUri:Landroid/net/Uri;

.field protected mPos:I

.field protected mRowIdColumnIndex:I

.field private mSelfObserver:Landroid/database/ContentObserver;

.field private final mSelfObserverLock:Ljava/lang/Object;

.field private mSelfObserverRegistered:Z

.field protected mUpdatedRows:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Landroid/database/DataSetObservable;

    invoke-direct {v0}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v0, p0, Linfo/guardianproject/database/AbstractCursor;->mDataSetObservable:Landroid/database/DataSetObservable;

    .line 43
    new-instance v0, Landroid/database/ContentObservable;

    invoke-direct {v0}, Landroid/database/ContentObservable;-><init>()V

    iput-object v0, p0, Linfo/guardianproject/database/AbstractCursor;->mContentObservable:Landroid/database/ContentObservable;

    .line 636
    const/4 v0, 0x0

    iput-boolean v0, p0, Linfo/guardianproject/database/AbstractCursor;->mClosed:Z

    .line 639
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Linfo/guardianproject/database/AbstractCursor;->mSelfObserverLock:Ljava/lang/Object;

    .line 161
    iput v1, p0, Linfo/guardianproject/database/AbstractCursor;->mPos:I

    .line 162
    iput v1, p0, Linfo/guardianproject/database/AbstractCursor;->mRowIdColumnIndex:I

    .line 163
    const/4 v0, 0x0

    iput-object v0, p0, Linfo/guardianproject/database/AbstractCursor;->mCurrentRowID:Ljava/lang/Long;

    .line 164
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Linfo/guardianproject/database/AbstractCursor;->mUpdatedRows:Ljava/util/HashMap;

    .line 165
    return-void
.end method


# virtual methods
.method public abortUpdates()V
    .locals 2

    .prologue
    .line 435
    iget-object v1, p0, Linfo/guardianproject/database/AbstractCursor;->mUpdatedRows:Ljava/util/HashMap;

    monitor-enter v1

    .line 436
    :try_start_0
    iget-object v0, p0, Linfo/guardianproject/database/AbstractCursor;->mUpdatedRows:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 435
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected checkPosition()V
    .locals 3

    .prologue
    .line 581
    const/4 v0, -0x1

    iget v1, p0, Linfo/guardianproject/database/AbstractCursor;->mPos:I

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Linfo/guardianproject/database/AbstractCursor;->getCount()I

    move-result v0

    iget v1, p0, Linfo/guardianproject/database/AbstractCursor;->mPos:I

    if-ne v0, v1, :cond_1

    .line 582
    :cond_0
    new-instance v0, Linfo/guardianproject/database/CursorIndexOutOfBoundsException;

    iget v1, p0, Linfo/guardianproject/database/AbstractCursor;->mPos:I

    invoke-virtual {p0}, Linfo/guardianproject/database/AbstractCursor;->getCount()I

    move-result v2

    invoke-direct {v0, v1, v2}, Linfo/guardianproject/database/CursorIndexOutOfBoundsException;-><init>(II)V

    throw v0

    .line 584
    :cond_1
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Linfo/guardianproject/database/AbstractCursor;->mClosed:Z

    .line 109
    iget-object v0, p0, Linfo/guardianproject/database/AbstractCursor;->mContentObservable:Landroid/database/ContentObservable;

    invoke-virtual {v0}, Landroid/database/ContentObservable;->unregisterAll()V

    .line 110
    invoke-virtual {p0}, Linfo/guardianproject/database/AbstractCursor;->deactivateInternal()V

    .line 111
    return-void
.end method

.method public commitUpdates()Z
    .locals 1

    .prologue
    .line 445
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Linfo/guardianproject/database/AbstractCursor;->commitUpdates(Ljava/util/Map;)Z

    move-result v0

    return v0
.end method

.method public commitUpdates(Ljava/util/Map;)Z
    .locals 1
    .parameter

    .prologue
    .line 118
    const/4 v0, 0x0

    return v0
.end method

.method public copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 146
    invoke-virtual {p0, p1}, Linfo/guardianproject/database/AbstractCursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 147
    if-eqz v0, :cond_1

    .line 148
    iget-object v1, p2, Landroid/database/CharArrayBuffer;->data:[C

    .line 149
    if-eqz v1, :cond_0

    array-length v2, v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 150
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    iput-object v1, p2, Landroid/database/CharArrayBuffer;->data:[C

    .line 154
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p2, Landroid/database/CharArrayBuffer;->sizeCopied:I

    .line 156
    :cond_1
    return-void

    .line 152
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v4, v2, v1, v4}, Ljava/lang/String;->getChars(II[CI)V

    goto :goto_0
.end method

.method public deactivate()V
    .locals 0

    .prologue
    .line 79
    invoke-virtual {p0}, Linfo/guardianproject/database/AbstractCursor;->deactivateInternal()V

    .line 80
    return-void
.end method

.method public deactivateInternal()V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Linfo/guardianproject/database/AbstractCursor;->mSelfObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Linfo/guardianproject/database/AbstractCursor;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Linfo/guardianproject/database/AbstractCursor;->mSelfObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Linfo/guardianproject/database/AbstractCursor;->mSelfObserverRegistered:Z

    .line 90
    :cond_0
    iget-object v0, p0, Linfo/guardianproject/database/AbstractCursor;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyInvalidated()V

    .line 91
    return-void
.end method

.method public deleteRow()Z
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x0

    return v0
.end method

.method public fillWindow(ILandroid/database/CursorWindow;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 209
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Linfo/guardianproject/database/AbstractCursor;->getCount()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 243
    :cond_0
    :goto_0
    return-void

    .line 212
    :cond_1
    invoke-virtual {p2}, Landroid/database/CursorWindow;->acquireReference()V

    .line 214
    :try_start_0
    iget v1, p0, Linfo/guardianproject/database/AbstractCursor;->mPos:I

    .line 215
    add-int/lit8 v0, p1, -0x1

    iput v0, p0, Linfo/guardianproject/database/AbstractCursor;->mPos:I

    .line 216
    invoke-virtual {p2}, Landroid/database/CursorWindow;->clear()V

    .line 217
    invoke-virtual {p2, p1}, Landroid/database/CursorWindow;->setStartPosition(I)V

    .line 218
    invoke-virtual {p0}, Linfo/guardianproject/database/AbstractCursor;->getColumnCount()I

    move-result v2

    .line 219
    invoke-virtual {p2, v2}, Landroid/database/CursorWindow;->setNumColumns(I)Z

    .line 220
    :cond_2
    :goto_1
    invoke-virtual {p0}, Linfo/guardianproject/database/AbstractCursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Landroid/database/CursorWindow;->allocRow()Z

    move-result v0

    if-nez v0, :cond_4

    .line 237
    :cond_3
    iput v1, p0, Linfo/guardianproject/database/AbstractCursor;->mPos:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    invoke-virtual {p2}, Landroid/database/CursorWindow;->releaseReference()V

    goto :goto_0

    .line 221
    :cond_4
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v2, :cond_2

    .line 222
    :try_start_1
    invoke-virtual {p0, v0}, Linfo/guardianproject/database/AbstractCursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 223
    if-eqz v3, :cond_5

    .line 224
    iget v4, p0, Linfo/guardianproject/database/AbstractCursor;->mPos:I

    invoke-virtual {p2, v3, v4, v0}, Landroid/database/CursorWindow;->putString(Ljava/lang/String;II)Z

    move-result v3

    if-nez v3, :cond_6

    .line 225
    invoke-virtual {p2}, Landroid/database/CursorWindow;->freeLastRow()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 241
    invoke-virtual {p2}, Landroid/database/CursorWindow;->releaseReference()V

    goto :goto_0

    .line 229
    :cond_5
    :try_start_2
    iget v3, p0, Linfo/guardianproject/database/AbstractCursor;->mPos:I

    invoke-virtual {p2, v3, v0}, Landroid/database/CursorWindow;->putNull(II)Z

    move-result v3

    if-nez v3, :cond_6

    .line 230
    invoke-virtual {p2}, Landroid/database/CursorWindow;->freeLastRow()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 240
    :catchall_0
    move-exception v0

    .line 241
    invoke-virtual {p2}, Landroid/database/CursorWindow;->releaseReference()V

    .line 242
    throw v0

    .line 221
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 588
    iget-object v0, p0, Linfo/guardianproject/database/AbstractCursor;->mSelfObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Linfo/guardianproject/database/AbstractCursor;->mSelfObserverRegistered:Z

    if-eqz v0, :cond_0

    .line 589
    iget-object v0, p0, Linfo/guardianproject/database/AbstractCursor;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Linfo/guardianproject/database/AbstractCursor;->mSelfObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 591
    :cond_0
    return-void
.end method

.method public getBlob(I)[B
    .locals 2
    .parameter

    .prologue
    .line 62
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getBlob is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getColumnCount()I
    .locals 1

    .prologue
    .line 75
    invoke-virtual {p0}, Linfo/guardianproject/database/AbstractCursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getColumnIndex(Ljava/lang/String;)I
    .locals 5
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 290
    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 291
    if-eq v0, v1, :cond_0

    .line 292
    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    .line 293
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "requesting column name with table name -- "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 294
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 297
    :cond_0
    invoke-virtual {p0}, Linfo/guardianproject/database/AbstractCursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v2

    .line 298
    array-length v3, v2

    .line 299
    const/4 v0, 0x0

    :goto_0
    if-lt v0, v3, :cond_2

    move v0, v1

    .line 310
    :cond_1
    return v0

    .line 300
    :cond_2
    aget-object v4, v2, v0

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 299
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getColumnIndexOrThrow(Ljava/lang/String;)I
    .locals 3
    .parameter

    .prologue
    .line 314
    invoke-virtual {p0, p1}, Linfo/guardianproject/database/AbstractCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 315
    if-gez v0, :cond_0

    .line 316
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "column \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' does not exist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 318
    :cond_0
    return v0
.end method

.method public getColumnName(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 322
    invoke-virtual {p0}, Linfo/guardianproject/database/AbstractCursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0
.end method

.method public abstract getColumnNames()[Ljava/lang/String;
.end method

.method public abstract getCount()I
.end method

.method protected getDataSetObservable()Landroid/database/DataSetObservable;
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Linfo/guardianproject/database/AbstractCursor;->mDataSetObservable:Landroid/database/DataSetObservable;

    return-object v0
.end method

.method public abstract getDouble(I)D
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 532
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    return-object v0
.end method

.method public abstract getFloat(I)F
.end method

.method public abstract getInt(I)I
.end method

.method public abstract getLong(I)J
.end method

.method public final getPosition()I
    .locals 1

    .prologue
    .line 168
    iget v0, p0, Linfo/guardianproject/database/AbstractCursor;->mPos:I

    return v0
.end method

.method public abstract getShort(I)S
.end method

.method public abstract getString(I)Ljava/lang/String;
.end method

.method protected getUpdatedField(I)Ljava/lang/Object;
    .locals 2
    .parameter

    .prologue
    .line 568
    iget-object v0, p0, Linfo/guardianproject/database/AbstractCursor;->mUpdatedRows:Ljava/util/HashMap;

    iget-object v1, p0, Linfo/guardianproject/database/AbstractCursor;->mCurrentRowID:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 569
    invoke-virtual {p0}, Linfo/guardianproject/database/AbstractCursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getWantsAllOnMoveCalls()Z
    .locals 1

    .prologue
    .line 528
    const/4 v0, 0x0

    return v0
.end method

.method public getWindow()Landroid/database/CursorWindow;
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasUpdates()Z
    .locals 2

    .prologue
    .line 425
    iget-object v1, p0, Linfo/guardianproject/database/AbstractCursor;->mUpdatedRows:Ljava/util/HashMap;

    monitor-enter v1

    .line 426
    :try_start_0
    iget-object v0, p0, Linfo/guardianproject/database/AbstractCursor;->mUpdatedRows:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 425
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final isAfterLast()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 282
    invoke-virtual {p0}, Linfo/guardianproject/database/AbstractCursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 285
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Linfo/guardianproject/database/AbstractCursor;->mPos:I

    invoke-virtual {p0}, Linfo/guardianproject/database/AbstractCursor;->getCount()I

    move-result v2

    if-eq v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isBeforeFirst()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 275
    invoke-virtual {p0}, Linfo/guardianproject/database/AbstractCursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 278
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Linfo/guardianproject/database/AbstractCursor;->mPos:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 104
    iget-boolean v0, p0, Linfo/guardianproject/database/AbstractCursor;->mClosed:Z

    return v0
.end method

.method protected isFieldUpdated(I)Z
    .locals 2
    .parameter

    .prologue
    .line 550
    iget v0, p0, Linfo/guardianproject/database/AbstractCursor;->mRowIdColumnIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Linfo/guardianproject/database/AbstractCursor;->mUpdatedRows:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 551
    iget-object v0, p0, Linfo/guardianproject/database/AbstractCursor;->mUpdatedRows:Ljava/util/HashMap;

    iget-object v1, p0, Linfo/guardianproject/database/AbstractCursor;->mCurrentRowID:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 552
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Linfo/guardianproject/database/AbstractCursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 553
    const/4 v0, 0x1

    .line 556
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isFirst()Z
    .locals 1

    .prologue
    .line 266
    iget v0, p0, Linfo/guardianproject/database/AbstractCursor;->mPos:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Linfo/guardianproject/database/AbstractCursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isLast()Z
    .locals 3

    .prologue
    .line 270
    invoke-virtual {p0}, Linfo/guardianproject/database/AbstractCursor;->getCount()I

    move-result v0

    .line 271
    iget v1, p0, Linfo/guardianproject/database/AbstractCursor;->mPos:I

    add-int/lit8 v2, v0, -0x1

    if-ne v1, v2, :cond_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract isNull(I)Z
.end method

.method public final move(I)Z
    .locals 1
    .parameter

    .prologue
    .line 246
    iget v0, p0, Linfo/guardianproject/database/AbstractCursor;->mPos:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Linfo/guardianproject/database/AbstractCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public final moveToFirst()Z
    .locals 1

    .prologue
    .line 250
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Linfo/guardianproject/database/AbstractCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public final moveToLast()Z
    .locals 1

    .prologue
    .line 254
    invoke-virtual {p0}, Linfo/guardianproject/database/AbstractCursor;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Linfo/guardianproject/database/AbstractCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public final moveToNext()Z
    .locals 1

    .prologue
    .line 258
    iget v0, p0, Linfo/guardianproject/database/AbstractCursor;->mPos:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Linfo/guardianproject/database/AbstractCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public final moveToPosition(I)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v2, -0x1

    .line 173
    invoke-virtual {p0}, Linfo/guardianproject/database/AbstractCursor;->getCount()I

    move-result v1

    .line 174
    if-lt p1, v1, :cond_1

    .line 175
    iput v1, p0, Linfo/guardianproject/database/AbstractCursor;->mPos:I

    .line 200
    :cond_0
    :goto_0
    return v0

    .line 180
    :cond_1
    if-gez p1, :cond_2

    .line 181
    iput v2, p0, Linfo/guardianproject/database/AbstractCursor;->mPos:I

    goto :goto_0

    .line 186
    :cond_2
    iget v0, p0, Linfo/guardianproject/database/AbstractCursor;->mPos:I

    if-ne p1, v0, :cond_3

    .line 187
    const/4 v0, 0x1

    goto :goto_0

    .line 190
    :cond_3
    iget v0, p0, Linfo/guardianproject/database/AbstractCursor;->mPos:I

    invoke-virtual {p0, v0, p1}, Linfo/guardianproject/database/AbstractCursor;->onMove(II)Z

    move-result v0

    .line 191
    if-nez v0, :cond_4

    .line 192
    iput v2, p0, Linfo/guardianproject/database/AbstractCursor;->mPos:I

    goto :goto_0

    .line 194
    :cond_4
    iput p1, p0, Linfo/guardianproject/database/AbstractCursor;->mPos:I

    .line 195
    iget v1, p0, Linfo/guardianproject/database/AbstractCursor;->mRowIdColumnIndex:I

    if-eq v1, v2, :cond_0

    .line 196
    iget v1, p0, Linfo/guardianproject/database/AbstractCursor;->mRowIdColumnIndex:I

    invoke-virtual {p0, v1}, Linfo/guardianproject/database/AbstractCursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Linfo/guardianproject/database/AbstractCursor;->mCurrentRowID:Ljava/lang/Long;

    goto :goto_0
.end method

.method public final moveToPrevious()Z
    .locals 1

    .prologue
    .line 262
    iget v0, p0, Linfo/guardianproject/database/AbstractCursor;->mPos:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Linfo/guardianproject/database/AbstractCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method protected notifyDataSetChange()V
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Linfo/guardianproject/database/AbstractCursor;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 473
    return-void
.end method

.method protected onChange(Z)V
    .locals 4
    .parameter

    .prologue
    .line 499
    iget-object v1, p0, Linfo/guardianproject/database/AbstractCursor;->mSelfObserverLock:Ljava/lang/Object;

    monitor-enter v1

    .line 500
    :try_start_0
    iget-object v0, p0, Linfo/guardianproject/database/AbstractCursor;->mContentObservable:Landroid/database/ContentObservable;

    invoke-virtual {v0, p1}, Landroid/database/ContentObservable;->dispatchChange(Z)V

    .line 501
    iget-object v0, p0, Linfo/guardianproject/database/AbstractCursor;->mNotifyUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 502
    iget-object v0, p0, Linfo/guardianproject/database/AbstractCursor;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Linfo/guardianproject/database/AbstractCursor;->mNotifyUri:Landroid/net/Uri;

    iget-object v3, p0, Linfo/guardianproject/database/AbstractCursor;->mSelfObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 499
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onMove(II)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 140
    const/4 v0, 0x1

    return v0
.end method

.method public registerContentObserver(Landroid/database/ContentObserver;)V
    .locals 1
    .parameter

    .prologue
    .line 457
    iget-object v0, p0, Linfo/guardianproject/database/AbstractCursor;->mContentObservable:Landroid/database/ContentObservable;

    invoke-virtual {v0, p1}, Landroid/database/ContentObservable;->registerObserver(Landroid/database/ContentObserver;)V

    .line 458
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter

    .prologue
    .line 484
    iget-object v0, p0, Linfo/guardianproject/database/AbstractCursor;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    .line 486
    return-void
.end method

.method public requery()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 94
    iget-object v0, p0, Linfo/guardianproject/database/AbstractCursor;->mSelfObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Linfo/guardianproject/database/AbstractCursor;->mSelfObserverRegistered:Z

    if-nez v0, :cond_0

    .line 96
    iget-object v0, p0, Linfo/guardianproject/database/AbstractCursor;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Linfo/guardianproject/database/AbstractCursor;->mNotifyUri:Landroid/net/Uri;

    iget-object v2, p0, Linfo/guardianproject/database/AbstractCursor;->mSelfObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 97
    iput-boolean v3, p0, Linfo/guardianproject/database/AbstractCursor;->mSelfObserverRegistered:Z

    .line 99
    :cond_0
    iget-object v0, p0, Linfo/guardianproject/database/AbstractCursor;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 100
    return v3
.end method

.method public respond(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .parameter

    .prologue
    .line 536
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    return-object v0
.end method

.method public setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 515
    iget-object v1, p0, Linfo/guardianproject/database/AbstractCursor;->mSelfObserverLock:Ljava/lang/Object;

    monitor-enter v1

    .line 516
    :try_start_0
    iput-object p2, p0, Linfo/guardianproject/database/AbstractCursor;->mNotifyUri:Landroid/net/Uri;

    .line 517
    iput-object p1, p0, Linfo/guardianproject/database/AbstractCursor;->mContentResolver:Landroid/content/ContentResolver;

    .line 518
    iget-object v0, p0, Linfo/guardianproject/database/AbstractCursor;->mSelfObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 519
    iget-object v0, p0, Linfo/guardianproject/database/AbstractCursor;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Linfo/guardianproject/database/AbstractCursor;->mSelfObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 521
    :cond_0
    new-instance v0, Linfo/guardianproject/database/AbstractCursor$SelfContentObserver;

    invoke-direct {v0, p0}, Linfo/guardianproject/database/AbstractCursor$SelfContentObserver;-><init>(Linfo/guardianproject/database/AbstractCursor;)V

    iput-object v0, p0, Linfo/guardianproject/database/AbstractCursor;->mSelfObserver:Landroid/database/ContentObserver;

    .line 522
    iget-object v0, p0, Linfo/guardianproject/database/AbstractCursor;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Linfo/guardianproject/database/AbstractCursor;->mNotifyUri:Landroid/net/Uri;

    const/4 v3, 0x1

    iget-object v4, p0, Linfo/guardianproject/database/AbstractCursor;->mSelfObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 523
    const/4 v0, 0x1

    iput-boolean v0, p0, Linfo/guardianproject/database/AbstractCursor;->mSelfObserverRegistered:Z

    .line 515
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public supportsUpdates()Z
    .locals 2

    .prologue
    .line 453
    iget v0, p0, Linfo/guardianproject/database/AbstractCursor;->mRowIdColumnIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public unregisterContentObserver(Landroid/database/ContentObserver;)V
    .locals 1
    .parameter

    .prologue
    .line 462
    iget-boolean v0, p0, Linfo/guardianproject/database/AbstractCursor;->mClosed:Z

    if-nez v0, :cond_0

    .line 463
    iget-object v0, p0, Linfo/guardianproject/database/AbstractCursor;->mContentObservable:Landroid/database/ContentObservable;

    invoke-virtual {v0, p1}, Landroid/database/ContentObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 465
    :cond_0
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter

    .prologue
    .line 489
    iget-object v0, p0, Linfo/guardianproject/database/AbstractCursor;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 490
    return-void
.end method

.method public update(ILjava/lang/Object;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 394
    invoke-virtual {p0}, Linfo/guardianproject/database/AbstractCursor;->supportsUpdates()Z

    move-result v0

    if-nez v0, :cond_0

    .line 395
    const/4 v0, 0x0

    .line 414
    :goto_0
    return v0

    .line 400
    :cond_0
    new-instance v1, Ljava/lang/Long;

    iget v0, p0, Linfo/guardianproject/database/AbstractCursor;->mRowIdColumnIndex:I

    invoke-virtual {p0, v0}, Linfo/guardianproject/database/AbstractCursor;->getLong(I)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    .line 401
    iget-object v2, p0, Linfo/guardianproject/database/AbstractCursor;->mUpdatedRows:Ljava/util/HashMap;

    monitor-enter v2

    .line 406
    :try_start_0
    iget-object v0, p0, Linfo/guardianproject/database/AbstractCursor;->mUpdatedRows:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 407
    if-nez v0, :cond_1

    .line 408
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 409
    iget-object v3, p0, Linfo/guardianproject/database/AbstractCursor;->mUpdatedRows:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    :cond_1
    invoke-virtual {p0}, Linfo/guardianproject/database/AbstractCursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 414
    const/4 v0, 0x1

    goto :goto_0

    .line 405
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public updateBlob(I[B)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 330
    invoke-virtual {p0, p1, p2}, Linfo/guardianproject/database/AbstractCursor;->update(ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public updateDouble(ID)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 378
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Linfo/guardianproject/database/AbstractCursor;->update(ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public updateFloat(IF)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 370
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Linfo/guardianproject/database/AbstractCursor;->update(ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public updateInt(II)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 354
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Linfo/guardianproject/database/AbstractCursor;->update(ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public updateLong(IJ)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 362
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Linfo/guardianproject/database/AbstractCursor;->update(ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public updateShort(IS)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 346
    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Linfo/guardianproject/database/AbstractCursor;->update(ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public updateString(ILjava/lang/String;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 338
    invoke-virtual {p0, p1, p2}, Linfo/guardianproject/database/AbstractCursor;->update(ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public updateToNull(I)Z
    .locals 1
    .parameter

    .prologue
    .line 386
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Linfo/guardianproject/database/AbstractCursor;->update(ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method
