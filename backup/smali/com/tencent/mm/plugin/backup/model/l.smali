.class public final Lcom/tencent/mm/plugin/backup/model/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/n/m;
.implements Lcom/tencent/mm/n/n;
.implements Lcom/tencent/mm/plugin/backup/model/ac;


# static fields
.field private static cKf:I


# instance fields
.field private cKg:Lcom/tencent/mm/plugin/backup/model/al;

.field private cKh:Lcom/tencent/mm/plugin/backup/model/u;

.field private cKi:Ljava/util/HashMap;

.field private cKj:Ljava/util/HashMap;

.field private cKk:I

.field private cKl:Ljava/util/HashMap;

.field private cKm:I

.field private cKn:I

.field private cKo:I

.field private cKp:Lcom/tencent/mm/plugin/backup/model/z;

.field private cKq:Z

.field private final cgn:Ljava/util/Random;

.field private final ctk:Landroid/os/Handler;

.field private final lock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const/16 v0, 0xf

    sput v0, Lcom/tencent/mm/plugin/backup/model/l;->cKf:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tencent/mm/plugin/backup/model/l;->ctk:Landroid/os/Handler;

    .line 60
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/plugin/backup/model/l;->lock:Ljava/lang/Object;

    .line 61
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/plugin/backup/model/l;->cgn:Ljava/util/Random;

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKi:Ljava/util/HashMap;

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKj:Ljava/util/HashMap;

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKl:Ljava/util/HashMap;

    .line 82
    iput v2, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKm:I

    .line 85
    iput v2, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKo:I

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKp:Lcom/tencent/mm/plugin/backup/model/z;

    .line 94
    iput-boolean v2, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKq:Z

    .line 112
    new-instance v0, Lcom/tencent/mm/plugin/backup/model/u;

    invoke-direct {v0}, Lcom/tencent/mm/plugin/backup/model/u;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKh:Lcom/tencent/mm/plugin/backup/model/u;

    .line 113
    return-void
.end method

.method private GA()V
    .locals 2

    .prologue
    .line 248
    iget-boolean v0, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKq:Z

    if-eqz v0, :cond_0

    .line 258
    :goto_0
    return-void

    .line 252
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKq:Z

    .line 253
    invoke-static {}, Lcom/tencent/mm/plugin/backup/model/d;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0x143

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/n/ac;->a(ILcom/tencent/mm/n/m;)V

    .line 254
    invoke-static {}, Lcom/tencent/mm/plugin/backup/model/d;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0x144

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/n/ac;->a(ILcom/tencent/mm/n/m;)V

    .line 255
    invoke-static {}, Lcom/tencent/mm/plugin/backup/model/d;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0x141

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/n/ac;->a(ILcom/tencent/mm/n/m;)V

    .line 256
    invoke-static {}, Lcom/tencent/mm/plugin/backup/model/d;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0x142

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/n/ac;->a(ILcom/tencent/mm/n/m;)V

    .line 257
    const-string v0, "MicroMsg.BackupServer"

    const-string v1, "addSceneEndListener "

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private GB()V
    .locals 2

    .prologue
    .line 470
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/l;->ctk:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/mm/plugin/backup/model/p;

    invoke-direct {v1, p0}, Lcom/tencent/mm/plugin/backup/model/p;-><init>(Lcom/tencent/mm/plugin/backup/model/l;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 532
    return-void
.end method

.method private GC()Z
    .locals 12

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 541
    const/4 v3, 0x0

    .line 542
    iget-object v4, p0, Lcom/tencent/mm/plugin/backup/model/l;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 543
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKh:Lcom/tencent/mm/plugin/backup/model/u;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/backup/model/u;->Hd()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/backup/a/d;

    .line 544
    iget-object v1, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKi:Ljava/util/HashMap;

    iget-object v2, v0, Lcom/tencent/mm/plugin/backup/a/d;->cJh:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 545
    iget-object v8, v0, Lcom/tencent/mm/plugin/backup/a/d;->cJj:Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKh:Lcom/tencent/mm/plugin/backup/model/u;

    invoke-virtual {v1}, Lcom/tencent/mm/plugin/backup/model/u;->Hc()Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/plugin/backup/a/g;

    invoke-virtual {v8}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/mm/protocal/a/ae;

    iget v2, v2, Lcom/tencent/mm/protocal/a/ae;->fzo:I

    iget v11, v1, Lcom/tencent/mm/plugin/backup/a/g;->csY:I

    if-ne v2, v11, :cond_2

    move v1, v6

    :goto_0
    if-eqz v1, :cond_0

    move-object v8, v0

    .line 553
    :goto_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 554
    if-eqz v8, :cond_5

    .line 555
    new-instance v0, Lcom/tencent/mm/plugin/backup/b/k;

    iget-object v1, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKh:Lcom/tencent/mm/plugin/backup/model/u;

    invoke-virtual {v1}, Lcom/tencent/mm/plugin/backup/model/u;->GT()I

    move-result v1

    iget-object v2, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKh:Lcom/tencent/mm/plugin/backup/model/u;

    invoke-virtual {v2}, Lcom/tencent/mm/plugin/backup/model/u;->GU()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v8, Lcom/tencent/mm/plugin/backup/a/d;->cJh:Ljava/lang/String;

    iget-object v4, v8, Lcom/tencent/mm/plugin/backup/a/d;->cJj:Ljava/util/LinkedList;

    iget v5, v8, Lcom/tencent/mm/plugin/backup/a/d;->cJi:I

    invoke-direct/range {v0 .. v5}, Lcom/tencent/mm/plugin/backup/b/k;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/LinkedList;I)V

    .line 557
    invoke-static {}, Lcom/tencent/mm/plugin/backup/model/d;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 558
    const/4 v0, 0x3

    const/4 v1, -0x1

    const-string v2, "send BakChatUploadMsg"

    invoke-direct {p0, v0, v1, v2}, Lcom/tencent/mm/plugin/backup/model/l;->e(IILjava/lang/String;)V

    move v0, v6

    .line 565
    :goto_2
    return v0

    :cond_3
    move v1, v7

    .line 545
    goto :goto_0

    .line 553
    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0

    .line 561
    :cond_4
    iget-object v1, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKi:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v2, v8, Lcom/tencent/mm/plugin/backup/a/d;->cJh:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    iget v0, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKk:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKk:I

    move v0, v7

    .line 563
    goto :goto_2

    :cond_5
    move v0, v6

    .line 565
    goto :goto_2

    :cond_6
    move-object v8, v3

    goto :goto_1
