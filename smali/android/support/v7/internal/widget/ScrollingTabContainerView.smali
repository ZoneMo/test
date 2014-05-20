.class public final Landroid/support/v7/internal/widget/ScrollingTabContainerView;
.super Landroid/widget/HorizontalScrollView;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/internal/widget/w;


# instance fields
.field private final ge:Landroid/view/LayoutInflater;

.field private lC:I

.field mD:Ljava/lang/Runnable;

.field private pn:Landroid/support/v7/internal/widget/ao;

.field private po:Landroid/widget/LinearLayout;

.field private pp:Landroid/support/v7/internal/widget/ap;

.field private pq:Z

.field pr:I

.field ps:I

.field private pt:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 64
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 65
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->ge:Landroid/view/LayoutInflater;

    .line 67
    invoke-virtual {p0, v2}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->setHorizontalScrollBarEnabled(Z)V

    .line 69
    invoke-static {p1}, Landroid/support/v7/internal/view/a;->d(Landroid/content/Context;)Landroid/support/v7/internal/view/a;

    move-result-object v0

    .line 70
    invoke-virtual {v0}, Landroid/support/v7/internal/view/a;->bs()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->E(I)V

    .line 71
    invoke-virtual {v0}, Landroid/support/v7/internal/view/a;->bu()I

    move-result v0

    iput v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->ps:I

    .line 73
    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->ge:Landroid/view/LayoutInflater;

    sget v1, Lcom/tencent/mm/k;->aRP:I

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->po:Landroid/widget/LinearLayout;

    .line 74
    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->po:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    return-void
.end method

.method private E(I)V
    .locals 0
    .parameter

    .prologue
    .line 183
    iput p1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->lC:I

    .line 184
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->requestLayout()V

    .line 185
    return-void
.end method

