.class public final Lcom/tencent/mm/plugin/d/b/e;
.super Lcom/tencent/mm/n/x;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/network/ab;


# instance fields
.field private cjh:Lcom/tencent/mm/n/m;

.field private final cke:Lcom/tencent/mm/n/a;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 26
    invoke-direct {p0}, Lcom/tencent/mm/n/x;-><init>()V

    .line 27
    new-instance v0, Lcom/tencent/mm/n/b;

    invoke-direct {v0}, Lcom/tencent/mm/n/b;-><init>()V

    .line 28
    new-instance v1, Lcom/tencent/mm/protocal/a/km;

    invoke-direct {v1}, Lcom/tencent/mm/protocal/a/km;-><init>()V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/b;->a(Lcom/tencent/mm/am/a;)V

    .line 29
    new-instance v1, Lcom/tencent/mm/protocal/a/kn;

    invoke-direct {v1}, Lcom/tencent/mm/protocal/a/kn;-><init>()V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/b;->b(Lcom/tencent/mm/am/a;)V

    .line 30
    const-string v1, "/cgi-bin/micromsg-bin/reportstrategy"

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/b;->es(Ljava/lang/String;)V

    .line 31
    const/16 v1, 0x134

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/b;->cN(I)V

    .line 32
    invoke-virtual {v0, v2}, Lcom/tencent/mm/n/b;->cO(I)V

    .line 33
    invoke-virtual {v0, v2}, Lcom/tencent/mm/n/b;->cP(I)V

    .line 34
    invoke-virtual {v0}, Lcom/tencent/mm/n/b;->wx()Lcom/tencent/mm/n/a;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/d/b/e;->cke:Lcom/tencent/mm/n/a;

    .line 36
    iget-object v0, p0, Lcom/tencent/mm/plugin/d/b/e;->cke:Lcom/tencent/mm/n/a;

    invoke-virtual {v0}, Lcom/tencent/mm/n/a;->wr()Lcom/tencent/mm/am/a;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/a/km;

    .line 37
    sget-object v1, Lcom/tencent/mm/protocal/a;->fxl:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/mm/protocal/a/km;->fDT:Ljava/lang/String;

    .line 38
    sget-object v1, Lcom/tencent/mm/protocal/a;->fxm:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/mm/protocal/a/km;->fDS:Ljava/lang/String;

    .line 39
    sget-object v1, Lcom/tencent/mm/protocal/a;->fxp:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/mm/protocal/a/km;->fDV:Ljava/lang/String;

    .line 40
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/z;->azj()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/protocal/a/km;->fDW:Ljava/lang/String;

    .line 41
    sget-object v1, Lcom/tencent/mm/protocal/a;->fxo:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/mm/protocal/a/km;->fDU:Ljava/lang/String;

    .line 42
    return-void
.end method


# virtual methods
.method public final YZ()Ljava/util/LinkedList;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/tencent/mm/plugin/d/b/e;->cke:Lcom/tencent/mm/n/a;

    invoke-virtual {v0}, Lcom/tencent/mm/n/a;->ws()Lcom/tencent/mm/am/a;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/a/kn;

    .line 64
    iget-object v0, v0, Lcom/tencent/mm/protocal/a/kn;->fAD:Ljava/util/LinkedList;

    return-object v0
.end method

.method public final a(Lcom/tencent/mm/network/r;Lcom/tencent/mm/n/m;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 58
    iput-object p2, p0, Lcom/tencent/mm/plugin/d/b/e;->cjh:Lcom/tencent/mm/n/m;

    .line 59
    iget-object v0, p0, Lcom/tencent/mm/plugin/d/b/e;->cke:Lcom/tencent/mm/n/a;

    invoke-virtual {p0, p1, v0, p0}, Lcom/tencent/mm/plugin/d/b/e;->a(Lcom/tencent/mm/network/r;Lcom/tencent/mm/network/aj;Lcom/tencent/mm/network/ab;)I

    move-result v0

    return v0
.end method

.method public final a(IIILjava/lang/String;Lcom/tencent/mm/network/aj;[B)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 45
    if-nez p2, :cond_0

    if-nez p3, :cond_0

    .line 46
    const-string v0, "MicroMsg.NetSceneGetReportRule"

    const-string v1, "get report strategy ok"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/d/b/e;->cjh:Lcom/tencent/mm/n/m;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/n/m;->a(IILjava/lang/String;Lcom/tencent/mm/n/x;)V

    .line 49
    return-void
.end method

.method public final getType()I
    .locals 1

    .prologue
    .line 53
    const/16 v0, 0x134

    return v0
.end method
