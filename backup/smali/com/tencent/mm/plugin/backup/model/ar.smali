.class public final Lcom/tencent/mm/plugin/backup/model/ar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/n/m;
.implements Lcom/tencent/mm/n/n;


# static fields
.field private static cKf:I


# instance fields
.field private cAG:I

.field private cKg:Lcom/tencent/mm/plugin/backup/model/al;

.field private cKo:I

.field private cKp:Lcom/tencent/mm/plugin/backup/model/z;

.field private cKq:Z

.field private cLb:Ljava/util/HashMap;

.field private cLc:Lcom/tencent/mm/plugin/backup/model/s;

.field private cLd:I

.field private cLe:I

.field private cLf:J

.field private final ctk:Landroid/os/Handler;

.field private lock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/16 v0, 0xf

    sput v0, Lcom/tencent/mm/plugin/backup/model/ar;->cKf:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tencent/mm/plugin/backup/model/ar;->ctk:Landroid/os/Handler;

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/plugin/backup/model/ar;->lock:Ljava/lang/Object;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cLb:Ljava/util/HashMap;

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cKp:Lcom/tencent/mm/plugin/backup/model/z;

    .line 62
    iput v2, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cAG:I

    .line 66
    iput v2, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cLd:I

    .line 67
    iput v2, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cLe:I

    .line 69
    iput v2, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cKo:I

    .line 71
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cLf:J

    .line 73
    iput-boolean v2, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cKq:Z

    .line 169
    new-instance v0, Lcom/tencent/mm/plugin/backup/model/s;

    invoke-direct {v0}, Lcom/tencent/mm/plugin/backup/model/s;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cLc:Lcom/tencent/mm/plugin/backup/model/s;

    .line 170
    return-void
.end method

.method private GA()V
    .locals 2

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cKq:Z

    if-eqz v0, :cond_0

    .line 100
    :goto_0
    return-void

    .line 94
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cKq:Z

    .line 96
    invoke-static {}, Lcom/tencent/mm/plugin/backup/model/d;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0x146

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/n/ac;->a(ILcom/tencent/mm/n/m;)V

    .line 97
    invoke-static {}, Lcom/tencent/mm/plugin/backup/model/d;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0x147

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/n/ac;->a(ILcom/tencent/mm/n/m;)V

    goto :goto_0
.end method

