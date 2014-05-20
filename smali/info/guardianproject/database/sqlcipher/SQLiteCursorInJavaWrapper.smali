.class public abstract Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJavaWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field cursor:Linfo/guardianproject/database/IHeapCursor;


# direct methods
.method public constructor <init>(Linfo/guardianproject/database/IHeapCursor;)V
    .locals 1
    .parameter

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJavaWrapper;-><init>(Linfo/guardianproject/database/IHeapCursor;I)V

    .line 46
    return-void
.end method

.method public constructor <init>(Linfo/guardianproject/database/IHeapCursor;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJavaWrapper;->cursor:Linfo/guardianproject/database/IHeapCursor;

    .line 23
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJavaWrapper;->cursor:Linfo/guardianproject/database/IHeapCursor;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Linfo/guardianproject/database/IHeapCursor;->setAutoBuildData(Z)V

    .line 24
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJavaWrapper;->cursor:Linfo/guardianproject/database/IHeapCursor;

    new-instance v1, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJavaWrapper$1;

    invoke-direct {v1, p0}, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJavaWrapper$1;-><init>(Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJavaWrapper;)V

    invoke-interface {v0, v1}, Linfo/guardianproject/database/IHeapCursor;->setDataCreator(Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava$ICursorDataItemCreator;)V

    .line 37
    if-eqz p2, :cond_0

    .line 38
    invoke-virtual {p0, p2}, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJavaWrapper;->setPageSize(I)V

    .line 40
    :cond_0
    invoke-virtual {p0}, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJavaWrapper;->getCount()I

    .line 41
    return-void
.end method


# virtual methods
.method public checkIsCacheUseful(I)Z
    .locals 1
    .parameter

    .prologue
    .line 115
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJavaWrapper;->cursor:Linfo/guardianproject/database/IHeapCursor;

    invoke-interface {v0, p1}, Linfo/guardianproject/database/IHeapCursor;->checkIsCacheUseful(I)Z

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJavaWrapper;->cursor:Linfo/guardianproject/database/IHeapCursor;

    invoke-interface {v0}, Linfo/guardianproject/database/IHeapCursor;->close()V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJavaWrapper;->cursor:Linfo/guardianproject/database/IHeapCursor;

    .line 58
    return-void
.end method

.method public containKey(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 119
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJavaWrapper;->cursor:Linfo/guardianproject/database/IHeapCursor;

    invoke-interface {v0, p1}, Linfo/guardianproject/database/IHeapCursor;->containKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public abstract createCursorItem()Linfo/guardianproject/database/CursorDataItem;
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJavaWrapper;->cursor:Linfo/guardianproject/database/IHeapCursor;

    invoke-interface {v0}, Linfo/guardianproject/database/IHeapCursor;->getCount()I

    move-result v0

    return v0
.end method

.method public getInnerCursor()Linfo/guardianproject/database/IHeapCursor;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJavaWrapper;->cursor:Linfo/guardianproject/database/IHeapCursor;

    return-object v0
.end method

.method public getItem(I)Linfo/guardianproject/database/CursorDataItem;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJavaWrapper;->cursor:Linfo/guardianproject/database/IHeapCursor;

    invoke-interface {v0, p1}, Linfo/guardianproject/database/IHeapCursor;->getItem(I)Linfo/guardianproject/database/CursorDataItem;

    move-result-object v0

    return-object v0
.end method

.method public getItemByKey(Ljava/lang/Object;)Linfo/guardianproject/database/CursorDataItem;
    .locals 1
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJavaWrapper;->cursor:Linfo/guardianproject/database/IHeapCursor;

    invoke-interface {v0, p1}, Linfo/guardianproject/database/IHeapCursor;->getItemByKey(Ljava/lang/Object;)Linfo/guardianproject/database/CursorDataItem;

    move-result-object v0

    return-object v0
.end method

.method public getPosistionMaps()[Landroid/util/SparseArray;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJavaWrapper;->cursor:Linfo/guardianproject/database/IHeapCursor;

    invoke-interface {v0}, Linfo/guardianproject/database/IHeapCursor;->getPosistionMaps()[Landroid/util/SparseArray;

    move-result-object v0

    return-object v0
.end method

.method public hasLoadAllData()Z
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJavaWrapper;->cursor:Linfo/guardianproject/database/IHeapCursor;

    invoke-interface {v0}, Linfo/guardianproject/database/IHeapCursor;->hasLoadAllData()Z

    move-result v0

    return v0
.end method

.method public isCacheUseful()Z
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJavaWrapper;->cursor:Linfo/guardianproject/database/IHeapCursor;

    invoke-interface {v0}, Linfo/guardianproject/database/IHeapCursor;->isCacheUseful()Z

    move-result v0

    return v0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJavaWrapper;->cursor:Linfo/guardianproject/database/IHeapCursor;

    invoke-interface {v0}, Linfo/guardianproject/database/IHeapCursor;->isClosed()Z

    move-result v0

    return v0
.end method

.method public moveToPosition(I)V
    .locals 1
    .parameter

    .prologue
    .line 95
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJavaWrapper;->cursor:Linfo/guardianproject/database/IHeapCursor;

    invoke-interface {v0, p1}, Linfo/guardianproject/database/IHeapCursor;->moveToPosition(I)Z

    .line 96
    return-void
.end method

.method public notifyChange(Ljava/lang/Object;Linfo/guardianproject/database/CursorDataItem;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 103
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJavaWrapper;->cursor:Linfo/guardianproject/database/IHeapCursor;

    invoke-interface {v0, p1, p2}, Linfo/guardianproject/database/IHeapCursor;->notifyChange(Ljava/lang/Object;Linfo/guardianproject/database/CursorDataItem;)Z

    .line 104
    return-void
.end method

.method public putValue(ILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJavaWrapper;->cursor:Linfo/guardianproject/database/IHeapCursor;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJavaWrapper;->cursor:Linfo/guardianproject/database/IHeapCursor;

    invoke-interface {v0, p1, p2}, Linfo/guardianproject/database/IHeapCursor;->putValue(ILjava/lang/Object;)V

    .line 52
    :cond_0
    return-void
.end method

.method public abstract rebulidAllChangeData(Ljava/util/ArrayList;)Ljava/util/ArrayList;
.end method

.method public setPageSize(I)V
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJavaWrapper;->cursor:Linfo/guardianproject/database/IHeapCursor;

    invoke-interface {v0, p1}, Linfo/guardianproject/database/IHeapCursor;->setPageSize(I)V

    .line 80
    return-void
.end method
