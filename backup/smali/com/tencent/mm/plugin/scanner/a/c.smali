.class public final Lcom/tencent/mm/plugin/scanner/a/c;
.super Lcom/tencent/mm/n/x;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/network/ab;


# instance fields
.field private bLN:I

.field private bPE:Ljava/lang/String;

.field private cjh:Lcom/tencent/mm/n/m;

.field private cke:Lcom/tencent/mm/n/a;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/tencent/mm/n/x;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/tencent/mm/plugin/scanner/a/c;->bPE:Ljava/lang/String;

    .line 29
    iput p2, p0, Lcom/tencent/mm/plugin/scanner/a/c;->bLN:I

    .line 30
    return-void
.end method


# virtual methods
.method public final ZC()Lcom/tencent/mm/protocal/a/jz;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/a/c;->cke:Lcom/tencent/mm/n/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/a/c;->cke:Lcom/tencent/mm/n/a;

    invoke-virtual {v0}, Lcom/tencent/mm/n/a;->ws()Lcom/tencent/mm/am/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/a/c;->cke:Lcom/tencent/mm/n/a;

    invoke-virtual {v0}, Lcom/tencent/mm/n/a;->ws()Lcom/tencent/mm/am/a;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/a/jz;

    .line 68
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/tencent/mm/network/r;Lcom/tencent/mm/n/m;)I
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 34
    iput-object p2, p0, Lcom/tencent/mm/plugin/scanner/a/c;->cjh:Lcom/tencent/mm/n/m;

    .line 35
    new-instance v0, Lcom/tencent/mm/n/b;

    invoke-direct {v0}, Lcom/tencent/mm/n/b;-><init>()V

    .line 36
    new-instance v1, Lcom/tencent/mm/protocal/a/jy;

    invoke-direct {v1}, Lcom/tencent/mm/protocal/a/jy;-><init>()V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/b;->a(Lcom/tencent/mm/am/a;)V

    .line 37
    new-instance v1, Lcom/tencent/mm/protocal/a/jz;

    invoke-direct {v1}, Lcom/tencent/mm/protocal/a/jz;-><init>()V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/b;->b(Lcom/tencent/mm/am/a;)V

    .line 38
    const-string v1, "/cgi-bin/micromsg-bin/getproductinfo"

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/b;->es(Ljava/lang/String;)V

    .line 39
    const/16 v1, 0x1b3

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/b;->cN(I)V

    .line 40
    invoke-virtual {v0, v2}, Lcom/tencent/mm/n/b;->cO(I)V

    .line 41
    invoke-virtual {v0, v2}, Lcom/tencent/mm/n/b;->cP(I)V

    .line 43
    invoke-virtual {v0}, Lcom/tencent/mm/n/b;->wx()Lcom/tencent/mm/n/a;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/scanner/a/c;->cke:Lcom/tencent/mm/n/a;

    .line 45
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/a/c;->cke:Lcom/tencent/mm/n/a;

    invoke-virtual {v0}, Lcom/tencent/mm/n/a;->wr()Lcom/tencent/mm/am/a;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/a/jy;

    .line 46
    iget-object v1, p0, Lcom/tencent/mm/plugin/scanner/a/c;->bPE:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/mm/protocal/a/jy;->fFB:Ljava/lang/String;

    .line 47
    iget v1, p0, Lcom/tencent/mm/plugin/scanner/a/c;->bLN:I

    iput v1, v0, Lcom/tencent/mm/protocal/a/jy;->fyJ:I

    .line 48
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/a/c;->cke:Lcom/tencent/mm/n/a;

    invoke-virtual {p0, p1, v0, p0}, Lcom/tencent/mm/plugin/scanner/a/c;->a(Lcom/tencent/mm/network/r;Lcom/tencent/mm/network/aj;Lcom/tencent/mm/network/ab;)I

    move-result v0

    return v0
.end method

.method protected final a(Lcom/tencent/mm/network/aj;)Lcom/tencent/mm/n/aa;
    .locals 5
    .parameter

    .prologue
    .line 53
    check-cast p1, Lcom/tencent/mm/n/a;

    invoke-virtual {p1}, Lcom/tencent/mm/n/a;->wr()Lcom/tencent/mm/am/a;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/a/jy;

    .line 55
    iget v1, v0, Lcom/tencent/mm/protocal/a/jy;->fyJ:I

    if-ltz v1, :cond_0

    iget-object v1, v0, Lcom/tencent/mm/protocal/a/jy;->fFB:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/tencent/mm/protocal/a/jy;->fFB:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 57
    :cond_0
    const-string v1, "MicroMsg.scanner.NetSceneGetProductInfo"

    const-string v2, "ERR: Security Check Failed, Scene = %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v0, v0, Lcom/tencent/mm/protocal/a/jy;->fyJ:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    sget-object v0, Lcom/tencent/mm/n/aa;->cmi:Lcom/tencent/mm/n/aa;

    .line 60
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/tencent/mm/n/aa;->cmh:Lcom/tencent/mm/n/aa;

    goto :goto_0
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
    .line 73
    const-string v0, "MicroMsg.scanner.NetSceneGetProductInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onGYNetEnd errtype:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " errcode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " errMsg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/a/c;->cjh:Lcom/tencent/mm/n/m;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/n/m;->a(IILjava/lang/String;Lcom/tencent/mm/n/x;)V

    .line 76
    return-void
.end method

.method public final getType()I
    .locals 1

    .prologue
    .line 81
    const/16 v0, 0x1b3

    return v0
.end method
