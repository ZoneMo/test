.class abstract Landroid/support/v7/internal/widget/u;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# instance fields
.field ao:Z

.field lH:Z

.field nF:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "scrolling"
    .end annotation
.end field

.field nG:I

.field nH:I

.field nI:J

.field nJ:J

.field nK:Z

.field nL:I

.field private nM:I

.field nN:Landroid/support/v7/internal/widget/y;

.field nO:Landroid/support/v7/internal/widget/w;

.field nP:Z

.field nQ:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation
.end field

.field nR:J

.field nS:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation
.end field

.field nT:J

.field private nU:Landroid/view/View;

.field nV:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation
.end field

.field nW:I

.field nX:I

.field nY:J

.field private nZ:Z

.field private oa:Z

.field private ob:Landroid/support/v7/internal/widget/z;


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, -0x1

    const-wide/high16 v2, -0x8000

    const/4 v1, 0x0

    .line 236
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    iput v1, p0, Landroid/support/v7/internal/widget/u;->nF:I

    .line 84
    iput-wide v2, p0, Landroid/support/v7/internal/widget/u;->nI:J

    .line 94
    iput-boolean v1, p0, Landroid/support/v7/internal/widget/u;->nK:Z

    .line 126
    iput-boolean v1, p0, Landroid/support/v7/internal/widget/u;->ao:Z

    .line 152
    iput v4, p0, Landroid/support/v7/internal/widget/u;->nQ:I

    .line 158
    iput-wide v2, p0, Landroid/support/v7/internal/widget/u;->nR:J

    .line 163
    iput v4, p0, Landroid/support/v7/internal/widget/u;->nS:I

    .line 169
    iput-wide v2, p0, Landroid/support/v7/internal/widget/u;->nT:J

    .line 201
    iput v4, p0, Landroid/support/v7/internal/widget/u;->nX:I

    .line 206
    iput-wide v2, p0, Landroid/support/v7/internal/widget/u;->nY:J

    .line 225
    iput-boolean v1, p0, Landroid/support/v7/internal/widget/u;->lH:Z

    .line 237
    return-void
.end method

.method static synthetic a(Landroid/support/v7/internal/widget/u;)Landroid/os/Parcelable;
    .locals 1
    .parameter

    .prologue
    .line 50
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/u;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Landroid/support/v7/internal/widget/u;Landroid/os/Parcelable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/u;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method static synthetic b(Landroid/support/v7/internal/widget/u;)V
    .locals 0
    .parameter

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/support/v7/internal/widget/u;->dg()V

    return-void
.end method

.method private dg()V
    .locals 3

    .prologue
    .line 891
    iget-object v0, p0, Landroid/support/v7/internal/widget/u;->nN:Landroid/support/v7/internal/widget/y;

    if-nez v0, :cond_0

    .line 902
    :goto_0
    return-void

    .line 894
    :cond_0
    iget v0, p0, Landroid/support/v7/internal/widget/u;->nQ:I

    .line 895
    if-ltz v0, :cond_1

    .line 896
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/u;->getSelectedView()Landroid/view/View;

    .line 897
    iget-object v1, p0, Landroid/support/v7/internal/widget/u;->nN:Landroid/support/v7/internal/widget/y;

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/u;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/widget/Adapter;->getItemId(I)J

    invoke-interface {v1}, Landroid/support/v7/internal/widget/y;->cP()V

    goto :goto_0

    .line 900
    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/widget/u;->nN:Landroid/support/v7/internal/widget/y;

    goto :goto_0
.end method

.method private getItemIdAtPosition(I)J
    .locals 2
    .parameter

    .prologue
    .line 770
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/u;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 771
    if-eqz v0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    const-wide/high16 v0, -0x8000

    :goto_0
    return-wide v0

    :cond_1
    invoke-interface {v0, p1}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v0

    goto :goto_0
.end method


