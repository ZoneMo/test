.class final Lcom/tencent/mm/ui/contact/profile/dg;
.super Lcom/tencent/mm/ui/contact/profile/cb;
.source "SourceFile"


# instance fields
.field final synthetic gXk:Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;


# direct methods
.method public constructor <init>(Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 1435
    iput-object p1, p0, Lcom/tencent/mm/ui/contact/profile/dg;->gXk:Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;

    .line 1436
    invoke-direct {p0, p1}, Lcom/tencent/mm/ui/contact/profile/cb;-><init>(Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;)V

    .line 1437
    return-void
.end method


# virtual methods
.method protected final aLg()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 1446
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/dg;->gXk:Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->o(Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1448
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/dg;->gXk:Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->e(Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1449
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/dg;->gXk:Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->e(Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f070488

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 1451
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/dg;->gXk:Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->q(Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 1452
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/dg;->gXk:Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->p(Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1454
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/dg;->gXk:Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->m(Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1455
    return-void
.end method

.method protected final aLi()V
    .locals 0

    .prologue
    .line 1442
    return-void
.end method
