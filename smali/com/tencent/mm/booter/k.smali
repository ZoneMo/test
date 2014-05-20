.class public final Lcom/tencent/mm/booter/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/model/al;


# instance fields
.field private bZA:Ljava/lang/String;

.field private bZB:Ljava/lang/String;

.field private bZC:Ljava/lang/String;

.field private bZD:Landroid/media/MediaPlayer;

.field private volatile bZE:I

.field private bZF:Ljava/io/RandomAccessFile;

.field private bZG:J

.field private bZH:Lcom/tencent/mm/network/bd;

.field private bZI:Ljava/io/InputStream;

.field private bZJ:Lcom/tencent/mm/compatible/g/c;

.field private bZK:Ljava/io/FileInputStream;

.field private volatile bZL:Z

.field private volatile bZM:Z

.field private bZN:Lcom/tencent/mm/sdk/platformtools/ay;

.field private bZO:Ljava/util/List;

.field private bZP:J

.field private bZQ:Z

.field private bZR:Z

.field private bZS:Z

.field private bZT:Lcom/tencent/mm/sdk/platformtools/bg;

.field private bZU:Z

.field private bZV:Landroid/util/SparseArray;

.field private bZW:I

.field private bZg:Z

.field private bZh:Lcom/tencent/mm/compatible/g/a;

.field private bZz:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private volatile currentIndex:I

.field private final lock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/booter/k;->bZA:Ljava/lang/String;

    .line 80
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/booter/k;->bZB:Ljava/lang/String;

    .line 81
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/booter/k;->bZC:Ljava/lang/String;

    .line 84
    iput v3, p0, Lcom/tencent/mm/booter/k;->bZE:I

    .line 87
    iput-wide v6, p0, Lcom/tencent/mm/booter/k;->bZG:J

    .line 97
    iput-boolean v3, p0, Lcom/tencent/mm/booter/k;->bZM:Z

    .line 99
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/booter/k;->lock:Ljava/lang/Object;

    .line 102
    new-instance v0, Lcom/tencent/mm/sdk/platformtools/ay;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/booter/l;

    invoke-direct {v2, p0}, Lcom/tencent/mm/booter/l;-><init>(Lcom/tencent/mm/booter/k;)V

    invoke-direct {v0, v1, v2, v5}, Lcom/tencent/mm/sdk/platformtools/ay;-><init>(Landroid/os/Looper;Lcom/tencent/mm/sdk/platformtools/az;Z)V

    iput-object v0, p0, Lcom/tencent/mm/booter/k;->bZN:Lcom/tencent/mm/sdk/platformtools/ay;

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/booter/k;->bZO:Ljava/util/List;

    .line 133
    iput-wide v6, p0, Lcom/tencent/mm/booter/k;->bZP:J

    .line 137
    iput-boolean v3, p0, Lcom/tencent/mm/booter/k;->bZQ:Z

    .line 144
    iput-boolean v3, p0, Lcom/tencent/mm/booter/k;->bZR:Z

    .line 147
    iput-boolean v5, p0, Lcom/tencent/mm/booter/k;->bZS:Z

    .line 149
    new-instance v0, Lcom/tencent/mm/sdk/platformtools/bg;

    invoke-direct {v0}, Lcom/tencent/mm/sdk/platformtools/bg;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/booter/k;->bZT:Lcom/tencent/mm/sdk/platformtools/bg;

    .line 151
    iput-boolean v3, p0, Lcom/tencent/mm/booter/k;->bZg:Z

    .line 153
    iput-boolean v3, p0, Lcom/tencent/mm/booter/k;->bZU:Z

    .line 156
    iput v4, p0, Lcom/tencent/mm/booter/k;->currentIndex:I

    .line 158
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/booter/k;->bZV:Landroid/util/SparseArray;

    .line 1556
    iput v4, p0, Lcom/tencent/mm/booter/k;->bZW:I

    .line 266
    iget-object v0, p0, Lcom/tencent/mm/booter/k;->bZT:Lcom/tencent/mm/sdk/platformtools/bg;

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/sdk/platformtools/bg;->bz(Landroid/content/Context;)V

    .line 267
    iget-object v0, p0, Lcom/tencent/mm/booter/k;->bZT:Lcom/tencent/mm/sdk/platformtools/bg;

    new-instance v1, Lcom/tencent/mm/booter/q;

    invoke-direct {v1, p0}, Lcom/tencent/mm/booter/q;-><init>(Lcom/tencent/mm/booter/k;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/sdk/platformtools/bg;->a(Lcom/tencent/mm/sdk/platformtools/bi;)V

    .line 292
    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/booter/k;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 54
    iput p1, p0, Lcom/tencent/mm/booter/k;->bZE:I

    return p1
.end method

.method static synthetic a(Lcom/tencent/mm/booter/k;)Landroid/media/MediaPlayer;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/tencent/mm/booter/k;->bZD:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/mm/booter/k;Lcom/tencent/mm/compatible/g/a;)Lcom/tencent/mm/compatible/g/a;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/tencent/mm/booter/k;->bZh:Lcom/tencent/mm/compatible/g/a;

    return-object p1
.end method

.method private static a(Lcom/tencent/mm/protocal/a/or;Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mm/protocal/a/or;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1665
    new-instance v0, Lcom/tencent/mm/protocal/a/or;

    invoke-direct {v0}, Lcom/tencent/mm/protocal/a/or;-><init>()V

    .line 1667
    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/mm/protocal/a/or;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/a/or;->bD([B)Lcom/tencent/mm/protocal/a/or;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1673
    iput-object p1, v0, Lcom/tencent/mm/protocal/a/or;->fQf:Ljava/lang/String;

    .line 1674
    iput-object p2, v0, Lcom/tencent/mm/protocal/a/or;->fyE:Ljava/lang/String;

    .line 1675
    :goto_0
    return-object v0

    .line 1669
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;ZLcom/tencent/mm/pointers/PBool;)Ljava/lang/String;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 443
    if-nez p2, :cond_0

    invoke-static {p1}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, p0

    .line 449
    :goto_0
    invoke-static {v0}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 468
    :goto_1
    return-object v0

    :cond_1
    move-object v0, p1

    .line 446
    goto :goto_0

    .line 453
    :cond_2
    new-instance v1, Lcom/tencent/mm/pointers/PString;

    invoke-direct {v1}, Lcom/tencent/mm/pointers/PString;-><init>()V

    .line 454
    const-string v2, "MicroMsg.DownloadPlayer"

    const-string v3, "url[%s], lowBandUrl[%s], isWifi[%B]"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 456
    const-string v2, "http://y.qq.com/i/song.html#p="

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 457
    const/16 v2, 0x1e

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2, v1}, Lcom/tencent/mm/booter/k;->a(Ljava/lang/String;ZLcom/tencent/mm/pointers/PString;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 459
    iput-boolean p2, p3, Lcom/tencent/mm/pointers/PBool;->value:Z

    .line 468
    :cond_3
    :goto_2
    iget-object v0, v1, Lcom/tencent/mm/pointers/PString;->value:Ljava/lang/String;

    goto :goto_1

    .line 461
    :cond_4
    const-string v2, "wechat_music_url="

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 462
    const-string v2, "wechat_music_url="

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x11

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2, v1}, Lcom/tencent/mm/booter/k;->a(Ljava/lang/String;ZLcom/tencent/mm/pointers/PString;)Z

    goto :goto_2

    .line 466
    :cond_5
    iput-object v0, v1, Lcom/tencent/mm/pointers/PString;->value:Ljava/lang/String;

    goto :goto_2
.end method

