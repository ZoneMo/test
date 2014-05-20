.class final Landroid/support/v7/internal/view/menu/f;
.super Landroid/support/v7/internal/view/menu/ac;
.source "SourceFile"


# instance fields
.field final synthetic jB:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Landroid/support/v7/internal/view/menu/ActionMenuPresenter;Landroid/content/Context;Landroid/support/v7/internal/view/menu/o;Landroid/view/View;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 607
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/f;->jB:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    .line 608
    const/4 v0, 0x1

    invoke-direct {p0, p2, p3, p4, v0}, Landroid/support/v7/internal/view/menu/ac;-><init>(Landroid/content/Context;Landroid/support/v7/internal/view/menu/o;Landroid/view/View;Z)V

    .line 609
    iget-object v0, p1, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->jz:Landroid/support/v7/internal/view/menu/g;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/menu/f;->a(Landroid/support/v7/internal/view/menu/af;)V

    .line 610
    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .locals 2

    .prologue
    .line 614
    invoke-super {p0}, Landroid/support/v7/internal/view/menu/ac;->onDismiss()V

    .line 615
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/f;->jB:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    iget-object v0, v0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->hh:Landroid/support/v7/internal/view/menu/o;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/o;->close()V

    .line 616
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/f;->jB:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->a(Landroid/support/v7/internal/view/menu/ActionMenuPresenter;Landroid/support/v7/internal/view/menu/f;)Landroid/support/v7/internal/view/menu/f;

    .line 617
    return-void
.end method
