.class final Lcom/tencent/mm/ui/account/dz;
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
    .line 229
    iput-object p1, p0, Lcom/tencent/mm/ui/account/dz;->gsb:Lcom/tencent/mm/ui/account/dx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    const/4 v5, 0x1

    .line 233
    iget-object v0, p0, Lcom/tencent/mm/ui/account/dz;->gsb:Lcom/tencent/mm/ui/account/dx;

    iget-object v0, v0, Lcom/tencent/mm/ui/account/dx;->gsa:Lcom/tencent/mm/ui/account/MobileVerifyUIOld;

    invoke-static {v0}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->b(Lcom/tencent/mm/ui/account/MobileVerifyUIOld;)J

    .line 234
    iget-object v0, p0, Lcom/tencent/mm/ui/account/dz;->gsb:Lcom/tencent/mm/ui/account/dx;

    iget-object v0, v0, Lcom/tencent/mm/ui/account/dx;->gsa:Lcom/tencent/mm/ui/account/MobileVerifyUIOld;

    invoke-static {v0}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->c(Lcom/tencent/mm/ui/account/MobileVerifyUIOld;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/tencent/mm/ui/account/dz;->gsb:Lcom/tencent/mm/ui/account/dx;

    iget-object v0, v0, Lcom/tencent/mm/ui/account/dx;->gsa:Lcom/tencent/mm/ui/account/MobileVerifyUIOld;

    invoke-static {v0}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->e(Lcom/tencent/mm/ui/account/MobileVerifyUIOld;)Landroid/widget/Button;

    move-result-object v1

    iget-object v0, p0, Lcom/tencent/mm/ui/account/dz;->gsb:Lcom/tencent/mm/ui/account/dx;

    iget-object v0, v0, Lcom/tencent/mm/ui/account/dx;->gsa:Lcom/tencent/mm/ui/account/MobileVerifyUIOld;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/tencent/mm/l;->bcv:I

    iget-object v3, p0, Lcom/tencent/mm/ui/account/dz;->gsb:Lcom/tencent/mm/ui/account/dx;

    iget-object v3, v3, Lcom/tencent/mm/ui/account/dx;->gsa:Lcom/tencent/mm/ui/account/MobileVerifyUIOld;

    invoke-static {v3}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->c(Lcom/tencent/mm/ui/account/MobileVerifyUIOld;)J

    move-result-wide v3

    long-to-int v3, v3

    new-array v4, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/tencent/mm/ui/account/dz;->gsb:Lcom/tencent/mm/ui/account/dx;

    iget-object v6, v6, Lcom/tencent/mm/ui/account/dx;->gsa:Lcom/tencent/mm/ui/account/MobileVerifyUIOld;

    invoke-static {v6}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->c(Lcom/tencent/mm/ui/account/MobileVerifyUIOld;)J

    move-result-wide v6

    long-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 239
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 242
    return-void

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/account/dz;->gsb:Lcom/tencent/mm/ui/account/dx;

    iget-object v0, v0, Lcom/tencent/mm/ui/account/dx;->gsa:Lcom/tencent/mm/ui/account/MobileVerifyUIOld;

    invoke-static {v0}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->f(Lcom/tencent/mm/ui/account/MobileVerifyUIOld;)V

    .line 238
    iget-object v0, p0, Lcom/tencent/mm/ui/account/dz;->gsb:Lcom/tencent/mm/ui/account/dx;

    iget-object v0, v0, Lcom/tencent/mm/ui/account/dx;->gsa:Lcom/tencent/mm/ui/account/MobileVerifyUIOld;

    invoke-static {v0}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->e(Lcom/tencent/mm/ui/account/MobileVerifyUIOld;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 239
    iget-object v0, p0, Lcom/tencent/mm/ui/account/dz;->gsb:Lcom/tencent/mm/ui/account/dx;

    iget-object v0, v0, Lcom/tencent/mm/ui/account/dx;->gsa:Lcom/tencent/mm/ui/account/MobileVerifyUIOld;

    invoke-static {v0}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->e(Lcom/tencent/mm/ui/account/MobileVerifyUIOld;)Landroid/widget/Button;

    move-result-object v1

    iget-object v0, p0, Lcom/tencent/mm/ui/account/dz;->gsb:Lcom/tencent/mm/ui/account/dx;

    iget-object v0, v0, Lcom/tencent/mm/ui/account/dx;->gsa:Lcom/tencent/mm/ui/account/MobileVerifyUIOld;

    invoke-static {v0}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->g(Lcom/tencent/mm/ui/account/MobileVerifyUIOld;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/account/dz;->gsb:Lcom/tencent/mm/ui/account/dx;

    iget-object v0, v0, Lcom/tencent/mm/ui/account/dx;->gsa:Lcom/tencent/mm/ui/account/MobileVerifyUIOld;

    sget v2, Lcom/tencent/mm/n;->brN:I

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/account/dz;->gsb:Lcom/tencent/mm/ui/account/dx;

    iget-object v0, v0, Lcom/tencent/mm/ui/account/dx;->gsa:Lcom/tencent/mm/ui/account/MobileVerifyUIOld;

    sget v2, Lcom/tencent/mm/n;->brM:I

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
