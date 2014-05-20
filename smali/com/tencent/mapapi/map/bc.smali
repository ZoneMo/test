.class final Lcom/tencent/mapapi/map/bc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final Uc:I

.field private WO:Lcom/tencent/mapapi/map/an;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tencent/mapapi/map/bb;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const-wide/16 v4, 0x5

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tencent/mapapi/map/bc;->WO:Lcom/tencent/mapapi/map/an;

    .line 87
    const-string v1, ""

    iput-object v1, p0, Lcom/tencent/mapapi/map/bc;->b:Ljava/lang/String;

    .line 89
    const/16 v1, 0x40

    iput v1, p0, Lcom/tencent/mapapi/map/bc;->Uc:I

    .line 24
    if-nez p2, :cond_0

    .line 80
    :goto_0
    return-void

    .line 28
    :cond_0
    iget-object v1, p2, Lcom/tencent/mapapi/map/bb;->WL:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 31
    new-instance v2, Ljava/io/File;

    iget-object v1, p2, Lcom/tencent/mapapi/map/bb;->WL:Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 32
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    .line 33
    if-nez v1, :cond_1

    .line 34
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v1

    .line 37
    :cond_1
    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    .line 39
    iget-object v2, p2, Lcom/tencent/mapapi/map/bb;->WL:Ljava/lang/String;

    invoke-static {v2}, Lcom/tencent/mapapi/map/bc;->aq(Ljava/lang/String;)J

    move-result-wide v2

    .line 40
    cmp-long v2, v2, v4

    if-gez v2, :cond_6

    .line 46
    :cond_2
    :goto_1
    if-nez v0, :cond_5

    .line 48
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 50
    if-nez v0, :cond_4

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mapapi/map/bc;->b:Ljava/lang/String;

    .line 77
    :cond_3
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tencent/mapapi/map/bc;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "sosomapsdk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Lcom/tencent/mapapi/map/bb;->WG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mapapi/map/bc;->b:Ljava/lang/String;

    goto :goto_0

    .line 56
    :cond_4
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mapapi/map/bc;->b:Ljava/lang/String;

    .line 59
    iget-object v0, p0, Lcom/tencent/mapapi/map/bc;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mapapi/map/bc;->aq(Ljava/lang/String;)J

    move-result-wide v0

    .line 60
    cmp-long v0, v0, v4

    if-gez v0, :cond_3

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mapapi/map/bc;->b:Ljava/lang/String;

    .line 63
    iget-object v0, p0, Lcom/tencent/mapapi/map/bc;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mapapi/map/bc;->aq(Ljava/lang/String;)J

    move-result-wide v0

    .line 64
    cmp-long v0, v0, v4

    if-gez v0, :cond_3

    .line 66
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mapapi/map/bc;->b:Ljava/lang/String;

    goto :goto_2

    .line 74
    :cond_5
    iget-object v0, p2, Lcom/tencent/mapapi/map/bb;->WL:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/mapapi/map/bc;->b:Ljava/lang/String;

    goto :goto_2

    :cond_6
    move v0, v1

    goto :goto_1
.end method

