.class final Lcom/tencent/mm/plugin/search/model/ax;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic eiw:Lcom/tencent/mm/plugin/search/model/at;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/search/model/at;)V
    .locals 0
    .parameter

    .prologue
    .line 217
    iput-object p1, p0, Lcom/tencent/mm/plugin/search/model/ax;->eiw:Lcom/tencent/mm/plugin/search/model/at;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/ax;->eiw:Lcom/tencent/mm/plugin/search/model/at;

    invoke-static {v0}, Lcom/tencent/mm/plugin/search/model/at;->c(Lcom/tencent/mm/plugin/search/model/at;)Lcom/tencent/mm/plugin/search/model/ap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/ax;->eiw:Lcom/tencent/mm/plugin/search/model/at;

    invoke-static {v0}, Lcom/tencent/mm/plugin/search/model/at;->c(Lcom/tencent/mm/plugin/search/model/at;)Lcom/tencent/mm/plugin/search/model/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/search/model/ap;->rollback()V

    .line 222
    :cond_0
    return-void
.end method