# virtual methods
.method final K(I)V
    .locals 2
    .parameter

    .prologue
    .line 1094
    iput p1, p0, Landroid/support/v7/internal/widget/u;->nS:I

    .line 1095
    invoke-direct {p0, p1}, Landroid/support/v7/internal/widget/u;->getItemIdAtPosition(I)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v7/internal/widget/u;->nT:J

    .line 1096
    return-void
.end method

.method final L(I)V
    .locals 2
    .parameter

    .prologue
    .line 1104
    iput p1, p0, Landroid/support/v7/internal/widget/u;->nQ:I

    .line 1105
    invoke-direct {p0, p1}, Landroid/support/v7/internal/widget/u;->getItemIdAtPosition(I)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v7/internal/widget/u;->nR:J

    .line 1107
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/u;->nK:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v7/internal/widget/u;->nL:I

    if-nez v0, :cond_0

    if-ltz p1, :cond_0

    .line 1108
    iput p1, p0, Landroid/support/v7/internal/widget/u;->nH:I

    .line 1109
    iget-wide v0, p0, Landroid/support/v7/internal/widget/u;->nR:J

    iput-wide v0, p0, Landroid/support/v7/internal/widget/u;->nI:J

    .line 1111
    :cond_0
    return-void
.end method

.method public a(Landroid/support/v7/internal/widget/w;)V
    .locals 0
    .parameter

    .prologue
    .line 282
    iput-object p1, p0, Landroid/support/v7/internal/widget/u;->nO:Landroid/support/v7/internal/widget/w;

    .line 283
    return-void
.end method

.method public addView(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 461
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 474
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View, int) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 502
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View, int, LayoutParams) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 487
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View, LayoutParams) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected canAnimate()Z
    .locals 1

    .prologue
    .line 916
    invoke-super {p0}, Landroid/view/ViewGroup;->canAnimate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v7/internal/widget/u;->nV:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final df()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 714
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/u;->getAdapter()Landroid/widget/Adapter;

    move-result-object v4

    .line 715
    if-eqz v4, :cond_0

    invoke-interface {v4}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    move v0, v2

    .line 716
    :goto_0
    if-nez v0, :cond_4

    move v3, v2

    .line 720
    :goto_1
    if-eqz v3, :cond_5

    iget-boolean v0, p0, Landroid/support/v7/internal/widget/u;->oa:Z

    if-eqz v0, :cond_5

    move v0, v2

    :goto_2
    invoke-super {p0, v0}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    .line 721
    if-eqz v3, :cond_6

    iget-boolean v0, p0, Landroid/support/v7/internal/widget/u;->nZ:Z

    if-eqz v0, :cond_6

    move v0, v2

    :goto_3
    invoke-super {p0, v0}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 722
    iget-object v0, p0, Landroid/support/v7/internal/widget/u;->nU:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 723
    if-eqz v4, :cond_1

    invoke-interface {v4}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_1
    :goto_4
    if-eqz v2, :cond_9

    iget-object v0, p0, Landroid/support/v7/internal/widget/u;->nU:Landroid/view/View;

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroid/support/v7/internal/widget/u;->nU:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v5}, Landroid/support/v7/internal/widget/u;->setVisibility(I)V

    :goto_5
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/u;->nP:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/u;->getLeft()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/u;->getTop()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/u;->getRight()I

    move-result v4

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/u;->getBottom()I

    move-result v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/internal/widget/u;->onLayout(ZIIII)V

    .line 725
    :cond_2
    :goto_6
    return-void

    :cond_3
    move v0, v1

    .line 715
    goto :goto_0

    :cond_4
    move v3, v1

    .line 716
    goto :goto_1

    :cond_5
    move v0, v1

    .line 720
    goto :goto_2

    :cond_6
    move v0, v1

    .line 721
    goto :goto_3

    :cond_7
    move v2, v1

    .line 723
    goto :goto_4

    :cond_8
    invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/u;->setVisibility(I)V

    goto :goto_5

    :cond_9
    iget-object v0, p0, Landroid/support/v7/internal/widget/u;->nU:Landroid/view/View;

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/support/v7/internal/widget/u;->nU:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/u;->setVisibility(I)V

    goto :goto_6
.end method

