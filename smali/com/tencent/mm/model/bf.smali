.class final Lcom/tencent/mm/model/bf;
.super Lcom/tencent/mm/network/ah;
.source "SourceFile"


# instance fields
.field final synthetic ciN:Lcom/tencent/mm/model/be;


# direct methods
.method constructor <init>(Lcom/tencent/mm/model/be;)V
    .locals 0
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lcom/tencent/mm/model/bf;->ciN:Lcom/tencent/mm/model/be;

    invoke-direct {p0}, Lcom/tencent/mm/network/ah;-><init>()V

    return-void
.end method


# virtual methods
.method public final ct(I)V
    .locals 2
    .parameter

    .prologue
    .line 149
    iget-object v0, p0, Lcom/tencent/mm/model/bf;->ciN:Lcom/tencent/mm/model/be;

    invoke-static {v0}, Lcom/tencent/mm/model/be;->a(Lcom/tencent/mm/model/be;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/network/ag;

    .line 150
    invoke-interface {v0, p1}, Lcom/tencent/mm/network/ag;->ct(I)V

    goto :goto_0

    .line 152
    :cond_0
    return-void
.end method
