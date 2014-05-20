.class public final Lcom/tencent/mm/w/u;
.super Lcom/tencent/mm/n/x;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/network/ab;


# instance fields
.field private TAG:Ljava/lang/String;

.field private bLP:Lcom/tencent/mm/storage/ak;

.field private cjh:Lcom/tencent/mm/n/m;

.field private ckU:I

.field private final cke:Lcom/tencent/mm/n/a;

.field private cpL:J

.field private final ctM:Lcom/tencent/mm/n/n;

.field private final ctN:J

.field private ctO:I

.field private ctP:I

.field private ctQ:Lcom/tencent/mm/modelstat/c;

.field private ctR:Ljava/lang/String;

.field private ctS:I

.field ctT:Ljava/lang/String;

.field ctU:Ljava/lang/String;

.field private ctV:Lcom/tencent/mm/modelcdntran/n;

.field private startOffset:I

.field private startTime:J

.field private token:I


# direct methods
.method public constructor <init>(JJILcom/tencent/mm/n/n;)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x2

    const/4 v5, -0x1

    const-wide/16 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 71
    invoke-direct {p0}, Lcom/tencent/mm/n/x;-><init>()V

    .line 43
    const-string v0, "MicroMsg.NetSceneGetMsgImg"

    iput-object v0, p0, Lcom/tencent/mm/w/u;->TAG:Ljava/lang/String;

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/w/u;->ctQ:Lcom/tencent/mm/modelstat/c;

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/w/u;->bLP:Lcom/tencent/mm/storage/ak;

    .line 61
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/w/u;->ctR:Ljava/lang/String;

    .line 62
    iput-wide v3, p0, Lcom/tencent/mm/w/u;->startTime:J

    .line 63
    iput v5, p0, Lcom/tencent/mm/w/u;->startOffset:I

    .line 64
    iput v2, p0, Lcom/tencent/mm/w/u;->ctS:I

    .line 66
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/w/u;->ctT:Ljava/lang/String;

    .line 67
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/w/u;->ctU:Ljava/lang/String;

    .line 68
    iput v2, p0, Lcom/tencent/mm/w/u;->ckU:I

    .line 126
    iput v5, p0, Lcom/tencent/mm/w/u;->token:I

    .line 206
    new-instance v0, Lcom/tencent/mm/w/w;

    invoke-direct {v0, p0}, Lcom/tencent/mm/w/w;-><init>(Lcom/tencent/mm/w/u;)V

    iput-object v0, p0, Lcom/tencent/mm/w/u;->ctV:Lcom/tencent/mm/modelcdntran/n;

    .line 72
    cmp-long v0, p1, v3

    if-ltz v0, :cond_2

    cmp-long v0, p3, v3

    if-ltz v0, :cond_2

    if-eqz p6, :cond_2

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 73
    iput-object p6, p0, Lcom/tencent/mm/w/u;->ctM:Lcom/tencent/mm/n/n;

    .line 74
    iput p5, p0, Lcom/tencent/mm/w/u;->ctP:I

    .line 75
    iput-wide p1, p0, Lcom/tencent/mm/w/u;->ctN:J

    .line 76
    iput-wide p1, p0, Lcom/tencent/mm/w/u;->cpL:J

    .line 78
    invoke-static {}, Lcom/tencent/mm/w/ag;->Ba()Lcom/tencent/mm/w/g;

    move-result-object v0

    iget-wide v3, p0, Lcom/tencent/mm/w/u;->cpL:J

    invoke-virtual {v0, v3, v4}, Lcom/tencent/mm/w/g;->E(J)Lcom/tencent/mm/w/e;

    move-result-object v0

    .line 80
    if-ne p5, v1, :cond_3

    .line 81
    invoke-virtual {v0}, Lcom/tencent/mm/w/e;->AK()I

    move-result v0

    int-to-long v3, v0

    iput-wide v3, p0, Lcom/tencent/mm/w/u;->cpL:J

    .line 82
    invoke-static {}, Lcom/tencent/mm/w/ag;->Ba()Lcom/tencent/mm/w/g;

    move-result-object v0

    iget-wide v3, p0, Lcom/tencent/mm/w/u;->cpL:J

    invoke-virtual {v0, v3, v4}, Lcom/tencent/mm/w/g;->E(J)Lcom/tencent/mm/w/e;

    move-result-object v0

    move-object v3, v0

    .line 85
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/tencent/mm/w/u;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v4, p0, Lcom/tencent/mm/w/u;->cpL:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "]"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/w/u;->TAG:Ljava/lang/String;

    .line 87
    new-instance v0, Lcom/tencent/mm/n/b;

    invoke-direct {v0}, Lcom/tencent/mm/n/b;-><init>()V

    .line 88
    new-instance v4, Lcom/tencent/mm/protocal/a/jg;

    invoke-direct {v4}, Lcom/tencent/mm/protocal/a/jg;-><init>()V

    invoke-virtual {v0, v4}, Lcom/tencent/mm/n/b;->a(Lcom/tencent/mm/am/a;)V

    .line 89
    new-instance v4, Lcom/tencent/mm/protocal/a/jh;

    invoke-direct {v4}, Lcom/tencent/mm/protocal/a/jh;-><init>()V

    invoke-virtual {v0, v4}, Lcom/tencent/mm/n/b;->b(Lcom/tencent/mm/am/a;)V

    .line 90
    const-string v4, "/cgi-bin/micromsg-bin/getmsgimg"

    invoke-virtual {v0, v4}, Lcom/tencent/mm/n/b;->es(Ljava/lang/String;)V

    .line 91
    const/16 v4, 0x6d

    invoke-virtual {v0, v4}, Lcom/tencent/mm/n/b;->cN(I)V

    .line 92
    const/16 v4, 0xa

    invoke-virtual {v0, v4}, Lcom/tencent/mm/n/b;->cO(I)V

    .line 93
    const v4, 0x3b9aca0a

    invoke-virtual {v0, v4}, Lcom/tencent/mm/n/b;->cP(I)V

    .line 94
    invoke-virtual {v0}, Lcom/tencent/mm/n/b;->wx()Lcom/tencent/mm/n/a;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/w/u;->cke:Lcom/tencent/mm/n/a;

    .line 96
    iget-object v0, p0, Lcom/tencent/mm/w/u;->cke:Lcom/tencent/mm/n/a;

    invoke-virtual {v0}, Lcom/tencent/mm/n/a;->wr()Lcom/tencent/mm/am/a;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/a/jg;

    .line 97
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/mm/model/b;->sw()Lcom/tencent/mm/storage/ap;

    move-result-object v4

    invoke-virtual {v4, p3, p4}, Lcom/tencent/mm/storage/ap;->bU(J)Lcom/tencent/mm/storage/ak;

    move-result-object v4

    iput-object v4, p0, Lcom/tencent/mm/w/u;->bLP:Lcom/tencent/mm/storage/ak;

    .line 99
    invoke-virtual {v3}, Lcom/tencent/mm/w/e;->getOffset()I

    move-result v4

    iput v4, v0, Lcom/tencent/mm/protocal/a/jg;->fEd:I

    .line 100
    invoke-virtual {v3}, Lcom/tencent/mm/w/e;->vR()I

    move-result v4

    iput v4, v0, Lcom/tencent/mm/protocal/a/jg;->fAL:I

    .line 101
    iget-object v4, p0, Lcom/tencent/mm/w/u;->TAG:Ljava/lang/String;

    const-string v5, "cdntra offset:%d total:%d stack:[%s]"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/tencent/mm/w/e;->getOffset()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-virtual {v3}, Lcom/tencent/mm/w/e;->vR()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/cj;->azV()Lcom/tencent/mm/sdk/platformtools/cm;

    move-result-object v1

    aput-object v1, v6, v8

    invoke-static {v4, v5, v6}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    iget-object v1, p0, Lcom/tencent/mm/w/u;->bLP:Lcom/tencent/mm/storage/ak;

    invoke-virtual {v1}, Lcom/tencent/mm/storage/ak;->AH()I

    move-result v1

    iput v1, v0, Lcom/tencent/mm/protocal/a/jg;->fzo:I

    .line 104
    new-instance v1, Lcom/tencent/mm/protocal/a/rw;

    invoke-direct {v1}, Lcom/tencent/mm/protocal/a/rw;-><init>()V

    iget-object v4, p0, Lcom/tencent/mm/w/u;->bLP:Lcom/tencent/mm/storage/ak;

    invoke-virtual {v4}, Lcom/tencent/mm/storage/ak;->aCl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/tencent/mm/protocal/a/rw;->sn(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/rw;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/protocal/a/jg;->fzs:Lcom/tencent/mm/protocal/a/rw;

    .line 105
    new-instance v4, Lcom/tencent/mm/protocal/a/rw;

    invoke-direct {v4}, Lcom/tencent/mm/protocal/a/rw;-><init>()V

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/tencent/mm/storage/e;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Lcom/tencent/mm/protocal/a/rw;->sn(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/rw;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/protocal/a/jg;->fzt:Lcom/tencent/mm/protocal/a/rw;

    .line 106
    iput p5, v0, Lcom/tencent/mm/protocal/a/jg;->fLx:I

    .line 107
    invoke-virtual {v3}, Lcom/tencent/mm/w/e;->getOffset()I

    move-result v0

    if-nez v0, :cond_0

    .line 108
    new-instance v0, Lcom/tencent/mm/modelstat/c;

    const/16 v1, 0x6d

    invoke-virtual {v3}, Lcom/tencent/mm/w/e;->vR()I

    move-result v4

    int-to-long v4, v4

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/tencent/mm/modelstat/c;-><init>(IZJ)V

    iput-object v0, p0, Lcom/tencent/mm/w/u;->ctQ:Lcom/tencent/mm/modelstat/c;

    .line 110
    :cond_0
    const/16 v0, 0x2000

    iput v0, p0, Lcom/tencent/mm/w/u;->ctO:I

    .line 112
    if-eqz p6, :cond_1

    .line 113
    invoke-virtual {v3}, Lcom/tencent/mm/w/e;->getOffset()I

    move-result v0

    .line 114
    invoke-virtual {v3}, Lcom/tencent/mm/w/e;->vR()I

    move-result v1

    .line 115
    new-instance v2, Lcom/tencent/mm/w/v;

    invoke-direct {v2, p0, p6, v0, v1}, Lcom/tencent/mm/w/v;-><init>(Lcom/tencent/mm/w/u;Lcom/tencent/mm/n/n;II)V

    invoke-static {v2}, Lcom/tencent/mm/sdk/platformtools/an;->i(Ljava/lang/Runnable;)V

    .line 124
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 72
    goto/16 :goto_0

    :cond_3
    move-object v3, v0

    goto/16 :goto_1
.end method

.method static synthetic a(Lcom/tencent/mm/w/u;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/tencent/mm/w/u;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private a(Lcom/tencent/mm/w/e;III[B)Z
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 361
    invoke-virtual {p1, p2}, Lcom/tencent/mm/w/e;->cJ(I)V

    .line 362
    add-int v0, p3, p4

    invoke-virtual {p1, v0}, Lcom/tencent/mm/w/e;->setOffset(I)V

    .line 363
    iput p4, p0, Lcom/tencent/mm/w/u;->ctO:I

    .line 364
    invoke-static {}, Lcom/tencent/mm/w/ag;->Ba()Lcom/tencent/mm/w/g;

    move-result-object v0

    iget-wide v5, p0, Lcom/tencent/mm/w/u;->cpL:J

    invoke-virtual {v0, v5, v6, p1}, Lcom/tencent/mm/w/g;->a(JLcom/tencent/mm/w/e;)I

    move-result v0

    if-gez v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/tencent/mm/w/u;->TAG:Ljava/lang/String;

    const-string v1, "onGYNetEnd : update img fail"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    iget-object v0, p0, Lcom/tencent/mm/w/u;->cjh:Lcom/tencent/mm/n/m;

    const/4 v1, -0x1

    const-string v2, ""

    invoke-interface {v0, v9, v1, v2, p0}, Lcom/tencent/mm/n/m;->a(IILjava/lang/String;Lcom/tencent/mm/n/x;)V

    move v0, v3

    .line 406
    :goto_0
    return v0

    .line 370
    :cond_0
    if-eqz p5, :cond_1

    .line 371
    iget-object v0, p0, Lcom/tencent/mm/w/u;->ctU:Ljava/lang/String;

    invoke-static {v0, p5}, Lcom/tencent/mm/a/c;->a(Ljava/lang/String;[B)I

    .line 373
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/w/u;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "onGYNetEnd : offset = "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/tencent/mm/w/e;->getOffset()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " totalLen = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tencent/mm/w/e;->vR()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " stack:[%s]"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/cj;->azV()Lcom/tencent/mm/sdk/platformtools/cm;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v0, v1, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 375
    iget-object v0, p0, Lcom/tencent/mm/w/u;->ctM:Lcom/tencent/mm/n/n;

    if-eqz v0, :cond_2

    .line 376
    new-instance v0, Lcom/tencent/mm/w/x;

    invoke-direct {v0, p0, p1}, Lcom/tencent/mm/w/x;-><init>(Lcom/tencent/mm/w/u;Lcom/tencent/mm/w/e;)V

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/an;->i(Ljava/lang/Runnable;)V

    .line 384
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/w/u;->TAG:Ljava/lang/String;

    const-string v1, "cdntra check iscompleted :%b clientid:%s"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/tencent/mm/w/e;->AL()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v3

    iget-object v6, p0, Lcom/tencent/mm/w/u;->ctR:Ljava/lang/String;

    aput-object v6, v5, v4

    invoke-static {v0, v1, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 385
    invoke-virtual {p1}, Lcom/tencent/mm/w/e;->AL()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 386
    iget-object v0, p0, Lcom/tencent/mm/w/u;->ctR:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 387
    sget-object v0, Lcom/tencent/mm/plugin/d/c/m;->dZN:Lcom/tencent/mm/plugin/d/c/m;

    const/16 v1, 0x28b4

    const/4 v5, 0x7

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    iget-wide v6, p0, Lcom/tencent/mm/w/u;->startTime:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/cj;->FD()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v9

    const/4 v6, 0x4

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/tencent/mm/modelcdntran/h;->M(Landroid/content/Context;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x5

    iget v7, p0, Lcom/tencent/mm/w/u;->ctS:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x6

    iget v7, p0, Lcom/tencent/mm/w/u;->startOffset:I

    sub-int v7, p2, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v0, v1, v5}, Lcom/tencent/mm/plugin/d/c/m;->d(I[Ljava/lang/Object;)V

    .line 392
    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/w/u;->ctU:Ljava/lang/String;

    if-eqz v0, :cond_4

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_4
    move-object v0, v2

    .line 394
    :goto_1
    invoke-static {}, Lcom/tencent/mm/w/ag;->Ba()Lcom/tencent/mm/w/g;

    move-result-object v1

    iget-object v5, p0, Lcom/tencent/mm/w/u;->ctT:Ljava/lang/String;

    invoke-virtual {v1, v5, v2, v0}, Lcom/tencent/mm/w/g;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 395
    new-instance v2, Ljava/io/File;

    iget-object v5, p0, Lcom/tencent/mm/w/u;->ctU:Ljava/lang/String;

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 397
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/tencent/mm/w/u;->ctT:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/tencent/mm/w/e;->fR(Ljava/lang/String;)V

    .line 398
    iget-object v2, p0, Lcom/tencent/mm/w/u;->TAG:Ljava/lang/String;

    const-string v5, "cdntra ext:[%s] tmp:[%s] full:[%s] bigimg:[%s]"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v3

    iget-object v0, p0, Lcom/tencent/mm/w/u;->ctU:Ljava/lang/String;

    aput-object v0, v6, v4

    aput-object v1, v6, v8

    invoke-virtual {p1}, Lcom/tencent/mm/w/e;->AI()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v9

    invoke-static {v2, v5, v6}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 399
    invoke-static {}, Lcom/tencent/mm/w/ag;->Ba()Lcom/tencent/mm/w/g;

    move-result-object v0

    iget-wide v1, p0, Lcom/tencent/mm/w/u;->cpL:J

    invoke-virtual {v0, v1, v2, p1}, Lcom/tencent/mm/w/g;->a(JLcom/tencent/mm/w/e;)I

    .line 400
    iget-object v0, p0, Lcom/tencent/mm/w/u;->ctQ:Lcom/tencent/mm/modelstat/c;

    if-eqz v0, :cond_5

    .line 401
    iget-object v0, p0, Lcom/tencent/mm/w/u;->ctQ:Lcom/tencent/mm/modelstat/c;

    invoke-virtual {p1}, Lcom/tencent/mm/w/e;->vR()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/modelstat/c;->F(J)V

    .line 402
    :cond_5
    iget-object v0, p0, Lcom/tencent/mm/w/u;->cjh:Lcom/tencent/mm/n/m;

    const-string v1, ""

    invoke-interface {v0, v3, v3, v1, p0}, Lcom/tencent/mm/n/m;->a(IILjava/lang/String;Lcom/tencent/mm/n/x;)V

    move v0, v3

    .line 404
    goto/16 :goto_0

    .line 392
    :cond_6
    invoke-static {v0, v3, v8}, Lcom/tencent/mm/a/c;->g(Ljava/lang/String;II)[B

    move-result-object v5

    if-eqz v5, :cond_7

    array-length v0, v5

    if-ge v0, v8, :cond_8

    :cond_7
    move-object v0, v2

    goto :goto_1

    :cond_8
    const-string v1, ".jpg"

    aget-byte v0, v5, v3

    if-gez v0, :cond_9

    add-int/lit16 v0, v0, 0x100

    :cond_9
    aget-byte v5, v5, v4

    if-gez v5, :cond_a

    add-int/lit16 v5, v5, 0x100

    :cond_a
    const/16 v6, 0x42

    if-ne v0, v6, :cond_b

    const/16 v6, 0x4d

    if-ne v5, v6, :cond_b

    const-string v0, ".bmp"

    goto/16 :goto_1

    :cond_b
    const/16 v6, 0xff

    if-ne v0, v6, :cond_c

    const/16 v6, 0xd8

    if-ne v5, v6, :cond_c

    const-string v0, ".jpg"

    goto/16 :goto_1

    :cond_c
    const/16 v6, 0x89

    if-ne v0, v6, :cond_d

    const/16 v6, 0x50

    if-ne v5, v6, :cond_d

    const-string v0, ".png"

    goto/16 :goto_1

    :cond_d
    const/16 v6, 0x47

    if-ne v0, v6, :cond_f

    const/16 v0, 0x49

    if-ne v5, v0, :cond_f

    const-string v0, ".gif"

    goto/16 :goto_1

    :cond_e
    move v0, v4

    .line 406
    goto/16 :goto_0

    :cond_f
    move-object v0, v1

    goto/16 :goto_1
.end method

.method static synthetic a(Lcom/tencent/mm/w/u;Lcom/tencent/mm/w/e;III)Z
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 41
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/tencent/mm/w/u;->a(Lcom/tencent/mm/w/e;III[B)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/tencent/mm/w/u;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/tencent/mm/w/u;->ctR:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/mm/w/u;)J
    .locals 2
    .parameter

    .prologue
    .line 41
    iget-wide v0, p0, Lcom/tencent/mm/w/u;->ctN:J

    return-wide v0
.end method

.method static synthetic d(Lcom/tencent/mm/w/u;)J
    .locals 2
    .parameter

    .prologue
    .line 41
    iget-wide v0, p0, Lcom/tencent/mm/w/u;->startTime:J

    return-wide v0
.end method

.method static synthetic e(Lcom/tencent/mm/w/u;)I
    .locals 1
    .parameter

    .prologue
    .line 41
    iget v0, p0, Lcom/tencent/mm/w/u;->ctS:I

    return v0
.end method

.method static synthetic f(Lcom/tencent/mm/w/u;)I
    .locals 1
    .parameter

    .prologue
    .line 41
    iget v0, p0, Lcom/tencent/mm/w/u;->ckU:I

    return v0
.end method

.method static synthetic g(Lcom/tencent/mm/w/u;)Lcom/tencent/mm/n/m;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/tencent/mm/w/u;->cjh:Lcom/tencent/mm/n/m;

    return-object v0
.end method

.method static synthetic h(Lcom/tencent/mm/w/u;)J
    .locals 2
    .parameter

    .prologue
    .line 41
    iget-wide v0, p0, Lcom/tencent/mm/w/u;->cpL:J

    return-wide v0
.end method

.method static synthetic i(Lcom/tencent/mm/w/u;)Lcom/tencent/mm/n/n;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/tencent/mm/w/u;->ctM:Lcom/tencent/mm/n/n;

    return-object v0
.end method


# virtual methods
.method public final AT()I
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lcom/tencent/mm/w/u;->token:I

    return v0
.end method

.method public final AU()J
    .locals 2

    .prologue
    .line 410
    iget-wide v0, p0, Lcom/tencent/mm/w/u;->ctN:J

    return-wide v0
.end method

.method public final a(Lcom/tencent/mm/network/r;Lcom/tencent/mm/n/m;)I
    .locals 13
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 257
    iput-object p2, p0, Lcom/tencent/mm/w/u;->cjh:Lcom/tencent/mm/n/m;

    .line 260
    iget-object v0, p0, Lcom/tencent/mm/w/u;->cke:Lcom/tencent/mm/n/a;

    invoke-virtual {v0}, Lcom/tencent/mm/n/a;->wr()Lcom/tencent/mm/am/a;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/a/jg;

    .line 262
    invoke-static {}, Lcom/tencent/mm/w/ag;->Ba()Lcom/tencent/mm/w/g;

    move-result-object v1

    iget-wide v5, p0, Lcom/tencent/mm/w/u;->cpL:J

    invoke-virtual {v1, v5, v6}, Lcom/tencent/mm/w/g;->E(J)Lcom/tencent/mm/w/e;

    move-result-object v5

    .line 264
    invoke-virtual {v5}, Lcom/tencent/mm/w/e;->getStatus()I

    move-result v1

    if-eqz v1, :cond_0

    .line 265
    const/4 v0, -0x1

    .line 294
    :goto_0
    return v0

    .line 267
    :cond_0
    invoke-virtual {v5}, Lcom/tencent/mm/w/e;->AI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/a/f;->h([B)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/mm/w/u;->ctT:Ljava/lang/String;

    .line 268
    invoke-static {}, Lcom/tencent/mm/w/ag;->Ba()Lcom/tencent/mm/w/g;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/w/u;->ctT:Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, ".temp"

    invoke-virtual {v1, v2, v6, v7}, Lcom/tencent/mm/w/g;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/mm/w/u;->ctU:Ljava/lang/String;

    .line 271
    iget-wide v1, p0, Lcom/tencent/mm/w/u;->startTime:J

    const-wide/16 v6, 0x0

    cmp-long v1, v1, v6

    if-nez v1, :cond_1

    .line 272
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/cj;->FD()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/tencent/mm/w/u;->startTime:J

    .line 273
    invoke-virtual {v5}, Lcom/tencent/mm/w/e;->getOffset()I

    move-result v1

    iput v1, p0, Lcom/tencent/mm/w/u;->startOffset:I

    .line 274
    iget v1, p0, Lcom/tencent/mm/w/u;->ctP:I

    if-ne v1, v4, :cond_2

    sget v1, Lcom/tencent/mm/modelcdntran/CdnTransportEngine;->coM:I

    :goto_1
    iput v1, p0, Lcom/tencent/mm/w/u;->ctS:I

    .line 279
    :cond_1
    iget-object v1, v0, Lcom/tencent/mm/protocal/a/jg;->fzs:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/rw;->getString()Ljava/lang/String;

    iget v1, v0, Lcom/tencent/mm/protocal/a/jg;->fzo:I

    invoke-virtual {v5}, Lcom/tencent/mm/w/e;->AN()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v3

    :goto_2
    if-eqz v1, :cond_a

    .line 280
    iget-object v0, p0, Lcom/tencent/mm/w/u;->TAG:Ljava/lang/String;

    const-string v1, "cdntra this img use cdn : %s"

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/tencent/mm/w/u;->ctR:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v3

    .line 281
    goto :goto_0

    .line 274
    :cond_2
    sget v1, Lcom/tencent/mm/modelcdntran/CdnTransportEngine;->coN:I

    goto :goto_1

    .line 279
    :cond_3
    invoke-virtual {v5}, Lcom/tencent/mm/w/e;->AN()Ljava/lang/String;

    move-result-object v1

    const-string v2, "msg"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/u;->aL(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v6

    if-nez v6, :cond_4

    iget-object v1, p0, Lcom/tencent/mm/w/u;->TAG:Ljava/lang/String;

    const-string v2, "parse cdnInfo failed. [%s]"

    new-array v6, v4, [Ljava/lang/Object;

    invoke-virtual {v5}, Lcom/tencent/mm/w/e;->AN()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v1, v2, v6}, Lcom/tencent/mm/sdk/platformtools/aa;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v3

    goto :goto_2

    :cond_4
    iput v3, p0, Lcom/tencent/mm/w/u;->ckU:I

    iget v1, p0, Lcom/tencent/mm/w/u;->ctP:I

    if-eq v1, v4, :cond_5

    const-string v1, ".msg.img.$cdnmidimgurl"

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, ".msg.img.$length"

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/tencent/mm/sdk/platformtools/cj;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/tencent/mm/w/u;->ckU:I

    move-object v2, v1

    :goto_3
    iget-object v1, p0, Lcom/tencent/mm/w/u;->TAG:Ljava/lang/String;

    const-string v7, "cdntra read xml  comptype:%d totallen:%d url:[%s]"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    iget v9, p0, Lcom/tencent/mm/w/u;->ctP:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v3

    iget v9, p0, Lcom/tencent/mm/w/u;->ckU:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v4

    const/4 v9, 0x2

    aput-object v2, v8, v9

    invoke-static {v1, v7, v8}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v2}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/tencent/mm/w/u;->TAG:Ljava/lang/String;

    const-string v2, "cdntra get cdnUrlfailed."

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v3

    goto :goto_2

    :cond_5
    const-string v1, ".msg.img.$cdnbigimgurl"

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, ".msg.img.$hdlength"

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/tencent/mm/sdk/platformtools/cj;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/tencent/mm/w/u;->ckU:I

    move-object v2, v1

    goto :goto_3

    :cond_6
    const-string v1, ".msg.img.$aeskey"

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v1, p0, Lcom/tencent/mm/w/u;->TAG:Ljava/lang/String;

    const-string v2, "cdntra get aes key failed."

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v3

    goto/16 :goto_2

    :cond_7
    const-string v6, "downimg"

    invoke-virtual {v5}, Lcom/tencent/mm/w/e;->AE()I

    move-result v7

    int-to-long v7, v7

    iget-object v9, p0, Lcom/tencent/mm/w/u;->bLP:Lcom/tencent/mm/storage/ak;

    invoke-virtual {v9}, Lcom/tencent/mm/storage/ak;->aCl()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/tencent/mm/w/u;->bLP:Lcom/tencent/mm/storage/ak;

    invoke-virtual {v11}, Lcom/tencent/mm/storage/ak;->Bo()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v7, v8, v9, v10}, Lcom/tencent/mm/modelcdntran/h;->a(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/tencent/mm/w/u;->ctR:Ljava/lang/String;

    iget-object v6, p0, Lcom/tencent/mm/w/u;->ctR:Ljava/lang/String;

    invoke-static {v6}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v1, p0, Lcom/tencent/mm/w/u;->TAG:Ljava/lang/String;

    const-string v2, "cdntra genClientId failed not use cdn imgLocalId:%d"

    new-array v6, v4, [Ljava/lang/Object;

    iget-wide v7, p0, Lcom/tencent/mm/w/u;->cpL:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v1, v2, v6}, Lcom/tencent/mm/sdk/platformtools/aa;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v3

    goto/16 :goto_2

    :cond_8
    new-instance v6, Lcom/tencent/mm/modelcdntran/m;

    invoke-direct {v6}, Lcom/tencent/mm/modelcdntran/m;-><init>()V

    iget-object v7, p0, Lcom/tencent/mm/w/u;->ctR:Ljava/lang/String;

    iput-object v7, v6, Lcom/tencent/mm/modelcdntran/m;->field_mediaId:Ljava/lang/String;

    iget-object v7, p0, Lcom/tencent/mm/w/u;->ctU:Ljava/lang/String;

    iput-object v7, v6, Lcom/tencent/mm/modelcdntran/m;->field_fullpath:Ljava/lang/String;

    iget v7, p0, Lcom/tencent/mm/w/u;->ctS:I

    iput v7, v6, Lcom/tencent/mm/modelcdntran/m;->field_fileType:I

    iget v7, p0, Lcom/tencent/mm/w/u;->ckU:I

    iput v7, v6, Lcom/tencent/mm/modelcdntran/m;->field_totalLen:I

    iput-object v1, v6, Lcom/tencent/mm/modelcdntran/m;->field_aesKey:Ljava/lang/String;

    iput-object v2, v6, Lcom/tencent/mm/modelcdntran/m;->field_fileId:Ljava/lang/String;

    sget v1, Lcom/tencent/mm/modelcdntran/CdnTransportEngine;->coK:I

    iput v1, v6, Lcom/tencent/mm/modelcdntran/m;->field_priority:I

    iget-object v1, p0, Lcom/tencent/mm/w/u;->ctV:Lcom/tencent/mm/modelcdntran/n;

    iput-object v1, v6, Lcom/tencent/mm/modelcdntran/m;->cpJ:Lcom/tencent/mm/modelcdntran/n;

    invoke-static {}, Lcom/tencent/mm/modelcdntran/j;->yy()Lcom/tencent/mm/modelcdntran/b;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/tencent/mm/modelcdntran/b;->a(Lcom/tencent/mm/modelcdntran/m;)Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/tencent/mm/w/u;->TAG:Ljava/lang/String;

    const-string v2, "addRecvTask failed :%s"

    new-array v6, v4, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/tencent/mm/w/u;->ctR:Ljava/lang/String;

    aput-object v7, v6, v3

    invoke-static {v1, v2, v6}, Lcom/tencent/mm/sdk/platformtools/aa;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, ""

    iput-object v1, p0, Lcom/tencent/mm/w/u;->ctR:Ljava/lang/String;

    move v1, v3

    goto/16 :goto_2

    :cond_9
    move v1, v4

    goto/16 :goto_2

    .line 283
    :cond_a
    iget-object v1, p0, Lcom/tencent/mm/w/u;->TAG:Ljava/lang/String;

    const-string v2, "cdntra this img NOT USE CDN: %s"

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/tencent/mm/w/u;->ctR:Ljava/lang/String;

    aput-object v6, v4, v3

    invoke-static {v1, v2, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 284
    const-string v1, ""

    invoke-virtual {v5, v1}, Lcom/tencent/mm/w/e;->fT(Ljava/lang/String;)V

    .line 285
    const/16 v1, 0x1000

    invoke-virtual {v5, v1}, Lcom/tencent/mm/w/e;->cL(I)V

    .line 286
    invoke-static {}, Lcom/tencent/mm/w/ag;->Ba()Lcom/tencent/mm/w/g;

    move-result-object v1

    iget-wide v2, p0, Lcom/tencent/mm/w/u;->cpL:J

    invoke-virtual {v1, v2, v3, v5}, Lcom/tencent/mm/w/g;->a(JLcom/tencent/mm/w/e;)I

    .line 289
    invoke-virtual {v5}, Lcom/tencent/mm/w/e;->getOffset()I

    move-result v1

    iput v1, v0, Lcom/tencent/mm/protocal/a/jg;->fEd:I

    .line 290
    iget v1, p0, Lcom/tencent/mm/w/u;->ctO:I

    iput v1, v0, Lcom/tencent/mm/protocal/a/jg;->fAU:I

    .line 291
    invoke-virtual {v5}, Lcom/tencent/mm/w/e;->vR()I

    move-result v1

    iput v1, v0, Lcom/tencent/mm/protocal/a/jg;->fAL:I

    .line 292
    iget-object v0, p0, Lcom/tencent/mm/w/u;->ctQ:Lcom/tencent/mm/modelstat/c;

    if-eqz v0, :cond_b

    .line 293
    iget-object v0, p0, Lcom/tencent/mm/w/u;->ctQ:Lcom/tencent/mm/modelstat/c;

    invoke-virtual {v0}, Lcom/tencent/mm/modelstat/c;->CN()V

    .line 294
    :cond_b
    iget-object v0, p0, Lcom/tencent/mm/w/u;->cke:Lcom/tencent/mm/n/a;

    invoke-virtual {p0, p1, v0, p0}, Lcom/tencent/mm/w/u;->a(Lcom/tencent/mm/network/r;Lcom/tencent/mm/network/aj;Lcom/tencent/mm/network/ab;)I

    move-result v0

    goto/16 :goto_0
.end method

.method protected final a(Lcom/tencent/mm/network/aj;)Lcom/tencent/mm/n/aa;
    .locals 1
    .parameter

    .prologue
    .line 147
    sget-object v0, Lcom/tencent/mm/n/aa;->cmh:Lcom/tencent/mm/n/aa;

    return-object v0
.end method

.method public final a(IIILjava/lang/String;Lcom/tencent/mm/network/aj;[B)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 306
    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    const/4 v0, -0x1

    if-ne p3, v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/w/u;->ctR:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 307
    iget-object v0, p0, Lcom/tencent/mm/w/u;->TAG:Ljava/lang/String;

    const-string v1, "cdntra using cdn trans,  wait cdn service callback! clientid:%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/tencent/mm/w/u;->ctR:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 358
    :cond_0
    :goto_0
    return-void

    .line 311
    :cond_1
    if-nez p2, :cond_2

    if-eqz p3, :cond_4

    .line 313
    :cond_2
    const/4 v0, 0x4

    if-ne p2, v0, :cond_3

    .line 314
    sget-object v0, Lcom/tencent/mm/plugin/d/c/m;->dZN:Lcom/tencent/mm/plugin/d/c/m;

    const/16 v1, 0x28b4

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-wide v4, p0, Lcom/tencent/mm/w/u;->startTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/cj;->FD()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/mm/modelcdntran/h;->M(Landroid/content/Context;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget v4, p0, Lcom/tencent/mm/w/u;->ctS:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    iget v4, p0, Lcom/tencent/mm/w/u;->ckU:I

    iget v5, p0, Lcom/tencent/mm/w/u;->startOffset:I

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/plugin/d/c/m;->d(I[Ljava/lang/Object;)V

    .line 319
    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/w/u;->cjh:Lcom/tencent/mm/n/m;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/n/m;->a(IILjava/lang/String;Lcom/tencent/mm/n/x;)V

    goto :goto_0

    .line 323
    :cond_4
    check-cast p5, Lcom/tencent/mm/n/a;

    invoke-virtual {p5}, Lcom/tencent/mm/n/a;->ws()Lcom/tencent/mm/am/a;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/a/jh;

    .line 324
    invoke-static {}, Lcom/tencent/mm/w/ag;->Ba()Lcom/tencent/mm/w/g;

    move-result-object v1

    iget-wide v2, p0, Lcom/tencent/mm/w/u;->cpL:J

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mm/w/g;->E(J)Lcom/tencent/mm/w/e;

    move-result-object v1

    .line 326
    const/4 v2, 0x0

    .line 327
    iget v3, v0, Lcom/tencent/mm/protocal/a/jh;->fAU:I

    if-gtz v3, :cond_6

    .line 328
    iget-object v2, p0, Lcom/tencent/mm/w/u;->TAG:Ljava/lang/String;

    const-string v3, "flood control, malformed data_len"

    invoke-static {v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    const/4 v2, -0x1

    .line 343
    :cond_5
    :goto_1
    if-eqz v2, :cond_c

    .line 344
    sget-object v0, Lcom/tencent/mm/plugin/d/c/m;->dZN:Lcom/tencent/mm/plugin/d/c/m;

    const/16 v1, 0x28b4

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-wide v4, p0, Lcom/tencent/mm/w/u;->startTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/cj;->FD()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/mm/modelcdntran/h;->M(Landroid/content/Context;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget v4, p0, Lcom/tencent/mm/w/u;->ctS:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    iget v4, p0, Lcom/tencent/mm/w/u;->ckU:I

    iget v5, p0, Lcom/tencent/mm/w/u;->startOffset:I

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/plugin/d/c/m;->d(I[Ljava/lang/Object;)V

    .line 347
    iget-object v0, p0, Lcom/tencent/mm/w/u;->cjh:Lcom/tencent/mm/n/m;

    const/4 v1, 0x4

    const/4 v2, -0x1

    const-string v3, ""

    invoke-interface {v0, v1, v2, v3, p0}, Lcom/tencent/mm/n/m;->a(IILjava/lang/String;Lcom/tencent/mm/n/x;)V

    goto/16 :goto_0

    .line 330
    :cond_6
    iget-object v3, v0, Lcom/tencent/mm/protocal/a/jh;->fAJ:Lcom/tencent/mm/protocal/a/rv;

    if-eqz v3, :cond_7

    iget v3, v0, Lcom/tencent/mm/protocal/a/jh;->fAU:I

    iget-object v4, v0, Lcom/tencent/mm/protocal/a/jh;->fAJ:Lcom/tencent/mm/protocal/a/rv;

    invoke-virtual {v4}, Lcom/tencent/mm/protocal/a/rv;->ayg()I

    move-result v4

    if-eq v3, v4, :cond_8

    .line 331
    :cond_7
    iget-object v2, p0, Lcom/tencent/mm/w/u;->TAG:Ljava/lang/String;

    const-string v3, "flood control, malformed data is null or dataLen not match with data buf length"

    invoke-static {v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    const/4 v2, -0x1

    goto :goto_1

    .line 333
    :cond_8
    iget v3, v0, Lcom/tencent/mm/protocal/a/jh;->fEd:I

    if-ltz v3, :cond_9

    iget v3, v0, Lcom/tencent/mm/protocal/a/jh;->fEd:I

    iget v4, v0, Lcom/tencent/mm/protocal/a/jh;->fAU:I

    add-int/2addr v3, v4

    iget v4, v0, Lcom/tencent/mm/protocal/a/jh;->fAL:I

    if-le v3, v4, :cond_a

    .line 334
    :cond_9
    iget-object v2, p0, Lcom/tencent/mm/w/u;->TAG:Ljava/lang/String;

    const-string v3, "flood control, malformed start pos"

    invoke-static {v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    const/4 v2, -0x1

    goto/16 :goto_1

    .line 336
    :cond_a
    iget v3, v0, Lcom/tencent/mm/protocal/a/jh;->fEd:I

    invoke-virtual {v1}, Lcom/tencent/mm/w/e;->getOffset()I

    move-result v4

    if-eq v3, v4, :cond_b

    .line 337
    iget-object v2, p0, Lcom/tencent/mm/w/u;->TAG:Ljava/lang/String;

    const-string v3, "flood control, malformed start_pos"

    invoke-static {v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    const/4 v2, -0x1

    goto/16 :goto_1

    .line 339
    :cond_b
    iget v3, v0, Lcom/tencent/mm/protocal/a/jh;->fAL:I

    if-gtz v3, :cond_5

    .line 340
    iget-object v2, p0, Lcom/tencent/mm/w/u;->TAG:Ljava/lang/String;

    const-string v3, "flood control, malformed total_len"

    invoke-static {v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    const/4 v2, -0x1

    goto/16 :goto_1

    .line 351
    :cond_c
    iget v2, v0, Lcom/tencent/mm/protocal/a/jh;->fAL:I

    iget v3, v0, Lcom/tencent/mm/protocal/a/jh;->fEd:I

    iget v4, v0, Lcom/tencent/mm/protocal/a/jh;->fAU:I

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/jh;->fAJ:Lcom/tencent/mm/protocal/a/rv;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/a/rv;->ayh()Lcom/tencent/mm/am/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/am/b;->getBytes()[B

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/tencent/mm/w/u;->a(Lcom/tencent/mm/w/e;III[B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 353
    invoke-virtual {p0}, Lcom/tencent/mm/w/u;->wM()Lcom/tencent/mm/network/r;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/w/u;->cjh:Lcom/tencent/mm/n/m;

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/w/u;->a(Lcom/tencent/mm/network/r;Lcom/tencent/mm/n/m;)I

    move-result v0

    if-gez v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/tencent/mm/w/u;->cjh:Lcom/tencent/mm/n/m;

    const/4 v1, 0x3

    const/4 v2, -0x1

    const-string v3, ""

    invoke-interface {v0, v1, v2, v3, p0}, Lcom/tencent/mm/n/m;->a(IILjava/lang/String;Lcom/tencent/mm/n/x;)V

    goto/16 :goto_0
.end method

.method public final dL(I)V
    .locals 0
    .parameter

    .prologue
    .line 129
    iput p1, p0, Lcom/tencent/mm/w/u;->token:I

    .line 130
    return-void
.end method

.method public final getType()I
    .locals 1

    .prologue
    .line 299
    const/16 v0, 0x6d

    return v0
.end method

.method protected final we()I
    .locals 1

    .prologue
    .line 138
    iget v0, p0, Lcom/tencent/mm/w/u;->ctP:I

    if-nez v0, :cond_0

    .line 139
    const/16 v0, 0x64

    .line 141
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x500

    goto :goto_0
.end method
