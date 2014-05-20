.class final Lcom/tencent/mm/app/n;
.super Lcom/tencent/mm/sdk/b/g;
.source "SourceFile"


# instance fields
.field final synthetic bLu:Lcom/tencent/mm/app/WorkerProfile;


# direct methods
.method constructor <init>(Lcom/tencent/mm/app/WorkerProfile;)V
    .locals 0
    .parameter

    .prologue
    .line 512
    iput-object p1, p0, Lcom/tencent/mm/app/n;->bLu:Lcom/tencent/mm/app/WorkerProfile;

    invoke-direct {p0}, Lcom/tencent/mm/sdk/b/g;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/sdk/b/e;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 516
    check-cast p1, Lcom/tencent/mm/c/a/gm;

    .line 517
    iget-object v0, p1, Lcom/tencent/mm/c/a/gm;->bQH:Lcom/tencent/mm/c/a/gn;

    iget-object v0, v0, Lcom/tencent/mm/c/a/gn;->context:Landroid/content/Context;

    .line 518
    iget-object v1, p1, Lcom/tencent/mm/c/a/gm;->bQH:Lcom/tencent/mm/c/a/gn;

    iget-object v1, v1, Lcom/tencent/mm/c/a/gn;->bQI:Ljava/lang/String;

    .line 519
    if-eqz v0, :cond_0

    invoke-static {v1}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 528
    :cond_0
    :goto_0
    return v4

    .line 524
    :cond_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 525
    const-string v3, "rawUrl"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 526
    const-class v1, Lcom/tencent/mm/ui/tools/WebViewUI;

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 527
    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
