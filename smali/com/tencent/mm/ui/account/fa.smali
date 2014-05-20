.class final Lcom/tencent/mm/ui/account/fa;
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
    .line 425
    iput-object p1, p0, Lcom/tencent/mm/ui/account/fa;->gsa:Lcom/tencent/mm/ui/account/MobileVerifyUIOld;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 10
    .parameter

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 430
    iget-object v0, p0, Lcom/tencent/mm/ui/account/fa;->gsa:Lcom/tencent/mm/ui/account/MobileVerifyUIOld;

    invoke-static {v0}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->g(Lcom/tencent/mm/ui/account/MobileVerifyUIOld;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 431
    iget-object v0, p0, Lcom/tencent/mm/ui/account/fa;->gsa:Lcom/tencent/mm/ui/account/MobileVerifyUIOld;

    invoke-static {v0}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->k(Lcom/tencent/mm/ui/account/MobileVerifyUIOld;)V

    .line 432
    iget-object v0, p0, Lcom/tencent/mm/ui/account/fa;->gsa:Lcom/tencent/mm/ui/account/MobileVerifyUIOld;

    invoke-static {v0}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->l(Lcom/tencent/mm/ui/account/MobileVerifyUIOld;)Z

    .line 510
    :goto_0
    return-void

    .line 434
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/account/fa;->gsa:Lcom/tencent/mm/ui/account/MobileVerifyUIOld;

    invoke-static {v0}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->m(Lcom/tencent/mm/ui/account/MobileVerifyUIOld;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/x/b;->fZ(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 436
    const-string v0, "2013-11-30 00:00:00"

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->tc(Ljava/lang/String;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-gez v0, :cond_1

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/cj;->azW()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    move v0, v1

    .line 437
    :goto_1
    iget-object v3, p0, Lcom/tencent/mm/ui/account/fa;->gsa:Lcom/tencent/mm/ui/account/MobileVerifyUIOld;

    invoke-static {v3}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->n(Lcom/tencent/mm/ui/account/MobileVerifyUIOld;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 438
    if-eqz v0, :cond_2

    .line 439
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    iget-object v4, p0, Lcom/tencent/mm/ui/account/fa;->gsa:Lcom/tencent/mm/ui/account/MobileVerifyUIOld;

    sget v5, Lcom/tencent/mm/n;->brN:I

    invoke-virtual {v4, v5}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    iget-object v2, p0, Lcom/tencent/mm/ui/account/fa;->gsa:Lcom/tencent/mm/ui/account/MobileVerifyUIOld;

    sget v4, Lcom/tencent/mm/n;->bfE:I

    invoke-virtual {v2, v4}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v1

    iget-object v1, p0, Lcom/tencent/mm/ui/account/fa;->gsa:Lcom/tencent/mm/ui/account/MobileVerifyUIOld;

    sget v2, Lcom/tencent/mm/n;->bry:I

    invoke-virtual {v1, v2}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v8

    iget-object v1, p0, Lcom/tencent/mm/ui/account/fa;->gsa:Lcom/tencent/mm/ui/account/MobileVerifyUIOld;

    sget v2, Lcom/tencent/mm/n;->bvj:I

    invoke-virtual {v1, v2}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v9

    move-object v1, v3

    .line 447
    :goto_2
    iget-object v2, p0, Lcom/tencent/mm/ui/account/fa;->gsa:Lcom/tencent/mm/ui/account/MobileVerifyUIOld;

    new-instance v3, Lcom/tencent/mm/ui/account/fb;

    invoke-direct {v3, p0, v0}, Lcom/tencent/mm/ui/account/fb;-><init>(Lcom/tencent/mm/ui/account/fa;Z)V

    invoke-static {v2, v7, v1, v7, v3}, Lcom/tencent/mm/ui/base/h;->b(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/tencent/mm/ui/base/v;)Lcom/tencent/mm/ui/base/ar;

    goto :goto_0

    :cond_1
    move v0, v2

    .line 436
    goto :goto_1

    .line 441
    :cond_2
    new-array v3, v9, [Ljava/lang/String;

    iget-object v4, p0, Lcom/tencent/mm/ui/account/fa;->gsa:Lcom/tencent/mm/ui/account/MobileVerifyUIOld;

    sget v5, Lcom/tencent/mm/n;->brN:I

    invoke-virtual {v4, v5}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    iget-object v2, p0, Lcom/tencent/mm/ui/account/fa;->gsa:Lcom/tencent/mm/ui/account/MobileVerifyUIOld;

    sget v4, Lcom/tencent/mm/n;->bfE:I

    invoke-virtual {v2, v4}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v1

    iget-object v1, p0, Lcom/tencent/mm/ui/account/fa;->gsa:Lcom/tencent/mm/ui/account/MobileVerifyUIOld;

    sget v2, Lcom/tencent/mm/n;->bry:I

    invoke-virtual {v1, v2}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v8

    move-object v1, v3

    goto :goto_2

    .line 444
    :cond_3
    new-array v3, v8, [Ljava/lang/String;

    iget-object v4, p0, Lcom/tencent/mm/ui/account/fa;->gsa:Lcom/tencent/mm/ui/account/MobileVerifyUIOld;

    sget v5, Lcom/tencent/mm/n;->brN:I

    invoke-virtual {v4, v5}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    iget-object v2, p0, Lcom/tencent/mm/ui/account/fa;->gsa:Lcom/tencent/mm/ui/account/MobileVerifyUIOld;

    sget v4, Lcom/tencent/mm/n;->bfE:I

    invoke-virtual {v2, v4}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v1

    move-object v1, v3

    goto :goto_2

    .line 487
    :cond_4
    new-array v0, v1, [Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/mm/ui/account/fa;->gsa:Lcom/tencent/mm/ui/account/MobileVerifyUIOld;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/tencent/mm/n;->brN:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 490
    iget-object v1, p0, Lcom/tencent/mm/ui/account/fa;->gsa:Lcom/tencent/mm/ui/account/MobileVerifyUIOld;

    new-instance v2, Lcom/tencent/mm/ui/account/fc;

    invoke-direct {v2, p0}, Lcom/tencent/mm/ui/account/fc;-><init>(Lcom/tencent/mm/ui/account/fa;)V

    invoke-static {v1, v7, v0, v7, v2}, Lcom/tencent/mm/ui/base/h;->b(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/tencent/mm/ui/base/v;)Lcom/tencent/mm/ui/base/ar;

    goto/16 :goto_0
.end method
