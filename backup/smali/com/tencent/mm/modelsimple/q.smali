.class final Lcom/tencent/mm/modelsimple/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/model/cd;


# instance fields
.field final synthetic cxg:Lcom/tencent/mm/protocal/l;

.field final synthetic cxj:Lcom/tencent/mm/modelsimple/n;


# direct methods
.method constructor <init>(Lcom/tencent/mm/modelsimple/n;Lcom/tencent/mm/protocal/l;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 178
    iput-object p1, p0, Lcom/tencent/mm/modelsimple/q;->cxj:Lcom/tencent/mm/modelsimple/n;

    iput-object p2, p0, Lcom/tencent/mm/modelsimple/q;->cxg:Lcom/tencent/mm/protocal/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/network/r;)V
    .locals 4
    .parameter

    .prologue
    .line 182
    if-nez p1, :cond_0

    .line 187
    :goto_0
    return-void

    .line 185
    :cond_0
    invoke-interface {p1}, Lcom/tencent/mm/network/r;->wZ()Lcom/tencent/mm/network/n;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/modelsimple/q;->cxg:Lcom/tencent/mm/protocal/l;

    iget-object v1, v1, Lcom/tencent/mm/protocal/l;->fxM:Lcom/tencent/mm/protocal/a/ou;

    iget-object v1, v1, Lcom/tencent/mm/protocal/a/ou;->fAW:Lcom/tencent/mm/am/b;

    invoke-virtual {v1}, Lcom/tencent/mm/am/b;->avA()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/modelsimple/q;->cxg:Lcom/tencent/mm/protocal/l;

    iget-object v2, v2, Lcom/tencent/mm/protocal/l;->fxM:Lcom/tencent/mm/protocal/a/ou;

    iget v2, v2, Lcom/tencent/mm/protocal/a/ou;->fAX:I

    invoke-interface {v0, v1, v2}, Lcom/tencent/mm/network/n;->q(Ljava/lang/String;I)V

    .line 186
    invoke-interface {p1}, Lcom/tencent/mm/network/r;->wZ()Lcom/tencent/mm/network/n;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/modelsimple/q;->cxg:Lcom/tencent/mm/protocal/l;

    iget-object v1, v1, Lcom/tencent/mm/protocal/l;->fxM:Lcom/tencent/mm/protocal/a/ou;

    iget-object v1, v1, Lcom/tencent/mm/protocal/a/ou;->fEI:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/rw;->getString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/modelsimple/q;->cxg:Lcom/tencent/mm/protocal/l;

    iget-object v2, v2, Lcom/tencent/mm/protocal/l;->fxM:Lcom/tencent/mm/protocal/a/ou;

    iget-object v2, v2, Lcom/tencent/mm/protocal/a/ou;->fQS:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/mm/modelsimple/q;->cxj:Lcom/tencent/mm/modelsimple/n;

    invoke-static {v3}, Lcom/tencent/mm/modelsimple/n;->d(Lcom/tencent/mm/modelsimple/n;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/tencent/mm/network/n;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
