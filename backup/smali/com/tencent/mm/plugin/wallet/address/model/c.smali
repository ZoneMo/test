.class public final Lcom/tencent/mm/plugin/wallet/address/model/c;
.super Lcom/tencent/mm/n/x;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/network/ab;


# instance fields
.field private cjh:Lcom/tencent/mm/n/m;

.field private cke:Lcom/tencent/mm/n/a;

.field private eVX:I


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .parameter

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/tencent/mm/n/x;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mm/plugin/wallet/address/model/c;->eVX:I

    .line 26
    new-instance v0, Lcom/tencent/mm/n/b;

    invoke-direct {v0}, Lcom/tencent/mm/n/b;-><init>()V

    .line 27
    new-instance v1, Lcom/tencent/mm/protocal/a/rh;

    invoke-direct {v1}, Lcom/tencent/mm/protocal/a/rh;-><init>()V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/b;->a(Lcom/tencent/mm/am/a;)V

    .line 28
    new-instance v1, Lcom/tencent/mm/protocal/a/ri;

    invoke-direct {v1}, Lcom/tencent/mm/protocal/a/ri;-><init>()V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/b;->b(Lcom/tencent/mm/am/a;)V

    .line 29
    const-string v1, "/cgi-bin/micromsg-bin/rcptinforemove"

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/b;->es(Ljava/lang/String;)V

    .line 30
    const/16 v1, 0x1a0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/b;->cN(I)V

    .line 31
    const/16 v1, 0xc9

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/b;->cO(I)V

    .line 32
    const v1, 0x3b9acac9

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/b;->cP(I)V

    .line 34
    invoke-virtual {v0}, Lcom/tencent/mm/n/b;->wx()Lcom/tencent/mm/n/a;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/address/model/c;->cke:Lcom/tencent/mm/n/a;

    .line 35
    iput p1, p0, Lcom/tencent/mm/plugin/wallet/address/model/c;->eVX:I

    .line 36
    const-string v0, "MicroMsg.NetSceneRcptInfoRemove"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "remove Id "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/address/model/c;->cke:Lcom/tencent/mm/n/a;

    invoke-virtual {v0}, Lcom/tencent/mm/n/a;->wr()Lcom/tencent/mm/am/a;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/a/rh;

    .line 38
    iput p1, v0, Lcom/tencent/mm/protocal/a/rh;->id:I

    .line 39
    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/network/r;Lcom/tencent/mm/n/m;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 66
    iput-object p2, p0, Lcom/tencent/mm/plugin/wallet/address/model/c;->cjh:Lcom/tencent/mm/n/m;

    .line 67
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/address/model/c;->cke:Lcom/tencent/mm/n/a;

    invoke-virtual {p0, p1, v0, p0}, Lcom/tencent/mm/plugin/wallet/address/model/c;->a(Lcom/tencent/mm/network/r;Lcom/tencent/mm/network/aj;Lcom/tencent/mm/network/ab;)I

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
    .line 47
    const-string v0, "MicroMsg.NetSceneRcptInfoRemove"

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

    .line 48
    if-nez p2, :cond_0

    if-nez p3, :cond_0

    .line 49
    check-cast p5, Lcom/tencent/mm/n/a;

    invoke-virtual {p5}, Lcom/tencent/mm/n/a;->ws()Lcom/tencent/mm/am/a;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/a/ri;

    .line 50
    iget-object v1, v0, Lcom/tencent/mm/protocal/a/ri;->fTy:Lcom/tencent/mm/protocal/a/rd;

    iget-object v1, v1, Lcom/tencent/mm/protocal/a/rd;->fTz:Ljava/util/LinkedList;

    if-eqz v1, :cond_0

    .line 51
    const-string v1, "MicroMsg.NetSceneRcptInfoRemove"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "resp.rImpl.rcptinfolist.rcptinfolist "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/tencent/mm/protocal/a/ri;->fTy:Lcom/tencent/mm/protocal/a/rd;

    iget-object v3, v3, Lcom/tencent/mm/protocal/a/rd;->fTz:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-static {}, Lcom/tencent/mm/plugin/wallet/c/c;->anX()Lcom/tencent/mm/plugin/wallet/c/c;

    invoke-static {}, Lcom/tencent/mm/plugin/wallet/c/c;->anY()Lcom/tencent/mm/plugin/wallet/address/model/i;

    move-result-object v1

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/ri;->fTy:Lcom/tencent/mm/protocal/a/rd;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/rd;->fTz:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/plugin/wallet/address/model/i;->O(Ljava/util/LinkedList;)Z

    .line 53
    invoke-static {}, Lcom/tencent/mm/plugin/wallet/c/c;->anX()Lcom/tencent/mm/plugin/wallet/c/c;

    invoke-static {}, Lcom/tencent/mm/plugin/wallet/c/c;->anY()Lcom/tencent/mm/plugin/wallet/address/model/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/wallet/address/model/i;->amY()V

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/address/model/c;->cjh:Lcom/tencent/mm/n/m;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/n/m;->a(IILjava/lang/String;Lcom/tencent/mm/n/x;)V

    .line 57
    return-void
.end method

.method public final amW()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/tencent/mm/plugin/wallet/address/model/c;->eVX:I

    return v0
.end method

.method public final getType()I
    .locals 1

    .prologue
    .line 61
    const/16 v0, 0x1a0

    return v0
.end method