.method private a(Landroid/support/v7/app/c;Z)Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 237
    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->ge:Landroid/view/LayoutInflater;

    sget v1, Lcom/tencent/mm/k;->aRO:I

    iget-object v2, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->po:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;

    .line 239
    invoke-virtual {v0, p0, p1, p2}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->a(Landroid/support/v7/internal/widget/ScrollingTabContainerView;Landroid/support/v7/app/c;Z)V

    .line 241
    if-eqz p2, :cond_0

    .line 242
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 243
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/4 v2, -0x1

    iget v3, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->lC:I

    invoke-direct {v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 253
    :goto_0
    return-object v0

    .line 246
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->setFocusable(Z)V

    .line 248
    iget-object v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->pn:Landroid/support/v7/internal/widget/ao;

    if-nez v1, :cond_1

    .line 249
    new-instance v1, Landroid/support/v7/internal/widget/ao;

    invoke-direct {v1, p0, v3}, Landroid/support/v7/internal/widget/ao;-><init>(Landroid/support/v7/internal/widget/ScrollingTabContainerView;B)V

    iput-object v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->pn:Landroid/support/v7/internal/widget/ao;

    .line 251
    :cond_1
    iget-object v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->pn:Landroid/support/v7/internal/widget/ao;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method static synthetic a(Landroid/support/v7/internal/widget/ScrollingTabContainerView;Landroid/support/v7/app/c;)Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 45
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->a(Landroid/support/v7/app/c;Z)Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Landroid/support/v7/internal/widget/ScrollingTabContainerView;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->po:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private cO()Z
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->pp:Landroid/support/v7/internal/widget/ap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->pp:Landroid/support/v7/internal/widget/ap;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ap;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private dp()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 158
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->cO()Z

    move-result v0

    if-nez v0, :cond_0

    .line 166
    :goto_0
    return v4

    .line 162
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->pp:Landroid/support/v7/internal/widget/ap;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->removeView(Landroid/view/View;)V

    .line 163
    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->po:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 165
    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->pp:Landroid/support/v7/internal/widget/ap;

    iget v0, v0, Landroid/support/v7/internal/widget/u;->nQ:I

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->N(I)V

    goto :goto_0
.end method


# virtual methods
.method public final N(I)V
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 170
    iput p1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->pt:I

    .line 171
    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->po:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    move v2, v1

    .line 172
    :goto_0
    if-ge v2, v3, :cond_2

    .line 173
    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->po:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 174
    if-ne v2, p1, :cond_1

    const/4 v0, 0x1

    .line 175
    :goto_1
    invoke-virtual {v4, v0}, Landroid/view/View;->setSelected(Z)V

    .line 176
    if-eqz v0, :cond_0

    .line 177
    invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->O(I)V

    .line 172
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 174
    goto :goto_1

    .line 180
    :cond_2
    return-void
.end method

.method public final O(I)V
    .locals 2
    .parameter

    .prologue
    .line 205
    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->po:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 206
    iget-object v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mD:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 207
    iget-object v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mD:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 209
    :cond_0
    new-instance v1, Landroid/support/v7/internal/widget/am;

    invoke-direct {v1, p0, v0}, Landroid/support/v7/internal/widget/am;-><init>(Landroid/support/v7/internal/widget/ScrollingTabContainerView;Landroid/view/View;)V

    iput-object v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mD:Ljava/lang/Runnable;

    .line 216
    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mD:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->post(Ljava/lang/Runnable;)Z

    .line 217
    return-void
.end method

.method public final P(I)V
    .locals 1
    .parameter

    .prologue
    .line 287
    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->po:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->update()V

    .line 288
    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->pp:Landroid/support/v7/internal/widget/ap;

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->pp:Landroid/support/v7/internal/widget/ap;

    iget-object v0, v0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->lE:Landroid/widget/SpinnerAdapter;

    check-cast v0, Landroid/support/v7/internal/widget/an;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/an;->notifyDataSetChanged()V

    .line 291
    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->pq:Z

    if-eqz v0, :cond_1

    .line 292
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->requestLayout()V

    .line 294
    :cond_1
    return-void
.end method

.method public final b(Landroid/support/v7/app/c;Z)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 257
    invoke-direct {p0, p1, v5}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->a(Landroid/support/v7/app/c;Z)Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;

    move-result-object v1

    .line 258
    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->po:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/high16 v4, 0x3f80

    invoke-direct {v2, v5, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 260
    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->pp:Landroid/support/v7/internal/widget/ap;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->pp:Landroid/support/v7/internal/widget/ap;

    iget-object v0, v0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->lE:Landroid/widget/SpinnerAdapter;

    check-cast v0, Landroid/support/v7/internal/widget/an;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/an;->notifyDataSetChanged()V

    .line 263
    :cond_0
    if-eqz p2, :cond_1

    .line 264
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->setSelected(Z)V

    .line 266
    :cond_1
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->pq:Z

    if-eqz v0, :cond_2

    .line 267
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->requestLayout()V

    .line 269
    :cond_2
    return-void
.end method

.method public final h(Landroid/view/View;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 318
    check-cast p1, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;

    .line 319
    invoke-virtual {p1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->dq()Landroid/support/v7/app/c;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/c;->select()V

    .line 320
    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 1

    .prologue
    .line 221
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    .line 222
    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mD:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mD:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->post(Ljava/lang/Runnable;)Z

    .line 226
    :cond_0
    return-void
.end method

.method protected final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter

    .prologue
    .line 197
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/internal/view/a;->d(Landroid/content/Context;)Landroid/support/v7/internal/view/a;

    move-result-object v0

    .line 200
    invoke-virtual {v0}, Landroid/support/v7/internal/view/a;->bs()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->E(I)V

    .line 201
    invoke-virtual {v0}, Landroid/support/v7/internal/view/a;->bu()I

    move-result v0

    iput v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->ps:I

    .line 202
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 230
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onDetachedFromWindow()V

    .line 231
    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mD:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mD:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 234
    :cond_0
    return-void
.end method

.method public final onMeasure(II)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v8, -0x2

    const/high16 v7, 0x4000

    const/4 v1, 0x1

    const/4 v6, -0x1

    const/4 v2, 0x0

    .line 80
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 81
    if-ne v3, v7, :cond_6

    move v0, v1

    .line 82
    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->setFillViewport(Z)V

    .line 84
    iget-object v4, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->po:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    .line 85
    if-le v4, v1, :cond_8

    if-eq v3, v7, :cond_0

    const/high16 v5, -0x8000

    if-ne v3, v5, :cond_8

    .line 87
    :cond_0
    const/4 v3, 0x2

    if-le v4, v3, :cond_7

    .line 88
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3ecccccd

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->pr:I

    .line 92
    :goto_1
    iget v3, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->pr:I

    iget v4, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->ps:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->pr:I

    .line 97
    :goto_2
    iget v3, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->lC:I

    invoke-static {v3, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 99
    if-nez v0, :cond_9

    iget-boolean v4, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->pq:Z

    if-eqz v4, :cond_9

    .line 101
    :goto_3
    if-eqz v1, :cond_b

    .line 103
    iget-object v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->po:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->measure(II)V

    .line 104
    iget-object v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->po:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    if-le v1, v4, :cond_a

    .line 105
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->cO()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->pp:Landroid/support/v7/internal/widget/ap;

    if-nez v1, :cond_1

    new-instance v1, Landroid/support/v7/internal/widget/ap;

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/tencent/mm/d;->actionDropDownStyle:I

    invoke-direct {v1, v4, v5}, Landroid/support/v7/internal/widget/ap;-><init>(Landroid/content/Context;I)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v8, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4}, Landroid/support/v7/internal/widget/ap;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, p0}, Landroid/support/v7/internal/widget/ap;->b(Landroid/support/v7/internal/widget/w;)V

    iput-object v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->pp:Landroid/support/v7/internal/widget/ap;

    :cond_1
    iget-object v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->po:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->pp:Landroid/support/v7/internal/widget/ap;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v8, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v4}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->pp:Landroid/support/v7/internal/widget/ap;

    iget-object v1, v1, Landroid/support/v7/internal/widget/AbsSpinnerICS;->lE:Landroid/widget/SpinnerAdapter;

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->pp:Landroid/support/v7/internal/widget/ap;

    new-instance v4, Landroid/support/v7/internal/widget/an;

    invoke-direct {v4, p0, v2}, Landroid/support/v7/internal/widget/an;-><init>(Landroid/support/v7/internal/widget/ScrollingTabContainerView;B)V

    invoke-virtual {v1, v4}, Landroid/support/v7/internal/widget/ap;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    :cond_2
    iget-object v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mD:Ljava/lang/Runnable;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mD:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mD:Ljava/lang/Runnable;

    :cond_3
    iget-object v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->pp:Landroid/support/v7/internal/widget/ap;

    iget v2, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->pt:I

    invoke-virtual {v1, v2}, Landroid/support/v7/internal/widget/ap;->setSelection(I)V

    .line 113
    :cond_4
    :goto_4
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->getMeasuredWidth()I

    move-result v1

    .line 114
    invoke-super {p0, p1, v3}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 115
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->getMeasuredWidth()I

    move-result v2

    .line 117
    if-eqz v0, :cond_5

    if-eq v1, v2, :cond_5

    .line 119
    iget v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->pt:I

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->N(I)V

    .line 121
    :cond_5
    return-void

    :cond_6
    move v0, v2

    .line 81
    goto/16 :goto_0

    .line 90
    :cond_7
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iput v3, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->pr:I

    goto/16 :goto_1

    .line 94
    :cond_8
    iput v6, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->pr:I

    goto/16 :goto_2

    :cond_9
    move v1, v2

    .line 99
    goto/16 :goto_3

    .line 107
    :cond_a
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->dp()Z

    goto :goto_4

    .line 110
    :cond_b
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->dp()Z

    goto :goto_4
.end method

.method public final x(Z)V
    .locals 0
    .parameter

    .prologue
    .line 133
    iput-boolean p1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->pq:Z

    .line 134
    return-void
.end method
