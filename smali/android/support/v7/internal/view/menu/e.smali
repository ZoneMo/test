.class final Landroid/support/v7/internal/view/menu/e;
.super Landroid/widget/ImageButton;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/internal/view/menu/i;


# instance fields
.field final synthetic jB:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Landroid/support/v7/internal/view/menu/ActionMenuPresenter;Landroid/content/Context;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 575
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/e;->jB:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    .line 576
    const/4 v0, 0x0

    sget v1, Lcom/tencent/mm/d;->actionOverflowButtonStyle:I

    invoke-direct {p0, p2, v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 578
    invoke-virtual {p0, v2}, Landroid/support/v7/internal/view/menu/e;->setClickable(Z)V

    .line 579
    invoke-virtual {p0, v2}, Landroid/support/v7/internal/view/menu/e;->setFocusable(Z)V

    .line 580
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/menu/e;->setVisibility(I)V

    .line 581
    invoke-virtual {p0, v2}, Landroid/support/v7/internal/view/menu/e;->setEnabled(Z)V

    .line 582
    return-void
.end method


# virtual methods
.method public final bE()Z
    .locals 1

    .prologue
    .line 596
    const/4 v0, 0x0

    return v0
.end method

.method public final bF()Z
    .locals 1

    .prologue
    .line 600
    const/4 v0, 0x0

    return v0
.end method

.method public final performClick()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 586
    invoke-super {p0}, Landroid/widget/ImageButton;->performClick()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 592
    :goto_0
    return v1

    .line 590
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/menu/e;->playSoundEffect(I)V

    .line 591
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/e;->jB:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->bH()Z

    goto :goto_0
.end method
