.class public final Lcom/tencent/mm/p/aa;
.super Lcom/tencent/mm/n/x;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/network/ab;


# instance fields
.field private bPx:Ljava/lang/String;

.field private cjh:Lcom/tencent/mm/n/m;

.field private cke:Lcom/tencent/mm/n/a;

.field private col:Lcom/tencent/mm/protocal/a/rv;

.field private com:Ljava/lang/String;

.field private con:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/tencent/mm/n/x;-><init>()V

    .line 28
    const-string v0, "<brandlist></brandlist>"

    iput-object v0, p0, Lcom/tencent/mm/p/aa;->com:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/p/aa;->con:Ljava/lang/String;

    .line 32
    iput-object p1, p0, Lcom/tencent/mm/p/aa;->bPx:Ljava/lang/String;

    .line 33
    new-instance v0, Lcom/tencent/mm/protocal/a/rv;

    invoke-direct {v0}, Lcom/tencent/mm/protocal/a/rv;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/p/aa;->col:Lcom/tencent/mm/protocal/a/rv;

    .line 34
    iget-object v0, p0, Lcom/tencent/mm/p/aa;->col:Lcom/tencent/mm/protocal/a/rv;

    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/a/rv;->bM([B)Lcom/tencent/mm/protocal/a/rv;

    .line 35
    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/network/r;Lcom/tencent/mm/n/m;)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 56
    iput-object p2, p0, Lcom/tencent/mm/p/aa;->cjh:Lcom/tencent/mm/n/m;

    .line 57
    new-instance v0, Lcom/tencent/mm/n/b;

    invoke-direct {v0}, Lcom/tencent/mm/n/b;-><init>()V

    .line 58
    new-instance v1, Lcom/tencent/mm/protocal/a/ia;

    invoke-direct {v1}, Lcom/tencent/mm/protocal/a/ia;-><init>()V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/b;->a(Lcom/tencent/mm/am/a;)V

    .line 59
    new-instance v1, Lcom/tencent/mm/protocal/a/ib;

    invoke-direct {v1}, Lcom/tencent/mm/protocal/a/ib;-><init>()V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/b;->b(Lcom/tencent/mm/am/a;)V

    .line 60
    const-string v1, "/cgi-bin/micromsg-bin/getbrandlist"

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/b;->es(Ljava/lang/String;)V

    .line 61
    const/16 v1, 0x16b

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/b;->cN(I)V

    .line 62
    const/16 v1, 0xad

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/b;->cO(I)V

    .line 63
    const v1, 0x3b9acaad

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/b;->cP(I)V

    .line 64
    invoke-virtual {v0}, Lcom/tencent/mm/n/b;->wx()Lcom/tencent/mm/n/a;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/p/aa;->cke:Lcom/tencent/mm/n/a;

    .line 65
    iget-object v0, p0, Lcom/tencent/mm/p/aa;->cke:Lcom/tencent/mm/n/a;

    invoke-virtual {v0}, Lcom/tencent/mm/n/a;->wr()Lcom/tencent/mm/am/a;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/a/ia;

    .line 66
    iget-object v1, p0, Lcom/tencent/mm/p/aa;->bPx:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/mm/protocal/a/ia;->eBo:Ljava/lang/String;

    .line 67
    iget-object v1, p0, Lcom/tencent/mm/p/aa;->col:Lcom/tencent/mm/protocal/a/rv;

    iput-object v1, v0, Lcom/tencent/mm/protocal/a/ia;->fKq:Lcom/tencent/mm/protocal/a/rv;

    .line 69
    iget-object v0, p0, Lcom/tencent/mm/p/aa;->cke:Lcom/tencent/mm/n/a;

    invoke-virtual {p0, p1, v0, p0}, Lcom/tencent/mm/p/aa;->a(Lcom/tencent/mm/network/r;Lcom/tencent/mm/network/aj;Lcom/tencent/mm/network/ab;)I

    move-result v0

    return v0
.end method

