.class final Landroid/support/v7/internal/view/menu/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic jB:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

.field private jC:Landroid/support/v7/internal/view/menu/f;


# direct methods
.method public constructor <init>(Landroid/support/v7/internal/view/menu/ActionMenuPresenter;Landroid/support/v7/internal/view/menu/f;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 659
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/d;->jB:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 660
    iput-object p2, p0, Landroid/support/v7/internal/view/menu/d;->jC:Landroid/support/v7/internal/view/menu/f;

    .line 661
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 664
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/d;->jB:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    iget-object v0, v0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->hh:Landroid/support/v7/internal/view/menu/o;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/o;->bW()V

    .line 665
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/d;->jB:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    iget-object v0, v0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->jV:Landroid/support/v7/internal/view/menu/ag;

    check-cast v0, Landroid/view/View;

    .line 666
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/d;->jC:Landroid/support/v7/internal/view/menu/f;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/f;->cB()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 667
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/d;->jB:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/d;->jC:Landroid/support/v7/internal/view/menu/f;

    invoke-static {v0, v1}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->a(Landroid/support/v7/internal/view/menu/ActionMenuPresenter;Landroid/support/v7/internal/view/menu/f;)Landroid/support/v7/internal/view/menu/f;

    .line 669
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/d;->jB:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    invoke-static {v0}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->b(Landroid/support/v7/internal/view/menu/ActionMenuPresenter;)Landroid/support/v7/internal/view/menu/d;

    .line 670
    return-void
.end method
