.class Landroid/support/v4/view/be;
.super Landroid/support/v4/view/bd;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 291
    invoke-direct {p0}, Landroid/support/v4/view/bd;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;ILandroid/graphics/Paint;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 302
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 303
    return-void
.end method

.method public a(Landroid/view/View;Landroid/graphics/Paint;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 312
    invoke-virtual {p1}, Landroid/view/View;->getLayerType()I

    move-result v0

    invoke-virtual {p1, v0, p2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 314
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 315
    return-void
.end method

.method final ag()J
    .locals 2

    .prologue
    .line 294
    invoke-static {}, Landroid/animation/ValueAnimator;->getFrameDelay()J

    move-result-wide v0

    return-wide v0
.end method

.method public final i(Landroid/view/View;)I
    .locals 1
    .parameter

    .prologue
    .line 306
    invoke-virtual {p1}, Landroid/view/View;->getLayerType()I

    move-result v0

    return v0
.end method
