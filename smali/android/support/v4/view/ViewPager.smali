.class public Landroid/support/v4/view/ViewPager;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# static fields
.field private static final eZ:Landroid/support/v4/view/cd;

.field private static final ec:[I

.field private static final ee:Ljava/util/Comparator;

.field private static final ef:Landroid/view/animation/Interpolator;


# instance fields
.field private ao:Z

.field private dA:F

.field private dB:F

.field private dC:I

.field private dV:I

.field private final du:Landroid/graphics/Rect;

.field private eA:Z

.field private eB:Z

.field private eC:I

.field private eD:I

.field private eE:F

.field private eF:F

.field private eG:I

.field private eH:Landroid/view/VelocityTracker;

.field private eI:I

.field private eJ:I

.field private eK:I

.field private eL:I

.field private eM:Z

.field private eN:Landroid/support/v4/widget/j;

.field private eO:Landroid/support/v4/widget/j;

.field private eP:Z

.field private eQ:Z

.field private eR:Z

.field private eS:I

.field private eT:Landroid/support/v4/view/bz;

.field private eU:Landroid/support/v4/view/bz;

.field private eV:Landroid/support/v4/view/by;

.field private eW:Landroid/support/v4/view/ca;

.field private eX:I

.field private eY:Ljava/util/ArrayList;

.field private ed:I

.field private final eg:Ljava/util/ArrayList;

.field private final eh:Landroid/support/v4/view/bw;

.field private ei:Landroid/support/v4/view/an;

.field private ej:I

.field private ek:I

.field private el:Landroid/os/Parcelable;

.field private em:Ljava/lang/ClassLoader;

.field private en:Landroid/widget/Scroller;

.field private eo:Landroid/support/v4/view/cb;

.field private ep:I

.field private eq:Landroid/graphics/drawable/Drawable;

.field private er:I

.field private es:I

.field private et:F

.field private eu:F

.field private ev:I

.field private ew:I

.field private ex:Z

.field private ey:Z

.field private ez:I

.field private final fa:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 98
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100b3

    aput v2, v0, v1

    sput-object v0, Landroid/support/v4/view/ViewPager;->ec:[I

    .line 116
    new-instance v0, Landroid/support/v4/view/bs;

    invoke-direct {v0}, Landroid/support/v4/view/bs;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewPager;->ee:Ljava/util/Comparator;

    .line 123
    new-instance v0, Landroid/support/v4/view/bt;

    invoke-direct {v0}, Landroid/support/v4/view/bt;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewPager;->ef:Landroid/view/animation/Interpolator;

    .line 223
    new-instance v0, Landroid/support/v4/view/cd;

    invoke-direct {v0}, Landroid/support/v4/view/cd;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewPager;->eZ:Landroid/support/v4/view/cd;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 344
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->eg:Ljava/util/ArrayList;

    .line 131
    new-instance v0, Landroid/support/v4/view/bw;

    invoke-direct {v0}, Landroid/support/v4/view/bw;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->eh:Landroid/support/v4/view/bw;

    .line 133
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->du:Landroid/graphics/Rect;

    .line 137
    iput v1, p0, Landroid/support/v4/view/ViewPager;->ek:I

    .line 138
    iput-object v4, p0, Landroid/support/v4/view/ViewPager;->el:Landroid/os/Parcelable;

    .line 139
    iput-object v4, p0, Landroid/support/v4/view/ViewPager;->em:Ljava/lang/ClassLoader;

    .line 151
    const v0, -0x800001

    iput v0, p0, Landroid/support/v4/view/ViewPager;->et:F

    .line 152
    const v0, 0x7f7fffff

    iput v0, p0, Landroid/support/v4/view/ViewPager;->eu:F

    .line 161
    iput v3, p0, Landroid/support/v4/view/ViewPager;->ez:I

    .line 180
    iput v1, p0, Landroid/support/v4/view/ViewPager;->eG:I

    .line 207
    iput-boolean v3, p0, Landroid/support/v4/view/ViewPager;->eP:Z

    .line 208
    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->eQ:Z

    .line 241
    new-instance v0, Landroid/support/v4/view/bu;

    invoke-direct {v0, p0}, Landroid/support/v4/view/bu;-><init>(Landroid/support/v4/view/ViewPager;)V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->fa:Ljava/lang/Runnable;

    .line 248
    iput v2, p0, Landroid/support/v4/view/ViewPager;->dV:I

    .line 345
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->ah()V

    .line 346
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 349
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->eg:Ljava/util/ArrayList;

    .line 131
    new-instance v0, Landroid/support/v4/view/bw;

    invoke-direct {v0}, Landroid/support/v4/view/bw;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->eh:Landroid/support/v4/view/bw;

    .line 133
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->du:Landroid/graphics/Rect;

    .line 137
    iput v1, p0, Landroid/support/v4/view/ViewPager;->ek:I

    .line 138
    iput-object v4, p0, Landroid/support/v4/view/ViewPager;->el:Landroid/os/Parcelable;

    .line 139
    iput-object v4, p0, Landroid/support/v4/view/ViewPager;->em:Ljava/lang/ClassLoader;

    .line 151
    const v0, -0x800001

    iput v0, p0, Landroid/support/v4/view/ViewPager;->et:F

    .line 152
    const v0, 0x7f7fffff

    iput v0, p0, Landroid/support/v4/view/ViewPager;->eu:F

    .line 161
    iput v3, p0, Landroid/support/v4/view/ViewPager;->ez:I

    .line 180
    iput v1, p0, Landroid/support/v4/view/ViewPager;->eG:I

    .line 207
    iput-boolean v3, p0, Landroid/support/v4/view/ViewPager;->eP:Z

    .line 208
    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->eQ:Z

    .line 241
    new-instance v0, Landroid/support/v4/view/bu;

    invoke-direct {v0, p0}, Landroid/support/v4/view/bu;-><init>(Landroid/support/v4/view/ViewPager;)V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->fa:Ljava/lang/Runnable;

    .line 248
    iput v2, p0, Landroid/support/v4/view/ViewPager;->dV:I

    .line 350
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->ah()V

    .line 351
    return-void
.end method

.method private a(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 2569
    if-nez p1, :cond_2

    .line 2570
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 2572
    :goto_0
    if-nez p2, :cond_0

    .line 2573
    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    move-object v0, v1

    .line 2591
    :goto_1
    return-object v0

    .line 2576
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 2577
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v0

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 2578
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 2579
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v0

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 2581
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2582
    :goto_2
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    if-eq v0, p0, :cond_1

    .line 2583
    check-cast v0, Landroid/view/ViewGroup;

    .line 2584
    iget v2, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 2585
    iget v2, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getRight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 2586
    iget v2, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTop()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 2587
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBottom()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 2589
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_2

    :cond_1
    move-object v0, v1

    .line 2591
    goto :goto_1

    :cond_2
    move-object v1, p1

    goto :goto_0
.end method

.method private a(IF)V
    .locals 11
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 1673
    iget v0, p0, Landroid/support/v4/view/ViewPager;->eS:I

    if-lez v0, :cond_1

    .line 1674
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v5

    .line 1675
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v1

    .line 1676
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v2

    .line 1677
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v6

    .line 1678
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v7

    move v4, v3

    .line 1679
    :goto_0
    if-ge v4, v7, :cond_1

    .line 1680
    invoke-virtual {p0, v4}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1681
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$LayoutParams;

    .line 1682
    iget-boolean v9, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->fg:Z

    if-eqz v9, :cond_6

    .line 1684
    iget v0, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->gravity:I

    and-int/lit8 v0, v0, 0x7

    .line 1685
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move v0, v1

    move v10, v2

    move v2, v1

    move v1, v10

    .line 1703
    :goto_1
    add-int/2addr v0, v5

    .line 1705
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v9

    sub-int/2addr v0, v9

    .line 1706
    if-eqz v0, :cond_0

    .line 1707
    invoke-virtual {v8, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1679
    :cond_0
    :goto_2
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move v10, v1

    move v1, v2

    move v2, v10

    goto :goto_0

    .line 1692
    :pswitch_1
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int/2addr v0, v1

    move v10, v1

    move v1, v2

    move v2, v0

    move v0, v10

    .line 1693
    goto :goto_1

    .line 1695
    :pswitch_2
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int v0, v6, v0

    div-int/lit8 v0, v0, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v10, v2

    move v2, v1

    move v1, v10

    .line 1697
    goto :goto_1

    .line 1699
    :pswitch_3
    sub-int v0, v6, v2

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    sub-int/2addr v0, v9

    .line 1700
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v2, v9

    move v10, v2

    move v2, v1

    move v1, v10

    goto :goto_1

    .line 1712
    :cond_1
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->eT:Landroid/support/v4/view/bz;

    if-eqz v0, :cond_2

    .line 1713
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->eT:Landroid/support/v4/view/bz;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/view/bz;->a(IF)V

    .line 1715
    :cond_2
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->eU:Landroid/support/v4/view/bz;

    if-eqz v0, :cond_3

    .line 1716
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->eU:Landroid/support/v4/view/bz;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/view/bz;->a(IF)V

    .line 1719
    :cond_3
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->eW:Landroid/support/v4/view/ca;

    if-eqz v0, :cond_5

    .line 1720
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    .line 1721
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v2

    move v1, v3

    .line 1722
    :goto_3
    if-ge v1, v2, :cond_5

    .line 1723
    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1724
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$LayoutParams;

    .line 1726
    iget-boolean v0, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->fg:Z

    if-nez v0, :cond_4

    .line 1728
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->aj()I

    .line 1729
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->eW:Landroid/support/v4/view/ca;

    .line 1722
    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 1733
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->eR:Z

    .line 1734
    return-void

    :cond_6
    move v10, v2

    move v2, v1

    move v1, v10

    goto :goto_2

    .line 1685
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private a(IZIZ)V
    .locals 12
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 557
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;->p(I)Landroid/support/v4/view/bw;

    move-result-object v1

    .line 558
    const/4 v0, 0x0

    .line 559
    if-eqz v1, :cond_0

    .line 560
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->aj()I

    move-result v0

    .line 561
    int-to-float v0, v0

    iget v2, p0, Landroid/support/v4/view/ViewPager;->et:F

    iget v1, v1, Landroid/support/v4/view/bw;->ff:F

    iget v3, p0, Landroid/support/v4/view/ViewPager;->eu:F

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 564
    :cond_0
    if-eqz p2, :cond_6

    .line 565
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v1

    if-nez v1, :cond_3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 566
    :goto_0
    if-eqz p4, :cond_1

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->eT:Landroid/support/v4/view/bz;

    if-eqz v0, :cond_1

    .line 567
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->eT:Landroid/support/v4/view/bz;

    invoke-interface {v0, p1}, Landroid/support/v4/view/bz;->j(I)V

    .line 569
    :cond_1
    if-eqz p4, :cond_2

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->eU:Landroid/support/v4/view/bz;

    if-eqz v0, :cond_2

    .line 570
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->eU:Landroid/support/v4/view/bz;

    invoke-interface {v0, p1}, Landroid/support/v4/view/bz;->j(I)V

    .line 583
    :cond_2
    :goto_1
    return-void

    .line 565
    :cond_3
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v2

    sub-int v3, v0, v1

    rsub-int/lit8 v4, v2, 0x0

    if-nez v3, :cond_4

    if-nez v4, :cond_4

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->e(Z)V

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->populate()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->l(I)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->l(I)V

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->aj()I

    move-result v0

    div-int/lit8 v5, v0, 0x2

    const/high16 v6, 0x3f80

    const/high16 v7, 0x3f80

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v7, v8

    int-to-float v8, v0

    div-float/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    int-to-float v7, v5

    int-to-float v5, v5

    const/high16 v8, 0x3f00

    sub-float/2addr v6, v8

    float-to-double v8, v6

    const-wide v10, 0x3fde28c7460698c7L

    mul-double/2addr v8, v10

    double-to-float v6, v8

    float-to-double v8, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v6, v8

    mul-float/2addr v5, v6

    add-float/2addr v5, v7

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-lez v6, :cond_5

    const/high16 v0, 0x447a

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    mul-float/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    :goto_2
    const/16 v5, 0x258

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->en:Landroid/widget/Scroller;

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    invoke-static {p0}, Landroid/support/v4/view/ba;->f(Landroid/view/View;)V

    goto/16 :goto_0

    :cond_5
    int-to-float v0, v0

    iget-object v5, p0, Landroid/support/v4/view/ViewPager;->ei:Landroid/support/v4/view/an;

    iget v5, p0, Landroid/support/v4/view/ViewPager;->ej:I

    const/high16 v5, 0x3f80

    mul-float/2addr v0, v5

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Landroid/support/v4/view/ViewPager;->ep:I

    int-to-float v6, v6

    add-float/2addr v0, v6

    div-float v0, v5, v0

    const/high16 v5, 0x4040

    add-float/2addr v0, v5

    const/high16 v5, 0x42c8

    mul-float/2addr v0, v5

    float-to-int v0, v0

    goto :goto_2

    .line 573
    :cond_6
    if-eqz p4, :cond_7

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->eT:Landroid/support/v4/view/bz;

    if-eqz v1, :cond_7

    .line 574
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->eT:Landroid/support/v4/view/bz;

    invoke-interface {v1, p1}, Landroid/support/v4/view/bz;->j(I)V

    .line 576
    :cond_7
    if-eqz p4, :cond_8

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->eU:Landroid/support/v4/view/bz;

    if-eqz v1, :cond_8

    .line 577
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->eU:Landroid/support/v4/view/bz;

    invoke-interface {v1, p1}, Landroid/support/v4/view/bz;->j(I)V

    .line 579
    :cond_8
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/support/v4/view/ViewPager;->e(Z)V

    .line 580
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    .line 581
    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->q(I)Z

    goto/16 :goto_1
.end method

.method private a(IZZ)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 509
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v4/view/ViewPager;->a(IZZI)V

    .line 510
    return-void
.end method

.method private a(IZZI)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 513
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ei:Landroid/support/v4/view/an;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ei:Landroid/support/v4/view/an;

    invoke-virtual {v0}, Landroid/support/v4/view/an;->getCount()I

    move-result v0

    if-gtz v0, :cond_1

    .line 514
    :cond_0
    invoke-direct {p0, v1}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 553
    :goto_0
    return-void

    .line 517
    :cond_1
    if-nez p3, :cond_2

    iget v0, p0, Landroid/support/v4/view/ViewPager;->ej:I

    if-ne v0, p1, :cond_2

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->eg:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_2

    .line 518
    invoke-direct {p0, v1}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    goto :goto_0

    .line 522
    :cond_2
    if-gez p1, :cond_5

    move p1, v1

    .line 527
    :cond_3
    :goto_1
    iget v0, p0, Landroid/support/v4/view/ViewPager;->ez:I

    .line 528
    iget v2, p0, Landroid/support/v4/view/ViewPager;->ej:I

    add-int/2addr v2, v0

    if-gt p1, v2, :cond_4

    iget v2, p0, Landroid/support/v4/view/ViewPager;->ej:I

    sub-int v0, v2, v0

    if-ge p1, v0, :cond_6

    :cond_4
    move v2, v1

    .line 532
    :goto_2
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->eg:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_6

    .line 533
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->eg:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/bw;

    iput-boolean v3, v0, Landroid/support/v4/view/bw;->fd:Z

    .line 532
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 524
    :cond_5
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ei:Landroid/support/v4/view/an;

    invoke-virtual {v0}, Landroid/support/v4/view/an;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_3

    .line 525
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ei:Landroid/support/v4/view/an;

    invoke-virtual {v0}, Landroid/support/v4/view/an;->getCount()I

    move-result v0

    add-int/lit8 p1, v0, -0x1

    goto :goto_1

    .line 536
    :cond_6
    iget v0, p0, Landroid/support/v4/view/ViewPager;->ej:I

    if-eq v0, p1, :cond_7

    move v1, v3

    .line 538
    :cond_7
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->eP:Z

    if-eqz v0, :cond_a

    .line 541
    iput p1, p0, Landroid/support/v4/view/ViewPager;->ej:I

    .line 542
    if-eqz v1, :cond_8

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->eT:Landroid/support/v4/view/bz;

    if-eqz v0, :cond_8

    .line 543
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->eT:Landroid/support/v4/view/bz;

    invoke-interface {v0, p1}, Landroid/support/v4/view/bz;->j(I)V

    .line 545
    :cond_8
    if-eqz v1, :cond_9

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->eU:Landroid/support/v4/view/bz;

    if-eqz v0, :cond_9

    .line 546
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->eU:Landroid/support/v4/view/bz;

    invoke-interface {v0, p1}, Landroid/support/v4/view/bz;->j(I)V

    .line 548
    :cond_9
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->requestLayout()V

    goto :goto_0

    .line 550
    :cond_a
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;->o(I)V

    .line 551
    invoke-direct {p0, p1, p2, p4, v1}, Landroid/support/v4/view/ViewPager;->a(IZIZ)V

    goto :goto_0
.end method

.method static synthetic a(Landroid/support/v4/view/ViewPager;)V
    .locals 1
    .parameter

    .prologue
    .line 84
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->l(I)V

    return-void
.end method

.method private a(Landroid/support/v4/view/bw;ILandroid/support/v4/view/bw;)V
    .locals 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/high16 v10, 0x3f80

    .line 1123
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ei:Landroid/support/v4/view/an;

    invoke-virtual {v0}, Landroid/support/v4/view/an;->getCount()I

    move-result v6

    .line 1124
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->aj()I

    move-result v0

    .line 1125
    if-lez v0, :cond_0

    iget v1, p0, Landroid/support/v4/view/ViewPager;->ep:I

    int-to-float v1, v1

    int-to-float v0, v0

    div-float v0, v1, v0

    move v5, v0

    .line 1127
    :goto_0
    if-eqz p3, :cond_6

    .line 1128
    iget v0, p3, Landroid/support/v4/view/bw;->position:I

    .line 1130
    iget v1, p1, Landroid/support/v4/view/bw;->position:I

    if-ge v0, v1, :cond_3

    .line 1133
    iget v1, p3, Landroid/support/v4/view/bw;->ff:F

    iget v2, p3, Landroid/support/v4/view/bw;->fe:F

    add-float/2addr v1, v2

    add-float v3, v1, v5

    .line 1134
    add-int/lit8 v2, v0, 0x1

    move v1, v4

    .line 1135
    :goto_1
    iget v0, p1, Landroid/support/v4/view/bw;->position:I

    if-gt v2, v0, :cond_6

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->eg:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    .line 1136
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->eg:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/bw;

    .line 1137
    :goto_2
    iget v7, v0, Landroid/support/v4/view/bw;->position:I

    if-le v2, v7, :cond_1

    iget-object v7, p0, Landroid/support/v4/view/ViewPager;->eg:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ge v1, v7, :cond_1

    .line 1138
    add-int/lit8 v1, v1, 0x1

    .line 1139
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->eg:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/bw;

    goto :goto_2

    .line 1125
    :cond_0
    const/4 v0, 0x0

    move v5, v0

    goto :goto_0

    .line 1141
    :cond_1
    :goto_3
    iget v7, v0, Landroid/support/v4/view/bw;->position:I

    if-ge v2, v7, :cond_2

    .line 1144
    iget-object v7, p0, Landroid/support/v4/view/ViewPager;->ei:Landroid/support/v4/view/an;

    add-float v7, v10, v5

    add-float/2addr v3, v7

    .line 1145
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1147
    :cond_2
    iput v3, v0, Landroid/support/v4/view/bw;->ff:F

    .line 1148
    iget v0, v0, Landroid/support/v4/view/bw;->fe:F

    add-float/2addr v0, v5

    add-float/2addr v3, v0

    .line 1135
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1150
    :cond_3
    iget v1, p1, Landroid/support/v4/view/bw;->position:I

    if-le v0, v1, :cond_6

    .line 1151
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->eg:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 1153
    iget v3, p3, Landroid/support/v4/view/bw;->ff:F

    .line 1154
    add-int/lit8 v2, v0, -0x1

    .line 1155
    :goto_4
    iget v0, p1, Landroid/support/v4/view/bw;->position:I

    if-lt v2, v0, :cond_6

    if-ltz v1, :cond_6

    .line 1156
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->eg:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/bw;

    .line 1157
    :goto_5
    iget v7, v0, Landroid/support/v4/view/bw;->position:I

    if-ge v2, v7, :cond_4

    if-lez v1, :cond_4

    .line 1158
    add-int/lit8 v1, v1, -0x1

    .line 1159
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->eg:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/bw;

    goto :goto_5

    .line 1161
    :cond_4
    :goto_6
    iget v7, v0, Landroid/support/v4/view/bw;->position:I

    if-le v2, v7, :cond_5

    .line 1164
    iget-object v7, p0, Landroid/support/v4/view/ViewPager;->ei:Landroid/support/v4/view/an;

    add-float v7, v10, v5

    sub-float/2addr v3, v7

    .line 1165
    add-int/lit8 v2, v2, -0x1

    goto :goto_6

    .line 1167
    :cond_5
    iget v7, v0, Landroid/support/v4/view/bw;->fe:F

    add-float/2addr v7, v5

    sub-float/2addr v3, v7

    .line 1168
    iput v3, v0, Landroid/support/v4/view/bw;->ff:F

    .line 1155
    add-int/lit8 v2, v2, -0x1

    goto :goto_4

    .line 1174
    :cond_6
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->eg:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 1175
    iget v2, p1, Landroid/support/v4/view/bw;->ff:F

    .line 1176
    iget v0, p1, Landroid/support/v4/view/bw;->position:I

    add-int/lit8 v1, v0, -0x1

    .line 1177
    iget v0, p1, Landroid/support/v4/view/bw;->position:I

    if-nez v0, :cond_7

    iget v0, p1, Landroid/support/v4/view/bw;->ff:F

    :goto_7
    iput v0, p0, Landroid/support/v4/view/ViewPager;->et:F

    .line 1178
    iget v0, p1, Landroid/support/v4/view/bw;->position:I

    add-int/lit8 v3, v6, -0x1

    if-ne v0, v3, :cond_8

    iget v0, p1, Landroid/support/v4/view/bw;->ff:F

    iget v3, p1, Landroid/support/v4/view/bw;->fe:F

    add-float/2addr v0, v3

    sub-float/2addr v0, v10

    :goto_8
    iput v0, p0, Landroid/support/v4/view/ViewPager;->eu:F

    .line 1181
    add-int/lit8 v0, p2, -0x1

    move v3, v0

    :goto_9
    if-ltz v3, :cond_b

    .line 1182
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->eg:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/bw;

    .line 1183
    :goto_a
    iget v8, v0, Landroid/support/v4/view/bw;->position:I

    if-le v1, v8, :cond_9

    .line 1184
    iget-object v8, p0, Landroid/support/v4/view/ViewPager;->ei:Landroid/support/v4/view/an;

    add-int/lit8 v1, v1, -0x1

    add-float v8, v10, v5

    sub-float/2addr v2, v8

    goto :goto_a

    .line 1177
    :cond_7
    const v0, -0x800001

    goto :goto_7

    .line 1178
    :cond_8
    const v0, 0x7f7fffff

    goto :goto_8

    .line 1186
    :cond_9
    iget v8, v0, Landroid/support/v4/view/bw;->fe:F

    add-float/2addr v8, v5

    sub-float/2addr v2, v8

    .line 1187
    iput v2, v0, Landroid/support/v4/view/bw;->ff:F

    .line 1188
    iget v0, v0, Landroid/support/v4/view/bw;->position:I

    if-nez v0, :cond_a

    iput v2, p0, Landroid/support/v4/view/ViewPager;->et:F

    .line 1181
    :cond_a
    add-int/lit8 v0, v3, -0x1

    add-int/lit8 v1, v1, -0x1

    move v3, v0

    goto :goto_9

    .line 1190
    :cond_b
    iget v0, p1, Landroid/support/v4/view/bw;->ff:F

    iget v1, p1, Landroid/support/v4/view/bw;->fe:F

    add-float/2addr v0, v1

    add-float v2, v0, v5

    .line 1191
    iget v0, p1, Landroid/support/v4/view/bw;->position:I

    add-int/lit8 v1, v0, 0x1

    .line 1193
    add-int/lit8 v0, p2, 0x1

    move v3, v0

    :goto_b
    if-ge v3, v7, :cond_e

    .line 1194
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->eg:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/bw;

    .line 1195
    :goto_c
    iget v8, v0, Landroid/support/v4/view/bw;->position:I

    if-ge v1, v8, :cond_c

    .line 1196
    iget-object v8, p0, Landroid/support/v4/view/ViewPager;->ei:Landroid/support/v4/view/an;

    add-int/lit8 v1, v1, 0x1

    add-float v8, v10, v5

    add-float/2addr v2, v8

    goto :goto_c

    .line 1198
    :cond_c
    iget v8, v0, Landroid/support/v4/view/bw;->position:I

    add-int/lit8 v9, v6, -0x1

    if-ne v8, v9, :cond_d

    .line 1199
    iget v8, v0, Landroid/support/v4/view/bw;->fe:F

    add-float/2addr v8, v2

    sub-float/2addr v8, v10

    iput v8, p0, Landroid/support/v4/view/ViewPager;->eu:F

    .line 1201
    :cond_d
    iput v2, v0, Landroid/support/v4/view/bw;->ff:F

    .line 1202
    iget v0, v0, Landroid/support/v4/view/bw;->fe:F

    add-float/2addr v0, v5

    add-float/2addr v2, v0

    .line 1193
    add-int/lit8 v0, v3, 0x1

    add-int/lit8 v1, v1, 0x1

    move v3, v0

    goto :goto_b

    .line 1205
    :cond_e
    iput-boolean v4, p0, Landroid/support/v4/view/ViewPager;->eQ:Z

    .line 1206
    return-void
.end method

.method private a(F)Z
    .locals 10
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2044
    .line 2046
    iget v0, p0, Landroid/support/v4/view/ViewPager;->eE:F

    sub-float/2addr v0, p1

    .line 2047
    iput p1, p0, Landroid/support/v4/view/ViewPager;->eE:F

    .line 2049
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    .line 2050
    add-float v5, v1, v0

    .line 2051
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->aj()I

    move-result v7

    .line 2053
    int-to-float v0, v7

    iget v1, p0, Landroid/support/v4/view/ViewPager;->et:F

    mul-float v4, v0, v1

    .line 2054
    int-to-float v0, v7

    iget v1, p0, Landroid/support/v4/view/ViewPager;->eu:F

    mul-float v6, v0, v1

    .line 2058
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->eg:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/bw;

    .line 2059
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->eg:Ljava/util/ArrayList;

    iget-object v8, p0, Landroid/support/v4/view/ViewPager;->eg:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/bw;

    .line 2060
    iget v8, v0, Landroid/support/v4/view/bw;->position:I

    if-eqz v8, :cond_5

    .line 2062
    iget v0, v0, Landroid/support/v4/view/bw;->ff:F

    int-to-float v4, v7

    mul-float/2addr v0, v4

    move v4, v0

    move v0, v2

    .line 2064
    :goto_0
    iget v8, v1, Landroid/support/v4/view/bw;->position:I

    iget-object v9, p0, Landroid/support/v4/view/ViewPager;->ei:Landroid/support/v4/view/an;

    invoke-virtual {v9}, Landroid/support/v4/view/an;->getCount()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-eq v8, v9, :cond_4

    .line 2066
    iget v1, v1, Landroid/support/v4/view/bw;->ff:F

    int-to-float v3, v7

    mul-float/2addr v1, v3

    move v3, v2

    .line 2069
    :goto_1
    cmpg-float v6, v5, v4

    if-gez v6, :cond_1

    .line 2070
    if-eqz v0, :cond_0

    .line 2071
    sub-float v0, v4, v5

    .line 2072
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->eN:Landroid/support/v4/widget/j;

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    int-to-float v2, v7

    div-float/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/support/v4/widget/j;->b(F)Z

    move-result v2

    .line 2083
    :cond_0
    :goto_2
    iget v0, p0, Landroid/support/v4/view/ViewPager;->eE:F

    float-to-int v1, v4

    int-to-float v1, v1

    sub-float v1, v4, v1

    add-float/2addr v0, v1

    iput v0, p0, Landroid/support/v4/view/ViewPager;->eE:F

    .line 2084
    float-to-int v0, v4

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    .line 2085
    float-to-int v0, v4

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->q(I)Z

    .line 2087
    return v2

    .line 2075
    :cond_1
    cmpl-float v0, v5, v1

    if-lez v0, :cond_3

    .line 2076
    if-eqz v3, :cond_2

    .line 2077
    sub-float v0, v5, v1

    .line 2078
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->eO:Landroid/support/v4/widget/j;

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    int-to-float v3, v7

    div-float/2addr v0, v3

    invoke-virtual {v2, v0}, Landroid/support/v4/widget/j;->b(F)Z

    move-result v2

    :cond_2
    move v4, v1

    .line 2080
    goto :goto_2

    :cond_3
    move v4, v5

    goto :goto_2

    :cond_4
    move v1, v6

    goto :goto_1

    :cond_5
    move v0, v3

    goto :goto_0
.end method

.method private a(Landroid/view/View;ZIII)Z
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 2440
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    move-object v6, p1

    .line 2441
    check-cast v6, Landroid/view/ViewGroup;

    .line 2442
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v8

    .line 2443
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v9

    .line 2444
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 2446
    add-int/lit8 v0, v0, -0x1

    move v7, v0

    :goto_0
    if-ltz v7, :cond_2

    .line 2449
    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2450
    add-int v0, p4, v8

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    if-lt v0, v3, :cond_1

    add-int v0, p4, v8

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v3

    if-ge v0, v3, :cond_1

    add-int v0, p5, v9

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt v0, v3, :cond_1

    add-int v0, p5, v9

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v3

    if-ge v0, v3, :cond_1

    add-int v0, p4, v8

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int v4, v0, v3

    add-int v0, p5, v9

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v5, v0, v3

    move-object v0, p0

    move v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/view/ViewPager;->a(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2459
    :cond_0
    :goto_1
    return v2

    .line 2446
    :cond_1
    add-int/lit8 v0, v7, -0x1

    move v7, v0

    goto :goto_0

    .line 2459
    :cond_2
    if-eqz p2, :cond_3

    neg-int v0, p3

    invoke-static {p1, v0}, Landroid/support/v4/view/ba;->a(Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private ah()V
    .locals 4

    .prologue
    .line 354
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->setWillNotDraw(Z)V

    .line 355
    const/high16 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->setDescendantFocusability(I)V

    .line 356
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->setFocusable(Z)V

    .line 357
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 358
    new-instance v1, Landroid/widget/Scroller;

    sget-object v2, Landroid/support/v4/view/ViewPager;->ef:Landroid/view/animation/Interpolator;

    invoke-direct {v1, v0, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Landroid/support/v4/view/ViewPager;->en:Landroid/widget/Scroller;

    .line 359
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 360
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 362
    invoke-static {v1}, Landroid/support/v4/view/bj;->a(Landroid/view/ViewConfiguration;)I

    move-result v3

    iput v3, p0, Landroid/support/v4/view/ViewPager;->dC:I

    .line 363
    const/high16 v3, 0x43c8

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, p0, Landroid/support/v4/view/ViewPager;->eI:I

    .line 364
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/support/v4/view/ViewPager;->eJ:I

    .line 365
    new-instance v1, Landroid/support/v4/widget/j;

    invoke-direct {v1, v0}, Landroid/support/v4/widget/j;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v4/view/ViewPager;->eN:Landroid/support/v4/widget/j;

    .line 366
    new-instance v1, Landroid/support/v4/widget/j;

    invoke-direct {v1, v0}, Landroid/support/v4/widget/j;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v4/view/ViewPager;->eO:Landroid/support/v4/widget/j;

    .line 368
    const/high16 v0, 0x41c8

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->eK:I

    .line 369
    const/high16 v0, 0x4000

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->eL:I

    .line 370
    const/high16 v0, 0x4180

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->eC:I

    .line 372
    new-instance v0, Landroid/support/v4/view/bx;

    invoke-direct {v0, p0}, Landroid/support/v4/view/bx;-><init>(Landroid/support/v4/view/ViewPager;)V

    invoke-static {p0, v0}, Landroid/support/v4/view/ba;->a(Landroid/view/View;Landroid/support/v4/view/a;)V

    .line 374
    invoke-static {p0}, Landroid/support/v4/view/ba;->g(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_0

    .line 376
    invoke-static {p0}, Landroid/support/v4/view/ba;->h(Landroid/view/View;)V

    .line 379
    :cond_0
    return-void
.end method

.method private aj()I
    .locals 2

    .prologue
    .line 478
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private am()V
    .locals 4

    .prologue
    .line 1107
    iget v0, p0, Landroid/support/v4/view/ViewPager;->eX:I

    if-eqz v0, :cond_2

    .line 1108
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->eY:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->eY:Ljava/util/ArrayList;

    .line 1113
    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v1

    .line 1114
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_1

    .line 1115
    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1116
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->eY:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1114
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1111
    :cond_0
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->eY:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 1118
    :cond_1
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->eY:Ljava/util/ArrayList;

    sget-object v1, Landroid/support/v4/view/ViewPager;->eZ:Landroid/support/v4/view/cd;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1120
    :cond_2
    return-void
.end method

.method private an()Landroid/support/v4/view/bw;
    .locals 13

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 2095
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->aj()I

    move-result v1

    .line 2096
    if-lez v1, :cond_3

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    int-to-float v4, v1

    div-float/2addr v0, v4

    move v9, v0

    .line 2097
    :goto_0
    if-lez v1, :cond_4

    iget v0, p0, Landroid/support/v4/view/ViewPager;->ep:I

    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    move v1, v0

    .line 2098
    :goto_1
    const/4 v5, -0x1

    .line 2101
    const/4 v4, 0x1

    .line 2103
    const/4 v0, 0x0

    move v6, v2

    move v7, v2

    move v8, v5

    move v2, v3

    move v5, v4

    move-object v4, v0

    .line 2104
    :goto_2
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->eg:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 2105
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->eg:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/bw;

    .line 2107
    if-nez v5, :cond_6

    iget v10, v0, Landroid/support/v4/view/bw;->position:I

    add-int/lit8 v11, v8, 0x1

    if-eq v10, v11, :cond_6

    .line 2109
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->eh:Landroid/support/v4/view/bw;

    .line 2110
    add-float/2addr v6, v7

    add-float/2addr v6, v1

    iput v6, v0, Landroid/support/v4/view/bw;->ff:F

    .line 2111
    add-int/lit8 v6, v8, 0x1

    iput v6, v0, Landroid/support/v4/view/bw;->position:I

    .line 2112
    iget-object v6, p0, Landroid/support/v4/view/ViewPager;->ei:Landroid/support/v4/view/an;

    iget v6, v0, Landroid/support/v4/view/bw;->position:I

    const/high16 v6, 0x3f80

    iput v6, v0, Landroid/support/v4/view/bw;->fe:F

    .line 2113
    add-int/lit8 v2, v2, -0x1

    move-object v12, v0

    move v0, v2

    move-object v2, v12

    .line 2115
    :goto_3
    iget v6, v2, Landroid/support/v4/view/bw;->ff:F

    .line 2118
    iget v7, v2, Landroid/support/v4/view/bw;->fe:F

    add-float/2addr v7, v6

    add-float/2addr v7, v1

    .line 2119
    if-nez v5, :cond_0

    cmpl-float v5, v9, v6

    if-ltz v5, :cond_2

    .line 2120
    :cond_0
    cmpg-float v4, v9, v7

    if-ltz v4, :cond_1

    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->eg:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v0, v4, :cond_5

    :cond_1
    move-object v4, v2

    .line 2133
    :cond_2
    return-object v4

    :cond_3
    move v9, v2

    .line 2096
    goto :goto_0

    :cond_4
    move v1, v2

    .line 2097
    goto :goto_1

    .line 2127
    :cond_5
    iget v5, v2, Landroid/support/v4/view/bw;->position:I

    .line 2128
    iget v4, v2, Landroid/support/v4/view/bw;->fe:F

    .line 2104
    add-int/lit8 v0, v0, 0x1

    move v7, v6

    move v8, v5

    move v5, v3

    move v6, v4

    move-object v4, v2

    move v2, v0

    goto :goto_2

    :cond_6
    move-object v12, v0

    move v0, v2

    move-object v2, v12

    goto :goto_3
.end method

.method private ao()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2388
    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->eA:Z

    .line 2389
    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->eB:Z

    .line 2391
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->eH:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 2392
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->eH:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 2393
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->eH:Landroid/view/VelocityTracker;

    .line 2395
    :cond_0
    return-void
.end method

.method private ap()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2595
    iget v1, p0, Landroid/support/v4/view/ViewPager;->ej:I

    if-lez v1, :cond_0

    .line 2596
    iget v1, p0, Landroid/support/v4/view/ViewPager;->ej:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1, v0}, Landroid/support/v4/view/ViewPager;->a(IZ)V

    .line 2599
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic aq()[I
    .locals 1

    .prologue
    .line 84
    sget-object v0, Landroid/support/v4/view/ViewPager;->ec:[I

    return-object v0
.end method

.method private arrowScroll(I)Z
    .locals 9
    .parameter

    .prologue
    const/4 v1, 0x0

    const/16 v8, 0x42

    const/16 v7, 0x11

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2503
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->findFocus()Landroid/view/View;

    move-result-object v2

    .line 2504
    if-ne v2, p0, :cond_2

    move-object v0, v1

    .line 2531
    :goto_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    invoke-virtual {v1, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 2533
    if-eqz v1, :cond_8

    if-eq v1, v0, :cond_8

    .line 2534
    if-ne p1, v7, :cond_6

    .line 2537
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->du:Landroid/graphics/Rect;

    invoke-direct {p0, v2, v1}, Landroid/support/v4/view/ViewPager;->a(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    .line 2538
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->du:Landroid/graphics/Rect;

    invoke-direct {p0, v3, v0}, Landroid/support/v4/view/ViewPager;->a(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    .line 2539
    if-eqz v0, :cond_5

    if-lt v2, v3, :cond_5

    .line 2540
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->ap()Z

    move-result v0

    :goto_1
    move v4, v0

    .line 2562
    :cond_0
    if-eqz v4, :cond_1

    .line 2563
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->playSoundEffect(I)V

    .line 2565
    :cond_1
    return v4

    .line 2506
    :cond_2
    if-eqz v2, :cond_d

    .line 2508
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_2
    instance-of v5, v0, Landroid/view/ViewGroup;

    if-eqz v5, :cond_e

    .line 2510
    if-ne v0, p0, :cond_3

    move v0, v3

    .line 2515
    :goto_3
    if-nez v0, :cond_d

    .line 2517
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 2518
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2519
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_4
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_4

    .line 2521
    const-string v2, " => "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2520
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_4

    .line 2509
    :cond_3
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_2

    .line 2523
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "arrowScroll tried to find focus based on non-child current focused view "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-object v0, v1

    .line 2525
    goto/16 :goto_0

    .line 2542
    :cond_5
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    move-result v0

    goto :goto_1

    .line 2544
    :cond_6
    if-ne p1, v8, :cond_0

    .line 2547
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->du:Landroid/graphics/Rect;

    invoke-direct {p0, v2, v1}, Landroid/support/v4/view/ViewPager;->a(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    .line 2548
    iget-object v5, p0, Landroid/support/v4/view/ViewPager;->du:Landroid/graphics/Rect;

    invoke-direct {p0, v5, v0}, Landroid/support/v4/view/ViewPager;->a(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->left:I

    .line 2549
    if-eqz v0, :cond_7

    if-le v2, v5, :cond_b

    .line 2550
    :cond_7
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    move-result v0

    goto/16 :goto_1

    .line 2555
    :cond_8
    if-eq p1, v7, :cond_9

    if-ne p1, v3, :cond_a

    .line 2557
    :cond_9
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->ap()Z

    move-result v0

    goto/16 :goto_1

    .line 2558
    :cond_a
    if-eq p1, v8, :cond_b

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 2560
    :cond_b
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ei:Landroid/support/v4/view/an;

    if-eqz v0, :cond_c

    iget v0, p0, Landroid/support/v4/view/ViewPager;->ej:I

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->ei:Landroid/support/v4/view/an;

    invoke-virtual {v1}, Landroid/support/v4/view/an;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_c

    iget v0, p0, Landroid/support/v4/view/ViewPager;->ej:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0, v3}, Landroid/support/v4/view/ViewPager;->a(IZ)V

    move v0, v3

    goto/16 :goto_1

    :cond_c
    move v0, v4

    goto/16 :goto_1

    :cond_d
    move-object v0, v2

    goto/16 :goto_0

    :cond_e
    move v0, v4

    goto/16 :goto_3
.end method

.method static synthetic b(Landroid/support/v4/view/ViewPager;)Landroid/support/v4/view/an;
    .locals 1
    .parameter

    .prologue
    .line 84
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ei:Landroid/support/v4/view/an;

    return-object v0
.end method

.method private b(II)Landroid/support/v4/view/bw;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 831
    new-instance v0, Landroid/support/v4/view/bw;

    invoke-direct {v0}, Landroid/support/v4/view/bw;-><init>()V

    .line 832
    iput p1, v0, Landroid/support/v4/view/bw;->position:I

    .line 833
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->ei:Landroid/support/v4/view/an;

    invoke-virtual {v1, p0, p1}, Landroid/support/v4/view/an;->a(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v4/view/bw;->fc:Ljava/lang/Object;

    .line 834
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->ei:Landroid/support/v4/view/an;

    const/high16 v1, 0x3f80

    iput v1, v0, Landroid/support/v4/view/bw;->fe:F

    .line 835
    if-ltz p2, :cond_0

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->eg:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p2, v1, :cond_1

    .line 836
    :cond_0
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->eg:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 840
    :goto_0
    return-object v0

    .line 838
    :cond_1
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->eg:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic c(Landroid/support/v4/view/ViewPager;)I
    .locals 1
    .parameter

    .prologue
    .line 84
    iget v0, p0, Landroid/support/v4/view/ViewPager;->ej:I

    return v0
.end method

.method private d(Landroid/view/MotionEvent;)V
    .locals 3
    .parameter

    .prologue
    .line 2373
    invoke-static {p1}, Landroid/support/v4/view/aj;->b(Landroid/view/MotionEvent;)I

    move-result v0

    .line 2374
    invoke-static {p1, v0}, Landroid/support/v4/view/aj;->b(Landroid/view/MotionEvent;I)I

    move-result v1

    .line 2375
    iget v2, p0, Landroid/support/v4/view/ViewPager;->eG:I

    if-ne v1, v2, :cond_0

    .line 2378
    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 2379
    :goto_0
    invoke-static {p1, v0}, Landroid/support/v4/view/aj;->c(Landroid/view/MotionEvent;I)F

    move-result v1

    iput v1, p0, Landroid/support/v4/view/ViewPager;->eE:F

    .line 2380
    invoke-static {p1, v0}, Landroid/support/v4/view/aj;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->eG:I

    .line 2381
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->eH:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 2382
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->eH:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 2385
    :cond_0
    return-void

    .line 2378
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e(Z)V
    .locals 7
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 1737
    iget v0, p0, Landroid/support/v4/view/ViewPager;->dV:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    move v0, v4

    .line 1738
    :goto_0
    if-eqz v0, :cond_1

    .line 1740
    invoke-direct {p0, v2}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 1741
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->en:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1742
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v1

    .line 1743
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v3

    .line 1744
    iget-object v5, p0, Landroid/support/v4/view/ViewPager;->en:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrX()I

    move-result v5

    .line 1745
    iget-object v6, p0, Landroid/support/v4/view/ViewPager;->en:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->getCurrY()I

    move-result v6

    .line 1746
    if-ne v1, v5, :cond_0

    if-eq v3, v6, :cond_1

    .line 1747
    :cond_0
    invoke-virtual {p0, v5, v6}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    .line 1750
    :cond_1
    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->ey:Z

    move v1, v2

    move v3, v0

    .line 1751
    :goto_1
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->eg:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 1752
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->eg:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/bw;

    .line 1753
    iget-boolean v5, v0, Landroid/support/v4/view/bw;->fd:Z

    if-eqz v5, :cond_2

    .line 1755
    iput-boolean v2, v0, Landroid/support/v4/view/bw;->fd:Z

    move v3, v4

    .line 1751
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    move v0, v2

    .line 1737
    goto :goto_0

    .line 1758
    :cond_4
    if-eqz v3, :cond_5

    .line 1759
    if-eqz p1, :cond_6

    .line 1760
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->fa:Ljava/lang/Runnable;

    invoke-static {p0, v0}, Landroid/support/v4/view/ba;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 1765
    :cond_5
    :goto_2
    return-void

    .line 1762
    :cond_6
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->fa:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_2
.end method

.method private l(I)V
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 388
    iget v0, p0, Landroid/support/v4/view/ViewPager;->dV:I

    if-ne v0, p1, :cond_1

    .line 400
    :cond_0
    :goto_0
    return-void

    .line 392
    :cond_1
    iput p1, p0, Landroid/support/v4/view/ViewPager;->dV:I

    .line 393
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->eW:Landroid/support/v4/view/ca;

    if-eqz v0, :cond_4

    .line 395
    if-eqz p1, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v4

    move v3, v1

    :goto_2
    if-ge v3, v4, :cond_4

    if-eqz v0, :cond_3

    const/4 v2, 0x2

    :goto_3
    invoke-virtual {p0, v3}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v2, v6}, Landroid/support/v4/view/ba;->a(Landroid/view/View;ILandroid/graphics/Paint;)V

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_2

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    move v2, v1

    goto :goto_3

    .line 397
    :cond_4
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->eT:Landroid/support/v4/view/bz;

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->eT:Landroid/support/v4/view/bz;

    invoke-interface {v0, p1}, Landroid/support/v4/view/bz;->k(I)V

    goto :goto_0
.end method

.method private m(Landroid/view/View;)Landroid/support/v4/view/bw;
    .locals 4
    .parameter

    .prologue
    .line 1327
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->eg:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 1328
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->eg:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/bw;

    .line 1329
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->ei:Landroid/support/v4/view/an;

    iget-object v3, v0, Landroid/support/v4/view/bw;->fc:Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Landroid/support/v4/view/an;->a(Landroid/view/View;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1333
    :goto_1
    return-object v0

    .line 1327
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1333
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private n(Landroid/view/View;)Landroid/support/v4/view/bw;
    .locals 2
    .parameter

    .prologue
    .line 1338
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_2

    .line 1339
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/view/View;

    if-nez v1, :cond_1

    .line 1340
    :cond_0
    const/4 v0, 0x0

    .line 1344
    :goto_1
    return-object v0

    .line 1342
    :cond_1
    check-cast v0, Landroid/view/View;

    move-object p1, v0

    goto :goto_0

    .line 1344
    :cond_2
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;->m(Landroid/view/View;)Landroid/support/v4/view/bw;

    move-result-object v0

    goto :goto_1
.end method

.method private o(I)V
    .locals 18
    .parameter

    .prologue
    .line 919
    const/4 v3, 0x0

    .line 920
    const/4 v2, 0x2

    .line 921
    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v4/view/ViewPager;->ej:I

    move/from16 v0, p1

    if-eq v4, v0, :cond_21

    .line 922
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v4/view/ViewPager;->ej:I

    move/from16 v0, p1

    if-ge v2, v0, :cond_1

    const/16 v2, 0x42

    .line 923
    :goto_0
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v4/view/ViewPager;->ej:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/support/v4/view/ViewPager;->p(I)Landroid/support/v4/view/bw;

    move-result-object v3

    .line 924
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v4/view/ViewPager;->ej:I

    move-object v4, v3

    move v3, v2

    .line 927
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->ei:Landroid/support/v4/view/an;

    if-nez v2, :cond_2

    .line 928
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->am()V

    .line 1104
    :cond_0
    :goto_2
    return-void

    .line 922
    :cond_1
    const/16 v2, 0x11

    goto :goto_0

    .line 936
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/support/v4/view/ViewPager;->ey:Z

    if-eqz v2, :cond_3

    .line 938
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->am()V

    goto :goto_2

    .line 945
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 949
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->ei:Landroid/support/v4/view/an;

    .line 951
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v4/view/ViewPager;->ez:I

    .line 952
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/v4/view/ViewPager;->ej:I

    sub-int/2addr v6, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 953
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v4/view/ViewPager;->ei:Landroid/support/v4/view/an;

    invoke-virtual {v5}, Landroid/support/v4/view/an;->getCount()I

    move-result v12

    .line 954
    add-int/lit8 v5, v12, -0x1

    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/v4/view/ViewPager;->ej:I

    add-int/2addr v2, v6

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 956
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v4/view/ViewPager;->ed:I

    if-eq v12, v2, :cond_4

    .line 959
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 963
    :goto_3
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "The application\'s PagerAdapter changed the adapter\'s contents without calling PagerAdapter#notifyDataSetChanged! Expected adapter item count: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/v4/view/ViewPager;->ed:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Pager id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " Pager class: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " Problematic adapter: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v4/view/ViewPager;->ei:Landroid/support/v4/view/an;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 961
    :catch_0
    move-exception v2

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 972
    :cond_4
    const/4 v6, 0x0

    .line 974
    const/4 v2, 0x0

    move v5, v2

    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->eg:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v5, v2, :cond_20

    .line 975
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->eg:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/bw;

    .line 976
    iget v7, v2, Landroid/support/v4/view/bw;->position:I

    move-object/from16 v0, p0

    iget v8, v0, Landroid/support/v4/view/ViewPager;->ej:I

    if-lt v7, v8, :cond_6

    .line 977
    iget v7, v2, Landroid/support/v4/view/bw;->position:I

    move-object/from16 v0, p0

    iget v8, v0, Landroid/support/v4/view/ViewPager;->ej:I

    if-ne v7, v8, :cond_20

    .line 982
    :goto_5
    if-nez v2, :cond_1f

    if-lez v12, :cond_1f

    .line 983
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v4/view/ViewPager;->ej:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v5}, Landroid/support/v4/view/ViewPager;->b(II)Landroid/support/v4/view/bw;

    move-result-object v2

    move-object v10, v2

    .line 989
    :goto_6
    if-eqz v10, :cond_17

    .line 990
    const/4 v9, 0x0

    .line 991
    add-int/lit8 v8, v5, -0x1

    .line 992
    if-ltz v8, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->eg:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/bw;

    .line 993
    :goto_7
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->aj()I

    move-result v14

    .line 994
    if-gtz v14, :cond_8

    const/4 v6, 0x0

    .line 996
    :goto_8
    move-object/from16 v0, p0

    iget v7, v0, Landroid/support/v4/view/ViewPager;->ej:I

    add-int/lit8 v7, v7, -0x1

    move/from16 v16, v7

    move v7, v9

    move/from16 v9, v16

    move/from16 v17, v8

    move v8, v5

    move/from16 v5, v17

    :goto_9
    if-ltz v9, :cond_e

    .line 997
    cmpl-float v15, v7, v6

    if-ltz v15, :cond_a

    if-ge v9, v11, :cond_a

    .line 998
    if-eqz v2, :cond_e

    .line 999
    iget v15, v2, Landroid/support/v4/view/bw;->position:I

    if-ne v9, v15, :cond_5

    iget-boolean v15, v2, Landroid/support/v4/view/bw;->fd:Z

    if-nez v15, :cond_5

    .line 1002
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/v4/view/ViewPager;->eg:Ljava/util/ArrayList;

    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1003
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/v4/view/ViewPager;->ei:Landroid/support/v4/view/an;

    iget-object v2, v2, Landroid/support/v4/view/bw;->fc:Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0, v9, v2}, Landroid/support/v4/view/an;->a(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 1008
    add-int/lit8 v5, v5, -0x1

    .line 1009
    add-int/lit8 v8, v8, -0x1

    .line 1010
    if-ltz v5, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->eg:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/bw;

    .line 996
    :cond_5
    :goto_a
    add-int/lit8 v9, v9, -0x1

    goto :goto_9

    .line 974
    :cond_6
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto/16 :goto_4

    .line 992
    :cond_7
    const/4 v2, 0x0

    goto :goto_7

    .line 994
    :cond_8
    const/high16 v6, 0x4000

    iget v7, v10, Landroid/support/v4/view/bw;->fe:F

    sub-float/2addr v6, v7

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v7

    int-to-float v7, v7

    int-to-float v15, v14

    div-float/2addr v7, v15

    add-float/2addr v6, v7

    goto :goto_8

    .line 1010
    :cond_9
    const/4 v2, 0x0

    goto :goto_a

    .line 1012
    :cond_a
    if-eqz v2, :cond_c

    iget v15, v2, Landroid/support/v4/view/bw;->position:I

    if-ne v9, v15, :cond_c

    .line 1013
    iget v2, v2, Landroid/support/v4/view/bw;->fe:F

    add-float/2addr v7, v2

    .line 1014
    add-int/lit8 v5, v5, -0x1

    .line 1015
    if-ltz v5, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->eg:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/bw;

    goto :goto_a

    :cond_b
    const/4 v2, 0x0

    goto :goto_a

    .line 1017
    :cond_c
    add-int/lit8 v2, v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v2}, Landroid/support/v4/view/ViewPager;->b(II)Landroid/support/v4/view/bw;

    move-result-object v2

    .line 1018
    iget v2, v2, Landroid/support/v4/view/bw;->fe:F

    add-float/2addr v7, v2

    .line 1019
    add-int/lit8 v8, v8, 0x1

    .line 1020
    if-ltz v5, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->eg:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/bw;

    goto :goto_a

    :cond_d
    const/4 v2, 0x0

    goto :goto_a

    .line 1024
    :cond_e
    iget v6, v10, Landroid/support/v4/view/bw;->fe:F

    .line 1025
    add-int/lit8 v9, v8, 0x1

    .line 1026
    const/high16 v2, 0x4000

    cmpg-float v2, v6, v2

    if-gez v2, :cond_16

    .line 1027
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->eg:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v9, v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->eg:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/bw;

    move-object v7, v2

    .line 1028
    :goto_b
    if-gtz v14, :cond_10

    const/4 v2, 0x0

    move v5, v2

    .line 1030
    :goto_c
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v4/view/ViewPager;->ej:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v16, v7

    move v7, v9

    move v9, v2

    move-object/from16 v2, v16

    :goto_d
    if-ge v9, v12, :cond_16

    .line 1031
    cmpl-float v11, v6, v5

    if-ltz v11, :cond_12

    if-le v9, v13, :cond_12

    .line 1032
    if-eqz v2, :cond_16

    .line 1033
    iget v11, v2, Landroid/support/v4/view/bw;->position:I

    if-ne v9, v11, :cond_1e

    iget-boolean v11, v2, Landroid/support/v4/view/bw;->fd:Z

    if-nez v11, :cond_1e

    .line 1036
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/support/v4/view/ViewPager;->eg:Ljava/util/ArrayList;

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1037
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/support/v4/view/ViewPager;->ei:Landroid/support/v4/view/an;

    iget-object v2, v2, Landroid/support/v4/view/bw;->fc:Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-virtual {v11, v0, v9, v2}, Landroid/support/v4/view/an;->a(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 1042
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->eg:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v7, v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->eg:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/bw;

    :goto_e
    move/from16 v16, v6

    move-object v6, v2

    move/from16 v2, v16

    .line 1030
    :goto_f
    add-int/lit8 v9, v9, 0x1

    move/from16 v16, v2

    move-object v2, v6

    move/from16 v6, v16

    goto :goto_d

    .line 1027
    :cond_f
    const/4 v7, 0x0

    goto :goto_b

    .line 1028
    :cond_10
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v2

    int-to-float v2, v2

    int-to-float v5, v14

    div-float/2addr v2, v5

    const/high16 v5, 0x4000

    add-float/2addr v2, v5

    move v5, v2

    goto :goto_c

    .line 1042
    :cond_11
    const/4 v2, 0x0

    goto :goto_e

    .line 1044
    :cond_12
    if-eqz v2, :cond_14

    iget v11, v2, Landroid/support/v4/view/bw;->position:I

    if-ne v9, v11, :cond_14

    .line 1045
    iget v2, v2, Landroid/support/v4/view/bw;->fe:F

    add-float/2addr v6, v2

    .line 1046
    add-int/lit8 v7, v7, 0x1

    .line 1047
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->eg:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v7, v2, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->eg:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/bw;

    :goto_10
    move/from16 v16, v6

    move-object v6, v2

    move/from16 v2, v16

    goto :goto_f

    :cond_13
    const/4 v2, 0x0

    goto :goto_10

    .line 1049
    :cond_14
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v7}, Landroid/support/v4/view/ViewPager;->b(II)Landroid/support/v4/view/bw;

    move-result-object v2

    .line 1050
    add-int/lit8 v7, v7, 0x1

    .line 1051
    iget v2, v2, Landroid/support/v4/view/bw;->fe:F

    add-float/2addr v6, v2

    .line 1052
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->eg:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v7, v2, :cond_15

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->eg:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/bw;

    :goto_11
    move/from16 v16, v6

    move-object v6, v2

    move/from16 v2, v16

    goto :goto_f

    :cond_15
    const/4 v2, 0x0

    goto :goto_11

    .line 1057
    :cond_16
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v8, v4}, Landroid/support/v4/view/ViewPager;->a(Landroid/support/v4/view/bw;ILandroid/support/v4/view/bw;)V

    .line 1067
    :cond_17
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v4/view/ViewPager;->ei:Landroid/support/v4/view/an;

    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v4/view/ViewPager;->ej:I

    if-eqz v10, :cond_19

    iget-object v2, v10, Landroid/support/v4/view/bw;->fc:Ljava/lang/Object;

    :goto_12
    invoke-virtual {v4, v2}, Landroid/support/v4/view/an;->a(Ljava/lang/Object;)V

    .line 1069
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->ei:Landroid/support/v4/view/an;

    invoke-virtual {v2}, Landroid/support/v4/view/an;->O()V

    .line 1073
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v5

    .line 1074
    const/4 v2, 0x0

    move v4, v2

    :goto_13
    if-ge v4, v5, :cond_1a

    .line 1075
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1076
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager$LayoutParams;

    .line 1077
    iput v4, v2, Landroid/support/v4/view/ViewPager$LayoutParams;->fi:I

    .line 1078
    iget-boolean v7, v2, Landroid/support/v4/view/ViewPager$LayoutParams;->fg:Z

    if-nez v7, :cond_18

    iget v7, v2, Landroid/support/v4/view/ViewPager$LayoutParams;->fe:F

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-nez v7, :cond_18

    .line 1080
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Landroid/support/v4/view/ViewPager;->m(Landroid/view/View;)Landroid/support/v4/view/bw;

    move-result-object v6

    .line 1081
    if-eqz v6, :cond_18

    .line 1082
    iget v7, v6, Landroid/support/v4/view/bw;->fe:F

    iput v7, v2, Landroid/support/v4/view/ViewPager$LayoutParams;->fe:F

    .line 1083
    iget v6, v6, Landroid/support/v4/view/bw;->position:I

    iput v6, v2, Landroid/support/v4/view/ViewPager$LayoutParams;->position:I

    .line 1074
    :cond_18
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_13

    .line 1067
    :cond_19
    const/4 v2, 0x0

    goto :goto_12

    .line 1087
    :cond_1a
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->am()V

    .line 1089
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1090
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->findFocus()Landroid/view/View;

    move-result-object v2

    .line 1091
    if-eqz v2, :cond_1d

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/support/v4/view/ViewPager;->n(Landroid/view/View;)Landroid/support/v4/view/bw;

    move-result-object v2

    .line 1092
    :goto_14
    if-eqz v2, :cond_1b

    iget v2, v2, Landroid/support/v4/view/bw;->position:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v4/view/ViewPager;->ej:I

    if-eq v2, v4, :cond_0

    .line 1093
    :cond_1b
    const/4 v2, 0x0

    :goto_15
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 1094
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1095
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/support/v4/view/ViewPager;->m(Landroid/view/View;)Landroid/support/v4/view/bw;

    move-result-object v5

    .line 1096
    if-eqz v5, :cond_1c

    iget v5, v5, Landroid/support/v4/view/bw;->position:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/v4/view/ViewPager;->ej:I

    if-ne v5, v6, :cond_1c

    .line 1097
    invoke-virtual {v4, v3}, Landroid/view/View;->requestFocus(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1098
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 1091
    :cond_1d
    const/4 v2, 0x0

    goto :goto_14

    :cond_1e
    move/from16 v16, v6

    move-object v6, v2

    move/from16 v2, v16

    goto/16 :goto_f

    :cond_1f
    move-object v10, v2

    goto/16 :goto_6

    :cond_20
    move-object v2, v6

    goto/16 :goto_5

    :cond_21
    move-object v4, v3

    move v3, v2

    goto/16 :goto_1
.end method

.method private p(I)Landroid/support/v4/view/bw;
    .locals 3
    .parameter

    .prologue
    .line 1348
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->eg:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 1349
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->eg:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/bw;

    .line 1350
    iget v2, v0, Landroid/support/v4/view/bw;->position:I

    if-ne v2, p1, :cond_0

    .line 1354
    :goto_1
    return-object v0

    .line 1348
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1354
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private q(I)Z
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1632
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->eg:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 1633
    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->eR:Z

    .line 1634
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/support/v4/view/ViewPager;->a(IF)V

    .line 1635
    iget-boolean v1, p0, Landroid/support/v4/view/ViewPager;->eR:Z

    if-nez v1, :cond_2

    .line 1636
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "onPageScrolled did not call superclass implementation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1641
    :cond_0
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->an()Landroid/support/v4/view/bw;

    move-result-object v1

    .line 1642
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->aj()I

    move-result v2

    .line 1643
    iget v3, p0, Landroid/support/v4/view/ViewPager;->ep:I

    .line 1644
    iget v3, p0, Landroid/support/v4/view/ViewPager;->ep:I

    int-to-float v3, v3

    int-to-float v4, v2

    div-float/2addr v3, v4

    .line 1645
    iget v4, v1, Landroid/support/v4/view/bw;->position:I

    .line 1646
    int-to-float v5, p1

    int-to-float v2, v2

    div-float v2, v5, v2

    iget v5, v1, Landroid/support/v4/view/bw;->ff:F

    sub-float/2addr v2, v5

    iget v1, v1, Landroid/support/v4/view/bw;->fe:F

    add-float/2addr v1, v3

    div-float v1, v2, v1

    .line 1650
    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->eR:Z

    .line 1651
    invoke-direct {p0, v4, v1}, Landroid/support/v4/view/ViewPager;->a(IF)V

    .line 1652
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->eR:Z

    if-nez v0, :cond_1

    .line 1653
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "onPageScrolled did not call superclass implementation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1656
    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method private setScrollingCacheEnabled(Z)V
    .locals 1
    .parameter

    .prologue
    .line 2398
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->ex:Z

    if-eq v0, p1, :cond_0

    .line 2399
    iput-boolean p1, p0, Landroid/support/v4/view/ViewPager;->ex:Z

    .line 2410
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(IZ)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 500
    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->ey:Z

    .line 501
    invoke-direct {p0, p1, p2, v0}, Landroid/support/v4/view/ViewPager;->a(IZZ)V

    .line 502
    return-void
.end method

.method public a(Landroid/support/v4/view/an;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 408
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ei:Landroid/support/v4/view/an;

    if-eqz v0, :cond_3

    .line 409
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ei:Landroid/support/v4/view/an;

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->eo:Landroid/support/v4/view/cb;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/an;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 410
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ei:Landroid/support/v4/view/an;

    move v1, v2

    .line 411
    :goto_0
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->eg:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 412
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->eg:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/bw;

    .line 413
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->ei:Landroid/support/v4/view/an;

    iget v4, v0, Landroid/support/v4/view/bw;->position:I

    iget-object v0, v0, Landroid/support/v4/view/bw;->fc:Ljava/lang/Object;

    invoke-virtual {v3, p0, v4, v0}, Landroid/support/v4/view/an;->a(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 411
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 415
    :cond_0
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ei:Landroid/support/v4/view/an;

    invoke-virtual {v0}, Landroid/support/v4/view/an;->O()V

    .line 416
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->eg:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    move v1, v2

    .line 417
    :goto_1
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$LayoutParams;

    iget-boolean v0, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->fg:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->removeViewAt(I)V

    add-int/lit8 v1, v1, -0x1

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 418
    :cond_2
    iput v2, p0, Landroid/support/v4/view/ViewPager;->ej:I

    .line 419
    invoke-virtual {p0, v2, v2}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    .line 422
    :cond_3
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ei:Landroid/support/v4/view/an;

    .line 423
    iput-object p1, p0, Landroid/support/v4/view/ViewPager;->ei:Landroid/support/v4/view/an;

    .line 424
    iput v2, p0, Landroid/support/v4/view/ViewPager;->ed:I

    .line 426
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->ei:Landroid/support/v4/view/an;

    if-eqz v1, :cond_5

    .line 427
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->eo:Landroid/support/v4/view/cb;

    if-nez v1, :cond_4

    .line 428
    new-instance v1, Landroid/support/v4/view/cb;

    invoke-direct {v1, p0, v2}, Landroid/support/v4/view/cb;-><init>(Landroid/support/v4/view/ViewPager;B)V

    iput-object v1, p0, Landroid/support/v4/view/ViewPager;->eo:Landroid/support/v4/view/cb;

    .line 430
    :cond_4
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->ei:Landroid/support/v4/view/an;

    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->eo:Landroid/support/v4/view/cb;

    invoke-virtual {v1, v3}, Landroid/support/v4/view/an;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 431
    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->ey:Z

    .line 432
    iget-boolean v1, p0, Landroid/support/v4/view/ViewPager;->eP:Z

    .line 433
    iput-boolean v5, p0, Landroid/support/v4/view/ViewPager;->eP:Z

    .line 434
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->ei:Landroid/support/v4/view/an;

    invoke-virtual {v3}, Landroid/support/v4/view/an;->getCount()I

    move-result v3

    iput v3, p0, Landroid/support/v4/view/ViewPager;->ed:I

    .line 435
    iget v3, p0, Landroid/support/v4/view/ViewPager;->ek:I

    if-ltz v3, :cond_7

    .line 436
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->ei:Landroid/support/v4/view/an;

    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->el:Landroid/os/Parcelable;

    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->em:Ljava/lang/ClassLoader;

    invoke-virtual {v1, v3, v4}, Landroid/support/v4/view/an;->a(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 437
    iget v1, p0, Landroid/support/v4/view/ViewPager;->ek:I

    invoke-direct {p0, v1, v2, v5}, Landroid/support/v4/view/ViewPager;->a(IZZ)V

    .line 438
    const/4 v1, -0x1

    iput v1, p0, Landroid/support/v4/view/ViewPager;->ek:I

    .line 439
    iput-object v6, p0, Landroid/support/v4/view/ViewPager;->el:Landroid/os/Parcelable;

    .line 440
    iput-object v6, p0, Landroid/support/v4/view/ViewPager;->em:Ljava/lang/ClassLoader;

    .line 448
    :cond_5
    :goto_2
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->eV:Landroid/support/v4/view/by;

    if-eqz v1, :cond_6

    if-eq v0, p1, :cond_6

    .line 449
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->eV:Landroid/support/v4/view/by;

    invoke-interface {v1, v0, p1}, Landroid/support/v4/view/by;->b(Landroid/support/v4/view/an;Landroid/support/v4/view/an;)V

    .line 451
    :cond_6
    return-void

    .line 441
    :cond_7
    if-nez v1, :cond_8

    .line 442
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->populate()V

    goto :goto_2

    .line 444
    :cond_8
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->requestLayout()V

    goto :goto_2
.end method

.method final a(Landroid/support/v4/view/by;)V
    .locals 0
    .parameter

    .prologue
    .line 474
    iput-object p1, p0, Landroid/support/v4/view/ViewPager;->eV:Landroid/support/v4/view/by;

    .line 475
    return-void
.end method

.method public final a(Landroid/support/v4/view/bz;)V
    .locals 0
    .parameter

    .prologue
    .line 592
    iput-object p1, p0, Landroid/support/v4/view/ViewPager;->eT:Landroid/support/v4/view/bz;

    .line 593
    return-void
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2615
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2617
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getDescendantFocusability()I

    move-result v2

    .line 2619
    const/high16 v0, 0x6

    if-eq v2, v0, :cond_1

    .line 2620
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 2621
    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2622
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 2623
    invoke-direct {p0, v3}, Landroid/support/v4/view/ViewPager;->m(Landroid/view/View;)Landroid/support/v4/view/bw;

    move-result-object v4

    .line 2624
    if-eqz v4, :cond_0

    iget v4, v4, Landroid/support/v4/view/bw;->position:I

    iget v5, p0, Landroid/support/v4/view/ViewPager;->ej:I

    if-ne v4, v5, :cond_0

    .line 2625
    invoke-virtual {v3, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 2620
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2635
    :cond_1
    const/high16 v0, 0x4

    if-ne v2, v0, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v1, v0, :cond_3

    .line 2641
    :cond_2
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->isFocusable()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2652
    :cond_3
    :goto_1
    return-void

    .line 2644
    :cond_4
    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->isFocusableInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2648
    :cond_5
    if-eqz p1, :cond_3

    .line 2649
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 4
    .parameter

    .prologue
    .line 2662
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2663
    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2664
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 2665
    invoke-direct {p0, v1}, Landroid/support/v4/view/ViewPager;->m(Landroid/view/View;)Landroid/support/v4/view/bw;

    move-result-object v2

    .line 2666
    if-eqz v2, :cond_0

    iget v2, v2, Landroid/support/v4/view/bw;->position:I

    iget v3, p0, Landroid/support/v4/view/ViewPager;->ej:I

    if-ne v2, v3, :cond_0

    .line 2667
    invoke-virtual {v1, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 2662
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2671
    :cond_1
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1293
    invoke-virtual {p0, p3}, Landroid/support/v4/view/ViewPager;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1294
    invoke-virtual {p0, p3}, Landroid/support/v4/view/ViewPager;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .line 1296
    check-cast v0, Landroid/support/v4/view/ViewPager$LayoutParams;

    .line 1297
    iget-boolean v2, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->fg:Z

    instance-of v3, p1, Landroid/support/v4/view/bv;

    or-int/2addr v2, v3

    iput-boolean v2, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->fg:Z

    .line 1298
    iget-boolean v2, p0, Landroid/support/v4/view/ViewPager;->ao:Z

    if-eqz v2, :cond_1

    .line 1299
    if-eqz v0, :cond_0

    iget-boolean v2, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->fg:Z

    if-eqz v2, :cond_0

    .line 1300
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot add pager decor view during layout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1302
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->fh:Z

    .line 1303
    invoke-virtual {p0, p1, p2, v1}, Landroid/support/v4/view/ViewPager;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 1315
    :goto_1
    return-void

    .line 1305
    :cond_1
    invoke-super {p0, p1, p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_2
    move-object v1, p3

    goto :goto_0
.end method

.method public final ai()Landroid/support/v4/view/an;
    .locals 1

    .prologue
    .line 470
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ei:Landroid/support/v4/view/an;

    return-object v0
.end method

.method public final ak()I
    .locals 1

    .prologue
    .line 505
    iget v0, p0, Landroid/support/v4/view/ViewPager;->ej:I

    return v0
.end method

.method final al()V
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 846
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ei:Landroid/support/v4/view/an;

    invoke-virtual {v0}, Landroid/support/v4/view/an;->getCount()I

    move-result v8

    .line 847
    iput v8, p0, Landroid/support/v4/view/ViewPager;->ed:I

    .line 848
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->eg:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v3, p0, Landroid/support/v4/view/ViewPager;->ez:I

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    if-ge v0, v3, :cond_1

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->eg:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v0, v8, :cond_1

    move v0, v1

    .line 850
    :goto_0
    iget v3, p0, Landroid/support/v4/view/ViewPager;->ej:I

    move v4, v2

    move v5, v3

    move v6, v0

    move v3, v2

    .line 853
    :goto_1
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->eg:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_4

    .line 854
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->eg:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/bw;

    .line 855
    iget-object v7, p0, Landroid/support/v4/view/ViewPager;->ei:Landroid/support/v4/view/an;

    iget-object v9, v0, Landroid/support/v4/view/bw;->fc:Ljava/lang/Object;

    invoke-virtual {v7, v9}, Landroid/support/v4/view/an;->b(Ljava/lang/Object;)I

    move-result v7

    .line 857
    const/4 v9, -0x1

    if-eq v7, v9, :cond_9

    .line 858
    const/4 v9, -0x2

    if-ne v7, v9, :cond_2

    .line 862
    iget-object v6, p0, Landroid/support/v4/view/ViewPager;->eg:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 863
    add-int/lit8 v3, v3, -0x1

    .line 865
    if-nez v4, :cond_0

    .line 866
    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->ei:Landroid/support/v4/view/an;

    move v4, v1

    .line 870
    :cond_0
    iget-object v6, p0, Landroid/support/v4/view/ViewPager;->ei:Landroid/support/v4/view/an;

    iget v7, v0, Landroid/support/v4/view/bw;->position:I

    iget-object v9, v0, Landroid/support/v4/view/bw;->fc:Ljava/lang/Object;

    invoke-virtual {v6, p0, v7, v9}, Landroid/support/v4/view/an;->a(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 873
    iget v6, p0, Landroid/support/v4/view/ViewPager;->ej:I

    iget v0, v0, Landroid/support/v4/view/bw;->position:I

    if-ne v6, v0, :cond_a

    .line 875
    iget v0, p0, Landroid/support/v4/view/ViewPager;->ej:I

    add-int/lit8 v5, v8, -0x1

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v5

    move v0, v3

    move v3, v4

    move v4, v5

    move v5, v1

    .line 853
    :goto_2
    add-int/lit8 v0, v0, 0x1

    move v6, v5

    move v5, v4

    move v4, v3

    move v3, v0

    goto :goto_1

    :cond_1
    move v0, v2

    .line 848
    goto :goto_0

    .line 881
    :cond_2
    iget v9, v0, Landroid/support/v4/view/bw;->position:I

    if-eq v9, v7, :cond_9

    .line 882
    iget v6, v0, Landroid/support/v4/view/bw;->position:I

    iget v9, p0, Landroid/support/v4/view/ViewPager;->ej:I

    if-ne v6, v9, :cond_3

    move v5, v7

    .line 887
    :cond_3
    iput v7, v0, Landroid/support/v4/view/bw;->position:I

    move v0, v3

    move v3, v4

    move v4, v5

    move v5, v1

    .line 888
    goto :goto_2

    .line 892
    :cond_4
    if-eqz v4, :cond_5

    .line 893
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ei:Landroid/support/v4/view/an;

    invoke-virtual {v0}, Landroid/support/v4/view/an;->O()V

    .line 896
    :cond_5
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->eg:Ljava/util/ArrayList;

    sget-object v3, Landroid/support/v4/view/ViewPager;->ee:Ljava/util/Comparator;

    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 898
    if-eqz v6, :cond_8

    .line 900
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v4

    move v3, v2

    .line 901
    :goto_3
    if-ge v3, v4, :cond_7

    .line 902
    invoke-virtual {p0, v3}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 903
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$LayoutParams;

    .line 904
    iget-boolean v6, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->fg:Z

    if-nez v6, :cond_6

    .line 905
    const/4 v6, 0x0

    iput v6, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->fe:F

    .line 901
    :cond_6
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_3

    .line 909
    :cond_7
    invoke-direct {p0, v5, v2, v1}, Landroid/support/v4/view/ViewPager;->a(IZZ)V

    .line 910
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->requestLayout()V

    .line 912
    :cond_8
    return-void

    :cond_9
    move v0, v3

    move v3, v4

    move v4, v5

    move v5, v6

    goto :goto_2

    :cond_a
    move v0, v3

    move v3, v4

    move v4, v5

    move v5, v1

    goto :goto_2
.end method

.method final b(Landroid/support/v4/view/bz;)Landroid/support/v4/view/bz;
    .locals 1
    .parameter

    .prologue
    .line 654
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->eU:Landroid/support/v4/view/bz;

    .line 655
    iput-object p1, p0, Landroid/support/v4/view/ViewPager;->eU:Landroid/support/v4/view/bz;

    .line 656
    return-object v0
.end method

.method public canScrollHorizontally(I)Z
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2413
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->ei:Landroid/support/v4/view/an;

    if-nez v2, :cond_1

    .line 2424
    :cond_0
    :goto_0
    return v0

    .line 2417
    :cond_1
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->aj()I

    move-result v2

    .line 2418
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v3

    .line 2419
    if-gez p1, :cond_2

    .line 2420
    int-to-float v2, v2

    iget v4, p0, Landroid/support/v4/view/ViewPager;->et:F

    mul-float/2addr v2, v4

    float-to-int v2, v2

    if-le v3, v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 2421
    :cond_2
    if-lez p1, :cond_0

    .line 2422
    int-to-float v2, v2

    iget v4, p0, Landroid/support/v4/view/ViewPager;->eu:F

    mul-float/2addr v2, v4

    float-to-int v2, v2

    if-ge v3, v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter

    .prologue
    .line 2741
    instance-of v0, p1, Landroid/support/v4/view/ViewPager$LayoutParams;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 4

    .prologue
    .line 1608
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->en:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->en:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1609
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v0

    .line 1610
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v1

    .line 1611
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->en:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    .line 1612
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->en:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    .line 1614
    if-ne v0, v2, :cond_0

    if-eq v1, v3, :cond_1

    .line 1615
    :cond_0
    invoke-virtual {p0, v2, v3}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    .line 1616
    invoke-direct {p0, v2}, Landroid/support/v4/view/ViewPager;->q(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1617
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->en:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1618
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v3}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    .line 1623
    :cond_1
    invoke-static {p0}, Landroid/support/v4/view/ba;->f(Landroid/view/View;)V

    .line 1629
    :goto_0
    return-void

    .line 1628
    :cond_2
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->e(Z)V

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2465
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    move v2, v0

    :goto_0
    if-eqz v2, :cond_2

    :cond_1
    move v0, v1

    :cond_2
    return v0

    :sswitch_0
    const/16 v2, 0x11

    invoke-direct {p0, v2}, Landroid/support/v4/view/ViewPager;->arrowScroll(I)Z

    move-result v2

    goto :goto_0

    :sswitch_1
    const/16 v2, 0x42

    invoke-direct {p0, v2}, Landroid/support/v4/view/ViewPager;->arrowScroll(I)Z

    move-result v2

    goto :goto_0

    :sswitch_2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_0

    invoke-static {p1}, Landroid/support/v4/view/u;->b(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x2

    invoke-direct {p0, v2}, Landroid/support/v4/view/ViewPager;->arrowScroll(I)Z

    move-result v2

    goto :goto_0

    :cond_3
    invoke-static {p1}, Landroid/support/v4/view/u;->a(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v1}, Landroid/support/v4/view/ViewPager;->arrowScroll(I)Z

    move-result v2

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x3d -> :sswitch_2
    .end sparse-switch
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 2709
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v1

    const/16 v2, 0x1000

    if-ne v1, v2, :cond_1

    .line 2710
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    .line 2726
    :cond_0
    :goto_0
    return v0

    .line 2714
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v2

    move v1, v0

    .line 2715
    :goto_1
    if-ge v1, v2, :cond_0

    .line 2716
    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2717
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2

    .line 2718
    invoke-direct {p0, v3}, Landroid/support/v4/view/ViewPager;->m(Landroid/view/View;)Landroid/support/v4/view/bw;

    move-result-object v4

    .line 2719
    if-eqz v4, :cond_2

    iget v4, v4, Landroid/support/v4/view/bw;->position:I

    iget v5, p0, Landroid/support/v4/view/ViewPager;->ej:I

    if-ne v4, v5, :cond_2

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2721
    const/4 v0, 0x1

    goto :goto_0

    .line 2715
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 2160
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 2161
    const/4 v0, 0x0

    .line 2163
    invoke-static {p0}, Landroid/support/v4/view/ba;->e(Landroid/view/View;)I

    move-result v1

    .line 2164
    if-eqz v1, :cond_0

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->ei:Landroid/support/v4/view/an;

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->ei:Landroid/support/v4/view/an;

    invoke-virtual {v1}, Landroid/support/v4/view/an;->getCount()I

    move-result v1

    if-le v1, v2, :cond_4

    .line 2167
    :cond_0
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->eN:Landroid/support/v4/widget/j;

    invoke-virtual {v1}, Landroid/support/v4/widget/j;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2168
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 2169
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v0, v2

    .line 2170
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v2

    .line 2172
    const/high16 v3, 0x4387

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->rotate(F)V

    .line 2173
    neg-int v3, v0

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Landroid/support/v4/view/ViewPager;->et:F

    int-to-float v5, v2

    mul-float/2addr v4, v5

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2174
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->eN:Landroid/support/v4/widget/j;

    invoke-virtual {v3, v0, v2}, Landroid/support/v4/widget/j;->setSize(II)V

    .line 2175
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->eN:Landroid/support/v4/widget/j;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/j;->draw(Landroid/graphics/Canvas;)Z

    move-result v0

    or-int/lit8 v0, v0, 0x0

    .line 2176
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2178
    :cond_1
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->eO:Landroid/support/v4/widget/j;

    invoke-virtual {v1}, Landroid/support/v4/widget/j;->isFinished()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2179
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 2180
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v2

    .line 2181
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    .line 2183
    const/high16 v4, 0x42b4

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 2184
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    iget v5, p0, Landroid/support/v4/view/ViewPager;->eu:F

    const/high16 v6, 0x3f80

    add-float/2addr v5, v6

    neg-float v5, v5

    int-to-float v6, v2

    mul-float/2addr v5, v6

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2185
    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->eO:Landroid/support/v4/widget/j;

    invoke-virtual {v4, v3, v2}, Landroid/support/v4/widget/j;->setSize(II)V

    .line 2186
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->eO:Landroid/support/v4/widget/j;

    invoke-virtual {v2, p1}, Landroid/support/v4/widget/j;->draw(Landroid/graphics/Canvas;)Z

    move-result v2

    or-int/2addr v0, v2

    .line 2187
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2194
    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 2196
    invoke-static {p0}, Landroid/support/v4/view/ba;->f(Landroid/view/View;)V

    .line 2198
    :cond_3
    return-void

    .line 2190
    :cond_4
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->eN:Landroid/support/v4/widget/j;

    invoke-virtual {v1}, Landroid/support/v4/widget/j;->finish()V

    .line 2191
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->eO:Landroid/support/v4/widget/j;

    invoke-virtual {v1}, Landroid/support/v4/widget/j;->finish()V

    goto :goto_0
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 754
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 755
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->eq:Landroid/graphics/drawable/Drawable;

    .line 756
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 757
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 759
    :cond_0
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 2731
    new-instance v0, Landroid/support/v4/view/ViewPager$LayoutParams;

    invoke-direct {v0}, Landroid/support/v4/view/ViewPager$LayoutParams;-><init>()V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .parameter

    .prologue
    .line 2746
    new-instance v0, Landroid/support/v4/view/ViewPager$LayoutParams;

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/v4/view/ViewPager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter

    .prologue
    .line 2736
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 642
    iget v0, p0, Landroid/support/v4/view/ViewPager;->eX:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    add-int/lit8 v0, p1, -0x1

    sub-int p2, v0, p2

    .line 643
    :cond_0
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->eY:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$LayoutParams;

    iget v0, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->fi:I

    .line 644
    return v0
.end method

.method public final m(I)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 489
    iput-boolean v1, p0, Landroid/support/v4/view/ViewPager;->ey:Z

    .line 490
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->eP:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, p1, v0, v1}, Landroid/support/v4/view/ViewPager;->a(IZZ)V

    .line 491
    return-void

    :cond_0
    move v0, v1

    .line 490
    goto :goto_0
.end method

.method public final n(I)V
    .locals 2
    .parameter

    .prologue
    .line 688
    if-gtz p1, :cond_0

    .line 689
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Requested offscreen page limit "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " too small; defaulting to 1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 691
    const/4 p1, 0x1

    .line 693
    :cond_0
    iget v0, p0, Landroid/support/v4/view/ViewPager;->ez:I

    if-eq p1, v0, :cond_1

    .line 694
    iput p1, p0, Landroid/support/v4/view/ViewPager;->ez:I

    .line 695
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->populate()V

    .line 697
    :cond_1
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 1359
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 1360
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->eP:Z

    .line 1361
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->fa:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 384
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 385
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 16
    .parameter

    .prologue
    .line 2202
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 2205
    move-object/from16 v0, p0

    iget v1, v0, Landroid/support/v4/view/ViewPager;->ep:I

    if-lez v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v4/view/ViewPager;->eq:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v4/view/ViewPager;->eg:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v4/view/ViewPager;->ei:Landroid/support/v4/view/an;

    if-eqz v1, :cond_3

    .line 2206
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v6

    .line 2207
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v7

    .line 2209
    move-object/from16 v0, p0

    iget v1, v0, Landroid/support/v4/view/ViewPager;->ep:I

    int-to-float v1, v1

    int-to-float v2, v7

    div-float v8, v1, v2

    .line 2210
    const/4 v5, 0x0

    .line 2211
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v4/view/ViewPager;->eg:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/bw;

    .line 2212
    iget v4, v1, Landroid/support/v4/view/bw;->ff:F

    .line 2213
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->eg:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 2214
    iget v3, v1, Landroid/support/v4/view/bw;->position:I

    .line 2215
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->eg:Ljava/util/ArrayList;

    add-int/lit8 v10, v9, -0x1

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/bw;

    iget v10, v2, Landroid/support/v4/view/bw;->position:I

    move v2, v5

    move v5, v3

    .line 2216
    :goto_0
    if-ge v5, v10, :cond_3

    .line 2217
    :goto_1
    iget v3, v1, Landroid/support/v4/view/bw;->position:I

    if-le v5, v3, :cond_0

    if-ge v2, v9, :cond_0

    .line 2218
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v4/view/ViewPager;->eg:Ljava/util/ArrayList;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/bw;

    goto :goto_1

    .line 2222
    :cond_0
    iget v3, v1, Landroid/support/v4/view/bw;->position:I

    if-ne v5, v3, :cond_2

    .line 2223
    iget v3, v1, Landroid/support/v4/view/bw;->ff:F

    iget v4, v1, Landroid/support/v4/view/bw;->fe:F

    add-float/2addr v3, v4

    int-to-float v4, v7

    mul-float/2addr v3, v4

    .line 2224
    iget v4, v1, Landroid/support/v4/view/bw;->ff:F

    iget v11, v1, Landroid/support/v4/view/bw;->fe:F

    add-float/2addr v4, v11

    add-float/2addr v4, v8

    .line 2231
    :goto_2
    move-object/from16 v0, p0

    iget v11, v0, Landroid/support/v4/view/ViewPager;->ep:I

    int-to-float v11, v11

    add-float/2addr v11, v3

    int-to-float v12, v6

    cmpl-float v11, v11, v12

    if-lez v11, :cond_1

    .line 2232
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/support/v4/view/ViewPager;->eq:Landroid/graphics/drawable/Drawable;

    float-to-int v12, v3

    move-object/from16 v0, p0

    iget v13, v0, Landroid/support/v4/view/ViewPager;->er:I

    move-object/from16 v0, p0

    iget v14, v0, Landroid/support/v4/view/ViewPager;->ep:I

    int-to-float v14, v14

    add-float/2addr v14, v3

    const/high16 v15, 0x3f00

    add-float/2addr v14, v15

    float-to-int v14, v14

    move-object/from16 v0, p0

    iget v15, v0, Landroid/support/v4/view/ViewPager;->es:I

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2234
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/support/v4/view/ViewPager;->eq:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2237
    :cond_1
    add-int v11, v6, v7

    int-to-float v11, v11

    cmpl-float v3, v3, v11

    if-gtz v3, :cond_3

    .line 2238
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_0

    .line 2226
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v4/view/ViewPager;->ei:Landroid/support/v4/view/an;

    .line 2227
    const/high16 v3, 0x3f80

    add-float/2addr v3, v4

    int-to-float v11, v7

    mul-float/2addr v3, v11

    .line 2228
    const/high16 v11, 0x3f80

    add-float/2addr v11, v8

    add-float/2addr v4, v11

    goto :goto_2

    .line 2242
    :cond_3
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter

    .prologue
    const/4 v3, -0x1

    const/4 v12, 0x0

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 1788
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 1791
    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    if-ne v0, v6, :cond_2

    .line 1794
    :cond_0
    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->eA:Z

    .line 1795
    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->eB:Z

    .line 1796
    iput v3, p0, Landroid/support/v4/view/ViewPager;->eG:I

    .line 1797
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->eH:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1

    .line 1798
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->eH:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 1799
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->eH:Landroid/view/VelocityTracker;

    .line 1919
    :cond_1
    :goto_0
    return v2

    .line 1806
    :cond_2
    if-eqz v0, :cond_4

    .line 1807
    iget-boolean v1, p0, Landroid/support/v4/view/ViewPager;->eA:Z

    if-eqz v1, :cond_3

    move v2, v6

    .line 1809
    goto :goto_0

    .line 1811
    :cond_3
    iget-boolean v1, p0, Landroid/support/v4/view/ViewPager;->eB:Z

    if-nez v1, :cond_1

    .line 1817
    :cond_4
    sparse-switch v0, :sswitch_data_0

    .line 1910
    :cond_5
    :goto_1
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->eH:Landroid/view/VelocityTracker;

    if-nez v0, :cond_6

    .line 1911
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->eH:Landroid/view/VelocityTracker;

    .line 1913
    :cond_6
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->eH:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1919
    iget-boolean v2, p0, Landroid/support/v4/view/ViewPager;->eA:Z

    goto :goto_0

    .line 1828
    :sswitch_0
    iget v0, p0, Landroid/support/v4/view/ViewPager;->eG:I

    .line 1829
    if-eq v0, v3, :cond_5

    .line 1831
    invoke-static {p1, v0}, Landroid/support/v4/view/aj;->a(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 1835
    invoke-static {p1, v0}, Landroid/support/v4/view/aj;->c(Landroid/view/MotionEvent;I)F

    move-result v7

    .line 1836
    iget v1, p0, Landroid/support/v4/view/ViewPager;->eE:F

    sub-float v8, v7, v1

    .line 1837
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v9

    .line 1838
    invoke-static {p1, v0}, Landroid/support/v4/view/aj;->d(Landroid/view/MotionEvent;I)F

    move-result v10

    .line 1839
    iget v0, p0, Landroid/support/v4/view/ViewPager;->dB:F

    sub-float v0, v10, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v11

    .line 1842
    cmpl-float v0, v8, v12

    if-eqz v0, :cond_a

    iget v0, p0, Landroid/support/v4/view/ViewPager;->eE:F

    iget v1, p0, Landroid/support/v4/view/ViewPager;->eD:I

    int-to-float v1, v1

    cmpg-float v1, v0, v1

    if-gez v1, :cond_7

    cmpl-float v1, v8, v12

    if-gtz v1, :cond_8

    :cond_7
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v1

    iget v3, p0, Landroid/support/v4/view/ViewPager;->eD:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_9

    cmpg-float v0, v8, v12

    if-gez v0, :cond_9

    :cond_8
    move v0, v6

    :goto_2
    if-nez v0, :cond_a

    float-to-int v3, v8

    float-to-int v4, v7

    float-to-int v5, v10

    move-object v0, p0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/view/ViewPager;->a(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1845
    iput v7, p0, Landroid/support/v4/view/ViewPager;->eE:F

    .line 1846
    iput v10, p0, Landroid/support/v4/view/ViewPager;->eF:F

    .line 1847
    iput-boolean v6, p0, Landroid/support/v4/view/ViewPager;->eB:Z

    goto :goto_0

    :cond_9
    move v0, v2

    .line 1842
    goto :goto_2

    .line 1850
    :cond_a
    iget v0, p0, Landroid/support/v4/view/ViewPager;->dC:I

    int-to-float v0, v0

    cmpl-float v0, v9, v0

    if-lez v0, :cond_d

    const/high16 v0, 0x3f00

    mul-float/2addr v0, v9

    cmpl-float v0, v0, v11

    if-lez v0, :cond_d

    .line 1852
    iput-boolean v6, p0, Landroid/support/v4/view/ViewPager;->eA:Z

    .line 1853
    invoke-direct {p0, v6}, Landroid/support/v4/view/ViewPager;->l(I)V

    .line 1854
    cmpl-float v0, v8, v12

    if-lez v0, :cond_c

    iget v0, p0, Landroid/support/v4/view/ViewPager;->dA:F

    iget v1, p0, Landroid/support/v4/view/ViewPager;->dC:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    :goto_3
    iput v0, p0, Landroid/support/v4/view/ViewPager;->eE:F

    .line 1856
    iput v10, p0, Landroid/support/v4/view/ViewPager;->eF:F

    .line 1857
    invoke-direct {p0, v6}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 1866
    :cond_b
    :goto_4
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->eA:Z

    if-eqz v0, :cond_5

    .line 1868
    invoke-direct {p0, v7}, Landroid/support/v4/view/ViewPager;->a(F)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1869
    invoke-static {p0}, Landroid/support/v4/view/ba;->f(Landroid/view/View;)V

    goto/16 :goto_1

    .line 1854
    :cond_c
    iget v0, p0, Landroid/support/v4/view/ViewPager;->dA:F

    iget v1, p0, Landroid/support/v4/view/ViewPager;->dC:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    goto :goto_3

    .line 1858
    :cond_d
    iget v0, p0, Landroid/support/v4/view/ViewPager;->dC:I

    int-to-float v0, v0

    cmpl-float v0, v11, v0

    if-lez v0, :cond_b

    .line 1864
    iput-boolean v6, p0, Landroid/support/v4/view/ViewPager;->eB:Z

    goto :goto_4

    .line 1880
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->dA:F

    iput v0, p0, Landroid/support/v4/view/ViewPager;->eE:F

    .line 1881
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->dB:F

    iput v0, p0, Landroid/support/v4/view/ViewPager;->eF:F

    .line 1882
    invoke-static {p1, v2}, Landroid/support/v4/view/aj;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->eG:I

    .line 1883
    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->eB:Z

    .line 1885
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->en:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 1886
    iget v0, p0, Landroid/support/v4/view/ViewPager;->dV:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_e

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->en:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalX()I

    move-result v0

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->en:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Landroid/support/v4/view/ViewPager;->eL:I

    if-le v0, v1, :cond_e

    .line 1889
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->en:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1890
    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->ey:Z

    .line 1891
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->populate()V

    .line 1892
    iput-boolean v6, p0, Landroid/support/v4/view/ViewPager;->eA:Z

    .line 1893
    invoke-direct {p0, v6}, Landroid/support/v4/view/ViewPager;->l(I)V

    goto/16 :goto_1

    .line 1895
    :cond_e
    invoke-direct {p0, v2}, Landroid/support/v4/view/ViewPager;->e(Z)V

    .line 1896
    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->eA:Z

    goto/16 :goto_1

    .line 1906
    :sswitch_2
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;->d(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 1817
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x2 -> :sswitch_0
        0x6 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 17
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1499
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v9

    .line 1500
    sub-int v10, p4, p2

    .line 1501
    sub-int v11, p5, p3

    .line 1502
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v6

    .line 1503
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v2

    .line 1504
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v5

    .line 1505
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingBottom()I

    move-result v3

    .line 1506
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v12

    .line 1508
    const/4 v4, 0x0

    .line 1512
    const/4 v1, 0x0

    move v8, v1

    :goto_0
    if-ge v8, v9, :cond_0

    .line 1513
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 1514
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v7, 0x8

    if-eq v1, v7, :cond_5

    .line 1515
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager$LayoutParams;

    .line 1516
    iget-boolean v7, v1, Landroid/support/v4/view/ViewPager$LayoutParams;->fg:Z

    if-eqz v7, :cond_5

    .line 1519
    iget v7, v1, Landroid/support/v4/view/ViewPager$LayoutParams;->gravity:I

    and-int/lit8 v7, v7, 0x7

    .line 1520
    iget v1, v1, Landroid/support/v4/view/ViewPager$LayoutParams;->gravity:I

    and-int/lit8 v14, v1, 0x70

    .line 1521
    packed-switch v7, :pswitch_data_0

    :pswitch_0
    move v7, v6

    .line 1538
    :goto_1
    sparse-switch v14, :sswitch_data_0

    move v1, v2

    move/from16 v16, v3

    move v3, v2

    move/from16 v2, v16

    .line 1555
    :goto_2
    add-int/2addr v7, v12

    .line 1556
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    add-int/2addr v14, v7

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    add-int/2addr v15, v1

    invoke-virtual {v13, v7, v1, v14, v15}, Landroid/view/View;->layout(IIII)V

    .line 1559
    add-int/lit8 v1, v4, 0x1

    move v4, v3

    move v3, v2

    move v2, v5

    move v5, v6

    .line 1512
    :goto_3
    add-int/lit8 v6, v8, 0x1

    move v8, v6

    move v6, v5

    move v5, v2

    move v2, v4

    move v4, v1

    goto :goto_0

    .line 1527
    :pswitch_1
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, v6

    move v7, v6

    move v6, v1

    .line 1528
    goto :goto_1

    .line 1530
    :pswitch_2
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int v1, v10, v1

    div-int/lit8 v1, v1, 0x2

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v7, v1

    .line 1532
    goto :goto_1

    .line 1534
    :pswitch_3
    sub-int v1, v10, v5

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    sub-int/2addr v1, v7

    .line 1535
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v5, v7

    move v7, v1

    goto :goto_1

    .line 1544
    :sswitch_0
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, v2

    move/from16 v16, v2

    move v2, v3

    move v3, v1

    move/from16 v1, v16

    .line 1545
    goto :goto_2

    .line 1547
    :sswitch_1
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int v1, v11, v1

    div-int/lit8 v1, v1, 0x2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    move/from16 v16, v3

    move v3, v2

    move/from16 v2, v16

    .line 1549
    goto :goto_2

    .line 1551
    :sswitch_2
    sub-int v1, v11, v3

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    sub-int/2addr v1, v14

    .line 1552
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    add-int/2addr v3, v14

    move/from16 v16, v3

    move v3, v2

    move/from16 v2, v16

    goto :goto_2

    .line 1564
    :cond_0
    sub-int v1, v10, v6

    sub-int v7, v1, v5

    .line 1566
    const/4 v1, 0x0

    move v5, v1

    :goto_4
    if-ge v5, v9, :cond_3

    .line 1567
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1568
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v10, 0x8

    if-eq v1, v10, :cond_2

    .line 1569
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager$LayoutParams;

    .line 1571
    iget-boolean v10, v1, Landroid/support/v4/view/ViewPager$LayoutParams;->fg:Z

    if-nez v10, :cond_2

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Landroid/support/v4/view/ViewPager;->m(Landroid/view/View;)Landroid/support/v4/view/bw;

    move-result-object v10

    if-eqz v10, :cond_2

    .line 1572
    int-to-float v12, v7

    iget v10, v10, Landroid/support/v4/view/bw;->ff:F

    mul-float/2addr v10, v12

    float-to-int v10, v10

    .line 1573
    add-int/2addr v10, v6

    .line 1575
    iget-boolean v12, v1, Landroid/support/v4/view/ViewPager$LayoutParams;->fh:Z

    if-eqz v12, :cond_1

    .line 1578
    const/4 v12, 0x0

    iput-boolean v12, v1, Landroid/support/v4/view/ViewPager$LayoutParams;->fh:Z

    .line 1579
    int-to-float v12, v7

    iget v1, v1, Landroid/support/v4/view/ViewPager$LayoutParams;->fe:F

    mul-float/2addr v1, v12

    float-to-int v1, v1

    const/high16 v12, 0x4000

    invoke-static {v1, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1582
    sub-int v12, v11, v2

    sub-int/2addr v12, v3

    const/high16 v13, 0x4000

    invoke-static {v12, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 1585
    invoke-virtual {v8, v1, v12}, Landroid/view/View;->measure(II)V

    .line 1590
    :cond_1
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, v10

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v12, v2

    invoke-virtual {v8, v10, v2, v1, v12}, Landroid/view/View;->layout(IIII)V

    .line 1566
    :cond_2
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_4

    .line 1596
    :cond_3
    move-object/from16 v0, p0

    iput v2, v0, Landroid/support/v4/view/ViewPager;->er:I

    .line 1597
    sub-int v1, v11, v3

    move-object/from16 v0, p0

    iput v1, v0, Landroid/support/v4/view/ViewPager;->es:I

    .line 1598
    move-object/from16 v0, p0

    iput v4, v0, Landroid/support/v4/view/ViewPager;->eS:I

    .line 1600
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/support/v4/view/ViewPager;->eP:Z

    if-eqz v1, :cond_4

    .line 1601
    move-object/from16 v0, p0

    iget v1, v0, Landroid/support/v4/view/ViewPager;->ej:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/support/v4/view/ViewPager;->a(IZIZ)V

    .line 1603
    :cond_4
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Landroid/support/v4/view/ViewPager;->eP:Z

    .line 1604
    return-void

    :cond_5
    move v1, v4

    move v4, v2

    move v2, v5

    move v5, v6

    goto/16 :goto_3

    .line 1521
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 1538
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x30 -> :sswitch_0
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 13
    .parameter
    .parameter

    .prologue
    .line 1370
    const/4 v0, 0x0

    invoke-static {v0, p1}, Landroid/support/v4/view/ViewPager;->getDefaultSize(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, p2}, Landroid/support/v4/view/ViewPager;->getDefaultSize(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/view/ViewPager;->setMeasuredDimension(II)V

    .line 1373
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getMeasuredWidth()I

    move-result v0

    .line 1374
    div-int/lit8 v1, v0, 0xa

    .line 1375
    iget v2, p0, Landroid/support/v4/view/ViewPager;->eC:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Landroid/support/v4/view/ViewPager;->eD:I

    .line 1378
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v1

    sub-int v3, v0, v1

    .line 1379
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingBottom()I

    move-result v1

    sub-int v5, v0, v1

    .line 1386
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v9

    .line 1387
    const/4 v0, 0x0

    move v8, v0

    :goto_0
    if-ge v8, v9, :cond_8

    .line 1388
    invoke-virtual {p0, v8}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 1389
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_3

    .line 1390
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$LayoutParams;

    .line 1391
    if-eqz v0, :cond_3

    iget-boolean v1, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->fg:Z

    if-eqz v1, :cond_3

    .line 1392
    iget v1, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->gravity:I

    and-int/lit8 v6, v1, 0x7

    .line 1393
    iget v1, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->gravity:I

    and-int/lit8 v4, v1, 0x70

    .line 1394
    const/high16 v2, -0x8000

    .line 1395
    const/high16 v1, -0x8000

    .line 1396
    const/16 v7, 0x30

    if-eq v4, v7, :cond_0

    const/16 v7, 0x50

    if-ne v4, v7, :cond_4

    :cond_0
    const/4 v4, 0x1

    move v7, v4

    .line 1397
    :goto_1
    const/4 v4, 0x3

    if-eq v6, v4, :cond_1

    const/4 v4, 0x5

    if-ne v6, v4, :cond_5

    :cond_1
    const/4 v4, 0x1

    move v6, v4

    .line 1399
    :goto_2
    if-eqz v7, :cond_6

    .line 1400
    const/high16 v2, 0x4000

    .line 1407
    :cond_2
    :goto_3
    iget v4, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->width:I

    const/4 v11, -0x2

    if-eq v4, v11, :cond_e

    .line 1408
    const/high16 v4, 0x4000

    .line 1409
    iget v2, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->width:I

    const/4 v11, -0x1

    if-eq v2, v11, :cond_d

    .line 1410
    iget v2, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->width:I

    .line 1413
    :goto_4
    iget v11, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->height:I

    const/4 v12, -0x2

    if-eq v11, v12, :cond_c

    .line 1414
    const/high16 v1, 0x4000

    .line 1415
    iget v11, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->height:I

    const/4 v12, -0x1

    if-eq v11, v12, :cond_c

    .line 1416
    iget v0, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->height:I

    .line 1419
    :goto_5
    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1420
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1421
    invoke-virtual {v10, v2, v0}, Landroid/view/View;->measure(II)V

    .line 1423
    if-eqz v7, :cond_7

    .line 1424
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    sub-int/2addr v5, v0

    .line 1387
    :cond_3
    :goto_6
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_0

    .line 1396
    :cond_4
    const/4 v4, 0x0

    move v7, v4

    goto :goto_1

    .line 1397
    :cond_5
    const/4 v4, 0x0

    move v6, v4

    goto :goto_2

    .line 1401
    :cond_6
    if-eqz v6, :cond_2

    .line 1402
    const/high16 v1, 0x4000

    goto :goto_3

    .line 1425
    :cond_7
    if-eqz v6, :cond_3

    .line 1426
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr v3, v0

    goto :goto_6

    .line 1432
    :cond_8
    const/high16 v0, 0x4000

    invoke-static {v3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->ev:I

    .line 1433
    const/high16 v0, 0x4000

    invoke-static {v5, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->ew:I

    .line 1436
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->ao:Z

    .line 1437
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->populate()V

    .line 1438
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->ao:Z

    .line 1441
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v2

    .line 1442
    const/4 v0, 0x0

    move v1, v0

    :goto_7
    if-ge v1, v2, :cond_b

    .line 1443
    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1444
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v5, 0x8

    if-eq v0, v5, :cond_a

    .line 1448
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$LayoutParams;

    .line 1449
    if-eqz v0, :cond_9

    iget-boolean v5, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->fg:Z

    if-nez v5, :cond_a

    .line 1450
    :cond_9
    int-to-float v5, v3

    iget v0, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->fe:F

    mul-float/2addr v0, v5

    float-to-int v0, v0

    const/high16 v5, 0x4000

    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1452
    iget v5, p0, Landroid/support/v4/view/ViewPager;->ew:I

    invoke-virtual {v4, v0, v5}, Landroid/view/View;->measure(II)V

    .line 1442
    :cond_a
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    .line 1456
    :cond_b
    return-void

    :cond_c
    move v0, v5

    goto :goto_5

    :cond_d
    move v2, v3

    goto/16 :goto_4

    :cond_e
    move v4, v2

    move v2, v3

    goto/16 :goto_4
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v3, -0x1

    .line 2682
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v2

    .line 2683
    and-int/lit8 v4, p1, 0x2

    if-eqz v4, :cond_0

    move v3, v0

    move v4, v1

    .line 2692
    :goto_0
    if-eq v4, v2, :cond_2

    .line 2693
    invoke-virtual {p0, v4}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2694
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_1

    .line 2695
    invoke-direct {p0, v5}, Landroid/support/v4/view/ViewPager;->m(Landroid/view/View;)Landroid/support/v4/view/bw;

    move-result-object v6

    .line 2696
    if-eqz v6, :cond_1

    iget v6, v6, Landroid/support/v4/view/bw;->position:I

    iget v7, p0, Landroid/support/v4/view/ViewPager;->ej:I

    if-ne v6, v7, :cond_1

    .line 2697
    invoke-virtual {v5, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2703
    :goto_1
    return v0

    .line 2688
    :cond_0
    add-int/lit8 v2, v2, -0x1

    move v4, v2

    move v2, v3

    .line 2690
    goto :goto_0

    .line 2692
    :cond_1
    add-int/2addr v4, v3

    goto :goto_0

    :cond_2
    move v0, v1

    .line 2703
    goto :goto_1
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .parameter

    .prologue
    .line 1273
    instance-of v0, p1, Landroid/support/v4/view/ViewPager$SavedState;

    if-nez v0, :cond_0

    .line 1274
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1289
    :goto_0
    return-void

    .line 1278
    :cond_0
    check-cast p1, Landroid/support/v4/view/ViewPager$SavedState;

    .line 1279
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1281
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ei:Landroid/support/v4/view/an;

    if-eqz v0, :cond_1

    .line 1282
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ei:Landroid/support/v4/view/an;

    iget-object v1, p1, Landroid/support/v4/view/ViewPager$SavedState;->fj:Landroid/os/Parcelable;

    iget-object v2, p1, Landroid/support/v4/view/ViewPager$SavedState;->fk:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/an;->a(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 1283
    iget v0, p1, Landroid/support/v4/view/ViewPager$SavedState;->position:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Landroid/support/v4/view/ViewPager;->a(IZZ)V

    goto :goto_0

    .line 1285
    :cond_1
    iget v0, p1, Landroid/support/v4/view/ViewPager$SavedState;->position:I

    iput v0, p0, Landroid/support/v4/view/ViewPager;->ek:I

    .line 1286
    iget-object v0, p1, Landroid/support/v4/view/ViewPager$SavedState;->fj:Landroid/os/Parcelable;

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->el:Landroid/os/Parcelable;

    .line 1287
    iget-object v0, p1, Landroid/support/v4/view/ViewPager$SavedState;->fk:Ljava/lang/ClassLoader;

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->em:Ljava/lang/ClassLoader;

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 1262
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1263
    new-instance v1, Landroid/support/v4/view/ViewPager$SavedState;

    invoke-direct {v1, v0}, Landroid/support/v4/view/ViewPager$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1264
    iget v0, p0, Landroid/support/v4/view/ViewPager;->ej:I

    iput v0, v1, Landroid/support/v4/view/ViewPager$SavedState;->position:I

    .line 1265
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ei:Landroid/support/v4/view/an;

    if-eqz v0, :cond_0

    .line 1266
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ei:Landroid/support/v4/view/an;

    invoke-virtual {v0}, Landroid/support/v4/view/an;->P()Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, v1, Landroid/support/v4/view/ViewPager$SavedState;->fj:Landroid/os/Parcelable;

    .line 1268
    :cond_0
    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1460
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 1463
    if-eq p1, p3, :cond_0

    .line 1464
    iget v0, p0, Landroid/support/v4/view/ViewPager;->ep:I

    iget v1, p0, Landroid/support/v4/view/ViewPager;->ep:I

    if-lez p3, :cond_1

    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->eg:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v3

    sub-int v3, p1, v3

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/2addr v0, v3

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v3

    sub-int v3, p3, v3

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/2addr v1, v3

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v3

    int-to-float v3, v3

    int-to-float v1, v1

    div-float v1, v3, v1

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v1, v0

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->en:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->en:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getDuration()I

    move-result v0

    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->en:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->timePassed()I

    move-result v3

    sub-int v5, v0, v3

    iget v0, p0, Landroid/support/v4/view/ViewPager;->ej:I

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->p(I)Landroid/support/v4/view/bw;

    move-result-object v3

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->en:Landroid/widget/Scroller;

    iget v3, v3, Landroid/support/v4/view/bw;->ff:F

    int-to-float v4, p1

    mul-float/2addr v3, v4

    float-to-int v3, v3

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1466
    :cond_0
    :goto_0
    return-void

    .line 1464
    :cond_1
    iget v0, p0, Landroid/support/v4/view/ViewPager;->ej:I

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->p(I)Landroid/support/v4/view/bw;

    move-result-object v0

    if-eqz v0, :cond_2

    iget v0, v0, Landroid/support/v4/view/bw;->ff:F

    iget v1, p0, Landroid/support/v4/view/ViewPager;->eu:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    :goto_1
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-direct {p0, v2}, Landroid/support/v4/view/ViewPager;->e(Z)V

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v7, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1924
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->eM:Z

    if-eqz v0, :cond_0

    move v0, v3

    .line 2040
    :goto_0
    return v0

    .line 1931
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v4

    .line 1934
    goto :goto_0

    .line 1937
    :cond_1
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ei:Landroid/support/v4/view/an;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ei:Landroid/support/v4/view/an;

    invoke-virtual {v0}, Landroid/support/v4/view/an;->getCount()I

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    move v0, v4

    .line 1939
    goto :goto_0

    .line 1942
    :cond_3
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->eH:Landroid/view/VelocityTracker;

    if-nez v0, :cond_4

    .line 1943
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->eH:Landroid/view/VelocityTracker;

    .line 1945
    :cond_4
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->eH:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1947
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1950
    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    .line 2037
    :cond_5
    :goto_1
    :pswitch_0
    if-eqz v4, :cond_6

    .line 2038
    invoke-static {p0}, Landroid/support/v4/view/ba;->f(Landroid/view/View;)V

    :cond_6
    move v0, v3

    .line 2040
    goto :goto_0

    .line 1952
    :pswitch_1
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->en:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1953
    iput-boolean v4, p0, Landroid/support/v4/view/ViewPager;->ey:Z

    .line 1954
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->populate()V

    .line 1955
    iput-boolean v3, p0, Landroid/support/v4/view/ViewPager;->eA:Z

    .line 1956
    invoke-direct {p0, v3}, Landroid/support/v4/view/ViewPager;->l(I)V

    .line 1959
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->dA:F

    iput v0, p0, Landroid/support/v4/view/ViewPager;->eE:F

    .line 1960
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->dB:F

    iput v0, p0, Landroid/support/v4/view/ViewPager;->eF:F

    .line 1961
    invoke-static {p1, v4}, Landroid/support/v4/view/aj;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->eG:I

    goto :goto_1

    .line 1965
    :pswitch_2
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->eA:Z

    if-nez v0, :cond_7

    .line 1966
    iget v0, p0, Landroid/support/v4/view/ViewPager;->eG:I

    invoke-static {p1, v0}, Landroid/support/v4/view/aj;->a(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 1967
    invoke-static {p1, v0}, Landroid/support/v4/view/aj;->c(Landroid/view/MotionEvent;I)F

    move-result v1

    .line 1968
    iget v2, p0, Landroid/support/v4/view/ViewPager;->eE:F

    sub-float v2, v1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 1969
    invoke-static {p1, v0}, Landroid/support/v4/view/aj;->d(Landroid/view/MotionEvent;I)F

    move-result v5

    .line 1970
    iget v0, p0, Landroid/support/v4/view/ViewPager;->eF:F

    sub-float v0, v5, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 1972
    iget v6, p0, Landroid/support/v4/view/ViewPager;->dC:I

    int-to-float v6, v6

    cmpl-float v6, v2, v6

    if-lez v6, :cond_7

    cmpl-float v0, v2, v0

    if-lez v0, :cond_7

    .line 1974
    iput-boolean v3, p0, Landroid/support/v4/view/ViewPager;->eA:Z

    .line 1975
    iget v0, p0, Landroid/support/v4/view/ViewPager;->dA:F

    sub-float v0, v1, v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_8

    iget v0, p0, Landroid/support/v4/view/ViewPager;->dA:F

    iget v1, p0, Landroid/support/v4/view/ViewPager;->dC:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    :goto_2
    iput v0, p0, Landroid/support/v4/view/ViewPager;->eE:F

    .line 1977
    iput v5, p0, Landroid/support/v4/view/ViewPager;->eF:F

    .line 1978
    invoke-direct {p0, v3}, Landroid/support/v4/view/ViewPager;->l(I)V

    .line 1979
    invoke-direct {p0, v3}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 1983
    :cond_7
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->eA:Z

    if-eqz v0, :cond_5

    .line 1985
    iget v0, p0, Landroid/support/v4/view/ViewPager;->eG:I

    invoke-static {p1, v0}, Landroid/support/v4/view/aj;->a(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 1987
    invoke-static {p1, v0}, Landroid/support/v4/view/aj;->c(Landroid/view/MotionEvent;I)F

    move-result v0

    .line 1988
    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->a(F)Z

    move-result v0

    or-int/lit8 v4, v0, 0x0

    .line 1989
    goto/16 :goto_1

    .line 1975
    :cond_8
    iget v0, p0, Landroid/support/v4/view/ViewPager;->dA:F

    iget v1, p0, Landroid/support/v4/view/ViewPager;->dC:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    goto :goto_2

    .line 1992
    :pswitch_3
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->eA:Z

    if-eqz v0, :cond_5

    .line 1993
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->eH:Landroid/view/VelocityTracker;

    .line 1994
    const/16 v1, 0x3e8

    iget v2, p0, Landroid/support/v4/view/ViewPager;->eJ:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1995
    iget v1, p0, Landroid/support/v4/view/ViewPager;->eG:I

    invoke-static {v0, v1}, Landroid/support/v4/view/aw;->a(Landroid/view/VelocityTracker;I)F

    move-result v0

    float-to-int v5, v0

    .line 1997
    iput-boolean v3, p0, Landroid/support/v4/view/ViewPager;->ey:Z

    .line 1998
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->aj()I

    move-result v1

    .line 1999
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v2

    .line 2000
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->an()Landroid/support/v4/view/bw;

    move-result-object v6

    .line 2001
    iget v0, v6, Landroid/support/v4/view/bw;->position:I

    .line 2002
    int-to-float v2, v2

    int-to-float v1, v1

    div-float v1, v2, v1

    iget v2, v6, Landroid/support/v4/view/bw;->ff:F

    sub-float/2addr v1, v2

    iget v2, v6, Landroid/support/v4/view/bw;->fe:F

    div-float v2, v1, v2

    .line 2003
    iget v1, p0, Landroid/support/v4/view/ViewPager;->eG:I

    invoke-static {p1, v1}, Landroid/support/v4/view/aj;->a(Landroid/view/MotionEvent;I)I

    move-result v1

    .line 2005
    invoke-static {p1, v1}, Landroid/support/v4/view/aj;->c(Landroid/view/MotionEvent;I)F

    move-result v1

    .line 2006
    iget v6, p0, Landroid/support/v4/view/ViewPager;->dA:F

    sub-float/2addr v1, v6

    float-to-int v1, v1

    .line 2007
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v6, p0, Landroid/support/v4/view/ViewPager;->eK:I

    if-le v1, v6, :cond_b

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v6, p0, Landroid/support/v4/view/ViewPager;->eI:I

    if-le v1, v6, :cond_b

    if-lez v5, :cond_a

    :goto_3
    move v2, v0

    :goto_4
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->eg:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_9

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->eg:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/bw;

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->eg:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->eg:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/bw;

    iget v0, v0, Landroid/support/v4/view/bw;->position:I

    iget v1, v1, Landroid/support/v4/view/bw;->position:I

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 2009
    :cond_9
    invoke-direct {p0, v2, v3, v3, v5}, Landroid/support/v4/view/ViewPager;->a(IZZI)V

    .line 2011
    iput v7, p0, Landroid/support/v4/view/ViewPager;->eG:I

    .line 2012
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->ao()V

    .line 2013
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->eN:Landroid/support/v4/widget/j;

    invoke-virtual {v0}, Landroid/support/v4/widget/j;->aG()Z

    move-result v0

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->eO:Landroid/support/v4/widget/j;

    invoke-virtual {v1}, Landroid/support/v4/widget/j;->aG()Z

    move-result v1

    or-int v4, v0, v1

    .line 2014
    goto/16 :goto_1

    .line 2007
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_b
    iget v1, p0, Landroid/support/v4/view/ViewPager;->ej:I

    if-lt v0, v1, :cond_c

    const v1, 0x3f19999a

    :goto_5
    int-to-float v0, v0

    add-float/2addr v0, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    move v2, v0

    goto :goto_4

    :cond_c
    const v1, 0x3ecccccd

    goto :goto_5

    .line 2017
    :pswitch_4
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->eA:Z

    if-eqz v0, :cond_5

    .line 2018
    iget v0, p0, Landroid/support/v4/view/ViewPager;->ej:I

    invoke-direct {p0, v0, v3, v4, v4}, Landroid/support/v4/view/ViewPager;->a(IZIZ)V

    .line 2019
    iput v7, p0, Landroid/support/v4/view/ViewPager;->eG:I

    .line 2020
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->ao()V

    .line 2021
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->eN:Landroid/support/v4/widget/j;

    invoke-virtual {v0}, Landroid/support/v4/widget/j;->aG()Z

    move-result v0

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->eO:Landroid/support/v4/widget/j;

    invoke-virtual {v1}, Landroid/support/v4/widget/j;->aG()Z

    move-result v1

    or-int v4, v0, v1

    goto/16 :goto_1

    .line 2025
    :pswitch_5
    invoke-static {p1}, Landroid/support/v4/view/aj;->b(Landroid/view/MotionEvent;)I

    move-result v0

    .line 2026
    invoke-static {p1, v0}, Landroid/support/v4/view/aj;->c(Landroid/view/MotionEvent;I)F

    move-result v1

    .line 2027
    iput v1, p0, Landroid/support/v4/view/ViewPager;->eE:F

    .line 2028
    invoke-static {p1, v0}, Landroid/support/v4/view/aj;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->eG:I

    goto/16 :goto_1

    .line 2032
    :pswitch_6
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;->d(Landroid/view/MotionEvent;)V

    .line 2033
    iget v0, p0, Landroid/support/v4/view/ViewPager;->eG:I

    invoke-static {p1, v0}, Landroid/support/v4/view/aj;->a(Landroid/view/MotionEvent;I)I

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/view/aj;->c(Landroid/view/MotionEvent;I)F

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->eE:F

    goto/16 :goto_1

    .line 1950
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method final populate()V
    .locals 1

    .prologue
    .line 915
    iget v0, p0, Landroid/support/v4/view/ViewPager;->ej:I

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->o(I)V

    .line 916
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 1319
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->ao:Z

    if-eqz v0, :cond_0

    .line 1320
    invoke-virtual {p0, p1}, Landroid/support/v4/view/ViewPager;->removeViewInLayout(Landroid/view/View;)V

    .line 1324
    :goto_0
    return-void

    .line 1322
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .parameter

    .prologue
    .line 749
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->eq:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
