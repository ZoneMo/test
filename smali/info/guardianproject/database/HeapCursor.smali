.class public Linfo/guardianproject/database/HeapCursor;
.super Linfo/guardianproject/database/AbstractCursor;
.source "SourceFile"


# instance fields
.field public chunkSize:I

.field private final columnCount:I

.field private final columnNames:[Ljava/lang/String;

.field maxPosistion:I

.field sArrays:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 59
    const/16 v0, 0x10

    invoke-direct {p0, p1, v0}, Linfo/guardianproject/database/HeapCursor;-><init>([Ljava/lang/String;I)V

    .line 60
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-direct {p0}, Linfo/guardianproject/database/AbstractCursor;-><init>()V

    .line 31
    const/16 v0, 0xbb8

    iput v0, p0, Linfo/guardianproject/database/HeapCursor;->chunkSize:I

    .line 42
    iput-object p1, p0, Linfo/guardianproject/database/HeapCursor;->columnNames:[Ljava/lang/String;

    .line 43
    array-length v0, p1

    iput v0, p0, Linfo/guardianproject/database/HeapCursor;->columnCount:I

    .line 45
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Linfo/guardianproject/database/HeapCursor;->sArrays:Landroid/util/SparseArray;

    .line 50
    return-void
.end method

.method private get(I)Ljava/lang/Object;
    .locals 3
    .parameter

    .prologue
    .line 66
    if-ltz p1, :cond_0

    iget v0, p0, Linfo/guardianproject/database/HeapCursor;->columnCount:I

    if-lt p1, v0, :cond_1

    .line 67
    :cond_0
    new-instance v0, Landroid/database/CursorIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Requested column: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", # of columns: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Linfo/guardianproject/database/HeapCursor;->columnCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 67
    invoke-direct {v0, v1}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_1
    iget v0, p0, Linfo/guardianproject/database/HeapCursor;->mPos:I

    if-gez v0, :cond_2

    .line 71
    new-instance v0, Landroid/database/CursorIndexOutOfBoundsException;

    const-string v1, "Before first row."

    invoke-direct {v0, v1}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_2
    iget v0, p0, Linfo/guardianproject/database/HeapCursor;->mPos:I

    iget v1, p0, Linfo/guardianproject/database/HeapCursor;->maxPosistion:I

    if-lt v0, v1, :cond_3

    .line 74
    new-instance v0, Landroid/database/CursorIndexOutOfBoundsException;

    const-string v1, "After last row."

    invoke-direct {v0, v1}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_3
    iget v0, p0, Linfo/guardianproject/database/HeapCursor;->mPos:I

    iget v1, p0, Linfo/guardianproject/database/HeapCursor;->chunkSize:I

    div-int/2addr v0, v1

    .line 78
    iget v1, p0, Linfo/guardianproject/database/HeapCursor;->mPos:I

    iget v2, p0, Linfo/guardianproject/database/HeapCursor;->chunkSize:I

    rem-int/2addr v1, v2

    iget v2, p0, Linfo/guardianproject/database/HeapCursor;->columnCount:I

    mul-int/2addr v1, v2

    .line 79
    iget-object v2, p0, Linfo/guardianproject/database/HeapCursor;->sArrays:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    add-int/2addr v1, p1

    aget-object v0, v0, v1

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 222
    const/4 v0, 0x0

    iput v0, p0, Linfo/guardianproject/database/HeapCursor;->mPos:I

    .line 223
    iget-object v0, p0, Linfo/guardianproject/database/HeapCursor;->sArrays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 224
    return-void
.end method

.method public containData(I)Z
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 213
    iget v0, p0, Linfo/guardianproject/database/HeapCursor;->chunkSize:I

    div-int v0, p1, v0

    .line 214
    iget-object v2, p0, Linfo/guardianproject/database/HeapCursor;->sArrays:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    if-gez v2, :cond_0

    move v0, v1

    .line 218
    :goto_0
    return v0

    .line 217
    :cond_0
    iget v2, p0, Linfo/guardianproject/database/HeapCursor;->chunkSize:I

    rem-int v2, p1, v2

    iget v3, p0, Linfo/guardianproject/database/HeapCursor;->columnCount:I

    mul-int/2addr v2, v3

    .line 218
    iget-object v3, p0, Linfo/guardianproject/database/HeapCursor;->sArrays:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    aget-object v0, v0, v2

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public getBlob(I)[B
    .locals 1
    .parameter

    .prologue
    .line 228
    invoke-direct {p0, p1}, Linfo/guardianproject/database/HeapCursor;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 229
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 230
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, [B

    goto :goto_0
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Linfo/guardianproject/database/HeapCursor;->columnNames:[Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Linfo/guardianproject/database/HeapCursor;->maxPosistion:I

    return v0
.end method

.method public getDouble(I)D
    .locals 2
    .parameter

    .prologue
    .line 200
    invoke-direct {p0, p1}, Linfo/guardianproject/database/HeapCursor;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 201
    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    .line 203
    :goto_0
    return-wide v0

    .line 202
    :cond_0
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    goto :goto_0

    .line 203
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    goto :goto_0
.end method

.method public getFloat(I)F
    .locals 2
    .parameter

    .prologue
    .line 192
    invoke-direct {p0, p1}, Linfo/guardianproject/database/HeapCursor;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 193
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 195
    :goto_0
    return v0

    .line 194
    :cond_0
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    goto :goto_0

    .line 195
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    goto :goto_0
.end method

.method public getInt(I)I
    .locals 2
    .parameter

    .prologue
    .line 176
    invoke-direct {p0, p1}, Linfo/guardianproject/database/HeapCursor;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 177
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 179
    :goto_0
    return v0

    .line 178
    :cond_0
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    goto :goto_0

    .line 179
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public getLong(I)J
    .locals 2
    .parameter

    .prologue
    .line 184
    invoke-direct {p0, p1}, Linfo/guardianproject/database/HeapCursor;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 185
    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    .line 187
    :goto_0
    return-wide v0

    .line 186
    :cond_0
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    goto :goto_0

    .line 187
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getShort(I)S
    .locals 2
    .parameter

    .prologue
    .line 168
    invoke-direct {p0, p1}, Linfo/guardianproject/database/HeapCursor;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 169
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 171
    :goto_0
    return v0

    .line 170
    :cond_0
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->shortValue()S

    move-result v0

    goto :goto_0

    .line 171
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v0

    goto :goto_0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 161
    invoke-direct {p0, p1}, Linfo/guardianproject/database/HeapCursor;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 162
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 163
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isNull(I)Z
    .locals 1
    .parameter

    .prologue
    .line 208
    invoke-direct {p0, p1}, Linfo/guardianproject/database/HeapCursor;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public newRow(I)Linfo/guardianproject/database/HeapCursor$RowBuilder;
    .locals 5
    .parameter

    .prologue
    .line 90
    iget v0, p0, Linfo/guardianproject/database/HeapCursor;->chunkSize:I

    div-int v1, p1, v0

    .line 92
    iget-object v0, p0, Linfo/guardianproject/database/HeapCursor;->sArrays:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_0

    .line 93
    iget v0, p0, Linfo/guardianproject/database/HeapCursor;->chunkSize:I

    iget v2, p0, Linfo/guardianproject/database/HeapCursor;->columnCount:I

    mul-int/2addr v0, v2

    new-array v0, v0, [Ljava/lang/Object;

    .line 94
    iget-object v2, p0, Linfo/guardianproject/database/HeapCursor;->sArrays:Landroid/util/SparseArray;

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 99
    :goto_0
    iget v1, p0, Linfo/guardianproject/database/HeapCursor;->chunkSize:I

    rem-int v1, p1, v1

    iget v2, p0, Linfo/guardianproject/database/HeapCursor;->columnCount:I

    mul-int/2addr v2, v1

    .line 100
    iget v1, p0, Linfo/guardianproject/database/HeapCursor;->columnCount:I

    add-int v3, v2, v1

    .line 101
    add-int/lit8 v1, p1, 0x1

    .line 102
    iget v4, p0, Linfo/guardianproject/database/HeapCursor;->maxPosistion:I

    if-le v1, v4, :cond_1

    :goto_1
    iput v1, p0, Linfo/guardianproject/database/HeapCursor;->maxPosistion:I

    .line 103
    new-instance v1, Linfo/guardianproject/database/HeapCursor$RowBuilder;

    invoke-direct {v1, p0, v2, v3, v0}, Linfo/guardianproject/database/HeapCursor$RowBuilder;-><init>(Linfo/guardianproject/database/HeapCursor;II[Ljava/lang/Object;)V

    return-object v1

    .line 96
    :cond_0
    iget-object v0, p0, Linfo/guardianproject/database/HeapCursor;->sArrays:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    goto :goto_0

    .line 102
    :cond_1
    iget v1, p0, Linfo/guardianproject/database/HeapCursor;->maxPosistion:I

    goto :goto_1
.end method

.method public put(ILjava/lang/Object;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 235
    if-ltz p1, :cond_0

    iget v0, p0, Linfo/guardianproject/database/HeapCursor;->columnCount:I

    if-lt p1, v0, :cond_1

    .line 236
    :cond_0
    new-instance v0, Landroid/database/CursorIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Requested column: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 237
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", # of columns: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Linfo/guardianproject/database/HeapCursor;->columnCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 236
    invoke-direct {v0, v1}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 239
    :cond_1
    iget v0, p0, Linfo/guardianproject/database/HeapCursor;->mPos:I

    if-gez v0, :cond_2

    .line 240
    new-instance v0, Landroid/database/CursorIndexOutOfBoundsException;

    const-string v1, "Before first row."

    invoke-direct {v0, v1}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 242
    :cond_2
    iget v0, p0, Linfo/guardianproject/database/HeapCursor;->mPos:I

    iget v1, p0, Linfo/guardianproject/database/HeapCursor;->maxPosistion:I

    if-lt v0, v1, :cond_3

    .line 243
    new-instance v0, Landroid/database/CursorIndexOutOfBoundsException;

    const-string v1, "After last row."

    invoke-direct {v0, v1}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 246
    :cond_3
    iget v0, p0, Linfo/guardianproject/database/HeapCursor;->mPos:I

    iget v1, p0, Linfo/guardianproject/database/HeapCursor;->chunkSize:I

    div-int/2addr v0, v1

    .line 247
    iget v1, p0, Linfo/guardianproject/database/HeapCursor;->mPos:I

    iget v2, p0, Linfo/guardianproject/database/HeapCursor;->chunkSize:I

    rem-int/2addr v1, v2

    iget v2, p0, Linfo/guardianproject/database/HeapCursor;->columnCount:I

    mul-int/2addr v1, v2

    .line 248
    iget-object v2, p0, Linfo/guardianproject/database/HeapCursor;->sArrays:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    add-int/2addr v1, p1

    aput-object p2, v0, v1

    .line 249
    return-void
.end method
