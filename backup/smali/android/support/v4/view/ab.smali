.class Landroid/support/v4/view/ab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/ae;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/MenuItem;Landroid/support/v4/view/af;)Landroid/view/MenuItem;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 196
    return-object p1
.end method

.method public final a(Landroid/view/MenuItem;Landroid/view/View;)Landroid/view/MenuItem;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 166
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/view/MenuItem;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 161
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 162
    return-void
.end method

.method public final b(Landroid/view/MenuItem;I)Landroid/view/MenuItem;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 171
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public final e(Landroid/view/MenuItem;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 176
    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public f(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter

    .prologue
    .line 181
    const/4 v0, 0x0

    return v0
.end method

.method public g(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter

    .prologue
    .line 186
    const/4 v0, 0x0

    return v0
.end method
