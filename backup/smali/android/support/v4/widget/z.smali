.class Landroid/support/v4/widget/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/widget/y;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/support/v4/widget/SlidingPaneLayout;Landroid/view/View;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1339
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-static {p1, v0, v1, v2, v3}, Landroid/support/v4/view/ba;->a(Landroid/view/View;IIII)V

    .line 1341
    return-void
.end method
