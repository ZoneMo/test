.class final Landroid/support/v4/view/bx;
.super Landroid/support/v4/view/a;
.source "SourceFile"


# instance fields
.field final synthetic fb:Landroid/support/v4/view/ViewPager;


# direct methods
.method constructor <init>(Landroid/support/v4/view/ViewPager;)V
    .locals 0
    .parameter

    .prologue
    .line 2749
    iput-object p1, p0, Landroid/support/v4/view/bx;->fb:Landroid/support/v4/view/ViewPager;

    invoke-direct {p0}, Landroid/support/v4/view/a;-><init>()V

    return-void
.end method

.method private ar()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2801
    iget-object v1, p0, Landroid/support/v4/view/bx;->fb:Landroid/support/v4/view/ViewPager;

    invoke-static {v1}, Landroid/support/v4/view/ViewPager;->b(Landroid/support/v4/view/ViewPager;)Landroid/support/v4/view/an;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v4/view/bx;->fb:Landroid/support/v4/view/ViewPager;

    invoke-static {v1}, Landroid/support/v4/view/ViewPager;->b(Landroid/support/v4/view/ViewPager;)Landroid/support/v4/view/an;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/an;->getCount()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/support/v4/view/a/a;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 2767
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/a;->a(Landroid/view/View;Landroid/support/v4/view/a/a;)V

    .line 2768
    const-class v0, Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/a;->setClassName(Ljava/lang/CharSequence;)V

    .line 2769
    invoke-direct {p0}, Landroid/support/v4/view/bx;->ar()Z

    move-result v0

    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/a;->setScrollable(Z)V

    .line 2770
    iget-object v0, p0, Landroid/support/v4/view/bx;->fb:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2771
    const/16 v0, 0x1000

    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/a;->addAction(I)V

    .line 2773
    :cond_0
    iget-object v0, p0, Landroid/support/v4/view/bx;->fb:Landroid/support/v4/view/ViewPager;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2774
    const/16 v0, 0x2000

    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/a;->addAction(I)V

    .line 2776
    :cond_1
    return-void
.end method

.method public final onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 2753
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/a;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2754
    const-class v0, Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 2755
    invoke-static {}, Landroid/support/v4/view/a/o;->ay()Landroid/support/v4/view/a/o;

    move-result-object v0

    .line 2756
    invoke-direct {p0}, Landroid/support/v4/view/bx;->ar()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/a/o;->setScrollable(Z)V

    .line 2757
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v1

    const/16 v2, 0x1000

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroid/support/v4/view/bx;->fb:Landroid/support/v4/view/ViewPager;

    invoke-static {v1}, Landroid/support/v4/view/ViewPager;->b(Landroid/support/v4/view/ViewPager;)Landroid/support/v4/view/an;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2759
    iget-object v1, p0, Landroid/support/v4/view/bx;->fb:Landroid/support/v4/view/ViewPager;

    invoke-static {v1}, Landroid/support/v4/view/ViewPager;->b(Landroid/support/v4/view/ViewPager;)Landroid/support/v4/view/an;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/an;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/a/o;->setItemCount(I)V

    .line 2760
    iget-object v1, p0, Landroid/support/v4/view/bx;->fb:Landroid/support/v4/view/ViewPager;

    invoke-static {v1}, Landroid/support/v4/view/ViewPager;->c(Landroid/support/v4/view/ViewPager;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/a/o;->setFromIndex(I)V

    .line 2761
    iget-object v1, p0, Landroid/support/v4/view/bx;->fb:Landroid/support/v4/view/ViewPager;

    invoke-static {v1}, Landroid/support/v4/view/ViewPager;->c(Landroid/support/v4/view/ViewPager;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/a/o;->setToIndex(I)V

    .line 2763
    :cond_0
    return-void
.end method

.method public final performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 2780
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/view/a;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2797
    :goto_0
    return v0

    .line 2783
    :cond_0
    sparse-switch p2, :sswitch_data_0

    move v0, v1

    .line 2797
    goto :goto_0

    .line 2785
    :sswitch_0
    iget-object v2, p0, Landroid/support/v4/view/bx;->fb:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v0}, Landroid/support/v4/view/ViewPager;->canScrollHorizontally(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2786
    iget-object v1, p0, Landroid/support/v4/view/bx;->fb:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Landroid/support/v4/view/bx;->fb:Landroid/support/v4/view/ViewPager;

    invoke-static {v2}, Landroid/support/v4/view/ViewPager;->c(Landroid/support/v4/view/ViewPager;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->m(I)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 2789
    goto :goto_0

    .line 2791
    :sswitch_1
    iget-object v2, p0, Landroid/support/v4/view/bx;->fb:Landroid/support/v4/view/ViewPager;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->canScrollHorizontally(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2792
    iget-object v1, p0, Landroid/support/v4/view/bx;->fb:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Landroid/support/v4/view/bx;->fb:Landroid/support/v4/view/ViewPager;

    invoke-static {v2}, Landroid/support/v4/view/ViewPager;->c(Landroid/support/v4/view/ViewPager;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->m(I)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 2795
    goto :goto_0

    .line 2783
    nop

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_1
    .end sparse-switch
.end method
