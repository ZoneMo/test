.class public final Lcom/tencent/mm/network/ao;
.super Lcom/tencent/mm/network/t;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/network/b;


# instance fields
.field private cEA:Lcom/tencent/mm/network/a;

.field private cEB:Lcom/tencent/mm/network/az;

.field private cEC:Lcom/tencent/mm/network/bb;

.field private cED:J

.field private cEE:I

.field private cEF:Lcom/tencent/mm/protocal/bf;

.field private cEw:I

.field private cEx:J

.field private cEy:J

.field private cEz:Lcom/tencent/mm/jni/platformcomm/WakerLock;

.field private handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 3
    .parameter

    .prologue
    const-wide/16 v1, 0x0

    .line 140
    invoke-direct {p0}, Lcom/tencent/mm/network/t;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mm/network/ao;->cEw:I

    .line 35
    iput-wide v1, p0, Lcom/tencent/mm/network/ao;->cEx:J

    .line 36
    iput-wide v1, p0, Lcom/tencent/mm/network/ao;->cEy:J

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/network/ao;->cEz:Lcom/tencent/mm/jni/platformcomm/WakerLock;

    .line 43
    iput-wide v1, p0, Lcom/tencent/mm/network/ao;->cED:J

    .line 45
    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/mm/network/ao;->cEE:I

    .line 141
    if-nez p1, :cond_0

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    :cond_0
    iput-object p1, p0, Lcom/tencent/mm/network/ao;->handler:Landroid/os/Handler;

    .line 142
    new-instance v0, Lcom/tencent/mm/network/a;

    invoke-direct {v0, p0}, Lcom/tencent/mm/network/a;-><init>(Lcom/tencent/mm/network/b;)V

    iput-object v0, p0, Lcom/tencent/mm/network/ao;->cEA:Lcom/tencent/mm/network/a;

    .line 144
    new-instance v0, Lcom/tencent/mm/jni/platformcomm/WakerLock;

    invoke-static {}, Lcom/tencent/mm/network/bk;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/mm/jni/platformcomm/WakerLock;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/mm/network/ao;->cEz:Lcom/tencent/mm/jni/platformcomm/WakerLock;

    .line 145
    new-instance v0, Lcom/tencent/mm/network/az;

    iget-object v1, p0, Lcom/tencent/mm/network/ao;->cEz:Lcom/tencent/mm/jni/platformcomm/WakerLock;

    invoke-direct {v0, p0, v1}, Lcom/tencent/mm/network/az;-><init>(Lcom/tencent/mm/network/ao;Lcom/tencent/mm/jni/platformcomm/WakerLock;)V

    iput-object v0, p0, Lcom/tencent/mm/network/ao;->cEB:Lcom/tencent/mm/network/az;

    .line 146
    new-instance v0, Lcom/tencent/mm/network/bb;

    iget-object v1, p0, Lcom/tencent/mm/network/ao;->cEz:Lcom/tencent/mm/jni/platformcomm/WakerLock;

    invoke-direct {v0, p0, v1}, Lcom/tencent/mm/network/bb;-><init>(Lcom/tencent/mm/network/ao;Lcom/tencent/mm/jni/platformcomm/WakerLock;)V

    iput-object v0, p0, Lcom/tencent/mm/network/ao;->cEC:Lcom/tencent/mm/network/bb;

    .line 147
    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/network/ao;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    iput p1, p0, Lcom/tencent/mm/network/ao;->cEE:I

    return p1
.end method

