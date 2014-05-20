.class final Lcom/tencent/mm/plugin/search/model/ay;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/model/dw;


# instance fields
.field final synthetic eiw:Lcom/tencent/mm/plugin/search/model/at;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/search/model/at;)V
    .locals 0
    .parameter

    .prologue
    .line 225
    iput-object p1, p0, Lcom/tencent/mm/plugin/search/model/ay;->eiw:Lcom/tencent/mm/plugin/search/model/at;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final vH()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 228
    const-string v0, "MicroMsg.SubCoreSearch"

    const-string v1, "HERE UninitForUEH is called! stg:%s "

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/tencent/mm/plugin/search/model/ay;->eiw:Lcom/tencent/mm/plugin/search/model/at;

    invoke-static {v4}, Lcom/tencent/mm/plugin/search/model/at;->c(Lcom/tencent/mm/plugin/search/model/at;)Lcom/tencent/mm/plugin/search/model/ap;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 229
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/ay;->eiw:Lcom/tencent/mm/plugin/search/model/at;

    invoke-static {v0}, Lcom/tencent/mm/plugin/search/model/at;->c(Lcom/tencent/mm/plugin/search/model/at;)Lcom/tencent/mm/plugin/search/model/ap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/ay;->eiw:Lcom/tencent/mm/plugin/search/model/at;

    invoke-static {v0}, Lcom/tencent/mm/plugin/search/model/at;->c(Lcom/tencent/mm/plugin/search/model/at;)Lcom/tencent/mm/plugin/search/model/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/search/model/ap;->rollback()V

    .line 231
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/ay;->eiw:Lcom/tencent/mm/plugin/search/model/at;

    invoke-static {v0}, Lcom/tencent/mm/plugin/search/model/at;->c(Lcom/tencent/mm/plugin/search/model/at;)Lcom/tencent/mm/plugin/search/model/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/search/model/ap;->close()V

    .line 233
    :cond_0
    return v5
.end method
