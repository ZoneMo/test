.class public final Lcom/tencent/mm/ui/account/fj;
.super Lcom/tencent/mm/n/x;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/network/ab;


# instance fields
.field private cjh:Lcom/tencent/mm/n/m;

.field private cmF:Lcom/tencent/mm/network/aj;

.field private crh:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/tencent/mm/n/x;-><init>()V

    .line 37
    const/4 v0, 0x2

    iput v0, p0, Lcom/tencent/mm/ui/account/fj;->crh:I

    .line 41
    new-instance v0, Lcom/tencent/mm/ui/account/fk;

    invoke-direct {v0}, Lcom/tencent/mm/ui/account/fk;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/account/fj;->cmF:Lcom/tencent/mm/network/aj;

    .line 42
    iget-object v0, p0, Lcom/tencent/mm/ui/account/fj;->cmF:Lcom/tencent/mm/network/aj;

    invoke-interface {v0}, Lcom/tencent/mm/network/aj;->wJ()Lcom/tencent/mm/protocal/p;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/ag;

    .line 43
    iget-object v0, v0, Lcom/tencent/mm/protocal/ag;->fyl:Lcom/tencent/mm/protocal/a/kk;

    invoke-static {}, Lcom/tencent/mm/model/be;->uv()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/protocal/a/kk;->fBI:Ljava/lang/String;

    .line 44
    return-void
.end method

.method private aFS()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 90
    iget-object v0, p0, Lcom/tencent/mm/ui/account/fj;->cmF:Lcom/tencent/mm/network/aj;

    invoke-interface {v0}, Lcom/tencent/mm/network/aj;->wv()Lcom/tencent/mm/protocal/q;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/ah;

    iget-object v0, v0, Lcom/tencent/mm/protocal/ah;->fym:Lcom/tencent/mm/protocal/a/kl;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/kl;->fMf:Lcom/tencent/mm/protocal/a/uf;

    .line 92
    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/tencent/mm/protocal/a/uf;->fVa:Ljava/util/LinkedList;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/tencent/mm/protocal/a/uf;->fVa:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 93
    iget-object v0, v0, Lcom/tencent/mm/protocal/a/uf;->fVa:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/a/wb;

    .line 94
    iget v3, v0, Lcom/tencent/mm/protocal/a/wb;->fAs:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 95
    iget-object v0, v0, Lcom/tencent/mm/protocal/a/wb;->fXv:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/cj;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 100
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private aFT()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 104
    iget-object v0, p0, Lcom/tencent/mm/ui/account/fj;->cmF:Lcom/tencent/mm/network/aj;

    invoke-interface {v0}, Lcom/tencent/mm/network/aj;->wv()Lcom/tencent/mm/protocal/q;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/ah;

    iget-object v0, v0, Lcom/tencent/mm/protocal/ah;->fym:Lcom/tencent/mm/protocal/a/kl;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/kl;->fMf:Lcom/tencent/mm/protocal/a/uf;

    .line 106
    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/tencent/mm/protocal/a/uf;->fVa:Ljava/util/LinkedList;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/tencent/mm/protocal/a/uf;->fVa:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 107
    iget-object v0, v0, Lcom/tencent/mm/protocal/a/uf;->fVa:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/a/wb;

    .line 108
    iget v3, v0, Lcom/tencent/mm/protocal/a/wb;->fAs:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 109
    iget-object v0, v0, Lcom/tencent/mm/protocal/a/wb;->fXv:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/cj;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 114
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private aFU()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 118
    iget-object v0, p0, Lcom/tencent/mm/ui/account/fj;->cmF:Lcom/tencent/mm/network/aj;

    invoke-interface {v0}, Lcom/tencent/mm/network/aj;->wv()Lcom/tencent/mm/protocal/q;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/ah;

    iget-object v0, v0, Lcom/tencent/mm/protocal/ah;->fym:Lcom/tencent/mm/protocal/a/kl;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/kl;->fMf:Lcom/tencent/mm/protocal/a/uf;

    .line 120
    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/tencent/mm/protocal/a/uf;->fVa:Ljava/util/LinkedList;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/tencent/mm/protocal/a/uf;->fVa:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 121
    iget-object v0, v0, Lcom/tencent/mm/protocal/a/uf;->fVa:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/a/wb;

    .line 122
    iget v3, v0, Lcom/tencent/mm/protocal/a/wb;->fAs:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 123
    iget-object v0, v0, Lcom/tencent/mm/protocal/a/wb;->fXv:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/cj;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 128
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private zL()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 76
    iget-object v0, p0, Lcom/tencent/mm/ui/account/fj;->cmF:Lcom/tencent/mm/network/aj;

    invoke-interface {v0}, Lcom/tencent/mm/network/aj;->wv()Lcom/tencent/mm/protocal/q;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/ah;

    iget-object v0, v0, Lcom/tencent/mm/protocal/ah;->fym:Lcom/tencent/mm/protocal/a/kl;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/kl;->fMf:Lcom/tencent/mm/protocal/a/uf;

    .line 78
    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/tencent/mm/protocal/a/uf;->fVa:Ljava/util/LinkedList;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/tencent/mm/protocal/a/uf;->fVa:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 79
    iget-object v0, v0, Lcom/tencent/mm/protocal/a/uf;->fVa:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/a/wb;

    .line 80
    iget v3, v0, Lcom/tencent/mm/protocal/a/wb;->fAs:I

    if-nez v3, :cond_0

    .line 81
    iget-object v0, v0, Lcom/tencent/mm/protocal/a/wb;->fXv:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/cj;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 86
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/network/r;Lcom/tencent/mm/n/m;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 138
    iput-object p2, p0, Lcom/tencent/mm/ui/account/fj;->cjh:Lcom/tencent/mm/n/m;

    .line 139
    iget-object v0, p0, Lcom/tencent/mm/ui/account/fj;->cmF:Lcom/tencent/mm/network/aj;

    invoke-virtual {p0, p1, v0, p0}, Lcom/tencent/mm/ui/account/fj;->a(Lcom/tencent/mm/network/r;Lcom/tencent/mm/network/aj;Lcom/tencent/mm/network/ab;)I

    move-result v0

    return v0