.end method

.method private GD()Z
    .locals 10

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 586
    const/4 v0, 0x0

    .line 587
    iget-object v2, p0, Lcom/tencent/mm/plugin/backup/model/l;->lock:Ljava/lang/Object;

    monitor-enter v2

    move-object v1, v0

    .line 596
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKh:Lcom/tencent/mm/plugin/backup/model/u;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/backup/model/u;->Hc()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/backup/a/g;

    .line 597
    iget-object v4, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKj:Ljava/util/HashMap;

    iget-object v5, v0, Lcom/tencent/mm/plugin/backup/a/g;->mediaId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 598
    iget-object v3, v0, Lcom/tencent/mm/plugin/backup/a/g;->bRt:Ljava/lang/String;

    invoke-static {v3}, Lcom/tencent/mm/a/c;->as(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 602
    iget-object v3, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKh:Lcom/tencent/mm/plugin/backup/model/u;

    iget v0, v0, Lcom/tencent/mm/plugin/backup/a/g;->csY:I

    invoke-virtual {v3, v0}, Lcom/tencent/mm/plugin/backup/model/u;->fc(I)V

    move v0, v8

    move-object v9, v1

    .line 607
    :goto_1
    if-nez v0, :cond_5

    .line 613
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 615
    if-eqz v9, :cond_3

    .line 616
    new-instance v0, Lcom/tencent/mm/plugin/backup/b/i;

    iget-object v1, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKh:Lcom/tencent/mm/plugin/backup/model/u;

    invoke-virtual {v1}, Lcom/tencent/mm/plugin/backup/model/u;->GT()I

    move-result v1

    iget-object v2, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKh:Lcom/tencent/mm/plugin/backup/model/u;

    invoke-virtual {v2}, Lcom/tencent/mm/plugin/backup/model/u;->GU()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v9, Lcom/tencent/mm/plugin/backup/a/g;->mediaId:Ljava/lang/String;

    iget-object v4, v9, Lcom/tencent/mm/plugin/backup/a/g;->bRt:Ljava/lang/String;

    iget-object v6, v9, Lcom/tencent/mm/plugin/backup/a/g;->cJh:Ljava/lang/String;

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/tencent/mm/plugin/backup/b/i;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/mm/n/n;Ljava/lang/String;)V

    .line 617
    invoke-static {}, Lcom/tencent/mm/plugin/backup/model/d;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 618
    const/4 v0, 0x3

    const/4 v1, -0x1

    const-string v2, "send BakChatUploadMedia"

    invoke-direct {p0, v0, v1, v2}, Lcom/tencent/mm/plugin/backup/model/l;->e(IILjava/lang/String;)V

    move v0, v7

    .line 625
    :goto_2
    return v0

    :cond_1
    move-object v9, v0

    move v0, v7

    .line 606
    goto :goto_1

    .line 613
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 621
    :cond_2
    iget-object v1, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKj:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v2, v9, Lcom/tencent/mm/plugin/backup/a/g;->mediaId:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 622
    iget v0, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKk:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKk:I

    move v0, v8

    .line 623
    goto :goto_2

    :cond_3
    move v0, v7

    .line 625
    goto :goto_2

    :cond_4
    move v0, v7

    move-object v9, v1

    goto :goto_1

    :cond_5
    move-object v1, v9

    goto/16 :goto_0
.end method

.method static synthetic GJ()I
    .locals 1

    .prologue
    .line 45
    sget v0, Lcom/tencent/mm/plugin/backup/model/l;->cKf:I

    return v0
.end method