.method static synthetic a(Lcom/tencent/mm/booter/k;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-direct/range {p0 .. p5}, Lcom/tencent/mm/booter/k;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private a(Lcom/tencent/mm/protocal/a/or;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 385
    const-string v1, "MicroMsg.DownloadPlayer"

    const-string v2, "init current music data: musicwrapper %s"

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Object;

    if-nez p1, :cond_0

    const-string v0, "null"

    :goto_0
    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 388
    iget-object v0, p0, Lcom/tencent/mm/booter/k;->bZV:Landroid/util/SparseArray;

    invoke-virtual {v0, v4, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 391
    iput v4, p0, Lcom/tencent/mm/booter/k;->currentIndex:I

    .line 395
    return-void

    .line 385
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Ljava/io/FileDescriptor;)V
    .locals 2
    .parameter

    .prologue
    .line 849
    const-string v0, "MicroMsg.DownloadPlayer"

    const-string v1, "start play"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 850
    new-instance v0, Lcom/tencent/mm/booter/u;

    invoke-direct {v0, p0, p1}, Lcom/tencent/mm/booter/u;-><init>(Lcom/tencent/mm/booter/k;Ljava/io/FileDescriptor;)V

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/an;->i(Ljava/lang/Runnable;)V

    .line 856
    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/booter/k;Ljava/io/FileDescriptor;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/tencent/mm/booter/k;->b(Ljava/io/FileDescriptor;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/tencent/mm/booter/k;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/tencent/mm/booter/k;->bZg:Z

    return p1
.end method

.method private static a(Ljava/lang/String;ZLcom/tencent/mm/pointers/PString;)Z
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 488
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lcom/tencent/mm/booter/k;->aO(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 489
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 490
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 491
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 495
    :cond_0
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 496
    const-string v0, "song_WapLiveURL"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 497
    const-string v0, "song_WifiURL"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 498
    const-string v2, "MicroMsg.DownloadPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "waplive: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  wifi:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    if-eqz p1, :cond_1

    :goto_0
    iput-object v0, p2, Lcom/tencent/mm/pointers/PString;->value:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 500
    const/4 v0, 0x1

    .line 503
    :goto_1
    return v0

    :cond_1
    move-object v0, v1

    .line 499
    goto :goto_0

    .line 502
    :catch_0
    move-exception v0

    iput-object p0, p2, Lcom/tencent/mm/pointers/PString;->value:Ljava/lang/String;

    .line 503
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private aL(Ljava/lang/String;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 508
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/tencent/mm/booter/k;->bZz:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/mm/a/f;->h([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 509
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 510
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 511
    const-string v2, "MicroMsg.DownloadPlayer"

    const-string v4, "try play url exist! %s"

    new-array v5, v1, [Ljava/lang/Object;

    aput-object p1, v5, v0

    invoke-static {v2, v4, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 514
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v2, p0, Lcom/tencent/mm/booter/k;->bZK:Ljava/io/FileInputStream;

    .line 515
    iget-object v2, p0, Lcom/tencent/mm/booter/k;->bZK:Ljava/io/FileInputStream;

    invoke-virtual {v2}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/tencent/mm/booter/k;->b(Ljava/io/FileDescriptor;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_1

    .line 524
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 522
    goto :goto_0

    .line 519
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private declared-synchronized aM(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 810
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/tencent/mm/booter/k;->bZG:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 819
    :goto_0
    monitor-exit p0

    return-void

    .line 813
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 815
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/tencent/mm/booter/k;->bZG:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 817
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 818
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 810
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized aN(Ljava/lang/String;)V
    .locals 5
    .parameter

    .prologue
    .line 1057
    monitor-enter p0

    :try_start_0
    const-string v0, "MicroMsg.DownloadPlayer"

    const-string v1, "stopDownLoad"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1059
    :try_start_1
    iget-object v0, p0, Lcom/tencent/mm/booter/k;->bZH:Lcom/tencent/mm/network/bd;

    if-eqz v0, :cond_0

    .line 1060
    iget-object v0, p0, Lcom/tencent/mm/booter/k;->bZH:Lcom/tencent/mm/network/bd;

    invoke-virtual {v0}, Lcom/tencent/mm/network/bd;->disconnect()V

    .line 1061
    iget-object v0, p0, Lcom/tencent/mm/booter/k;->bZI:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 1064
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/booter/k;->bZF:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_1

    .line 1065
    iget-object v0, p0, Lcom/tencent/mm/booter/k;->bZF:Ljava/io/RandomAccessFile;

    iget-wide v1, p0, Lcom/tencent/mm/booter/k;->bZG:J

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 1066
    iget-object v0, p0, Lcom/tencent/mm/booter/k;->bZF:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 1067
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1068
    const-string v1, "MicroMsg.DownloadPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "stopDownLoad temFileLen:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " downloadFileLen:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/tencent/mm/booter/k;->bZG:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1070
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/booter/k;->bZF:Ljava/io/RandomAccessFile;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1074
    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    :try_start_2
    iput-wide v0, p0, Lcom/tencent/mm/booter/k;->bZG:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1077
    monitor-exit p0

    return-void

    .line 1072
    :catch_0
    move-exception v0

    .line 1073
    :try_start_3
    const-string v1, "MicroMsg.DownloadPlayer"

    const-string v2, "stop download error[%s]"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1057
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static aO(Ljava/lang/String;)[B
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1101
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    rem-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    new-array v0, v0, [B

    move v3, v2

    move v4, v2

    .line 1104
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v3, v1, :cond_0

    .line 1105
    add-int/lit8 v1, v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 1106
    invoke-static {v3}, Lcom/tencent/mm/booter/k;->h(C)I

    move-result v6

    .line 1108
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 1109
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1110
    invoke-static {v1}, Lcom/tencent/mm/booter/k;->h(C)I

    move-result v1

    .line 1112
    :goto_1
    add-int/lit8 v5, v4, 0x1

    shl-int/lit8 v6, v6, 0x4

    or-int/2addr v1, v6

    int-to-byte v1, v1

    aput-byte v1, v0, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v5

    .line 1113
    goto :goto_0

    .line 1115
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    .line 1117
    :cond_0
    return-object v0

    :cond_1
    move v3, v1

    move v1, v2

    goto :goto_1
.end method

.method static synthetic b(Lcom/tencent/mm/booter/k;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/tencent/mm/booter/k;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method private declared-synchronized b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 550
    monitor-enter p0

    :try_start_0
    const-string v0, "MicroMsg.DownloadPlayer"

    const-string v1, "begin down load file job"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/mm/booter/k;->bZG:J

    .line 552
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/booter/k;->bZL:Z

    .line 553
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 554
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 556
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 557
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 558
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 559
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 563
    :cond_0
    const-string v2, "MicroMsg.DownloadPlayer"

    const-string v3, "file.name[%s], file.length[%d], configFile.exists[%B], configFile.length[%d]"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 567
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->length()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 570
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v2, v2

    new-array v2, v2, [B

    .line 571
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 572
    invoke-virtual {v3, v2}, Ljava/io/FileInputStream;->read([B)I

    .line 573
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 574
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/tencent/mm/booter/k;->bZG:J

    .line 575
    const-string v0, "MicroMsg.DownloadPlayer"

    const-string v2, "get download file length[%d]"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-wide v5, p0, Lcom/tencent/mm/booter/k;->bZG:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 582
    :cond_1
    :goto_0
    :try_start_2
    invoke-static {p4}, Lcom/tencent/mm/network/k;->hD(Ljava/lang/String;)Lcom/tencent/mm/network/bd;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/booter/k;->bZH:Lcom/tencent/mm/network/bd;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 611
    :try_start_3
    iget-object v0, p0, Lcom/tencent/mm/booter/k;->bZH:Lcom/tencent/mm/network/bd;

    const-string v2, "GET"

    invoke-virtual {v0, v2}, Lcom/tencent/mm/network/bd;->setRequestMethod(Ljava/lang/String;)V

    .line 615
    iget-object v0, p0, Lcom/tencent/mm/booter/k;->bZH:Lcom/tencent/mm/network/bd;

    const/16 v2, 0x61a8

    invoke-virtual {v0, v2}, Lcom/tencent/mm/network/bd;->setConnectTimeout(I)V

    .line 616
    iget-wide v2, p0, Lcom/tencent/mm/booter/k;->bZG:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    .line 617
    iget-object v0, p0, Lcom/tencent/mm/booter/k;->bZH:Lcom/tencent/mm/network/bd;

    const-string v2, "range"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "bytes="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/tencent/mm/booter/k;->bZG:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/tencent/mm/network/bd;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    const-string v0, "MicroMsg.DownloadPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "range :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/tencent/mm/booter/k;->bZG:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    :cond_2
    if-nez p5, :cond_3

    invoke-static {p4}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_4

    .line 622
    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/booter/k;->bZH:Lcom/tencent/mm/network/bd;

    const-string v2, "Cookie"

    const-string v3, "qqmusic_fromtag=46;qqmusic_uin=1234567;qqmusic_key=;"

    invoke-virtual {v0, v2, v3}, Lcom/tencent/mm/network/bd;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    iget-object v0, p0, Lcom/tencent/mm/booter/k;->bZH:Lcom/tencent/mm/network/bd;

    const-string v2, "referer"

    const-string v3, "stream12.qqmusic.qq.com"

    invoke-virtual {v0, v2, v3}, Lcom/tencent/mm/network/bd;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/booter/k;->bZH:Lcom/tencent/mm/network/bd;

    const-string v2, "user-agent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http.agent"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Built-in music  MicroMessenger/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/mm/booter/k;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/tencent/mm/booter/k;->z(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/tencent/mm/network/bd;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    iget-object v0, p0, Lcom/tencent/mm/booter/k;->bZH:Lcom/tencent/mm/network/bd;

    invoke-virtual {v0}, Lcom/tencent/mm/network/bd;->getResponseCode()I

    move-result v0

    const/16 v2, 0xc8

    if-eq v0, v2, :cond_7

    iget-object v0, p0, Lcom/tencent/mm/booter/k;->bZH:Lcom/tencent/mm/network/bd;

    invoke-virtual {v0}, Lcom/tencent/mm/network/bd;->getResponseCode()I

    move-result v0

    const/16 v2, 0xce

    if-eq v0, v2, :cond_7

    .line 632
    const-string v0, "MicroMsg.DownloadPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http req error "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/mm/booter/k;->bZH:Lcom/tencent/mm/network/bd;

    invoke-virtual {v2}, Lcom/tencent/mm/network/bd;->getResponseCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    new-instance v0, Lcom/tencent/mm/booter/t;

    invoke-direct {v0, p0}, Lcom/tencent/mm/booter/t;-><init>(Lcom/tencent/mm/booter/k;)V

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/an;->i(Ljava/lang/Runnable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 806
    :cond_5
    :goto_2
    monitor-exit p0

    return-void

    .line 576
    :catch_0
    move-exception v0

    .line 577
    :try_start_4
    const-string v2, "MicroMsg.DownloadPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "read configFile err:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 776
    :catch_1
    move-exception v0

    :try_start_5
    iget-wide v0, p0, Lcom/tencent/mm/booter/k;->bZP:J

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/au;->O(J)J

    move-result-wide v0

    .line 778
    const-string v2, "MicroMsg.DownloadPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "delt:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    if-lez v0, :cond_12

    .line 784
    iget-object v0, p0, Lcom/tencent/mm/booter/k;->bZO:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .line 550
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 585
    :catch_2
    move-exception v0

    :try_start_6
    invoke-virtual {p0}, Lcom/tencent/mm/booter/k;->release()V

    .line 587
    iget-object v1, p0, Lcom/tencent/mm/booter/k;->lock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 588
    :try_start_7
    new-instance v0, Lcom/tencent/mm/booter/s;

    invoke-direct {v0, p0}, Lcom/tencent/mm/booter/s;-><init>(Lcom/tencent/mm/booter/k;)V

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/an;->i(Ljava/lang/Runnable;)V

    .line 609
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    :try_start_8
    monitor-exit v1

    throw v0

    .line 621
    :cond_6
    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    const-string v2, ".qq.com"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v2, "MicroMsg.DownloadPlayer"

    const-string v3, "url %s match ? %B"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p4, v4, v5

    const/4 v5, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 658
    :cond_7
    const-string v0, "MicroMsg.DownloadPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "user-agent: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tencent/mm/booter/k;->bZH:Lcom/tencent/mm/network/bd;

    const-string v4, "user-agent"

    invoke-virtual {v3, v4}, Lcom/tencent/mm/network/bd;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    const-string v0, "MicroMsg.DownloadPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "content-range: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tencent/mm/booter/k;->bZH:Lcom/tencent/mm/network/bd;

    const-string v4, "Content-Range"

    invoke-virtual {v3, v4}, Lcom/tencent/mm/network/bd;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    iget-wide v2, p0, Lcom/tencent/mm/booter/k;->bZG:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_8

    invoke-direct {p0}, Lcom/tencent/mm/booter/k;->oy()Z

    move-result v0

    if-nez v0, :cond_8

    .line 662
    const-string v0, "MicroMsg.DownloadPlayer"

    const-string v2, "not continue download"

    invoke-static {v0, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 664
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 665
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/mm/booter/k;->bZG:J

    .line 666
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 667
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 668
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 672
    :cond_8
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "rws"

    invoke-direct {v0, p2, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/mm/booter/k;->bZF:Ljava/io/RandomAccessFile;

    .line 674
    iget-wide v0, p0, Lcom/tencent/mm/booter/k;->bZG:J
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    const-wide/32 v2, 0x989680

    add-long/2addr v0, v2

    .line 676
    :try_start_9
    iget-object v2, p0, Lcom/tencent/mm/booter/k;->bZH:Lcom/tencent/mm/network/bd;

    const-string v3, "Content-Length"

    invoke-virtual {v2, v3}, Lcom/tencent/mm/network/bd;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 678
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_9

    .line 679
    iget-wide v0, p0, Lcom/tencent/mm/booter/k;->bZG:J
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    add-long/2addr v0, v2

    :cond_9
    move-wide v3, v0

    .line 685
    :goto_4
    :try_start_a
    iget-object v0, p0, Lcom/tencent/mm/booter/k;->bZF:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, v3, v4}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 686
    iget-object v0, p0, Lcom/tencent/mm/booter/k;->bZF:Ljava/io/RandomAccessFile;

    iget-wide v1, p0, Lcom/tencent/mm/booter/k;->bZG:J

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 688
    iget-object v0, p0, Lcom/tencent/mm/booter/k;->bZH:Lcom/tencent/mm/network/bd;

    invoke-virtual {v0}, Lcom/tencent/mm/network/bd;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/booter/k;->bZI:Ljava/io/InputStream;

    .line 690
    const/16 v0, 0x1000

    new-array v5, v0, [B

    .line 693
    const/4 v0, 0x0

    .line 695
    const-wide/16 v1, 0x0

    .line 697
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/tencent/mm/booter/k;->bZU:Z

    .line 699
    :cond_a
    :goto_5
    iget-object v6, p0, Lcom/tencent/mm/booter/k;->bZI:Ljava/io/InputStream;

    rsub-int v7, v0, 0x1000

    invoke-virtual {v6, v5, v0, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_e

    .line 700
    add-int v7, v0, v6

    const/16 v8, 0x1000

    if-ge v7, v8, :cond_b

    .line 701
    add-int/2addr v0, v6

    .line 706
    goto :goto_5

    .line 681
    :catch_3
    move-exception v2

    .line 682
    const-string v3, "MicroMsg.DownloadPlayer"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Long.parseLong(Content-Length)"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v3, v0

    goto :goto_4

    .line 709
    :cond_b
    const/4 v0, 0x0

    .line 710
    iget-object v6, p0, Lcom/tencent/mm/booter/k;->bZF:Ljava/io/RandomAccessFile;

    const/4 v7, 0x0

    const/16 v8, 0x1000

    invoke-virtual {v6, v5, v7, v8}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 711
    iget-wide v6, p0, Lcom/tencent/mm/booter/k;->bZG:J

    const-wide/16 v8, 0x1000

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/tencent/mm/booter/k;->bZG:J

    .line 713
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 716
    invoke-direct {p0, p3}, Lcom/tencent/mm/booter/k;->aM(Ljava/lang/String;)V

    .line 727
    iget-boolean v6, p0, Lcom/tencent/mm/booter/k;->bZU:Z

    if-eqz v6, :cond_c

    iget-wide v6, p0, Lcom/tencent/mm/booter/k;->bZG:J

    const-wide/32 v8, 0x186a0

    add-long/2addr v8, v1

    cmp-long v6, v6, v8

    if-lez v6, :cond_c

    .line 729
    const-string v1, "MicroMsg.DownloadPlayer"

    const-string v2, "begin play"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tencent/mm/booter/k;->bZU:Z

    .line 731
    iget-wide v1, p0, Lcom/tencent/mm/booter/k;->bZG:J

    .line 732
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 733
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v7, p0, Lcom/tencent/mm/booter/k;->bZK:Ljava/io/FileInputStream;

    .line 734
    iget-object v6, p0, Lcom/tencent/mm/booter/k;->bZK:Ljava/io/FileInputStream;

    invoke-virtual {v6}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/tencent/mm/booter/k;->a(Ljava/io/FileDescriptor;)V

    .line 737
    :cond_c
    iget-wide v6, p0, Lcom/tencent/mm/booter/k;->bZG:J

    cmp-long v6, v6, v3

    if-lez v6, :cond_d

    .line 738
    iget-object v6, p0, Lcom/tencent/mm/booter/k;->bZF:Ljava/io/RandomAccessFile;

    iget-wide v7, p0, Lcom/tencent/mm/booter/k;->bZG:J

    invoke-virtual {v6, v7, v8}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 741
    :cond_d
    iget-boolean v6, p0, Lcom/tencent/mm/booter/k;->bZL:Z

    if-eqz v6, :cond_a

    .line 742
    iget-object v1, p0, Lcom/tencent/mm/booter/k;->bZI:Ljava/io/InputStream;

    invoke-virtual {v1, v5}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_11

    .line 743
    const-string v1, "MicroMsg.DownloadPlayer"

    const-string v2, "want to stop download, but it just finish"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    :cond_e
    iget-object v1, p0, Lcom/tencent/mm/booter/k;->bZF:Ljava/io/RandomAccessFile;

    const/4 v2, 0x0

    invoke-virtual {v1, v5, v2, v0}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 752
    iget-wide v1, p0, Lcom/tencent/mm/booter/k;->bZG:J

    int-to-long v5, v0

    add-long v0, v1, v5

    iput-wide v0, p0, Lcom/tencent/mm/booter/k;->bZG:J

    .line 754
    const-string v0, "MicroMsg.DownloadPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "down completed : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " downLoadLen: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v5, p0, Lcom/tencent/mm/booter/k;->bZG:J

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    iget-object v0, p0, Lcom/tencent/mm/booter/k;->bZH:Lcom/tencent/mm/network/bd;

    invoke-virtual {v0}, Lcom/tencent/mm/network/bd;->disconnect()V

    .line 757
    iget-object v0, p0, Lcom/tencent/mm/booter/k;->bZI:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 758
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/booter/k;->bZH:Lcom/tencent/mm/network/bd;

    .line 759
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/booter/k;->bZI:Ljava/io/InputStream;

    .line 761
    iget-wide v0, p0, Lcom/tencent/mm/booter/k;->bZG:J

    const-wide/16 v5, 0x0

    cmp-long v0, v0, v5

    if-lez v0, :cond_f

    iget-wide v0, p0, Lcom/tencent/mm/booter/k;->bZG:J

    cmp-long v0, v0, v3

    if-eqz v0, :cond_f

    .line 762
    iget-object v0, p0, Lcom/tencent/mm/booter/k;->bZF:Ljava/io/RandomAccessFile;

    iget-wide v1, p0, Lcom/tencent/mm/booter/k;->bZG:J

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 765
    :cond_f
    iget-boolean v0, p0, Lcom/tencent/mm/booter/k;->bZU:Z

    if-eqz v0, :cond_10

    .line 766
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/booter/k;->bZU:Z

    .line 767
    iget-object v0, p0, Lcom/tencent/mm/booter/k;->bZF:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/mm/booter/k;->a(Ljava/io/FileDescriptor;)V

    .line 770
    :cond_10
    iget-object v0, p0, Lcom/tencent/mm/booter/k;->bZF:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 771
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/booter/k;->bZF:Ljava/io/RandomAccessFile;

    .line 772
    const-string v0, ""

    invoke-static {v0, p2, p1}, Lcom/tencent/mm/a/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 773
    invoke-static {p3}, Lcom/tencent/mm/a/c;->deleteFile(Ljava/lang/String;)Z

    goto/16 :goto_2

    .line 746
    :cond_11
    invoke-direct {p0, p2}, Lcom/tencent/mm/booter/k;->aN(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    goto/16 :goto_2

    .line 789
    :cond_12
    const-wide/16 v0, 0x0

    :try_start_b
    iput-wide v0, p0, Lcom/tencent/mm/booter/k;->bZP:J
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_2
.end method

.method static synthetic b(Lcom/tencent/mm/booter/k;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/tencent/mm/booter/k;->bZQ:Z

    return p1
.end method

.method private b(Ljava/io/FileDescriptor;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 860
    const-string v2, "MicroMsg.DownloadPlayer"

    const-string v3, "start play img"

    invoke-static {v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    :try_start_0
    iget-object v2, p0, Lcom/tencent/mm/booter/k;->bZh:Lcom/tencent/mm/compatible/g/a;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tencent/mm/booter/k;->bZh:Lcom/tencent/mm/compatible/g/a;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/tencent/mm/compatible/g/a;->a(Lcom/tencent/mm/compatible/g/c;)V

    iget-object v2, p0, Lcom/tencent/mm/booter/k;->bZh:Lcom/tencent/mm/compatible/g/a;

    invoke-virtual {v2}, Lcom/tencent/mm/compatible/g/a;->qc()Z

    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/tencent/mm/booter/k;->bZh:Lcom/tencent/mm/compatible/g/a;

    const/16 v2, 0x8

    new-instance v3, Lcom/tencent/mm/booter/v;

    invoke-direct {v3, p0}, Lcom/tencent/mm/booter/v;-><init>(Lcom/tencent/mm/booter/k;)V

    invoke-static {v2, v3}, Lcom/tencent/mm/compatible/a/a;->a(ILcom/tencent/mm/compatible/a/b;)Z

    iget-object v2, p0, Lcom/tencent/mm/booter/k;->bZh:Lcom/tencent/mm/compatible/g/a;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/tencent/mm/booter/k;->bZh:Lcom/tencent/mm/compatible/g/a;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/tencent/mm/compatible/g/a;->a(Lcom/tencent/mm/compatible/g/c;)V

    iget-object v2, p0, Lcom/tencent/mm/booter/k;->bZh:Lcom/tencent/mm/compatible/g/a;

    invoke-virtual {v2}, Lcom/tencent/mm/compatible/g/a;->qc()Z

    iget-object v2, p0, Lcom/tencent/mm/booter/k;->bZh:Lcom/tencent/mm/compatible/g/a;

    invoke-virtual {v2}, Lcom/tencent/mm/compatible/g/a;->requestFocus()Z

    const-string v2, "MicroMsg.DownloadPlayer"

    const-string v3, "request focus %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/tencent/mm/booter/k;->bZh:Lcom/tencent/mm/compatible/g/a;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v2, Lcom/tencent/mm/booter/m;

    invoke-direct {v2, p0}, Lcom/tencent/mm/booter/m;-><init>(Lcom/tencent/mm/booter/k;)V

    iput-object v2, p0, Lcom/tencent/mm/booter/k;->bZJ:Lcom/tencent/mm/compatible/g/c;

    :cond_1
    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v2, p0, Lcom/tencent/mm/booter/k;->bZD:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/tencent/mm/booter/k;->bZD:Landroid/media/MediaPlayer;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    iget-object v2, p0, Lcom/tencent/mm/booter/k;->bZD:Landroid/media/MediaPlayer;

    new-instance v3, Lcom/tencent/mm/booter/n;

    invoke-direct {v3, p0}, Lcom/tencent/mm/booter/n;-><init>(Lcom/tencent/mm/booter/k;)V

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 864
    iget-object v2, p0, Lcom/tencent/mm/booter/k;->bZD:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_2

    .line 865
    iget-object v2, p0, Lcom/tencent/mm/booter/k;->bZD:Landroid/media/MediaPlayer;

    invoke-virtual {v2, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 866
    iget-object v2, p0, Lcom/tencent/mm/booter/k;->bZD:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepare()V

    .line 867
    iget-object v2, p0, Lcom/tencent/mm/booter/k;->bZD:Landroid/media/MediaPlayer;

    iget v3, p0, Lcom/tencent/mm/booter/k;->bZE:I

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 869
    :cond_2
    iget-boolean v2, p0, Lcom/tencent/mm/booter/k;->bZS:Z

    if-eqz v2, :cond_5

    .line 870
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/tencent/mm/booter/k;->bZS:Z

    .line 875
    :goto_0
    iget-object v2, p0, Lcom/tencent/mm/booter/k;->bZD:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_3

    .line 877
    invoke-direct {p0}, Lcom/tencent/mm/booter/k;->ow()V

    .line 880
    :cond_3
    iget-object v2, p0, Lcom/tencent/mm/booter/k;->bZh:Lcom/tencent/mm/compatible/g/a;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/tencent/mm/booter/k;->bZJ:Lcom/tencent/mm/compatible/g/c;

    if-eqz v2, :cond_4

    .line 881
    iget-object v2, p0, Lcom/tencent/mm/booter/k;->bZh:Lcom/tencent/mm/compatible/g/a;

    iget-object v3, p0, Lcom/tencent/mm/booter/k;->bZJ:Lcom/tencent/mm/compatible/g/c;

    invoke-virtual {v2, v3}, Lcom/tencent/mm/compatible/g/a;->a(Lcom/tencent/mm/compatible/g/c;)V

    .line 887
    :cond_4
    :goto_1
    return v0

    .line 872
    :cond_5
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/tencent/mm/booter/k;->bZR:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 885
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_1
.end method

.method static synthetic c(Lcom/tencent/mm/booter/k;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/tencent/mm/booter/k;->bZO:Ljava/util/List;

    return-object v0
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "music/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/booter/k;->bZz:Ljava/lang/String;

    .line 365
    invoke-direct {p0}, Lcom/tencent/mm/booter/k;->oH()V

    .line 367
    invoke-virtual {p0}, Lcom/tencent/mm/booter/k;->release()V

    .line 369
    iget-object v0, p0, Lcom/tencent/mm/booter/k;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 370
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/booter/k;->context:Landroid/content/Context;

    .line 372
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/tencent/mm/booter/k;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    return-void
.end method

.method static synthetic d(Lcom/tencent/mm/booter/k;)Lcom/tencent/mm/sdk/platformtools/ay;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/tencent/mm/booter/k;->bZN:Lcom/tencent/mm/sdk/platformtools/ay;

    return-object v0
.end method

.method static synthetic e(Lcom/tencent/mm/booter/k;)Z
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/tencent/mm/booter/k;->bZg:Z

    return v0
.end method

.method static synthetic f(Lcom/tencent/mm/booter/k;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/tencent/mm/booter/k;->bZA:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/tencent/mm/booter/k;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/tencent/mm/booter/k;->bZB:Ljava/lang/String;

    return-object v0
.end method

.method private getUrl()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1147
    invoke-virtual {p0}, Lcom/tencent/mm/booter/k;->oA()Lcom/tencent/mm/protocal/a/or;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1163
    :cond_0
    :goto_0
    return-object v0

    .line 1151
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/mm/booter/k;->oA()Lcom/tencent/mm/protocal/a/or;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/mm/protocal/a/or;->fQa:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1152
    invoke-virtual {p0}, Lcom/tencent/mm/booter/k;->oA()Lcom/tencent/mm/protocal/a/or;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/or;->fQa:Ljava/lang/String;

    goto :goto_0

    .line 1155
    :cond_2
    invoke-virtual {p0}, Lcom/tencent/mm/booter/k;->oA()Lcom/tencent/mm/protocal/a/or;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/mm/protocal/a/or;->fQc:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1156
    invoke-virtual {p0}, Lcom/tencent/mm/booter/k;->oA()Lcom/tencent/mm/protocal/a/or;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/or;->fQc:Ljava/lang/String;

    goto :goto_0

    .line 1159
    :cond_3
    invoke-virtual {p0}, Lcom/tencent/mm/booter/k;->oA()Lcom/tencent/mm/protocal/a/or;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/mm/protocal/a/or;->fQb:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1160
    invoke-virtual {p0}, Lcom/tencent/mm/booter/k;->oA()Lcom/tencent/mm/protocal/a/or;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/or;->fQb:Ljava/lang/String;

    goto :goto_0
.end method

.method private static h(C)I
    .locals 2
    .parameter

    .prologue
    .line 1121
    const/4 v0, 0x0

    .line 1122
    const/16 v1, 0x31

    if-lt p0, v1, :cond_1

    const/16 v1, 0x39

    if-gt p0, v1, :cond_1

    .line 1123
    add-int/lit8 v0, p0, -0x30

    .line 1128
    :cond_0
    :goto_0
    return v0

    .line 1124
    :cond_1
    const/16 v1, 0x41

    if-lt p0, v1, :cond_0

    const/16 v1, 0x46

    if-gt p0, v1, :cond_0

    .line 1125
    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    goto :goto_0
.end method

.method static synthetic h(Lcom/tencent/mm/booter/k;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/tencent/mm/booter/k;->bZC:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcom/tencent/mm/booter/k;)Z
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/tencent/mm/booter/k;->bZQ:Z

    return v0
.end method

.method private j(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 1485
    iget-object v1, p0, Lcom/tencent/mm/booter/k;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 1486
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/booter/k;->bZO:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/model/am;

    .line 1487
    if-eqz v0, :cond_0

    .line 1488
    const-string v3, "MicroMsg.DownloadPlayer"

    const-string v4, "on start call back: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1489
    invoke-interface {v0}, Lcom/tencent/mm/model/am;->onStart()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1492
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1494
    iget-object v0, p0, Lcom/tencent/mm/booter/k;->bZN:Lcom/tencent/mm/sdk/platformtools/ay;

    const-wide/16 v1, 0x32

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/ay;->bO(J)V

    .line 1496
    iget-object v0, p0, Lcom/tencent/mm/booter/k;->context:Landroid/content/Context;

    iput-object v0, p0, Lcom/tencent/mm/booter/k;->context:Landroid/content/Context;

    const-string v1, "MicroMsg.DownloadPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "play : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/tencent/mm/network/bm;->ac(Landroid/content/Context;)Z

    move-result v2

    new-instance v3, Lcom/tencent/mm/pointers/PBool;

    invoke-direct {v3}, Lcom/tencent/mm/pointers/PBool;-><init>()V

    invoke-static {p1, p2, v2, v3}, Lcom/tencent/mm/booter/k;->a(Ljava/lang/String;Ljava/lang/String;ZLcom/tencent/mm/pointers/PBool;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz v2, :cond_4

    move-object v0, v1

    :goto_1
    invoke-direct {p0, v0}, Lcom/tencent/mm/booter/k;->aL(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    if-nez v2, :cond_2

    invoke-direct {p0, v1}, Lcom/tencent/mm/booter/k;->aL(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-boolean v0, v3, Lcom/tencent/mm/pointers/PBool;->value:Z

    const-string v2, "MicroMsg.DownloadPlayer"

    const-string v3, "mediaUrl[%s], isQQmusicInWifi[%B]"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v9

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v2, v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/tencent/mm/booter/k;->bZz:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/mm/a/f;->h([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/mm/booter/k;->bZA:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/tencent/mm/booter/k;->bZA:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".tem"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/mm/booter/k;->bZB:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/tencent/mm/booter/k;->bZA:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".config"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/mm/booter/k;->bZC:Ljava/lang/String;

    new-instance v2, Lcom/tencent/mm/booter/r;

    invoke-direct {v2, p0, v1, v0}, Lcom/tencent/mm/booter/r;-><init>(Lcom/tencent/mm/booter/k;Ljava/lang/String;Z)V

    invoke-virtual {v2, v8}, Ljava/lang/Thread;->setPriority(I)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 1497
    :cond_3
    return-void

    .line 1496
    :cond_4
    new-instance v0, Lcom/tencent/mm/pointers/PBool;

    invoke-direct {v0}, Lcom/tencent/mm/pointers/PBool;-><init>()V

    invoke-static {p1, p2, v8, v0}, Lcom/tencent/mm/booter/k;->a(Ljava/lang/String;Ljava/lang/String;ZLcom/tencent/mm/pointers/PBool;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1
.end method

.method static synthetic j(Lcom/tencent/mm/booter/k;)Z
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/tencent/mm/booter/k;->bZR:Z

    return v0
.end method

.method static synthetic k(Lcom/tencent/mm/booter/k;)Z
    .locals 1
    .parameter

    .prologue
    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/booter/k;->bZR:Z

    return v0
.end method

.method static synthetic l(Lcom/tencent/mm/booter/k;)I
    .locals 1
    .parameter

    .prologue
    .line 54
    iget v0, p0, Lcom/tencent/mm/booter/k;->bZE:I

    return v0
.end method

.method static synthetic m(Lcom/tencent/mm/booter/k;)Landroid/media/MediaPlayer;
    .locals 1
    .parameter

    .prologue
    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/booter/k;->bZD:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic n(Lcom/tencent/mm/booter/k;)Ljava/io/InputStream;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/tencent/mm/booter/k;->bZI:Ljava/io/InputStream;

    return-object v0
.end method

.method static synthetic o(Lcom/tencent/mm/booter/k;)Z
    .locals 1
    .parameter

    .prologue
    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/booter/k;->bZU:Z

    return v0
.end method

.method private oC()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 1222
    invoke-direct {p0}, Lcom/tencent/mm/booter/k;->getUrl()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/tencent/mm/booter/k;->oA()Lcom/tencent/mm/protocal/a/or;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1249
    :cond_0
    :goto_0
    return-object v0

    .line 1228
    :cond_1
    invoke-direct {p0}, Lcom/tencent/mm/booter/k;->getUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/tencent/mm/booter/k;->getUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "#p="

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1229
    invoke-direct {p0}, Lcom/tencent/mm/booter/k;->getUrl()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .line 1240
    :goto_1
    if-eqz v2, :cond_0

    .line 1244
    if-nez v2, :cond_4

    const/4 v1, -0x1

    .line 1245
    :goto_2
    if-gez v1, :cond_5

    .line 1246
    const-string v2, "MicroMsg.DownloadPlayer"

    const-string v3, "pIndex is %d, return"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-static {v2, v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1230
    :cond_2
    invoke-virtual {p0}, Lcom/tencent/mm/booter/k;->oA()Lcom/tencent/mm/protocal/a/or;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/tencent/mm/booter/k;->oA()Lcom/tencent/mm/protocal/a/or;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/mm/protocal/a/or;->fQc:Ljava/lang/String;

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/tencent/mm/booter/k;->oA()Lcom/tencent/mm/protocal/a/or;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/mm/protocal/a/or;->fQc:Ljava/lang/String;

    const-string v2, "#p="

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1233
    invoke-virtual {p0}, Lcom/tencent/mm/booter/k;->oA()Lcom/tencent/mm/protocal/a/or;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/mm/protocal/a/or;->fQc:Ljava/lang/String;

    move-object v2, v1

    goto :goto_1

    .line 1234
    :cond_3
    invoke-virtual {p0}, Lcom/tencent/mm/booter/k;->oA()Lcom/tencent/mm/protocal/a/or;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/tencent/mm/booter/k;->oA()Lcom/tencent/mm/protocal/a/or;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/mm/protocal/a/or;->fQb:Ljava/lang/String;

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/tencent/mm/booter/k;->oA()Lcom/tencent/mm/protocal/a/or;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/mm/protocal/a/or;->fQb:Ljava/lang/String;

    const-string v2, "#p="

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1237
    invoke-virtual {p0}, Lcom/tencent/mm/booter/k;->oA()Lcom/tencent/mm/protocal/a/or;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/mm/protocal/a/or;->fQb:Ljava/lang/String;

    move-object v2, v1

    goto :goto_1

    .line 1244
    :cond_4
    const-string v1, "#p="

    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    goto :goto_2

    .line 1249
    :cond_5
    add-int/lit8 v0, v1, 0x3

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_6
    move-object v2, v0

    goto :goto_1
.end method

.method private oH()V
    .locals 3

    .prologue
    .line 1465
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/tencent/mm/booter/k;->bZz:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1466
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1467
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 1470
    :cond_0
    new-instance v1, Ljava/io/File;

    const-string v2, ".nomedia"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1471
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1473
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1475
    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mm/booter/k;->bZE:I

    .line 1482
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private ow()V
    .locals 2

    .prologue
    .line 355
    iget-object v0, p0, Lcom/tencent/mm/booter/k;->bZD:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/tencent/mm/booter/k;->bZD:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 357
    iget-object v1, p0, Lcom/tencent/mm/booter/k;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/tencent/mm/booter/p;

    invoke-direct {v0, p0}, Lcom/tencent/mm/booter/p;-><init>(Lcom/tencent/mm/booter/k;)V

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/an;->i(Ljava/lang/Runnable;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 359
    :cond_0
    return-void

    .line 357
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private ox()V
    .locals 2

    .prologue
    .line 376
    const-string v0, "MicroMsg.DownloadPlayer"

    const-string v1, "clearCurrentMusicData"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    iget v0, p0, Lcom/tencent/mm/booter/k;->currentIndex:I

    if-ltz v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/tencent/mm/booter/k;->bZV:Landroid/util/SparseArray;

    iget v1, p0, Lcom/tencent/mm/booter/k;->currentIndex:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 379
    iget-object v0, p0, Lcom/tencent/mm/booter/k;->bZV:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 380
    iget-object v0, p0, Lcom/tencent/mm/booter/k;->bZV:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/tencent/mm/booter/k;->currentIndex:I

    .line 382
    :cond_0
    return-void
.end method

.method private oy()Z
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 822
    iget-object v2, p0, Lcom/tencent/mm/booter/k;->bZH:Lcom/tencent/mm/network/bd;

    const-string v3, "Content-Range"

    invoke-virtual {v2, v3}, Lcom/tencent/mm/network/bd;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 823
    invoke-static {v2}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 824
    const-string v1, "MicroMsg.DownloadPlayer"

    const-string v2, "dealWithContinueDownload, rangeInfo is null"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 844
    :cond_0
    :goto_0
    return v0

    .line 828
    :cond_1
    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 829
    if-eqz v2, :cond_2

    array-length v3, v2

    if-gtz v3, :cond_3

    .line 830
    :cond_2
    const-string v1, "MicroMsg.DownloadPlayer"

    const-string v2, "dealWithContinueDownload, rangeArray empty"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 835
    :cond_3
    const/4 v3, 0x0

    :try_start_0
    aget-object v3, v2, v3

    const-string v4, "bytes"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 836
    const/4 v4, 0x0

    aget-object v2, v2, v4

    add-int/lit8 v3, v3, 0x5

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 838
    const-string v3, "MicroMsg.DownloadPlayer"

    const-string v4, "try continueDownLoad from %d, downloadFileLen %d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-wide v7, p0, Lcom/tencent/mm/booter/k;->bZG:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 840
    int-to-long v2, v2

    iget-wide v4, p0, Lcom/tencent/mm/booter/k;->bZG:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 841
    :catch_0
    move-exception v2

    .line 842
    const-string v3, "MicroMsg.DownloadPlayer"

    const-string v4, "dealWithContinueDownload, error[%s]"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-static {v3, v4, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private declared-synchronized oz()V
    .locals 8

    .prologue
    .line 1028
    monitor-enter p0

    :try_start_0
    const-string v0, "MicroMsg.DownloadPlayer"

    const-string v1, "stopPlay"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1029
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mm/booter/k;->bZE:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1032
    :try_start_1
    iget-object v0, p0, Lcom/tencent/mm/booter/k;->bZD:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_3

    .line 1033
    iget-object v0, p0, Lcom/tencent/mm/booter/k;->bZD:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 1034
    iget-object v0, p0, Lcom/tencent/mm/booter/k;->bZD:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 1035
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/booter/k;->bZD:Landroid/media/MediaPlayer;

    .line 1037
    iget-object v1, p0, Lcom/tencent/mm/booter/k;->lock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1038
    :try_start_2
    iget-object v0, p0, Lcom/tencent/mm/booter/k;->bZO:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/model/am;

    .line 1039
    if-eqz v0, :cond_0

    .line 1040
    const-string v3, "MicroMsg.DownloadPlayer"

    const-string v4, "on stop call back: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1042
    invoke-interface {v0}, Lcom/tencent/mm/model/am;->onStop()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1045
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 1052
    :catch_0
    move-exception v0

    .line 1053
    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    .line 1045
    :cond_2
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1048
    :cond_3
    :try_start_5
    iget-object v0, p0, Lcom/tencent/mm/booter/k;->bZK:Ljava/io/FileInputStream;

    if-eqz v0, :cond_1

    .line 1049
    iget-object v0, p0, Lcom/tencent/mm/booter/k;->bZK:Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1

    .line 1028
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic p(Lcom/tencent/mm/booter/k;)Z
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/tencent/mm/booter/k;->bZM:Z

    return v0
.end method

.method private static z(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 1080
    const-string v0, ""

    .line 1081
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1083
    if-nez v1, :cond_1

    .line 1095
    :cond_0
    :goto_0
    return-object v0

    .line 1088
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 1090
    if-eqz v1, :cond_0

    .line 1091
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1092
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/mm/j/b;Ljava/lang/String;)Lcom/tencent/mm/model/al;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1315
    iget-object v0, p3, Lcom/tencent/mm/j/b;->cgQ:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p3, Lcom/tencent/mm/j/b;->cgR:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1318
    iget-object v1, p3, Lcom/tencent/mm/j/b;->url:Ljava/lang/String;

    .line 1319
    iget-object v0, p3, Lcom/tencent/mm/j/b;->cgB:Ljava/lang/String;

    .line 1325
    :goto_0
    invoke-direct {p0, p1, v1, v0}, Lcom/tencent/mm/booter/k;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1327
    if-eqz p3, :cond_0

    .line 1328
    iget-object v0, p0, Lcom/tencent/mm/booter/k;->bZV:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 1329
    if-nez p3, :cond_4

    move-object v0, v2

    :goto_1
    invoke-direct {p0, v0}, Lcom/tencent/mm/booter/k;->a(Lcom/tencent/mm/protocal/a/or;)V

    .line 1335
    :cond_0
    return-object p0

    .line 1321
    :cond_1
    iget-object v0, p3, Lcom/tencent/mm/j/b;->cgQ:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, p3, Lcom/tencent/mm/j/b;->url:Ljava/lang/String;

    .line 1322
    :goto_2
    iget-object v1, p3, Lcom/tencent/mm/j/b;->cgR:Ljava/lang/String;

    if-nez v1, :cond_3

    iget-object v1, p3, Lcom/tencent/mm/j/b;->cgB:Ljava/lang/String;

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_0

    .line 1321
    :cond_2
    iget-object v0, p3, Lcom/tencent/mm/j/b;->cgQ:Ljava/lang/String;

    goto :goto_2

    .line 1322
    :cond_3
    iget-object v1, p3, Lcom/tencent/mm/j/b;->cgR:Ljava/lang/String;

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_0

    .line 1329
    :cond_4
    new-instance v0, Lcom/tencent/mm/protocal/a/or;

    invoke-direct {v0}, Lcom/tencent/mm/protocal/a/or;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Lcom/tencent/mm/protocal/a/or;->fPT:I

    iput-object p2, v0, Lcom/tencent/mm/protocal/a/or;->fPU:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, v0, Lcom/tencent/mm/protocal/a/or;->fPV:F

    const-string v1, ""

    iput-object v1, v0, Lcom/tencent/mm/protocal/a/or;->fPY:Ljava/lang/String;

    iput-object p4, v0, Lcom/tencent/mm/protocal/a/or;->fPZ:Ljava/lang/String;

    iput-object p4, v0, Lcom/tencent/mm/protocal/a/or;->fQe:Ljava/lang/String;

    const/4 v1, 0x1

    iput v1, v0, Lcom/tencent/mm/protocal/a/or;->fAK:I

    iput-object v2, v0, Lcom/tencent/mm/protocal/a/or;->fQd:Ljava/lang/String;

    iget-object v1, p3, Lcom/tencent/mm/j/b;->title:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/mm/protocal/a/or;->fPW:Ljava/lang/String;

    iget-object v1, p3, Lcom/tencent/mm/j/b;->description:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/mm/protocal/a/or;->fPX:Ljava/lang/String;

    iget-object v1, p3, Lcom/tencent/mm/j/b;->url:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/mm/protocal/a/or;->fQc:Ljava/lang/String;

    iget-object v1, p3, Lcom/tencent/mm/j/b;->cgB:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/mm/protocal/a/or;->fQb:Ljava/lang/String;

    iget-object v1, p3, Lcom/tencent/mm/j/b;->cgQ:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/mm/protocal/a/or;->fQa:Ljava/lang/String;

    iget-object v1, p3, Lcom/tencent/mm/j/b;->appId:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/mm/protocal/a/or;->fyE:Ljava/lang/String;

    iput-object p1, v0, Lcom/tencent/mm/protocal/a/or;->fQf:Ljava/lang/String;

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/mm/protocal/a/or;)Lcom/tencent/mm/model/al;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1288
    iget-object v0, p3, Lcom/tencent/mm/protocal/a/or;->fQa:Ljava/lang/String;

    iget-object v1, p3, Lcom/tencent/mm/protocal/a/or;->fQc:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/au;->R(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p3, Lcom/tencent/mm/protocal/a/or;->fQb:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/tencent/mm/booter/k;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1291
    if-eqz p3, :cond_0

    .line 1292
    iget-object v0, p0, Lcom/tencent/mm/booter/k;->bZV:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 1293
    invoke-static {p3, p1, p2}, Lcom/tencent/mm/booter/k;->a(Lcom/tencent/mm/protocal/a/or;Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mm/protocal/a/or;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/mm/booter/k;->a(Lcom/tencent/mm/protocal/a/or;)V

    .line 1295
    :cond_0
    return-object p0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/mm/protocal/a/nk;)Lcom/tencent/mm/model/al;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 1302
    iget-object v1, p4, Lcom/tencent/mm/protocal/a/nk;->fyI:Ljava/lang/String;

    iget-object v2, p4, Lcom/tencent/mm/protocal/a/nk;->fOr:Ljava/lang/String;

    invoke-direct {p0, p1, v1, v2}, Lcom/tencent/mm/booter/k;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1303
    if-eqz p4, :cond_0

    .line 1304
    iget-object v1, p0, Lcom/tencent/mm/booter/k;->bZV:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 1305
    if-nez p4, :cond_1

    :goto_0
    invoke-direct {p0, v0}, Lcom/tencent/mm/booter/k;->a(Lcom/tencent/mm/protocal/a/or;)V

    .line 1308
    :cond_0
    return-object p0

    .line 1305
    :cond_1
    new-instance v1, Lcom/tencent/mm/protocal/a/or;

    invoke-direct {v1}, Lcom/tencent/mm/protocal/a/or;-><init>()V

    iput v3, v1, Lcom/tencent/mm/protocal/a/or;->fPT:I

    iput-object p2, v1, Lcom/tencent/mm/protocal/a/or;->fPU:Ljava/lang/String;

    const/4 v2, 0x0

    iput v2, v1, Lcom/tencent/mm/protocal/a/or;->fPV:F

    const-string v2, ""

    iput-object v2, v1, Lcom/tencent/mm/protocal/a/or;->fPY:Ljava/lang/String;

    iget-object v2, p4, Lcom/tencent/mm/protocal/a/nk;->fOn:Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/mm/protocal/a/or;->fPZ:Ljava/lang/String;

    iput-object v0, v1, Lcom/tencent/mm/protocal/a/or;->fQe:Ljava/lang/String;

    iput v3, v1, Lcom/tencent/mm/protocal/a/or;->fAK:I

    iput-object v0, v1, Lcom/tencent/mm/protocal/a/or;->fQd:Ljava/lang/String;

    iget-object v2, p4, Lcom/tencent/mm/protocal/a/nk;->bMa:Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/mm/protocal/a/or;->fPW:Ljava/lang/String;

    iget-object v2, p4, Lcom/tencent/mm/protocal/a/nk;->fEA:Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/mm/protocal/a/or;->fPX:Ljava/lang/String;

    iget-object v2, p4, Lcom/tencent/mm/protocal/a/nk;->fyI:Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/mm/protocal/a/or;->fQc:Ljava/lang/String;

    iget-object v2, p4, Lcom/tencent/mm/protocal/a/nk;->fOr:Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/mm/protocal/a/or;->fQb:Ljava/lang/String;

    iput-object v0, v1, Lcom/tencent/mm/protocal/a/or;->fQa:Ljava/lang/String;

    iget v0, p4, Lcom/tencent/mm/protocal/a/nk;->fOo:I

    iput v0, v1, Lcom/tencent/mm/protocal/a/or;->fQg:I

    iget-object v0, p4, Lcom/tencent/mm/protocal/a/nk;->fzM:Ljava/lang/String;

    iput-object v0, v1, Lcom/tencent/mm/protocal/a/or;->fAS:Ljava/lang/String;

    iput-object p1, v1, Lcom/tencent/mm/protocal/a/or;->fQf:Ljava/lang/String;

    iput-object p3, v1, Lcom/tencent/mm/protocal/a/or;->fyE:Ljava/lang/String;

    move-object v0, v1

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mm/model/al;
    .locals 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1344
    invoke-static/range {p4 .. p4}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p2

    :goto_0
    invoke-direct {p0, p1, v0, p3}, Lcom/tencent/mm/booter/k;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1346
    iget-object v0, p0, Lcom/tencent/mm/booter/k;->bZV:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 1347
    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-static/range {p5 .. p5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    move-object v0, p0

    move-object/from16 v3, p8

    move-object/from16 v4, p9

    move-object v5, p2

    move-object v6, p3

    move-object/from16 v7, p4

    move-object v9, p1

    move-object/from16 v10, p7

    move-object/from16 v11, p6

    invoke-virtual/range {v0 .. v11}, Lcom/tencent/mm/booter/k;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mm/protocal/a/or;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/mm/booter/k;->a(Lcom/tencent/mm/protocal/a/or;)V

    .line 1353
    return-object p0

    :cond_0
    move-object/from16 v0, p4

    .line 1344
    goto :goto_0
.end method

.method public final a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mm/protocal/a/or;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1581
    new-instance v0, Lcom/tencent/mm/protocal/a/or;

    invoke-direct {v0}, Lcom/tencent/mm/protocal/a/or;-><init>()V

    .line 1582
    iput p1, v0, Lcom/tencent/mm/protocal/a/or;->fPT:I

    .line 1583
    iput-object p2, v0, Lcom/tencent/mm/protocal/a/or;->fPZ:Ljava/lang/String;

    .line 1584
    iput-object p3, v0, Lcom/tencent/mm/protocal/a/or;->fPW:Ljava/lang/String;

    .line 1585
    iput-object p4, v0, Lcom/tencent/mm/protocal/a/or;->fPX:Ljava/lang/String;

    .line 1586
    iput-object p5, v0, Lcom/tencent/mm/protocal/a/or;->fQc:Ljava/lang/String;

    .line 1587
    iput-object p6, v0, Lcom/tencent/mm/protocal/a/or;->fQb:Ljava/lang/String;

    .line 1588
    iput-object p7, v0, Lcom/tencent/mm/protocal/a/or;->fQa:Ljava/lang/String;

    .line 1589
    iput-object p9, v0, Lcom/tencent/mm/protocal/a/or;->fQf:Ljava/lang/String;

    .line 1590
    iput-object p11, v0, Lcom/tencent/mm/protocal/a/or;->fyE:Ljava/lang/String;

    .line 1591
    iput-object p10, v0, Lcom/tencent/mm/protocal/a/or;->fQe:Ljava/lang/String;

    .line 1593
    iput-object p8, v0, Lcom/tencent/mm/protocal/a/or;->fPU:Ljava/lang/String;

    .line 1594
    const/4 v1, 0x0

    iput v1, v0, Lcom/tencent/mm/protocal/a/or;->fPV:F

    .line 1595
    const-string v1, ""

    iput-object v1, v0, Lcom/tencent/mm/protocal/a/or;->fPY:Ljava/lang/String;

    .line 1596
    const/4 v1, 0x1

    iput v1, v0, Lcom/tencent/mm/protocal/a/or;->fAK:I

    .line 1597
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/tencent/mm/protocal/a/or;->fQd:Ljava/lang/String;

    .line 1599
    iput-object p8, v0, Lcom/tencent/mm/protocal/a/or;->fAS:Ljava/lang/String;

    .line 1601
    return-object v0
.end method

.method public final a(Lcom/tencent/mm/model/am;)V
    .locals 5
    .parameter

    .prologue
    .line 1363
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/booter/k;->bZO:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1369
    :cond_0
    :goto_0
    return-void

    .line 1366
    :cond_1
    const-string v0, "MicroMsg.DownloadPlayer"

    const-string v1, "add callback: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1367
    iget-object v1, p0, Lcom/tencent/mm/booter/k;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 1368
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/booter/k;->bZO:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1369
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final aP(Ljava/lang/String;)Lcom/tencent/mm/model/al;
    .locals 1
    .parameter

    .prologue
    .line 1259
    invoke-virtual {p0}, Lcom/tencent/mm/booter/k;->oA()Lcom/tencent/mm/protocal/a/or;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1263
    :goto_0
    return-object p0

    .line 1262
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/mm/booter/k;->oA()Lcom/tencent/mm/protocal/a/or;

    move-result-object v0

    iput-object p1, v0, Lcom/tencent/mm/protocal/a/or;->fQd:Ljava/lang/String;

    goto :goto_0
.end method

.method public final b(Lcom/tencent/mm/protocal/a/or;)Lcom/tencent/mm/model/al;
    .locals 5
    .parameter

    .prologue
    .line 1680
    const-string v0, "MicroMsg.DownloadPlayer"

    const-string v1, "put musicwrapper: %d "

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/tencent/mm/booter/k;->bZV:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1681
    iget-object v0, p0, Lcom/tencent/mm/booter/k;->bZV:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/tencent/mm/booter/k;->bZV:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1682
    return-object p0
.end method

.method public final b(Lcom/tencent/mm/model/am;)V
    .locals 5
    .parameter

    .prologue
    .line 1374
    if-nez p1, :cond_0

    .line 1380
    :goto_0
    return-void

    .line 1377
    :cond_0
    const-string v0, "MicroMsg.DownloadPlayer"

    const-string v1, "unRegistDownloadCallBack: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1378
    iget-object v1, p0, Lcom/tencent/mm/booter/k;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 1379
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/booter/k;->bZO:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1380
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final br(I)Lcom/tencent/mm/model/al;
    .locals 1
    .parameter

    .prologue
    .line 1560
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/booter/k;->bZV:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 1573
    :cond_0
    :goto_0
    return-object p0

    .line 1563
    :cond_1
    iput p1, p0, Lcom/tencent/mm/booter/k;->bZW:I

    .line 1564
    iget v0, p0, Lcom/tencent/mm/booter/k;->bZW:I

    iput v0, p0, Lcom/tencent/mm/booter/k;->currentIndex:I

    .line 1566
    invoke-virtual {p0}, Lcom/tencent/mm/booter/k;->oA()Lcom/tencent/mm/protocal/a/or;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1570
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/booter/k;->bZM:Z

    .line 1571
    invoke-virtual {p0}, Lcom/tencent/mm/booter/k;->oF()Lcom/tencent/mm/model/al;

    goto :goto_0
.end method

.method public final c(Lcom/tencent/mm/model/am;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1389
    const-string v0, "MicroMsg.DownloadPlayer"

    const-string v1, "releasePlayer"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1391
    invoke-virtual {p0}, Lcom/tencent/mm/booter/k;->os()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1392
    invoke-virtual {p0}, Lcom/tencent/mm/booter/k;->release()V

    .line 1394
    invoke-direct {p0}, Lcom/tencent/mm/booter/k;->ox()V

    .line 1395
    const-string v0, "MicroMsg.DownloadPlayer"

    const-string v1, "releasePlayer == release playing"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1396
    iput-boolean v2, p0, Lcom/tencent/mm/booter/k;->bZQ:Z

    .line 1397
    iput-boolean v2, p0, Lcom/tencent/mm/booter/k;->bZR:Z

    .line 1399
    iput-boolean v2, p0, Lcom/tencent/mm/booter/k;->bZg:Z

    .line 1400
    iput-boolean v2, p0, Lcom/tencent/mm/booter/k;->bZU:Z

    .line 1402
    iget-object v0, p0, Lcom/tencent/mm/booter/k;->bZh:Lcom/tencent/mm/compatible/g/a;

    if-eqz v0, :cond_0

    .line 1403
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/booter/k;->bZS:Z

    .line 1404
    iget-object v0, p0, Lcom/tencent/mm/booter/k;->bZh:Lcom/tencent/mm/compatible/g/a;

    invoke-virtual {v0}, Lcom/tencent/mm/compatible/g/a;->qc()Z

    .line 1408
    :cond_0
    invoke-virtual {p0, p1}, Lcom/tencent/mm/booter/k;->b(Lcom/tencent/mm/model/am;)V

    .line 1409
    return-void
.end method

.method public final d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1502
    invoke-direct {p0}, Lcom/tencent/mm/booter/k;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/tencent/mm/booter/k;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    invoke-direct {p0}, Lcom/tencent/mm/booter/k;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/tencent/mm/booter/k;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/tencent/mm/booter/k;->oA()Lcom/tencent/mm/protocal/a/or;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/tencent/mm/booter/k;->oA()Lcom/tencent/mm/protocal/a/or;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/or;->fQb:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/tencent/mm/booter/k;->oA()Lcom/tencent/mm/protocal/a/or;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/or;->fQb:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    invoke-virtual {p0}, Lcom/tencent/mm/booter/k;->oA()Lcom/tencent/mm/protocal/a/or;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/mm/booter/k;->oA()Lcom/tencent/mm/protocal/a/or;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/or;->fPW:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, ""

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/tencent/mm/booter/k;->oA()Lcom/tencent/mm/protocal/a/or;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/or;->fPW:Ljava/lang/String;

    goto :goto_0
.end method

.method public final oA()Lcom/tencent/mm/protocal/a/or;
    .locals 2

    .prologue
    .line 1134
    iget v0, p0, Lcom/tencent/mm/booter/k;->currentIndex:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/tencent/mm/booter/k;->currentIndex:I

    iget-object v1, p0, Lcom/tencent/mm/booter/k;->bZV:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lt v0, v1, :cond_2

    :cond_0
    const/4 v0, 0x0

    .line 1136
    :goto_0
    if-nez v0, :cond_1

    .line 1137
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tencent/mm/booter/k;->bZM:Z

    .line 1139
    const/4 v1, -0x1

    iput v1, p0, Lcom/tencent/mm/booter/k;->bZW:I

    .line 1141
    :cond_1
    return-object v0

    .line 1134
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/booter/k;->bZV:Landroid/util/SparseArray;

    iget v1, p0, Lcom/tencent/mm/booter/k;->currentIndex:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/a/or;

    goto :goto_0
.end method

.method public final oB()Lcom/tencent/mm/model/al;
    .locals 3

    .prologue
    .line 1172
    invoke-virtual {p0}, Lcom/tencent/mm/booter/k;->oA()Lcom/tencent/mm/protocal/a/or;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/tencent/mm/booter/k;->oC()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1215
    :cond_0
    :goto_0
    return-object p0

    .line 1176
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {p0}, Lcom/tencent/mm/booter/k;->oC()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/booter/k;->aO(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 1177
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 1178
    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 1179
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1183
    :cond_2
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1184
    invoke-virtual {p0}, Lcom/tencent/mm/booter/k;->oA()Lcom/tencent/mm/protocal/a/or;

    move-result-object v0

    .line 1185
    if-eqz v0, :cond_0

    .line 1188
    const-string v2, "song_ID"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/tencent/mm/protocal/a/or;->fMa:I

    .line 1190
    iget-object v2, v0, Lcom/tencent/mm/protocal/a/or;->fPW:Ljava/lang/String;

    invoke-static {v2}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1191
    const-string v2, "song_Name"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tencent/mm/protocal/a/or;->fPW:Ljava/lang/String;

    .line 1194
    :cond_3
    iget-object v2, v0, Lcom/tencent/mm/protocal/a/or;->fQb:Ljava/lang/String;

    invoke-static {v2}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1195
    const-string v2, "song_WapLiveURL"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tencent/mm/protocal/a/or;->fQb:Ljava/lang/String;

    .line 1198
    :cond_4
    iget-object v2, v0, Lcom/tencent/mm/protocal/a/or;->fQa:Ljava/lang/String;

    invoke-static {v2}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1199
    const-string v2, "song_WifiURL"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tencent/mm/protocal/a/or;->fQa:Ljava/lang/String;

    .line 1202
    :cond_5
    iget-object v2, v0, Lcom/tencent/mm/protocal/a/or;->fPY:Ljava/lang/String;

    invoke-static {v2}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1203
    const-string v2, "song_Album"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tencent/mm/protocal/a/or;->fPY:Ljava/lang/String;

    .line 1206
    :cond_6
    iget-object v2, v0, Lcom/tencent/mm/protocal/a/or;->fPX:Ljava/lang/String;

    invoke-static {v2}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1207
    const-string v2, "song_Singer"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/protocal/a/or;->fPX:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1215
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final oD()I
    .locals 1

    .prologue
    .line 1254
    invoke-virtual {p0}, Lcom/tencent/mm/booter/k;->oA()Lcom/tencent/mm/protocal/a/or;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/mm/booter/k;->oA()Lcom/tencent/mm/protocal/a/or;

    move-result-object v0

    iget v0, v0, Lcom/tencent/mm/protocal/a/or;->fMa:I

    goto :goto_0
.end method

.method public final oE()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1413
    invoke-virtual {p0}, Lcom/tencent/mm/booter/k;->oA()Lcom/tencent/mm/protocal/a/or;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/mm/booter/k;->oA()Lcom/tencent/mm/protocal/a/or;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/or;->fyE:Ljava/lang/String;

    goto :goto_0
.end method

.method public final oF()Lcom/tencent/mm/model/al;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 1418
    invoke-virtual {p0}, Lcom/tencent/mm/booter/k;->oA()Lcom/tencent/mm/protocal/a/or;

    move-result-object v1

    if-nez v1, :cond_3

    .line 1419
    const-string v1, "MicroMsg.DownloadPlayer"

    const-string v2, "play UI Music error null current music, currentIndex: %d, music size: %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/tencent/mm/booter/k;->currentIndex:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/tencent/mm/booter/k;->bZV:Landroid/util/SparseArray;

    if-nez v5, :cond_1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1423
    iget-object v1, p0, Lcom/tencent/mm/booter/k;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 1424
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/booter/k;->bZO:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/model/am;

    .line 1425
    if-eqz v0, :cond_0

    .line 1426
    invoke-interface {v0}, Lcom/tencent/mm/model/am;->pB()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1429
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1419
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/booter/k;->bZV:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    goto :goto_0

    .line 1429
    :cond_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1446
    :goto_2
    return-object p0

    .line 1433
    :cond_3
    const-string v0, "MicroMsg.DownloadPlayer"

    const-string v1, "play UI Music = ="

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1435
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/tencent/mm/booter/k;->oA()Lcom/tencent/mm/protocal/a/or;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/mm/protocal/a/or;->fQf:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "music/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/booter/k;->bZz:Ljava/lang/String;

    .line 1436
    iget-object v0, p0, Lcom/tencent/mm/booter/k;->context:Landroid/content/Context;

    if-nez v0, :cond_4

    .line 1437
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/booter/k;->context:Landroid/content/Context;

    .line 1439
    :cond_4
    invoke-direct {p0}, Lcom/tencent/mm/booter/k;->oH()V

    .line 1441
    invoke-virtual {p0}, Lcom/tencent/mm/booter/k;->oG()Lcom/tencent/mm/model/al;

    .line 1443
    invoke-virtual {p0}, Lcom/tencent/mm/booter/k;->oA()Lcom/tencent/mm/protocal/a/or;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/or;->fQc:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/tencent/mm/booter/k;->oA()Lcom/tencent/mm/protocal/a/or;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/mm/protocal/a/or;->fQb:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/tencent/mm/booter/k;->j(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public final oG()Lcom/tencent/mm/model/al;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1451
    const-string v0, "MicroMsg.DownloadPlayer"

    const-string v1, "stop UI Music"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1452
    iget-object v0, p0, Lcom/tencent/mm/booter/k;->bZh:Lcom/tencent/mm/compatible/g/a;

    if-eqz v0, :cond_0

    .line 1453
    iput-boolean v2, p0, Lcom/tencent/mm/booter/k;->bZS:Z

    .line 1454
    iget-object v0, p0, Lcom/tencent/mm/booter/k;->bZh:Lcom/tencent/mm/compatible/g/a;

    invoke-virtual {v0}, Lcom/tencent/mm/compatible/g/a;->qc()Z

    .line 1458
    :cond_0
    iput-boolean v2, p0, Lcom/tencent/mm/booter/k;->bZL:Z

    .line 1459
    invoke-direct {p0}, Lcom/tencent/mm/booter/k;->oz()V

    .line 1460
    return-object p0
.end method

.method public final oI()Lcom/tencent/mm/model/al;
    .locals 2

    .prologue
    .line 1511
    iget v0, p0, Lcom/tencent/mm/booter/k;->currentIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/mm/booter/k;->currentIndex:I

    .line 1513
    iget v0, p0, Lcom/tencent/mm/booter/k;->bZW:I

    if-lez v0, :cond_1

    .line 1515
    iget v0, p0, Lcom/tencent/mm/booter/k;->currentIndex:I

    iget-object v1, p0, Lcom/tencent/mm/booter/k;->bZV:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 1516
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mm/booter/k;->currentIndex:I

    .line 1519
    :cond_0
    iget v0, p0, Lcom/tencent/mm/booter/k;->currentIndex:I

    iget v1, p0, Lcom/tencent/mm/booter/k;->bZW:I

    if-ne v0, v1, :cond_1

    .line 1520
    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/mm/booter/k;->bZW:I

    .line 1532
    :goto_0
    return-object p0

    .line 1525
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/mm/booter/k;->oA()Lcom/tencent/mm/protocal/a/or;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1527
    iget v0, p0, Lcom/tencent/mm/booter/k;->currentIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/tencent/mm/booter/k;->currentIndex:I

    goto :goto_0

    .line 1531
    :cond_2
    invoke-virtual {p0}, Lcom/tencent/mm/booter/k;->oF()Lcom/tencent/mm/model/al;

    goto :goto_0
.end method

.method public final oJ()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1687
    invoke-virtual {p0}, Lcom/tencent/mm/booter/k;->oA()Lcom/tencent/mm/protocal/a/or;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/mm/booter/k;->oA()Lcom/tencent/mm/protocal/a/or;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/or;->fAS:Ljava/lang/String;

    goto :goto_0
.end method

.method public final oK()Lcom/tencent/mm/model/al;
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 1692
    iget-object v0, p0, Lcom/tencent/mm/booter/k;->bZV:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 1693
    iput v1, p0, Lcom/tencent/mm/booter/k;->currentIndex:I

    .line 1694
    iput v1, p0, Lcom/tencent/mm/booter/k;->bZW:I

    .line 1695
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/booter/k;->bZM:Z

    .line 1697
    invoke-virtual {p0}, Lcom/tencent/mm/booter/k;->release()V

    .line 1699
    return-object p0
.end method

.method public final oo()I
    .locals 1

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/tencent/mm/booter/k;->oA()Lcom/tencent/mm/protocal/a/or;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/mm/booter/k;->oA()Lcom/tencent/mm/protocal/a/or;

    move-result-object v0

    iget v0, v0, Lcom/tencent/mm/protocal/a/or;->fPT:I

    goto :goto_0
.end method

.method public final op()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/tencent/mm/booter/k;->oA()Lcom/tencent/mm/protocal/a/or;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/mm/booter/k;->oA()Lcom/tencent/mm/protocal/a/or;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/or;->fPU:Ljava/lang/String;

    goto :goto_0
.end method

.method public final oq()I
    .locals 1

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/tencent/mm/booter/k;->oA()Lcom/tencent/mm/protocal/a/or;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/mm/booter/k;->oA()Lcom/tencent/mm/protocal/a/or;

    move-result-object v0

    iget v0, v0, Lcom/tencent/mm/protocal/a/or;->fQg:I

    goto :goto_0
.end method

.method public final or()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/tencent/mm/booter/k;->oA()Lcom/tencent/mm/protocal/a/or;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/mm/booter/k;->oA()Lcom/tencent/mm/protocal/a/or;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/or;->fPY:Ljava/lang/String;

    goto :goto_0
.end method

.method public final os()Z
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/tencent/mm/booter/k;->bZD:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/booter/k;->bZD:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    const/4 v0, 0x1

    .line 207
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final ot()Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/tencent/mm/booter/k;->oA()Lcom/tencent/mm/protocal/a/or;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/mm/booter/k;->oA()Lcom/tencent/mm/protocal/a/or;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/or;->fQe:Ljava/lang/String;

    goto :goto_0
.end method

.method public final ou()V
    .locals 2

    .prologue
    .line 300
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/booter/k;->c(Lcom/tencent/mm/model/am;)V

    .line 301
    const-string v0, "MicroMsg.DownloadPlayer"

    const-string v1, "clear call back"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    iget-object v1, p0, Lcom/tencent/mm/booter/k;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 303
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/booter/k;->bZO:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 304
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final ov()Z
    .locals 1

    .prologue
    .line 316
    invoke-virtual {p0}, Lcom/tencent/mm/booter/k;->os()Z

    move-result v0

    if-nez v0, :cond_0

    .line 317
    const/4 v0, 0x1

    .line 320
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final pause()V
    .locals 2

    .prologue
    .line 342
    invoke-virtual {p0}, Lcom/tencent/mm/booter/k;->os()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/tencent/mm/booter/k;->bZD:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 345
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/booter/k;->bZU:Z

    iget-object v1, p0, Lcom/tencent/mm/booter/k;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/tencent/mm/booter/o;

    invoke-direct {v0, p0}, Lcom/tencent/mm/booter/o;-><init>(Lcom/tencent/mm/booter/k;)V

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/an;->i(Ljava/lang/Runnable;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final release()V
    .locals 0

    .prologue
    .line 330
    invoke-virtual {p0}, Lcom/tencent/mm/booter/k;->oG()Lcom/tencent/mm/model/al;

    .line 332
    invoke-direct {p0}, Lcom/tencent/mm/booter/k;->ox()V

    .line 334
    return-void
.end method

.method public final resume()V
    .locals 0

    .prologue
    .line 351
    invoke-direct {p0}, Lcom/tencent/mm/booter/k;->ow()V

    .line 352
    return-void
.end method