.end method

.method protected final a(Lcom/tencent/mm/network/aj;)Lcom/tencent/mm/n/aa;
    .locals 1
    .parameter

    .prologue
    .line 149
    sget-object v0, Lcom/tencent/mm/n/aa;->cmh:Lcom/tencent/mm/n/aa;

    return-object v0
.end method

.method public final a(IIILjava/lang/String;Lcom/tencent/mm/network/aj;[B)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 48
    const-string v0, "MicroMsg.NetSceneGetRegStyle"

    const-string v1, "onGYNetEnd  errType:%d errCode:%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    const/4 v0, 0x4

    if-ne p2, v0, :cond_1

    const/16 v0, -0x12d

    if-ne p3, v0, :cond_1

    .line 52
    iget v0, p0, Lcom/tencent/mm/ui/account/fj;->crh:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/tencent/mm/ui/account/fj;->crh:I

    .line 53
    iget v0, p0, Lcom/tencent/mm/ui/account/fj;->crh:I

    if-gtz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/tencent/mm/ui/account/fj;->cjh:Lcom/tencent/mm/n/m;

    const/4 v1, 0x3

    const/4 v2, -0x1

    const-string v3, ""

    invoke-interface {v0, v1, v2, v3, p0}, Lcom/tencent/mm/n/m;->a(IILjava/lang/String;Lcom/tencent/mm/n/x;)V

    .line 73
    :goto_0
    return-void

    .line 58
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/mm/ui/account/fj;->wM()Lcom/tencent/mm/network/r;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/account/fj;->cjh:Lcom/tencent/mm/n/m;

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/ui/account/fj;->a(Lcom/tencent/mm/network/r;Lcom/tencent/mm/n/m;)I

    goto :goto_0

    .line 60
    :cond_1
    if-nez p2, :cond_2

    if-eqz p3, :cond_3

    .line 61
    :cond_2
    const-string v0, "MicroMsg.NetSceneGetRegStyle"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onGYNetEnd  errType:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " errCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/tencent/mm/ui/account/fj;->cjh:Lcom/tencent/mm/n/m;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/n/m;->a(IILjava/lang/String;Lcom/tencent/mm/n/x;)V

    goto :goto_0

    .line 65
    :cond_3
    if-nez p2, :cond_4

    if-nez p3, :cond_4

    .line 66
    new-instance v0, Lcom/tencent/mm/model/cn;

    invoke-direct {v0}, Lcom/tencent/mm/model/cn;-><init>()V

    invoke-direct {p0}, Lcom/tencent/mm/ui/account/fj;->zL()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/model/cn;->cC(I)Lcom/tencent/mm/model/cn;

    move-result-object v0

    invoke-direct {p0}, Lcom/tencent/mm/ui/account/fj;->aFT()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/model/cn;->cF(I)Lcom/tencent/mm/model/cn;

    move-result-object v0

    invoke-direct {p0}, Lcom/tencent/mm/ui/account/fj;->aFS()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/model/cn;->cE(I)Lcom/tencent/mm/model/cn;

    move-result-object v0

    invoke-direct {p0}, Lcom/tencent/mm/ui/account/fj;->aFU()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/model/cn;->cD(I)Lcom/tencent/mm/model/cn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/cn;->commit()Z

    .line 72
    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/ui/account/fj;->cjh:Lcom/tencent/mm/n/m;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/n/m;->a(IILjava/lang/String;Lcom/tencent/mm/n/x;)V

    goto :goto_0
.end method

.method public final getType()I
    .locals 1

    .prologue
    .line 133
    const/16 v0, 0x23c

    return v0
.end method

.method protected final we()I
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x5

    return v0
.end method
