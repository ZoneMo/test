.class final Lcom/tencent/mm/modelsimple/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/model/cd;


# instance fields
.field final synthetic cxe:Lcom/tencent/mm/modelsimple/i;

.field final synthetic cxg:Lcom/tencent/mm/protocal/l;


# direct methods
.method constructor <init>(Lcom/tencent/mm/modelsimple/i;Lcom/tencent/mm/protocal/l;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 349
    iput-object p1, p0, Lcom/tencent/mm/modelsimple/l;->cxe:Lcom/tencent/mm/modelsimple/i;

    iput-object p2, p0, Lcom/tencent/mm/modelsimple/l;->cxg:Lcom/tencent/mm/protocal/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/network/r;)V
    .locals 4
    .parameter

    .prologue
    .line 353
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/tencent/mm/network/r;->wZ()Lcom/tencent/mm/network/n;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/modelsimple/l;->cxg:Lcom/tencent/mm/protocal/l;

    iget-object v0, v0, Lcom/tencent/mm/protocal/l;->fxM:Lcom/tencent/mm/protocal/a/ou;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/ou;->fAW:Lcom/tencent/mm/am/b;

    if-nez v0, :cond_1

    .line 354
    :cond_0
    const-string v0, "MicroMsg.NetSceneAuth"

    const-string v1, "[arthurdan.NetSceneAuthCrash] fatal error null == dispatcher.getAccInfo() || null == resp.rImpl.getSessionKey() !!!"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    :goto_0
    return-void

    .line 357
    :cond_1
    invoke-interface {p1}, Lcom/tencent/mm/network/r;->wZ()Lcom/tencent/mm/network/n;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/modelsimple/l;->cxg:Lcom/tencent/mm/protocal/l;

    iget-object v1, v1, Lcom/tencent/mm/protocal/l;->fxM:Lcom/tencent/mm/protocal/a/ou;

    iget-object v1, v1, Lcom/tencent/mm/protocal/a/ou;->fAW:Lcom/tencent/mm/am/b;

    invoke-virtual {v1}, Lcom/tencent/mm/am/b;->avA()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/modelsimple/l;->cxg:Lcom/tencent/mm/protocal/l;

    iget-object v2, v2, Lcom/tencent/mm/protocal/l;->fxM:Lcom/tencent/mm/protocal/a/ou;

    iget v2, v2, Lcom/tencent/mm/protocal/a/ou;->fAX:I

    invoke-interface {v0, v1, v2}, Lcom/tencent/mm/network/n;->q(Ljava/lang/String;I)V

    .line 358
    invoke-interface {p1}, Lcom/tencent/mm/network/r;->wZ()Lcom/tencent/mm/network/n;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/modelsimple/l;->cxg:Lcom/tencent/mm/protocal/l;

    iget-object v1, v1, Lcom/tencent/mm/protocal/l;->fxM:Lcom/tencent/mm/protocal/a/ou;

    iget-object v1, v1, Lcom/tencent/mm/protocal/a/ou;->fEI:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/rw;->getString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/modelsimple/l;->cxe:Lcom/tencent/mm/modelsimple/i;

    invoke-static {v2}, Lcom/tencent/mm/modelsimple/i;->d(Lcom/tencent/mm/modelsimple/i;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/modelsimple/l;->cxe:Lcom/tencent/mm/modelsimple/i;

    invoke-static {v3}, Lcom/tencent/mm/modelsimple/i;->e(Lcom/tencent/mm/modelsimple/i;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/tencent/mm/network/n;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