.method private static a([BZ)I
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/high16 v4, -0x100

    const/4 v3, 0x1

    .line 172
    if-ne p1, v3, :cond_0

    .line 175
    aget-byte v0, p0, v7

    and-int/lit16 v0, v0, 0xff

    .line 176
    aget-byte v1, p0, v6

    shl-int/lit8 v1, v1, 0x8

    const v2, 0xff00

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    .line 177
    aget-byte v1, p0, v3

    shl-int/lit8 v1, v1, 0x10

    const/high16 v2, 0xff

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    .line 178
    aget-byte v1, p0, v5

    shl-int/lit8 v1, v1, 0x18

    and-int/2addr v1, v4

    or-int/2addr v0, v1

    .line 188
    :goto_0
    return v0

    .line 182
    :cond_0
    aget-byte v0, p0, v5

    and-int/lit16 v0, v0, 0xff

    .line 183
    aget-byte v1, p0, v3

    shl-int/lit8 v1, v1, 0x8

    const v2, 0xff00

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    .line 184
    aget-byte v1, p0, v6

    shl-int/lit8 v1, v1, 0x10

    const/high16 v2, 0xff

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    .line 185
    aget-byte v1, p0, v7

    shl-int/lit8 v1, v1, 0x18

    and-int/2addr v1, v4

    or-int/2addr v0, v1

    goto :goto_0
.end method

.method private static aq(Ljava/lang/String;)J
    .locals 5
    .parameter

    .prologue
    .line 99
    :try_start_0
    new-instance v0, Landroid/os/StatFs;

    invoke-direct {v0, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 100
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v1, v1

    .line 101
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v3, v0

    .line 103
    mul-long v0, v1, v3

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method private b(IIIZ)[Ljava/lang/String;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 116
    div-int/lit8 v0, p1, 0x40

    .line 117
    div-int/lit8 v1, p2, 0x40

    .line 118
    div-int/lit8 v2, v0, 0xa

    .line 119
    div-int/lit8 v3, v1, 0xa

    .line 121
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    .line 122
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    iget-object v6, p0, Lcom/tencent/mapapi/map/bc;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 126
    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 128
    const-string v2, "/"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 130
    const-string v2, "/"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    if-nez p4, :cond_0

    .line 132
    new-instance v2, Ljava/io/File;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 133
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 134
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 137
    :cond_0
    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 138
    const-string v2, "_"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 140
    const-string v1, "_"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 142
    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".ind"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 143
    const/4 v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".dat"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 144
    return-object v4
.end method

.method private static c(IZ)[B
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/high16 v3, -0x100

    const/4 v2, 0x1

    .line 152
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 153
    if-ne p1, v2, :cond_0

    .line 155
    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, v6

    .line 156
    const v1, 0xff00

    and-int/2addr v1, p0

    shr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    aput-byte v1, v0, v5

    .line 157
    const/high16 v1, 0xff

    and-int/2addr v1, p0

    shr-int/lit8 v1, v1, 0x10

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    .line 158
    and-int v1, v3, p0

    shr-int/lit8 v1, v1, 0x18

    int-to-byte v1, v1

    aput-byte v1, v0, v4

    .line 168
    :goto_0
    return-object v0

    .line 162
    :cond_0
    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, v4

    .line 163
    const v1, 0xff00

    and-int/2addr v1, p0

    shr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    .line 164
    const/high16 v1, 0xff

    and-int/2addr v1, p0

    shr-int/lit8 v1, v1, 0x10

    int-to-byte v1, v1

    aput-byte v1, v0, v5

    .line 165
    and-int v1, v3, p0

    shr-int/lit8 v1, v1, 0x18

    int-to-byte v1, v1

    aput-byte v1, v0, v6

    goto :goto_0
.end method

.method private static i(Ljava/lang/String;I)[B
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v0, 0x0

    .line 199
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 200
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 243
    :cond_0
    :goto_0
    return-object v0

    .line 205
    :cond_1
    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v3, "r"

    invoke-direct {v1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 207
    :goto_1
    if-eqz v1, :cond_0

    .line 212
    new-array v2, v4, [B

    .line 214
    int-to-long v3, p1

    :try_start_1
    invoke-virtual {v1, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 216
    :goto_2
    const/4 v3, 0x0

    const/4 v4, 0x4

    :try_start_2
    invoke-virtual {v1, v2, v3, v4}, Ljava/io/RandomAccessFile;->read([BII)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 221
    :goto_3
    invoke-static {v2, v5}, Lcom/tencent/mapapi/map/bc;->a([BZ)I

    move-result v2

    .line 225
    if-gtz v2, :cond_2

    .line 227
    :try_start_3
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v1, v0

    goto :goto_1

    .line 234
    :cond_2
    new-array v0, v2, [B

    .line 236
    const/4 v3, 0x0

    :try_start_4
    invoke-virtual {v1, v0, v3, v2}, Ljava/io/RandomAccessFile;->read([BII)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 238
    :goto_4
    :try_start_5
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_0

    :catch_3
    move-exception v3

    goto :goto_2

    :catch_4
    move-exception v3

    goto :goto_3

    :catch_5
    move-exception v2

    goto :goto_4
.end method

.method private static v(II)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 192
    rem-int/lit8 v0, p0, 0x40

    .line 193
    rem-int/lit8 v1, p1, 0x40

    .line 194
    mul-int/lit8 v0, v0, 0x40

    add-int/2addr v0, v1

    .line 195
    return v0
.end method


# virtual methods
.method public final a(Lcom/tencent/mapapi/map/an;)V
    .locals 0
    .parameter

    .prologue
    .line 148
    iput-object p1, p0, Lcom/tencent/mapapi/map/bc;->WO:Lcom/tencent/mapapi/map/an;

    .line 149
    return-void
.end method

.method public final declared-synchronized a([BIII)Z
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 330
    monitor-enter p0

    if-nez p1, :cond_0

    .line 331
    const/4 v0, 0x0

    .line 438
    :goto_0
    monitor-exit p0

    return v0

    .line 333
    :cond_0
    :try_start_0
    array-length v4, p1

    .line 334
    if-gtz v4, :cond_1

    .line 335
    const/4 v0, 0x0

    goto :goto_0

    .line 337
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, p4, v0}, Lcom/tencent/mapapi/map/bc;->b(IIIZ)[Ljava/lang/String;

    move-result-object v6

    .line 338
    if-eqz v6, :cond_2

    array-length v0, v6

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    aget-object v0, v6, v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    aget-object v0, v6, v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 340
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 343
    :cond_3
    new-instance v5, Ljava/io/File;

    const/4 v0, 0x1

    aget-object v0, v6, v0

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 344
    invoke-virtual {v5}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v0

    if-nez v0, :cond_4

    .line 345
    const/4 v0, 0x0

    .line 347
    :try_start_1
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9

    move-result v0

    .line 349
    :goto_1
    if-nez v0, :cond_4

    .line 352
    const/4 v0, 0x0

    goto :goto_0

    .line 355
    :cond_4
    const-wide/16 v0, 0x0

    .line 356
    const/4 v3, 0x0

    .line 358
    :try_start_2
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v7, "rws"

    invoke-direct {v2, v5, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 359
    const/4 v3, 0x0

    :try_start_3
    invoke-static {v4, v3}, Lcom/tencent/mapapi/map/bc;->c(IZ)[B

    move-result-object v3

    .line 360
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    .line 361
    invoke-virtual {v2, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 362
    invoke-virtual {v2, v3}, Ljava/io/RandomAccessFile;->write([B)V

    .line 363
    invoke-virtual {v2, p1}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_13
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_12

    .line 369
    :try_start_4
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    move-wide v4, v0

    .line 378
    :goto_2
    :try_start_5
    new-instance v7, Ljava/io/File;

    const/4 v0, 0x0

    aget-object v0, v6, v0

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 379
    invoke-virtual {v7}, Ljava/io/File;->exists()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result v0

    if-nez v0, :cond_8

    .line 380
    const/4 v0, 0x0

    .line 382
    :try_start_6
    invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_b

    move-result v0

    .line 384
    :goto_3
    if-nez v0, :cond_8

    .line 387
    const/4 v0, 0x0

    goto :goto_0

    .line 375
    :catch_0
    move-exception v2

    move-wide v4, v0

    goto :goto_2

    .line 364
    :catch_1
    move-exception v2

    move-object v2, v3

    .line 365
    :goto_4
    if-eqz v2, :cond_5

    .line 371
    :try_start_7
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    move-wide v4, v0

    .line 373
    goto :goto_2

    :catch_2
    move-exception v2

    :cond_5
    move-wide v4, v0

    .line 375
    goto :goto_2

    .line 366
    :catch_3
    move-exception v2

    move-object v2, v3

    .line 367
    :goto_5
    if-eqz v2, :cond_6

    .line 371
    :try_start_8
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    move-wide v4, v0

    .line 373
    goto :goto_2

    :catch_4
    move-exception v2

    :cond_6
    move-wide v4, v0

    .line 375
    goto :goto_2

    .line 369
    :catchall_0
    move-exception v0

    move-object v2, v3

    :goto_6
    if-eqz v2, :cond_7

    .line 371
    :try_start_9
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_a

    .line 375
    :cond_7
    :goto_7
    :try_start_a
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 330
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 390
    :cond_8
    const-wide/16 v2, 0x0

    .line 391
    const/4 v1, 0x0

    .line 393
    :try_start_b
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v6, "rws"

    invoke-direct {v0, v7, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_5
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    .line 394
    :try_start_c
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_11
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_10

    move-result-wide v1

    move-wide v8, v1

    move-object v2, v0

    move-wide v0, v8

    .line 398
    :goto_8
    const-wide/16 v6, 0x0

    cmp-long v0, v0, v6

    if-nez v0, :cond_a

    .line 401
    const/16 v0, 0x4000

    :try_start_d
    new-array v0, v0, [B

    .line 402
    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 403
    if-nez v2, :cond_9

    .line 405
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 396
    :catch_5
    move-exception v0

    move-object v0, v1

    :goto_9
    move-wide v8, v2

    move-object v2, v0

    move-wide v0, v8

    goto :goto_8

    :catch_6
    move-exception v0

    :goto_a
    move-wide v8, v2

    move-object v2, v1

    move-wide v0, v8

    goto :goto_8

    .line 408
    :cond_9
    :try_start_e
    invoke-virtual {v2, v0}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_c

    .line 410
    :cond_a
    :goto_b
    :try_start_f
    invoke-static {p2, p3}, Lcom/tencent/mapapi/map/bc;->v(II)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    move-result v0

    .line 414
    if-gez v0, :cond_b

    .line 416
    :try_start_10
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_d

    .line 418
    :goto_c
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 423
    :cond_b
    mul-int/lit8 v0, v0, 0x4

    int-to-long v0, v0

    :try_start_11
    invoke-virtual {v2, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 424
    long-to-int v0, v4

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tencent/mapapi/map/bc;->c(IZ)[B

    move-result-object v0

    .line 426
    invoke-virtual {v2, v0}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_7

    .line 430
    if-eqz v2, :cond_c

    .line 432
    :try_start_12
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_e

    .line 438
    :cond_c
    :goto_d
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 427
    :catch_7
    move-exception v0

    .line 428
    if-eqz v2, :cond_c

    .line 432
    :try_start_13
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_8

    goto :goto_d

    :catch_8
    move-exception v0

    goto :goto_d

    .line 430
    :catchall_2
    move-exception v0

    if-eqz v2, :cond_d

    .line 432
    :try_start_14
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_f

    .line 436
    :cond_d
    :goto_e
    :try_start_15
    throw v0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    :catch_9
    move-exception v1

    goto/16 :goto_1

    :catch_a
    move-exception v1

    goto :goto_7

    :catch_b
    move-exception v1

    goto/16 :goto_3

    :catch_c
    move-exception v0

    goto :goto_b

    .line 417
    :catch_d
    move-exception v0

    goto :goto_c

    :catch_e
    move-exception v0

    goto :goto_d

    :catch_f
    move-exception v1

    goto :goto_e

    :catch_10
    move-exception v1

    move-object v1, v0

    goto :goto_a

    .line 396
    :catch_11
    move-exception v1

    goto :goto_9

    .line 369
    :catchall_3
    move-exception v0

    goto/16 :goto_6

    .line 366
    :catch_12
    move-exception v3

    goto/16 :goto_5

    .line 364
    :catch_13
    move-exception v3

    goto/16 :goto_4
.end method

.method public final d(Lcom/tencent/mapapi/map/aa;)Z
    .locals 9
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x4

    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 250
    iget v0, p1, Lcom/tencent/mapapi/map/aa;->a:I

    iget v3, p1, Lcom/tencent/mapapi/map/aa;->b:I

    iget v4, p1, Lcom/tencent/mapapi/map/aa;->Uc:I

    invoke-direct {p0, v0, v3, v4, v7}, Lcom/tencent/mapapi/map/bc;->b(IIIZ)[Ljava/lang/String;

    move-result-object v3

    .line 252
    if-eqz v3, :cond_0

    array-length v0, v3

    const/4 v4, 0x2

    if-ne v0, v4, :cond_0

    aget-object v0, v3, v1

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    aget-object v0, v3, v7

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    .line 323
    :goto_0
    return v0

    .line 256
    :cond_1
    new-instance v4, Ljava/io/File;

    aget-object v0, v3, v1

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 257
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 258
    goto :goto_0

    .line 260
    :cond_2
    iget v0, p1, Lcom/tencent/mapapi/map/aa;->a:I

    iget v5, p1, Lcom/tencent/mapapi/map/aa;->b:I

    invoke-static {v0, v5}, Lcom/tencent/mapapi/map/bc;->v(II)I

    move-result v5

    .line 261
    if-gez v5, :cond_3

    move v0, v1

    .line 262
    goto :goto_0

    .line 266
    :cond_3
    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v6, "r"

    invoke-direct {v0, v4, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 267
    mul-int/lit8 v4, v5, 0x4

    int-to-long v4, v4

    :try_start_1
    invoke-virtual {v0, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 273
    :goto_1
    new-array v4, v8, [B

    .line 277
    const/4 v5, 0x0

    const/4 v6, 0x4

    :try_start_2
    invoke-virtual {v0, v4, v5, v6}, Ljava/io/RandomAccessFile;->read([BII)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 279
    :goto_2
    invoke-static {v4, v7}, Lcom/tencent/mapapi/map/bc;->a([BZ)I

    move-result v4

    .line 285
    :try_start_3
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 287
    :goto_3
    const/4 v0, -0x1

    if-ne v4, v0, :cond_4

    move v0, v1

    .line 293
    goto :goto_0

    .line 296
    :cond_4
    const/4 v0, -0x2

    if-eq v4, v0, :cond_5

    .line 298
    const/4 v0, -0x3

    if-eq v4, v0, :cond_5

    .line 301
    const/16 v0, -0x64

    if-eq v4, v0, :cond_5

    .line 305
    aget-object v0, v3, v7

    invoke-static {v0, v4}, Lcom/tencent/mapapi/map/bc;->i(Ljava/lang/String;I)[B

    move-result-object v2

    .line 307
    :cond_5
    if-nez v2, :cond_6

    move v0, v1

    .line 308
    goto :goto_0

    .line 311
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 312
    iget v3, p1, Lcom/tencent/mapapi/map/aa;->a:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 313
    const-string v3, "-"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    iget v3, p1, Lcom/tencent/mapapi/map/aa;->b:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 315
    const-string v3, "-"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    iget v3, p1, Lcom/tencent/mapapi/map/aa;->Uc:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 317
    iget-object v3, p0, Lcom/tencent/mapapi/map/bc;->WO:Lcom/tencent/mapapi/map/an;

    if-nez v3, :cond_7

    move v0, v1

    .line 318
    goto :goto_0

    .line 321
    :cond_7
    iget-object v1, p0, Lcom/tencent/mapapi/map/bc;->WO:Lcom/tencent/mapapi/map/an;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/tencent/mapapi/map/an;->b([BLjava/lang/String;)Z

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v5

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v0, v2

    goto :goto_1

    :catch_3
    move-exception v4

    goto :goto_1

    .line 271
    :catch_4
    move-exception v0

    move-object v0, v2

    goto :goto_1

    :catch_5
    move-exception v4

    goto :goto_1
.end method
