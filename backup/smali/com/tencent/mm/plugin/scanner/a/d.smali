.class public final Lcom/tencent/mm/plugin/scanner/a/d;
.super Lcom/tencent/mm/n/x;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/network/ab;


# instance fields
.field private cjh:Lcom/tencent/mm/n/m;

.field private cke:Lcom/tencent/mm/n/a;

.field private eaX:[B

.field private eaY:I

.field private eaZ:Ljava/lang/String;

.field private eba:Ljava/lang/String;

.field private ebb:I


# direct methods
.method public constructor <init>([BLjava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 29
    invoke-direct {p0}, Lcom/tencent/mm/n/x;-><init>()V

    .line 24
    iput v1, p0, Lcom/tencent/mm/plugin/scanner/a/d;->eaY:I

    .line 25
    const-string v0, "en"

    iput-object v0, p0, Lcom/tencent/mm/plugin/scanner/a/d;->eaZ:Ljava/lang/String;

    .line 26
    const-string v0, "zh_CN"

    iput-object v0, p0, Lcom/tencent/mm/plugin/scanner/a/d;->eba:Ljava/lang/String;

    .line 30
    iput-object p1, p0, Lcom/tencent/mm/plugin/scanner/a/d;->eaX:[B

    .line 31
    iput v1, p0, Lcom/tencent/mm/plugin/scanner/a/d;->eaY:I

    .line 32
    iput-object p2, p0, Lcom/tencent/mm/plugin/scanner/a/d;->eaZ:Ljava/lang/String;

    .line 33
    iput-object p3, p0, Lcom/tencent/mm/plugin/scanner/a/d;->eba:Ljava/lang/String;

    .line 34
    iput p4, p0, Lcom/tencent/mm/plugin/scanner/a/d;->ebb:I

    .line 35
    return-void
.end method


# virtual methods
.method public final ZD()Lcom/tencent/mm/protocal/a/pg;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/a/d;->cke:Lcom/tencent/mm/n/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/a/d;->cke:Lcom/tencent/mm/n/a;

    invoke-virtual {v0}, Lcom/tencent/mm/n/a;->ws()Lcom/tencent/mm/am/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/a/d;->cke:Lcom/tencent/mm/n/a;

    invoke-virtual {v0}, Lcom/tencent/mm/n/a;->ws()Lcom/tencent/mm/am/a;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/a/pg;

    .line 82
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
    .line 39
    iput-object p2, p0, Lcom/tencent/mm/plugin/scanner/a/d;->cjh:Lcom/tencent/mm/n/m;

    .line 41
    new-instance v0, Lcom/tencent/mm/n/b;

    invoke-direct {v0}, Lcom/tencent/mm/n/b;-><init>()V

    .line 42
    new-instance v1, Lcom/tencent/mm/protocal/a/pf;

    invoke-direct {v1}, Lcom/tencent/mm/protocal/a/pf;-><init>()V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/b;->a(Lcom/tencent/mm/am/a;)V

    .line 43
    new-instance v1, Lcom/tencent/mm/protocal/a/pg;

    invoke-direct {v1}, Lcom/tencent/mm/protocal/a/pg;-><init>()V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/b;->b(Lcom/tencent/mm/am/a;)V

    .line 44
    const-string v1, "/cgi-bin/micromsg-bin/ocrtranslation"

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/b;->es(Ljava/lang/String;)V

    .line 45
    const/16 v1, 0x188

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/b;->cN(I)V

    .line 46
    const/16 v1, 0xc7

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/b;->cO(I)V

    .line 47
    const v1, 0x3b9acac7

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/b;->cP(I)V

    .line 49
    invoke-virtual {v0}, Lcom/tencent/mm/n/b;->wx()Lcom/tencent/mm/n/a;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/scanner/a/d;->cke:Lcom/tencent/mm/n/a;

    .line 50
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/a/d;->cke:Lcom/tencent/mm/n/a;

    invoke-virtual {v0}, Lcom/tencent/mm/n/a;->wr()Lcom/tencent/mm/am/a;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/a/pf;

    .line 52
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/cj;->FD()J

    move-result-wide v1

    long-to-int v1, v1

    const v2, 0x7fffffff

    and-int/2addr v1, v2

    iput v1, v0, Lcom/tencent/mm/protocal/a/pf;->fRz:I

    .line 53
    new-instance v1, Lcom/tencent/mm/protocal/a/rv;

    invoke-direct {v1}, Lcom/tencent/mm/protocal/a/rv;-><init>()V

    iget-object v2, p0, Lcom/tencent/mm/plugin/scanner/a/d;->eaX:[B

    invoke-virtual {v1, v2}, Lcom/tencent/mm/protocal/a/rv;->bM([B)Lcom/tencent/mm/protocal/a/rv;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/protocal/a/pf;->fRA:Lcom/tencent/mm/protocal/a/rv;

    .line 54
    iget v1, p0, Lcom/tencent/mm/plugin/scanner/a/d;->eaY:I

    iput v1, v0, Lcom/tencent/mm/protocal/a/pf;->fRB:I

    .line 55
    iget-object v1, p0, Lcom/tencent/mm/plugin/scanner/a/d;->eaZ:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/mm/protocal/a/pf;->fRC:Ljava/lang/String;

    .line 56
    iget-object v1, p0, Lcom/tencent/mm/plugin/scanner/a/d;->eba:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/mm/protocal/a/pf;->fRD:Ljava/lang/String;

    .line 57
    iget v1, p0, Lcom/tencent/mm/plugin/scanner/a/d;->ebb:I

    iput v1, v0, Lcom/tencent/mm/protocal/a/pf;->fRE:I

    .line 59
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/a/d;->cke:Lcom/tencent/mm/n/a;

    invoke-virtual {p0, p1, v0, p0}, Lcom/tencent/mm/plugin/scanner/a/d;->a(Lcom/tencent/mm/network/r;Lcom/tencent/mm/network/aj;Lcom/tencent/mm/network/ab;)I

    move-result v0

    return v0
.end method

.method protected final a(Lcom/tencent/mm/network/aj;)Lcom/tencent/mm/n/aa;
    .locals 2
    .parameter

    .prologue
    .line 64
    check-cast p1, Lcom/tencent/mm/n/a;

    invoke-virtual {p1}, Lcom/tencent/mm/n/a;->wr()Lcom/tencent/mm/am/a;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/a/pf;

    .line 66
    iget v1, v0, Lcom/tencent/mm/protocal/a/pf;->fRz:I

    if-lez v1, :cond_0

    iget-object v1, v0, Lcom/tencent/mm/protocal/a/pf;->fRD:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/tencent/mm/protocal/a/pf;->fRC:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, v0, Lcom/tencent/mm/protocal/a/pf;->fRB:I

    if-ltz v1, :cond_0

    iget-object v1, v0, Lcom/tencent/mm/protocal/a/pf;->fRA:Lcom/tencent/mm/protocal/a/rv;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/pf;->fRA:Lcom/tencent/mm/protocal/a/rv;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/a/rv;->ayg()I

    move-result v0

    if-gtz v0, :cond_1

    .line 72
    :cond_0
    const-string v0, "MicroMsg.scanner.NetSceneOCRTranslate"

    const-string v1, "ERR: Security Check Failed"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    sget-object v0, Lcom/tencent/mm/n/aa;->cmi:Lcom/tencent/mm/n/aa;

    .line 75
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
    .line 87
    const-string v0, "MicroMsg.scanner.NetSceneOCRTranslate"

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

    .line 89
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/a/d;->cjh:Lcom/tencent/mm/n/m;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/n/m;->a(IILjava/lang/String;Lcom/tencent/mm/n/x;)V

    .line 90
    return-void
.end method

.method public final getType()I
    .locals 1

    .prologue
    .line 95
    const/16 v0, 0x188

    return v0
.end method
