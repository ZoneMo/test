.class public Linfo/guardianproject/database/sqlcipher/SQLiteQueryInJava;
.super Linfo/guardianproject/database/sqlcipher/SQLiteProgram;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "Cursor"


# instance fields
.field curDb:Linfo/guardianproject/database/HeapCursor;

.field private mBindArgs:[Ljava/lang/String;

.field private mClosed:Z

.field private mOffsetIndex:I

.field rb:Linfo/guardianproject/database/HeapCursor$RowBuilder;

.field window:Linfo/guardianproject/database/CursorDataWindow;

.field public windowAllocatedSize:I


# direct methods
.method constructor <init>(Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Linfo/guardianproject/database/sqlcipher/SQLiteProgram;-><init>(Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;Ljava/lang/String;)V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteQueryInJava;->mClosed:Z

    .line 34
    iput p3, p0, Linfo/guardianproject/database/sqlcipher/SQLiteQueryInJava;->mOffsetIndex:I

    .line 35
    iput-object p4, p0, Linfo/guardianproject/database/sqlcipher/SQLiteQueryInJava;->mBindArgs:[Ljava/lang/String;

    .line 36
    return-void
.end method

.method private final native native_column_count()I
.end method

.method private final native native_column_name(I)Ljava/lang/String;
.end method

.method private final native native_fill_window(II)I
.end method


# virtual methods
.method public allDataEnd(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 167
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteQueryInJava;->window:Linfo/guardianproject/database/CursorDataWindow;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteQueryInJava;->window:Linfo/guardianproject/database/CursorDataWindow;

    invoke-virtual {v0, p1}, Linfo/guardianproject/database/CursorDataWindow;->fillEnd(I)V

    .line 170
    iget v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteQueryInJava;->windowAllocatedSize:I

    add-int/2addr v0, p2

    iput v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteQueryInJava;->windowAllocatedSize:I

    .line 178
    :goto_0
    return-void

    .line 174
    :cond_0
    iput-object v1, p0, Linfo/guardianproject/database/sqlcipher/SQLiteQueryInJava;->curDb:Linfo/guardianproject/database/HeapCursor;

    .line 175
    iput-object v1, p0, Linfo/guardianproject/database/sqlcipher/SQLiteQueryInJava;->rb:Linfo/guardianproject/database/HeapCursor$RowBuilder;

    .line 176
    iput-object v1, p0, Linfo/guardianproject/database/sqlcipher/SQLiteQueryInJava;->window:Linfo/guardianproject/database/CursorDataWindow;

    goto :goto_0
.end method

.method public bindDouble(ID)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 268
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteQueryInJava;->mBindArgs:[Ljava/lang/String;

    add-int/lit8 v1, p1, -0x1

    invoke-static {p2, p3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 269
    iget-boolean v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteQueryInJava;->mClosed:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Linfo/guardianproject/database/sqlcipher/SQLiteProgram;->bindDouble(ID)V

    .line 270
    :cond_0
    return-void
.end method

.method public bindLong(IJ)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 262
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteQueryInJava;->mBindArgs:[Ljava/lang/String;

    add-int/lit8 v1, p1, -0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 263
    iget-boolean v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteQueryInJava;->mClosed:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Linfo/guardianproject/database/sqlcipher/SQLiteProgram;->bindLong(IJ)V

    .line 264
    :cond_0
    return-void
.end method

.method public bindNull(I)V
    .locals 3
    .parameter

    .prologue
    .line 256
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteQueryInJava;->mBindArgs:[Ljava/lang/String;

    add-int/lit8 v1, p1, -0x1

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 257
    iget-boolean v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteQueryInJava;->mClosed:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Linfo/guardianproject/database/sqlcipher/SQLiteProgram;->bindNull(I)V

    .line 258
    :cond_0
    return-void
.end method

.method public bindString(ILjava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 274
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteQueryInJava;->mBindArgs:[Ljava/lang/String;

    add-int/lit8 v1, p1, -0x1

    aput-object p2, v0, v1

    .line 275
    iget-boolean v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteQueryInJava;->mClosed:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Linfo/guardianproject/database/sqlcipher/SQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 276
    :cond_0
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 226
    invoke-super {p0}, Linfo/guardianproject/database/sqlcipher/SQLiteProgram;->close()V

    .line 227
    const/4 v0, 0x1

    iput-boolean v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteQueryInJava;->mClosed:Z

    .line 228
    return-void
.end method

.method columnCountLocked()I
    .locals 1

    .prologue
    .line 195
    invoke-virtual {p0}, Linfo/guardianproject/database/sqlcipher/SQLiteQueryInJava;->acquireReference()V

    .line 197
    :try_start_0
    invoke-direct {p0}, Linfo/guardianproject/database/sqlcipher/SQLiteQueryInJava;->native_column_count()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 199
    invoke-virtual {p0}, Linfo/guardianproject/database/sqlcipher/SQLiteQueryInJava;->releaseReference()V

    .line 197
    return v0

    .line 198
    :catchall_0
    move-exception v0

    .line 199
    invoke-virtual {p0}, Linfo/guardianproject/database/sqlcipher/SQLiteQueryInJava;->releaseReference()V

    .line 200
    throw v0
.end method

.method columnNameLocked(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 211
    invoke-virtual {p0}, Linfo/guardianproject/database/sqlcipher/SQLiteQueryInJava;->acquireReference()V

    .line 213
    :try_start_0
    invoke-direct {p0, p1}, Linfo/guardianproject/database/sqlcipher/SQLiteQueryInJava;->native_column_name(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 215
    invoke-virtual {p0}, Linfo/guardianproject/database/sqlcipher/SQLiteQueryInJava;->releaseReference()V

    .line 213
    return-object v0

    .line 214
    :catchall_0
    move-exception v0

    .line 215
    invoke-virtual {p0}, Linfo/guardianproject/database/sqlcipher/SQLiteQueryInJava;->releaseReference()V

    .line 216
    throw v0
.end method

.method public fillRowBlob(I[B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 125
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteQueryInJava;->window:Linfo/guardianproject/database/CursorDataWindow;

    if-eqz v0, :cond_1

    .line 126
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteQueryInJava;->window:Linfo/guardianproject/database/CursorDataWindow;

    invoke-virtual {v0, p1, p2}, Linfo/guardianproject/database/CursorDataWindow;->fillColumnBlob(I[B)V

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteQueryInJava;->rb:Linfo/guardianproject/database/HeapCursor$RowBuilder;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteQueryInJava;->rb:Linfo/guardianproject/database/HeapCursor$RowBuilder;

    invoke-virtual {v0, p2}, Linfo/guardianproject/database/HeapCursor$RowBuilder;->add(Ljava/lang/Object;)Linfo/guardianproject/database/HeapCursor$RowBuilder;

    goto :goto_0
.end method

.method public fillRowDouble(ID)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 116
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteQueryInJava;->window:Linfo/guardianproject/database/CursorDataWindow;

    if-eqz v0, :cond_1

    .line 117
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteQueryInJava;->window:Linfo/guardianproject/database/CursorDataWindow;

    invoke-virtual {v0, p1, p2, p3}, Linfo/guardianproject/database/CursorDataWindow;->fillColumnDouble(ID)V

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteQueryInJava;->rb:Linfo/guardianproject/database/HeapCursor$RowBuilder;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteQueryInJava;->rb:Linfo/guardianproject/database/HeapCursor$RowBuilder;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Linfo/guardianproject/database/HeapCursor$RowBuilder;->add(Ljava/lang/Object;)Linfo/guardianproject/database/HeapCursor$RowBuilder;

    goto :goto_0
.end method

.method public fillRowEnd(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 162
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteQueryInJava;->window:Linfo/guardianproject/database/CursorDataWindow;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteQueryInJava;->window:Linfo/guardianproject/database/CursorDataWindow;

    invoke-virtual {v0, p1, p2}, Linfo/guardianproject/database/CursorDataWindow;->rowEnd(II)V

    .line 164
    :cond_0
    return-void
.end method

.method public fillRowFloat(IF)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 134
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteQueryInJava;->window:Linfo/guardianproject/database/CursorDataWindow;

    if-eqz v0, :cond_1

    .line 135
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteQueryInJava;->window:Linfo/guardianproject/database/CursorDataWindow;

    invoke-virtual {v0, p1, p2}, Linfo/guardianproject/database/CursorDataWindow;->fillColumnFloat(IF)V

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteQueryInJava;->rb:Linfo/guardianproject/database/HeapCursor$RowBuilder;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteQueryInJava;->rb:Linfo/guardianproject/database/HeapCursor$RowBuilder;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Linfo/guardianproject/database/HeapCursor$RowBuilder;->add(Ljava/lang/Object;)Linfo/guardianproject/database/HeapCursor$RowBuilder;

    goto :goto_0
.end method

.method public fillRowInt(IJ)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 100
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteQueryInJava;->window:Linfo/guardianproject/database/CursorDataWindow;

    if-eqz v0, :cond_1

    .line 101
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteQueryInJava;->window:Linfo/guardianproject/database/CursorDataWindow;

    invoke-virtual {v0, p1, p2, p3}, Linfo/guardianproject/database/CursorDataWindow;->fillColumnInt(IJ)V

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteQueryInJava;->rb:Linfo/guardianproject/database/HeapCursor$RowBuilder;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteQueryInJava;->rb:Linfo/guardianproject/database/HeapCursor$RowBuilder;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Linfo/guardianproject/database/HeapCursor$RowBuilder;->add(Ljava/lang/Object;)Linfo/guardianproject/database/HeapCursor$RowBuilder;

    goto :goto_0
.end method

.method public fillRowLong(IJ)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 108
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteQueryInJava;->window:Linfo/guardianproject/database/CursorDataWindow;

    if-eqz v0, :cond_1

    .line 109
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteQueryInJava;->window:Linfo/guardianproject/database/CursorDataWindow;

    invoke-virtual {v0, p1, p2, p3}, Linfo/guardianproject/database/CursorDataWindow;->fillColumnLong(IJ)V

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 110
    :cond_1
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteQueryInJava;->rb:Linfo/guardianproject/database/HeapCursor$RowBuilder;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteQueryInJava;->rb:Linfo/guardianproject/database/HeapCursor$RowBuilder;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Linfo/guardianproject/database/HeapCursor$RowBuilder;->add(Ljava/lang/Object;)Linfo/guardianproject/database/HeapCursor$RowBuilder;

    goto :goto_0
.end method

.method public fillRowNull(I)V
    .locals 2
    .parameter

    .prologue
    .line 143
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteQueryInJava;->window:Linfo/guardianproject/database/CursorDataWindow;

    if-eqz v0, :cond_1

    .line 144
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteQueryInJava;->window:Linfo/guardianproject/database/CursorDataWindow;

    invoke-virtual {v0, p1}, Linfo/guardianproject/database/CursorDataWindow;->fillColumnNull(I)V

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteQueryInJava;->rb:Linfo/guardianproject/database/HeapCursor$RowBuilder;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteQueryInJava;->rb:Linfo/guardianproject/database/HeapCursor$RowBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Linfo/guardianproject/database/HeapCursor$RowBuilder;->add(Ljava/lang/Object;)Linfo/guardianproject/database/HeapCursor$RowBuilder;

    goto :goto_0
.end method

.method public fillRowStart(I)V
    .locals 1
    .parameter

    .prologue
    .line 154
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteQueryInJava;->window:Linfo/guardianproject/database/CursorDataWindow;

    if-eqz v0, :cond_1

    .line 155
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteQueryInJava;->window:Linfo/guardianproject/database/CursorDataWindow;

    invoke-virtual {v0, p1}, Linfo/guardianproject/database/CursorDataWindow;->rowStart(I)V

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteQueryInJava;->curDb:Linfo/guardianproject/database/HeapCursor;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteQueryInJava;->curDb:Linfo/guardianproject/database/HeapCursor;

    invoke-virtual {v0, p1}, Linfo/guardianproject/database/HeapCursor;->newRow(I)Linfo/guardianproject/database/HeapCursor$RowBuilder;

    move-result-object v0

    iput-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteQueryInJava;->rb:Linfo/guardianproject/database/HeapCursor$RowBuilder;

    goto :goto_0
.end method

.method public fillRowString(ILjava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 92
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteQueryInJava;->window:Linfo/guardianproject/database/CursorDataWindow;

    if-eqz v0, :cond_1

    .line 93
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteQueryInJava;->window:Linfo/guardianproject/database/CursorDataWindow;

    invoke-virtual {v0, p1, p2}, Linfo/guardianproject/database/CursorDataWindow;->fillColumnString(ILjava/lang/String;)V

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteQueryInJava;->rb:Linfo/guardianproject/database/HeapCursor$RowBuilder;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteQueryInJava;->rb:Linfo/guardianproject/database/HeapCursor$RowBuilder;

    invoke-virtual {v0, p2}, Linfo/guardianproject/database/HeapCursor$RowBuilder;->add(Ljava/lang/Object;)Linfo/guardianproject/database/HeapCursor$RowBuilder;

    goto :goto_0
.end method

.method fillWindow(Linfo/guardianproject/database/CursorDataWindow;IILinfo/guardianproject/database/HeapCursor;)I
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 53
    iput-object p4, p0, Linfo/guardianproject/database/sqlcipher/SQLiteQueryInJava;->curDb:Linfo/guardianproject/database/HeapCursor;

    .line 54
    iput-object p1, p0, Linfo/guardianproject/database/sqlcipher/SQLiteQueryInJava;->window:Linfo/guardianproject/database/CursorDataWindow;

    .line 55
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 56
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteQueryInJava;->mDatabase:Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;

    invoke-virtual {v0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->lock()V

    .line 57
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteQueryInJava;->mDatabase:Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;

    iget-object v3, p0, Linfo/guardianproject/database/sqlcipher/SQLiteQueryInJava;->mSql:Ljava/lang/String;

    const-string v4, "GETLOCK:"

    invoke-virtual {v0, v3, v1, v2, v4}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->logTimeStat(Ljava/lang/String;JLjava/lang/String;)V

    .line 59
    :try_start_0
    invoke-virtual {p0}, Linfo/guardianproject/database/sqlcipher/SQLiteQueryInJava;->acquireReference()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 61
    if-eqz p1, :cond_0

    .line 62
    :try_start_1
    invoke-virtual {p1}, Linfo/guardianproject/database/CursorDataWindow;->acquireReference()V

    .line 66
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 67
    invoke-direct {p0, p2, p3}, Linfo/guardianproject/database/sqlcipher/SQLiteQueryInJava;->native_fill_window(II)I

    move-result v0

    .line 70
    sget-boolean v3, Linfo/guardianproject/database/sqlcipher/SQLiteDebug;->DEBUG_SQL_STATEMENTS:Z

    if-eqz v3, :cond_1

    .line 71
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "fillWindow(): "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Linfo/guardianproject/database/sqlcipher/SQLiteQueryInJava;->mSql:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    :cond_1
    iget-object v3, p0, Linfo/guardianproject/database/sqlcipher/SQLiteQueryInJava;->mDatabase:Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;

    iget-object v4, p0, Linfo/guardianproject/database/sqlcipher/SQLiteQueryInJava;->mSql:Ljava/lang/String;

    invoke-virtual {v3, v4, v1, v2}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->logTimeStat(Ljava/lang/String;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Linfo/guardianproject/database/sqlcipher/SQLiteDatabaseCorruptException; {:try_start_1 .. :try_end_1} :catch_1

    .line 74
    if-eqz p1, :cond_2

    .line 83
    :try_start_2
    invoke-virtual {p1}, Linfo/guardianproject/database/CursorDataWindow;->releaseReference()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 86
    :cond_2
    invoke-virtual {p0}, Linfo/guardianproject/database/sqlcipher/SQLiteQueryInJava;->releaseReference()V

    .line 87
    iget-object v1, p0, Linfo/guardianproject/database/sqlcipher/SQLiteQueryInJava;->mDatabase:Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;

    invoke-virtual {v1}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->unlock()V

    .line 77
    :goto_0
    return v0

    .line 82
    :catch_0
    move-exception v0

    if-eqz p1, :cond_3

    .line 83
    :try_start_3
    invoke-virtual {p1}, Linfo/guardianproject/database/CursorDataWindow;->releaseReference()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 86
    :cond_3
    invoke-virtual {p0}, Linfo/guardianproject/database/sqlcipher/SQLiteQueryInJava;->releaseReference()V

    .line 87
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteQueryInJava;->mDatabase:Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;

    invoke-virtual {v0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->unlock()V

    .line 77
    const/4 v0, 0x0

    goto :goto_0

    .line 78
    :catch_1
    move-exception v0

    .line 79
    :try_start_4
    iget-object v1, p0, Linfo/guardianproject/database/sqlcipher/SQLiteQueryInJava;->mDatabase:Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;

    invoke-virtual {v1}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->onCorruption()V

    .line 80
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 81
    :catchall_0
    move-exception v0

    .line 82
    if-eqz p1, :cond_4

    .line 83
    :try_start_5
    invoke-virtual {p1}, Linfo/guardianproject/database/CursorDataWindow;->releaseReference()V

    .line 84
    :cond_4
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 85
    :catchall_1
    move-exception v0

    .line 86
    invoke-virtual {p0}, Linfo/guardianproject/database/sqlcipher/SQLiteQueryInJava;->releaseReference()V

    .line 87
    iget-object v1, p0, Linfo/guardianproject/database/sqlcipher/SQLiteQueryInJava;->mDatabase:Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;

    invoke-virtual {v1}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->unlock()V

    .line 88
    throw v0
.end method

.method requery()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 234
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteQueryInJava;->mBindArgs:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteQueryInJava;->mBindArgs:[Ljava/lang/String;

    array-length v2, v0

    move v0, v1

    .line 237
    :goto_0
    if-lt v0, v2, :cond_1

    .line 252
    :cond_0
    return-void

    .line 238
    :cond_1
    add-int/lit8 v3, v0, 0x1

    :try_start_0
    iget-object v4, p0, Linfo/guardianproject/database/sqlcipher/SQLiteQueryInJava;->mBindArgs:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-super {p0, v3, v4}, Linfo/guardianproject/database/sqlcipher/SQLiteProgram;->bindString(ILjava/lang/String;)V
    :try_end_0
    .catch Linfo/guardianproject/database/sqlcipher/SQLiteMisuseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 240
    :catch_0
    move-exception v0

    .line 241
    new-instance v3, Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "mSql "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Linfo/guardianproject/database/sqlcipher/SQLiteQueryInJava;->mSql:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 242
    :goto_1
    if-lt v1, v2, :cond_2

    .line 246
    const-string v1, " "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 248
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 247
    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 249
    throw v1

    .line 243
    :cond_2
    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    iget-object v4, p0, Linfo/guardianproject/database/sqlcipher/SQLiteQueryInJava;->mBindArgs:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SQLiteQuery: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Linfo/guardianproject/database/sqlcipher/SQLiteQueryInJava;->mSql:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
