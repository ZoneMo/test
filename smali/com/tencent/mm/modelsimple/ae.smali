.class final Lcom/tencent/mm/modelsimple/ae;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/model/cd;


# instance fields
.field final synthetic cxF:Lcom/tencent/mm/protocal/ay;

.field final synthetic cxG:Lcom/tencent/mm/modelsimple/ad;


# direct methods
.method constructor <init>(Lcom/tencent/mm/modelsimple/ad;Lcom/tencent/mm/protocal/ay;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 312
    iput-object p1, p0, Lcom/tencent/mm/modelsimple/ae;->cxG:Lcom/tencent/mm/modelsimple/ad;

    iput-object p2, p0, Lcom/tencent/mm/modelsimple/ae;->cxF:Lcom/tencent/mm/protocal/ay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/network/r;)V
    .locals 3
    .parameter

    .prologue
    .line 316
    if-nez p1, :cond_0

    .line 320
    :goto_0
    return-void

    .line 319
    :cond_0
    invoke-interface {p1}, Lcom/tencent/mm/network/r;->wZ()Lcom/tencent/mm/network/n;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/modelsimple/ae;->cxF:Lcom/tencent/mm/protocal/ay;

    iget-object v1, v1, Lcom/tencent/mm/protocal/ay;->fyw:Lcom/tencent/mm/protocal/a/pc;

    iget-object v1, v1, Lcom/tencent/mm/protocal/a/pc;->fRr:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/mm/modelsimple/ae;->cxF:Lcom/tencent/mm/protocal/ay;

    iget-object v2, v2, Lcom/tencent/mm/protocal/ay;->fyw:Lcom/tencent/mm/protocal/a/pc;

    iget v2, v2, Lcom/tencent/mm/protocal/a/pc;->fAX:I

    invoke-interface {v0, v1, v2}, Lcom/tencent/mm/network/n;->q(Ljava/lang/String;I)V

    goto :goto_0
.end method