.method static synthetic a(Lcom/tencent/mm/plugin/backup/model/l;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/mm/plugin/backup/model/l;->e(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private a(Ljava/util/LinkedList;Ljava/util/LinkedList;I)I
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 428
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/cj;->FE()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/plugin/backup/model/l;->cgn:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextDouble()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/a/f;->h([B)Ljava/lang/String;

    move-result-object v1

    .line 429
    iget-object v2, p0, Lcom/tencent/mm/plugin/backup/model/l;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 430
    :try_start_0
    new-instance v0, Lcom/tencent/mm/plugin/backup/a/d;

    invoke-direct {v0}, Lcom/tencent/mm/plugin/backup/a/d;-><init>()V

    .line 431
    iput-object v1, v0, Lcom/tencent/mm/plugin/backup/a/d;->cJh:Ljava/lang/String;

    .line 432
    iput-object p1, v0, Lcom/tencent/mm/plugin/backup/a/d;->cJj:Ljava/util/LinkedList;

    .line 433
    iput p3, v0, Lcom/tencent/mm/plugin/backup/a/d;->cJi:I

    .line 434
    iget-object v3, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKh:Lcom/tencent/mm/plugin/backup/model/u;

    invoke-virtual {v3, v0}, Lcom/tencent/mm/plugin/backup/model/u;->a(Lcom/tencent/mm/plugin/backup/a/d;)V

    .line 435
    invoke-virtual {p2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/backup/a/g;

    .line 436
    iput-object v1, v0, Lcom/tencent/mm/plugin/backup/a/g;->cJh:Ljava/lang/String;

    .line 437
    iget-object v4, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKh:Lcom/tencent/mm/plugin/backup/model/u;

    invoke-virtual {v4, v0}, Lcom/tencent/mm/plugin/backup/model/u;->a(Lcom/tencent/mm/plugin/backup/a/g;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 454
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 439
    :cond_0
    :try_start_1
    sget-boolean v0, Lcom/tencent/mm/platformtools/at;->cHx:Z

    if-nez v0, :cond_1

    .line 442
    invoke-direct {p0}, Lcom/tencent/mm/plugin/backup/model/l;->GB()V

    .line 445
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKh:Lcom/tencent/mm/plugin/backup/model/u;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/backup/model/u;->He()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_2

    .line 447
    :try_start_2
    const-string v0, "MicroMsg.BackupServer"

    const-string v1, "prepareUpload work thread wait()"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/l;->lock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 454
    :cond_2
    monitor-exit v2

    .line 455
    const/4 v0, 0x0

    :goto_1
    return v0

    .line 450
    :catch_0
    move-exception v0

    const/4 v0, -0x1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method static synthetic a(Lcom/tencent/mm/plugin/backup/model/l;)Lcom/tencent/mm/plugin/backup/model/u;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKh:Lcom/tencent/mm/plugin/backup/model/u;

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/mm/plugin/backup/model/l;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/tencent/mm/plugin/backup/model/l;->eW(I)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/plugin/backup/model/l;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 45
    const/4 v0, 0x3

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/tencent/mm/plugin/backup/model/l;->e(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/tencent/mm/plugin/backup/model/l;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/tencent/mm/plugin/backup/model/l;->GB()V

    return-void
.end method

.method static synthetic c(Lcom/tencent/mm/plugin/backup/model/l;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/l;->ctk:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic d(Lcom/tencent/mm/plugin/backup/model/l;)Z
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKh:Lcom/tencent/mm/plugin/backup/model/u;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/backup/model/u;->GU()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private e(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 12
    .parameter
    .parameter
    .parameter

    .prologue
    .line 352
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/network/bm;->ac(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x4000

    move v6, v0

    .line 354
    :goto_0
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 355
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 356
    new-instance v3, Lcom/tencent/mm/pointers/PInt;

    invoke-direct {v3}, Lcom/tencent/mm/pointers/PInt;-><init>()V

    .line 357
    const-string v0, "MicroMsg.BackupServer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "backupChatMsg start "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKh:Lcom/tencent/mm/plugin/backup/model/u;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/backup/model/u;->Hg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKh:Lcom/tencent/mm/plugin/backup/model/u;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/backup/model/u;->Hh()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 361
    :goto_1
    const/4 v1, 0x0

    .line 363
    invoke-static {}, Lcom/tencent/mm/plugin/backup/model/d;->Gj()Lcom/tencent/mm/plugin/backup/model/ax;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tencent/mm/plugin/backup/model/ax;->sw()Lcom/tencent/mm/storage/ap;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/tencent/mm/storage/ap;->vd(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 364
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_6

    move v7, v1

    move v8, v0

    move-object v9, v2

    .line 365
    :goto_2
    invoke-interface {v11}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_7

    .line 366
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKg:Lcom/tencent/mm/plugin/backup/model/al;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/backup/model/al;->Hs()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 367
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 368
    const/4 v0, -0x1

    .line 424
    :goto_3
    return v0

    .line 352
    :cond_0
    const/16 v0, 0x2000

    move v6, v0

    goto :goto_0

    .line 359
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 371
    :cond_2
    new-instance v0, Lcom/tencent/mm/storage/ak;

    invoke-direct {v0}, Lcom/tencent/mm/storage/ak;-><init>()V

    .line 372
    invoke-virtual {v0, v11}, Lcom/tencent/mm/storage/ak;->convertFrom(Landroid/database/Cursor;)V

    .line 374
    if-eqz v8, :cond_3

    .line 375
    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->AH()I

    move-result v0

    iget-object v1, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKh:Lcom/tencent/mm/plugin/backup/model/u;

    invoke-virtual {v1}, Lcom/tencent/mm/plugin/backup/model/u;->Hh()I

    move-result v1

    if-ne v0, v1, :cond_c

    .line 376
    const/4 v0, 0x0

    .line 378
    :goto_4
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move v8, v0

    .line 379
    goto :goto_2

    .line 382
    :cond_3
    const/4 v10, 0x0

    .line 384
    const/4 v1, 0x0

    if-lez p3, :cond_4

    const/4 v5, 0x1

    :goto_5
    move-object v2, p2

    :try_start_0
    invoke-static/range {v0 .. v5}, Lcom/tencent/mm/plugin/backup/model/k;->a(Lcom/tencent/mm/storage/ak;ZLjava/lang/String;Lcom/tencent/mm/pointers/PInt;Ljava/util/LinkedList;Z)Lcom/tencent/mm/protocal/a/ae;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 385
    add-int/lit8 p3, p3, -0x1

    .line 390
    :goto_6
    if-eqz v0, :cond_b

    .line 391
    invoke-virtual {v9, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 392
    iget v0, v0, Lcom/tencent/mm/protocal/a/ae;->fzo:I

    .line 394
    :goto_7
    iget v1, v3, Lcom/tencent/mm/pointers/PInt;->value:I

    if-le v1, v6, :cond_a

    .line 395
    const-string v1, "MicroMsg.BackupServer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "limitSize "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v3, Lcom/tencent/mm/pointers/PInt;->value:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    iget v1, v3, Lcom/tencent/mm/pointers/PInt;->value:I

    invoke-direct {p0, v9, v4, v1}, Lcom/tencent/mm/plugin/backup/model/l;->a(Ljava/util/LinkedList;Ljava/util/LinkedList;I)I

    move-result v1

    .line 397
    if-gez v1, :cond_5

    .line 398
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    move v0, v1

    .line 399
    goto :goto_3

    .line 384
    :cond_4
    const/4 v5, 0x0

    goto :goto_5

    .line 386
    :catch_0
    move-exception v0

    .line 387
    const-string v1, "MicroMsg.BackupServer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "backupChatMsg %s"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->aM(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v10

    goto :goto_6

    .line 401
    :cond_5
    iget-object v1, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKh:Lcom/tencent/mm/plugin/backup/model/u;

    invoke-virtual {v1, p1, v0}, Lcom/tencent/mm/plugin/backup/model/u;->A(Ljava/lang/String;I)V

    .line 404
    const/4 v1, 0x0

    iput v1, v3, Lcom/tencent/mm/pointers/PInt;->value:I

    .line 405
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 406
    invoke-virtual {v4}, Ljava/util/LinkedList;->clear()V

    .line 409
    :goto_8
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move v7, v0

    move-object v9, v1

    .line 410
    goto/16 :goto_2

    :cond_6
    move v7, v1

    move-object v9, v2

    .line 412
    :cond_7
    iget v0, v3, Lcom/tencent/mm/pointers/PInt;->value:I

    if-lez v0, :cond_9

    .line 413
    iget v0, v3, Lcom/tencent/mm/pointers/PInt;->value:I

    invoke-direct {p0, v9, v4, v0}, Lcom/tencent/mm/plugin/backup/model/l;->a(Ljava/util/LinkedList;Ljava/util/LinkedList;I)I

    move-result v0

    .line 414
    const/4 v1, 0x0

    iput v1, v3, Lcom/tencent/mm/pointers/PInt;->value:I

    .line 415
    if-gez v0, :cond_8

    .line 416
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_3

    .line 419
    :cond_8
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKh:Lcom/tencent/mm/plugin/backup/model/u;

    invoke-virtual {v0, p1, v7}, Lcom/tencent/mm/plugin/backup/model/u;->A(Ljava/lang/String;I)V

    .line 422
    :cond_9
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 423
    const-string v0, "MicroMsg.BackupServer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "backupChatMsg end "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    const/4 v0, 0x0

    goto/16 :goto_3

    :cond_a
    move-object v1, v9

    goto :goto_8

    :cond_b
    move v0, v7

    goto/16 :goto_7

    :cond_c
    move v0, v8

    goto/16 :goto_4
.end method

.method static synthetic e(Lcom/tencent/mm/plugin/backup/model/l;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/l;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method private e(IILjava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 714
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const/16 v0, 0x270f

    if-ne p2, v0, :cond_0

    .line 715
    const-string v0, "MicroMsg.BackupServer"

    const-string v1, "dealWithErrType pause err ignore"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    :goto_0
    return-void

    .line 718
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKh:Lcom/tencent/mm/plugin/backup/model/u;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/backup/model/u;->Hb()Z

    move-result v0

    if-nez v0, :cond_1

    .line 719
    const/4 v0, 0x2

    iput v0, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKo:I

    .line 720
    const-string v0, "MicroMsg.BackupServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->aM(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    sget-object v0, Lcom/tencent/mm/plugin/d/c/m;->dZN:Lcom/tencent/mm/plugin/d/c/m;

    const/16 v1, 0x2865

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "1,"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/plugin/d/c/m;->j(ILjava/lang/String;)V

    .line 722
    invoke-static {}, Lcom/tencent/mm/plugin/backup/model/q;->GL()V

    .line 723
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKp:Lcom/tencent/mm/plugin/backup/model/z;

    if-eqz v0, :cond_1

    .line 724
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKp:Lcom/tencent/mm/plugin/backup/model/z;

    invoke-interface {v0, p1, p2}, Lcom/tencent/mm/plugin/backup/model/z;->V(II)V

    .line 727
    :cond_1
    invoke-static {}, Lcom/tencent/mm/plugin/backup/b/i;->pause()V

    .line 728
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKh:Lcom/tencent/mm/plugin/backup/model/u;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/backup/model/u;->aa(Z)V

    goto :goto_0
.end method

.method private eW(I)V
    .locals 4
    .parameter

    .prologue
    .line 271
    if-gez p1, :cond_0

    .line 272
    const-string v0, "MicroMsg.BackupServer"

    const-string v1, "startTask no tryCount left"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->aM(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    :goto_0
    return-void

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKg:Lcom/tencent/mm/plugin/backup/model/al;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKg:Lcom/tencent/mm/plugin/backup/model/al;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/backup/model/al;->isAlive()Z

    move-result v0

    if-nez v0, :cond_2

    .line 277
    :cond_1
    invoke-static {}, Lcom/tencent/mm/plugin/backup/model/d;->Gj()Lcom/tencent/mm/plugin/backup/model/ax;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/backup/model/ax;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/e;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Lcom/tencent/mm/plugin/backup/model/n;

    invoke-direct {v1, p0, v0}, Lcom/tencent/mm/plugin/backup/model/n;-><init>(Lcom/tencent/mm/plugin/backup/model/l;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKg:Lcom/tencent/mm/plugin/backup/model/al;

    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKg:Lcom/tencent/mm/plugin/backup/model/al;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/backup/model/al;->setPriority(I)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKg:Lcom/tencent/mm/plugin/backup/model/al;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/backup/model/al;->start()V

    goto :goto_0

    .line 278
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKg:Lcom/tencent/mm/plugin/backup/model/al;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/backup/model/al;->Hs()Z

    move-result v0

    if-nez v0, :cond_3

    .line 279
    const-string v0, "MicroMsg.BackupServer"

    const-string v1, "startTask the thread is normal run, no need to start new"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 282
    :cond_3
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/tencent/mm/plugin/backup/model/m;

    invoke-direct {v1, p0, p1}, Lcom/tencent/mm/plugin/backup/model/m;-><init>(Lcom/tencent/mm/plugin/backup/model/l;I)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method static synthetic f(Lcom/tencent/mm/plugin/backup/model/l;)I
    .locals 1
    .parameter

    .prologue
    .line 45
    iget v0, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKk:I

    return v0
.end method

.method static synthetic g(Lcom/tencent/mm/plugin/backup/model/l;)Z
    .locals 1
    .parameter

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/tencent/mm/plugin/backup/model/l;->GC()Z

    move-result v0

    return v0
.end method

.method static synthetic h(Lcom/tencent/mm/plugin/backup/model/l;)Z
    .locals 1
    .parameter

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/tencent/mm/plugin/backup/model/l;->GD()Z

    move-result v0

    return v0
.end method

.method private reset()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 97
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/l;->cgn:Ljava/util/Random;

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/cj;->FE()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Random;->setSeed(J)V

    .line 99
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKl:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 101
    iput v3, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKk:I

    .line 103
    iput v3, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKm:I

    .line 104
    iput v3, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKn:I

    .line 107
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKi:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 108
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKj:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 109
    return-void
.end method


# virtual methods
.method public final GE()V
    .locals 4

    .prologue
    .line 824
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKh:Lcom/tencent/mm/plugin/backup/model/u;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/backup/model/u;->GU()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 825
    invoke-static {}, Lcom/tencent/mm/plugin/backup/model/d;->Gm()Lcom/tencent/mm/plugin/backup/model/aa;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKh:Lcom/tencent/mm/plugin/backup/model/u;

    invoke-virtual {v1}, Lcom/tencent/mm/plugin/backup/model/u;->Hf()Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/backup/model/aa;->u(Ljava/util/List;)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKm:I

    .line 826
    const-string v0, "MicroMsg.BackupServer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "msgItemSize onCaluateFinish: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKm:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Lcom/tencent/mm/sdk/platformtools/cj;->K(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 827
    invoke-static {}, Lcom/tencent/mm/plugin/backup/model/d;->Gm()Lcom/tencent/mm/plugin/backup/model/aa;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/mm/plugin/backup/model/aa;->b(Lcom/tencent/mm/plugin/backup/model/ac;)V

    .line 828
    invoke-direct {p0}, Lcom/tencent/mm/plugin/backup/model/l;->GB()V

    .line 830
    :cond_0
    return-void
.end method

.method public final GF()V
    .locals 0

    .prologue
    .line 835
    return-void
.end method

.method public final GG()Z
    .locals 1

    .prologue
    .line 861
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKh:Lcom/tencent/mm/plugin/backup/model/u;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/backup/model/u;->GU()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final GH()I
    .locals 1

    .prologue
    .line 865
    iget v0, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKo:I

    return v0
.end method

.method public final GI()V
    .locals 1

    .prologue
    .line 869
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKo:I

    .line 870
    return-void
.end method

.method public final Gw()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 116
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/tencent/mm/plugin/backup/model/l;->a(Ljava/util/LinkedList;ZI)V

    .line 117
    return-void
.end method

.method public final Gx()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 174
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKg:Lcom/tencent/mm/plugin/backup/model/al;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKg:Lcom/tencent/mm/plugin/backup/model/al;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/backup/model/al;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 175
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/tencent/mm/plugin/backup/model/l;->a(Ljava/util/LinkedList;ZI)V

    .line 190
    :goto_0
    return-void

    .line 179
    :cond_1
    iput v1, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKo:I

    .line 180
    invoke-direct {p0}, Lcom/tencent/mm/plugin/backup/model/l;->GA()V

    .line 181
    invoke-static {}, Lcom/tencent/mm/plugin/backup/b/i;->resume()V

    .line 187
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKh:Lcom/tencent/mm/plugin/backup/model/u;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/backup/model/u;->aa(Z)V

    .line 188
    invoke-direct {p0}, Lcom/tencent/mm/plugin/backup/model/l;->GB()V

    goto :goto_0
.end method

.method public final Gy()Z
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKh:Lcom/tencent/mm/plugin/backup/model/u;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/backup/model/u;->Hb()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKg:Lcom/tencent/mm/plugin/backup/model/al;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKg:Lcom/tencent/mm/plugin/backup/model/al;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/backup/model/al;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final Gz()Z
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKh:Lcom/tencent/mm/plugin/backup/model/u;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/backup/model/u;->Hb()Z

    move-result v0

    return v0
.end method

.method public final a(IILcom/tencent/mm/n/x;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 839
    invoke-virtual {p3}, Lcom/tencent/mm/n/x;->getType()I

    move-result v0

    const/16 v1, 0x144

    if-ne v0, v1, :cond_0

    .line 840
    check-cast p3, Lcom/tencent/mm/plugin/backup/b/a;

    .line 841
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKh:Lcom/tencent/mm/plugin/backup/model/u;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/backup/model/u;->GU()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/tencent/mm/plugin/backup/b/a;->iC(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 842
    const-string v0, "MicroMsg.BackupServer"

    const-string v1, "scene back is old"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 850
    :cond_0
    :goto_0
    return-void

    .line 845
    :cond_1
    iget v0, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKn:I

    invoke-virtual {p3}, Lcom/tencent/mm/plugin/backup/b/a;->HI()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKn:I

    .line 846
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKh:Lcom/tencent/mm/plugin/backup/model/u;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/backup/model/u;->Hb()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKp:Lcom/tencent/mm/plugin/backup/model/z;

    if-eqz v0, :cond_0

    .line 847
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKp:Lcom/tencent/mm/plugin/backup/model/z;

    iget v1, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKn:I

    int-to-long v1, v1

    iget v3, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKm:I

    int-to-long v3, v3

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/tencent/mm/plugin/backup/model/z;->b(JJ)V

    goto :goto_0
.end method

.method public final a(IILjava/lang/String;Lcom/tencent/mm/n/x;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 635
    const-string v1, "MicroMsg.BackupServer"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onGYNetEnd errType:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " errCode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p4}, Lcom/tencent/mm/n/x;->getType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, p4

    .line 637
    check-cast v1, Lcom/tencent/mm/plugin/backup/b/a;

    .line 638
    iget-object v3, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKh:Lcom/tencent/mm/plugin/backup/model/u;

    invoke-virtual {v3}, Lcom/tencent/mm/plugin/backup/model/u;->GU()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/tencent/mm/plugin/backup/b/a;->iC(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 639
    const-string v1, "MicroMsg.BackupServer"

    const-string v2, "scene back is old"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    :cond_0
    :goto_0
    return-void

    .line 643
    :cond_1
    invoke-virtual {p4}, Lcom/tencent/mm/n/x;->getType()I

    move-result v3

    const/16 v4, 0x141

    if-ne v3, v4, :cond_5

    .line 644
    iget-object v1, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKh:Lcom/tencent/mm/plugin/backup/model/u;

    invoke-virtual {v1}, Lcom/tencent/mm/plugin/backup/model/u;->GV()I

    move-result v1

    if-eqz v1, :cond_2

    .line 645
    const-string v1, "MicroMsg.BackupServer"

    const-string v2, "onSceneEnd redundancy uploadHead"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 648
    :cond_2
    if-nez p1, :cond_3

    if-eqz p2, :cond_4

    .line 649
    :cond_3
    const-string v1, "MicroMsg.BackupServer"

    const-string v2, "start error  "

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "UploadHead "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, p2, v1}, Lcom/tencent/mm/plugin/backup/model/l;->e(IILjava/lang/String;)V

    goto :goto_0

    .line 656
    :cond_4
    check-cast p4, Lcom/tencent/mm/plugin/backup/b/h;

    .line 657
    iget-object v1, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKh:Lcom/tencent/mm/plugin/backup/model/u;

    invoke-virtual {p4}, Lcom/tencent/mm/plugin/backup/b/h;->HG()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/plugin/backup/model/u;->fb(I)V

    .line 658
    iget-object v1, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKh:Lcom/tencent/mm/plugin/backup/model/u;

    invoke-virtual {v1, v7}, Lcom/tencent/mm/plugin/backup/model/u;->eY(I)V

    .line 660
    const-string v1, "MicroMsg.BackupServer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bakchatSvrID  "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Lcom/tencent/mm/plugin/backup/b/h;->HG()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    const/16 v1, 0x64

    invoke-direct {p0, v1}, Lcom/tencent/mm/plugin/backup/model/l;->eW(I)V

    goto :goto_0

    .line 665
    :cond_5
    invoke-virtual {p4}, Lcom/tencent/mm/n/x;->getType()I

    move-result v3

    const/16 v4, 0x142

    if-ne v3, v4, :cond_a

    .line 666
    iget-object v1, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKh:Lcom/tencent/mm/plugin/backup/model/u;

    invoke-virtual {v1}, Lcom/tencent/mm/plugin/backup/model/u;->Hb()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKp:Lcom/tencent/mm/plugin/backup/model/z;

    if-eqz v1, :cond_6

    .line 667
    iget-object v1, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKp:Lcom/tencent/mm/plugin/backup/model/z;

    iget v3, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKm:I

    int-to-long v3, v3

    iget v5, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKm:I

    int-to-long v5, v5

    invoke-interface {v1, v3, v4, v5, v6}, Lcom/tencent/mm/plugin/backup/model/z;->b(JJ)V

    .line 669
    :cond_6
    if-nez p1, :cond_7

    if-eqz p2, :cond_8

    .line 670
    :cond_7
    const-string v1, "MicroMsg.BackupServer"

    const-string v2, "end error  "

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    iget-object v1, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKh:Lcom/tencent/mm/plugin/backup/model/u;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/plugin/backup/model/u;->eY(I)V

    .line 672
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "UploadEnd "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, p2, v1}, Lcom/tencent/mm/plugin/backup/model/l;->e(IILjava/lang/String;)V

    goto/16 :goto_0

    .line 675
    :cond_8
    const-string v1, "MicroMsg.BackupServer"

    const-string v3, "end ok  "

    invoke-static {v1, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    invoke-static {}, Lcom/tencent/mm/plugin/backup/b/i;->HJ()V

    .line 678
    iput v7, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKo:I

    .line 679
    iget-object v1, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKh:Lcom/tencent/mm/plugin/backup/model/u;

    invoke-virtual {v1}, Lcom/tencent/mm/plugin/backup/model/u;->Hb()Z

    move-result v1

    if-nez v1, :cond_9

    .line 680
    iget v1, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKm:I

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/cj;->FE()J

    move-result-wide v3

    invoke-static {v1, v3, v4, v7}, Lcom/tencent/mm/plugin/backup/model/q;->a(IJI)V

    .line 681
    iget-object v1, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKp:Lcom/tencent/mm/plugin/backup/model/z;

    if-eqz v1, :cond_9

    .line 682
    iget-object v1, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKp:Lcom/tencent/mm/plugin/backup/model/z;

    invoke-interface {v1}, Lcom/tencent/mm/plugin/backup/model/z;->Hn()V

    .line 686
    :cond_9
    invoke-virtual {p0, v7, v2}, Lcom/tencent/mm/plugin/backup/model/l;->g(ZZ)V

    .line 687
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/tencent/mm/plugin/backup/model/d;->Gr()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/tencent/mm/a/c;->a(Ljava/io/File;)Z

    .line 688
    invoke-static {}, Lcom/tencent/mm/plugin/backup/model/d;->Gq()V

    goto/16 :goto_0

    .line 692
    :cond_a
    iget v3, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKk:I

    if-nez v3, :cond_c

    :goto_1
    iput v2, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKk:I

    .line 693
    invoke-virtual {p4}, Lcom/tencent/mm/n/x;->getType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 695
    :goto_2
    if-nez p1, :cond_b

    if-eqz p2, :cond_d

    .line 696
    :cond_b
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/mm/plugin/backup/model/l;->e(IILjava/lang/String;)V

    goto/16 :goto_0

    .line 692
    :cond_c
    iget v2, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKk:I

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 693
    :pswitch_0
    iget-object v2, p0, Lcom/tencent/mm/plugin/backup/model/l;->lock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKi:Ljava/util/HashMap;

    invoke-virtual {p4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    :pswitch_1
    iget-object v2, p0, Lcom/tencent/mm/plugin/backup/model/l;->lock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    iget-object v3, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKj:Ljava/util/HashMap;

    invoke-virtual {p4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_d
    move-object v2, p4

    .line 700
    check-cast v2, Lcom/tencent/mm/plugin/backup/b/a;

    invoke-virtual {v2}, Lcom/tencent/mm/plugin/backup/b/a;->getType()I

    move-result v3

    packed-switch v3, :pswitch_data_1

    .line 702
    :goto_3
    invoke-direct {p0}, Lcom/tencent/mm/plugin/backup/model/l;->GB()V

    .line 704
    const-string v2, "MicroMsg.BackupServer"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "bckMsgList: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKh:Lcom/tencent/mm/plugin/backup/model/u;

    invoke-virtual {v4}, Lcom/tencent/mm/plugin/backup/model/u;->Hd()Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mediaList : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKh:Lcom/tencent/mm/plugin/backup/model/u;

    invoke-virtual {v4}, Lcom/tencent/mm/plugin/backup/model/u;->Hc()Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    invoke-virtual {p4}, Lcom/tencent/mm/n/x;->getType()I

    move-result v2

    const/16 v3, 0x143

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKp:Lcom/tencent/mm/plugin/backup/model/z;

    if-eqz v2, :cond_0

    .line 706
    iget v2, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKn:I

    invoke-virtual {v1}, Lcom/tencent/mm/plugin/backup/b/a;->HI()I

    move-result v1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKn:I

    .line 707
    iget-object v1, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKh:Lcom/tencent/mm/plugin/backup/model/u;

    invoke-virtual {v1}, Lcom/tencent/mm/plugin/backup/model/u;->Hb()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKp:Lcom/tencent/mm/plugin/backup/model/z;

    if-eqz v1, :cond_0

    .line 708
    iget-object v1, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKp:Lcom/tencent/mm/plugin/backup/model/z;

    iget v2, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKn:I

    int-to-long v2, v2

    iget v4, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKm:I

    int-to-long v4, v4

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/tencent/mm/plugin/backup/model/z;->b(JJ)V

    goto/16 :goto_0

    .line 700
    :pswitch_2
    iget-object v3, p0, Lcom/tencent/mm/plugin/backup/model/l;->lock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_2
    check-cast v2, Lcom/tencent/mm/plugin/backup/b/k;

    invoke-virtual {v2}, Lcom/tencent/mm/plugin/backup/b/k;->HL()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKh:Lcom/tencent/mm/plugin/backup/model/u;

    invoke-virtual {v4, v2}, Lcom/tencent/mm/plugin/backup/model/u;->iw(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKl:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/tencent/mm/sdk/platformtools/cj;->a(Ljava/lang/Integer;I)I

    move-result v2

    iget-object v4, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKh:Lcom/tencent/mm/plugin/backup/model/u;

    iget-object v5, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKh:Lcom/tencent/mm/plugin/backup/model/u;

    invoke-virtual {v5}, Lcom/tencent/mm/plugin/backup/model/u;->Hi()I

    move-result v5

    add-int/2addr v2, v5

    iget v5, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKm:I

    invoke-virtual {v4, v2, v5}, Lcom/tencent/mm/plugin/backup/model/u;->U(II)V

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto/16 :goto_3

    :catchall_2
    move-exception v1

    monitor-exit v3

    throw v1

    :pswitch_3
    iget-object v4, p0, Lcom/tencent/mm/plugin/backup/model/l;->lock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_3
    move-object v0, v2

    check-cast v0, Lcom/tencent/mm/plugin/backup/b/i;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/tencent/mm/plugin/backup/b/i;->oJ()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKh:Lcom/tencent/mm/plugin/backup/model/u;

    invoke-virtual {v6, v5}, Lcom/tencent/mm/plugin/backup/model/u;->iv(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/tencent/mm/plugin/backup/b/i;->HQ()Ljava/lang/String;

    move-result-object v5

    iget-object v3, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKl:Ljava/util/HashMap;

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-static {v3, v6}, Lcom/tencent/mm/sdk/platformtools/cj;->a(Ljava/lang/Integer;I)I

    move-result v3

    iget-object v6, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKl:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/tencent/mm/plugin/backup/b/a;->vR()I

    move-result v2

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v6, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto/16 :goto_3

    :catchall_3
    move-exception v1

    monitor-exit v4

    throw v1

    .line 693
    nop

    :pswitch_data_0
    .packed-switch 0x143
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 700
    :pswitch_data_1
    .packed-switch 0x143
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final a(Lcom/tencent/mm/plugin/backup/model/z;)V
    .locals 0
    .parameter

    .prologue
    .line 199
    iput-object p1, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKp:Lcom/tencent/mm/plugin/backup/model/z;

    .line 200
    return-void
.end method

.method public final a(Ljava/util/LinkedList;ZI)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 121
    iput v1, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKo:I

    .line 122
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKh:Lcom/tencent/mm/plugin/backup/model/u;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/backup/model/u;->aa(Z)V

    .line 123
    invoke-direct {p0}, Lcom/tencent/mm/plugin/backup/model/l;->GA()V

    .line 125
    invoke-static {}, Lcom/tencent/mm/plugin/backup/model/r;->GS()I

    move-result v0

    sput v0, Lcom/tencent/mm/plugin/backup/model/l;->cKf:I

    .line 127
    invoke-static {}, Lcom/tencent/mm/plugin/backup/b/i;->resume()V

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/cj;->FE()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/mm/plugin/backup/model/l;->cgn:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextDouble()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/a/f;->h([B)Ljava/lang/String;

    move-result-object v0

    .line 130
    if-nez p1, :cond_5

    .line 131
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKh:Lcom/tencent/mm/plugin/backup/model/u;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/backup/model/u;->Hf()Ljava/util/LinkedList;

    move-result-object p1

    .line 132
    iget v0, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKm:I

    if-nez v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKh:Lcom/tencent/mm/plugin/backup/model/u;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/backup/model/u;->Hi()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKn:I

    .line 134
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKh:Lcom/tencent/mm/plugin/backup/model/u;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/backup/model/u;->Ha()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKm:I

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKp:Lcom/tencent/mm/plugin/backup/model/z;

    if-eqz v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKp:Lcom/tencent/mm/plugin/backup/model/z;

    iget v2, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKn:I

    int-to-long v2, v2

    iget v4, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKm:I

    int-to-long v4, v4

    invoke-interface {v0, v2, v3, v4, v5}, Lcom/tencent/mm/plugin/backup/model/z;->b(JJ)V

    .line 138
    const-string v2, "MicroMsg.BackupServer"

    const-string v3, "process: %d"

    new-array v4, v6, [Ljava/lang/Object;

    iget v0, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKm:I

    if-nez v0, :cond_4

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {v2, v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKh:Lcom/tencent/mm/plugin/backup/model/u;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/backup/model/u;->GV()I

    move-result v0

    if-ne v0, v6, :cond_2

    .line 141
    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lcom/tencent/mm/plugin/backup/model/l;->eW(I)V

    .line 144
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKh:Lcom/tencent/mm/plugin/backup/model/u;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/backup/model/u;->GV()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    .line 145
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKh:Lcom/tencent/mm/plugin/backup/model/u;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/tencent/mm/plugin/backup/model/u;->eY(I)V

    .line 153
    :cond_3
    :goto_1
    iget v0, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKm:I

    if-eqz v0, :cond_6

    .line 154
    invoke-direct {p0}, Lcom/tencent/mm/plugin/backup/model/l;->GB()V

    .line 171
    :goto_2
    return-void

    .line 138
    :cond_4
    iget v0, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKn:I

    mul-int/lit8 v0, v0, 0x64

    iget v5, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKm:I

    div-int/2addr v0, v5

    goto :goto_0

    .line 149
    :cond_5
    invoke-direct {p0}, Lcom/tencent/mm/plugin/backup/model/l;->reset()V

    .line 150
    iget-object v2, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKh:Lcom/tencent/mm/plugin/backup/model/u;

    invoke-virtual {v2, v0, p1, p2, p3}, Lcom/tencent/mm/plugin/backup/model/u;->a(Ljava/lang/String;Ljava/util/LinkedList;ZI)V

    goto :goto_1

    .line 159
    :cond_6
    invoke-virtual {p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 160
    invoke-static {}, Lcom/tencent/mm/plugin/backup/model/d;->Gm()Lcom/tencent/mm/plugin/backup/model/aa;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/tencent/mm/plugin/backup/model/aa;->iz(Ljava/lang/String;)Z

    move-result v0

    or-int/2addr v1, v0

    .line 161
    goto :goto_3

    .line 163
    :cond_7
    if-eqz v1, :cond_8

    .line 164
    invoke-static {}, Lcom/tencent/mm/plugin/backup/model/d;->Gm()Lcom/tencent/mm/plugin/backup/model/aa;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/mm/plugin/backup/model/aa;->a(Lcom/tencent/mm/plugin/backup/model/ac;)V

    .line 170
    :goto_4
    const-string v0, "MicroMsg.BackupServer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "msgItemSize"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKm:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Lcom/tencent/mm/sdk/platformtools/cj;->K(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 166
    :cond_8
    invoke-static {}, Lcom/tencent/mm/plugin/backup/model/d;->Gm()Lcom/tencent/mm/plugin/backup/model/aa;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/mm/plugin/backup/model/aa;->u(Ljava/util/List;)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKm:I

    .line 167
    invoke-direct {p0}, Lcom/tencent/mm/plugin/backup/model/l;->GB()V

    goto :goto_4
.end method

.method public final b(Lcom/tencent/mm/plugin/backup/model/z;)V
    .locals 1
    .parameter

    .prologue
    .line 203
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKp:Lcom/tencent/mm/plugin/backup/model/z;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKp:Lcom/tencent/mm/plugin/backup/model/z;

    .line 206
    :cond_0
    return-void
.end method

.method public final g(ZZ)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 209
    if-eqz p2, :cond_0

    .line 210
    iget v0, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKn:I

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/cj;->FE()J

    move-result-wide v1

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/mm/plugin/backup/model/q;->a(IJI)V

    .line 212
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKq:Z

    invoke-static {}, Lcom/tencent/mm/plugin/backup/model/d;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0x143

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/n/ac;->b(ILcom/tencent/mm/n/m;)V

    invoke-static {}, Lcom/tencent/mm/plugin/backup/model/d;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0x144

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/n/ac;->b(ILcom/tencent/mm/n/m;)V

    invoke-static {}, Lcom/tencent/mm/plugin/backup/model/d;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0x141

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/n/ac;->b(ILcom/tencent/mm/n/m;)V

    invoke-static {}, Lcom/tencent/mm/plugin/backup/model/d;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0x142

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/n/ac;->b(ILcom/tencent/mm/n/m;)V

    const-string v0, "MicroMsg.BackupServer"

    const-string v1, "removeSceneEndListener "

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKi:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 214
    invoke-static {}, Lcom/tencent/mm/plugin/backup/model/d;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/tencent/mm/n/ac;->cancel(I)V

    goto :goto_0

    .line 216
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKj:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 217
    invoke-static {}, Lcom/tencent/mm/plugin/backup/model/d;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/tencent/mm/n/ac;->cancel(I)V

    goto :goto_1

    .line 220
    :cond_2
    invoke-direct {p0}, Lcom/tencent/mm/plugin/backup/model/l;->reset()V

    .line 221
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKh:Lcom/tencent/mm/plugin/backup/model/u;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/backup/model/u;->aa(Z)V

    .line 223
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKg:Lcom/tencent/mm/plugin/backup/model/al;

    if-eqz v0, :cond_3

    .line 224
    const-string v0, "MicroMsg.BackupServer"

    const-string v1, "cancelBak kill thread"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    iget-object v1, p0, Lcom/tencent/mm/plugin/backup/model/l;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 226
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKg:Lcom/tencent/mm/plugin/backup/model/al;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/backup/model/al;->kill()V

    .line 227
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    :cond_3
    if-eqz p1, :cond_4

    .line 231
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKh:Lcom/tencent/mm/plugin/backup/model/u;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/backup/model/u;->reset()V

    .line 233
    :cond_4
    return-void

    .line 227
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final getOffset()I
    .locals 1

    .prologue
    .line 853
    iget v0, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKn:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKn:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKh:Lcom/tencent/mm/plugin/backup/model/u;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/backup/model/u;->Hi()I

    move-result v0

    goto :goto_0
.end method

.method public final pause()V
    .locals 2

    .prologue
    .line 193
    invoke-static {}, Lcom/tencent/mm/plugin/backup/b/i;->pause()V

    .line 194
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKh:Lcom/tencent/mm/plugin/backup/model/u;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/backup/model/u;->aa(Z)V

    .line 195
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKo:I

    .line 196
    return-void
.end method

.method public final vR()I
    .locals 1

    .prologue
    .line 857
    iget v0, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKm:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKm:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/l;->cKh:Lcom/tencent/mm/plugin/backup/model/u;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/backup/model/u;->Ha()I

    move-result v0

    goto :goto_0
.end method
