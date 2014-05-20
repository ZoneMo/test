.class public interface abstract Linfo/guardianproject/database/IHeapCursor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/database/Cursor;


# virtual methods
.method public abstract checkIsCacheUseful(I)Z
.end method

.method public abstract containKey(Ljava/lang/Object;)Z
.end method

.method public abstract getItem(I)Linfo/guardianproject/database/CursorDataItem;
.end method

.method public abstract getItemByKey(Ljava/lang/Object;)Linfo/guardianproject/database/CursorDataItem;
.end method

.method public abstract getPosistionMaps()[Landroid/util/SparseArray;
.end method

.method public abstract hasLoadAllData()Z
.end method

.method public abstract isCacheUseful()Z
.end method

.method public abstract notifyChange(Ljava/lang/Object;Linfo/guardianproject/database/CursorDataItem;)Z
.end method

.method public abstract putValue(ILjava/lang/Object;)V
.end method

.method public abstract setAutoBuildData(Z)V
.end method

.method public abstract setDataCreator(Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava$ICursorDataItemCreator;)V
.end method

.method public abstract setPageSize(I)V
.end method
