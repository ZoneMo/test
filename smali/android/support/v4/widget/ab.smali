.class final Landroid/support/v4/widget/ab;
.super Landroid/support/v4/widget/z;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1388
    invoke-direct {p0}, Landroid/support/v4/widget/z;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Landroid/support/v4/widget/SlidingPaneLayout;Landroid/view/View;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1391
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    iget-object v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->gA:Landroid/graphics/Paint;

    invoke-static {p2, v0}, Landroid/support/v4/view/ba;->a(Landroid/view/View;Landroid/graphics/Paint;)V

    .line 1392
    return-void
.end method
