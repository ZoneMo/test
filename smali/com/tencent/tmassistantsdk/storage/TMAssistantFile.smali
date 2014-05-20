.class public Lcom/tencent/tmassistantsdk/storage/TMAssistantFile;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static final DataBufferMaxLen:I = 0x4000

.field private static final TAG:Ljava/lang/String; = "TMAssistantFile"


# instance fields
.field protected mDataBufferDataLen:I

.field private mFileDataLen:J

.field protected mFileName:Ljava/lang/String;

.field protected mFileOutputStream:Ljava/io/FileOutputStream;

.field protected mWriteDataBuffer:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object v0, p0, Lcom/tencent/tmassistantsdk/storage/TMAssistantFile;->mFileName:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lcom/tencent/tmassistantsdk/storage/TMAssistantFile;->mFileOutputStream:Ljava/io/FileOutputStream;

    .line 33
    iput-object v0, p0, Lcom/tencent/tmassistantsdk/storage/TMAssistantFile;->mWriteDataBuffer:[B

    .line 34
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/tmassistantsdk/storage/TMAssistantFile;->mFileDataLen:J

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/tmassistantsdk/storage/TMAssistantFile;->mDataBufferDataLen:I

    .line 48
    iput-object p1, p0, Lcom/tencent/tmassistantsdk/storage/TMAssistantFile;->mFileName:Ljava/lang/String;

    .line 50
    invoke-virtual {p0}, Lcom/tencent/tmassistantsdk/storage/TMAssistantFile;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/tmassistantsdk/storage/TMAssistantFile;->mFileDataLen:J

    .line 51
    return-void
.end method

.method public static getSaveFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 291
    if-nez p0, :cond_1

    .line 302
    :cond_0
    :goto_0
    return-object v0

    .line 296
    :cond_1
    invoke-static {}, Lcom/tencent/tmassistantsdk/storage/TMAssistantFile;->getSavePathRootDir()Ljava/lang/String;

    move-result-object v1

    .line 297
    if-eqz v1, :cond_0

    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getSavePathRootDir()Ljava/lang/String;
    .locals 3

    .prologue
    .line 334
    invoke-static {}, Lcom/tencent/tmassistantsdk/storage/TMAssistantFile;->isSDCardExistAndCanWrite()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    invoke-static {}, Lcom/tencent/tmassistantsdk/util/GlobalUtil;->getInstance()Lcom/tencent/tmassistantsdk/util/GlobalUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmassistantsdk/util/GlobalUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 339
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/tencent/TMAssistantSDK/Download/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 340
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 356
    :goto_0
    return-object v0

    .line 344
    :cond_0
    const-string v0, "/TMAssistantSDK/Download"

    .line 345
    invoke-static {}, Lcom/tencent/tmassistantsdk/util/GlobalUtil;->getInstance()Lcom/tencent/tmassistantsdk/util/GlobalUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/tmassistantsdk/util/GlobalUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 346
    if-eqz v1, :cond_1

    .line 348
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 352
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static isSDCardExistAndCanWrite()Z
    .locals 2

    .prologue
    .line 372
    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private moveFileFromTmpToSavaPath(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 445
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 447
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 448
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 450
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 451
    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    .line 452
    if-eqz v0, :cond_0

    .line 453
    invoke-static {p2}, Lcom/tencent/tmassistantsdk/util/GlobalUtil;->updateFilePathAuthorized(Ljava/lang/String;)V

    .line 460
    :cond_0
    :goto_0
    return v0

    .line 459
    :cond_1
    const-string v0, "TMAssistantFile"

    const-string v1, "moveFileFromTmpToSavaPath failed "

    invoke-static {v0, v1}, Lcom/tencent/tmassistantsdk/util/TMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeData(Ljava/io/FileOutputStream;[BIIJ)Z
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v3, 0x4000

    const/4 v0, 0x0

    .line 378
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 439
    :cond_0
    :goto_0
    return v0

    .line 384
    :cond_1
    iget-wide v1, p0, Lcom/tencent/tmassistantsdk/storage/TMAssistantFile;->mFileDataLen:J

    cmp-long v1, p5, v1

    if-eqz v1, :cond_2

    .line 386
    const-string v1, "TMAssistantFile"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "writeData0 failed,filelen:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/tencent/tmassistantsdk/storage/TMAssistantFile;->mFileDataLen:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",offset:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",filename:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/tmassistantsdk/storage/TMAssistantFile;->mFileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/tmassistantsdk/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 391
    :cond_2
    if-lt p4, v3, :cond_4

    .line 396
    :try_start_0
    iget v1, p0, Lcom/tencent/tmassistantsdk/storage/TMAssistantFile;->mDataBufferDataLen:I

    if-lez v1, :cond_3

    .line 398
    iget-object v1, p0, Lcom/tencent/tmassistantsdk/storage/TMAssistantFile;->mWriteDataBuffer:[B

    const/4 v2, 0x0

    iget v3, p0, Lcom/tencent/tmassistantsdk/storage/TMAssistantFile;->mDataBufferDataLen:I

    invoke-virtual {p1, v1, v2, v3}, Ljava/io/FileOutputStream;->write([BII)V

    .line 399
    const/4 v1, 0x0

    iput v1, p0, Lcom/tencent/tmassistantsdk/storage/TMAssistantFile;->mDataBufferDataLen:I

    .line 403
    :cond_3
    invoke-virtual {p1, p2, p3, p4}, Ljava/io/FileOutputStream;->write([BII)V

    .line 404
    iget-wide v1, p0, Lcom/tencent/tmassistantsdk/storage/TMAssistantFile;->mFileDataLen:J

    int-to-long v3, p4

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/tencent/tmassistantsdk/storage/TMAssistantFile;->mFileDataLen:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 439
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 406
    :catch_0
    move-exception v1

    .line 408
    const-string v2, "TMAssistantFile"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "writeData1 failed "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/tmassistantsdk/util/TMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 416
    :cond_4
    iget v1, p0, Lcom/tencent/tmassistantsdk/storage/TMAssistantFile;->mDataBufferDataLen:I

    add-int/2addr v1, p4

    if-le v1, v3, :cond_5

    .line 419
    iget v1, p0, Lcom/tencent/tmassistantsdk/storage/TMAssistantFile;->mDataBufferDataLen:I

    if-lez v1, :cond_5

    .line 423
    :try_start_1
    iget-object v1, p0, Lcom/tencent/tmassistantsdk/storage/TMAssistantFile;->mWriteDataBuffer:[B

    const/4 v2, 0x0

    iget v3, p0, Lcom/tencent/tmassistantsdk/storage/TMAssistantFile;->mDataBufferDataLen:I

    invoke-virtual {p1, v1, v2, v3}, Ljava/io/FileOutputStream;->write([BII)V

    .line 424
    const/4 v1, 0x0

    iput v1, p0, Lcom/tencent/tmassistantsdk/storage/TMAssistantFile;->mDataBufferDataLen:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 435
    :cond_5
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/storage/TMAssistantFile;->mWriteDataBuffer:[B

    iget v1, p0, Lcom/tencent/tmassistantsdk/storage/TMAssistantFile;->mDataBufferDataLen:I

    invoke-static {p2, p3, v0, v1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 436
    iget v0, p0, Lcom/tencent/tmassistantsdk/storage/TMAssistantFile;->mDataBufferDataLen:I

    add-int/2addr v0, p4

    iput v0, p0, Lcom/tencent/tmassistantsdk/storage/TMAssistantFile;->mDataBufferDataLen:I

    .line 437
    iget-wide v0, p0, Lcom/tencent/tmassistantsdk/storage/TMAssistantFile;->mFileDataLen:J

    int-to-long v2, p4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tencent/tmassistantsdk/storage/TMAssistantFile;->mFileDataLen:J

    goto :goto_1

    .line 426
    :catch_1
    move-exception v1

    .line 428
    const-string v2, "TMAssistantFile"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "writeData2 failed "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/tmassistantsdk/util/TMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 2

    .prologue
    .line 265
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/tmassistantsdk/storage/TMAssistantFile;->flush()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 269
    :try_start_1
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/storage/TMAssistantFile;->mFileOutputStream:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/storage/TMAssistantFile;->mFileOutputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 276
    :cond_0
    :goto_0
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/tencent/tmassistantsdk/storage/TMAssistantFile;->mFileOutputStream:Ljava/io/FileOutputStream;

    .line 279
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tmassistantsdk/storage/TMAssistantFile;->mWriteDataBuffer:[B

    .line 280
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/tmassistantsdk/storage/TMAssistantFile;->mFileDataLen:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 281
    monitor-exit p0

    return-void

    .line 265
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public deleteFile()V
    .locals 5

    .prologue
    .line 75
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/storage/TMAssistantFile;->mFileName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tencent/tmassistantsdk/storage/TMAssistantFile;->getTmpFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 76
    const-string v1, "TMAssistantFile"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "deleteFile 1 tmpFilePathString: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/tmassistantsdk/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 79
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 80
    const-string v2, "TMAssistantFile"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "deleteFile 2 file: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/tmassistantsdk/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 83
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    .line 84
    const-string v2, "TMAssistantFile"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "deleteFile result:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ",filename:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/tmassistantsdk/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    const-string v0, "TMAssistantFile"

    const-string v1, "deleteFile 3"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantsdk/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method ensureFilePath(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 138
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 140
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "fileFullPath is null or the filename.size is zero."

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_0
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 144
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v0, :cond_2

    .line 146
    :cond_1
    new-instance v0, Ljava/security/InvalidParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "fileFullPath is not a valid full path. fileName: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_2
    if-lez v1, :cond_3

    .line 152
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 156
    :cond_3
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 157
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_4

    .line 159
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    .line 162
    :cond_4
    if-nez v0, :cond_5

    .line 166
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to create directory. dir: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :cond_5
    return-void
.end method

.method public exists()Z
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/storage/TMAssistantFile;->mFileName:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/tmassistantsdk/storage/TMAssistantFile;->getSaveFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 62
    if-eqz v0, :cond_0

    .line 64
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    .line 67
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized flush()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 239
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/tencent/tmassistantsdk/storage/TMAssistantFile;->mFileOutputStream:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_0

    .line 241
    iget v1, p0, Lcom/tencent/tmassistantsdk/storage/TMAssistantFile;->mDataBufferDataLen:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v1, :cond_0

    .line 245
    :try_start_1
    iget-object v1, p0, Lcom/tencent/tmassistantsdk/storage/TMAssistantFile;->mFileOutputStream:Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/tencent/tmassistantsdk/storage/TMAssistantFile;->mWriteDataBuffer:[B

    const/4 v3, 0x0

    iget v4, p0, Lcom/tencent/tmassistantsdk/storage/TMAssistantFile;->mDataBufferDataLen:I

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/FileOutputStream;->write([BII)V

    .line 246
    const/4 v1, 0x0

    iput v1, p0, Lcom/tencent/tmassistantsdk/storage/TMAssistantFile;->mDataBufferDataLen:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 248
    const/4 v0, 0x1

    .line 257
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 250
    :catch_0
    move-exception v1

    .line 252
    :try_start_2
    const-string v2, "TMAssistantFile"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "flush failed "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/tmassistantsdk/util/TMLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 239
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getTmpFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 313
    if-nez p1, :cond_1

    .line 324
    :cond_0
    :goto_0
    return-object v0

    .line 318
    :cond_1
    invoke-static {}, Lcom/tencent/tmassistantsdk/storage/TMAssistantFile;->getSavePathRootDir()Ljava/lang/String;

    move-result-object v1

    .line 319
    if-eqz v1, :cond_0

    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/.tmp/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public length()J
    .locals 4

    .prologue
    const-wide/16 v0, 0x0

    .line 99
    iget-object v2, p0, Lcom/tencent/tmassistantsdk/storage/TMAssistantFile;->mFileName:Ljava/lang/String;

    invoke-static {v2}, Lcom/tencent/tmassistantsdk/storage/TMAssistantFile;->getSaveFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 100
    if-eqz v2, :cond_1

    .line 102
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 103
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    .line 106
    iget-object v2, p0, Lcom/tencent/tmassistantsdk/storage/TMAssistantFile;->mFileName:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/tencent/tmassistantsdk/storage/TMAssistantFile;->getTmpFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 107
    if-eqz v2, :cond_0

    .line 109
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 110
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 112
    iput-wide v0, p0, Lcom/tencent/tmassistantsdk/storage/TMAssistantFile;->mFileDataLen:J

    .line 124
    :cond_0
    :goto_0
    iget-wide v0, p0, Lcom/tencent/tmassistantsdk/storage/TMAssistantFile;->mFileDataLen:J

    .line 127
    :cond_1
    return-wide v0

    .line 116
    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/tmassistantsdk/storage/TMAssistantFile;->mFileDataLen:J

    goto :goto_0

    .line 122
    :cond_3
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/tmassistantsdk/storage/TMAssistantFile;->mFileDataLen:J

    goto :goto_0
.end method

.method public moveFileToSavaPath()V
    .locals 2

    .prologue
    .line 364
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/storage/TMAssistantFile;->mFileName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tencent/tmassistantsdk/storage/TMAssistantFile;->getTmpFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tmassistantsdk/storage/TMAssistantFile;->mFileName:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/tmassistantsdk/storage/TMAssistantFile;->getSaveFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/tencent/tmassistantsdk/storage/TMAssistantFile;->moveFileFromTmpToSavaPath(Ljava/lang/String;Ljava/lang/String;)Z

    .line 365
    return-void
.end method

.method public declared-synchronized write([BIIJZ)Z
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v7, 0x1

    .line 184
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/tencent/tmassistantsdk/storage/TMAssistantFile;->mFileOutputStream:Ljava/io/FileOutputStream;

    if-nez v1, :cond_0

    .line 186
    iget-object v1, p0, Lcom/tencent/tmassistantsdk/storage/TMAssistantFile;->mFileName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/tencent/tmassistantsdk/storage/TMAssistantFile;->getTmpFilePath(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 187
    if-eqz v1, :cond_2

    .line 192
    :try_start_1
    invoke-virtual {p0, v1}, Lcom/tencent/tmassistantsdk/storage/TMAssistantFile;->ensureFilePath(Ljava/lang/String;)V

    .line 193
    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    iput-object v2, p0, Lcom/tencent/tmassistantsdk/storage/TMAssistantFile;->mFileOutputStream:Ljava/io/FileOutputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 209
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/storage/TMAssistantFile;->mWriteDataBuffer:[B

    if-nez v0, :cond_1

    .line 211
    const/16 v0, 0x4000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/tencent/tmassistantsdk/storage/TMAssistantFile;->mWriteDataBuffer:[B

    .line 212
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/tmassistantsdk/storage/TMAssistantFile;->mDataBufferDataLen:I

    .line 216
    :cond_1
    iget-object v1, p0, Lcom/tencent/tmassistantsdk/storage/TMAssistantFile;->mFileOutputStream:Ljava/io/FileOutputStream;

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/tencent/tmassistantsdk/storage/TMAssistantFile;->writeData(Ljava/io/FileOutputStream;[BIIJ)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    .line 217
    if-nez v0, :cond_3

    .line 231
    :goto_0
    monitor-exit p0

    return v0

    .line 195
    :catch_0
    move-exception v1

    .line 197
    :try_start_3
    const-string v2, "TMAssistantFile"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "write failed"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/tmassistantsdk/util/TMLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 184
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 204
    :cond_2
    :try_start_4
    const-string v1, "TMAssistantFile"

    const-string v2, "write failed tmpFilePathString is null"

    invoke-static {v1, v2}, Lcom/tencent/tmassistantsdk/util/TMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 223
    :cond_3
    if-ne p6, v7, :cond_4

    .line 225
    invoke-virtual {p0}, Lcom/tencent/tmassistantsdk/storage/TMAssistantFile;->flush()Z

    move-result v0

    if-ne v0, v7, :cond_4

    .line 228
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/storage/TMAssistantFile;->mFileName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tencent/tmassistantsdk/storage/TMAssistantFile;->getTmpFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tmassistantsdk/storage/TMAssistantFile;->mFileName:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/tmassistantsdk/storage/TMAssistantFile;->getSaveFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/tencent/tmassistantsdk/storage/TMAssistantFile;->moveFileFromTmpToSavaPath(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v0

    goto :goto_0

    :cond_4
    move v0, v7

    .line 231
    goto :goto_0
.end method
