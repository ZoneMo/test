.class final Landroid/support/v4/view/ac;
.super Landroid/support/v4/view/ab;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 200
    invoke-direct {p0}, Landroid/support/v4/view/ab;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/MenuItem;Landroid/support/v4/view/af;)Landroid/view/MenuItem;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 219
    if-nez p2, :cond_0

    .line 220
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/support/v4/view/ag;->a(Landroid/view/MenuItem;Landroid/support/v4/view/ai;)Landroid/view/MenuItem;

    move-result-object v0

    .line 227
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/support/v4/view/ad;

    invoke-direct {v0, p0, p2}, Landroid/support/v4/view/ad;-><init>(Landroid/support/v4/view/ac;Landroid/support/v4/view/af;)V

    invoke-static {p1, v0}, Landroid/support/v4/view/ag;->a(Landroid/view/MenuItem;Landroid/support/v4/view/ai;)Landroid/view/MenuItem;

    move-result-object v0

    goto :goto_0
.end method

.method public final f(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter

    .prologue
    .line 203
    invoke-interface {p1}, Landroid/view/MenuItem;->expandActionView()Z

    move-result v0

    return v0
.end method

.method public final g(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter

    .prologue
    .line 208
    invoke-interface {p1}, Landroid/view/MenuItem;->collapseActionView()Z

    move-result v0

    return v0
.end method
