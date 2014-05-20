.class final Lcom/tencent/mm/plugin/scanner/ui/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/ui/base/w;


# instance fields
.field final synthetic edf:Lcom/tencent/mm/plugin/scanner/ui/x;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/scanner/ui/x;)V
    .locals 0
    .parameter

    .prologue
    .line 723
    iput-object p1, p0, Lcom/tencent/mm/plugin/scanner/ui/y;->edf:Lcom/tencent/mm/plugin/scanner/ui/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ai(II)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 728
    packed-switch p2, :pswitch_data_0

    .line 739
    const-string v0, "MicroMsg.scanner.ProductUI"

    const-string v1, "do del cancel"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    :cond_0
    :goto_0
    return-void

    .line 730
    :pswitch_0
    new-instance v0, Lcom/tencent/mm/c/a/u;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/u;-><init>()V

    .line 731
    iget-object v1, v0, Lcom/tencent/mm/c/a/u;->bMi:Lcom/tencent/mm/c/a/v;

    iget-object v2, p0, Lcom/tencent/mm/plugin/scanner/ui/y;->edf:Lcom/tencent/mm/plugin/scanner/ui/x;

    iget-object v2, v2, Lcom/tencent/mm/plugin/scanner/ui/x;->ede:Lcom/tencent/mm/plugin/scanner/ui/ProductUI;

    invoke-virtual {v2}, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "key_favorite_local_id"

    const-wide/16 v4, -0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/tencent/mm/c/a/v;->bMk:J

    .line 732
    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/tencent/mm/sdk/b/f;->f(Lcom/tencent/mm/sdk/b/e;)Z

    .line 733
    const-string v1, "MicroMsg.scanner.ProductUI"

    const-string v2, "do del fav product, local id %d, result %B"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, v0, Lcom/tencent/mm/c/a/u;->bMi:Lcom/tencent/mm/c/a/v;

    iget-wide v5, v5, Lcom/tencent/mm/c/a/v;->bMk:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, v0, Lcom/tencent/mm/c/a/u;->bMj:Lcom/tencent/mm/c/a/w;

    iget-boolean v5, v5, Lcom/tencent/mm/c/a/w;->bMh:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 734
    iget-object v0, v0, Lcom/tencent/mm/c/a/u;->bMj:Lcom/tencent/mm/c/a/w;

    iget-boolean v0, v0, Lcom/tencent/mm/c/a/w;->bMh:Z

    if-eqz v0, :cond_0

    .line 735
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/y;->edf:Lcom/tencent/mm/plugin/scanner/ui/x;

    iget-object v0, v0, Lcom/tencent/mm/plugin/scanner/ui/x;->ede:Lcom/tencent/mm/plugin/scanner/ui/ProductUI;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->finish()V

    goto :goto_0

    .line 728
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method
