.class public abstract Lcom/tencent/mm/ui/base/VerticalScrollBar;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private cRI:Landroid/graphics/Paint;

.field private gCJ:Landroid/widget/TextView;

.field protected gEU:F

.field protected gEV:I

.field protected gEW:[Ljava/lang/String;

.field private gEX:I

.field private gEY:F

.field private gEZ:F

.field private gFa:Lcom/tencent/mm/ui/base/ce;

.field private gFb:I

.field private gFc:Lcom/tencent/mm/ui/base/ek;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 47
    invoke-direct {p0, p1}, Lcom/tencent/mm/ui/base/VerticalScrollBar;->r(Landroid/content/Context;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    invoke-direct {p0, p1}, Lcom/tencent/mm/ui/base/VerticalScrollBar;->r(Landroid/content/Context;)V

    .line 53
    return-void
.end method

.method private r(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 66
    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/VerticalScrollBar;->aGw()V

    .line 68
    invoke-virtual {p0, v3}, Lcom/tencent/mm/ui/base/VerticalScrollBar;->setFocusable(Z)V

    .line 69
    invoke-virtual {p0, v3}, Lcom/tencent/mm/ui/base/VerticalScrollBar;->setFocusableInTouchMode(Z)V

    .line 70
    const/high16 v0, 0x4040

    invoke-static {p1, v0}, Lcom/tencent/mm/sdk/platformtools/e;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/base/VerticalScrollBar;->gFb:I

    .line 71
    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/VerticalScrollBar;->aGx()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/tencent/mm/ui/base/VerticalScrollBar;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 72
    iget v1, p0, Lcom/tencent/mm/ui/base/VerticalScrollBar;->gEV:I

    int-to-float v1, v1

    invoke-static {p1, v1}, Lcom/tencent/mm/sdk/platformtools/e;->a(Landroid/content/Context;F)I

    move-result v1

    .line 73
    new-instance v2, Lcom/tencent/mm/ui/base/ce;

    invoke-direct {v2, v0, v1, v1}, Lcom/tencent/mm/ui/base/ce;-><init>(Landroid/view/View;II)V

    iput-object v2, p0, Lcom/tencent/mm/ui/base/VerticalScrollBar;->gFa:Lcom/tencent/mm/ui/base/ce;

    .line 74
    sget v1, Lcom/tencent/mm/i;->aKB:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/base/VerticalScrollBar;->gCJ:Landroid/widget/TextView;

    .line 77
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/base/VerticalScrollBar;->cRI:Landroid/graphics/Paint;

    .line 78
    iget-object v0, p0, Lcom/tencent/mm/ui/base/VerticalScrollBar;->cRI:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 79
    iget-object v0, p0, Lcom/tencent/mm/ui/base/VerticalScrollBar;->cRI:Landroid/graphics/Paint;

    const v1, -0x7a736c

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 81
    iget-object v0, p0, Lcom/tencent/mm/ui/base/VerticalScrollBar;->cRI:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 82
    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/ui/base/ek;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/tencent/mm/ui/base/VerticalScrollBar;->gFc:Lcom/tencent/mm/ui/base/ek;

    .line 57
    return-void
.end method

.method protected abstract aGw()V
.end method

.method protected abstract aGx()I
.end method

.method public final aHU()V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/base/VerticalScrollBar;->gFc:Lcom/tencent/mm/ui/base/ek;

    .line 61
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter

    .prologue
    .line 86
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 87
    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/VerticalScrollBar;->getMeasuredHeight()I

    move-result v0

    .line 88
    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/VerticalScrollBar;->getMeasuredWidth()I

    move-result v1

    .line 89
    int-to-float v0, v0

    iget-object v2, p0, Lcom/tencent/mm/ui/base/VerticalScrollBar;->gEW:[Ljava/lang/String;

    array-length v2, v2

    int-to-float v2, v2

    iget v3, p0, Lcom/tencent/mm/ui/base/VerticalScrollBar;->gEU:F

    mul-float/2addr v2, v3

    div-float/2addr v0, v2

    iput v0, p0, Lcom/tencent/mm/ui/base/VerticalScrollBar;->gEY:F

    .line 90
    iget-object v0, p0, Lcom/tencent/mm/ui/base/VerticalScrollBar;->cRI:Landroid/graphics/Paint;

    iget v2, p0, Lcom/tencent/mm/ui/base/VerticalScrollBar;->gEY:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 92
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/tencent/mm/ui/base/VerticalScrollBar;->gEW:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 93
    iget-object v2, p0, Lcom/tencent/mm/ui/base/VerticalScrollBar;->gEW:[Ljava/lang/String;

    aget-object v2, v2, v0

    int-to-float v3, v1

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    iget v4, p0, Lcom/tencent/mm/ui/base/VerticalScrollBar;->gEY:F

    int-to-float v5, v0

    iget v6, p0, Lcom/tencent/mm/ui/base/VerticalScrollBar;->gEY:F

    mul-float/2addr v5, v6

    iget v6, p0, Lcom/tencent/mm/ui/base/VerticalScrollBar;->gEU:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/tencent/mm/ui/base/VerticalScrollBar;->cRI:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 92
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 98
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 103
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 105
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/base/VerticalScrollBar;->gEZ:F

    .line 106
    iget v0, p0, Lcom/tencent/mm/ui/base/VerticalScrollBar;->gEZ:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    .line 107
    iput v2, p0, Lcom/tencent/mm/ui/base/VerticalScrollBar;->gEZ:F

    .line 109
    :cond_1
    iget v0, p0, Lcom/tencent/mm/ui/base/VerticalScrollBar;->gEZ:F

    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/VerticalScrollBar;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 110
    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/VerticalScrollBar;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/tencent/mm/ui/base/VerticalScrollBar;->gEZ:F

    .line 112
    :cond_2
    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/VerticalScrollBar;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/tencent/mm/h;->aid:I

    invoke-static {v0, v1}, Lcom/tencent/mm/an/a;->k(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/base/VerticalScrollBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 113
    iget v0, p0, Lcom/tencent/mm/ui/base/VerticalScrollBar;->gEZ:F

    iget v1, p0, Lcom/tencent/mm/ui/base/VerticalScrollBar;->gEY:F

    iget v2, p0, Lcom/tencent/mm/ui/base/VerticalScrollBar;->gEU:F

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lcom/tencent/mm/ui/base/VerticalScrollBar;->gEW:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/ui/base/VerticalScrollBar;->gEW:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :cond_3
    iput v0, p0, Lcom/tencent/mm/ui/base/VerticalScrollBar;->gEX:I

    .line 114
    iget v0, p0, Lcom/tencent/mm/ui/base/VerticalScrollBar;->gEX:I

    if-ne v0, v4, :cond_8

    .line 115
    iget-object v0, p0, Lcom/tencent/mm/ui/base/VerticalScrollBar;->gCJ:Landroid/widget/TextView;

    sget v1, Lcom/tencent/mm/n;->bxE:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 120
    :goto_0
    iget-object v0, p0, Lcom/tencent/mm/ui/base/VerticalScrollBar;->gFa:Lcom/tencent/mm/ui/base/ce;

    const/16 v1, 0x11

    invoke-virtual {v0, p0, v1, v3, v3}, Lcom/tencent/mm/ui/base/ce;->showAtLocation(Landroid/view/View;III)V

    .line 121
    iget-object v0, p0, Lcom/tencent/mm/ui/base/VerticalScrollBar;->gFc:Lcom/tencent/mm/ui/base/ek;

    if-eqz v0, :cond_4

    .line 123
    iget v0, p0, Lcom/tencent/mm/ui/base/VerticalScrollBar;->gEX:I

    if-ne v0, v4, :cond_9

    .line 124
    iget-object v0, p0, Lcom/tencent/mm/ui/base/VerticalScrollBar;->gFc:Lcom/tencent/mm/ui/base/ek;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/VerticalScrollBar;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/tencent/mm/n;->bxE:I

    invoke-static {v1, v2}, Lcom/tencent/mm/an/a;->m(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/base/ek;->lx(Ljava/lang/String;)V

    .line 129
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/VerticalScrollBar;->invalidate()V

    .line 131
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v5, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    .line 132
    :cond_6
    invoke-virtual {p0, v3}, Lcom/tencent/mm/ui/base/VerticalScrollBar;->setBackgroundResource(I)V

    .line 133
    iget-object v0, p0, Lcom/tencent/mm/ui/base/VerticalScrollBar;->gFa:Lcom/tencent/mm/ui/base/ce;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/ce;->dismiss()V

    .line 136
    :cond_7
    return v5

    .line 117
    :cond_8
    iget-object v0, p0, Lcom/tencent/mm/ui/base/VerticalScrollBar;->gCJ:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/mm/ui/base/VerticalScrollBar;->gEW:[Ljava/lang/String;

    iget v2, p0, Lcom/tencent/mm/ui/base/VerticalScrollBar;->gEX:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 126
    :cond_9
    iget-object v0, p0, Lcom/tencent/mm/ui/base/VerticalScrollBar;->gFc:Lcom/tencent/mm/ui/base/ek;

    iget-object v1, p0, Lcom/tencent/mm/ui/base/VerticalScrollBar;->gEW:[Ljava/lang/String;

    iget v2, p0, Lcom/tencent/mm/ui/base/VerticalScrollBar;->gEX:I

    aget-object v1, v1, v2

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/base/ek;->lx(Ljava/lang/String;)V

    goto :goto_1
.end method
