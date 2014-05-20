.class final Landroid/support/v7/internal/view/menu/c;
.super Landroid/support/v7/internal/view/menu/r;
.source "SourceFile"


# instance fields
.field final synthetic jB:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Landroid/support/v7/internal/view/menu/ActionMenuPresenter;Landroid/support/v7/internal/view/menu/ak;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 622
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/c;->jB:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    .line 623
    invoke-direct {p0, p2}, Landroid/support/v7/internal/view/menu/r;-><init>(Landroid/support/v7/internal/view/menu/o;)V

    .line 624
    iget-object v0, p1, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->jz:Landroid/support/v7/internal/view/menu/g;

    invoke-virtual {p1, v0}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->a(Landroid/support/v7/internal/view/menu/af;)V

    .line 625
    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter

    .prologue
    .line 629
    invoke-super {p0, p1}, Landroid/support/v7/internal/view/menu/r;->onDismiss(Landroid/content/DialogInterface;)V

    .line 630
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/c;->jB:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    invoke-static {v0}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->a(Landroid/support/v7/internal/view/menu/ActionMenuPresenter;)Landroid/support/v7/internal/view/menu/c;

    .line 631
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/c;->jB:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    const/4 v1, 0x0

    iput v1, v0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->jA:I

    .line 632
    return-void
.end method
