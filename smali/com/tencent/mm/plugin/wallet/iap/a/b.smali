.class public final Lcom/tencent/mm/plugin/wallet/iap/a/b;
.super Lcom/tencent/mm/n/x;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/network/ab;


# instance fields
.field private cZs:Ljava/lang/String;

.field private cjh:Lcom/tencent/mm/n/m;

.field private final cke:Lcom/tencent/mm/n/a;


# direct methods
.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/tencent/mm/n/x;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/iap/a/b;->cZs:Ljava/lang/String;

    .line 35
    new-instance v0, Lcom/tencent/mm/n/b;

    invoke-direct {v0}, Lcom/tencent/mm/n/b;-><init>()V

    .line 36
    new-instance v1, Lcom/tencent/mm/protocal/a/zb;

    invoke-direct {v1}, Lcom/tencent/mm/protocal/a/zb;-><init>()V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/b;->a(Lcom/tencent/mm/am/a;)V

    .line 37
    new-instance v1, Lcom/tencent/mm/protocal/a/zc;

    invoke-direct {v1}, Lcom/tencent/mm/protocal/a/zc;-><init>()V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/b;->b(Lcom/tencent/mm/am/a;)V

    .line 38
    const-string v1, "/cgi-bin/micromsg-bin/verifypurchase"

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/b;->es(Ljava/lang/String;)V

    .line 39
    const/16 v1, 0x19e

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/b;->cN(I)V

    .line 40
    const/16 v1, 0xd7

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/b;->cO(I)V

    .line 41
    const v1, 0x3b9acad7

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/b;->cP(I)V

    .line 43
    invoke-virtual {v0}, Lcom/tencent/mm/n/b;->wx()Lcom/tencent/mm/n/a;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/iap/a/b;->cke:Lcom/tencent/mm/n/a;

    .line 44
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/iap/a/b;->cke:Lcom/tencent/mm/n/a;

    invoke-virtual {v0}, Lcom/tencent/mm/n/a;->wr()Lcom/tencent/mm/am/a;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/a/zb;

    .line 45
    iput-object p1, p0, Lcom/tencent/mm/plugin/wallet/iap/a/b;->cZs:Ljava/lang/String;

    iput-object p1, v0, Lcom/tencent/mm/protocal/a/zb;->fFB:Ljava/lang/String;

    .line 46
    const/4 v1, 0x1

    iput v1, v0, Lcom/tencent/mm/protocal/a/zb;->fZp:I

    .line 47
    iput p3, v0, Lcom/tencent/mm/protocal/a/zb;->fSL:I

    .line 48
    iput p2, v0, Lcom/tencent/mm/protocal/a/zb;->fSi:I

    .line 49
    invoke-static {p8}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 50
    iput-object p8, v0, Lcom/tencent/mm/protocal/a/zb;->fSJ:Ljava/lang/String;

    .line 51
    iput-object p7, v0, Lcom/tencent/mm/protocal/a/zb;->fSK:Ljava/lang/String;

    .line 53
    :cond_0
    iput-object p4, v0, Lcom/tencent/mm/protocal/a/zb;->fSM:Ljava/lang/String;

    .line 54
    iput-object p6, v0, Lcom/tencent/mm/protocal/a/zb;->fZr:Ljava/lang/String;

    .line 55
    if-eqz p5, :cond_1

    .line 56
    invoke-virtual {p5}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 57
    new-instance v2, Lcom/tencent/mm/protocal/a/rv;

    invoke-direct {v2}, Lcom/tencent/mm/protocal/a/rv;-><init>()V

    invoke-virtual {v2, v1}, Lcom/tencent/mm/protocal/a/rv;->bM([B)Lcom/tencent/mm/protocal/a/rv;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/protocal/a/zb;->fZo:Lcom/tencent/mm/protocal/a/rv;

    .line 61
    :goto_0
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/cj;->FC()J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, v0, Lcom/tencent/mm/protocal/a/zb;->fZq:I

    .line 62
    const-string v0, "MicroMsg.NetSceneVerifyPurchase"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "productId:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/mm/plugin/wallet/iap/a/b;->cZs:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",verifyType:1,palyType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",payload:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",purchaseData:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",dataSignature:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    return-void

    .line 59
    :cond_1
    new-instance v1, Lcom/tencent/mm/protocal/a/rv;

    invoke-direct {v1}, Lcom/tencent/mm/protocal/a/rv;-><init>()V

    iput-object v1, v0, Lcom/tencent/mm/protocal/a/zb;->fZo:Lcom/tencent/mm/protocal/a/rv;

    goto :goto_0
.end method


# virtual methods
.method public final Lg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/iap/a/b;->cZs:Ljava/lang/String;

    return-object v0
.end method

.method public final Li()Ljava/lang/String;
    .locals 4

    .prologue
    .line 80
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/iap/a/b;->cke:Lcom/tencent/mm/n/a;

    invoke-virtual {v0}, Lcom/tencent/mm/n/a;->ws()Lcom/tencent/mm/am/a;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/a/zc;

    .line 82
    if-eqz v0, :cond_0

    .line 83
    const-string v1, "MicroMsg.NetSceneVerifyPurchase"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " Get Series ID is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/tencent/mm/protocal/a/zc;->fGj:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string v1, "MicroMsg.NetSceneVerifyPurchase"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " Get Biz Type is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Lcom/tencent/mm/protocal/a/zc;->fZs:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object v0, v0, Lcom/tencent/mm/protocal/a/zc;->fGj:Ljava/lang/String;

    .line 87
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public final a(Lcom/tencent/mm/network/r;Lcom/tencent/mm/n/m;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 97
    iput-object p2, p0, Lcom/tencent/mm/plugin/wallet/iap/a/b;->cjh:Lcom/tencent/mm/n/m;

    .line 98
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/iap/a/b;->cke:Lcom/tencent/mm/n/a;

    invoke-virtual {p0, p1, v0, p0}, Lcom/tencent/mm/plugin/wallet/iap/a/b;->a(Lcom/tencent/mm/network/r;Lcom/tencent/mm/network/aj;Lcom/tencent/mm/network/ab;)I

    move-result v0

    return v0
.end method

.method public final a(IIILjava/lang/String;Lcom/tencent/mm/network/aj;[B)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 67
    const-string v0, "MicroMsg.NetSceneVerifyPurchase"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ErrType:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   errCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    if-nez p2, :cond_0

    if-eqz p3, :cond_1

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/iap/a/b;->cjh:Lcom/tencent/mm/n/m;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/n/m;->a(IILjava/lang/String;Lcom/tencent/mm/n/x;)V

    .line 73
    :goto_0
    return-void

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/iap/a/b;->cjh:Lcom/tencent/mm/n/m;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/n/m;->a(IILjava/lang/String;Lcom/tencent/mm/n/x;)V

    goto :goto_0
.end method

.method public final getType()I
    .locals 1

    .prologue
    .line 92
    const/16 v0, 0x19e

    return v0
.end method
