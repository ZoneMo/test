.class final Landroid/support/v7/internal/view/menu/ab;
.super Landroid/support/v7/internal/view/menu/v;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/p;


# instance fields
.field lk:Landroid/view/ActionProvider$VisibilityListener;

.field final synthetic ll:Landroid/support/v7/internal/view/menu/aa;


# direct methods
.method public constructor <init>(Landroid/support/v7/internal/view/menu/aa;Landroid/support/v4/view/n;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/ab;->ll:Landroid/support/v7/internal/view/menu/aa;

    .line 39
    invoke-direct {p0, p1, p2}, Landroid/support/v7/internal/view/menu/v;-><init>(Landroid/support/v7/internal/view/menu/u;Landroid/support/v4/view/n;)V

    .line 40
    return-void
.end method


# virtual methods
.method public final isVisible()Z
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ab;->lf:Landroid/support/v4/view/n;

    const/4 v0, 0x1

    return v0
.end method

.method public final onCreateActionView(Landroid/view/MenuItem;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ab;->lf:Landroid/support/v4/view/n;

    invoke-virtual {v0}, Landroid/support/v4/view/n;->onCreateActionView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final overridesItemVisibility()Z
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ab;->lf:Landroid/support/v4/view/n;

    const/4 v0, 0x0

    return v0
.end method

.method public final refreshVisibility()V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ab;->lf:Landroid/support/v4/view/n;

    invoke-virtual {v0}, Landroid/support/v4/view/n;->refreshVisibility()V

    .line 60
    return-void
.end method

.method public final setVisibilityListener(Landroid/view/ActionProvider$VisibilityListener;)V
    .locals 1
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/ab;->lk:Landroid/view/ActionProvider$VisibilityListener;

    .line 66
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ab;->lf:Landroid/support/v4/view/n;

    if-eqz p1, :cond_0

    :goto_0
    invoke-virtual {v0, p0}, Landroid/support/v4/view/n;->a(Landroid/support/v4/view/p;)V

    .line 67
    return-void

    .line 66
    :cond_0
    const/4 p0, 0x0

    goto :goto_0
.end method
