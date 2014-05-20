.class public final Lcom/tencent/mm/plugin/scanner/a/f;
.super Lcom/tencent/mm/n/x;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/network/ab;


# instance fields
.field private cjh:Lcom/tencent/mm/n/m;

.field private ckU:I

.field private cke:Lcom/tencent/mm/n/a;

.field private eaX:[B

.field private eaY:I

.field private ebb:I

.field private offset:I


# direct methods
.method public constructor <init>([BII)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 33
    invoke-direct {p0}, Lcom/tencent/mm/n/x;-><init>()V

    .line 30
    iput v0, p0, Lcom/tencent/mm/plugin/scanner/a/f;->eaY:I

    .line 34
    iput-object p1, p0, Lcom/tencent/mm/plugin/scanner/a/f;->eaX:[B

    .line 35
    iput v0, p0, Lcom/tencent/mm/plugin/scanner/a/f;->eaY:I

    .line 36
    iput p2, p0, Lcom/tencent/mm/plugin/scanner/a/f;->ckU:I

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mm/plugin/scanner/a/f;->offset:I

    .line 38
    iput p3, p0, Lcom/tencent/mm/plugin/scanner/a/f;->ebb:I

    .line 39
    return-void
.end method


# virtual methods
.method public final ZF()Lcom/tencent/mm/protocal/a/se;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/a/f;->cke:Lcom/tencent/mm/n/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/a/f;->cke:Lcom/tencent/mm/n/a;

    invoke-virtual {v0}, Lcom/tencent/mm/n/a;->ws()Lcom/tencent/mm/am/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/a/f;->cke:Lcom/tencent/mm/n/a;

    invoke-virtual {v0}, Lcom/tencent/mm/n/a;->ws()Lcom/tencent/mm/am/a;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/a/se;

    .line 94
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/tencent/mm/network/r;Lcom/tencent/mm/n/m;)I
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 43
    iput-object p2, p0, Lcom/tencent/mm/plugin/scanner/a/f;->cjh:Lcom/tencent/mm/n/m;

    .line 45
    new-instance v0, Lcom/tencent/mm/n/b;

    invoke-direct {v0}, Lcom/tencent/mm/n/b;-><init>()V

    .line 46
    new-instance v1, Lcom/tencent/mm/protocal/a/sd;

    invoke-direct {v1}, Lcom/tencent/mm/protocal/a/sd;-><init>()V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/b;->a(Lcom/tencent/mm/am/a;)V

    .line 47
    new-instance v1, Lcom/tencent/mm/protocal/a/se;

    invoke-direct {v1}, Lcom/tencent/mm/protocal/a/se;-><init>()V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/b;->b(Lcom/tencent/mm/am/a;)V

    .line 48
    const-string v1, "/cgi-bin/micromsg-bin/scanimage"

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/b;->es(Ljava/lang/String;)V

    .line 49
    const/16 v1, 0x189

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/b;->cN(I)V

    .line 50
    invoke-virtual {v0, v3}, Lcom/tencent/mm/n/b;->cO(I)V

    .line 51
    invoke-virtual {v0, v3}, Lcom/tencent/mm/n/b;->cP(I)V

    .line 53
    invoke-virtual {v0}, Lcom/tencent/mm/n/b;->wx()Lcom/tencent/mm/n/a;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/scanner/a/f;->cke:Lcom/tencent/mm/n/a;

    .line 54
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/a/f;->cke:Lcom/tencent/mm/n/a;

    invoke-virtual {v0}, Lcom/tencent/mm/n/a;->wr()Lcom/tencent/mm/am/a;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/a/sd;

    .line 56
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/cj;->FD()J

    move-result-wide v1

    long-to-int v1, v1

    const v2, 0x7fffffff

    and-int/2addr v1, v2

    iput v1, v0, Lcom/tencent/mm/protocal/a/sd;->fRz:I

    .line 57
    new-instance v1, Lcom/tencent/mm/protocal/a/rv;

    invoke-direct {v1}, Lcom/tencent/mm/protocal/a/rv;-><init>()V

    iget-object v2, p0, Lcom/tencent/mm/plugin/scanner/a/f;->eaX:[B

    invoke-virtual {v1, v2}, Lcom/tencent/mm/protocal/a/rv;->bM([B)Lcom/tencent/mm/protocal/a/rv;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/protocal/a/sd;->fRA:Lcom/tencent/mm/protocal/a/rv;

    .line 58
    iget v1, p0, Lcom/tencent/mm/plugin/scanner/a/f;->ckU:I

    iput v1, v0, Lcom/tencent/mm/protocal/a/sd;->fLI:I

    .line 59
    iget v1, p0, Lcom/tencent/mm/plugin/scanner/a/f;->offset:I

    iput v1, v0, Lcom/tencent/mm/protocal/a/sd;->fAE:I

    .line 60
    iget v1, p0, Lcom/tencent/mm/plugin/scanner/a/f;->offset:I

    iget-object v2, p0, Lcom/tencent/mm/plugin/scanner/a/f;->eaX:[B

    array-length v2, v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/tencent/mm/plugin/scanner/a/f;->ckU:I

    if-ge v1, v2, :cond_0

    .line 61
    iput v3, v0, Lcom/tencent/mm/protocal/a/sd;->fAK:I

    .line 65
    :goto_0
    iget v1, p0, Lcom/tencent/mm/plugin/scanner/a/f;->eaY:I

    iput v1, v0, Lcom/tencent/mm/protocal/a/sd;->fRB:I

    .line 66
    iget v1, p0, Lcom/tencent/mm/plugin/scanner/a/f;->ebb:I

    iput v1, v0, Lcom/tencent/mm/protocal/a/sd;->fRE:I

    .line 67
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/a/f;->cke:Lcom/tencent/mm/n/a;

    invoke-virtual {p0, p1, v0, p0}, Lcom/tencent/mm/plugin/scanner/a/f;->a(Lcom/tencent/mm/network/r;Lcom/tencent/mm/network/aj;Lcom/tencent/mm/network/ab;)I

    move-result v0

    return v0

    .line 63
    :cond_0
    const/4 v1, 0x1

    iput v1, v0, Lcom/tencent/mm/protocal/a/sd;->fAK:I

    goto :goto_0
.end method

.method protected final a(Lcom/tencent/mm/network/aj;)Lcom/tencent/mm/n/aa;
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 72
    check-cast p1, Lcom/tencent/mm/n/a;

    invoke-virtual {p1}, Lcom/tencent/mm/n/a;->wr()Lcom/tencent/mm/am/a;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/a/sd;

    .line 74
    iget v1, v0, Lcom/tencent/mm/protocal/a/sd;->fRz:I

    if-lez v1, :cond_0

    iget v1, v0, Lcom/tencent/mm/protocal/a/sd;->fRB:I

    if-ltz v1, :cond_0

    iget-object v1, v0, Lcom/tencent/mm/protocal/a/sd;->fRA:Lcom/tencent/mm/protocal/a/rv;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/tencent/mm/protocal/a/sd;->fRA:Lcom/tencent/mm/protocal/a/rv;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/rv;->ayg()I

    move-result v1

    if-lez v1, :cond_0

    iget v1, v0, Lcom/tencent/mm/protocal/a/sd;->fLI:I

    if-lez v1, :cond_0

    iget v1, v0, Lcom/tencent/mm/protocal/a/sd;->fAE:I

    if-ltz v1, :cond_0

    iget v1, v0, Lcom/tencent/mm/protocal/a/sd;->fAE:I

    iget-object v2, v0, Lcom/tencent/mm/protocal/a/sd;->fRA:Lcom/tencent/mm/protocal/a/rv;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/a/rv;->ayg()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, v0, Lcom/tencent/mm/protocal/a/sd;->fLI:I

    if-le v1, v2, :cond_2

    .line 81
    :cond_0
    const-string v1, "MicroMsg.scanner.NetSceneScanImage"

    const-string v2, "ERR: Security Check Failed, imageType = %s, totalLen = %s, offset = %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, v0, Lcom/tencent/mm/protocal/a/sd;->fRB:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    iget v4, v0, Lcom/tencent/mm/protocal/a/sd;->fLI:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    const/4 v4, 0x2

    iget v5, v0, Lcom/tencent/mm/protocal/a/sd;->fAE:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    iget-object v1, v0, Lcom/tencent/mm/protocal/a/sd;->fRA:Lcom/tencent/mm/protocal/a/rv;

    if-eqz v1, :cond_1

    .line 83
    const-string v1, "MicroMsg.scanner.NetSceneScanImage"

    const-string v2, "buffer length = %s"

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/sd;->fRA:Lcom/tencent/mm/protocal/a/rv;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/a/rv;->ayg()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-static {v1, v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    :cond_1
    sget-object v0, Lcom/tencent/mm/n/aa;->cmi:Lcom/tencent/mm/n/aa;

    .line 87
    :goto_0
    return-object v0

    :cond_2
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
    .line 99
    const-string v0, "MicroMsg.scanner.NetSceneScanImage"

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

    .line 101
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/a/f;->cjh:Lcom/tencent/mm/n/m;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/n/m;->a(IILjava/lang/String;Lcom/tencent/mm/n/x;)V

    .line 102
    return-void
.end method

.method public final getType()I
    .locals 1

    .prologue
    .line 107
    const/16 v0, 0x189

    return v0
.end method
