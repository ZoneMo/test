.class final Landroid/support/v7/internal/view/menu/y;
.super Landroid/support/v7/internal/view/menu/l;
.source "SourceFile"

# interfaces
.implements Landroid/view/MenuItem$OnActionExpandListener;


# instance fields
.field final synthetic lg:Landroid/support/v7/internal/view/menu/u;


# direct methods
.method constructor <init>(Landroid/support/v7/internal/view/menu/u;Landroid/support/v4/view/af;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 354
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/y;->lg:Landroid/support/v7/internal/view/menu/u;

    .line 355
    invoke-direct {p0, p2}, Landroid/support/v7/internal/view/menu/l;-><init>(Ljava/lang/Object;)V

    .line 356
    return-void
.end method


# virtual methods
.method public final onMenuItemActionCollapse(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter

    .prologue
    .line 365
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/y;->jY:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/view/af;

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/y;->lg:Landroid/support/v7/internal/view/menu/u;

    invoke-virtual {v1, p1}, Landroid/support/v7/internal/view/menu/u;->j(Landroid/view/MenuItem;)Landroid/support/v4/a/a/b;

    invoke-interface {v0}, Landroid/support/v4/view/af;->ae()Z

    move-result v0

    return v0
.end method

.method public final onMenuItemActionExpand(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter

    .prologue
    .line 360
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/y;->jY:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/view/af;

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/y;->lg:Landroid/support/v7/internal/view/menu/u;

    invoke-virtual {v1, p1}, Landroid/support/v7/internal/view/menu/u;->j(Landroid/view/MenuItem;)Landroid/support/v4/a/a/b;

    invoke-interface {v0}, Landroid/support/v4/view/af;->ad()Z

    move-result v0

    return v0
.end method
