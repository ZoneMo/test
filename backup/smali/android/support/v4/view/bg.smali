.class Landroid/support/v4/view/bg;
.super Landroid/support/v4/view/bf;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 345
    invoke-direct {p0}, Landroid/support/v4/view/bf;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;IIII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 360
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->postInvalidate(IIII)V

    .line 361
    return-void
.end method

.method public final a(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 364
    invoke-virtual {p1, p2}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 365
    return-void
.end method

.method public final f(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    .line 356
    invoke-virtual {p1}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 357
    return-void
.end method

.method public final g(Landroid/view/View;)I
    .locals 1
    .parameter

    .prologue
    .line 372
    invoke-virtual {p1}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v0

    return v0
.end method

.method public final h(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 376
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 377
    return-void
.end method

.method public final k(Landroid/view/View;)Landroid/view/ViewParent;
    .locals 1
    .parameter

    .prologue
    .line 393
    invoke-virtual {p1}, Landroid/view/View;->getParentForAccessibility()Landroid/view/ViewParent;

    move-result-object v0

    return-object v0
.end method
