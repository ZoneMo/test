.class public abstract Linfo/guardianproject/database/CursorAdapter;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"

# interfaces
.implements Landroid/widget/Filterable;


# instance fields
.field protected mAutoRequery:Z

.field protected mChangeObserver:Linfo/guardianproject/database/CursorAdapter$ChangeObserver;

.field protected mContext:Landroid/content/Context;

.field protected mCursor:Landroid/database/Cursor;

.field protected mDataSetObserver:Landroid/database/DataSetObserver;

.field protected mDataValid:Z

.field protected mFilterQueryProvider:Landroid/widget/FilterQueryProvider;

.field protected mRowIDColumn:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 71
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 56
    new-instance v0, Linfo/guardianproject/database/CursorAdapter$MyDataSetObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Linfo/guardianproject/database/CursorAdapter$MyDataSetObserver;-><init>(Linfo/guardianproject/database/CursorAdapter;Linfo/guardianproject/database/CursorAdapter$MyDataSetObserver;)V

    iput-object v0, p0, Linfo/guardianproject/database/CursorAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 72
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Linfo/guardianproject/database/CursorAdapter;->init(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 83
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 56
    new-instance v0, Linfo/guardianproject/database/CursorAdapter$MyDataSetObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Linfo/guardianproject/database/CursorAdapter$MyDataSetObserver;-><init>(Linfo/guardianproject/database/CursorAdapter;Linfo/guardianproject/database/CursorAdapter$MyDataSetObserver;)V

    iput-object v0, p0, Linfo/guardianproject/database/CursorAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 84
    invoke-virtual {p0, p1, p2, p3}, Linfo/guardianproject/database/CursorAdapter;->init(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 85
    return-void
.end method


# virtual methods
.method public abstract bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 2
    .parameter

    .prologue
    .line 227
    iget-object v0, p0, Linfo/guardianproject/database/CursorAdapter;->mCursor:Landroid/database/Cursor;

    if-ne p1, v0, :cond_0

    .line 249
    :goto_0
    return-void

    .line 230
    :cond_0
    iget-object v0, p0, Linfo/guardianproject/database/CursorAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 231
    iget-object v0, p0, Linfo/guardianproject/database/CursorAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Linfo/guardianproject/database/CursorAdapter;->mChangeObserver:Linfo/guardianproject/database/CursorAdapter$ChangeObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 232
    iget-object v0, p0, Linfo/guardianproject/database/CursorAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Linfo/guardianproject/database/CursorAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 233
    iget-object v0, p0, Linfo/guardianproject/database/CursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 235
    :cond_1
    iput-object p1, p0, Linfo/guardianproject/database/CursorAdapter;->mCursor:Landroid/database/Cursor;

    .line 236
    if-eqz p1, :cond_2

    .line 237
    iget-object v0, p0, Linfo/guardianproject/database/CursorAdapter;->mChangeObserver:Linfo/guardianproject/database/CursorAdapter$ChangeObserver;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 238
    iget-object v0, p0, Linfo/guardianproject/database/CursorAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 239
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Linfo/guardianproject/database/CursorAdapter;->mRowIDColumn:I

    .line 240
    const/4 v0, 0x1

    iput-boolean v0, p0, Linfo/guardianproject/database/CursorAdapter;->mDataValid:Z

    .line 242
    invoke-virtual {p0}, Linfo/guardianproject/database/CursorAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 244
    :cond_2
    const/4 v0, -0x1

    iput v0, p0, Linfo/guardianproject/database/CursorAdapter;->mRowIDColumn:I

    .line 245
    const/4 v0, 0x0

    iput-boolean v0, p0, Linfo/guardianproject/database/CursorAdapter;->mDataValid:Z

    .line 247
    invoke-virtual {p0}, Linfo/guardianproject/database/CursorAdapter;->notifyDataSetInvalidated()V

    goto :goto_0
.end method

.method public convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .locals 1
    .parameter

    .prologue
    .line 261
    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 113
    iget-boolean v0, p0, Linfo/guardianproject/database/CursorAdapter;->mDataValid:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Linfo/guardianproject/database/CursorAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Linfo/guardianproject/database/CursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 116
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Linfo/guardianproject/database/CursorAdapter;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 174
    iget-boolean v0, p0, Linfo/guardianproject/database/CursorAdapter;->mDataValid:Z

    if-eqz v0, :cond_1

    .line 175
    iget-object v0, p0, Linfo/guardianproject/database/CursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 177
    if-nez p2, :cond_0

    .line 178
    iget-object v0, p0, Linfo/guardianproject/database/CursorAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Linfo/guardianproject/database/CursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0, v1, p3}, Linfo/guardianproject/database/CursorAdapter;->newDropDownView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 182
    :cond_0
    iget-object v0, p0, Linfo/guardianproject/database/CursorAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Linfo/guardianproject/database/CursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, p2, v0, v1}, Linfo/guardianproject/database/CursorAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 185
    :goto_0
    return-object p2

    :cond_1
    const/4 p2, 0x0

    goto :goto_0
.end method