.method static synthetic a(Lcom/tencent/mm/network/ao;Lcom/tencent/mm/network/ak;Lcom/tencent/mm/network/ac;)I
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 29
    const-string v2, "MicroMsg.AutoAuth"

    const-string v3, "dkcgi sendImp rr.type:%d callback:%d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {p1}, Lcom/tencent/mm/network/ak;->getType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v2, v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p1}, Lcom/tencent/mm/network/ak;->getType()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    invoke-interface {p1}, Lcom/tencent/mm/network/ak;->xj()Lcom/tencent/mm/protocal/c;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/network/ao;->cEA:Lcom/tencent/mm/network/a;

    invoke-virtual {v3}, Lcom/tencent/mm/network/a;->sd()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/tencent/mm/protocal/c;->bQ(I)V

    invoke-static {}, Lcom/tencent/mm/network/bk;->Fg()Lcom/tencent/mm/network/bi;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/network/ao;->cEA:Lcom/tencent/mm/network/a;

    invoke-interface {p1}, Lcom/tencent/mm/network/ak;->xi()Z

    move-result v4

    if-eqz v4, :cond_6

    :goto_0
    invoke-virtual {v2, p1, p2, v3, v0}, Lcom/tencent/mm/network/bi;->a(Lcom/tencent/mm/network/ak;Lcom/tencent/mm/network/ac;Lcom/tencent/mm/network/n;I)I

    move-result v0

    if-gez v0, :cond_0

    const-string v1, "MicroMsg.AutoAuth"

    const-string v2, "nonauth: in queue err"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_1
    if-ltz v0, :cond_1

    invoke-static {}, Lcom/tencent/mm/network/bk;->Fb()Lcom/tencent/mm/network/a/a;

    move-result-object v1

    invoke-interface {p1}, Lcom/tencent/mm/network/ak;->getType()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/tencent/mm/network/a/a;->eo(I)V

    :cond_1
    return v0

    :sswitch_0
    invoke-interface {p1}, Lcom/tencent/mm/network/ak;->getType()I

    move-result v2

    const/16 v3, 0x7e

    if-ne v2, v3, :cond_2

    :goto_2
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    new-instance v0, Lcom/tencent/mm/network/a;

    invoke-direct {v0, p0}, Lcom/tencent/mm/network/a;-><init>(Lcom/tencent/mm/network/b;)V

    invoke-interface {p1}, Lcom/tencent/mm/network/ak;->xj()Lcom/tencent/mm/protocal/c;

    move-result-object v2

    invoke-interface {v2}, Lcom/tencent/mm/protocal/c;->getUserName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Lcom/tencent/mm/protocal/c;->getPassword()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2}, Lcom/tencent/mm/protocal/c;->xg()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v3, v4, v2}, Lcom/tencent/mm/network/n;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/network/bk;->Fg()Lcom/tencent/mm/network/bi;

    move-result-object v2

    invoke-virtual {v2, p1, p2, v0, v1}, Lcom/tencent/mm/network/bi;->a(Lcom/tencent/mm/network/ak;Lcom/tencent/mm/network/ac;Lcom/tencent/mm/network/n;I)I

    move-result v0

    if-gez v0, :cond_3

    const-string v1, "MicroMsg.AutoAuth"

    const-string v2, "register: net.send err"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2

    :cond_3
    const-string v1, "MicroMsg.AutoAuth"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "register: netid="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :sswitch_1
    invoke-static {}, Lcom/tencent/mm/network/bk;->Fg()Lcom/tencent/mm/network/bi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/network/bi;->EY()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, -0x1

    goto :goto_1

    :cond_4
    invoke-interface {p1}, Lcom/tencent/mm/network/ak;->xj()Lcom/tencent/mm/protocal/c;

    move-result-object v0

    new-instance v2, Lcom/tencent/mm/network/a;

    invoke-direct {v2, p0}, Lcom/tencent/mm/network/a;-><init>(Lcom/tencent/mm/network/b;)V

    invoke-interface {v0}, Lcom/tencent/mm/protocal/c;->getUserName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Lcom/tencent/mm/protocal/c;->getPassword()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0}, Lcom/tencent/mm/protocal/c;->xg()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v4, v0}, Lcom/tencent/mm/network/n;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/network/bk;->Fg()Lcom/tencent/mm/network/bi;

    move-result-object v0

    invoke-virtual {v0, p1, p2, v2, v1}, Lcom/tencent/mm/network/bi;->a(Lcom/tencent/mm/network/ak;Lcom/tencent/mm/network/ac;Lcom/tencent/mm/network/n;I)I

    move-result v0

    if-gez v0, :cond_5

    const-string v1, "MicroMsg.AutoAuth"

    const-string v2, "auth: net.send err"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_5
    const-string v1, "MicroMsg.AutoAuth"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "auth: netid="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_6
    move v0, v1

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7e -> :sswitch_0
        0x17c -> :sswitch_1
    .end sparse-switch
.end method

