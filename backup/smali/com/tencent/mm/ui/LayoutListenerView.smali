.class Lcom/tencent/mm/ui/LayoutListenerView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private gmJ:Lcom/tencent/mm/ui/ba;

.field private gmK:Lcom/tencent/mm/ui/bb;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 1578
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1579
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1573
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1574
    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/ui/ba;)V
    .locals 0
    .parameter

    .prologue
    .line 1565
    iput-object p1, p0, Lcom/tencent/mm/ui/LayoutListenerView;->gmJ:Lcom/tencent/mm/ui/ba;

    .line 1566
    return-void
.end method

.method public final a(Lcom/tencent/mm/ui/bb;)V
    .locals 0
    .parameter

    .prologue
    .line 1569
    iput-object p1, p0, Lcom/tencent/mm/ui/LayoutListenerView;->gmK:Lcom/tencent/mm/ui/bb;

    .line 1570
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1587
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 1588
    iget-object v0, p0, Lcom/tencent/mm/ui/LayoutListenerView;->gmJ:Lcom/tencent/mm/ui/ba;

    if-eqz v0, :cond_0

    .line 1589
    iget-object v0, p0, Lcom/tencent/mm/ui/LayoutListenerView;->gmJ:Lcom/tencent/mm/ui/ba;

    invoke-interface {v0}, Lcom/tencent/mm/ui/ba;->aEI()V

    .line 1591
    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1595
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 1596
    iget-object v0, p0, Lcom/tencent/mm/ui/LayoutListenerView;->gmK:Lcom/tencent/mm/ui/bb;

    if-eqz v0, :cond_0

    .line 1597
    iget-object v0, p0, Lcom/tencent/mm/ui/LayoutListenerView;->gmK:Lcom/tencent/mm/ui/bb;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/tencent/mm/ui/bb;->onSizeChanged(IIII)V

    .line 1599
    :cond_0
    return-void
.end method
