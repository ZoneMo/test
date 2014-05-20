.class final Lcom/tencent/mm/plugin/search/model/av;
.super Lcom/tencent/mm/sdk/b/g;
.source "SourceFile"


# instance fields
.field final synthetic eiw:Lcom/tencent/mm/plugin/search/model/at;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/search/model/at;)V
    .locals 0
    .parameter

    .prologue
    .line 194
    iput-object p1, p0, Lcom/tencent/mm/plugin/search/model/av;->eiw:Lcom/tencent/mm/plugin/search/model/at;

    invoke-direct {p0}, Lcom/tencent/mm/sdk/b/g;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/sdk/b/e;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 197
    check-cast p1, Lcom/tencent/mm/c/a/c;

    .line 198
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/av;->eiw:Lcom/tencent/mm/plugin/search/model/at;

    invoke-static {v0}, Lcom/tencent/mm/plugin/search/model/at;->b(Lcom/tencent/mm/plugin/search/model/at;)Lcom/tencent/mm/plugin/search/model/y;

    move-result-object v0

    iget-object v2, p1, Lcom/tencent/mm/c/a/c;->bLK:Lcom/tencent/mm/c/a/d;

    iget-boolean v2, v2, Lcom/tencent/mm/c/a/d;->bLL:Z

    invoke-virtual {v0, v2}, Lcom/tencent/mm/plugin/search/model/y;->bk(Z)V

    .line 199
    iget-object v2, p0, Lcom/tencent/mm/plugin/search/model/av;->eiw:Lcom/tencent/mm/plugin/search/model/at;

    iget-object v0, p1, Lcom/tencent/mm/c/a/c;->bLK:Lcom/tencent/mm/c/a/d;

    iget-boolean v0, v0, Lcom/tencent/mm/c/a/d;->bLL:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v2, v0}, Lcom/tencent/mm/plugin/search/model/at;->a(Lcom/tencent/mm/plugin/search/model/at;Z)Z

    .line 200
    return v1

    :cond_0
    move v0, v1

    .line 199
    goto :goto_0
.end method
