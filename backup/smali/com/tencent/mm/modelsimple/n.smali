.class public final Lcom/tencent/mm/modelsimple/n;
.super Lcom/tencent/mm/n/x;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/network/ab;


# instance fields
.field private cjh:Lcom/tencent/mm/n/m;

.field private final cmF:Lcom/tencent/mm/network/aj;

.field private crh:I

.field private cxh:Ljava/lang/String;

.field private cxi:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 39
    invoke-direct {p0}, Lcom/tencent/mm/n/x;-><init>()V

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/modelsimple/n;->cxh:Ljava/lang/String;

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/modelsimple/n;->cxi:Ljava/lang/String;

    .line 37
    const/4 v0, 0x2

    iput v0, p0, Lcom/tencent/mm/modelsimple/n;->crh:I

    .line 40
    new-instance v0, Lcom/tencent/mm/n/u;

    invoke-direct {v0}, Lcom/tencent/mm/n/u;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelsimple/n;->cmF:Lcom/tencent/mm/network/aj;

    .line 41
    iget-object v0, p0, Lcom/tencent/mm/modelsimple/n;->cmF:Lcom/tencent/mm/network/aj;

    invoke-interface {v0}, Lcom/tencent/mm/network/aj;->wJ()Lcom/tencent/mm/protocal/p;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/k;

    .line 42
    invoke-virtual {v0, v4}, Lcom/tencent/mm/protocal/k;->bQ(I)V

    .line 43
    iget-object v1, v0, Lcom/tencent/mm/protocal/k;->fxL:Lcom/tencent/mm/protocal/a/ot;

    new-instance v2, Lcom/tencent/mm/protocal/a/rw;

    invoke-direct {v2}, Lcom/tencent/mm/protocal/a/rw;-><init>()V

    invoke-virtual {v2, p1}, Lcom/tencent/mm/protocal/a/rw;->sn(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/rw;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/mm/protocal/a/ot;->fEI:Lcom/tencent/mm/protocal/a/rw;

    .line 45
    iput-object p2, p0, Lcom/tencent/mm/modelsimple/n;->cxh:Ljava/lang/String;

    .line 46
    const-string v1, ""

    iput-object v1, p0, Lcom/tencent/mm/modelsimple/n;->cxi:Ljava/lang/String;

    .line 47
    iget-object v1, v0, Lcom/tencent/mm/protocal/k;->fxL:Lcom/tencent/mm/protocal/a/ot;

    new-instance v2, Lcom/tencent/mm/protocal/a/rw;

    invoke-direct {v2}, Lcom/tencent/mm/protocal/a/rw;-><init>()V

    iget-object v3, p0, Lcom/tencent/mm/modelsimple/n;->cxh:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/tencent/mm/protocal/a/rw;->sn(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/rw;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/mm/protocal/a/ot;->fML:Lcom/tencent/mm/protocal/a/rw;

    .line 48
    iget-object v1, v0, Lcom/tencent/mm/protocal/k;->fxL:Lcom/tencent/mm/protocal/a/ot;

    iget-object v2, p0, Lcom/tencent/mm/modelsimple/n;->cxi:Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/mm/protocal/a/ot;->fBY:Ljava/lang/String;

    .line 49
    iget-object v1, v0, Lcom/tencent/mm/protocal/k;->fxL:Lcom/tencent/mm/protocal/a/ot;

    iget-object v2, p0, Lcom/tencent/mm/modelsimple/n;->cxh:Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/mm/protocal/a/ot;->fQp:Ljava/lang/String;

    .line 50
    iget-object v1, v0, Lcom/tencent/mm/protocal/k;->fxL:Lcom/tencent/mm/protocal/a/ot;

    iget-object v2, p0, Lcom/tencent/mm/modelsimple/n;->cxi:Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/mm/protocal/a/ot;->fQq:Ljava/lang/String;

    .line 51
    iget-object v1, v0, Lcom/tencent/mm/protocal/k;->fxL:Lcom/tencent/mm/protocal/a/ot;

    new-instance v2, Lcom/tencent/mm/protocal/a/rw;

    invoke-direct {v2}, Lcom/tencent/mm/protocal/a/rw;-><init>()V

    invoke-virtual {v2, p3}, Lcom/tencent/mm/protocal/a/rw;->sn(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/rw;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/mm/protocal/a/ot;->fQn:Lcom/tencent/mm/protocal/a/rw;

    .line 52
    iget-object v1, v0, Lcom/tencent/mm/protocal/k;->fxL:Lcom/tencent/mm/protocal/a/ot;

    new-instance v2, Lcom/tencent/mm/protocal/a/rw;

    invoke-direct {v2}, Lcom/tencent/mm/protocal/a/rw;-><init>()V

    invoke-virtual {v2, p4}, Lcom/tencent/mm/protocal/a/rw;->sn(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/rw;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/mm/protocal/a/ot;->fMM:Lcom/tencent/mm/protocal/a/rw;

    .line 53
    iget-object v1, v0, Lcom/tencent/mm/protocal/k;->fxL:Lcom/tencent/mm/protocal/a/ot;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/cj;->azR()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/mm/protocal/a/ot;->fQr:Ljava/lang/String;

    .line 54
    iget-object v1, v0, Lcom/tencent/mm/protocal/k;->fxL:Lcom/tencent/mm/protocal/a/ot;

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/z;->azj()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/mm/protocal/a/ot;->fBF:Ljava/lang/String;

    .line 55
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/k;->cR(I)V

    .line 56
    iget-object v1, v0, Lcom/tencent/mm/protocal/k;->fxL:Lcom/tencent/mm/protocal/a/ot;

    iput v4, v1, Lcom/tencent/mm/protocal/a/ot;->fQo:I

    .line 57
    iget-object v1, v0, Lcom/tencent/mm/protocal/k;->fxL:Lcom/tencent/mm/protocal/a/ot;

    invoke-static {}, Lcom/tencent/mm/compatible/c/s;->pU()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/mm/protocal/a/ot;->fQs:Ljava/lang/String;

    .line 58
    iget-object v1, v0, Lcom/tencent/mm/protocal/k;->fxL:Lcom/tencent/mm/protocal/a/ot;

    new-instance v2, Lcom/tencent/mm/protocal/a/rw;

    invoke-direct {v2}, Lcom/tencent/mm/protocal/a/rw;-><init>()V

    invoke-virtual {v2, p5}, Lcom/tencent/mm/protocal/a/rw;->sn(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/rw;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/mm/protocal/a/ot;->fCc:Lcom/tencent/mm/protocal/a/rw;

    .line 59
    iget-object v2, v0, Lcom/tencent/mm/protocal/k;->fxL:Lcom/tencent/mm/protocal/a/ot;

    new-instance v3, Lcom/tencent/mm/protocal/a/rv;

    invoke-direct {v3}, Lcom/tencent/mm/protocal/a/rv;-><init>()V

    invoke-static {}, Lcom/tencent/mm/model/be;->us()Lcom/tencent/mm/storage/d;

    move-result-object v1

    const/16 v4, 0x12

    invoke-virtual {v1, v4}, Lcom/tencent/mm/storage/d;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/mm/sdk/platformtools/cj;->ib(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/tencent/mm/protocal/a/rv;->bM([B)Lcom/tencent/mm/protocal/a/rv;

    move-result-object v1

    iput-object v1, v2, Lcom/tencent/mm/protocal/a/ot;->fCd:Lcom/tencent/mm/protocal/a/rv;

    .line 60
    iget-object v1, v0, Lcom/tencent/mm/protocal/k;->fxL:Lcom/tencent/mm/protocal/a/ot;

    sget-object v2, Lcom/tencent/mm/protocal/a;->fxl:Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/mm/protocal/a/ot;->fDT:Ljava/lang/String;

    .line 61
    iget-object v1, v0, Lcom/tencent/mm/protocal/k;->fxL:Lcom/tencent/mm/protocal/a/ot;

    sget-object v2, Lcom/tencent/mm/protocal/a;->fxm:Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/mm/protocal/a/ot;->fDS:Ljava/lang/String;

    .line 62
    iget-object v1, v0, Lcom/tencent/mm/protocal/k;->fxL:Lcom/tencent/mm/protocal/a/ot;

    sget-object v2, Lcom/tencent/mm/protocal/a;->fxn:Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/mm/protocal/a/ot;->fQv:Ljava/lang/String;

    .line 63
    iget-object v1, v0, Lcom/tencent/mm/protocal/k;->fxL:Lcom/tencent/mm/protocal/a/ot;

    invoke-static {}, Lcom/tencent/mm/storage/cd;->aDp()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/mm/protocal/a/ot;->fQw:Ljava/lang/String;

    .line 65
    const-string v1, "MicroMsg.NetSceneAuthFB"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "psw="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/tencent/mm/protocal/k;->fxL:Lcom/tencent/mm/protocal/a/ot;

    iget-object v3, v3, Lcom/tencent/mm/protocal/a/ot;->fML:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", psw2="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/tencent/mm/protocal/k;->fxL:Lcom/tencent/mm/protocal/a/ot;

    iget-object v3, v3, Lcom/tencent/mm/protocal/a/ot;->fBY:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", lang="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lcom/tencent/mm/protocal/k;->fxL:Lcom/tencent/mm/protocal/a/ot;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/ot;->fBF:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/modelsimple/n;)Lcom/tencent/mm/network/r;
    .locals 1
    .parameter

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/tencent/mm/modelsimple/n;->wM()Lcom/tencent/mm/network/r;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/tencent/mm/modelsimple/n;)Lcom/tencent/mm/n/m;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/tencent/mm/modelsimple/n;->cjh:Lcom/tencent/mm/n/m;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/mm/modelsimple/n;)Lcom/tencent/mm/network/r;
    .locals 1
    .parameter

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/tencent/mm/modelsimple/n;->wM()Lcom/tencent/mm/network/r;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lcom/tencent/mm/modelsimple/n;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/tencent/mm/modelsimple/n;->cxi:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final BY()Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/modelsimple/n;->cmF:Lcom/tencent/mm/network/aj;

    invoke-interface {v0}, Lcom/tencent/mm/network/aj;->wv()Lcom/tencent/mm/protocal/q;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/l;

    iget-object v0, v0, Lcom/tencent/mm/protocal/l;->fxM:Lcom/tencent/mm/protocal/a/ou;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/ou;->fQV:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_0
.end method

.method public final a(Lcom/tencent/mm/network/r;Lcom/tencent/mm/n/m;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 73
    iput-object p2, p0, Lcom/tencent/mm/modelsimple/n;->cjh:Lcom/tencent/mm/n/m;

    .line 74
    iget-object v0, p0, Lcom/tencent/mm/modelsimple/n;->cmF:Lcom/tencent/mm/network/aj;

    invoke-virtual {p0, p1, v0, p0}, Lcom/tencent/mm/modelsimple/n;->a(Lcom/tencent/mm/network/r;Lcom/tencent/mm/network/aj;Lcom/tencent/mm/network/ab;)I

    move-result v0

    return v0
.end method

.method protected final a(Lcom/tencent/mm/network/aj;)Lcom/tencent/mm/n/aa;
    .locals 1
    .parameter

    .prologue
    .line 90
    sget-object v0, Lcom/tencent/mm/n/aa;->cmh:Lcom/tencent/mm/n/aa;

    return-object v0
.end method

.method public final a(IIILjava/lang/String;Lcom/tencent/mm/network/aj;[B)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x4

    const/4 v7, 0x3

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 100
    invoke-interface {p5}, Lcom/tencent/mm/network/aj;->wv()Lcom/tencent/mm/protocal/q;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/l;

    .line 102
    if-nez p2, :cond_0

    if-eqz p3, :cond_5

    .line 104
    :cond_0
    if-ne p2, v4, :cond_2

    const/16 v1, -0x12d

    if-ne p3, v1, :cond_2

    .line 105
    iget-object v1, v0, Lcom/tencent/mm/protocal/l;->fxM:Lcom/tencent/mm/protocal/a/ou;

    iget-object v1, v1, Lcom/tencent/mm/protocal/a/ou;->fBO:Lcom/tencent/mm/protocal/a/by;

    iget-object v3, v0, Lcom/tencent/mm/protocal/l;->fxM:Lcom/tencent/mm/protocal/a/ou;

    iget-object v3, v3, Lcom/tencent/mm/protocal/a/ou;->fBP:Lcom/tencent/mm/protocal/a/os;

    iget-object v0, v0, Lcom/tencent/mm/protocal/l;->fxM:Lcom/tencent/mm/protocal/a/ou;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/ou;->fBN:Lcom/tencent/mm/protocal/a/ls;

    invoke-static {v2, v1, v3, v0}, Lcom/tencent/mm/model/be;->a(ZLcom/tencent/mm/protocal/a/by;Lcom/tencent/mm/protocal/a/os;Lcom/tencent/mm/protocal/a/ls;)V

    .line 107
    iget v0, p0, Lcom/tencent/mm/modelsimple/n;->crh:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/tencent/mm/modelsimple/n;->crh:I

    .line 108
    iget v0, p0, Lcom/tencent/mm/modelsimple/n;->crh:I

    if-gtz v0, :cond_1

    .line 109
    iget-object v0, p0, Lcom/tencent/mm/modelsimple/n;->cjh:Lcom/tencent/mm/n/m;

    const/4 v1, -0x1

    const-string v2, ""

    invoke-interface {v0, v7, v1, v2, p0}, Lcom/tencent/mm/n/m;->a(IILjava/lang/String;Lcom/tencent/mm/n/x;)V

    .line 193
    :goto_0
    return-void

    .line 113
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/mm/modelsimple/n;->wM()Lcom/tencent/mm/network/r;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/modelsimple/n;->cjh:Lcom/tencent/mm/n/m;

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/modelsimple/n;->a(Lcom/tencent/mm/network/r;Lcom/tencent/mm/n/m;)I

    goto :goto_0

    .line 116
    :cond_2
    if-ne p2, v4, :cond_3

    const/16 v1, -0x66

    if-ne p3, v1, :cond_3

    .line 117
    invoke-interface {p5}, Lcom/tencent/mm/network/aj;->wJ()Lcom/tencent/mm/protocal/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/p;->awJ()Lcom/tencent/mm/protocal/bi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/bi;->axb()I

    move-result v0

    .line 118
    const-string v1, "MicroMsg.NetSceneAuthFB"

    const-string v4, "dkcert  auth MM_ERR_CERT_EXPIRED  getcert now  old ver:%d"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-static {v1, v4, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 120
    invoke-static {}, Lcom/tencent/mm/model/be;->ut()Lcom/tencent/mm/sdk/platformtools/an;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/modelsimple/o;

    invoke-direct {v2, p0, v0}, Lcom/tencent/mm/modelsimple/o;-><init>(Lcom/tencent/mm/modelsimple/n;I)V

    invoke-virtual {v1, v2}, Lcom/tencent/mm/sdk/platformtools/an;->o(Ljava/lang/Runnable;)I

    goto :goto_0

    .line 142
    :cond_3
    if-ne p2, v4, :cond_4

    const/16 v1, -0x10

    if-eq p3, v1, :cond_5

    const/16 v1, -0x11

    if-eq p3, v1, :cond_5

    .line 143
    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/modelsimple/n;->cjh:Lcom/tencent/mm/n/m;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/n/m;->a(IILjava/lang/String;Lcom/tencent/mm/n/x;)V

    goto :goto_0

    .line 147
    :cond_5
    iget-object v1, v0, Lcom/tencent/mm/protocal/l;->fxM:Lcom/tencent/mm/protocal/a/ou;

    iget v1, v1, Lcom/tencent/mm/protocal/a/ou;->fAX:I

    invoke-static {v1}, Lcom/tencent/mm/model/be;->cs(I)V

    .line 148
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v1

    iget-object v4, v0, Lcom/tencent/mm/protocal/l;->fxM:Lcom/tencent/mm/protocal/a/ou;

    iget-object v4, v4, Lcom/tencent/mm/protocal/a/ou;->fQS:Ljava/lang/String;

    invoke-virtual {v1, v7, v4}, Lcom/tencent/mm/storage/e;->set(ILjava/lang/Object;)V

    .line 150
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v1

    const/16 v4, 0x34

    iget-object v5, v0, Lcom/tencent/mm/protocal/l;->fxM:Lcom/tencent/mm/protocal/a/ou;

    iget v5, v5, Lcom/tencent/mm/protocal/a/ou;->fQN:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/tencent/mm/storage/e;->set(ILjava/lang/Object;)V

    .line 152
    const-string v1, "MicroMsg.NetSceneAuthFB"

    const-string v4, "dkrsa set autoauthticket:%s"

    new-array v5, v2, [Ljava/lang/Object;

    iget-object v6, v0, Lcom/tencent/mm/protocal/l;->fxM:Lcom/tencent/mm/protocal/a/ou;

    iget-object v6, v6, Lcom/tencent/mm/protocal/a/ou;->fQy:Ljava/lang/String;

    aput-object v6, v5, v3

    invoke-static {v1, v4, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 153
    invoke-static {}, Lcom/tencent/mm/model/be;->us()Lcom/tencent/mm/storage/d;

    move-result-object v1

    const/16 v4, 0x20

    const-string v5, ""

    invoke-virtual {v1, v4, v5}, Lcom/tencent/mm/storage/d;->set(ILjava/lang/Object;)V

    .line 156
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    iget-object v1, v0, Lcom/tencent/mm/protocal/l;->fxM:Lcom/tencent/mm/protocal/a/ou;

    iget v1, v1, Lcom/tencent/mm/protocal/a/ou;->fPK:I

    invoke-static {v1}, Lcom/tencent/mm/model/b;->bJ(I)V

    .line 157
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->ss()Lcom/tencent/mm/storage/cd;

    move-result-object v1

    iget-object v4, v0, Lcom/tencent/mm/protocal/l;->fxM:Lcom/tencent/mm/protocal/a/ou;

    iget-object v4, v4, Lcom/tencent/mm/protocal/a/ou;->fQW:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/tencent/mm/storage/cd;->vD(Ljava/lang/String;)I

    .line 159
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v4

    const/16 v5, 0x39

    iget-object v1, v0, Lcom/tencent/mm/protocal/l;->fxM:Lcom/tencent/mm/protocal/a/ou;

    iget v1, v1, Lcom/tencent/mm/protocal/a/ou;->fQY:I

    if-eqz v1, :cond_7

    move v1, v2

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Lcom/tencent/mm/storage/e;->set(ILjava/lang/Object;)V

    .line 161
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/model/b;->a(Lcom/tencent/mm/protocal/l;)V

    .line 164
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->sz()Lcom/tencent/mm/storage/cc;

    move-result-object v4

    iget-object v1, v0, Lcom/tencent/mm/protocal/l;->fxM:Lcom/tencent/mm/protocal/a/ou;

    iget-object v1, v1, Lcom/tencent/mm/protocal/a/ou;->fQH:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/rw;->getString()Ljava/lang/String;

    move-result-object v5

    iget-object v1, v0, Lcom/tencent/mm/protocal/l;->fxM:Lcom/tencent/mm/protocal/a/ou;

    iget v1, v1, Lcom/tencent/mm/protocal/a/ou;->fQI:I

    if-ne v1, v2, :cond_8

    move v1, v2

    :goto_2
    invoke-virtual {v4, v5, v1}, Lcom/tencent/mm/storage/cc;->M(Ljava/lang/String;Z)V

    .line 165
    iget-object v1, v0, Lcom/tencent/mm/protocal/l;->fxM:Lcom/tencent/mm/protocal/a/ou;

    iget v1, v1, Lcom/tencent/mm/protocal/a/ou;->fPH:I

    if-eqz v1, :cond_6

    .line 166
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->sz()Lcom/tencent/mm/storage/cc;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v5, Lcom/tencent/mm/a/j;

    iget-object v6, v0, Lcom/tencent/mm/protocal/l;->fxM:Lcom/tencent/mm/protocal/a/ou;

    iget v6, v6, Lcom/tencent/mm/protocal/a/ou;->fPH:I

    invoke-direct {v5, v6}, Lcom/tencent/mm/a/j;-><init>(I)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "@qqim"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v7}, Lcom/tencent/mm/storage/cc;->an(Ljava/lang/String;I)V

    .line 170
    :cond_6
    iget-object v1, v0, Lcom/tencent/mm/protocal/l;->fxM:Lcom/tencent/mm/protocal/a/ou;

    iget-object v1, v1, Lcom/tencent/mm/protocal/a/ou;->fBO:Lcom/tencent/mm/protocal/a/by;

    iget-object v4, v0, Lcom/tencent/mm/protocal/l;->fxM:Lcom/tencent/mm/protocal/a/ou;

    iget-object v4, v4, Lcom/tencent/mm/protocal/a/ou;->fBP:Lcom/tencent/mm/protocal/a/os;

    iget-object v5, v0, Lcom/tencent/mm/protocal/l;->fxM:Lcom/tencent/mm/protocal/a/ou;

    iget-object v5, v5, Lcom/tencent/mm/protocal/a/ou;->fBN:Lcom/tencent/mm/protocal/a/ls;

    invoke-static {v3, v1, v4, v5}, Lcom/tencent/mm/model/be;->a(ZLcom/tencent/mm/protocal/a/by;Lcom/tencent/mm/protocal/a/os;Lcom/tencent/mm/protocal/a/ls;)V

    .line 173
    invoke-static {}, Lcom/tencent/mm/model/be;->us()Lcom/tencent/mm/storage/d;

    move-result-object v1

    iget-object v4, v0, Lcom/tencent/mm/protocal/l;->fxM:Lcom/tencent/mm/protocal/a/ou;

    iget v4, v4, Lcom/tencent/mm/protocal/a/ou;->fAX:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/tencent/mm/storage/d;->set(ILjava/lang/Object;)V

    .line 174
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "system_config_prefs"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 175
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "default_uin"

    iget-object v3, v0, Lcom/tencent/mm/protocal/l;->fxM:Lcom/tencent/mm/protocal/a/ou;

    iget v3, v3, Lcom/tencent/mm/protocal/a/ou;->fAX:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 177
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/storage/e;->zz()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/model/b;->bZ(Ljava/lang/String;)I

    .line 178
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/model/cb;

    new-instance v3, Lcom/tencent/mm/modelsimple/q;

    invoke-direct {v3, p0, v0}, Lcom/tencent/mm/modelsimple/q;-><init>(Lcom/tencent/mm/modelsimple/n;Lcom/tencent/mm/protocal/l;)V

    invoke-direct {v2, v3}, Lcom/tencent/mm/model/cb;-><init>(Lcom/tencent/mm/model/cd;)V

    invoke-virtual {v1, v2}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    .line 189
    const-string v1, "MicroMsg.NetSceneAuthFB"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "IsAutoReg = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/tencent/mm/protocal/l;->fxM:Lcom/tencent/mm/protocal/a/ou;

    iget v3, v3, Lcom/tencent/mm/protocal/a/ou;->fQT:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v1

    const v2, 0x10129

    iget-object v0, v0, Lcom/tencent/mm/protocal/l;->fxM:Lcom/tencent/mm/protocal/a/ou;

    iget v0, v0, Lcom/tencent/mm/protocal/a/ou;->fQT:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/tencent/mm/storage/e;->set(ILjava/lang/Object;)V

    .line 192
    iget-object v0, p0, Lcom/tencent/mm/modelsimple/n;->cjh:Lcom/tencent/mm/n/m;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/n/m;->a(IILjava/lang/String;Lcom/tencent/mm/n/x;)V

    goto/16 :goto_0

    :cond_7
    move v1, v3

    .line 159
    goto/16 :goto_1

    :cond_8
    move v1, v3

    .line 164
    goto/16 :goto_2
.end method

.method protected final a(Lcom/tencent/mm/n/z;)V
    .locals 0
    .parameter

    .prologue
    .line 96
    return-void
.end method

.method public final getType()I
    .locals 1

    .prologue
    .line 79
    const/16 v0, 0x17c

    return v0
.end method

.method protected final we()I
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x3

    return v0
.end method
