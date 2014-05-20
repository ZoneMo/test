.class public Linfo/guardianproject/database/sqlcipher/SQLiteQuery;
.super Linfo/guardianproject/database/sqlcipher/SQLiteProgram;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "Cursor"


# instance fields
.field private mBindArgs:[Ljava/lang/String;

.field private mClosed:Z

.field private mOffsetIndex:I


# direct methods
.method constructor <init>(Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Linfo/guardianproject/database/sqlcipher/SQLiteProgram;-><init>(Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;Ljava/lang/String;)V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteQuery;->mClosed:Z

    .line 51
    iput p3, p0, Linfo/guardianproject/database/sqlcipher/SQLiteQuery;->mOffsetIndex:I

    .line 52
    iput-object p4, p0, Linfo/guardianproject/database/sqlcipher/SQLiteQuery;->mBindArgs:[Ljava/lang/String;

    .line 53
    return-void
.end method

.method private final native native_column_count()I
.end method

.method private final native native_column_name(I)Ljava/lang/String;
.end method

.method private final native native_fill_window(Linfo/guardianproject/database/CursorWindow;IIII)I
.end method


# virtual methods
.method public bindDouble(ID)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 177
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteQuery;->mBindArgs:[Ljava/lang/String;

    add-int/lit8 v1, p1, -0x1

    invoke-static {p2, p3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 178
    iget-boolean v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteQuery;->mClosed:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Linfo/guardianproject/database/sqlcipher/SQLiteProgram;->bindDouble(ID)V

    .line 179
    :cond_0
    return-void
.end method

.method public bindLong(IJ)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 171
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteQuery;->mBindArgs:[Ljava/lang/String;

    add-int/lit8 v1, p1, -0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 172
    iget-boolean v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteQuery;->mClosed:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Linfo/guardianproject/database/sqlcipher/SQLiteProgram;->bindLong(IJ)V

    .line 173
    :cond_0
    return-void
.end method

.method public bindNull(I)V
    .locals 3
    .parameter

    .prologue
    .line 165
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteQuery;->mBindArgs:[Ljava/lang/String;

    add-int/lit8 v1, p1, -0x1

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 166
    iget-boolean v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteQuery;->mClosed:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Linfo/guardianproject/database/sqlcipher/SQLiteProgram;->bindNull(I)V

    .line 167
    :cond_0
    return-void
.end method

.method public bindString(ILjava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 183
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteQuery;->mBindArgs:[Ljava/lang/String;

    add-int/lit8 v1, p1, -0x1

    aput-object p2, v0, v1

    .line 184
    iget-boolean v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteQuery;->mClosed:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Linfo/guardianproject/database/sqlcipher/SQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 185
    :cond_0
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 135
    invoke-super {p0}, Linfo/guardianproject/database/sqlcipher/SQLiteProgram;->close()V

    .line 136
    const/4 v0, 0x1

    iput-boolean v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteQuery;->mClosed:Z

    .line 137
    return-void
.end method

.method columnCountLocked()I
    .locals 1

    .prologue
    .line 104
    invoke-virtual {p0}, Linfo/guardianproject/database/sqlcipher/SQLiteQuery;->acquireReference()V

    .line 106
    :try_start_0
    invoke-direct {p0}, Linfo/guardianproject/database/sqlcipher/SQLiteQuery;->native_column_count()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 108
    invoke-virtual {p0}, Linfo/guardianproject/database/sqlcipher/SQLiteQuery;->releaseReference()V

    .line 106
    return v0

    .line 107
    :catchall_0
    move-exception v0

    .line 108
    invoke-virtual {p0}, Linfo/guardianproject/database/sqlcipher/SQLiteQuery;->releaseReference()V

    .line 109
    throw v0
.end method

.method columnNameLocked(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 120
    invoke-virtual {p0}, Linfo/guardianproject/database/sqlcipher/SQLiteQuery;->acquireReference()V

    .line 122
    :try_start_0
    invoke-direct {p0, p1}, Linfo/guardianproject/database/sqlcipher/SQLiteQuery;->native_column_name(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 124
    invoke-virtual {p0}, Linfo/guardianproject/database/sqlcipher/SQLiteQuery;->releaseReference()V

    .line 122
    return-object v0

    .line 123
    :catchall_0
    move-exception v0

    .line 124
    invoke-virtual {p0}, Linfo/guardianproject/database/sqlcipher/SQLiteQuery;->releaseReference()V

    .line 125
    throw v0
.end method

.method fillWindow(Linfo/guardianproject/database/CursorWindow;II)I
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 63
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 64
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteQuery;->mDatabase:Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;

    invoke-virtual {v0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->lock()V

    .line 65
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteQuery;->mDatabase:Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;

    iget-object v1, p0, Linfo/guardianproject/database/sqlcipher/SQLiteQuery;->mSql:Ljava/lang/String;

    const-string v2, "GETLOCK:"

    invoke-virtual {v0, v1, v6, v7, v2}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->logTimeStat(Ljava/lang/String;JLjava/lang/String;)V

    .line 67
    :try_start_0
    invoke-virtual {p0}, Linfo/guardianproject/database/sqlcipher/SQLiteQuery;->acquireReference()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 69
    :try_start_1
    invoke-virtual {p1}, Linfo/guardianproject/database/CursorWindow;->acquireReference()V

    .line 73
    invoke-virtual {p1}, Linfo/guardianproject/database/CursorWindow;->getStartPosition()I

    move-result v2

    iget v3, p0, Linfo/guardianproject/database/sqlcipher/SQLiteQuery;->mOffsetIndex:I

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Linfo/guardianproject/database/sqlcipher/SQLiteQuery;->native_fill_window(Linfo/guardianproject/database/CursorWindow;IIII)I

    move-result v0

    .line 76
    sget-boolean v1, Linfo/guardianproject/database/sqlcipher/SQLiteDebug;->DEBUG_SQL_STATEMENTS:Z

    if-eqz v1, :cond_0

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "fillWindow(): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Linfo/guardianproject/database/sqlcipher/SQLiteQuery;->mSql:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    :cond_0
    iget-object v1, p0, Linfo/guardianproject/database/sqlcipher/SQLiteQuery;->mDatabase:Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;

    iget-object v2, p0, Linfo/guardianproject/database/sqlcipher/SQLiteQuery;->mSql:Ljava/lang/String;

    invoke-virtual {v1, v2, v6, v7}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->logTimeStat(Ljava/lang/String;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Linfo/guardianproject/database/sqlcipher/SQLiteDatabaseCorruptException; {:try_start_1 .. :try_end_1} :catch_1

    .line 80
    :try_start_2
    invoke-virtual {p1}, Linfo/guardianproject/database/CursorWindow;->releaseReference()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 91
    invoke-virtual {p0}, Linfo/guardianproject/database/sqlcipher/SQLiteQuery;->releaseReference()V

    .line 92
    iget-object v1, p0, Linfo/guardianproject/database/sqlcipher/SQLiteQuery;->mDatabase:Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;

    invoke-virtual {v1}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->unlock()V

    .line 83
    :goto_0
    return v0

    .line 88
    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {p1}, Linfo/guardianproject/database/CursorWindow;->releaseReference()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 91
    invoke-virtual {p0}, Linfo/guardianproject/database/sqlcipher/SQLiteQuery;->releaseReference()V

    .line 92
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteQuery;->mDatabase:Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;

    invoke-virtual {v0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->unlock()V

    .line 83
    const/4 v0, 0x0

    goto :goto_0

    .line 84
    :catch_1
    move-exception v0

    .line 85
    :try_start_4
    iget-object v1, p0, Linfo/guardianproject/database/sqlcipher/SQLiteQuery;->mDatabase:Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;

    invoke-virtual {v1}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->onCorruption()V

    .line 86
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 87
    :catchall_0
    move-exception v0

    .line 88
    :try_start_5
    invoke-virtual {p1}, Linfo/guardianproject/database/CursorWindow;->releaseReference()V

    .line 89
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 90
    :catchall_1
    move-exception v0

    .line 91
    invoke-virtual {p0}, Linfo/guardianproject/database/sqlcipher/SQLiteQuery;->releaseReference()V

    .line 92
    iget-object v1, p0, Linfo/guardianproject/database/sqlcipher/SQLiteQuery;->mDatabase:Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;

    invoke-virtual {v1}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->unlock()V

    .line 93
    throw v0
.end method

.method requery()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 143
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteQuery;->mBindArgs:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteQuery;->mBindArgs:[Ljava/lang/String;

    array-length v2, v0

    move v0, v1

    .line 146
    :goto_0
    if-lt v0, v2, :cond_1

    .line 161
    :cond_0
    return-void

    .line 147
    :cond_1
    add-int/lit8 v3, v0, 0x1

    :try_start_0
    iget-object v4, p0, Linfo/guardianproject/database/sqlcipher/SQLiteQuery;->mBindArgs:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-super {p0, v3, v4}, Linfo/guardianproject/database/sqlcipher/SQLiteProgram;->bindString(ILjava/lang/String;)V
    :try_end_0
    .catch Linfo/guardianproject/database/sqlcipher/SQLiteMisuseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 149
    :catch_0
    move-exception v0

    .line 150
    new-instance v3, Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "mSql "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Linfo/guardianproject/database/sqlcipher/SQLiteQuery;->mSql:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 151
    :goto_1
    if-lt v1, v2, :cond_2

    .line 155
    const-string v1, " "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 157
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 156
    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 158
    throw v1

    .line 152
    :cond_2
    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    iget-object v4, p0, Linfo/guardianproject/database/sqlcipher/SQLiteQuery;->mBindArgs:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SQLiteQuery: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Linfo/guardianproject/database/sqlcipher/SQLiteQuery;->mSql:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
