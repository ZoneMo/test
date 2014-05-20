.class public final Lcom/tencent/mm/plugin/wallet/address/model/e;
.super Lcom/tencent/mm/n/x;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/network/ab;


# instance fields
.field private cjh:Lcom/tencent/mm/n/m;

.field private cke:Lcom/tencent/mm/n/a;


# direct methods
.method public constructor <init>(Lcom/tencent/mm/plugin/wallet/protocal/b;)V
    .locals 5
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/tencent/mm/n/x;-><init>()V

    .line 28
    new-instance v0, Lcom/tencent/mm/n/b;

    invoke-direct {v0}, Lcom/tencent/mm/n/b;-><init>()V

    .line 29
    new-instance v1, Lcom/tencent/mm/protocal/a/rl;

    invoke-direct {v1}, Lcom/tencent/mm/protocal/a/rl;-><init>()V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/b;->a(Lcom/tencent/mm/am/a;)V

    .line 30
    new-instance v1, Lcom/tencent/mm/protocal/a/rm;

    invoke-direct {v1}, Lcom/tencent/mm/protocal/a/rm;-><init>()V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/b;->b(Lcom/tencent/mm/am/a;)V

    .line 31
    const-string v1, "/cgi-bin/micromsg-bin/rcptinfoupdate"

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/b;->es(Ljava/lang/String;)V

    .line 32
    const/16 v1, 0x1a2

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/b;->cN(I)V

    .line 33
    const/16 v1, 0xcb

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/b;->cO(I)V

    .line 34
    const v1, 0x3b9acacb

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/b;->cP(I)V

    .line 36
    invoke-virtual {v0}, Lcom/tencent/mm/n/b;->wx()Lcom/tencent/mm/n/a;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/address/model/e;->cke:Lcom/tencent/mm/n/a;

    .line 37
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/address/model/e;->cke:Lcom/tencent/mm/n/a;

    invoke-virtual {v0}, Lcom/tencent/mm/n/a;->wr()Lcom/tencent/mm/am/a;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/a/rl;

    .line 38
    new-instance v1, Lcom/tencent/mm/protocal/a/re;

    invoke-direct {v1}, Lcom/tencent/mm/protocal/a/re;-><init>()V

    iput-object v1, v0, Lcom/tencent/mm/protocal/a/rl;->fTx:Lcom/tencent/mm/protocal/a/re;

    .line 39
    iget-object v1, v0, Lcom/tencent/mm/protocal/a/rl;->fTx:Lcom/tencent/mm/protocal/a/re;

    iget v2, p1, Lcom/tencent/mm/plugin/wallet/protocal/b;->id:I

    iput v2, v1, Lcom/tencent/mm/protocal/a/re;->id:I

    .line 40
    iget-object v1, v0, Lcom/tencent/mm/protocal/a/rl;->fTx:Lcom/tencent/mm/protocal/a/re;

    new-instance v2, Lcom/tencent/mm/protocal/a/rw;

    invoke-direct {v2}, Lcom/tencent/mm/protocal/a/rw;-><init>()V

    iget-object v3, p1, Lcom/tencent/mm/plugin/wallet/protocal/b;->fcW:Ljava/lang/String;

    const-string v4, ""

    invoke-static {v3, v4}, Lcom/tencent/mm/sdk/platformtools/cj;->R(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/mm/protocal/a/rw;->sn(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/rw;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/mm/protocal/a/re;->fTC:Lcom/tencent/mm/protocal/a/rw;

    .line 41
    iget-object v1, v0, Lcom/tencent/mm/protocal/a/rl;->fTx:Lcom/tencent/mm/protocal/a/re;

    new-instance v2, Lcom/tencent/mm/protocal/a/rw;

    invoke-direct {v2}, Lcom/tencent/mm/protocal/a/rw;-><init>()V

    iget-object v3, p1, Lcom/tencent/mm/plugin/wallet/protocal/b;->fcU:Ljava/lang/String;

    const-string v4, ""

    invoke-static {v3, v4}, Lcom/tencent/mm/sdk/platformtools/cj;->R(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/mm/protocal/a/rw;->sn(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/rw;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/mm/protocal/a/re;->fTA:Lcom/tencent/mm/protocal/a/rw;

    .line 42
    iget-object v1, v0, Lcom/tencent/mm/protocal/a/rl;->fTx:Lcom/tencent/mm/protocal/a/re;

    new-instance v2, Lcom/tencent/mm/protocal/a/rw;

    invoke-direct {v2}, Lcom/tencent/mm/protocal/a/rw;-><init>()V

    iget-object v3, p1, Lcom/tencent/mm/plugin/wallet/protocal/b;->fcZ:Ljava/lang/String;

    const-string v4, ""

    invoke-static {v3, v4}, Lcom/tencent/mm/sdk/platformtools/cj;->R(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/mm/protocal/a/rw;->sn(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/rw;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/mm/protocal/a/re;->fTF:Lcom/tencent/mm/protocal/a/rw;

    .line 43
    iget-object v1, v0, Lcom/tencent/mm/protocal/a/rl;->fTx:Lcom/tencent/mm/protocal/a/re;

    new-instance v2, Lcom/tencent/mm/protocal/a/rw;

    invoke-direct {v2}, Lcom/tencent/mm/protocal/a/rw;-><init>()V

    iget-object v3, p1, Lcom/tencent/mm/plugin/wallet/protocal/b;->fcX:Ljava/lang/String;

    const-string v4, ""

    invoke-static {v3, v4}, Lcom/tencent/mm/sdk/platformtools/cj;->R(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/mm/protocal/a/rw;->sn(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/rw;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/mm/protocal/a/re;->fTD:Lcom/tencent/mm/protocal/a/rw;

    .line 45
    iget-object v1, v0, Lcom/tencent/mm/protocal/a/rl;->fTx:Lcom/tencent/mm/protocal/a/re;

    new-instance v2, Lcom/tencent/mm/protocal/a/rw;

    invoke-direct {v2}, Lcom/tencent/mm/protocal/a/rw;-><init>()V

    iget-object v3, p1, Lcom/tencent/mm/plugin/wallet/protocal/b;->fda:Ljava/lang/String;

    const-string v4, ""

    invoke-static {v3, v4}, Lcom/tencent/mm/sdk/platformtools/cj;->R(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/mm/protocal/a/rw;->sn(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/rw;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/mm/protocal/a/re;->fTG:Lcom/tencent/mm/protocal/a/rw;

    .line 46
    iget-object v1, v0, Lcom/tencent/mm/protocal/a/rl;->fTx:Lcom/tencent/mm/protocal/a/re;

    new-instance v2, Lcom/tencent/mm/protocal/a/rw;

    invoke-direct {v2}, Lcom/tencent/mm/protocal/a/rw;-><init>()V

    iget-object v3, p1, Lcom/tencent/mm/plugin/wallet/protocal/b;->fdb:Ljava/lang/String;

    const-string v4, ""

    invoke-static {v3, v4}, Lcom/tencent/mm/sdk/platformtools/cj;->R(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/mm/protocal/a/rw;->sn(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/rw;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/mm/protocal/a/re;->fTH:Lcom/tencent/mm/protocal/a/rw;

    .line 48
    iget-object v1, v0, Lcom/tencent/mm/protocal/a/rl;->fTx:Lcom/tencent/mm/protocal/a/re;

    new-instance v2, Lcom/tencent/mm/protocal/a/rw;

    invoke-direct {v2}, Lcom/tencent/mm/protocal/a/rw;-><init>()V

    iget-object v3, p1, Lcom/tencent/mm/plugin/wallet/protocal/b;->fcV:Ljava/lang/String;

    const-string v4, ""

    invoke-static {v3, v4}, Lcom/tencent/mm/sdk/platformtools/cj;->R(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/mm/protocal/a/rw;->sn(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/rw;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/mm/protocal/a/re;->fTB:Lcom/tencent/mm/protocal/a/rw;

    .line 49
    iget-object v1, v0, Lcom/tencent/mm/protocal/a/rl;->fTx:Lcom/tencent/mm/protocal/a/re;

    new-instance v2, Lcom/tencent/mm/protocal/a/rw;

    invoke-direct {v2}, Lcom/tencent/mm/protocal/a/rw;-><init>()V

    iget-object v3, p1, Lcom/tencent/mm/plugin/wallet/protocal/b;->fcY:Ljava/lang/String;

    const-string v4, ""

    invoke-static {v3, v4}, Lcom/tencent/mm/sdk/platformtools/cj;->R(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/mm/protocal/a/rw;->sn(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/rw;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/mm/protocal/a/re;->fTE:Lcom/tencent/mm/protocal/a/rw;

    .line 50
    iget-object v0, v0, Lcom/tencent/mm/protocal/a/rl;->fTx:Lcom/tencent/mm/protocal/a/re;

    new-instance v1, Lcom/tencent/mm/protocal/a/rw;

    invoke-direct {v1}, Lcom/tencent/mm/protocal/a/rw;-><init>()V

    iget-object v2, p1, Lcom/tencent/mm/plugin/wallet/protocal/b;->fdc:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v3}, Lcom/tencent/mm/sdk/platformtools/cj;->R(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/protocal/a/rw;->sn(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/rw;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/protocal/a/re;->fTI:Lcom/tencent/mm/protocal/a/rw;

    .line 51
    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/network/r;Lcom/tencent/mm/n/m;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 74
    iput-object p2, p0, Lcom/tencent/mm/plugin/wallet/address/model/e;->cjh:Lcom/tencent/mm/n/m;

    .line 75
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/address/model/e;->cke:Lcom/tencent/mm/n/a;

    invoke-virtual {p0, p1, v0, p0}, Lcom/tencent/mm/plugin/wallet/address/model/e;->a(Lcom/tencent/mm/network/r;Lcom/tencent/mm/network/aj;Lcom/tencent/mm/network/ab;)I

    move-result v0

    return v0
.end method

.method public final a(IIILjava/lang/String;Lcom/tencent/mm/network/aj;[B)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 55
    const-string v0, "MicroMsg.NetSceneRcptInfoUpdate"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "errType:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",errCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",errMsg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    if-nez p2, :cond_0

    if-nez p3, :cond_0

    .line 57
    check-cast p5, Lcom/tencent/mm/n/a;

    invoke-virtual {p5}, Lcom/tencent/mm/n/a;->ws()Lcom/tencent/mm/am/a;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/a/rm;

    .line 58
    iget-object v1, v0, Lcom/tencent/mm/protocal/a/rm;->fTy:Lcom/tencent/mm/protocal/a/rd;

    iget-object v1, v1, Lcom/tencent/mm/protocal/a/rd;->fTz:Ljava/util/LinkedList;

    if-eqz v1, :cond_0

    .line 59
    const-string v1, "MicroMsg.NetSceneRcptInfoUpdate"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "resp.rImpl.rcptinfolist.rcptinfolist "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/tencent/mm/protocal/a/rm;->fTy:Lcom/tencent/mm/protocal/a/rd;

    iget-object v3, v3, Lcom/tencent/mm/protocal/a/rd;->fTz:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-static {}, Lcom/tencent/mm/plugin/wallet/c/c;->anX()Lcom/tencent/mm/plugin/wallet/c/c;

    invoke-static {}, Lcom/tencent/mm/plugin/wallet/c/c;->anY()Lcom/tencent/mm/plugin/wallet/address/model/i;

    move-result-object v1

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/rm;->fTy:Lcom/tencent/mm/protocal/a/rd;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/rd;->fTz:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/plugin/wallet/address/model/i;->O(Ljava/util/LinkedList;)Z

    .line 61
    invoke-static {}, Lcom/tencent/mm/plugin/wallet/c/c;->anX()Lcom/tencent/mm/plugin/wallet/c/c;

    invoke-static {}, Lcom/tencent/mm/plugin/wallet/c/c;->anY()Lcom/tencent/mm/plugin/wallet/address/model/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/wallet/address/model/i;->amY()V

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/address/model/e;->cjh:Lcom/tencent/mm/n/m;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/n/m;->a(IILjava/lang/String;Lcom/tencent/mm/n/x;)V

    .line 65
    return-void
.end method

.method public final getType()I
    .locals 1

    .prologue
    .line 69
    const/16 v0, 0x1a2

    return v0
.end method