.method static synthetic a(Lcom/tencent/mm/network/ao;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/tencent/mm/network/ao;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method private a(Lcom/tencent/mm/network/ak;II)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 717
    iget-object v0, p0, Lcom/tencent/mm/network/ao;->cEA:Lcom/tencent/mm/network/a;

    iget-object v1, p0, Lcom/tencent/mm/network/ao;->cEB:Lcom/tencent/mm/network/az;

    invoke-interface {p1, v0, v1, p2, p3}, Lcom/tencent/mm/network/ak;->a(Lcom/tencent/mm/network/o;Lcom/tencent/mm/network/y;II)V

    .line 718
    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/network/ao;IILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/mm/network/ao;->c(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/network/ao;Lcom/tencent/mm/network/ak;)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 29
    const-string v0, "MicroMsg.AutoAuth"

    const-string v1, "dkcert doGetCert"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/32 v0, 0xea60

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/tencent/mm/network/ao;->cED:J

    sub-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    const-string v0, "MicroMsg.AutoAuth"

    const-string v1, "getcert lastGetCertSucTime=%d, curtime=%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-wide v3, p0, Lcom/tencent/mm/network/ao;->cED:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v7

    const/4 v3, 0x1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, ""

    invoke-direct {p0, v8, v6, v0}, Lcom/tencent/mm/network/ao;->c(IILjava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/tencent/mm/network/bk;->Fg()Lcom/tencent/mm/network/bi;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/network/ao;->cEC:Lcom/tencent/mm/network/bb;

    iget-object v2, p0, Lcom/tencent/mm/network/ao;->cEA:Lcom/tencent/mm/network/a;

    invoke-virtual {v0, p1, v1, v2, v7}, Lcom/tencent/mm/network/bi;->a(Lcom/tencent/mm/network/ak;Lcom/tencent/mm/network/ac;Lcom/tencent/mm/network/n;I)I

    move-result v0

    if-gez v0, :cond_0

    const-string v0, ""

    invoke-direct {p0, v8, v6, v0}, Lcom/tencent/mm/network/ao;->c(IILjava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/tencent/mm/network/ao;Lcom/tencent/mm/network/ak;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 29
    const-string v0, "MicroMsg.AutoAuth"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "account info updated:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/mm/network/ao;->cEA:Lcom/tencent/mm/network/a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MicroMsg.AutoAuth"

    const-string v1, "oreh doAutoAuth ticket: %s"

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/aa;->appenderFlush()V

    iget-object v0, p0, Lcom/tencent/mm/network/ao;->cEA:Lcom/tencent/mm/network/a;

    invoke-virtual {v0}, Lcom/tencent/mm/network/a;->EK()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/tencent/mm/network/bk;->Fg()Lcom/tencent/mm/network/bi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/network/bi;->EY()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/tencent/mm/network/bk;->Fg()Lcom/tencent/mm/network/bi;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/network/ao;->cEB:Lcom/tencent/mm/network/az;

    iget-object v2, p0, Lcom/tencent/mm/network/ao;->cEA:Lcom/tencent/mm/network/a;

    invoke-virtual {v0, p1, v1, v2, v4}, Lcom/tencent/mm/network/bi;->a(Lcom/tencent/mm/network/ak;Lcom/tencent/mm/network/ac;Lcom/tencent/mm/network/n;I)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x3

    const/4 v1, -0x1

    const-string v2, ""

    invoke-direct {p0, v0, v1, v2}, Lcom/tencent/mm/network/ao;->c(IILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/tencent/mm/network/ao;)Lcom/tencent/mm/network/a;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/tencent/mm/network/ao;->cEA:Lcom/tencent/mm/network/a;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/mm/network/ao;)Lcom/tencent/mm/network/bb;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/tencent/mm/network/ao;->cEC:Lcom/tencent/mm/network/bb;

    return-object v0
.end method

.method private c(IILjava/lang/String;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x4

    const/16 v1, -0x64

    .line 682
    const-string v0, "MicroMsg.AutoAuth"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "handleAutoAuthFail errType="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", inErrCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", errMsg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    if-ne p1, v4, :cond_2

    const/16 v0, -0x6a

    if-ne p2, v0, :cond_2

    .line 686
    const-string v0, "MicroMsg.AutoAuth"

    const-string v2, "handleAutoAuthFail autoauth should not be return MM_ERR_BLOCK_BY_SPAM trans to MM_ERR_AUTH_ANOTHERPLACE"

    invoke-static {v0, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 690
    :goto_0
    invoke-static {}, Lcom/tencent/mm/network/bk;->Fg()Lcom/tencent/mm/network/bi;

    move-result-object v2

    invoke-virtual {v2, p1, v0, p3}, Lcom/tencent/mm/network/bi;->d(IILjava/lang/String;)V

    .line 691
    if-ne p1, v4, :cond_1

    if-eq v0, v1, :cond_0

    const/16 v0, -0xcd

    if-eq p2, v0, :cond_0

    const/16 v0, -0xd5

    if-ne p2, v0, :cond_1

    .line 694
    :cond_0
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "auth_hold_prefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 696
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "auth_ishold"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 699
    invoke-virtual {p0}, Lcom/tencent/mm/network/ao;->reset()V

    .line 701
    :cond_1
    return-void

    :cond_2
    move v0, p2

    goto :goto_0
.end method

.method static synthetic d(Lcom/tencent/mm/network/ao;)V
    .locals 3
    .parameter

    .prologue
    const-wide/16 v1, 0x0

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mm/network/ao;->cEw:I

    iput-wide v1, p0, Lcom/tencent/mm/network/ao;->cEx:J

    iput-wide v1, p0, Lcom/tencent/mm/network/ao;->cEy:J

    invoke-static {}, Lcom/tencent/mm/network/bk;->Fg()Lcom/tencent/mm/network/bi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/network/bi;->reset()V

    return-void
.end method

.method static synthetic eG(I)V
    .locals 3
    .parameter

    .prologue
    .line 29
    const-string v0, "MicroMsg.AutoAuth"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cancel: netid="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-gez p0, :cond_0

    const-string v0, "MicroMsg.AutoAuth"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "error netid < 0, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/tencent/mm/network/bk;->Fg()Lcom/tencent/mm/network/bi;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/mm/network/bi;->stopTask(I)V

    goto :goto_0
.end method

.method private static hE(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 704
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ticket_prefs"

    invoke-static {}, Lcom/tencent/mm/compatible/g/l;->qi()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 705
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "_auth_ticket"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 706
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "auth_hold_prefs"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 707
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "auth_ishold"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 708
    const-string v0, "MicroMsg.AutoAuth"

    const-string v1, "oreh save authTicket:%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 709
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/aa;->appenderFlush()V

    .line 711
    return-void
.end method


# virtual methods
.method public final bridge synthetic EM()Lcom/tencent/mm/network/o;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/tencent/mm/network/ao;->cEA:Lcom/tencent/mm/network/a;

    return-object v0
.end method

.method public final EN()V
    .locals 3

    .prologue
    .line 578
    iget-object v0, p0, Lcom/tencent/mm/network/ao;->cEz:Lcom/tencent/mm/jni/platformcomm/WakerLock;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/jni/platformcomm/WakerLock;->lock(J)V

    .line 579
    new-instance v0, Lcom/tencent/mm/network/aw;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/tencent/mm/network/aw;-><init>(Lcom/tencent/mm/network/ao;Ljava/lang/Object;)V

    .line 586
    iget-object v1, p0, Lcom/tencent/mm/network/ao;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/sdk/platformtools/ce;->b(Landroid/os/Handler;)Ljava/lang/Object;

    .line 587
    return-void
.end method

.method public final EO()Lcom/tencent/mm/network/v;
    .locals 1

    .prologue
    .line 611
    invoke-static {}, Lcom/tencent/mm/network/bk;->Fd()Lcom/tencent/mm/network/bn;

    move-result-object v0

    return-object v0
.end method

.method public final ES()Lcom/tencent/mm/network/a;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/tencent/mm/network/ao;->cEA:Lcom/tencent/mm/network/a;

    return-object v0
.end method

.method public final ET()Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 396
    const-wide/32 v2, 0x15f90

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/tencent/mm/network/ao;->cEy:J

    sub-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 397
    const-string v2, "MicroMsg.AutoAuth"

    const-string v3, "auto limit lastSessionTimeout=%d, curtime=%d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-wide v5, p0, Lcom/tencent/mm/network/ao;->cEy:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v2, v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 403
    :goto_0
    return v0

    .line 401
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/tencent/mm/network/ao;->cEy:J

    .line 402
    iget-object v0, p0, Lcom/tencent/mm/network/ao;->cEA:Lcom/tencent/mm/network/a;

    const-string v2, ""

    iget-object v3, p0, Lcom/tencent/mm/network/ao;->cEA:Lcom/tencent/mm/network/a;

    invoke-virtual {v3}, Lcom/tencent/mm/network/a;->sd()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/tencent/mm/network/a;->q(Ljava/lang/String;I)V

    move v0, v1

    .line 403
    goto :goto_0
.end method

.method public final EU()[B
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 727
    iget-object v1, p0, Lcom/tencent/mm/network/ao;->cEF:Lcom/tencent/mm/protocal/bf;

    if-eqz v1, :cond_0

    .line 729
    :try_start_0
    iget-object v1, p0, Lcom/tencent/mm/network/ao;->cEF:Lcom/tencent/mm/protocal/bf;

    invoke-interface {v1}, Lcom/tencent/mm/protocal/bf;->uL()[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 735
    :cond_0
    :goto_0
    return-object v0

    .line 731
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final V(Z)V
    .locals 2
    .parameter

    .prologue
    .line 521
    new-instance v0, Lcom/tencent/mm/network/at;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/tencent/mm/network/at;-><init>(Lcom/tencent/mm/network/ao;Ljava/lang/Object;Z)V

    .line 530
    iget-object v1, p0, Lcom/tencent/mm/network/ao;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/sdk/platformtools/ce;->b(Landroid/os/Handler;)Ljava/lang/Object;

    .line 531
    return-void
.end method

.method public final declared-synchronized a(Lcom/tencent/mm/network/ak;Lcom/tencent/mm/network/ac;)I
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 228
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/network/ao;->cEz:Lcom/tencent/mm/jni/platformcomm/WakerLock;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/jni/platformcomm/WakerLock;->lock(J)V

    .line 229
    new-instance v0, Lcom/tencent/mm/network/as;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/tencent/mm/network/as;-><init>(Lcom/tencent/mm/network/ao;Ljava/lang/Integer;Lcom/tencent/mm/network/ak;Lcom/tencent/mm/network/ac;)V

    .line 245
    iget-object v1, p0, Lcom/tencent/mm/network/ao;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/sdk/platformtools/ce;->b(Landroid/os/Handler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 228
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final a(IILjava/lang/String;Lcom/tencent/mm/network/ak;[B)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v6, 0x17c

    const/4 v0, 0x4

    const/4 v5, -0x1

    const/4 v4, 0x1

    .line 621
    if-eqz p2, :cond_5

    :try_start_0
    iget v1, p0, Lcom/tencent/mm/network/ao;->cEw:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/tencent/mm/network/ao;->cEw:I

    :cond_0
    :goto_0
    invoke-interface {p4}, Lcom/tencent/mm/network/ak;->xk()Lcom/tencent/mm/protocal/f;

    move-result-object v1

    invoke-interface {p4}, Lcom/tencent/mm/network/ak;->getType()I

    move-result v2

    invoke-static {p5}, Lcom/tencent/mm/sdk/platformtools/cj;->A([B)Z

    move-result v3

    if-nez v3, :cond_3

    const/16 v3, 0x7e

    if-eq v2, v3, :cond_1

    if-ne v2, v6, :cond_3

    :cond_1
    if-ne v2, v6, :cond_6

    if-ne p1, v0, :cond_6

    const/16 v2, -0x10

    if-eq p2, v2, :cond_2

    const/16 v2, -0x11

    if-ne p2, v2, :cond_6

    :cond_2
    iget-object v2, p0, Lcom/tencent/mm/network/ao;->cEA:Lcom/tencent/mm/network/a;

    invoke-virtual {v2, p5}, Lcom/tencent/mm/network/a;->x([B)V

    :cond_3
    :goto_1
    invoke-interface {p4}, Lcom/tencent/mm/network/ak;->getType()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 624
    :cond_4
    :goto_2
    return-void

    .line 621
    :cond_5
    invoke-interface {p4}, Lcom/tencent/mm/network/ak;->getType()I

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    const/4 v1, 0x0

    iput v1, p0, Lcom/tencent/mm/network/ao;->cEw:I

    goto :goto_0

    .line 623
    :catch_0
    move-exception v0

    goto :goto_2

    .line 621
    :cond_6
    if-nez p2, :cond_3

    if-nez p1, :cond_3

    iget-object v2, p0, Lcom/tencent/mm/network/ao;->cEA:Lcom/tencent/mm/network/a;

    invoke-virtual {v2, p5}, Lcom/tencent/mm/network/a;->x([B)V

    goto :goto_1

    :sswitch_0
    const-string v0, "MicroMsg.AutoAuth"

    const-string v2, "dkwt auth end ret:[%d,%d][%s]"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    invoke-static {v0, v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v1}, Lcom/tencent/mm/protocal/f;->xm()I

    move-result v0

    if-nez v0, :cond_7

    if-nez p1, :cond_7

    if-eqz p2, :cond_8

    :cond_7
    sparse-switch p2, :sswitch_data_1

    goto :goto_2

    :sswitch_1
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "auth_hold_prefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "auth_ishold"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_2

    :sswitch_2
    invoke-interface {p4}, Lcom/tencent/mm/network/ak;->xj()Lcom/tencent/mm/protocal/c;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/mm/network/ao;->cEA:Lcom/tencent/mm/network/a;

    invoke-interface {v1}, Lcom/tencent/mm/protocal/f;->xr()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Lcom/tencent/mm/protocal/c;->getPassword()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0}, Lcom/tencent/mm/protocal/c;->xg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v4, v0}, Lcom/tencent/mm/network/a;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/network/ao;->cEA:Lcom/tencent/mm/network/a;

    invoke-interface {v1}, Lcom/tencent/mm/protocal/f;->uo()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Lcom/tencent/mm/protocal/f;->sd()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/tencent/mm/network/a;->q(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/tencent/mm/network/ao;->cEA:Lcom/tencent/mm/network/a;

    invoke-interface {v1}, Lcom/tencent/mm/protocal/f;->xr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/mm/network/a;->hC(Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/tencent/mm/protocal/f;->xn()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/network/ao;->hE(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_8
    invoke-interface {p4}, Lcom/tencent/mm/network/ak;->xj()Lcom/tencent/mm/protocal/c;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/mm/network/ao;->cEA:Lcom/tencent/mm/network/a;

    invoke-interface {v1}, Lcom/tencent/mm/protocal/f;->xr()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Lcom/tencent/mm/protocal/c;->getPassword()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0}, Lcom/tencent/mm/protocal/c;->xg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v4, v0}, Lcom/tencent/mm/network/a;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/network/ao;->cEA:Lcom/tencent/mm/network/a;

    invoke-interface {v1}, Lcom/tencent/mm/protocal/f;->uo()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Lcom/tencent/mm/protocal/f;->sd()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/tencent/mm/network/a;->q(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/tencent/mm/network/ao;->cEA:Lcom/tencent/mm/network/a;

    invoke-interface {v1}, Lcom/tencent/mm/protocal/f;->xr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/mm/network/a;->hC(Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/tencent/mm/protocal/f;->xn()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/network/ao;->hE(Ljava/lang/String;)V

    goto/16 :goto_2

    :sswitch_3
    if-nez p1, :cond_9

    if-nez p2, :cond_9

    invoke-interface {p4}, Lcom/tencent/mm/network/ak;->xk()Lcom/tencent/mm/protocal/f;

    move-result-object v1

    invoke-interface {v1}, Lcom/tencent/mm/protocal/f;->xo()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p4}, Lcom/tencent/mm/network/ak;->xk()Lcom/tencent/mm/protocal/f;

    move-result-object v2

    invoke-interface {v2}, Lcom/tencent/mm/protocal/f;->xp()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p4}, Lcom/tencent/mm/network/ak;->xk()Lcom/tencent/mm/protocal/f;

    move-result-object v3

    invoke-interface {v3}, Lcom/tencent/mm/protocal/f;->xq()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/tencent/mm/protocal/bi;->k(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/tencent/mm/network/ao;->cED:J

    :cond_9
    sget v1, Lcom/tencent/mm/platformtools/at;->cHJ:I

    const/16 v2, 0x2713

    if-ne v1, v2, :cond_b

    sget v1, Lcom/tencent/mm/platformtools/at;->cHK:I

    if-lez v1, :cond_b

    sget v1, Lcom/tencent/mm/platformtools/at;->cHK:I

    if-gt v1, v4, :cond_a

    const/4 v1, 0x0

    sput v1, Lcom/tencent/mm/platformtools/at;->cHK:I

    :cond_a
    const-string v1, ""

    const-string v2, ""

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/tencent/mm/protocal/bi;->k(Ljava/lang/String;Ljava/lang/String;I)V

    move p1, v0

    :cond_b
    iget v0, p0, Lcom/tencent/mm/network/ao;->cEE:I

    if-eq v0, v5, :cond_4

    if-nez p1, :cond_c

    if-nez p2, :cond_c

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p4, v0, v1}, Lcom/tencent/mm/network/ao;->a(Lcom/tencent/mm/network/ak;II)V

    :cond_c
    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/mm/network/ao;->cEE:I

    goto/16 :goto_2

    :sswitch_4
    const-string v0, "MicroMsg.AutoAuth"

    const-string v2, "net.end: register done"

    invoke-static {v0, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/tencent/mm/protocal/f;->xm()I

    move-result v0

    if-nez v0, :cond_d

    if-nez p1, :cond_d

    if-eqz p2, :cond_e

    :cond_d
    const-string v0, "MicroMsg.AutoAuth"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "net.end: reg err: type="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p4}, Lcom/tencent/mm/network/ak;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " err="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " errmsg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_e
    const-string v0, "MicroMsg.AutoAuth"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "net.end: reg ok: type="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p4}, Lcom/tencent/mm/network/ak;->getType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p4}, Lcom/tencent/mm/network/ak;->xj()Lcom/tencent/mm/protocal/c;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/mm/network/ao;->cEA:Lcom/tencent/mm/network/a;

    invoke-interface {v1}, Lcom/tencent/mm/protocal/f;->xr()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Lcom/tencent/mm/protocal/c;->getPassword()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0}, Lcom/tencent/mm/protocal/c;->xg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v4, v0}, Lcom/tencent/mm/network/a;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/network/ao;->cEA:Lcom/tencent/mm/network/a;

    invoke-interface {v1}, Lcom/tencent/mm/protocal/f;->uo()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Lcom/tencent/mm/protocal/f;->sd()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/tencent/mm/network/a;->q(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/tencent/mm/network/ao;->cEA:Lcom/tencent/mm/network/a;

    invoke-interface {v1}, Lcom/tencent/mm/protocal/f;->xr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/mm/network/a;->hC(Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/tencent/mm/protocal/f;->xn()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/network/ao;->hE(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x7e -> :sswitch_4
        0x17c -> :sswitch_0
        0x17d -> :sswitch_3
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0xd5 -> :sswitch_1
        -0xcd -> :sswitch_1
        -0x64 -> :sswitch_1
        -0x11 -> :sswitch_2
        -0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public final a(Lcom/tencent/mm/network/a/c;)V
    .locals 1
    .parameter

    .prologue
    .line 606
    invoke-static {}, Lcom/tencent/mm/network/bk;->Fc()Lcom/tencent/mm/network/bm;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/mm/network/bm;->a(Lcom/tencent/mm/network/a/c;)V

    .line 607
    return-void
.end method

.method public final a(Lcom/tencent/mm/protocal/bf;)V
    .locals 0
    .parameter

    .prologue
    .line 724
    iput-object p1, p0, Lcom/tencent/mm/network/ao;->cEF:Lcom/tencent/mm/protocal/bf;

    .line 725
    return-void
.end method

.method public final a(ZLjava/lang/String;Ljava/lang/String;[I[IIILjava/lang/String;Ljava/lang/String;)V
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
    .line 536
    iget-object v0, p0, Lcom/tencent/mm/network/ao;->cEz:Lcom/tencent/mm/jni/platformcomm/WakerLock;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/jni/platformcomm/WakerLock;->lock(J)V

    .line 538
    invoke-static {p2}, Lcom/tencent/mm/protocal/u;->ru(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 539
    invoke-static {p3}, Lcom/tencent/mm/protocal/u;->ru(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 541
    const-string v1, "MicroMsg.AutoAuth"

    const-string v2, "dkidc setIDCHostInfo short:[%s][%s](%d) long:[%s][%s](%d) reset:%s"

    const/4 v0, 0x7

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p8, v4, v0

    const/4 v0, 0x1

    aput-object p2, v4, v0

    const/4 v5, 0x2

    if-nez v3, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v0, 0x3

    aput-object p9, v4, v0

    const/4 v0, 0x4

    aput-object p3, v4, v0

    const/4 v5, 0x5

    if-nez v6, :cond_1

    const/4 v0, -0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v5, 0x6

    if-eqz p1, :cond_2

    const-string v0, "!!!!!CHANGE IDC NOW"

    :goto_2
    aput-object v0, v4, v5

    invoke-static {v1, v2, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 545
    new-instance v0, Lcom/tencent/mm/network/au;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v1, p0

    move-object/from16 v4, p4

    move/from16 v5, p6

    move-object/from16 v7, p5

    move/from16 v8, p7

    move v9, p1

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    invoke-direct/range {v0 .. v11}, Lcom/tencent/mm/network/au;-><init>(Lcom/tencent/mm/network/ao;Ljava/lang/Object;[Ljava/lang/String;[II[Ljava/lang/String;[IIZLjava/lang/String;Ljava/lang/String;)V

    .line 554
    iget-object v1, p0, Lcom/tencent/mm/network/ao;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/sdk/platformtools/ce;->b(Landroid/os/Handler;)Ljava/lang/Object;

    .line 555
    return-void

    .line 541
    :cond_0
    array-length v0, v3

    goto :goto_0

    :cond_1
    array-length v0, v6

    goto :goto_1

    :cond_2
    const-string v0, "false"

    goto :goto_2
.end method

.method public final c(Ljava/lang/String;Ljava/util/List;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 752
    invoke-static {p1, p2}, Lcom/tencent/mm/network/Java2C;->c(Ljava/lang/String;Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method public final cancel(I)V
    .locals 3
    .parameter

    .prologue
    .line 162
    iget-object v0, p0, Lcom/tencent/mm/network/ao;->cEz:Lcom/tencent/mm/jni/platformcomm/WakerLock;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/jni/platformcomm/WakerLock;->lock(J)V

    .line 163
    new-instance v0, Lcom/tencent/mm/network/ap;

    invoke-direct {v0, p0, p1}, Lcom/tencent/mm/network/ap;-><init>(Lcom/tencent/mm/network/ao;I)V

    .line 176
    iget-object v1, p0, Lcom/tencent/mm/network/ao;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/sdk/platformtools/ce;->b(Landroid/os/Handler;)Ljava/lang/Object;

    .line 177
    return-void
.end method

.method public final d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 559
    iget-object v0, p0, Lcom/tencent/mm/network/ao;->cEz:Lcom/tencent/mm/jni/platformcomm/WakerLock;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/jni/platformcomm/WakerLock;->lock(J)V

    .line 560
    const-string v0, "MicroMsg.AutoAuth"

    const-string v1, "dkidc setFixedHost debug short:%s long:%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 561
    invoke-static {p1}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 562
    :cond_0
    const-string v0, "MicroMsg.AutoAuth"

    const-string v1, "dkidc setFixedHost FAILED ! check assist"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    :goto_0
    return-void

    .line 565
    :cond_1
    new-instance v0, Lcom/tencent/mm/network/av;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/tencent/mm/network/av;-><init>(Lcom/tencent/mm/network/ao;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    iget-object v1, p0, Lcom/tencent/mm/network/ao;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/sdk/platformtools/ce;->b(Landroid/os/Handler;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final eu(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 592
    iget-object v0, p0, Lcom/tencent/mm/network/ao;->cEz:Lcom/tencent/mm/jni/platformcomm/WakerLock;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/jni/platformcomm/WakerLock;->lock(J)V

    .line 593
    new-instance v0, Lcom/tencent/mm/network/ax;

    invoke-direct {v0, p0, p1}, Lcom/tencent/mm/network/ax;-><init>(Lcom/tencent/mm/network/ao;Ljava/lang/String;)V

    .line 601
    iget-object v1, p0, Lcom/tencent/mm/network/ao;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/sdk/platformtools/ce;->b(Landroid/os/Handler;)Ljava/lang/Object;

    .line 602
    return-void
.end method

.method protected final finalize()V
    .locals 0

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/tencent/mm/network/ao;->reset()V

    .line 157
    invoke-super {p0}, Lcom/tencent/mm/network/t;->finalize()V

    .line 158
    return-void
.end method

.method public final getIPsString(Z)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 202
    invoke-static {p1}, Lcom/tencent/mm/network/Java2C;->getIPsString(Z)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getNetworkServerIp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    invoke-static {}, Lcom/tencent/mm/network/Java2C;->getNetworkServerIp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final makeSureAuth()Z
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 629
    iget-object v2, p0, Lcom/tencent/mm/network/ao;->cEA:Lcom/tencent/mm/network/a;

    invoke-virtual {v2}, Lcom/tencent/mm/network/a;->EK()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 674
    :goto_0
    return v0

    .line 632
    :cond_0
    invoke-static {}, Lcom/tencent/mm/network/bk;->Fg()Lcom/tencent/mm/network/bi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/network/bi;->EY()Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    .line 633
    goto :goto_0

    .line 635
    :cond_1
    iget v2, p0, Lcom/tencent/mm/network/ao;->cEE:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 636
    const-string v0, "MicroMsg.AutoAuth"

    const-string v2, "auto limit now is getting cert"

    invoke-static {v0, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 637
    goto :goto_0

    .line 640
    :cond_2
    const-wide/32 v2, 0xea60

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/tencent/mm/network/ao;->cEx:J

    sub-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-ltz v2, :cond_3

    .line 641
    const-string v2, "MicroMsg.AutoAuth"

    const-string v3, "auto limit lastAutoAuthtime=%d, curtime=%d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-wide v5, p0, Lcom/tencent/mm/network/ao;->cEx:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v2, v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 642
    goto :goto_0

    .line 645
    :cond_3
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "auth_hold_prefs"

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 646
    const-string v3, "auth_ishold"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 647
    const-string v2, "MicroMsg.AutoAuth"

    const-string v3, "sendImp hit push hold, pid:%d"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v1

    invoke-static {v2, v3, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 649
    invoke-static {}, Lcom/tencent/mm/network/bk;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/tencent/mm/network/ay;

    invoke-direct {v2, p0}, Lcom/tencent/mm/network/ay;-><init>(Lcom/tencent/mm/network/ao;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move v0, v1

    .line 664
    goto :goto_0

    .line 667
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/tencent/mm/network/ao;->cEx:J

    .line 669
    invoke-static {}, Lcom/tencent/mm/network/bk;->Fg()Lcom/tencent/mm/network/bi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/network/bi;->EZ()Lcom/tencent/mm/network/ak;

    move-result-object v0

    .line 670
    if-eqz v0, :cond_5

    .line 672
    const/4 v2, 0x3

    const/4 v3, 0x3

    :try_start_0
    invoke-direct {p0, v0, v2, v3}, Lcom/tencent/mm/network/ao;->a(Lcom/tencent/mm/network/ak;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_1
    move v0, v1

    .line 674
    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public final reset()V
    .locals 3

    .prologue
    .line 207
    iget-object v0, p0, Lcom/tencent/mm/network/ao;->cEz:Lcom/tencent/mm/jni/platformcomm/WakerLock;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/jni/platformcomm/WakerLock;->lock(J)V

    .line 208
    new-instance v0, Lcom/tencent/mm/network/ar;

    invoke-direct {v0, p0}, Lcom/tencent/mm/network/ar;-><init>(Lcom/tencent/mm/network/ao;)V

    .line 216
    iget-object v1, p0, Lcom/tencent/mm/network/ao;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/sdk/platformtools/ce;->b(Landroid/os/Handler;)Ljava/lang/Object;

    .line 217
    return-void
.end method

.method public final setHostInfo([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 757
    iget-object v0, p0, Lcom/tencent/mm/network/ao;->cEz:Lcom/tencent/mm/jni/platformcomm/WakerLock;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/jni/platformcomm/WakerLock;->lock(J)V

    .line 758
    new-instance v0, Lcom/tencent/mm/network/aq;

    invoke-direct {v0, p0, p1, p2}, Lcom/tencent/mm/network/aq;-><init>(Lcom/tencent/mm/network/ao;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 765
    iget-object v1, p0, Lcom/tencent/mm/network/ao;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/sdk/platformtools/ce;->b(Landroid/os/Handler;)Ljava/lang/Object;

    .line 766
    return-void
.end method

.method public final uM()[B
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 738
    iget-object v1, p0, Lcom/tencent/mm/network/ao;->cEF:Lcom/tencent/mm/protocal/bf;

    if-eqz v1, :cond_0

    .line 740
    :try_start_0
    iget-object v1, p0, Lcom/tencent/mm/network/ao;->cEF:Lcom/tencent/mm/protocal/bf;

    invoke-interface {v1}, Lcom/tencent/mm/protocal/bf;->uM()[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 746
    :cond_0
    :goto_0
    return-object v0

    .line 742
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final wT()Z
    .locals 2

    .prologue
    .line 190
    iget v0, p0, Lcom/tencent/mm/network/ao;->cEw:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