.method final dh()V
    .locals 4

    .prologue
    .line 983
    iget v0, p0, Landroid/support/v7/internal/widget/u;->nS:I

    iget v1, p0, Landroid/support/v7/internal/widget/u;->nX:I

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Landroid/support/v7/internal/widget/u;->nT:J

    iget-wide v2, p0, Landroid/support/v7/internal/widget/u;->nY:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    .line 984
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/u;->nN:Landroid/support/v7/internal/widget/y;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroid/support/v7/internal/widget/u;->ao:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/support/v7/internal/widget/u;->lH:Z

    if-eqz v0, :cond_6

    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/widget/u;->ob:Landroid/support/v7/internal/widget/z;

    if-nez v0, :cond_2

    new-instance v0, Landroid/support/v7/internal/widget/z;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/support/v7/internal/widget/z;-><init>(Landroid/support/v7/internal/widget/u;B)V

    iput-object v0, p0, Landroid/support/v7/internal/widget/u;->ob:Landroid/support/v7/internal/widget/z;

    :cond_2
    iget-object v0, p0, Landroid/support/v7/internal/widget/u;->ob:Landroid/support/v7/internal/widget/z;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/u;->post(Ljava/lang/Runnable;)Z

    :cond_3
    :goto_0
    iget v0, p0, Landroid/support/v7/internal/widget/u;->nS:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/u;->isShown()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/u;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/u;->sendAccessibilityEvent(I)V

    .line 985
    :cond_4
    iget v0, p0, Landroid/support/v7/internal/widget/u;->nS:I

    iput v0, p0, Landroid/support/v7/internal/widget/u;->nX:I

    .line 986
    iget-wide v0, p0, Landroid/support/v7/internal/widget/u;->nT:J

    iput-wide v0, p0, Landroid/support/v7/internal/widget/u;->nY:J

    .line 988
    :cond_5
    return-void

    .line 984
    :cond_6
    invoke-direct {p0}, Landroid/support/v7/internal/widget/u;->dg()V

    goto :goto_0
.end method

.method final di()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1119
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/u;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 1120
    iput-boolean v4, p0, Landroid/support/v7/internal/widget/u;->nK:Z

    .line 1121
    iget v0, p0, Landroid/support/v7/internal/widget/u;->nM:I

    int-to-long v0, v0

    iput-wide v0, p0, Landroid/support/v7/internal/widget/u;->nJ:J

    .line 1122
    iget v0, p0, Landroid/support/v7/internal/widget/u;->nS:I

    if-ltz v0, :cond_2

    .line 1124
    iget v0, p0, Landroid/support/v7/internal/widget/u;->nS:I

    iget v1, p0, Landroid/support/v7/internal/widget/u;->nF:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/u;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1125
    iget-wide v1, p0, Landroid/support/v7/internal/widget/u;->nR:J

    iput-wide v1, p0, Landroid/support/v7/internal/widget/u;->nI:J

    .line 1126
    iget v1, p0, Landroid/support/v7/internal/widget/u;->nQ:I

    iput v1, p0, Landroid/support/v7/internal/widget/u;->nH:I

    .line 1127
    if-eqz v0, :cond_0

    .line 1128
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Landroid/support/v7/internal/widget/u;->nG:I

    .line 1130
    :cond_0
    iput v3, p0, Landroid/support/v7/internal/widget/u;->nL:I

    .line 1147
    :cond_1
    :goto_0
    return-void

    .line 1133
    :cond_2
    invoke-virtual {p0, v3}, Landroid/support/v7/internal/widget/u;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1134
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/u;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    .line 1135
    iget v2, p0, Landroid/support/v7/internal/widget/u;->nF:I

    if-ltz v2, :cond_4

    iget v2, p0, Landroid/support/v7/internal/widget/u;->nF:I

    invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 1136
    iget v2, p0, Landroid/support/v7/internal/widget/u;->nF:I

    invoke-interface {v1, v2}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v1

    iput-wide v1, p0, Landroid/support/v7/internal/widget/u;->nI:J

    .line 1140
    :goto_1
    iget v1, p0, Landroid/support/v7/internal/widget/u;->nF:I

    iput v1, p0, Landroid/support/v7/internal/widget/u;->nH:I

    .line 1141
    if-eqz v0, :cond_3

    .line 1142
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Landroid/support/v7/internal/widget/u;->nG:I

    .line 1144
    :cond_3
    iput v4, p0, Landroid/support/v7/internal/widget/u;->nL:I

    goto :goto_0

    .line 1138
    :cond_4
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Landroid/support/v7/internal/widget/u;->nI:J

    goto :goto_1
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .parameter

    .prologue
    .line 906
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/u;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 907
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 909
    const/4 v0, 0x1

    .line 911
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .parameter

    .prologue
    .line 793
    invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/u;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 794
    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .parameter

    .prologue
    .line 785
    invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/u;->dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V

    .line 786
    return-void
