.class final Lcom/tencent/mm/ui/tools/jsapi/ad;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/pluginsdk/ui/applet/r;


# instance fields
.field final synthetic dNE:Lcom/tencent/mm/storage/i;

.field final synthetic hpx:Lcom/tencent/mm/ui/tools/jsapi/p;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/tools/jsapi/p;Lcom/tencent/mm/storage/i;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2480
    iput-object p1, p0, Lcom/tencent/mm/ui/tools/jsapi/ad;->hpx:Lcom/tencent/mm/ui/tools/jsapi/p;

    iput-object p2, p0, Lcom/tencent/mm/ui/tools/jsapi/ad;->dNE:Lcom/tencent/mm/storage/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ZLjava/lang/String;I)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/16 v0, 0x21

    .line 2484
    if-eqz p1, :cond_2

    .line 2485
    iget-object v1, p0, Lcom/tencent/mm/ui/tools/jsapi/ad;->hpx:Lcom/tencent/mm/ui/tools/jsapi/p;

    invoke-static {v1}, Lcom/tencent/mm/ui/tools/jsapi/p;->e(Lcom/tencent/mm/ui/tools/jsapi/p;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2486
    iget-object v1, p0, Lcom/tencent/mm/ui/tools/jsapi/ad;->hpx:Lcom/tencent/mm/ui/tools/jsapi/p;

    invoke-static {v1}, Lcom/tencent/mm/ui/tools/jsapi/p;->e(Lcom/tencent/mm/ui/tools/jsapi/p;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 2489
    :cond_0
    iget-object v1, p0, Lcom/tencent/mm/ui/tools/jsapi/ad;->hpx:Lcom/tencent/mm/ui/tools/jsapi/p;

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/jsapi/ad;->hpx:Lcom/tencent/mm/ui/tools/jsapi/p;

    invoke-static {v2}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/p;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/ui/tools/jsapi/ad;->hpx:Lcom/tencent/mm/ui/tools/jsapi/p;

    invoke-static {v3}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/p;)Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/tencent/mm/n;->ber:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/mm/ui/tools/jsapi/ad;->hpx:Lcom/tencent/mm/ui/tools/jsapi/p;

    invoke-static {v3}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/p;)Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/tencent/mm/n;->bIl:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4, v5}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)Lcom/tencent/mm/ui/base/ch;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/p;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 2491
    new-instance v1, Lcom/tencent/mm/pluginsdk/ui/applet/a;

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/jsapi/ad;->hpx:Lcom/tencent/mm/ui/tools/jsapi/p;

    invoke-static {v2}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/p;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/ui/tools/jsapi/ad;->hpx:Lcom/tencent/mm/ui/tools/jsapi/p;

    invoke-direct {v1, v2, v3}, Lcom/tencent/mm/pluginsdk/ui/applet/a;-><init>(Landroid/content/Context;Lcom/tencent/mm/pluginsdk/ui/applet/f;)V

    .line 2492
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 2493
    invoke-static {}, Lcom/tencent/mm/ui/tools/jsapi/p;->aOB()Landroid/os/Bundle;

    move-result-object v3

    if-nez v3, :cond_1

    .line 2495
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 2496
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/ad;->dNE:Lcom/tencent/mm/storage/i;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v2}, Lcom/tencent/mm/pluginsdk/ui/applet/a;->e(Ljava/lang/String;Ljava/util/LinkedList;)V

    .line 2501
    :goto_1
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/ad;->hpx:Lcom/tencent/mm/ui/tools/jsapi/p;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/jsapi/p;->l(Lcom/tencent/mm/ui/tools/jsapi/p;)Lcom/tencent/mm/ui/base/ce;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/ce;->dismiss()V

    .line 2502
    return-void

    .line 2493
    :cond_1
    invoke-static {}, Lcom/tencent/mm/ui/tools/jsapi/p;->aOB()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "Contact_Scene"

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 2498
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/ad;->hpx:Lcom/tencent/mm/ui/tools/jsapi/p;

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/jsapi/ad;->hpx:Lcom/tencent/mm/ui/tools/jsapi/p;

    invoke-static {v1}, Lcom/tencent/mm/ui/tools/jsapi/p;->b(Lcom/tencent/mm/ui/tools/jsapi/p;)Lcom/tencent/mm/ui/tools/jsapi/ao;

    move-result-object v1

    const-string v2, "add_contact:cancel"

    invoke-static {v0, v1, v2, v5}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/p;Lcom/tencent/mm/ui/tools/jsapi/ao;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1
.end method
