.class public final Lcom/tencent/mm/ui/tools/gridviewheaders/h;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private cUu:I

.field private hQ:I

.field private hnV:[Landroid/view/View;

.field final synthetic hnW:Lcom/tencent/mm/ui/tools/gridviewheaders/c;

.field private hoa:Z


# direct methods
.method public constructor <init>(Lcom/tencent/mm/ui/tools/gridviewheaders/c;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 496
    iput-object p1, p0, Lcom/tencent/mm/ui/tools/gridviewheaders/h;->hnW:Lcom/tencent/mm/ui/tools/gridviewheaders/c;

    .line 497
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 498
    return-void
.end method


# virtual methods
.method public final a([Landroid/view/View;)V
    .locals 0
    .parameter
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 533
    iput-object p1, p0, Lcom/tencent/mm/ui/tools/gridviewheaders/h;->hnV:[Landroid/view/View;

    .line 534
    return-void
.end method

.method protected final bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 490
    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/gridviewheaders/h;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected final generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 569
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public final getTag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 511
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/tools/gridviewheaders/h;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getTag(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 516
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/tools/gridviewheaders/h;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 520
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/tools/gridviewheaders/h;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected final onMeasure(II)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 575
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 577
    iget v1, p0, Lcom/tencent/mm/ui/tools/gridviewheaders/h;->cUu:I

    if-eq v1, v3, :cond_0

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/gridviewheaders/h;->hnW:Lcom/tencent/mm/ui/tools/gridviewheaders/c;

    invoke-static {v1}, Lcom/tencent/mm/ui/tools/gridviewheaders/c;->b(Lcom/tencent/mm/ui/tools/gridviewheaders/c;)[Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    .line 602
    :cond_0
    :goto_0
    return-void

    .line 582
    :cond_1
    iget v1, p0, Lcom/tencent/mm/ui/tools/gridviewheaders/h;->hQ:I

    iget v2, p0, Lcom/tencent/mm/ui/tools/gridviewheaders/h;->cUu:I

    rem-int/2addr v1, v2

    if-nez v1, :cond_3

    .line 583
    iget-boolean v1, p0, Lcom/tencent/mm/ui/tools/gridviewheaders/h;->hoa:Z

    if-nez v1, :cond_3

    iput-boolean v3, p0, Lcom/tencent/mm/ui/tools/gridviewheaders/h;->hoa:Z

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/gridviewheaders/h;->hnV:[Landroid/view/View;

    array-length v3, v2

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_2

    aget-object v4, v2, v1

    invoke-virtual {v4, p1, p2}, Landroid/view/View;->measure(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iput-boolean v0, p0, Lcom/tencent/mm/ui/tools/gridviewheaders/h;->hoa:Z

    .line 586
    :cond_3
    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/gridviewheaders/h;->getMeasuredHeight()I

    move-result v2

    .line 588
    iget-object v3, p0, Lcom/tencent/mm/ui/tools/gridviewheaders/h;->hnV:[Landroid/view/View;

    array-length v4, v3

    move v1, v0

    move v0, v2

    :goto_2
    if-ge v1, v4, :cond_5

    aget-object v5, v3, v1

    .line 589
    if-eqz v5, :cond_4

    .line 590
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 588
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 595
    :cond_5
    if-eq v0, v2, :cond_0

    .line 599
    const/high16 v1, 0x4000

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 601
    invoke-super {p0, p1, v0}, Landroid/widget/FrameLayout;->onMeasure(II)V

    goto :goto_0
.end method

.method public final setNumColumns(I)V
    .locals 0
    .parameter

    .prologue
    .line 524
    iput p1, p0, Lcom/tencent/mm/ui/tools/gridviewheaders/h;->cUu:I

    .line 525
    return-void
.end method

.method public final setTag(ILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 538
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/tools/gridviewheaders/h;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 539
    return-void
.end method

.method public final setTag(Ljava/lang/Object;)V
    .locals 1
    .parameter

    .prologue
    .line 543
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/tools/gridviewheaders/h;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 544
    return-void
.end method

.method public final x(I)V
    .locals 0
    .parameter

    .prologue
    .line 528
    iput p1, p0, Lcom/tencent/mm/ui/tools/gridviewheaders/h;->hQ:I

    .line 529
    return-void
.end method
