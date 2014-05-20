.class final Lcom/tencent/mm/ui/account/fd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic gsa:Lcom/tencent/mm/ui/account/MobileVerifyUIOld;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/account/MobileVerifyUIOld;)V
    .locals 0
    .parameter

    .prologue
    .line 512
    iput-object p1, p0, Lcom/tencent/mm/ui/account/fd;->gsa:Lcom/tencent/mm/ui/account/MobileVerifyUIOld;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 516
    iget-object v0, p0, Lcom/tencent/mm/ui/account/fd;->gsa:Lcom/tencent/mm/ui/account/MobileVerifyUIOld;

    invoke-static {v0}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->a(Lcom/tencent/mm/ui/account/MobileVerifyUIOld;)I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 517
    iget-object v0, p0, Lcom/tencent/mm/ui/account/fd;->gsa:Lcom/tencent/mm/ui/account/MobileVerifyUIOld;

    invoke-static {v0}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->g(Lcom/tencent/mm/ui/account/MobileVerifyUIOld;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 518
    iget-object v0, p0, Lcom/tencent/mm/ui/account/fd;->gsa:Lcom/tencent/mm/ui/account/MobileVerifyUIOld;

    invoke-static {v0}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->k(Lcom/tencent/mm/ui/account/MobileVerifyUIOld;)V

    .line 519
    iget-object v0, p0, Lcom/tencent/mm/ui/account/fd;->gsa:Lcom/tencent/mm/ui/account/MobileVerifyUIOld;

    invoke-static {v0}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->l(Lcom/tencent/mm/ui/account/MobileVerifyUIOld;)Z

    .line 570
    :cond_0
    :goto_0
    return-void

    .line 521
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/account/fd;->gsa:Lcom/tencent/mm/ui/account/MobileVerifyUIOld;

    invoke-static {v0}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->m(Lcom/tencent/mm/ui/account/MobileVerifyUIOld;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/x/b;->fZ(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 523
    iget-object v0, p0, Lcom/tencent/mm/ui/account/fd;->gsa:Lcom/tencent/mm/ui/account/MobileVerifyUIOld;

    invoke-static {v0}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->n(Lcom/tencent/mm/ui/account/MobileVerifyUIOld;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 524
    new-array v0, v1, [Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/mm/ui/account/fd;->gsa:Lcom/tencent/mm/ui/account/MobileVerifyUIOld;

    sget v2, Lcom/tencent/mm/n;->brN:I

    invoke-virtual {v1, v2}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/tencent/mm/ui/account/fd;->gsa:Lcom/tencent/mm/ui/account/MobileVerifyUIOld;

    sget v2, Lcom/tencent/mm/n;->bfE:I

    invoke-virtual {v1, v2}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    iget-object v1, p0, Lcom/tencent/mm/ui/account/fd;->gsa:Lcom/tencent/mm/ui/account/MobileVerifyUIOld;

    sget v2, Lcom/tencent/mm/n;->bry:I

    invoke-virtual {v1, v2}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    .line 529
    :goto_1
    iget-object v1, p0, Lcom/tencent/mm/ui/account/fd;->gsa:Lcom/tencent/mm/ui/account/MobileVerifyUIOld;

    new-instance v2, Lcom/tencent/mm/ui/account/fe;

    invoke-direct {v2, p0}, Lcom/tencent/mm/ui/account/fe;-><init>(Lcom/tencent/mm/ui/account/fd;)V

    invoke-static {v1, v3, v0, v3, v2}, Lcom/tencent/mm/ui/base/h;->b(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/tencent/mm/ui/base/v;)Lcom/tencent/mm/ui/base/ar;

    goto :goto_0

    .line 526
    :cond_2
    new-array v0, v6, [Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/mm/ui/account/fd;->gsa:Lcom/tencent/mm/ui/account/MobileVerifyUIOld;

    sget v2, Lcom/tencent/mm/n;->brN:I

    invoke-virtual {v1, v2}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/tencent/mm/ui/account/fd;->gsa:Lcom/tencent/mm/ui/account/MobileVerifyUIOld;

    sget v2, Lcom/tencent/mm/n;->bfE:I

    invoke-virtual {v1, v2}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    goto :goto_1

    .line 554
    :cond_3
    new-array v0, v5, [Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/mm/ui/account/fd;->gsa:Lcom/tencent/mm/ui/account/MobileVerifyUIOld;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/tencent/mm/n;->brN:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 555
    iget-object v1, p0, Lcom/tencent/mm/ui/account/fd;->gsa:Lcom/tencent/mm/ui/account/MobileVerifyUIOld;

    new-instance v2, Lcom/tencent/mm/ui/account/ff;

    invoke-direct {v2, p0}, Lcom/tencent/mm/ui/account/ff;-><init>(Lcom/tencent/mm/ui/account/fd;)V

    invoke-static {v1, v3, v0, v3, v2}, Lcom/tencent/mm/ui/base/h;->b(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/tencent/mm/ui/base/v;)Lcom/tencent/mm/ui/base/ar;

    goto :goto_0
.end method