.end method

.method public final g(Landroid/view/View;I)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 303
    iget-object v2, p0, Landroid/support/v7/internal/widget/u;->nO:Landroid/support/v7/internal/widget/w;

    if-eqz v2, :cond_1

    .line 304
    invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/u;->playSoundEffect(I)V

    .line 305
    if-eqz p1, :cond_0

    .line 306
    invoke-virtual {p1, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 308
    :cond_0
    iget-object v1, p0, Landroid/support/v7/internal/widget/u;->nO:Landroid/support/v7/internal/widget/w;

    invoke-interface {v1, p1, p2}, Landroid/support/v7/internal/widget/w;->h(Landroid/view/View;I)V

    .line 312
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public abstract getAdapter()Landroid/widget/Adapter;
.end method

.method public final getSelectedItemPosition()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 552
    iget v0, p0, Landroid/support/v7/internal/widget/u;->nQ:I

    return v0
.end method

.method public abstract getSelectedView()Landroid/view/View;
.end method

.method final handleDataChanged()V
    .locals 14

    .prologue
    .line 920
    iget v7, p0, Landroid/support/v7/internal/widget/u;->nV:I

    .line 921
    const/4 v4, 0x0

    .line 923
    if-lez v7, :cond_f

    .line 928
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/u;->nK:Z

    if-eqz v0, :cond_e

    .line 931
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/internal/widget/u;->nK:Z

    .line 935
    iget v8, p0, Landroid/support/v7/internal/widget/u;->nV:I

    if-eqz v8, :cond_d

    iget-wide v9, p0, Landroid/support/v7/internal/widget/u;->nI:J

    iget v0, p0, Landroid/support/v7/internal/widget/u;->nH:I

    const-wide/high16 v1, -0x8000

    cmp-long v1, v9, v1

    if-eqz v1, :cond_d

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v1, v8, -0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v5, 0x64

    add-long v11, v2, v5

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/u;->getAdapter()Landroid/widget/Adapter;

    move-result-object v13

    if-eqz v13, :cond_d

    move v2, v1

    move v3, v1

    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    cmp-long v5, v5, v11

    if-gtz v5, :cond_d

    invoke-interface {v13, v3}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v5

    cmp-long v5, v5, v9

    if-nez v5, :cond_6

    .line 936
    :goto_1
    if-ltz v3, :cond_e

    .line 939
    if-ne v3, v3, :cond_e

    .line 941
    invoke-virtual {p0, v3}, Landroid/support/v7/internal/widget/u;->L(I)V

    .line 942
    const/4 v4, 0x1

    move v0, v4

    .line 946
    :goto_2
    if-nez v0, :cond_4

    .line 948
    iget v1, p0, Landroid/support/v7/internal/widget/u;->nQ:I

    .line 951
    if-lt v1, v7, :cond_1

    .line 952
    add-int/lit8 v1, v7, -0x1

    .line 954
    :cond_1
    if-gez v1, :cond_2

    .line 955
    const/4 v1, 0x0

    .line 960
    :cond_2
    if-gez v1, :cond_3

    .line 964
    :cond_3
    if-ltz v1, :cond_4

    .line 965
    invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/u;->L(I)V

    .line 966
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/u;->dh()V

    .line 967
    const/4 v0, 0x1

    .line 971
    :cond_4
    :goto_3
    if-nez v0, :cond_5

    .line 973
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/internal/widget/u;->nS:I

    .line 974
    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Landroid/support/v7/internal/widget/u;->nT:J

    .line 975
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/internal/widget/u;->nQ:I

    .line 976
    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Landroid/support/v7/internal/widget/u;->nR:J

    .line 977
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/internal/widget/u;->nK:Z

    .line 978
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/u;->dh()V

    .line 980
    :cond_5
    return-void

    .line 935
    :cond_6
    add-int/lit8 v5, v8, -0x1

    if-ne v1, v5, :cond_9

    const/4 v5, 0x1

    move v6, v5

    :goto_4
    if-nez v2, :cond_a

    const/4 v5, 0x1

    :goto_5
    if-eqz v6, :cond_7

    if-nez v5, :cond_d

    :cond_7
    if-nez v5, :cond_8

    if-eqz v0, :cond_b

    if-nez v6, :cond_b

    :cond_8
    add-int/lit8 v1, v1, 0x1

    const/4 v0, 0x0

    move v3, v1

    goto :goto_0

    :cond_9
    const/4 v5, 0x0

    move v6, v5

    goto :goto_4

    :cond_a
    const/4 v5, 0x0

    goto :goto_5

    :cond_b
    if-nez v6, :cond_c

    if-nez v0, :cond_0

    if-nez v5, :cond_0

    :cond_c
    add-int/lit8 v2, v2, -0x1

    const/4 v0, 0x1

    move v3, v2

    goto :goto_0

    :cond_d
    const/4 v3, -0x1

    goto :goto_1

    :cond_e
    move v0, v4

    goto :goto_2

    :cond_f
    move v0, v4

    goto :goto_3
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 849
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 850
    iget-object v0, p0, Landroid/support/v7/internal/widget/u;->ob:Landroid/support/v7/internal/widget/z;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/u;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 851
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
    .line 542
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/u;->getHeight()I

    move-result v0

    iput v0, p0, Landroid/support/v7/internal/widget/u;->nM:I

    .line 543
    return-void
.end method

.method public removeAllViews()V
    .locals 2

    .prologue
    .line 537
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "removeAllViews() is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeView(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 515
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "removeView(View) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeViewAt(I)V
    .locals 2
    .parameter

    .prologue
    .line 527
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "removeViewAt(int) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setFocusable(Z)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 689
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/u;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 690
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    move v0, v2

    .line 692
    :goto_0
    iput-boolean p1, p0, Landroid/support/v7/internal/widget/u;->nZ:Z

    .line 693
    if-nez p1, :cond_1

    .line 694
    iput-boolean v1, p0, Landroid/support/v7/internal/widget/u;->oa:Z

    .line 697
    :cond_1
    if-eqz p1, :cond_3

    if-nez v0, :cond_3

    :goto_1
    invoke-super {p0, v2}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 698
    return-void

    :cond_2
    move v0, v1

    .line 690
    goto :goto_0

    :cond_3
    move v2, v1

    .line 697
    goto :goto_1
.end method

.method public setFocusableInTouchMode(Z)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 702
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/u;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 703
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    move v0, v2

    .line 705
    :goto_0
    iput-boolean p1, p0, Landroid/support/v7/internal/widget/u;->oa:Z

    .line 706
    if-eqz p1, :cond_1

    .line 707
    iput-boolean v2, p0, Landroid/support/v7/internal/widget/u;->nZ:Z

    .line 710
    :cond_1
    if-eqz p1, :cond_3

    if-nez v0, :cond_3

    :goto_1
    invoke-super {p0, v2}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    .line 711
    return-void

    :cond_2
    move v0, v1

    .line 703
    goto :goto_0

    :cond_3
    move v2, v1

    .line 710
    goto :goto_1
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2
    .parameter

    .prologue
    .line 776
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t call setOnClickListener for an AdapterView. You probably want setOnItemClickListener instead"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
