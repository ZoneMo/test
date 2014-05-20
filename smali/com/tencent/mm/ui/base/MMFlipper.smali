.class public Lcom/tencent/mm/ui/base/MMFlipper;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# instance fields
.field private dC:I

.field private doK:Landroid/view/animation/Interpolator;

.field private eE:F

.field private eF:F

.field private eH:Landroid/view/VelocityTracker;

.field private en:Landroid/widget/Scroller;

.field private fmC:I

.field protected gym:I

.field protected gyn:I

.field private gyp:Z

.field protected gzn:I

.field private gzo:I

.field private gzp:Z

.field private gzq:Lcom/tencent/mm/ui/base/at;

.field private gzr:Lcom/tencent/mm/ui/base/as;

.field gzs:I

.field gzt:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/tencent/mm/ui/base/MMFlipper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 71
    invoke-direct {p0, p1}, Lcom/tencent/mm/ui/base/MMFlipper;->r(Landroid/content/Context;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const v1, -0x75bc371

    const/4 v0, 0x0

    .line 75
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    iput v0, p0, Lcom/tencent/mm/ui/base/MMFlipper;->gzo:I

    .line 41
    iput v0, p0, Lcom/tencent/mm/ui/base/MMFlipper;->fmC:I

    .line 45
    iput-boolean v0, p0, Lcom/tencent/mm/ui/base/MMFlipper;->gzp:Z

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/ui/base/MMFlipper;->gyp:Z

    .line 118
    iput v1, p0, Lcom/tencent/mm/ui/base/MMFlipper;->gzs:I

    iput v1, p0, Lcom/tencent/mm/ui/base/MMFlipper;->gzt:I

    .line 76
    invoke-direct {p0, p1}, Lcom/tencent/mm/ui/base/MMFlipper;->r(Landroid/content/Context;)V

    .line 77
    return-void
.end method

.method private r(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 84
    new-instance v0, Lcom/tencent/mm/ui/base/au;

    invoke-direct {v0}, Lcom/tencent/mm/ui/base/au;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/base/MMFlipper;->doK:Landroid/view/animation/Interpolator;

    .line 85
    new-instance v0, Landroid/widget/Scroller;

    iget-object v1, p0, Lcom/tencent/mm/ui/base/MMFlipper;->doK:Landroid/view/animation/Interpolator;

    invoke-direct {v0, p1, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/base/MMFlipper;->en:Landroid/widget/Scroller;

    .line 86
    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/mm/ui/base/MMFlipper;->gyn:I

    .line 87
    iget v0, p0, Lcom/tencent/mm/ui/base/MMFlipper;->gzo:I

    iput v0, p0, Lcom/tencent/mm/ui/base/MMFlipper;->gym:I

    iput v0, p0, Lcom/tencent/mm/ui/base/MMFlipper;->gzn:I

    .line 88
    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/MMFlipper;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/base/MMFlipper;->dC:I

    .line 89
    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/ui/base/as;)V
    .locals 0
    .parameter

    .prologue
    .line 153
    iput-object p1, p0, Lcom/tencent/mm/ui/base/MMFlipper;->gzr:Lcom/tencent/mm/ui/base/as;

    .line 154
    return-void
.end method

.method public final a(Lcom/tencent/mm/ui/base/at;)V
    .locals 0
    .parameter

    .prologue
    .line 157
    iput-object p1, p0, Lcom/tencent/mm/ui/base/MMFlipper;->gzq:Lcom/tencent/mm/ui/base/at;

    .line 158
    return-void
.end method

.method public final aGN()V
    .locals 1

    .prologue
    .line 114
    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/mm/ui/base/MMFlipper;->gyn:I

    .line 115
    iget v0, p0, Lcom/tencent/mm/ui/base/MMFlipper;->gzo:I

    iput v0, p0, Lcom/tencent/mm/ui/base/MMFlipper;->gym:I

    iput v0, p0, Lcom/tencent/mm/ui/base/MMFlipper;->gzn:I

    .line 116
    return-void
.end method

.method public final aGO()Z
    .locals 1

    .prologue
    .line 181
    iget-boolean v0, p0, Lcom/tencent/mm/ui/base/MMFlipper;->gzp:Z

    return v0
.end method

.method public final aGP()I
    .locals 5

    .prologue
    .line 216
    const-string v0, "MicroMsg.MMFlipper"

    const-string v1, "cur screen is %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/tencent/mm/ui/base/MMFlipper;->gym:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 217
    iget v0, p0, Lcom/tencent/mm/ui/base/MMFlipper;->gym:I

    return v0
.end method

.method public final am(Z)V
    .locals 0
    .parameter

    .prologue
    .line 359
    iput-boolean p1, p0, Lcom/tencent/mm/ui/base/MMFlipper;->gyp:Z

    .line 360
    return-void
.end method

.method public final bg(II)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 161
    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/MMFlipper;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 162
    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/MMFlipper;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/MMFlipper;->getWidth()I

    move-result v1

    mul-int/2addr v1, v6

    if-eq v0, v1, :cond_1

    .line 164
    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/MMFlipper;->getWidth()I

    move-result v0

    mul-int/2addr v0, v6

    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/MMFlipper;->getScrollX()I

    move-result v1

    sub-int v3, v0, v1

    .line 165
    iget-object v0, p0, Lcom/tencent/mm/ui/base/MMFlipper;->en:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/MMFlipper;->getScrollX()I

    move-result v1

    if-gtz p2, :cond_2

    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/MMFlipper;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    invoke-static {v4, v5}, Lcom/tencent/mm/an/a;->n(Landroid/content/Context;I)I

    move-result v5

    :goto_0
    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 166
    iget v0, p0, Lcom/tencent/mm/ui/base/MMFlipper;->gym:I

    if-eq v0, v6, :cond_0

    .line 167
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/ui/base/MMFlipper;->gzp:Z

    .line 168
    iget v0, p0, Lcom/tencent/mm/ui/base/MMFlipper;->gzn:I

    iget v1, p0, Lcom/tencent/mm/ui/base/MMFlipper;->gym:I

    sub-int v1, v6, v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/mm/ui/base/MMFlipper;->gzn:I

    .line 170
    :cond_0
    iget v0, p0, Lcom/tencent/mm/ui/base/MMFlipper;->gym:I

    iput v0, p0, Lcom/tencent/mm/ui/base/MMFlipper;->gyn:I

    .line 171
    iput v6, p0, Lcom/tencent/mm/ui/base/MMFlipper;->gym:I

    .line 172
    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/MMFlipper;->invalidate()V

    .line 174
    :cond_1
    return-void

    :cond_2
    move v5, p2

    .line 165
    goto :goto_0
.end method

.method public computeScroll()V
    .locals 3

    .prologue
    .line 226
    iget-object v0, p0, Lcom/tencent/mm/ui/base/MMFlipper;->en:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    iget v0, p0, Lcom/tencent/mm/ui/base/MMFlipper;->eE:F

    .line 227
    iget-object v0, p0, Lcom/tencent/mm/ui/base/MMFlipper;->en:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 228
    iget-object v0, p0, Lcom/tencent/mm/ui/base/MMFlipper;->en:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Lcom/tencent/mm/ui/base/MMFlipper;->en:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/ui/base/MMFlipper;->scrollTo(II)V

    .line 229
    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/MMFlipper;->postInvalidate()V

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 230
    :cond_1
    iget-boolean v0, p0, Lcom/tencent/mm/ui/base/MMFlipper;->gzp:Z

    if-eqz v0, :cond_0

    .line 231
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/base/MMFlipper;->gzp:Z

    .line 232
    iget-object v0, p0, Lcom/tencent/mm/ui/base/MMFlipper;->gzq:Lcom/tencent/mm/ui/base/at;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/tencent/mm/ui/base/MMFlipper;->gzq:Lcom/tencent/mm/ui/base/at;

    iget v1, p0, Lcom/tencent/mm/ui/base/MMFlipper;->gyn:I

    iget v2, p0, Lcom/tencent/mm/ui/base/MMFlipper;->gzn:I

    invoke-interface {v0, v1, v2}, Lcom/tencent/mm/ui/base/at;->ac(II)V

    goto :goto_0
.end method

.method public final mZ(I)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 185
    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/MMFlipper;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 187
    iput-boolean v2, p0, Lcom/tencent/mm/ui/base/MMFlipper;->gzp:Z

    .line 188
    iget-object v1, p0, Lcom/tencent/mm/ui/base/MMFlipper;->en:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_0

    .line 189
    iget-object v1, p0, Lcom/tencent/mm/ui/base/MMFlipper;->en:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->abortAnimation()V

    .line 191
    :cond_0
    iget v1, p0, Lcom/tencent/mm/ui/base/MMFlipper;->gym:I

    iput v1, p0, Lcom/tencent/mm/ui/base/MMFlipper;->gyn:I

    .line 192
    iput v0, p0, Lcom/tencent/mm/ui/base/MMFlipper;->gym:I

    .line 193
    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/MMFlipper;->getWidth()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-virtual {p0, v0, v2}, Lcom/tencent/mm/ui/base/MMFlipper;->scrollTo(II)V

    .line 194
    return-void
.end method

.method public final na(I)V
    .locals 0
    .parameter

    .prologue
    .line 197
    iput p1, p0, Lcom/tencent/mm/ui/base/MMFlipper;->gzn:I

    .line 198
    return-void
.end method

.method public final nb(I)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 201
    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/MMFlipper;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 203
    iput-boolean v3, p0, Lcom/tencent/mm/ui/base/MMFlipper;->gzp:Z

    .line 204
    iget-object v1, p0, Lcom/tencent/mm/ui/base/MMFlipper;->en:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_0

    .line 205
    iget-object v1, p0, Lcom/tencent/mm/ui/base/MMFlipper;->en:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->abortAnimation()V

    .line 207
    :cond_0
    iget-object v1, p0, Lcom/tencent/mm/ui/base/MMFlipper;->gzq:Lcom/tencent/mm/ui/base/at;

    if-eqz v1, :cond_1

    .line 208
    iget-object v1, p0, Lcom/tencent/mm/ui/base/MMFlipper;->gzq:Lcom/tencent/mm/ui/base/at;

    iget v2, p0, Lcom/tencent/mm/ui/base/MMFlipper;->gyn:I

    invoke-interface {v1, v2, v0}, Lcom/tencent/mm/ui/base/at;->ac(II)V

    .line 210
    :cond_1
    iget v1, p0, Lcom/tencent/mm/ui/base/MMFlipper;->gym:I

    iput v1, p0, Lcom/tencent/mm/ui/base/MMFlipper;->gyn:I

    .line 211
    iput v0, p0, Lcom/tencent/mm/ui/base/MMFlipper;->gym:I

    iput v0, p0, Lcom/tencent/mm/ui/base/MMFlipper;->gzn:I

    .line 212
    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/MMFlipper;->getWidth()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-virtual {p0, v0, v3}, Lcom/tencent/mm/ui/base/MMFlipper;->scrollTo(II)V

    .line 213
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 306
    iget-boolean v0, p0, Lcom/tencent/mm/ui/base/MMFlipper;->gyp:Z

    if-nez v0, :cond_1

    .line 307
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 345
    :cond_0
    :goto_0
    return v2

    .line 310
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/MMFlipper;->getChildCount()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 311
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0

    .line 313
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 314
    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    iget v3, p0, Lcom/tencent/mm/ui/base/MMFlipper;->fmC:I

    if-nez v3, :cond_0

    .line 318
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 319
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 321
    packed-switch v0, :pswitch_data_0

    .line 345
    :goto_1
    iget v0, p0, Lcom/tencent/mm/ui/base/MMFlipper;->fmC:I

    if-nez v0, :cond_0

    move v2, v1

    goto :goto_0

    .line 323
    :pswitch_0
    iget v0, p0, Lcom/tencent/mm/ui/base/MMFlipper;->eE:F

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    .line 324
    iget v3, p0, Lcom/tencent/mm/ui/base/MMFlipper;->eF:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-int v3, v3

    .line 326
    const-string v4, "MicroMsg.MMFlipper"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "xDif = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", yDif = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    iget v4, p0, Lcom/tencent/mm/ui/base/MMFlipper;->dC:I

    if-le v0, v4, :cond_4

    iget v0, p0, Lcom/tencent/mm/ui/base/MMFlipper;->dC:I

    if-ge v3, v0, :cond_4

    move v0, v2

    .line 329
    :goto_2
    if-eqz v0, :cond_5

    .line 330
    iput v2, p0, Lcom/tencent/mm/ui/base/MMFlipper;->fmC:I

    goto :goto_1

    :cond_4
    move v0, v1

    .line 328
    goto :goto_2

    .line 332
    :cond_5
    iput v1, p0, Lcom/tencent/mm/ui/base/MMFlipper;->fmC:I

    goto :goto_1

    .line 337
    :pswitch_1
    iput v3, p0, Lcom/tencent/mm/ui/base/MMFlipper;->eE:F

    .line 338
    iput v4, p0, Lcom/tencent/mm/ui/base/MMFlipper;->eF:F

    .line 339
    iget-object v0, p0, Lcom/tencent/mm/ui/base/MMFlipper;->en:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_3
    iput v0, p0, Lcom/tencent/mm/ui/base/MMFlipper;->fmC:I

    goto :goto_1

    :cond_6
    move v0, v2

    goto :goto_3

    .line 344
    :pswitch_2
    iput v1, p0, Lcom/tencent/mm/ui/base/MMFlipper;->fmC:I

    goto :goto_1

    .line 321
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 97
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/cj;->FE()J

    move-result-wide v3

    .line 98
    const/4 v2, 0x0

    .line 99
    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/MMFlipper;->getChildCount()I

    move-result v5

    .line 101
    const/4 v1, 0x0

    move v11, v1

    move v1, v2

    move v2, v11

    :goto_0
    if-ge v2, v5, :cond_1

    .line 102
    invoke-virtual {p0, v2}, Lcom/tencent/mm/ui/base/MMFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 103
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_0

    .line 104
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 105
    const-string v8, "MicroMsg.MMFlipper"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "flipper onLayout childWidth:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const/4 v8, 0x0

    add-int v9, v1, v7

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    invoke-virtual {v6, v1, v8, v9, v10}, Landroid/view/View;->layout(IIII)V

    .line 107
    add-int/2addr v1, v7

    .line 101
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 110
    :cond_1
    const-string v1, "MicroMsg.MMFlipper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "use "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v4}, Lcom/tencent/mm/sdk/platformtools/cj;->O(J)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ms, flipper onLayout changed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Left,Top,Right,Bottom:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 122
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/cj;->FE()J

    move-result-wide v2

    .line 123
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 125
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 126
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 133
    iget-object v5, p0, Lcom/tencent/mm/ui/base/MMFlipper;->gzr:Lcom/tencent/mm/ui/base/as;

    if-eqz v5, :cond_0

    .line 134
    iget-object v5, p0, Lcom/tencent/mm/ui/base/MMFlipper;->gzr:Lcom/tencent/mm/ui/base/as;

    invoke-interface {v5, v4, v0}, Lcom/tencent/mm/ui/base/as;->ab(II)V

    .line 136
    :cond_0
    iput v4, p0, Lcom/tencent/mm/ui/base/MMFlipper;->gzs:I

    .line 137
    iput v0, p0, Lcom/tencent/mm/ui/base/MMFlipper;->gzt:I

    .line 138
    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/MMFlipper;->getChildCount()I

    move-result v5

    move v0, v1

    .line 139
    :goto_0
    if-ge v0, v5, :cond_1

    .line 140
    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/base/MMFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Landroid/view/View;->measure(II)V

    .line 139
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 142
    :cond_1
    iget v0, p0, Lcom/tencent/mm/ui/base/MMFlipper;->gym:I

    mul-int/2addr v0, v4

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/ui/base/MMFlipper;->scrollTo(II)V

    .line 143
    const-string v0, "MicroMsg.MMFlipper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "flipper onMeasure:"

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " childCount:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", use "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v2, v3}, Lcom/tencent/mm/sdk/platformtools/cj;->O(J)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 241
    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/MMFlipper;->getChildCount()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 242
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 294
    :goto_0
    return v0

    .line 244
    :cond_0
    iget-object v1, p0, Lcom/tencent/mm/ui/base/MMFlipper;->eH:Landroid/view/VelocityTracker;

    if-nez v1, :cond_1

    .line 245
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/mm/ui/base/MMFlipper;->eH:Landroid/view/VelocityTracker;

    .line 247
    :cond_1
    iget-object v1, p0, Lcom/tencent/mm/ui/base/MMFlipper;->eH:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 249
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 250
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 251
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 253
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 256
    :pswitch_0
    iget-object v1, p0, Lcom/tencent/mm/ui/base/MMFlipper;->en:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_2

    .line 257
    iget-object v1, p0, Lcom/tencent/mm/ui/base/MMFlipper;->en:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->abortAnimation()V

    .line 259
    :cond_2
    iput v2, p0, Lcom/tencent/mm/ui/base/MMFlipper;->eE:F

    goto :goto_0

    .line 264
    :pswitch_1
    iget v1, p0, Lcom/tencent/mm/ui/base/MMFlipper;->eE:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    .line 265
    iput v2, p0, Lcom/tencent/mm/ui/base/MMFlipper;->eE:F

    .line 267
    invoke-virtual {p0, v1, v6}, Lcom/tencent/mm/ui/base/MMFlipper;->scrollBy(II)V

    goto :goto_0

    .line 273
    :pswitch_2
    iget-object v1, p0, Lcom/tencent/mm/ui/base/MMFlipper;->eH:Landroid/view/VelocityTracker;

    .line 274
    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 275
    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v1

    float-to-int v1, v1

    .line 277
    const/16 v2, 0x258

    if-le v1, v2, :cond_4

    iget v2, p0, Lcom/tencent/mm/ui/base/MMFlipper;->gym:I

    if-lez v2, :cond_4

    .line 279
    iget v1, p0, Lcom/tencent/mm/ui/base/MMFlipper;->gym:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1, v4}, Lcom/tencent/mm/ui/base/MMFlipper;->bg(II)V

    .line 286
    :goto_1
    iget-object v1, p0, Lcom/tencent/mm/ui/base/MMFlipper;->eH:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_3

    .line 287
    iget-object v1, p0, Lcom/tencent/mm/ui/base/MMFlipper;->eH:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    .line 288
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tencent/mm/ui/base/MMFlipper;->eH:Landroid/view/VelocityTracker;

    .line 291
    :cond_3
    iput v6, p0, Lcom/tencent/mm/ui/base/MMFlipper;->fmC:I

    .line 292
    iput v5, p0, Lcom/tencent/mm/ui/base/MMFlipper;->eE:F

    .line 293
    iput v5, p0, Lcom/tencent/mm/ui/base/MMFlipper;->eF:F

    goto :goto_0

    .line 280
    :cond_4
    const/16 v2, -0x258

    if-ge v1, v2, :cond_5

    iget v1, p0, Lcom/tencent/mm/ui/base/MMFlipper;->gym:I

    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/MMFlipper;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_5

    .line 282
    iget v1, p0, Lcom/tencent/mm/ui/base/MMFlipper;->gym:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1, v4}, Lcom/tencent/mm/ui/base/MMFlipper;->bg(II)V

    goto :goto_1

    .line 284
    :cond_5
    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/MMFlipper;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/MMFlipper;->getScrollX()I

    move-result v2

    div-int/lit8 v3, v1, 0x2

    add-int/2addr v2, v3

    div-int v1, v2, v1

    invoke-virtual {p0, v1, v4}, Lcom/tencent/mm/ui/base/MMFlipper;->bg(II)V

    goto :goto_1

    .line 253
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
