.class final Lcom/tencent/mm/plugin/base/stub/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/sdk/platformtools/az;


# instance fields
.field final synthetic cOh:Lcom/tencent/mm/plugin/base/stub/e;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/base/stub/e;)V
    .locals 0
    .parameter

    .prologue
    .line 457
    iput-object p1, p0, Lcom/tencent/mm/plugin/base/stub/f;->cOh:Lcom/tencent/mm/plugin/base/stub/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ok()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 461
    iget-object v0, p0, Lcom/tencent/mm/plugin/base/stub/f;->cOh:Lcom/tencent/mm/plugin/base/stub/e;

    invoke-static {v0}, Lcom/tencent/mm/plugin/base/stub/e;->a(Lcom/tencent/mm/plugin/base/stub/e;)Lcom/tencent/mm/plugin/base/stub/OAuthUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/base/stub/OAuthUI;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 462
    const-string v0, "MicroMsg.OAuthSession"

    const-string v1, "onTimerExpired, context is finishing"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    :goto_0
    return v5

    .line 466
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/base/stub/f;->cOh:Lcom/tencent/mm/plugin/base/stub/e;

    iget-object v1, p0, Lcom/tencent/mm/plugin/base/stub/f;->cOh:Lcom/tencent/mm/plugin/base/stub/e;

    invoke-static {v1}, Lcom/tencent/mm/plugin/base/stub/e;->a(Lcom/tencent/mm/plugin/base/stub/e;)Lcom/tencent/mm/plugin/base/stub/OAuthUI;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/plugin/base/stub/f;->cOh:Lcom/tencent/mm/plugin/base/stub/e;

    invoke-static {v2}, Lcom/tencent/mm/plugin/base/stub/e;->a(Lcom/tencent/mm/plugin/base/stub/e;)Lcom/tencent/mm/plugin/base/stub/OAuthUI;

    move-result-object v2

    const v3, 0x7f0709bb

    invoke-virtual {v2, v3}, Lcom/tencent/mm/plugin/base/stub/OAuthUI;->getString(I)Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/mm/plugin/base/stub/f;->cOh:Lcom/tencent/mm/plugin/base/stub/e;

    invoke-static {v2}, Lcom/tencent/mm/plugin/base/stub/e;->a(Lcom/tencent/mm/plugin/base/stub/e;)Lcom/tencent/mm/plugin/base/stub/OAuthUI;

    move-result-object v2

    const v3, 0x7f0709ee

    invoke-virtual {v2, v3}, Lcom/tencent/mm/plugin/base/stub/OAuthUI;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-instance v4, Lcom/tencent/mm/plugin/base/stub/g;

    invoke-direct {v4, p0}, Lcom/tencent/mm/plugin/base/stub/g;-><init>(Lcom/tencent/mm/plugin/base/stub/f;)V

    invoke-static {v1, v2, v3, v4}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)Lcom/tencent/mm/ui/base/ch;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/plugin/base/stub/e;->a(Lcom/tencent/mm/plugin/base/stub/e;Lcom/tencent/mm/ui/base/ch;)Lcom/tencent/mm/ui/base/ch;

    goto :goto_0
.end method