.method public getFilterQueryProvider()Landroid/widget/FilterQueryProvider;
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Linfo/guardianproject/database/CursorAdapter;->mFilterQueryProvider:Landroid/widget/FilterQueryProvider;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 124
    iget-boolean v0, p0, Linfo/guardianproject/database/CursorAdapter;->mDataValid:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Linfo/guardianproject/database/CursorAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Linfo/guardianproject/database/CursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 126
    iget-object v0, p0, Linfo/guardianproject/database/CursorAdapter;->mCursor:Landroid/database/Cursor;

    .line 128
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 3
    .parameter

    .prologue
    const-wide/16 v0, 0x0

    .line 136
    iget-boolean v2, p0, Linfo/guardianproject/database/CursorAdapter;->mDataValid:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Linfo/guardianproject/database/CursorAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_0

    .line 137
    iget-object v2, p0, Linfo/guardianproject/database/CursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 138
    iget-object v0, p0, Linfo/guardianproject/database/CursorAdapter;->mCursor:Landroid/database/Cursor;

    iget v1, p0, Linfo/guardianproject/database/CursorAdapter;->mRowIDColumn:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 143
    :cond_0
    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 156
    iget-boolean v0, p0, Linfo/guardianproject/database/CursorAdapter;->mDataValid:Z

    if-nez v0, :cond_0

    .line 157
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "this should only be called when the cursor is valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :cond_0
    iget-object v0, p0, Linfo/guardianproject/database/CursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 160
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "couldn\'t move cursor to position "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :cond_1
    if-nez p2, :cond_2

    .line 164
    iget-object v0, p0, Linfo/guardianproject/database/CursorAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Linfo/guardianproject/database/CursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0, v1, p3}, Linfo/guardianproject/database/CursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 168
    :cond_2
    iget-object v0, p0, Linfo/guardianproject/database/CursorAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Linfo/guardianproject/database/CursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, p2, v0, v1}, Linfo/guardianproject/database/CursorAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 169
    return-object p2
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x1

    return v0
.end method

.method protected init(Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 88
    if-eqz p2, :cond_1

    const/4 v0, 0x1

    .line 89
    :goto_0
    iput-boolean p3, p0, Linfo/guardianproject/database/CursorAdapter;->mAutoRequery:Z

    .line 90
    iput-object p2, p0, Linfo/guardianproject/database/CursorAdapter;->mCursor:Landroid/database/Cursor;

    .line 91
    iput-boolean v0, p0, Linfo/guardianproject/database/CursorAdapter;->mDataValid:Z

    .line 92
    iput-object p1, p0, Linfo/guardianproject/database/CursorAdapter;->mContext:Landroid/content/Context;

    .line 93
    if-eqz v0, :cond_2

    const-string v1, "_id"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    :goto_1
    iput v1, p0, Linfo/guardianproject/database/CursorAdapter;->mRowIDColumn:I

    .line 94
    new-instance v1, Linfo/guardianproject/database/CursorAdapter$ChangeObserver;

    invoke-direct {v1, p0}, Linfo/guardianproject/database/CursorAdapter$ChangeObserver;-><init>(Linfo/guardianproject/database/CursorAdapter;)V

    iput-object v1, p0, Linfo/guardianproject/database/CursorAdapter;->mChangeObserver:Linfo/guardianproject/database/CursorAdapter$ChangeObserver;

    .line 95
    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Linfo/guardianproject/database/CursorAdapter;->mChangeObserver:Linfo/guardianproject/database/CursorAdapter$ChangeObserver;

    invoke-interface {p2, v0}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 97
    iget-object v0, p0, Linfo/guardianproject/database/CursorAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {p2, v0}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 99
    :cond_0
    return-void

    .line 88
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 93
    :cond_2
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public newDropDownView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 208
    invoke-virtual {p0, p1, p2, p3}, Linfo/guardianproject/database/CursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public abstract newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method protected onContentChanged()V
    .locals 1

    .prologue
    .line 336
    iget-boolean v0, p0, Linfo/guardianproject/database/CursorAdapter;->mAutoRequery:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Linfo/guardianproject/database/CursorAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Linfo/guardianproject/database/CursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 338
    iget-object v0, p0, Linfo/guardianproject/database/CursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    move-result v0

    iput-boolean v0, p0, Linfo/guardianproject/database/CursorAdapter;->mDataValid:Z

    .line 340
    :cond_0
    return-void
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 1
    .parameter

    .prologue
    .line 290
    iget-object v0, p0, Linfo/guardianproject/database/CursorAdapter;->mFilterQueryProvider:Landroid/widget/FilterQueryProvider;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Linfo/guardianproject/database/CursorAdapter;->mFilterQueryProvider:Landroid/widget/FilterQueryProvider;

    invoke-interface {v0, p1}, Landroid/widget/FilterQueryProvider;->runQuery(Ljava/lang/CharSequence;)Landroid/database/Cursor;

    move-result-object v0

    .line 294
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Linfo/guardianproject/database/CursorAdapter;->mCursor:Landroid/database/Cursor;

    goto :goto_0
.end method

.method public setFilterQueryProvider(Landroid/widget/FilterQueryProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 325
    iput-object p1, p0, Linfo/guardianproject/database/CursorAdapter;->mFilterQueryProvider:Landroid/widget/FilterQueryProvider;

    .line 326
    return-void
.end method
