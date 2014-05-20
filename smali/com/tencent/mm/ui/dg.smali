.class final Lcom/tencent/mm/ui/dg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/ui/ba;


# instance fields
.field final synthetic gnD:Lcom/tencent/mm/ui/LayoutListenerView;

.field final synthetic gom:Lcom/tencent/mm/ui/cy;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/cy;Lcom/tencent/mm/ui/LayoutListenerView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 417
    iput-object p1, p0, Lcom/tencent/mm/ui/dg;->gom:Lcom/tencent/mm/ui/cy;

    iput-object p2, p0, Lcom/tencent/mm/ui/dg;->gnD:Lcom/tencent/mm/ui/LayoutListenerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final aEI()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 421
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 422
    iget-object v1, p0, Lcom/tencent/mm/ui/dg;->gnD:Lcom/tencent/mm/ui/LayoutListenerView;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/LayoutListenerView;->getLocationOnScreen([I)V

    .line 423
    invoke-static {}, Lcom/tencent/mm/ui/cy;->aFr()I

    move-result v1

    aget v2, v0, v3

    if-ne v1, v2, :cond_0

    .line 434
    :goto_0
    return-void

    .line 426
    :cond_0
    aget v0, v0, v3

    invoke-static {v0}, Lcom/tencent/mm/ui/cy;->mJ(I)I

    .line 427
    invoke-static {}, Lcom/tencent/mm/ui/cy;->aFh()I

    move-result v0

    if-nez v0, :cond_1

    .line 428
    invoke-static {}, Lcom/tencent/mm/ui/cy;->aFr()I

    move-result v0

    invoke-static {v0}, Lcom/tencent/mm/ui/cy;->mH(I)I

    .line 429
    const-string v0, "MicroMsg.MMActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "yy onLayout baseTop:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/ui/cy;->aFh()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    :cond_1
    const-string v0, "MicroMsg.MMActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "yy onLayout top:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/ui/cy;->aFr()I

    move-result v2

    invoke-static {}, Lcom/tencent/mm/ui/cy;->aFh()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    iget-object v0, p0, Lcom/tencent/mm/ui/dg;->gom:Lcom/tencent/mm/ui/cy;

    invoke-static {v0}, Lcom/tencent/mm/ui/cy;->e(Lcom/tencent/mm/ui/cy;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "top"

    invoke-static {}, Lcom/tencent/mm/ui/cy;->aFr()I

    move-result v2

    invoke-static {}, Lcom/tencent/mm/ui/cy;->aFh()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 433
    iget-object v0, p0, Lcom/tencent/mm/ui/dg;->gom:Lcom/tencent/mm/ui/cy;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/cy;->aal()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/dg;->gom:Lcom/tencent/mm/ui/cy;

    invoke-static {v1}, Lcom/tencent/mm/ui/cy;->e(Lcom/tencent/mm/ui/cy;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.tencent.mm.permission.MM_MESSAGE"

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0
.end method
