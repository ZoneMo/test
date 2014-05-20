.class final Landroid/support/v7/internal/widget/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field final synthetic nz:Landroid/support/v7/internal/widget/ActivityChooserView;


# direct methods
.method private constructor <init>(Landroid/support/v7/internal/widget/ActivityChooserView;)V
    .locals 0
    .parameter

    .prologue
    .line 532
    iput-object p1, p0, Landroid/support/v7/internal/widget/t;->nz:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/internal/widget/ActivityChooserView;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 532
    invoke-direct {p0, p1}, Landroid/support/v7/internal/widget/t;-><init>(Landroid/support/v7/internal/widget/ActivityChooserView;)V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 568
    iget-object v0, p0, Landroid/support/v7/internal/widget/t;->nz:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActivityChooserView;->e(Landroid/support/v7/internal/widget/ActivityChooserView;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 569
    iget-object v0, p0, Landroid/support/v7/internal/widget/t;->nz:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActivityChooserView;->cZ()Z

    .line 570
    iget-object v0, p0, Landroid/support/v7/internal/widget/t;->nz:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActivityChooserView;->a(Landroid/support/v7/internal/widget/ActivityChooserView;)Landroid/support/v7/internal/widget/s;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/s;->cS()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 571
    iget-object v1, p0, Landroid/support/v7/internal/widget/t;->nz:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-static {v1}, Landroid/support/v7/internal/widget/ActivityChooserView;->a(Landroid/support/v7/internal/widget/ActivityChooserView;)Landroid/support/v7/internal/widget/s;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/internal/widget/s;->dd()Landroid/support/v7/internal/widget/j;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/internal/widget/j;->a(Landroid/content/pm/ResolveInfo;)I

    move-result v0

    .line 572
    iget-object v1, p0, Landroid/support/v7/internal/widget/t;->nz:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-static {v1}, Landroid/support/v7/internal/widget/ActivityChooserView;->a(Landroid/support/v7/internal/widget/ActivityChooserView;)Landroid/support/v7/internal/widget/s;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/internal/widget/s;->dd()Landroid/support/v7/internal/widget/j;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/internal/widget/j;->H(I)Landroid/content/Intent;

    move-result-object v0

    .line 573
    if-eqz v0, :cond_0

    .line 574
    const/high16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 575
    iget-object v1, p0, Landroid/support/v7/internal/widget/t;->nz:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-virtual {v1}, Landroid/support/v7/internal/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 579
    :cond_0
    :goto_0
    return-void

    .line 577
    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/widget/t;->nz:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActivityChooserView;->f(Landroid/support/v7/internal/widget/ActivityChooserView;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 578
    iget-object v0, p0, Landroid/support/v7/internal/widget/t;->nz:Landroid/support/v7/internal/widget/ActivityChooserView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v7/internal/widget/ActivityChooserView;->a(Landroid/support/v7/internal/widget/ActivityChooserView;Z)Z

    .line 579
    iget-object v0, p0, Landroid/support/v7/internal/widget/t;->nz:Landroid/support/v7/internal/widget/ActivityChooserView;

    iget-object v1, p0, Landroid/support/v7/internal/widget/t;->nz:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-static {v1}, Landroid/support/v7/internal/widget/ActivityChooserView;->g(Landroid/support/v7/internal/widget/ActivityChooserView;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/support/v7/internal/widget/ActivityChooserView;->a(Landroid/support/v7/internal/widget/ActivityChooserView;I)V

    goto :goto_0

    .line 581
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public final onDismiss()V
    .locals 2

    .prologue
    .line 601
    iget-object v0, p0, Landroid/support/v7/internal/widget/t;->nz:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActivityChooserView;->h(Landroid/support/v7/internal/widget/ActivityChooserView;)Landroid/widget/PopupWindow$OnDismissListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/t;->nz:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActivityChooserView;->h(Landroid/support/v7/internal/widget/ActivityChooserView;)Landroid/widget/PopupWindow$OnDismissListener;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    .line 602
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/t;->nz:Landroid/support/v7/internal/widget/ActivityChooserView;

    iget-object v0, v0, Landroid/support/v7/internal/widget/ActivityChooserView;->nq:Landroid/support/v4/view/n;

    if-eqz v0, :cond_1

    .line 603
    iget-object v0, p0, Landroid/support/v7/internal/widget/t;->nz:Landroid/support/v7/internal/widget/ActivityChooserView;

    iget-object v0, v0, Landroid/support/v7/internal/widget/ActivityChooserView;->nq:Landroid/support/v4/view/n;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/n;->c(Z)V

    .line 605
    :cond_1
    return-void
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 537
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/s;

    .line 538
    invoke-virtual {v0, p3}, Landroid/support/v7/internal/widget/s;->getItemViewType(I)I

    move-result v0

    .line 539
    packed-switch v0, :pswitch_data_0

    .line 562
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 541
    :pswitch_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/t;->nz:Landroid/support/v7/internal/widget/ActivityChooserView;

    const v1, 0x7fffffff

    invoke-static {v0, v1}, Landroid/support/v7/internal/widget/ActivityChooserView;->a(Landroid/support/v7/internal/widget/ActivityChooserView;I)V

    .line 564
    :cond_0
    :goto_0
    return-void

    .line 544
    :pswitch_1
    iget-object v0, p0, Landroid/support/v7/internal/widget/t;->nz:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActivityChooserView;->cZ()Z

    .line 545
    iget-object v0, p0, Landroid/support/v7/internal/widget/t;->nz:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActivityChooserView;->d(Landroid/support/v7/internal/widget/ActivityChooserView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 547
    if-lez p3, :cond_0

    .line 548
    iget-object v0, p0, Landroid/support/v7/internal/widget/t;->nz:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActivityChooserView;->a(Landroid/support/v7/internal/widget/ActivityChooserView;)Landroid/support/v7/internal/widget/s;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/s;->dd()Landroid/support/v7/internal/widget/j;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/support/v7/internal/widget/j;->I(I)V

    goto :goto_0

    .line 553
    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/widget/t;->nz:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActivityChooserView;->a(Landroid/support/v7/internal/widget/ActivityChooserView;)Landroid/support/v7/internal/widget/s;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/s;->de()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 554
    :goto_1
    iget-object v0, p0, Landroid/support/v7/internal/widget/t;->nz:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActivityChooserView;->a(Landroid/support/v7/internal/widget/ActivityChooserView;)Landroid/support/v7/internal/widget/s;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/s;->dd()Landroid/support/v7/internal/widget/j;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/support/v7/internal/widget/j;->H(I)Landroid/content/Intent;

    move-result-object v0

    .line 555
    if-eqz v0, :cond_0

    .line 556
    const/high16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 557
    iget-object v1, p0, Landroid/support/v7/internal/widget/t;->nz:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-virtual {v1}, Landroid/support/v7/internal/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 553
    :cond_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    .line 539
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onLongClick(Landroid/view/View;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 588
    iget-object v0, p0, Landroid/support/v7/internal/widget/t;->nz:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActivityChooserView;->e(Landroid/support/v7/internal/widget/ActivityChooserView;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 589
    iget-object v0, p0, Landroid/support/v7/internal/widget/t;->nz:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActivityChooserView;->a(Landroid/support/v7/internal/widget/ActivityChooserView;)Landroid/support/v7/internal/widget/s;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/s;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 590
    iget-object v0, p0, Landroid/support/v7/internal/widget/t;->nz:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-static {v0, v2}, Landroid/support/v7/internal/widget/ActivityChooserView;->a(Landroid/support/v7/internal/widget/ActivityChooserView;Z)Z

    .line 591
    iget-object v0, p0, Landroid/support/v7/internal/widget/t;->nz:Landroid/support/v7/internal/widget/ActivityChooserView;

    iget-object v1, p0, Landroid/support/v7/internal/widget/t;->nz:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-static {v1}, Landroid/support/v7/internal/widget/ActivityChooserView;->g(Landroid/support/v7/internal/widget/ActivityChooserView;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/support/v7/internal/widget/ActivityChooserView;->a(Landroid/support/v7/internal/widget/ActivityChooserView;I)V

    .line 596
    :cond_0
    return v2

    .line 594
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method
