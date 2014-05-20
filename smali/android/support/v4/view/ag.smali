.class final Landroid/support/v4/view/ag;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/view/MenuItem;Landroid/support/v4/view/ai;)Landroid/view/MenuItem;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 37
    new-instance v0, Landroid/support/v4/view/ah;

    invoke-direct {v0, p1}, Landroid/support/v4/view/ah;-><init>(Landroid/support/v4/view/ai;)V

    invoke-interface {p0, v0}, Landroid/view/MenuItem;->setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method
