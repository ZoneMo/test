.class public abstract Lcom/tencent/mm/n/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/network/aj;


# instance fields
.field private clR:Lcom/tencent/mm/protocal/p;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/tencent/mm/protocal/p;)V
    .locals 1
    .parameter

    .prologue
    .line 40
    invoke-static {}, Lcom/tencent/mm/compatible/c/s;->pV()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/protocal/p;->ex(Ljava/lang/String;)V

    .line 41
    sget-object v0, Lcom/tencent/mm/protocal/a;->fxk:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tencent/mm/protocal/p;->ew(Ljava/lang/String;)V

    .line 42
    sget v0, Lcom/tencent/mm/protocal/a;->fxr:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/protocal/p;->cQ(I)V

    .line 45
    invoke-static {}, Lcom/tencent/mm/n/f;->wA()Lcom/tencent/mm/n/e;

    move-result-object v0

    .line 46
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/tencent/mm/protocal/p;->bQ(I)V

    .line 47
    return-void

    .line 46
    :cond_0
    invoke-interface {v0}, Lcom/tencent/mm/n/e;->sd()I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/network/n;Lcom/tencent/mm/pointers/PString;)Lcom/tencent/mm/network/aj;
    .locals 15
    .parameter
    .parameter

    .prologue
    .line 56
    const-string v1, "MicroMsg.MMReqRespBase"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "build rr for autoauth, accInfo="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const-string v1, "acc info should not be null"

    move-object/from16 v0, p1

    invoke-static {v1, v0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 59
    new-instance v4, Lcom/tencent/mm/n/u;

    invoke-direct {v4}, Lcom/tencent/mm/n/u;-><init>()V

    .line 60
    invoke-virtual {v4}, Lcom/tencent/mm/n/u;->wJ()Lcom/tencent/mm/protocal/p;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/protocal/k;

    .line 61
    invoke-static {v1}, Lcom/tencent/mm/n/v;->a(Lcom/tencent/mm/protocal/p;)V

    .line 62
    const/16 v2, 0x100

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/mm/n/f;->c(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 64
    const-string v3, "MicroMsg.MMReqRespBase"

    const-string v5, "dkwt Read forceManual :%b"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v3, v5, v6}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    if-eqz v2, :cond_0

    .line 67
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/tencent/mm/protocal/k;->cR(I)V

    .line 74
    :goto_0
    iget-object v2, v1, Lcom/tencent/mm/protocal/k;->fxL:Lcom/tencent/mm/protocal/a/ot;

    const/4 v3, 0x0

    iput v3, v2, Lcom/tencent/mm/protocal/a/ot;->fQo:I

    .line 76
    invoke-static {}, Lcom/tencent/mm/n/f;->wA()Lcom/tencent/mm/n/e;

    move-result-object v5

    .line 77
    if-nez v5, :cond_1

    .line 78
    const-string v1, "MicroMsg.MMReqRespBase"

    const-string v2, "get auth rr failed, no available acc"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v4

    .line 136
    :goto_1
    return-object v1

    .line 72
    :cond_0
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/protocal/k;->cR(I)V

    goto :goto_0

    .line 83
    :cond_1
    invoke-interface/range {p1 .. p1}, Lcom/tencent/mm/network/n;->sd()I

    move-result v2

    invoke-interface {v5}, Lcom/tencent/mm/n/e;->sd()I

    move-result v3

    if-eq v2, v3, :cond_2

    .line 84
    const-string v2, "MicroMsg.MMReqRespBase"

    const-string v3, "different uin while building auth rr"

    invoke-static {v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :cond_2
    const/4 v2, 0x3

    invoke-interface {v5, v2}, Lcom/tencent/mm/n/e;->cl(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/tencent/mm/sdk/platformtools/cj;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 90
    const/4 v2, 0x2

    invoke-interface {v5, v2}, Lcom/tencent/mm/n/e;->cl(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/tencent/mm/sdk/platformtools/cj;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 91
    invoke-static {v7}, Lcom/tencent/mm/n/aw;->eA(Ljava/lang/String;)I

    move-result v8

    .line 92
    new-instance v9, Lcom/tencent/mm/a/j;

    const/16 v2, 0x9

    invoke-interface {v5, v2}, Lcom/tencent/mm/n/e;->cl(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/tencent/mm/sdk/platformtools/cj;->a(Ljava/lang/Integer;I)I

    move-result v2

    invoke-direct {v9, v2}, Lcom/tencent/mm/a/j;-><init>(I)V

    .line 93
    invoke-static {}, Lcom/tencent/mm/n/f;->wB()Lcom/tencent/mm/n/aw;

    move-result-object v10

    .line 94
    const/4 v2, 0x0

    .line 95
    const/4 v3, 0x1

    if-ne v8, v3, :cond_8

    invoke-virtual {v9}, Lcom/tencent/mm/a/j;->longValue()J

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmp-long v3, v11, v13

    if-eqz v3, :cond_8

    if-eqz v10, :cond_8

    .line 96
    invoke-virtual {v9}, Lcom/tencent/mm/a/j;->longValue()J

    move-result-wide v11

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/k;->xe()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    const/4 v2, 0x1

    :goto_2
    invoke-virtual {v10, v11, v12, v6, v2}, Lcom/tencent/mm/n/aw;->a(JLjava/lang/String;Z)[B

    move-result-object v2

    move-object v3, v2

    .line 100
    :goto_3
    invoke-static {v3}, Lcom/tencent/mm/sdk/platformtools/cj;->A([B)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 101
    iget-object v2, v1, Lcom/tencent/mm/protocal/k;->fxL:Lcom/tencent/mm/protocal/a/ot;

    new-instance v11, Lcom/tencent/mm/protocal/a/rw;

    invoke-direct {v11}, Lcom/tencent/mm/protocal/a/rw;-><init>()V

    invoke-virtual {v11, v7}, Lcom/tencent/mm/protocal/a/rw;->sn(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/rw;

    move-result-object v11

    iput-object v11, v2, Lcom/tencent/mm/protocal/a/ot;->fEI:Lcom/tencent/mm/protocal/a/rw;

    .line 102
    iget-object v2, v1, Lcom/tencent/mm/protocal/k;->fxL:Lcom/tencent/mm/protocal/a/ot;

    new-instance v11, Lcom/tencent/mm/protocal/a/rw;

    invoke-direct {v11}, Lcom/tencent/mm/protocal/a/rw;-><init>()V

    invoke-virtual {v11, v6}, Lcom/tencent/mm/protocal/a/rw;->sn(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/rw;

    move-result-object v6

    iput-object v6, v2, Lcom/tencent/mm/protocal/a/ot;->fML:Lcom/tencent/mm/protocal/a/rw;

    .line 103
    iget-object v6, v1, Lcom/tencent/mm/protocal/k;->fxL:Lcom/tencent/mm/protocal/a/ot;

    const/16 v2, 0x13

    invoke-interface {v5, v2}, Lcom/tencent/mm/n/e;->cl(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/tencent/mm/sdk/platformtools/cj;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v6, Lcom/tencent/mm/protocal/a/ot;->fBY:Ljava/lang/String;

    .line 104
    iget-object v6, v1, Lcom/tencent/mm/protocal/k;->fxL:Lcom/tencent/mm/protocal/a/ot;

    const/16 v2, 0x20

    invoke-interface {v5, v2}, Lcom/tencent/mm/n/e;->cl(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/tencent/mm/sdk/platformtools/cj;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v6, Lcom/tencent/mm/protocal/a/ot;->fQp:Ljava/lang/String;

    .line 105
    iget-object v6, v1, Lcom/tencent/mm/protocal/k;->fxL:Lcom/tencent/mm/protocal/a/ot;

    const/16 v2, 0x21

    invoke-interface {v5, v2}, Lcom/tencent/mm/n/e;->cl(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/tencent/mm/sdk/platformtools/cj;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v6, Lcom/tencent/mm/protocal/a/ot;->fQq:Ljava/lang/String;

    .line 115
    :goto_4
    iget-object v2, v1, Lcom/tencent/mm/protocal/k;->fxL:Lcom/tencent/mm/protocal/a/ot;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/cj;->azR()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/tencent/mm/protocal/a/ot;->fQr:Ljava/lang/String;

    .line 116
    iget-object v2, v1, Lcom/tencent/mm/protocal/k;->fxL:Lcom/tencent/mm/protocal/a/ot;

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/z;->azj()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/tencent/mm/protocal/a/ot;->fBF:Ljava/lang/String;

    .line 117
    iget-object v2, v1, Lcom/tencent/mm/protocal/k;->fxL:Lcom/tencent/mm/protocal/a/ot;

    invoke-static {}, Lcom/tencent/mm/compatible/c/s;->pU()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/tencent/mm/protocal/a/ot;->fQs:Ljava/lang/String;

    .line 118
    iget-object v2, v1, Lcom/tencent/mm/protocal/k;->fxL:Lcom/tencent/mm/protocal/a/ot;

    new-instance v6, Lcom/tencent/mm/protocal/a/rw;

    invoke-direct {v6}, Lcom/tencent/mm/protocal/a/rw;-><init>()V

    iput-object v6, v2, Lcom/tencent/mm/protocal/a/ot;->fMM:Lcom/tencent/mm/protocal/a/rw;

    .line 119
    iget-object v2, v1, Lcom/tencent/mm/protocal/k;->fxL:Lcom/tencent/mm/protocal/a/ot;

    new-instance v6, Lcom/tencent/mm/protocal/a/rw;

    invoke-direct {v6}, Lcom/tencent/mm/protocal/a/rw;-><init>()V

    iput-object v6, v2, Lcom/tencent/mm/protocal/a/ot;->fQn:Lcom/tencent/mm/protocal/a/rw;

    .line 120
    iget-object v2, v1, Lcom/tencent/mm/protocal/k;->fxL:Lcom/tencent/mm/protocal/a/ot;

    new-instance v6, Lcom/tencent/mm/protocal/a/rw;

    invoke-direct {v6}, Lcom/tencent/mm/protocal/a/rw;-><init>()V

    iput-object v6, v2, Lcom/tencent/mm/protocal/a/ot;->fCc:Lcom/tencent/mm/protocal/a/rw;

    .line 121
    iget-object v6, v1, Lcom/tencent/mm/protocal/k;->fxL:Lcom/tencent/mm/protocal/a/ot;

    new-instance v11, Lcom/tencent/mm/protocal/a/rv;

    invoke-direct {v11}, Lcom/tencent/mm/protocal/a/rv;-><init>()V

    const/16 v2, 0x2f

    invoke-interface {v5, v2}, Lcom/tencent/mm/n/e;->cl(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/tencent/mm/sdk/platformtools/cj;->ib(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v11, v2}, Lcom/tencent/mm/protocal/a/rv;->bM([B)Lcom/tencent/mm/protocal/a/rv;

    move-result-object v2

    iput-object v2, v6, Lcom/tencent/mm/protocal/a/ot;->fCd:Lcom/tencent/mm/protocal/a/rv;

    .line 122
    iget-object v2, v1, Lcom/tencent/mm/protocal/k;->fxL:Lcom/tencent/mm/protocal/a/ot;

    sget-object v5, Lcom/tencent/mm/protocal/a;->fxl:Ljava/lang/String;

    iput-object v5, v2, Lcom/tencent/mm/protocal/a/ot;->fDT:Ljava/lang/String;

    .line 123
    iget-object v2, v1, Lcom/tencent/mm/protocal/k;->fxL:Lcom/tencent/mm/protocal/a/ot;

    sget-object v5, Lcom/tencent/mm/protocal/a;->fxm:Ljava/lang/String;

    iput-object v5, v2, Lcom/tencent/mm/protocal/a/ot;->fDS:Ljava/lang/String;

    .line 124
    iget-object v2, v1, Lcom/tencent/mm/protocal/k;->fxL:Lcom/tencent/mm/protocal/a/ot;

    sget-object v5, Lcom/tencent/mm/protocal/a;->fxn:Ljava/lang/String;

    iput-object v5, v2, Lcom/tencent/mm/protocal/a/ot;->fQv:Ljava/lang/String;

    .line 125
    iget-object v2, v1, Lcom/tencent/mm/protocal/k;->fxL:Lcom/tencent/mm/protocal/a/ot;

    invoke-static {}, Lcom/tencent/mm/storage/cd;->aDp()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/tencent/mm/protocal/a/ot;->fQw:Ljava/lang/String;

    .line 127
    iget-object v2, v1, Lcom/tencent/mm/protocal/k;->fxL:Lcom/tencent/mm/protocal/a/ot;

    iget-object v2, v2, Lcom/tencent/mm/protocal/a/ot;->fML:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/a/rw;->getString()Ljava/lang/String;

    move-result-object v2

    iget-object v5, v1, Lcom/tencent/mm/protocal/k;->fxL:Lcom/tencent/mm/protocal/a/ot;

    iget-object v5, v5, Lcom/tencent/mm/protocal/a/ot;->fBY:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-interface {v0, v7, v2, v5}, Lcom/tencent/mm/network/n;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object v2, v1, Lcom/tencent/mm/protocal/k;->fxL:Lcom/tencent/mm/protocal/a/ot;

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/tencent/mm/sdk/platformtools/cj;->bF(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/tencent/mm/protocal/a/ot;->cqr:Ljava/lang/String;

    .line 129
    iget-object v5, v1, Lcom/tencent/mm/protocal/k;->fxL:Lcom/tencent/mm/protocal/a/ot;

    invoke-interface/range {p1 .. p1}, Lcom/tencent/mm/network/n;->sd()I

    invoke-static {}, Lcom/tencent/mm/model/be;->us()Lcom/tencent/mm/storage/d;

    move-result-object v2

    const/16 v6, 0x20

    invoke-virtual {v2, v6}, Lcom/tencent/mm/storage/d;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    :goto_5
    iput-object v2, v5, Lcom/tencent/mm/protocal/a/ot;->fQy:Ljava/lang/String;

    .line 132
    const-string v5, "MicroMsg.MMReqRespBase"

    const-string v6, "dkwt autoauth username :%s nextauthtype:%d wtloginMgr:%b qq:%s loginBuf:%d aat:%s zone:%s lan:%s"

    const/16 v2, 0x8

    new-array v11, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v7, v11, v2

    const/4 v2, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v11, v2

    const/4 v7, 0x2

    if-eqz v10, :cond_6

    const/4 v2, 0x1

    :goto_6
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v11, v7

    const/4 v2, 0x3

    aput-object v9, v11, v2

    const/4 v7, 0x4

    if-nez v3, :cond_7

    const/4 v2, -0x1

    :goto_7
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v11, v7

    const/4 v2, 0x5

    iget-object v3, v1, Lcom/tencent/mm/protocal/k;->fxL:Lcom/tencent/mm/protocal/a/ot;

    iget-object v3, v3, Lcom/tencent/mm/protocal/a/ot;->fQy:Ljava/lang/String;

    aput-object v3, v11, v2

    const/4 v2, 0x6

    iget-object v3, v1, Lcom/tencent/mm/protocal/k;->fxL:Lcom/tencent/mm/protocal/a/ot;

    iget-object v3, v3, Lcom/tencent/mm/protocal/a/ot;->fQr:Ljava/lang/String;

    aput-object v3, v11, v2

    const/4 v2, 0x7

    iget-object v3, v1, Lcom/tencent/mm/protocal/k;->fxL:Lcom/tencent/mm/protocal/a/ot;

    iget-object v3, v3, Lcom/tencent/mm/protocal/a/ot;->fBF:Ljava/lang/String;

    aput-object v3, v11, v2

    invoke-static {v5, v6, v11}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    iget-object v1, v1, Lcom/tencent/mm/protocal/k;->fxL:Lcom/tencent/mm/protocal/a/ot;

    iget-object v1, v1, Lcom/tencent/mm/protocal/a/ot;->fQy:Ljava/lang/String;

    move-object/from16 v0, p2

    iput-object v1, v0, Lcom/tencent/mm/pointers/PString;->value:Ljava/lang/String;

    move-object v1, v4

    .line 136
    goto/16 :goto_1

    .line 96
    :cond_3
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 107
    :cond_4
    iget-object v2, v1, Lcom/tencent/mm/protocal/k;->fxL:Lcom/tencent/mm/protocal/a/ot;

    new-instance v6, Lcom/tencent/mm/protocal/a/rw;

    invoke-direct {v6}, Lcom/tencent/mm/protocal/a/rw;-><init>()V

    invoke-virtual {v9}, Lcom/tencent/mm/a/j;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Lcom/tencent/mm/protocal/a/rw;->sn(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/rw;

    move-result-object v6

    iput-object v6, v2, Lcom/tencent/mm/protocal/a/ot;->fEI:Lcom/tencent/mm/protocal/a/rw;

    .line 108
    iget-object v2, v1, Lcom/tencent/mm/protocal/k;->fxL:Lcom/tencent/mm/protocal/a/ot;

    new-instance v6, Lcom/tencent/mm/protocal/a/rv;

    invoke-direct {v6}, Lcom/tencent/mm/protocal/a/rv;-><init>()V

    invoke-virtual {v6, v3}, Lcom/tencent/mm/protocal/a/rv;->bM([B)Lcom/tencent/mm/protocal/a/rv;

    move-result-object v6

    iput-object v6, v2, Lcom/tencent/mm/protocal/a/ot;->fQA:Lcom/tencent/mm/protocal/a/rv;

    .line 109
    iget-object v2, v1, Lcom/tencent/mm/protocal/k;->fxL:Lcom/tencent/mm/protocal/a/ot;

    new-instance v6, Lcom/tencent/mm/protocal/a/rw;

    invoke-direct {v6}, Lcom/tencent/mm/protocal/a/rw;-><init>()V

    const-string v11, ""

    invoke-virtual {v6, v11}, Lcom/tencent/mm/protocal/a/rw;->sn(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/rw;

    move-result-object v6

    iput-object v6, v2, Lcom/tencent/mm/protocal/a/ot;->fML:Lcom/tencent/mm/protocal/a/rw;

    .line 110
    iget-object v2, v1, Lcom/tencent/mm/protocal/k;->fxL:Lcom/tencent/mm/protocal/a/ot;

    const-string v6, ""

    iput-object v6, v2, Lcom/tencent/mm/protocal/a/ot;->fBY:Ljava/lang/String;

    .line 111
    iget-object v2, v1, Lcom/tencent/mm/protocal/k;->fxL:Lcom/tencent/mm/protocal/a/ot;

    const-string v6, ""

    iput-object v6, v2, Lcom/tencent/mm/protocal/a/ot;->fQp:Ljava/lang/String;

    .line 112
    iget-object v2, v1, Lcom/tencent/mm/protocal/k;->fxL:Lcom/tencent/mm/protocal/a/ot;

    const-string v6, ""

    iput-object v6, v2, Lcom/tencent/mm/protocal/a/ot;->fQq:Ljava/lang/String;

    goto/16 :goto_4

    .line 129
    :cond_5
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v6, "ticket_prefs"

    invoke-static {}, Lcom/tencent/mm/compatible/g/l;->qi()I

    move-result v11

    invoke-virtual {v2, v6, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v6, "_auth_ticket"

    const-string v11, ""

    invoke-interface {v2, v6, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_5

    .line 132
    :cond_6
    const/4 v2, 0x0

    goto/16 :goto_6

    :cond_7
    array-length v2, v3

    goto/16 :goto_7

    :cond_8
    move-object v3, v2

    goto/16 :goto_3
.end method

.method public final wJ()Lcom/tencent/mm/protocal/p;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/tencent/mm/n/v;->clR:Lcom/tencent/mm/protocal/p;

    if-nez v0, :cond_0

    .line 32
    invoke-virtual {p0}, Lcom/tencent/mm/n/v;->wu()Lcom/tencent/mm/protocal/p;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/n/v;->clR:Lcom/tencent/mm/protocal/p;

    .line 33
    iget-object v0, p0, Lcom/tencent/mm/n/v;->clR:Lcom/tencent/mm/protocal/p;

    invoke-static {v0}, Lcom/tencent/mm/n/v;->a(Lcom/tencent/mm/protocal/p;)V

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/n/v;->clR:Lcom/tencent/mm/protocal/p;

    return-object v0
.end method

.method public wK()I
    .locals 1

    .prologue
    .line 146
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract wu()Lcom/tencent/mm/protocal/p;
.end method
