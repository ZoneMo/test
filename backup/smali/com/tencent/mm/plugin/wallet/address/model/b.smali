.class public final Lcom/tencent/mm/plugin/wallet/address/model/b;
.super Lcom/tencent/mm/n/x;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/network/ab;


# instance fields
.field private cjh:Lcom/tencent/mm/n/m;

.field private cke:Lcom/tencent/mm/n/a;

.field public crH:Ljava/lang/String;

.field public eVW:Z

.field public username:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/tencent/mm/n/x;-><init>()V

    .line 28
    new-instance v0, Lcom/tencent/mm/n/b;

    invoke-direct {v0}, Lcom/tencent/mm/n/b;-><init>()V

    .line 29
    new-instance v1, Lcom/tencent/mm/protocal/a/rf;

    invoke-direct {v1}, Lcom/tencent/mm/protocal/a/rf;-><init>()V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/b;->a(Lcom/tencent/mm/am/a;)V

    .line 30
    new-instance v1, Lcom/tencent/mm/protocal/a/rg;

    invoke-direct {v1}, Lcom/tencent/mm/protocal/a/rg;-><init>()V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/b;->b(Lcom/tencent/mm/am/a;)V

    .line 31
    const-string v1, "/cgi-bin/micromsg-bin/rcptinfoquery"

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/b;->es(Ljava/lang/String;)V

    .line 32
    const/16 v1, 0x1a1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/b;->cN(I)V

    .line 33
    const/16 v1, 0xca

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/b;->cO(I)V

    .line 34
    const v1, 0x3b9acaca

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/b;->cP(I)V

    .line 36
    invoke-virtual {v0}, Lcom/tencent/mm/n/b;->wx()Lcom/tencent/mm/n/a;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/address/model/b;->cke:Lcom/tencent/mm/n/a;

    .line 37
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/address/model/b;->cke:Lcom/tencent/mm/n/a;

    invoke-virtual {v0}, Lcom/tencent/mm/n/a;->wr()Lcom/tencent/mm/am/a;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/a/rf;

    .line 38
    const/4 v1, 0x0

    iput v1, v0, Lcom/tencent/mm/protocal/a/rf;->timestamp:I

    .line 39
    iput-object p1, v0, Lcom/tencent/mm/protocal/a/rf;->fTJ:Ljava/lang/String;

    .line 40
    iput-object p2, v0, Lcom/tencent/mm/protocal/a/rf;->bNG:Ljava/lang/String;

    .line 41
    iput p3, v0, Lcom/tencent/mm/protocal/a/rf;->bLN:I

    .line 42
    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/network/r;Lcom/tencent/mm/n/m;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 69
    iput-object p2, p0, Lcom/tencent/mm/plugin/wallet/address/model/b;->cjh:Lcom/tencent/mm/n/m;

    .line 70
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/address/model/b;->cke:Lcom/tencent/mm/n/a;

    invoke-virtual {p0, p1, v0, p0}, Lcom/tencent/mm/plugin/wallet/address/model/b;->a(Lcom/tencent/mm/network/r;Lcom/tencent/mm/network/aj;Lcom/tencent/mm/network/ab;)I

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
    const/4 v1, 0x1

    .line 46
    const-string v0, "MicroMsg.NetSceneRcptInfoQuery"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "errType:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",errCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",errMsg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    if-nez p2, :cond_0

    if-nez p3, :cond_0

    .line 48
    check-cast p5, Lcom/tencent/mm/n/a;

    invoke-virtual {p5}, Lcom/tencent/mm/n/a;->ws()Lcom/tencent/mm/am/a;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/a/rg;

    .line 49
    iget-object v2, v0, Lcom/tencent/mm/protocal/a/rg;->fTL:Ljava/lang/String;

    iput-object v2, p0, Lcom/tencent/mm/plugin/wallet/address/model/b;->username:Ljava/lang/String;

    .line 50
    iget-object v2, v0, Lcom/tencent/mm/protocal/a/rg;->fTN:Ljava/lang/String;

    iput-object v2, p0, Lcom/tencent/mm/plugin/wallet/address/model/b;->crH:Ljava/lang/String;

    .line 51
    iget v2, v0, Lcom/tencent/mm/protocal/a/rg;->fTM:I

    if-ne v2, v1, :cond_1

    :goto_0
    iput-boolean v1, p0, Lcom/tencent/mm/plugin/wallet/address/model/b;->eVW:Z

    .line 53
    iget-object v1, v0, Lcom/tencent/mm/protocal/a/rg;->fTy:Lcom/tencent/mm/protocal/a/rd;

    iget-object v1, v1, Lcom/tencent/mm/protocal/a/rd;->fTz:Ljava/util/LinkedList;

    if-eqz v1, :cond_0

    .line 54
    const-string v1, "MicroMsg.NetSceneRcptInfoQuery"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "resp.rImpl.rcptinfolist.rcptinfolist "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/tencent/mm/protocal/a/rg;->fTy:Lcom/tencent/mm/protocal/a/rd;

    iget-object v3, v3, Lcom/tencent/mm/protocal/a/rd;->fTz:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-static {}, Lcom/tencent/mm/plugin/wallet/c/c;->anX()Lcom/tencent/mm/plugin/wallet/c/c;

    invoke-static {}, Lcom/tencent/mm/plugin/wallet/c/c;->anY()Lcom/tencent/mm/plugin/wallet/address/model/i;

    move-result-object v1

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/rg;->fTy:Lcom/tencent/mm/protocal/a/rd;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/rd;->fTz:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/plugin/wallet/address/model/i;->O(Ljava/util/LinkedList;)Z

    .line 56
    invoke-static {}, Lcom/tencent/mm/plugin/wallet/c/c;->anX()Lcom/tencent/mm/plugin/wallet/c/c;

    invoke-static {}, Lcom/tencent/mm/plugin/wallet/c/c;->anY()Lcom/tencent/mm/plugin/wallet/address/model/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/wallet/address/model/i;->amY()V

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/address/model/b;->cjh:Lcom/tencent/mm/n/m;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/n/m;->a(IILjava/lang/String;Lcom/tencent/mm/n/x;)V

    .line 60
    return-void

    .line 51
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final getType()I
    .locals 1

    .prologue
    .line 64
    const/16 v0, 0x1a1

    return v0
.end method
