.class public final Lcom/tencent/mm/ui/tools/gridviewheaders/f;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field final synthetic hnW:Lcom/tencent/mm/ui/tools/gridviewheaders/c;

.field private hnX:I

.field private hnY:I


# direct methods
.method public constructor <init>(Lcom/tencent/mm/ui/tools/gridviewheaders/c;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 411
    iput-object p1, p0, Lcom/tencent/mm/ui/tools/gridviewheaders/f;->hnW:Lcom/tencent/mm/ui/tools/gridviewheaders/c;

    .line 412
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 413
    return-void
.end method


# virtual methods
.method public final aOm()I
    .locals 1

    .prologue
    .line 425
    iget v0, p0, Lcom/tencent/mm/ui/tools/gridviewheaders/f;->hnX:I

    return v0
.end method

.method protected final bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 407
    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/gridviewheaders/f;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected final generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 459
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method protected final onMeasure(II)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 441
    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/gridviewheaders/f;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 442
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 443
    if-nez v1, :cond_0

    .line 444
    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/gridviewheaders/f;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 446
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_1

    .line 447
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    if-nez v1, :cond_1

    .line 448
    iget v1, p0, Lcom/tencent/mm/ui/tools/gridviewheaders/f;->hnY:I

    const/high16 v2, 0x4000

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 453
    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/tencent/mm/ui/tools/gridviewheaders/f;->setMeasuredDimension(II)V

    .line 455
    return-void
.end method

.method public final ou(I)V
    .locals 0
    .parameter

    .prologue
    .line 432
    iput p1, p0, Lcom/tencent/mm/ui/tools/gridviewheaders/f;->hnX:I

    .line 433
    return-void
.end method

.method public final ov(I)V
    .locals 0
    .parameter

    .prologue
    .line 436
    iput p1, p0, Lcom/tencent/mm/ui/tools/gridviewheaders/f;->hnY:I

    .line 437
    return-void
.end method