.method private Hw()Z
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cLc:Lcom/tencent/mm/plugin/backup/model/s;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/backup/model/s;->GU()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private Hy()V
    .locals 10

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x2

    const/4 v9, -0x1

    const/4 v8, 0x3

    .line 375
    invoke-direct {p0}, Lcom/tencent/mm/plugin/backup/model/ar;->Hw()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 376
    const-string v0, "MicroMsg.RecoverServer"

    const-string v1, "checkDownLoadData break  "

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    :cond_0
    :goto_0
    return-void

    .line 380
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cLc:Lcom/tencent/mm/plugin/backup/model/s;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/backup/model/s;->Hb()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 381
    const-string v0, "MicroMsg.RecoverServer"

    const-string v1, "checkDownLoadData has paused"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 385
    :cond_2
    sget-boolean v0, Lcom/tencent/mm/platformtools/at;->cHx:Z

    if-eqz v0, :cond_3

    .line 386
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/backup/model/ar;->Hx()V

    goto :goto_0

    .line 390
    :cond_3
    const-string v0, "MicroMsg.RecoverServer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "checkDownLoadData dataItemIdList.size: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cLc:Lcom/tencent/mm/plugin/backup/model/s;

    invoke-virtual {v2}, Lcom/tencent/mm/plugin/backup/model/s;->GX()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  downloadingMap.size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cLb:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cLc:Lcom/tencent/mm/plugin/backup/model/s;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/backup/model/s;->GX()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 392
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cLb:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    sget v1, Lcom/tencent/mm/plugin/backup/model/ar;->cKf:I

    if-gt v0, v1, :cond_0

    .line 395
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cLc:Lcom/tencent/mm/plugin/backup/model/s;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/backup/model/s;->GX()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 396
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cLb:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 397
    new-instance v0, Lcom/tencent/mm/plugin/backup/b/c;

    iget-object v1, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cLc:Lcom/tencent/mm/plugin/backup/model/s;

    invoke-virtual {v1}, Lcom/tencent/mm/plugin/backup/model/s;->GT()I

    move-result v1

    iget-object v2, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cLc:Lcom/tencent/mm/plugin/backup/model/s;

    invoke-virtual {v2}, Lcom/tencent/mm/plugin/backup/model/s;->GU()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cLc:Lcom/tencent/mm/plugin/backup/model/s;

    invoke-virtual {v4}, Lcom/tencent/mm/plugin/backup/model/s;->GV()I

    move-result v4

    invoke-static {}, Lcom/tencent/mm/plugin/backup/model/d;->Gr()Ljava/lang/String;

    move-result-object v5

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/tencent/mm/plugin/backup/b/c;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/tencent/mm/n/n;)V

    .line 401
    invoke-static {}, Lcom/tencent/mm/plugin/backup/model/d;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 402
    const-string v0, "MicroMsg.RecoverServer"

    const-string v1, "checkDownLoadData doScene RecoverData failed"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    const-string v0, "send RecoverData"

    invoke-direct {p0, v8, v9, v0}, Lcom/tencent/mm/plugin/backup/model/ar;->e(IILjava/lang/String;)V

    goto/16 :goto_0

    .line 406
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 411
    const-string v1, "MicroMsg.RecoverServer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "downloadingMap put:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  now size:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cLb:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " isContain:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cLb:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    iget-object v1, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cLb:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cLb:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    sget v1, Lcom/tencent/mm/plugin/backup/model/ar;->cKf:I

    if-le v0, v1, :cond_4

    goto/16 :goto_0

    .line 421
    :cond_6
    const-string v0, "MicroMsg.RecoverServer"

    const-string v1, "dataItemIdList is empty"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cLc:Lcom/tencent/mm/plugin/backup/model/s;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/backup/model/s;->GW()I

    move-result v0

    if-ne v0, v9, :cond_7

    .line 423
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cLc:Lcom/tencent/mm/plugin/backup/model/s;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/backup/model/s;->eZ(I)V

    .line 424
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cLc:Lcom/tencent/mm/plugin/backup/model/s;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/backup/model/s;->GV()I

    move-result v0

    if-ne v0, v4, :cond_9

    .line 425
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cLc:Lcom/tencent/mm/plugin/backup/model/s;

    invoke-virtual {v0, v3}, Lcom/tencent/mm/plugin/backup/model/s;->eY(I)V

    .line 431
    :cond_7
    :goto_1
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cLc:Lcom/tencent/mm/plugin/backup/model/s;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/backup/model/s;->GV()I

    move-result v0

    if-eq v0, v4, :cond_8

    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cLc:Lcom/tencent/mm/plugin/backup/model/s;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/backup/model/s;->GV()I

    move-result v0

    if-ne v0, v3, :cond_a

    .line 432
    :cond_8
    new-instance v0, Lcom/tencent/mm/plugin/backup/b/f;

    iget-object v1, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cLc:Lcom/tencent/mm/plugin/backup/model/s;

    invoke-virtual {v1}, Lcom/tencent/mm/plugin/backup/model/s;->GT()I

    move-result v1

    iget-object v2, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cLc:Lcom/tencent/mm/plugin/backup/model/s;

    invoke-virtual {v2}, Lcom/tencent/mm/plugin/backup/model/s;->GU()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cLc:Lcom/tencent/mm/plugin/backup/model/s;

    invoke-virtual {v3}, Lcom/tencent/mm/plugin/backup/model/s;->GW()I

    move-result v3

    iget-object v4, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cLc:Lcom/tencent/mm/plugin/backup/model/s;

    invoke-virtual {v4}, Lcom/tencent/mm/plugin/backup/model/s;->GV()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tencent/mm/plugin/backup/b/f;-><init>(ILjava/lang/String;II)V

    .line 433
    invoke-static {}, Lcom/tencent/mm/plugin/backup/model/d;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 434
    const-string v0, " send RecoverHead"

    invoke-direct {p0, v8, v9, v0}, Lcom/tencent/mm/plugin/backup/model/ar;->e(IILjava/lang/String;)V

    goto/16 :goto_0

    .line 426
    :cond_9
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cLc:Lcom/tencent/mm/plugin/backup/model/s;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/backup/model/s;->GV()I

    move-result v0

    if-ne v0, v3, :cond_7

    .line 427
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cLc:Lcom/tencent/mm/plugin/backup/model/s;

    invoke-virtual {v0, v8}, Lcom/tencent/mm/plugin/backup/model/s;->eY(I)V

    goto :goto_1

    .line 436
    :cond_a
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cLc:Lcom/tencent/mm/plugin/backup/model/s;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/backup/model/s;->GV()I

    move-result v0

    if-ne v0, v8, :cond_b

    .line 437
    const-string v0, "MicroMsg.RecoverServer"

    const-string v1, "recover downLoad finish"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    invoke-static {}, Lcom/tencent/mm/plugin/backup/b/c;->HJ()V

    .line 455
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cKp:Lcom/tencent/mm/plugin/backup/model/z;

    if-eqz v0, :cond_0

    .line 456
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cKp:Lcom/tencent/mm/plugin/backup/model/z;

    iget-object v1, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cLc:Lcom/tencent/mm/plugin/backup/model/s;

    invoke-virtual {v1}, Lcom/tencent/mm/plugin/backup/model/s;->Ha()I

    move-result v1

    int-to-long v1, v1

    iget-object v3, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cLc:Lcom/tencent/mm/plugin/backup/model/s;

    invoke-virtual {v3}, Lcom/tencent/mm/plugin/backup/model/s;->Ha()I

    move-result v3

    int-to-long v3, v3

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/tencent/mm/plugin/backup/model/z;->b(JJ)V

    .line 457
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cKp:Lcom/tencent/mm/plugin/backup/model/z;

    invoke-interface {v0}, Lcom/tencent/mm/plugin/backup/model/z;->Hn()V

    goto/16 :goto_0

    .line 460
    :cond_b
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cKg:Lcom/tencent/mm/plugin/backup/model/al;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cKg:Lcom/tencent/mm/plugin/backup/model/al;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/backup/model/al;->isAlive()Z

    move-result v0

    if-nez v0, :cond_d

    .line 462
    :cond_c
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cKp:Lcom/tencent/mm/plugin/backup/model/z;

    if-eqz v0, :cond_0

    .line 463
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cKp:Lcom/tencent/mm/plugin/backup/model/z;

    invoke-interface {v0}, Lcom/tencent/mm/plugin/backup/model/z;->Hn()V

    goto/16 :goto_0

    .line 465
    :cond_d
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cLc:Lcom/tencent/mm/plugin/backup/model/s;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/backup/model/s;->Hb()Z

    move-result v0

    if-nez v0, :cond_0

    .line 466
    iget-object v1, p0, Lcom/tencent/mm/plugin/backup/model/ar;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 467
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/ar;->lock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 468
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/tencent/mm/plugin/backup/model/ar;I)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 36
    iget v0, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cLd:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cLd:I

    return v0
.end method

