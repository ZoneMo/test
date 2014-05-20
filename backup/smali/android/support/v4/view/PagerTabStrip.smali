.class public Landroid/support/v4/view/PagerTabStrip;
.super Landroid/support/v4/view/PagerTitleStrip;
.source "SourceFile"


# instance fields
.field private dA:F

.field private dB:F

.field private dC:I

.field private dn:I

.field private do:I

.field private dp:I

.field private dq:I

.field private dr:I

.field private ds:I

.field private final dt:Landroid/graphics/Paint;

.field private final du:Landroid/graphics/Rect;

.field private dv:I

.field private dw:Z

.field private dx:Z

.field private dy:I

.field private dz:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/high16 v2, 0x3f00

    .line 80
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/PagerTitleStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/PagerTabStrip;->dt:Landroid/graphics/Paint;

    .line 62
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/PagerTabStrip;->du:Landroid/graphics/Rect;

    .line 64
    const/16 v0, 0xff

    iput v0, p0, Landroid/support/v4/view/PagerTabStrip;->dv:I

    .line 66
    iput-boolean v4, p0, Landroid/support/v4/view/PagerTabStrip;->dw:Z

    .line 67
    iput-boolean v4, p0, Landroid/support/v4/view/PagerTabStrip;->dx:Z

    .line 82
    iget v0, p0, Landroid/support/v4/view/PagerTabStrip;->dT:I

    iput v0, p0, Landroid/support/v4/view/PagerTabStrip;->dn:I

    .line 83
    iget-object v0, p0, Landroid/support/v4/view/PagerTabStrip;->dt:Landroid/graphics/Paint;

    iget v1, p0, Landroid/support/v4/view/PagerTabStrip;->dn:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 88
    const/high16 v1, 0x4040

    mul-float/2addr v1, v0

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Landroid/support/v4/view/PagerTabStrip;->do:I

    .line 89
    const/high16 v1, 0x40c0

    mul-float/2addr v1, v0

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Landroid/support/v4/view/PagerTabStrip;->dp:I

    .line 90
    const/high16 v1, 0x4280

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Landroid/support/v4/view/PagerTabStrip;->dq:I

    .line 91
    const/high16 v1, 0x4180

    mul-float/2addr v1, v0

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Landroid/support/v4/view/PagerTabStrip;->ds:I

    .line 92
    const/high16 v1, 0x3f80

    mul-float/2addr v1, v0

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Landroid/support/v4/view/PagerTabStrip;->dy:I

    .line 93
    const/high16 v1, 0x4200

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v4/view/PagerTabStrip;->dr:I

    .line 94
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Landroid/support/v4/view/PagerTabStrip;->dC:I

    .line 97
    invoke-virtual {p0}, Landroid/support/v4/view/PagerTabStrip;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v4/view/PagerTabStrip;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v4/view/PagerTabStrip;->getPaddingRight()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v4/view/PagerTabStrip;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/support/v4/view/PagerTabStrip;->setPadding(IIII)V

    .line 98
    invoke-virtual {p0}, Landroid/support/v4/view/PagerTabStrip;->af()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v4/view/PagerTabStrip;->i(I)V

    .line 100
    invoke-virtual {p0, v4}, Landroid/support/v4/view/PagerTabStrip;->setWillNotDraw(Z)V

    .line 102
    iget-object v0, p0, Landroid/support/v4/view/PagerTabStrip;->dF:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 103
    iget-object v0, p0, Landroid/support/v4/view/PagerTabStrip;->dF:Landroid/widget/TextView;

    new-instance v1, Landroid/support/v4/view/ao;

    invoke-direct {v1, p0}, Landroid/support/v4/view/ao;-><init>(Landroid/support/v4/view/PagerTabStrip;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    iget-object v0, p0, Landroid/support/v4/view/PagerTabStrip;->dH:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 111
    iget-object v0, p0, Landroid/support/v4/view/PagerTabStrip;->dH:Landroid/widget/TextView;

    new-instance v1, Landroid/support/v4/view/ap;

    invoke-direct {v1, p0}, Landroid/support/v4/view/ap;-><init>(Landroid/support/v4/view/PagerTabStrip;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    invoke-virtual {p0}, Landroid/support/v4/view/PagerTabStrip;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 119
    iput-boolean v5, p0, Landroid/support/v4/view/PagerTabStrip;->dw:Z

    .line 121
    :cond_0
    return-void
.end method


# virtual methods
.method final a(IFZ)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 277
    iget-object v0, p0, Landroid/support/v4/view/PagerTabStrip;->du:Landroid/graphics/Rect;

    .line 278
    invoke-virtual {p0}, Landroid/support/v4/view/PagerTabStrip;->getHeight()I

    move-result v1

    .line 279
    iget-object v2, p0, Landroid/support/v4/view/PagerTabStrip;->dG:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLeft()I

    move-result v2

    iget v3, p0, Landroid/support/v4/view/PagerTabStrip;->ds:I

    sub-int/2addr v2, v3

    .line 280
    iget-object v3, p0, Landroid/support/v4/view/PagerTabStrip;->dG:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getRight()I

    move-result v3

    iget v4, p0, Landroid/support/v4/view/PagerTabStrip;->ds:I

    add-int/2addr v3, v4

    .line 281
    iget v4, p0, Landroid/support/v4/view/PagerTabStrip;->do:I

    sub-int v4, v1, v4

    .line 283
    invoke-virtual {v0, v2, v4, v3, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 285
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/view/PagerTitleStrip;->a(IFZ)V

    .line 286
    const/high16 v2, 0x3f00

    sub-float v2, p2, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x4000

    mul-float/2addr v2, v3

    const/high16 v3, 0x437f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Landroid/support/v4/view/PagerTabStrip;->dv:I

    .line 288
    iget-object v2, p0, Landroid/support/v4/view/PagerTabStrip;->dG:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLeft()I

    move-result v2

    iget v3, p0, Landroid/support/v4/view/PagerTabStrip;->ds:I

    sub-int/2addr v2, v3

    .line 289
    iget-object v3, p0, Landroid/support/v4/view/PagerTabStrip;->dG:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getRight()I

    move-result v3

    iget v5, p0, Landroid/support/v4/view/PagerTabStrip;->ds:I

    add-int/2addr v3, v5

    .line 290
    invoke-virtual {v0, v2, v4, v3, v1}, Landroid/graphics/Rect;->union(IIII)V

    .line 292
    invoke-virtual {p0, v0}, Landroid/support/v4/view/PagerTabStrip;->invalidate(Landroid/graphics/Rect;)V

    .line 293
    return-void
.end method

.method final getMinHeight()I
    .locals 2

    .prologue
    .line 215
    invoke-super {p0}, Landroid/support/v4/view/PagerTitleStrip;->getMinHeight()I

    move-result v0

    iget v1, p0, Landroid/support/v4/view/PagerTabStrip;->dr:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public final i(I)V
    .locals 1
    .parameter

    .prologue
    .line 160
    iget v0, p0, Landroid/support/v4/view/PagerTabStrip;->dq:I

    if-ge p1, v0, :cond_0

    .line 161
    iget p1, p0, Landroid/support/v4/view/PagerTabStrip;->dq:I

    .line 163
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/view/PagerTitleStrip;->i(I)V

    .line 164
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter

    .prologue
    const v7, 0xffffff

    .line 257
    invoke-super {p0, p1}, Landroid/support/v4/view/PagerTitleStrip;->onDraw(Landroid/graphics/Canvas;)V

    .line 259
    invoke-virtual {p0}, Landroid/support/v4/view/PagerTabStrip;->getHeight()I

    move-result v6

    .line 260
    iget-object v0, p0, Landroid/support/v4/view/PagerTabStrip;->dG:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLeft()I

    move-result v0

    iget v1, p0, Landroid/support/v4/view/PagerTabStrip;->ds:I

    sub-int/2addr v0, v1

    .line 262
    iget-object v1, p0, Landroid/support/v4/view/PagerTabStrip;->dG:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getRight()I

    move-result v1

    iget v2, p0, Landroid/support/v4/view/PagerTabStrip;->ds:I

    add-int v3, v1, v2

    .line 263
    iget v1, p0, Landroid/support/v4/view/PagerTabStrip;->do:I

    sub-int v2, v6, v1

    .line 265
    iget-object v1, p0, Landroid/support/v4/view/PagerTabStrip;->dt:Landroid/graphics/Paint;

    iget v4, p0, Landroid/support/v4/view/PagerTabStrip;->dv:I

    shl-int/lit8 v4, v4, 0x18

    iget v5, p0, Landroid/support/v4/view/PagerTabStrip;->dn:I

    and-int/2addr v5, v7

    or-int/2addr v4, v5

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 266
    int-to-float v1, v0

    int-to-float v2, v2

    int-to-float v3, v3

    int-to-float v4, v6

    iget-object v5, p0, Landroid/support/v4/view/PagerTabStrip;->dt:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 268
    iget-boolean v0, p0, Landroid/support/v4/view/PagerTabStrip;->dw:Z

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Landroid/support/v4/view/PagerTabStrip;->dt:Landroid/graphics/Paint;

    const/high16 v1, -0x100

    iget v2, p0, Landroid/support/v4/view/PagerTabStrip;->dn:I

    and-int/2addr v2, v7

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 270
    invoke-virtual {p0}, Landroid/support/v4/view/PagerTabStrip;->getPaddingLeft()I

    move-result v0

    int-to-float v1, v0

    iget v0, p0, Landroid/support/v4/view/PagerTabStrip;->dy:I

    sub-int v0, v6, v0

    int-to-float v2, v0

    invoke-virtual {p0}, Landroid/support/v4/view/PagerTabStrip;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v4/view/PagerTabStrip;->getPaddingRight()I

    move-result v3

    sub-int/2addr v0, v3

    int-to-float v3, v0

    int-to-float v4, v6

    iget-object v5, p0, Landroid/support/v4/view/PagerTabStrip;->dt:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 273
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 220
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 221
    if-eqz v2, :cond_0

    iget-boolean v3, p0, Landroid/support/v4/view/PagerTabStrip;->dz:Z

    if-eqz v3, :cond_0

    .line 252
    :goto_0
    return v0

    .line 227
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 228
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 229
    packed-switch v2, :pswitch_data_0

    :cond_1
    :goto_1
    move v0, v1

    .line 252
    goto :goto_0

    .line 231
    :pswitch_0
    iput v3, p0, Landroid/support/v4/view/PagerTabStrip;->dA:F

    .line 232
    iput v4, p0, Landroid/support/v4/view/PagerTabStrip;->dB:F

    .line 233
    iput-boolean v0, p0, Landroid/support/v4/view/PagerTabStrip;->dz:Z

    goto :goto_1

    .line 237
    :pswitch_1
    iget v0, p0, Landroid/support/v4/view/PagerTabStrip;->dA:F

    sub-float v0, v3, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v2, p0, Landroid/support/v4/view/PagerTabStrip;->dC:I

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_2

    iget v0, p0, Landroid/support/v4/view/PagerTabStrip;->dB:F

    sub-float v0, v4, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v2, p0, Landroid/support/v4/view/PagerTabStrip;->dC:I

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    .line 239
    :cond_2
    iput-boolean v1, p0, Landroid/support/v4/view/PagerTabStrip;->dz:Z

    goto :goto_1

    .line 244
    :pswitch_2
    iget-object v0, p0, Landroid/support/v4/view/PagerTabStrip;->dG:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLeft()I

    move-result v0

    iget v2, p0, Landroid/support/v4/view/PagerTabStrip;->ds:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    cmpg-float v0, v3, v0

    if-gez v0, :cond_3

    .line 245
    iget-object v0, p0, Landroid/support/v4/view/PagerTabStrip;->dE:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Landroid/support/v4/view/PagerTabStrip;->dE:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->ak()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->m(I)V

    goto :goto_1

    .line 246
    :cond_3
    iget-object v0, p0, Landroid/support/v4/view/PagerTabStrip;->dG:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getRight()I

    move-result v0

    iget v2, p0, Landroid/support/v4/view/PagerTabStrip;->ds:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    cmpl-float v0, v3, v0

    if-lez v0, :cond_1

    .line 247
    iget-object v0, p0, Landroid/support/v4/view/PagerTabStrip;->dE:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Landroid/support/v4/view/PagerTabStrip;->dE:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->ak()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->m(I)V

    goto :goto_1

    .line 229
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .parameter

    .prologue
    .line 176
    invoke-super {p0, p1}, Landroid/support/v4/view/PagerTitleStrip;->setBackgroundColor(I)V

    .line 177
    iget-boolean v0, p0, Landroid/support/v4/view/PagerTabStrip;->dx:Z

    if-nez v0, :cond_0

    .line 178
    const/high16 v0, -0x100

    and-int/2addr v0, p1

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/support/v4/view/PagerTabStrip;->dw:Z

    .line 180
    :cond_0
    return-void

    .line 178
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter

    .prologue
    .line 168
    invoke-super {p0, p1}, Landroid/support/v4/view/PagerTitleStrip;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 169
    iget-boolean v0, p0, Landroid/support/v4/view/PagerTabStrip;->dx:Z

    if-nez v0, :cond_0

    .line 170
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/support/v4/view/PagerTabStrip;->dw:Z

    .line 172
    :cond_0
    return-void

    .line 170
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBackgroundResource(I)V
    .locals 1
    .parameter

    .prologue
    .line 184
    invoke-super {p0, p1}, Landroid/support/v4/view/PagerTitleStrip;->setBackgroundResource(I)V

    .line 185
    iget-boolean v0, p0, Landroid/support/v4/view/PagerTabStrip;->dx:Z

    if-nez v0, :cond_0

    .line 186
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/support/v4/view/PagerTabStrip;->dw:Z

    .line 188
    :cond_0
    return-void

    .line 186
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPadding(IIII)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 152
    iget v0, p0, Landroid/support/v4/view/PagerTabStrip;->dp:I

    if-ge p4, v0, :cond_0

    .line 153
    iget p4, p0, Landroid/support/v4/view/PagerTabStrip;->dp:I

    .line 155
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v4/view/PagerTitleStrip;->setPadding(IIII)V

    .line 156
    return-void
.end method
