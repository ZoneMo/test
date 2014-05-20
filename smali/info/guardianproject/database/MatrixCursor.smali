.class public Linfo/guardianproject/database/MatrixCursor;
.super Landroid/database/AbstractCursor;
.source "SourceFile"


# instance fields
.field private final columnCount:I

.field private final columnNames:[Ljava/lang/String;

.field private data:[Ljava/lang/Object;

.field private rowCount:I


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 59
    const/16 v0, 0x10

    invoke-direct {p0, p1, v0}, Linfo/guardianproject/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 60
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Linfo/guardianproject/database/MatrixCursor;->rowCount:I

    .line 42
    iput-object p1, p0, Linfo/guardianproject/database/MatrixCursor;->columnNames:[Ljava/lang/String;

    .line 43
    array-length v0, p1

    iput v0, p0, Linfo/guardianproject/database/MatrixCursor;->columnCount:I

    .line 45
    if-gtz p2, :cond_0

    .line 46
    const/4 p2, 0x1

    .line 49
    :cond_0
    iget v0, p0, Linfo/guardianproject/database/MatrixCursor;->columnCount:I

    mul-int/2addr v0, p2

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Linfo/guardianproject/database/MatrixCursor;->data:[Ljava/lang/Object;

    .line 50
    return-void
.end method

.method static synthetic access$0(Linfo/guardianproject/database/MatrixCursor;)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Linfo/guardianproject/database/MatrixCursor;->data:[Ljava/lang/Object;

    return-object v0
.end method

.method private addRow(Ljava/util/ArrayList;I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 157
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 158
    iget v0, p0, Linfo/guardianproject/database/MatrixCursor;->columnCount:I

    if-eq v1, v0, :cond_0

    .line 159
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "columnNames.length = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 160
    iget v3, p0, Linfo/guardianproject/database/MatrixCursor;->columnCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", columnValues.size() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 159
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :cond_0
    iget v0, p0, Linfo/guardianproject/database/MatrixCursor;->rowCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Linfo/guardianproject/database/MatrixCursor;->rowCount:I

    .line 164
    iget-object v2, p0, Linfo/guardianproject/database/MatrixCursor;->data:[Ljava/lang/Object;

    .line 165
    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_1

    .line 168
    return-void

    .line 166
    :cond_1
    add-int v3, p2, v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    .line 165
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private ensureCapacity(I)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 172
    iget-object v0, p0, Linfo/guardianproject/database/MatrixCursor;->data:[Ljava/lang/Object;

    array-length v0, v0

    if-le p1, v0, :cond_0

    .line 173
    iget-object v1, p0, Linfo/guardianproject/database/MatrixCursor;->data:[Ljava/lang/Object;

    .line 174
    iget-object v0, p0, Linfo/guardianproject/database/MatrixCursor;->data:[Ljava/lang/Object;

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    .line 175
    if-ge v0, p1, :cond_1

    .line 178
    :goto_0
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Linfo/guardianproject/database/MatrixCursor;->data:[Ljava/lang/Object;

    .line 179
    iget-object v0, p0, Linfo/guardianproject/database/MatrixCursor;->data:[Ljava/lang/Object;

    array-length v2, v1

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 181
    :cond_0
    return-void

    :cond_1
    move p1, v0

    goto :goto_0
.end method

.method private get(I)Ljava/lang/Object;
    .locals 3
    .parameter

    .prologue
    .line 66
    if-ltz p1, :cond_0

    iget v0, p0, Linfo/guardianproject/database/MatrixCursor;->columnCount:I

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

    iget v2, p0, Linfo/guardianproject/database/MatrixCursor;->columnCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 67
    invoke-direct {v0, v1}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_1
    iget v0, p0, Linfo/guardianproject/database/MatrixCursor;->mPos:I

    if-gez v0, :cond_2

    .line 71
    new-instance v0, Landroid/database/CursorIndexOutOfBoundsException;

    const-string v1, "Before first row."

    invoke-direct {v0, v1}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_2
    iget v0, p0, Linfo/guardianproject/database/MatrixCursor;->mPos:I

    iget v1, p0, Linfo/guardianproject/database/MatrixCursor;->rowCount:I

    if-lt v0, v1, :cond_3

    .line 74
    new-instance v0, Landroid/database/CursorIndexOutOfBoundsException;

    const-string v1, "After last row."

    invoke-direct {v0, v1}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_3
    iget-object v0, p0, Linfo/guardianproject/database/MatrixCursor;->data:[Ljava/lang/Object;

    iget v1, p0, Linfo/guardianproject/database/MatrixCursor;->mPos:I

    iget v2, p0, Linfo/guardianproject/database/MatrixCursor;->columnCount:I

    mul-int/2addr v1, v2

    add-int/2addr v1, p1

    aget-object v0, v0, v1

    return-object v0
.end method


# virtual methods
.method public addRow(Ljava/lang/Iterable;)V
    .locals 6
    .parameter

    .prologue
    .line 125
    iget v0, p0, Linfo/guardianproject/database/MatrixCursor;->rowCount:I

    iget v1, p0, Linfo/guardianproject/database/MatrixCursor;->columnCount:I

    mul-int/2addr v0, v1

    .line 126
    iget v1, p0, Linfo/guardianproject/database/MatrixCursor;->columnCount:I

    add-int v2, v0, v1

    .line 127
    invoke-direct {p0, v2}, Linfo/guardianproject/database/MatrixCursor;->ensureCapacity(I)V

    .line 129
    instance-of v1, p1, Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 130
    check-cast p1, Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0}, Linfo/guardianproject/database/MatrixCursor;->addRow(Ljava/util/ArrayList;I)V

    .line 153
    :goto_0
    return-void

    .line 134
    :cond_0
    iget-object v3, p0, Linfo/guardianproject/database/MatrixCursor;->data:[Ljava/lang/Object;

    .line 136
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 145
    if-eq v0, v2, :cond_3

    .line 147
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 148
    const-string v1, "columnValues.size() < columnNames.length"

    .line 147
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 137
    if-ne v0, v2, :cond_2

    .line 139
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 140
    const-string v1, "columnValues.size() > columnNames.length"

    .line 139
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_2
    add-int/lit8 v1, v0, 0x1

    aput-object v5, v3, v0

    move v0, v1

    goto :goto_1

    .line 152
    :cond_3
    iget v0, p0, Linfo/guardianproject/database/MatrixCursor;->rowCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Linfo/guardianproject/database/MatrixCursor;->rowCount:I

    goto :goto_0
.end method

.method public addRow([Ljava/lang/Object;)V
    .locals 4
    .parameter

    .prologue
    .line 104
    array-length v0, p1

    iget v1, p0, Linfo/guardianproject/database/MatrixCursor;->columnCount:I

    if-eq v0, v1, :cond_0

    .line 105
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "columnNames.length = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 106
    iget v2, p0, Linfo/guardianproject/database/MatrixCursor;->columnCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", columnValues.length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 107
    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 105
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_0
    iget v0, p0, Linfo/guardianproject/database/MatrixCursor;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Linfo/guardianproject/database/MatrixCursor;->rowCount:I

    iget v1, p0, Linfo/guardianproject/database/MatrixCursor;->columnCount:I

    mul-int/2addr v0, v1

    .line 111
    iget v1, p0, Linfo/guardianproject/database/MatrixCursor;->columnCount:I

    add-int/2addr v1, v0

    invoke-direct {p0, v1}, Linfo/guardianproject/database/MatrixCursor;->ensureCapacity(I)V

    .line 112
    const/4 v1, 0x0

    iget-object v2, p0, Linfo/guardianproject/database/MatrixCursor;->data:[Ljava/lang/Object;

    iget v3, p0, Linfo/guardianproject/database/MatrixCursor;->columnCount:I

    invoke-static {p1, v1, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 113
    return-void
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Linfo/guardianproject/database/MatrixCursor;->columnNames:[Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 220
    iget v0, p0, Linfo/guardianproject/database/MatrixCursor;->rowCount:I

    return v0
.end method

.method public getDouble(I)D
    .locals 2
    .parameter

    .prologue
    .line 271
    invoke-direct {p0, p1}, Linfo/guardianproject/database/MatrixCursor;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 272
    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    .line 274
    :goto_0
    return-wide v0

    .line 273
    :cond_0
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    goto :goto_0

    .line 274
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
    .line 261
    invoke-direct {p0, p1}, Linfo/guardianproject/database/MatrixCursor;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 262
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 264
    :goto_0
    return v0

    .line 263
    :cond_0
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    goto :goto_0

    .line 264
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
    .line 245
    invoke-direct {p0, p1}, Linfo/guardianproject/database/MatrixCursor;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 246
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 248
    :goto_0
    return v0

    .line 247
    :cond_0
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    goto :goto_0

    .line 248
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
    .line 253
    invoke-direct {p0, p1}, Linfo/guardianproject/database/MatrixCursor;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 254
    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    .line 256
    :goto_0
    return-wide v0

    .line 255
    :cond_0
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    goto :goto_0

    .line 256
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
    .line 237
    invoke-direct {p0, p1}, Linfo/guardianproject/database/MatrixCursor;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 238
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 240
    :goto_0
    return v0

    .line 239
    :cond_0
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->shortValue()S

    move-result v0

    goto :goto_0

    .line 240
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
    .line 230
    invoke-direct {p0, p1}, Linfo/guardianproject/database/MatrixCursor;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 231
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 232
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
    .line 279
    invoke-direct {p0, p1}, Linfo/guardianproject/database/MatrixCursor;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public newRow()Linfo/guardianproject/database/MatrixCursor$RowBuilder;
    .locals 3

    .prologue
    .line 87
    iget v0, p0, Linfo/guardianproject/database/MatrixCursor;->rowCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Linfo/guardianproject/database/MatrixCursor;->rowCount:I

    .line 88
    iget v0, p0, Linfo/guardianproject/database/MatrixCursor;->rowCount:I

    iget v1, p0, Linfo/guardianproject/database/MatrixCursor;->columnCount:I

    mul-int/2addr v0, v1

    .line 89
    invoke-direct {p0, v0}, Linfo/guardianproject/database/MatrixCursor;->ensureCapacity(I)V

    .line 90
    iget v1, p0, Linfo/guardianproject/database/MatrixCursor;->columnCount:I

    sub-int v1, v0, v1

    .line 91
    new-instance v2, Linfo/guardianproject/database/MatrixCursor$RowBuilder;

    invoke-direct {v2, p0, v1, v0}, Linfo/guardianproject/database/MatrixCursor$RowBuilder;-><init>(Linfo/guardianproject/database/MatrixCursor;II)V

    return-object v2
.end method
