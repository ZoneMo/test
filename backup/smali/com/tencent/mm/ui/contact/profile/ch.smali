.class final Lcom/tencent/mm/ui/contact/profile/ch;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/ui/base/cc;


# instance fields
.field final synthetic gXm:Lcom/tencent/mm/ui/contact/profile/cc;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/contact/profile/cc;)V
    .locals 0
    .parameter

    .prologue
    .line 507
    iput-object p1, p0, Lcom/tencent/mm/ui/contact/profile/ch;->gXm:Lcom/tencent/mm/ui/contact/profile/cc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/ui/base/bx;)V
    .locals 3
    .parameter

    .prologue
    .line 513
    const/4 v0, 0x1

    const v1, 0x7f07043e

    const v2, 0x7f0205c0

    invoke-virtual {p1, v0, v1, v2}, Lcom/tencent/mm/ui/base/bx;->r(III)Landroid/view/MenuItem;

    .line 520
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ch;->gXm:Lcom/tencent/mm/ui/contact/profile/cc;

    iget-object v0, v0, Lcom/tencent/mm/ui/contact/profile/cc;->gXl:Lcom/tencent/mm/ui/contact/profile/cb;

    iget-object v0, v0, Lcom/tencent/mm/ui/contact/profile/cb;->gXk:Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->a(Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;)Lcom/tencent/mm/storage/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->re()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 522
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ch;->gXm:Lcom/tencent/mm/ui/contact/profile/cc;

    iget-object v0, v0, Lcom/tencent/mm/ui/contact/profile/cc;->gXl:Lcom/tencent/mm/ui/contact/profile/cb;

    iget-object v0, v0, Lcom/tencent/mm/ui/contact/profile/cb;->gXk:Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->b(Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;)Lcom/tencent/mm/ui/MMActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/ui/MMActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070429

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 526
    :goto_0
    const/4 v1, 0x2

    const v2, 0x7f0205c4

    invoke-virtual {p1, v1, v0, v2}, Lcom/tencent/mm/ui/base/bx;->a(ILjava/lang/CharSequence;I)Landroid/view/MenuItem;

    .line 529
    const-string v0, "sns"

    invoke-static {v0}, Lcom/tencent/mm/ak/a;->qc(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/mm/model/v;->tq()I

    move-result v0

    const v1, 0x8000

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 530
    const/4 v0, 0x3

    const v1, 0x7f070432

    const v2, 0x7f0205b5

    invoke-virtual {p1, v0, v1, v2}, Lcom/tencent/mm/ui/base/bx;->r(III)Landroid/view/MenuItem;

    .line 534
    :cond_0
    const/4 v0, 0x4

    const v1, 0x7f070431

    const v2, 0x7f0205c2

    invoke-virtual {p1, v0, v1, v2}, Lcom/tencent/mm/ui/base/bx;->r(III)Landroid/view/MenuItem;

    .line 537
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ch;->gXm:Lcom/tencent/mm/ui/contact/profile/cc;

    iget-object v0, v0, Lcom/tencent/mm/ui/contact/profile/cc;->gXl:Lcom/tencent/mm/ui/contact/profile/cb;

    iget-object v0, v0, Lcom/tencent/mm/ui/contact/profile/cb;->gXk:Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->a(Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;)Lcom/tencent/mm/storage/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->rd()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 539
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ch;->gXm:Lcom/tencent/mm/ui/contact/profile/cc;

    iget-object v0, v0, Lcom/tencent/mm/ui/contact/profile/cc;->gXl:Lcom/tencent/mm/ui/contact/profile/cb;

    iget-object v0, v0, Lcom/tencent/mm/ui/contact/profile/cb;->gXk:Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->b(Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;)Lcom/tencent/mm/ui/MMActivity;

    move-result-object v0

    const v1, 0x7f070421

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/MMActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 543
    :goto_1
    const/4 v1, 0x5

    const v2, 0x7f0205a8

    invoke-virtual {p1, v1, v0, v2}, Lcom/tencent/mm/ui/base/bx;->a(ILjava/lang/CharSequence;I)Landroid/view/MenuItem;

    .line 546
    const/4 v0, 0x6

    const v1, 0x7f070530

    const v2, 0x7f0205ae

    invoke-virtual {p1, v0, v1, v2}, Lcom/tencent/mm/ui/base/bx;->r(III)Landroid/view/MenuItem;

    .line 548
    const/4 v0, 0x7

    const v1, 0x7f070428

    invoke-virtual {p1, v0, v1}, Lcom/tencent/mm/ui/base/bx;->bi(II)Landroid/view/MenuItem;

    .line 549
    return-void

    .line 524
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ch;->gXm:Lcom/tencent/mm/ui/contact/profile/cc;

    iget-object v0, v0, Lcom/tencent/mm/ui/contact/profile/cc;->gXl:Lcom/tencent/mm/ui/contact/profile/cb;

    iget-object v0, v0, Lcom/tencent/mm/ui/contact/profile/cb;->gXk:Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->b(Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;)Lcom/tencent/mm/ui/MMActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/ui/MMActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07042a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 541
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ch;->gXm:Lcom/tencent/mm/ui/contact/profile/cc;

    iget-object v0, v0, Lcom/tencent/mm/ui/contact/profile/cc;->gXl:Lcom/tencent/mm/ui/contact/profile/cb;

    iget-object v0, v0, Lcom/tencent/mm/ui/contact/profile/cb;->gXk:Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->b(Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;)Lcom/tencent/mm/ui/MMActivity;

    move-result-object v0

    const v1, 0x7f07041d

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/MMActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
