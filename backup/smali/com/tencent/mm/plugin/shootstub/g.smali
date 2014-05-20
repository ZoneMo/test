.class final Lcom/tencent/mm/plugin/shootstub/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/n/m;


# instance fields
.field final synthetic etB:Lcom/tencent/mm/plugin/shootstub/b;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/shootstub/b;)V
    .locals 0
    .parameter

    .prologue
    .line 196
    iput-object p1, p0, Lcom/tencent/mm/plugin/shootstub/g;->etB:Lcom/tencent/mm/plugin/shootstub/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(IILjava/lang/String;Lcom/tencent/mm/n/x;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 200
    const-string v0, "MicroMsg.SubCoreShootStub"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "edw onSceneEnd, type = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Lcom/tencent/mm/n/x;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", errType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", errCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    invoke-virtual {p4}, Lcom/tencent/mm/n/x;->getType()I

    move-result v1

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/n/ac;->b(ILcom/tencent/mm/n/m;)V

    move-object v0, p4

    .line 202
    check-cast v0, Lcom/tencent/mm/plugin/shootstub/a/g;

    iget-object v4, v0, Lcom/tencent/mm/plugin/shootstub/a/g;->cke:Lcom/tencent/mm/n/a;

    .line 203
    iget-object v0, p0, Lcom/tencent/mm/plugin/shootstub/g;->etB:Lcom/tencent/mm/plugin/shootstub/b;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/tencent/mm/n/a;->getType()I

    move-result v0

    :goto_0
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/tencent/mm/n/a;->ws()Lcom/tencent/mm/am/a;

    move-result-object v5

    :goto_1
    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lcom/tencent/mm/plugin/shootstub/b;->b(IIILjava/lang/String;Lcom/tencent/mm/network/aj;Lcom/tencent/mm/am/a;)Z

    .line 204
    return-void

    .line 203
    :cond_0
    invoke-virtual {p4}, Lcom/tencent/mm/n/x;->getType()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method
