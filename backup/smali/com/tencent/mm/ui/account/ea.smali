.class final Lcom/tencent/mm/ui/account/ea;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic gsb:Lcom/tencent/mm/ui/account/dx;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/account/dx;)V
    .locals 0
    .parameter

    .prologue
    .line 249
    iput-object p1, p0, Lcom/tencent/mm/ui/account/ea;->gsb:Lcom/tencent/mm/ui/account/dx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 253
    iget-object v0, p0, Lcom/tencent/mm/ui/account/ea;->gsb:Lcom/tencent/mm/ui/account/dx;

    iget-object v0, v0, Lcom/tencent/mm/ui/account/dx;->gsa:Lcom/tencent/mm/ui/account/MobileVerifyUIOld;

    invoke-static {v0}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->b(Lcom/tencent/mm/ui/account/MobileVerifyUIOld;)J

    .line 254
    iget-object v0, p0, Lcom/tencent/mm/ui/account/ea;->gsb:Lcom/tencent/mm/ui/account/dx;

    iget-object v0, v0, Lcom/tencent/mm/ui/account/dx;->gsa:Lcom/tencent/mm/ui/account/MobileVerifyUIOld;

    invoke-static {v0}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->c(Lcom/tencent/mm/ui/account/MobileVerifyUIOld;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/tencent/mm/ui/account/ea;->gsb:Lcom/tencent/mm/ui/account/dx;

    iget-object v0, v0, Lcom/tencent/mm/ui/account/dx;->gsa:Lcom/tencent/mm/ui/account/MobileVerifyUIOld;

    invoke-static {v0}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->d(Lcom/tencent/mm/ui/account/MobileVerifyUIOld;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/account/ea;->gsb:Lcom/tencent/mm/ui/account/dx;

    iget-object v1, v1, Lcom/tencent/mm/ui/account/dx;->gsa:Lcom/tencent/mm/ui/account/MobileVerifyUIOld;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/tencent/mm/l;->bcv:I

    iget-object v3, p0, Lcom/tencent/mm/ui/account/ea;->gsb:Lcom/tencent/mm/ui/account/dx;

    iget-object v3, v3, Lcom/tencent/mm/ui/account/dx;->gsa:Lcom/tencent/mm/ui/account/MobileVerifyUIOld;

    invoke-static {v3}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->c(Lcom/tencent/mm/ui/account/MobileVerifyUIOld;)J

    move-result-wide v3

    long-to-int v3, v3

    new-array v4, v5, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/tencent/mm/ui/account/ea;->gsb:Lcom/tencent/mm/ui/account/dx;

    iget-object v5, v5, Lcom/tencent/mm/ui/account/dx;->gsa:Lcom/tencent/mm/ui/account/MobileVerifyUIOld;

    invoke-static {v5}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->c(Lcom/tencent/mm/ui/account/MobileVerifyUIOld;)J

    move-result-wide v5

    long-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    :goto_0
    return-void

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/account/ea;->gsb:Lcom/tencent/mm/ui/account/dx;

    iget-object v0, v0, Lcom/tencent/mm/ui/account/dx;->gsa:Lcom/tencent/mm/ui/account/MobileVerifyUIOld;

    invoke-static {v0}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->d(Lcom/tencent/mm/ui/account/MobileVerifyUIOld;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 258
    iget-object v0, p0, Lcom/tencent/mm/ui/account/ea;->gsb:Lcom/tencent/mm/ui/account/dx;

    iget-object v0, v0, Lcom/tencent/mm/ui/account/dx;->gsa:Lcom/tencent/mm/ui/account/MobileVerifyUIOld;

    invoke-static {v0}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->e(Lcom/tencent/mm/ui/account/MobileVerifyUIOld;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 259
    iget-object v0, p0, Lcom/tencent/mm/ui/account/ea;->gsb:Lcom/tencent/mm/ui/account/dx;

    iget-object v0, v0, Lcom/tencent/mm/ui/account/dx;->gsa:Lcom/tencent/mm/ui/account/MobileVerifyUIOld;

    invoke-static {v0}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->f(Lcom/tencent/mm/ui/account/MobileVerifyUIOld;)V

    .line 260
    iget-object v0, p0, Lcom/tencent/mm/ui/account/ea;->gsb:Lcom/tencent/mm/ui/account/dx;

    iget-object v0, v0, Lcom/tencent/mm/ui/account/dx;->gsa:Lcom/tencent/mm/ui/account/MobileVerifyUIOld;

    invoke-static {v0}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->e(Lcom/tencent/mm/ui/account/MobileVerifyUIOld;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 261
    iget-object v0, p0, Lcom/tencent/mm/ui/account/ea;->gsb:Lcom/tencent/mm/ui/account/dx;

    iget-object v0, v0, Lcom/tencent/mm/ui/account/dx;->gsa:Lcom/tencent/mm/ui/account/MobileVerifyUIOld;

    invoke-static {v0}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->e(Lcom/tencent/mm/ui/account/MobileVerifyUIOld;)Landroid/widget/Button;

    move-result-object v1

    iget-object v0, p0, Lcom/tencent/mm/ui/account/ea;->gsb:Lcom/tencent/mm/ui/account/dx;

    iget-object v0, v0, Lcom/tencent/mm/ui/account/dx;->gsa:Lcom/tencent/mm/ui/account/MobileVerifyUIOld;

    invoke-static {v0}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->g(Lcom/tencent/mm/ui/account/MobileVerifyUIOld;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/account/ea;->gsb:Lcom/tencent/mm/ui/account/dx;

    iget-object v0, v0, Lcom/tencent/mm/ui/account/dx;->gsa:Lcom/tencent/mm/ui/account/MobileVerifyUIOld;

    sget v2, Lcom/tencent/mm/n;->brN:I

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/account/ea;->gsb:Lcom/tencent/mm/ui/account/dx;

    iget-object v0, v0, Lcom/tencent/mm/ui/account/dx;->gsa:Lcom/tencent/mm/ui/account/MobileVerifyUIOld;

    sget v2, Lcom/tencent/mm/n;->brM:I

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