.method protected final a(Lcom/tencent/mm/network/aj;)Lcom/tencent/mm/n/aa;
    .locals 1
    .parameter

    .prologue
    .line 113
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
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 75
    if-nez p2, :cond_0

    if-eqz p3, :cond_2

    .line 76
    :cond_0
    const-string v0, "MicroMsg.NetSceneGetBrandList"

    const-string v1, "GetBrandList Error. %s"

    new-array v2, v7, [Ljava/lang/Object;

    aput-object p4, v2, v6

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    iget-object v0, p0, Lcom/tencent/mm/p/aa;->cjh:Lcom/tencent/mm/n/m;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/n/m;->a(IILjava/lang/String;Lcom/tencent/mm/n/x;)V

    .line 103
    :cond_1
    :goto_0
    return-void

    .line 81
    :cond_2
    check-cast p5, Lcom/tencent/mm/n/a;

    invoke-virtual {p5}, Lcom/tencent/mm/n/a;->ws()Lcom/tencent/mm/am/a;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/a/ib;

    .line 83
    iget-object v1, v0, Lcom/tencent/mm/protocal/a/ib;->fKr:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/mm/sdk/platformtools/cj;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "<brandlist"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/tencent/mm/p/aa;->com:Ljava/lang/String;

    const-string v4, "</brandlist>"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<brandlist.*?>"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/mm/p/aa;->com:Ljava/lang/String;

    .line 84
    :cond_3
    iget-object v1, v0, Lcom/tencent/mm/protocal/a/ib;->fKr:Ljava/lang/String;

    const-string v2, "brandlist"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/u;->aL(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 85
    if-eqz v1, :cond_4

    .line 86
    const-string v2, ".brandlist.$ver"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/mm/p/aa;->con:Ljava/lang/String;

    .line 91
    :goto_1
    iget-object v1, v0, Lcom/tencent/mm/protocal/a/ib;->fKq:Lcom/tencent/mm/protocal/a/rv;

    iput-object v1, p0, Lcom/tencent/mm/p/aa;->col:Lcom/tencent/mm/protocal/a/rv;

    .line 93
    const-string v1, "MicroMsg.NetSceneGetBrandList"

    const-string v2, "onNetEnd, version:%s, left:%d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/tencent/mm/p/aa;->con:Ljava/lang/String;

    aput-object v4, v3, v6

    iget-object v4, v0, Lcom/tencent/mm/protocal/a/ib;->fKq:Lcom/tencent/mm/protocal/a/rv;

    invoke-virtual {v4}, Lcom/tencent/mm/protocal/a/rv;->ayg()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v1, v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    iget-object v0, v0, Lcom/tencent/mm/protocal/a/ib;->fKq:Lcom/tencent/mm/protocal/a/rv;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/a/rv;->ayg()I

    move-result v0

    if-gtz v0, :cond_5

    .line 95
    iget-object v0, p0, Lcom/tencent/mm/p/aa;->cjh:Lcom/tencent/mm/n/m;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/n/m;->a(IILjava/lang/String;Lcom/tencent/mm/n/x;)V

    goto :goto_0

    .line 89
    :cond_4
    const-string v1, ""

    iput-object v1, p0, Lcom/tencent/mm/p/aa;->con:Ljava/lang/String;

    goto :goto_1

    .line 99
    :cond_5
    invoke-virtual {p0}, Lcom/tencent/mm/p/aa;->wM()Lcom/tencent/mm/network/r;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/p/aa;->cjh:Lcom/tencent/mm/n/m;

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/p/aa;->a(Lcom/tencent/mm/network/r;Lcom/tencent/mm/n/m;)I

    move-result v0

    if-gez v0, :cond_1

    .line 100
    const-string v0, "MicroMsg.NetSceneGetBrandList"

    const-string v1, "onGYNetEnd : doScene fail"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/tencent/mm/p/aa;->cjh:Lcom/tencent/mm/n/m;

    const/4 v1, 0x3

    const/4 v2, -0x1

    const-string v3, ""

    invoke-interface {v0, v1, v2, v3, p0}, Lcom/tencent/mm/n/m;->a(IILjava/lang/String;Lcom/tencent/mm/n/x;)V

    goto/16 :goto_0
.end method

.method public final getType()I
    .locals 1

    .prologue
    .line 39
    const/16 v0, 0x16b

    return v0
.end method

.method public final getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/tencent/mm/p/aa;->bPx:Ljava/lang/String;

    return-object v0
.end method

.method protected final we()I
    .locals 1

    .prologue
    .line 107
    const/16 v0, 0x64

    return v0
.end method

.method public final yc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/tencent/mm/p/aa;->com:Ljava/lang/String;

    return-object v0
.end method