.method static synthetic a(Lcom/tencent/mm/plugin/backup/model/ar;Ljava/lang/String;Ljava/util/HashMap;Lcom/tencent/mm/plugin/backup/model/aw;)I
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/mm/plugin/backup/model/ar;->a(Ljava/lang/String;Ljava/util/HashMap;Lcom/tencent/mm/plugin/backup/model/aw;)I

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;Ljava/util/HashMap;Lcom/tencent/mm/plugin/backup/model/aw;)I
    .locals 16
    .parameter
    .parameter
    .parameter

    .prologue
    .line 281
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 282
    const/4 v1, 0x0

    const/4 v2, -0x1

    move-object/from16 v0, p1

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/a/c;->h(Ljava/lang/String;II)[B

    move-result-object v1

    .line 287
    :try_start_0
    new-instance v2, Lcom/tencent/mm/protocal/a/af;

    invoke-direct {v2}, Lcom/tencent/mm/protocal/a/af;-><init>()V

    invoke-virtual {v2, v1}, Lcom/tencent/mm/protocal/a/af;->aH([B)Lcom/tencent/mm/protocal/a/af;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 294
    iget-object v1, v9, Lcom/tencent/mm/protocal/a/af;->fAD:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/protocal/a/ae;

    .line 295
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mm/plugin/backup/model/ar;->cKg:Lcom/tencent/mm/plugin/backup/model/al;

    invoke-virtual {v2}, Lcom/tencent/mm/plugin/backup/model/al;->Hs()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 296
    const/4 v1, -0x1

    .line 320
    :goto_1
    return v1

    .line 289
    :catch_0
    move-exception v1

    const-string v1, "MicroMsg.RecoverServer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "read mmPath errr "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    const/4 v1, 0x0

    goto :goto_1

    .line 299
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mm/plugin/backup/model/ar;->cLc:Lcom/tencent/mm/plugin/backup/model/s;

    invoke-virtual {v2}, Lcom/tencent/mm/plugin/backup/model/s;->Hb()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 300
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mm/plugin/backup/model/ar;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 302
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/mm/plugin/backup/model/ar;->lock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 306
    monitor-exit v2

    .line 310
    :cond_1
    :try_start_2
    const-string v2, "MicroMsg.RecoverMsgLogic"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "recoverMsg "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v1, Lcom/tencent/mm/protocal/a/ae;->dGR:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/plugin/backup/model/d;->Gj()Lcom/tencent/mm/plugin/backup/model/ax;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/plugin/backup/model/ax;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/tencent/mm/storage/e;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {}, Lcom/tencent/mm/plugin/backup/model/d;->Gj()Lcom/tencent/mm/plugin/backup/model/ax;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/plugin/backup/model/ax;->sw()Lcom/tencent/mm/storage/ap;

    move-result-object v6

    iget-object v3, v1, Lcom/tencent/mm/protocal/a/ae;->fzs:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v3}, Lcom/tencent/mm/protocal/a/rw;->getString()Ljava/lang/String;

    move-result-object v5

    iget-object v3, v1, Lcom/tencent/mm/protocal/a/ae;->fzt:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v3}, Lcom/tencent/mm/protocal/a/rw;->getString()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/tencent/mm/plugin/backup/model/r;->GQ()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_2
    const-string v2, "MicroMsg.RecoverMsgLogic"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "hit the blockList: "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 313
    :cond_3
    :goto_2
    iget v1, v1, Lcom/tencent/mm/protocal/a/ae;->dGR:I

    sparse-switch v1, :sswitch_data_0

    :goto_3
    sget v1, Lcom/tencent/mm/plugin/backup/a/h;->cJD:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/tencent/mm/plugin/backup/a/h;->cJD:I

    .line 316
    invoke-virtual/range {p3 .. p3}, Lcom/tencent/mm/plugin/backup/model/aw;->HA()V

    goto/16 :goto_0

    .line 304
    :catch_1
    move-exception v1

    const/4 v1, -0x1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 306
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 310
    :cond_4
    :try_start_4
    const-string v3, "MicroMsg.RecoverMsgLogic"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "fromUserName "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v11}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v5}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-static {v4}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_5
    const-string v2, "MicroMsg.RecoverMsgLogic"

    const-string v3, "form or to username is null"

    invoke-static {v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    .line 311
    :catch_2
    move-exception v2

    .line 312
    const-string v3, "MicroMsg.RecoverServer"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "readFromSdcard err:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 310
    :cond_6
    :try_start_5
    iget v3, v1, Lcom/tencent/mm/protocal/a/ae;->fzo:I

    if-lez v3, :cond_a

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    move-object v3, v4

    :goto_4
    iget v11, v1, Lcom/tencent/mm/protocal/a/ae;->fzo:I

    invoke-virtual {v6, v3, v11}, Lcom/tencent/mm/storage/ap;->ae(Ljava/lang/String;I)Lcom/tencent/mm/storage/ak;

    move-result-object v11

    invoke-virtual {v11}, Lcom/tencent/mm/storage/ak;->Bo()J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v3, v12, v14

    if-nez v3, :cond_3

    iget v3, v1, Lcom/tencent/mm/protocal/a/ae;->fzo:I

    if-eqz v3, :cond_7

    iget v3, v1, Lcom/tencent/mm/protocal/a/ae;->fzo:I

    invoke-virtual {v11, v3}, Lcom/tencent/mm/storage/ak;->dA(I)V

    :cond_7
    iget v3, v1, Lcom/tencent/mm/protocal/a/ae;->fAv:I

    int-to-long v12, v3

    const-wide/16 v14, 0x3e8

    mul-long/2addr v12, v14

    invoke-virtual {v11, v12, v13}, Lcom/tencent/mm/storage/ak;->G(J)V

    iget v3, v1, Lcom/tencent/mm/protocal/a/ae;->dGR:I

    invoke-virtual {v11, v3}, Lcom/tencent/mm/storage/ak;->setType(I)V

    invoke-static {}, Lcom/tencent/mm/plugin/backup/model/d;->Gj()Lcom/tencent/mm/plugin/backup/model/ax;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/plugin/backup/model/ax;->sz()Lcom/tencent/mm/storage/cc;

    move-result-object v3

    invoke-static {}, Lcom/tencent/mm/plugin/backup/model/d;->Gj()Lcom/tencent/mm/plugin/backup/model/ax;

    move-result-object v6

    invoke-virtual {v6}, Lcom/tencent/mm/plugin/backup/model/ax;->su()Lcom/tencent/mm/storage/k;

    move-result-object v12

    invoke-virtual {v3, v5}, Lcom/tencent/mm/storage/cc;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    :cond_8
    const/4 v3, 0x1

    move v6, v3

    :goto_5
    if-eqz v6, :cond_e

    invoke-virtual {v12, v4}, Lcom/tencent/mm/storage/k;->tO(Ljava/lang/String;)Lcom/tencent/mm/storage/i;

    move-result-object v3

    if-eqz v3, :cond_c

    invoke-virtual {v3}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_c

    invoke-virtual {v3}, Lcom/tencent/mm/storage/i;->aAp()Z

    move-result v3

    if-eqz v3, :cond_c

    const-string v2, "MicroMsg.RecoverMsgLogic"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "hit the blockList: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_9
    move-object v3, v5

    goto :goto_4

    :cond_a
    const-string v2, "MicroMsg.RecoverMsgLogic"

    const-string v3, "drop the item server id < 0"

    invoke-static {v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_b
    const/4 v3, 0x0

    move v6, v3

    goto :goto_5

    :cond_c
    const/4 v3, 0x1

    invoke-virtual {v11, v3}, Lcom/tencent/mm/storage/ak;->bZ(I)V

    invoke-virtual {v11, v4}, Lcom/tencent/mm/storage/ak;->uK(Ljava/lang/String;)V

    iget v3, v1, Lcom/tencent/mm/protocal/a/ae;->fAu:I

    invoke-virtual {v11, v3}, Lcom/tencent/mm/storage/ak;->setStatus(I)V

    :cond_d
    :goto_6
    if-eqz v6, :cond_10

    :goto_7
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    const/4 v5, 0x0

    invoke-static {v3, v5}, Lcom/tencent/mm/platformtools/au;->a(Ljava/lang/Integer;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v3, v1, Lcom/tencent/mm/protocal/a/ae;->dGR:I

    invoke-static {v3}, Lcom/tencent/mm/plugin/backup/model/d;->eV(I)Lcom/tencent/mm/plugin/backup/model/y;

    move-result-object v3

    if-nez v3, :cond_11

    const-string v2, "MicroMsg.RecoverMsgLogic"

    const-string v3, "unknow type "

    invoke-static {v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_e
    invoke-virtual {v12, v5}, Lcom/tencent/mm/storage/k;->tO(Ljava/lang/String;)Lcom/tencent/mm/storage/i;

    move-result-object v3

    if-eqz v3, :cond_f

    invoke-virtual {v3}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_f

    invoke-virtual {v3}, Lcom/tencent/mm/storage/i;->aAp()Z

    move-result v3

    if-eqz v3, :cond_f

    const-string v2, "MicroMsg.RecoverMsgLogic"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "hit the blockList: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_f
    const/4 v3, 0x0

    invoke-virtual {v11, v3}, Lcom/tencent/mm/storage/ak;->bZ(I)V

    invoke-virtual {v11, v5}, Lcom/tencent/mm/storage/ak;->uK(Ljava/lang/String;)V

    const/4 v3, 0x4

    invoke-virtual {v11, v3}, Lcom/tencent/mm/storage/ak;->setStatus(I)V

    iget v3, v1, Lcom/tencent/mm/protocal/a/ae;->fAu:I

    const/4 v12, 0x3

    if-ne v3, v12, :cond_d

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    const/4 v12, 0x0

    invoke-static {v3, v12}, Lcom/tencent/mm/platformtools/au;->a(Ljava/lang/Integer;I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_10
    move-object v4, v5

    goto :goto_7

    :cond_11
    invoke-interface {v3, v2, v1, v11}, Lcom/tencent/mm/plugin/backup/model/y;->a(Ljava/lang/String;Lcom/tencent/mm/protocal/a/ae;Lcom/tencent/mm/storage/ak;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_2

    .line 313
    :sswitch_0
    sget v1, Lcom/tencent/mm/plugin/backup/a/h;->cJz:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/tencent/mm/plugin/backup/a/h;->cJz:I

    goto/16 :goto_3

    :sswitch_1
    sget v1, Lcom/tencent/mm/plugin/backup/a/h;->cJC:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/tencent/mm/plugin/backup/a/h;->cJC:I

    goto/16 :goto_3

    :sswitch_2
    sget v1, Lcom/tencent/mm/plugin/backup/a/h;->cJB:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/tencent/mm/plugin/backup/a/h;->cJB:I

    goto/16 :goto_3

    :sswitch_3
    sget v1, Lcom/tencent/mm/plugin/backup/a/h;->cJA:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/tencent/mm/plugin/backup/a/h;->cJA:I

    goto/16 :goto_3

    :sswitch_4
    sget v1, Lcom/tencent/mm/plugin/backup/a/h;->cJx:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/tencent/mm/plugin/backup/a/h;->cJx:I

    goto/16 :goto_3

    :sswitch_5
    sget v1, Lcom/tencent/mm/plugin/backup/a/h;->cJy:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/tencent/mm/plugin/backup/a/h;->cJy:I

    goto/16 :goto_3

    .line 318
    :cond_12
    const-string v1, "MicroMsg.TestInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "total_count: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lcom/tencent/mm/plugin/backup/a/h;->cJD:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "text_count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/tencent/mm/plugin/backup/a/h;->cJz:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "normal_count : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/tencent/mm/plugin/backup/a/h;->cJy:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " image_count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/tencent/mm/plugin/backup/a/h;->cJx:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " voice_count : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/tencent/mm/plugin/backup/a/h;->cJB:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " video_count "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/tencent/mm/plugin/backup/a/h;->cJA:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " app_count : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/tencent/mm/plugin/backup/a/h;->cJC:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sget-wide v5, Lcom/tencent/mm/plugin/backup/a/h;->cJE:J

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " net: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-wide v3, Lcom/tencent/mm/plugin/backup/a/h;->cJG:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    const-string v1, "MicroMsg.RecoverServer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "read item time "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v7

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    iget v1, v9, Lcom/tencent/mm/protocal/a/af;->fAC:I

    goto/16 :goto_1

    .line 313
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x3 -> :sswitch_4
        0x22 -> :sswitch_2
        0x25 -> :sswitch_5
        0x28 -> :sswitch_5
        0x2a -> :sswitch_5
        0x2b -> :sswitch_3
        0x30 -> :sswitch_5
        0x31 -> :sswitch_1
        0x2710 -> :sswitch_5
    .end sparse-switch
.end method

.method static synthetic a(Lcom/tencent/mm/plugin/backup/model/ar;)V
    .locals 6
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cLc:Lcom/tencent/mm/plugin/backup/model/s;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/backup/model/s;->getItemCount()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cLe:I

    const-string v0, "MicroMsg.RecoverServer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "all msg item Count : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cLe:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/cj;->FE()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/tencent/mm/plugin/backup/model/q;->P(J)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cKp:Lcom/tencent/mm/plugin/backup/model/z;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cKp:Lcom/tencent/mm/plugin/backup/model/z;

    const-wide/16 v1, 0x0

    iget v3, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cLe:I

    int-to-long v3, v3

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/tencent/mm/plugin/backup/model/z;->c(JJ)V

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "MicroMsg.RecoverServer"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "net finish time: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cLf:J

    sub-long v4, v0, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "MicroMsg.RecoverServer"

    const-string v3, "readFromSdcard start"

    invoke-static {v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/tencent/mm/plugin/backup/model/at;

    invoke-direct {v2, p0, v0, v1}, Lcom/tencent/mm/plugin/backup/model/at;-><init>(Lcom/tencent/mm/plugin/backup/model/ar;J)V

    iput-object v2, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cKg:Lcom/tencent/mm/plugin/backup/model/al;

    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cKg:Lcom/tencent/mm/plugin/backup/model/al;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/backup/model/al;->setPriority(I)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cKg:Lcom/tencent/mm/plugin/backup/model/al;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/backup/model/al;->start()V

    return-void
.end method

.method static synthetic b(Lcom/tencent/mm/plugin/backup/model/ar;)Lcom/tencent/mm/plugin/backup/model/s;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cLc:Lcom/tencent/mm/plugin/backup/model/s;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/mm/plugin/backup/model/ar;)Lcom/tencent/mm/plugin/backup/model/z;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cKp:Lcom/tencent/mm/plugin/backup/model/z;

    return-object v0
.end method

.method static synthetic d(Lcom/tencent/mm/plugin/backup/model/ar;)I
    .locals 1
    .parameter

    .prologue
    .line 36
    iget v0, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cLd:I

    return v0
.end method

.method static synthetic e(Lcom/tencent/mm/plugin/backup/model/ar;)I
    .locals 1
    .parameter

    .prologue
    .line 36
    iget v0, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cLe:I

    return v0
.end method

.method private e(IILjava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 537
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const/16 v0, 0x270f

    if-ne p2, v0, :cond_0

    .line 538
    const-string v0, "MicroMsg.RecoverServer"

    const-string v1, "dealWithErrType pause err ignore"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    :goto_0
    return-void

    .line 541
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cLc:Lcom/tencent/mm/plugin/backup/model/s;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/backup/model/s;->Hb()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cKp:Lcom/tencent/mm/plugin/backup/model/z;

    if-eqz v0, :cond_1

    .line 542
    const/4 v0, 0x2

    iput v0, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cKo:I

    .line 543
    sget-object v0, Lcom/tencent/mm/plugin/d/c/m;->dZN:Lcom/tencent/mm/plugin/d/c/m;

    const/16 v1, 0x2865

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "2,"

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

    .line 545
    const-string v0, "MicroMsg.RecoverServer"

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

    .line 546
    invoke-static {}, Lcom/tencent/mm/plugin/backup/model/q;->GO()V

    .line 547
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cKp:Lcom/tencent/mm/plugin/backup/model/z;

    if-eqz v0, :cond_1

    .line 548
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cKp:Lcom/tencent/mm/plugin/backup/model/z;

    invoke-interface {v0, p1, p2}, Lcom/tencent/mm/plugin/backup/model/z;->V(II)V

    .line 551
    :cond_1
    invoke-static {}, Lcom/tencent/mm/plugin/backup/b/c;->pause()V

    .line 552
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cLc:Lcom/tencent/mm/plugin/backup/model/s;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/backup/model/s;->aa(Z)V

    goto :goto_0
.end method

.method static synthetic f(Lcom/tencent/mm/plugin/backup/model/ar;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/ar;->ctk:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic g(Lcom/tencent/mm/plugin/backup/model/ar;)I
    .locals 1
    .parameter

    .prologue
    .line 36
    const/4 v0, 0x1

    iput v0, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cKo:I

    return v0
.end method

.method private reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 79
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cLb:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 81
    iput v1, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cAG:I

    .line 83
    iput v1, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cLd:I

    .line 84
    iput v1, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cLe:I

    .line 87
    return-void
.end method


# virtual methods
.method public final GG()Z
    .locals 1

    .prologue
    .line 608
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cLc:Lcom/tencent/mm/plugin/backup/model/s;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/backup/model/s;->GT()I

    move-result v0

    if-eqz v0, :cond_0

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
    .line 612
    iget v0, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cKo:I

    return v0
.end method

.method public final GI()V
    .locals 1

    .prologue
    .line 616
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cKo:I

    .line 617
    return-void
.end method

.method public final Gx()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 358
    iget v0, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cAG:I

    if-nez v0, :cond_0

    .line 359
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/plugin/backup/model/ar;->b(Ljava/lang/Integer;I)V

    .line 362
    :cond_0
    iput v1, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cKo:I

    .line 363
    invoke-direct {p0}, Lcom/tencent/mm/plugin/backup/model/ar;->GA()V

    .line 364
    invoke-static {}, Lcom/tencent/mm/plugin/backup/b/c;->resume()V

    .line 365
    invoke-direct {p0}, Lcom/tencent/mm/plugin/backup/model/ar;->Hw()Z

    move-result v0

    if-nez v0, :cond_1

    .line 366
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cLc:Lcom/tencent/mm/plugin/backup/model/s;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/backup/model/s;->aa(Z)V

    .line 367
    invoke-direct {p0}, Lcom/tencent/mm/plugin/backup/model/ar;->Hy()V

    .line 371
    :goto_0
    return-void

    .line 369
    :cond_1
    const-string v0, "MicroMsg.RecoverServer"

    const-string v1, "reStartBak the task has canceled"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final Gy()Z
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cLc:Lcom/tencent/mm/plugin/backup/model/s;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/backup/model/s;->Hb()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cKg:Lcom/tencent/mm/plugin/backup/model/al;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cKg:Lcom/tencent/mm/plugin/backup/model/al;

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
    .line 155
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cLc:Lcom/tencent/mm/plugin/backup/model/s;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/backup/model/s;->Hb()Z

    move-result v0

    return v0
.end method

.method public final Hv()V
    .locals 2

    .prologue
    .line 138
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cKo:I

    .line 139
    invoke-static {}, Lcom/tencent/mm/plugin/backup/b/c;->pause()V

    .line 140
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cLc:Lcom/tencent/mm/plugin/backup/model/s;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/backup/model/s;->aa(Z)V

    .line 141
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cLc:Lcom/tencent/mm/plugin/backup/model/s;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/backup/model/s;->GV()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 142
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cLc:Lcom/tencent/mm/plugin/backup/model/s;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/backup/model/s;->eY(I)V

    .line 144
    :cond_0
    return-void
.end method

.method public final Hx()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 173
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cKg:Lcom/tencent/mm/plugin/backup/model/al;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cKg:Lcom/tencent/mm/plugin/backup/model/al;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/backup/model/al;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cLc:Lcom/tencent/mm/plugin/backup/model/s;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/backup/model/s;->Hb()Z

    move-result v0

    if-nez v0, :cond_0

    .line 174
    iget-object v1, p0, Lcom/tencent/mm/plugin/backup/model/ar;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 175
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/ar;->lock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 176
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    :goto_0
    return-void

    .line 176
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cLc:Lcom/tencent/mm/plugin/backup/model/s;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/backup/model/s;->GV()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 180
    const-string v0, "MicroMsg.RecoverServer"

    const-string v1, "recoverFromSdcard is recovering"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 183
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cLc:Lcom/tencent/mm/plugin/backup/model/s;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/backup/model/s;->eY(I)V

    .line 184
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cLc:Lcom/tencent/mm/plugin/backup/model/s;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/backup/model/s;->aa(Z)V

    .line 185
    new-instance v0, Lcom/tencent/mm/plugin/backup/model/as;

    invoke-direct {v0, p0}, Lcom/tencent/mm/plugin/backup/model/as;-><init>(Lcom/tencent/mm/plugin/backup/model/ar;)V

    invoke-static {v0}, Lcom/tencent/mm/plugin/backup/model/d;->a(Lcom/tencent/mm/plugin/backup/model/j;)V

    goto :goto_0
.end method

.method public final Hz()Z
    .locals 2

    .prologue
    .line 604
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cLc:Lcom/tencent/mm/plugin/backup/model/s;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/backup/model/s;->GV()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(IILcom/tencent/mm/n/x;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 580
    invoke-virtual {p3}, Lcom/tencent/mm/n/x;->getType()I

    move-result v0

    const/16 v1, 0x147

    if-ne v0, v1, :cond_0

    .line 581
    check-cast p3, Lcom/tencent/mm/plugin/backup/b/a;

    .line 583
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cLc:Lcom/tencent/mm/plugin/backup/model/s;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/backup/model/s;->GU()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/tencent/mm/plugin/backup/b/a;->iC(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 584
    const-string v0, "MicroMsg.RecoverServer"

    const-string v1, "scene back is old"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    :cond_0
    :goto_0
    return-void

    .line 588
    :cond_1
    iget v0, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cAG:I

    invoke-virtual {p3}, Lcom/tencent/mm/plugin/backup/b/a;->HI()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cAG:I

    .line 589
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cKp:Lcom/tencent/mm/plugin/backup/model/z;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cLc:Lcom/tencent/mm/plugin/backup/model/s;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/backup/model/s;->Hb()Z

    move-result v0

    if-nez v0, :cond_0

    .line 590
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cKp:Lcom/tencent/mm/plugin/backup/model/z;

    iget v1, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cAG:I

    int-to-long v1, v1

    iget-object v3, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cLc:Lcom/tencent/mm/plugin/backup/model/s;

    invoke-virtual {v3}, Lcom/tencent/mm/plugin/backup/model/s;->Ha()I

    move-result v3

    int-to-long v3, v3

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/tencent/mm/plugin/backup/model/z;->b(JJ)V

    goto :goto_0
.end method

.method public final a(IILjava/lang/String;Lcom/tencent/mm/n/x;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v5, 0x147

    const/4 v4, 0x1

    .line 475
    const-string v0, "MicroMsg.RecoverServer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSceneEnd errType:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " errCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p4

    .line 476
    check-cast v0, Lcom/tencent/mm/plugin/backup/b/a;

    .line 478
    iget-object v1, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cLc:Lcom/tencent/mm/plugin/backup/model/s;

    invoke-virtual {v1}, Lcom/tencent/mm/plugin/backup/model/s;->GU()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/backup/b/a;->iC(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 479
    const-string v0, "MicroMsg.RecoverServer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "scene back is old, this.bakChatClientId:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cLc:Lcom/tencent/mm/plugin/backup/model/s;

    invoke-virtual {v2}, Lcom/tencent/mm/plugin/backup/model/s;->GU()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    :cond_0
    :goto_0
    return-void

    .line 483
    :cond_1
    invoke-virtual {p4}, Lcom/tencent/mm/n/x;->getType()I

    move-result v0

    if-ne v0, v5, :cond_2

    .line 484
    invoke-virtual {p4}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 485
    const-string v1, "MicroMsg.RecoverServer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "downloadingMap remove:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    iget-object v1, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cLb:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    :cond_2
    if-nez p1, :cond_3

    if-eqz p2, :cond_4

    .line 490
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sceneType"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Lcom/tencent/mm/n/x;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/tencent/mm/plugin/backup/model/ar;->e(IILjava/lang/String;)V

    goto :goto_0

    .line 495
    :cond_4
    invoke-virtual {p4}, Lcom/tencent/mm/n/x;->getType()I

    move-result v0

    const/16 v1, 0x146

    if-ne v0, v1, :cond_9

    .line 496
    check-cast p4, Lcom/tencent/mm/plugin/backup/b/f;

    .line 497
    invoke-virtual {p4}, Lcom/tencent/mm/plugin/backup/b/f;->getDataType()I

    move-result v0

    .line 498
    iget-object v1, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cLc:Lcom/tencent/mm/plugin/backup/model/s;

    invoke-virtual {v1}, Lcom/tencent/mm/plugin/backup/model/s;->GV()I

    move-result v1

    if-eq v0, v1, :cond_5

    .line 499
    const-string v1, "MicroMsg.RecoverServer"

    const-string v2, "%d type is not the same with stateMode"

    new-array v3, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 503
    :cond_5
    invoke-virtual {p4}, Lcom/tencent/mm/plugin/backup/b/f;->HO()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/a/rw;

    .line 504
    iget-object v2, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cLc:Lcom/tencent/mm/plugin/backup/model/s;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/a/rw;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/mm/plugin/backup/model/s;->is(Ljava/lang/String;)V

    .line 505
    iget-object v2, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cLc:Lcom/tencent/mm/plugin/backup/model/s;

    invoke-virtual {v2}, Lcom/tencent/mm/plugin/backup/model/s;->GV()I

    move-result v2

    if-ne v2, v4, :cond_6

    .line 506
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/mm/plugin/backup/model/d;->Gr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mmbakItem/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/a/rw;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/mm/plugin/backup/model/r;->ip(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/a/rw;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 508
    iget-object v2, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cLc:Lcom/tencent/mm/plugin/backup/model/s;

    invoke-virtual {v2, v0}, Lcom/tencent/mm/plugin/backup/model/s;->iu(Ljava/lang/String;)V

    goto :goto_1

    .line 512
    :cond_7
    const-string v0, "MicroMsg.RecoverServer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "headIndex: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cLc:Lcom/tencent/mm/plugin/backup/model/s;

    invoke-virtual {v2}, Lcom/tencent/mm/plugin/backup/model/s;->GW()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    invoke-virtual {p4}, Lcom/tencent/mm/plugin/backup/b/f;->HP()I

    move-result v0

    if-nez v0, :cond_8

    .line 514
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cLc:Lcom/tencent/mm/plugin/backup/model/s;

    invoke-virtual {p4}, Lcom/tencent/mm/plugin/backup/b/f;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/backup/model/s;->eZ(I)V

    .line 515
    invoke-direct {p0}, Lcom/tencent/mm/plugin/backup/model/ar;->Hy()V

    goto/16 :goto_0

    .line 520
    :cond_8
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cLc:Lcom/tencent/mm/plugin/backup/model/s;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/backup/model/s;->eZ(I)V

    .line 521
    invoke-direct {p0}, Lcom/tencent/mm/plugin/backup/model/ar;->Hy()V

    goto/16 :goto_0

    .line 523
    :cond_9
    invoke-virtual {p4}, Lcom/tencent/mm/n/x;->getType()I

    move-result v0

    if-ne v0, v5, :cond_0

    .line 525
    check-cast p4, Lcom/tencent/mm/plugin/backup/b/c;

    .line 526
    invoke-virtual {p4}, Lcom/tencent/mm/plugin/backup/b/c;->HL()Ljava/lang/String;

    move-result-object v0

    .line 528
    iget-object v1, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cLc:Lcom/tencent/mm/plugin/backup/model/s;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/plugin/backup/model/s;->it(Ljava/lang/String;)V

    .line 529
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cLc:Lcom/tencent/mm/plugin/backup/model/s;

    iget-object v1, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cLc:Lcom/tencent/mm/plugin/backup/model/s;

    invoke-virtual {v1}, Lcom/tencent/mm/plugin/backup/model/s;->GZ()I

    move-result v1

    invoke-virtual {p4}, Lcom/tencent/mm/plugin/backup/b/c;->vR()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/backup/model/s;->fa(I)V

    .line 530
    const-string v0, "MicroMsg.RecoverServer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "dataItemIdList : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cLc:Lcom/tencent/mm/plugin/backup/model/s;

    invoke-virtual {v2}, Lcom/tencent/mm/plugin/backup/model/s;->GX()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " downloadingMap:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cLb:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    invoke-direct {p0}, Lcom/tencent/mm/plugin/backup/model/ar;->Hy()V

    goto/16 :goto_0
.end method

.method public final a(Lcom/tencent/mm/plugin/backup/model/z;)V
    .locals 0
    .parameter

    .prologue
    .line 151
    iput-object p1, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cKp:Lcom/tencent/mm/plugin/backup/model/z;

    .line 152
    return-void
.end method

.method public final b(Lcom/tencent/mm/plugin/backup/model/z;)V
    .locals 1
    .parameter

    .prologue
    .line 163
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cKp:Lcom/tencent/mm/plugin/backup/model/z;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cKp:Lcom/tencent/mm/plugin/backup/model/z;

    .line 166
    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/Integer;I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 323
    iput v1, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cKo:I

    .line 324
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cLc:Lcom/tencent/mm/plugin/backup/model/s;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/backup/model/s;->aa(Z)V

    .line 325
    invoke-direct {p0}, Lcom/tencent/mm/plugin/backup/model/ar;->GA()V

    .line 326
    invoke-static {}, Lcom/tencent/mm/plugin/backup/model/r;->GS()I

    move-result v0

    sput v0, Lcom/tencent/mm/plugin/backup/model/ar;->cKf:I

    .line 328
    invoke-static {}, Lcom/tencent/mm/plugin/backup/b/c;->resume()V

    .line 330
    invoke-static {}, Lcom/tencent/mm/plugin/backup/model/d;->Gn()Lcom/tencent/mm/plugin/backup/model/am;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/backup/model/am;->init()V

    .line 331
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/tencent/mm/plugin/backup/a/h;->cJF:J

    .line 333
    if-nez p1, :cond_3

    .line 334
    iget v0, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cAG:I

    if-nez v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cLc:Lcom/tencent/mm/plugin/backup/model/s;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/backup/model/s;->GZ()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cAG:I

    .line 338
    :cond_0
    iget v0, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cLd:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cKp:Lcom/tencent/mm/plugin/backup/model/z;

    if-eqz v0, :cond_1

    .line 339
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cKp:Lcom/tencent/mm/plugin/backup/model/z;

    iget v1, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cAG:I

    int-to-long v1, v1

    iget-object v3, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cLc:Lcom/tencent/mm/plugin/backup/model/s;

    invoke-virtual {v3}, Lcom/tencent/mm/plugin/backup/model/s;->Ha()I

    move-result v3

    int-to-long v3, v3

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/tencent/mm/plugin/backup/model/z;->b(JJ)V

    .line 341
    :cond_1
    iget v0, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cLd:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cKp:Lcom/tencent/mm/plugin/backup/model/z;

    if-eqz v0, :cond_2

    .line 342
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cKp:Lcom/tencent/mm/plugin/backup/model/z;

    iget v1, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cLd:I

    int-to-long v1, v1

    iget v3, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cLe:I

    int-to-long v3, v3

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/tencent/mm/plugin/backup/model/z;->c(JJ)V

    .line 353
    :cond_2
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cLf:J

    .line 354
    invoke-direct {p0}, Lcom/tencent/mm/plugin/backup/model/ar;->Hy()V

    .line 355
    return-void

    .line 345
    :cond_3
    invoke-direct {p0}, Lcom/tencent/mm/plugin/backup/model/ar;->reset()V

    .line 346
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 347
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/cj;->FE()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Random;->setSeed(J)V

    .line 348
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/cj;->FE()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Random;->nextDouble()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/a/f;->h([B)Ljava/lang/String;

    move-result-object v0

    .line 349
    const-string v1, "MicroMsg.RecoverServer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "startTask bakChatClientId:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bakchatSvrID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    iget-object v1, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cLc:Lcom/tencent/mm/plugin/backup/model/s;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2, v0, p2}, Lcom/tencent/mm/plugin/backup/model/s;->a(ILjava/lang/String;I)V

    goto :goto_0
.end method

.method public final g(ZZ)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 116
    if-eqz p2, :cond_0

    .line 117
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/cj;->FE()J

    move-result-wide v0

    const/4 v2, 0x2

    iget v3, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cAG:I

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/mm/plugin/backup/model/q;->a(JII)V

    .line 119
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cKq:Z

    invoke-static {}, Lcom/tencent/mm/plugin/backup/model/d;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0x146

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/n/ac;->b(ILcom/tencent/mm/n/m;)V

    invoke-static {}, Lcom/tencent/mm/plugin/backup/model/d;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0x147

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/n/ac;->b(ILcom/tencent/mm/n/m;)V

    .line 120
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cLb:Ljava/util/HashMap;

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

    .line 121
    invoke-static {}, Lcom/tencent/mm/plugin/backup/model/d;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/tencent/mm/n/ac;->cancel(I)V

    goto :goto_0

    .line 123
    :cond_1
    invoke-direct {p0}, Lcom/tencent/mm/plugin/backup/model/ar;->reset()V

    .line 124
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cLc:Lcom/tencent/mm/plugin/backup/model/s;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/backup/model/s;->aa(Z)V

    .line 125
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cKg:Lcom/tencent/mm/plugin/backup/model/al;

    if-eqz v0, :cond_2

    .line 126
    const-string v0, "MicroMsg.RecoverServer"

    const-string v1, "cancelBak kill thread"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-object v1, p0, Lcom/tencent/mm/plugin/backup/model/ar;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 128
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cKg:Lcom/tencent/mm/plugin/backup/model/al;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/backup/model/al;->kill()V

    .line 129
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    :cond_2
    if-eqz p1, :cond_3

    .line 133
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cLc:Lcom/tencent/mm/plugin/backup/model/s;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/backup/model/s;->reset()V

    .line 135
    :cond_3
    return-void

    .line 129
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final getOffset()I
    .locals 1

    .prologue
    .line 596
    iget v0, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cAG:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cAG:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cLc:Lcom/tencent/mm/plugin/backup/model/s;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/backup/model/s;->GZ()I

    move-result v0

    goto :goto_0
.end method

.method public final vR()I
    .locals 1

    .prologue
    .line 600
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/ar;->cLc:Lcom/tencent/mm/plugin/backup/model/s;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/backup/model/s;->Ha()I

    move-result v0

    return v0
.end method
