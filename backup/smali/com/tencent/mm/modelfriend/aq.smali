.class final Lcom/tencent/mm/modelfriend/aq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/sdk/platformtools/ar;


# instance fields
.field final synthetic crp:Lcom/tencent/mm/protocal/a/mz;

.field final synthetic crq:Lcom/tencent/mm/modelfriend/ap;


# direct methods
.method constructor <init>(Lcom/tencent/mm/modelfriend/ap;Lcom/tencent/mm/protocal/a/mz;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/tencent/mm/modelfriend/aq;->crq:Lcom/tencent/mm/modelfriend/ap;

    iput-object p2, p0, Lcom/tencent/mm/modelfriend/aq;->crp:Lcom/tencent/mm/protocal/a/mz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ve()Z
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x1

    .line 112
    iget-object v0, p0, Lcom/tencent/mm/modelfriend/aq;->crp:Lcom/tencent/mm/protocal/a/mz;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/modelfriend/aq;->crp:Lcom/tencent/mm/protocal/a/mz;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/mz;->fNQ:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 115
    iget-object v0, p0, Lcom/tencent/mm/modelfriend/aq;->crp:Lcom/tencent/mm/protocal/a/mz;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/mz;->fNQ:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/a/mx;

    .line 116
    iget v2, v0, Lcom/tencent/mm/protocal/a/mx;->fzr:I

    if-ne v2, v7, :cond_0

    .line 117
    new-instance v2, Lcom/tencent/mm/m/x;

    invoke-direct {v2}, Lcom/tencent/mm/m/x;-><init>()V

    .line 118
    iget-object v3, v0, Lcom/tencent/mm/protocal/a/mx;->eBo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/tencent/mm/m/x;->setUsername(Ljava/lang/String;)V

    .line 119
    iget-object v3, v0, Lcom/tencent/mm/protocal/a/mx;->fDg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/tencent/mm/m/x;->eo(Ljava/lang/String;)V

    .line 120
    iget-object v0, v0, Lcom/tencent/mm/protocal/a/mx;->fDh:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/tencent/mm/m/x;->ep(Ljava/lang/String;)V

    .line 121
    const/4 v0, -0x1

    invoke-virtual {v2, v0}, Lcom/tencent/mm/m/x;->cL(I)V

    .line 122
    const-string v0, "MicroMsg.NetSceneListMFriend"

    const-string v3, "getmlist  %s b[%s] s[%s]"

    new-array v4, v8, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v2}, Lcom/tencent/mm/m/x;->getUsername()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2}, Lcom/tencent/mm/m/x;->vV()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x2

    invoke-virtual {v2}, Lcom/tencent/mm/m/x;->vW()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v0, v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    invoke-virtual {v2, v8}, Lcom/tencent/mm/m/x;->bU(I)V

    .line 124
    invoke-virtual {v2, v7}, Lcom/tencent/mm/m/x;->Q(Z)V

    .line 125
    invoke-static {}, Lcom/tencent/mm/m/af;->wm()Lcom/tencent/mm/m/y;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/tencent/mm/m/y;->a(Lcom/tencent/mm/m/x;)Z

    goto :goto_0

    .line 130
    :cond_1
    return v7
.end method

.method public final vf()Z
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x0

    return v0
.end method
