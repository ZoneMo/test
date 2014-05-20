.class public Lcom/tencent/mm/ui/base/NoMeasuredTextView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ResourceAsColor"
    }
.end annotation


# static fields
.field private static final gEh:Landroid/text/BoringLayout$Metrics;


# instance fields
.field private dL:I

.field private eBR:Landroid/text/TextPaint;

.field private gDA:Landroid/text/Editable$Factory;

.field private gDB:Landroid/text/Spannable$Factory;

.field private gDC:Landroid/text/TextUtils$TruncateAt;

.field private gDD:Ljava/lang/CharSequence;

.field private gDE:Lcom/tencent/mm/ui/base/dx;

.field private gDF:Landroid/text/method/KeyListener;

.field private gDG:Landroid/text/Layout;

.field private gDH:F

.field private gDI:F

.field private gDJ:I

.field private gDK:I

.field private gDL:I

.field private gDM:I

.field private gDN:Z

.field private gDO:Z

.field private gDP:Z

.field private gDQ:I

.field private gDR:Z

.field private gDS:Landroid/text/BoringLayout;

.field private gDT:Z

.field private gDU:I

.field private gDV:Landroid/graphics/Paint$FontMetricsInt;

.field private gDW:Z

.field private gDX:Z

.field private gDY:Lcom/tencent/mm/ui/base/dy;

.field private gDZ:Z

.field private gDy:Landroid/content/res/ColorStateList;

.field private gDz:I

.field private gEa:Z

.field private gEb:Z

.field private gEc:Z

.field private gEd:I

.field private gEe:I

.field private gEf:I

.field private gEg:I

.field private jg:I

.field private mText:Ljava/lang/CharSequence;

.field private oP:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 350
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 351
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 353
    const-string v1, "H"

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 2130
    new-instance v0, Landroid/text/BoringLayout$Metrics;

    invoke-direct {v0}, Landroid/text/BoringLayout$Metrics;-><init>()V

    sput-object v0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gEh:Landroid/text/BoringLayout$Metrics;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 392
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 393
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const v4, 0x7fffffff

    const/4 v1, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 402
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    invoke-static {}, Landroid/text/Editable$Factory;->getInstance()Landroid/text/Editable$Factory;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDA:Landroid/text/Editable$Factory;

    .line 78
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDB:Landroid/text/Spannable$Factory;

    .line 85
    iput-object v5, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDC:Landroid/text/TextUtils$TruncateAt;

    .line 100
    sget-object v0, Lcom/tencent/mm/ui/base/dx;->gEi:Lcom/tencent/mm/ui/base/dx;

    iput-object v0, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDE:Lcom/tencent/mm/ui/base/dx;

    .line 122
    const/16 v0, 0x33

    iput v0, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->dL:I

    .line 127
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDH:F

    .line 132
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDI:F

    .line 147
    iput v4, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDJ:I

    .line 152
    iput v3, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDK:I

    .line 157
    iput v2, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDL:I

    .line 162
    iput v3, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDM:I

    .line 167
    iput v4, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->oP:I

    .line 172
    iput-boolean v2, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDN:Z

    .line 177
    iput v2, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->jg:I

    .line 182
    iput-boolean v2, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDO:Z

    .line 192
    iput v1, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDQ:I

    .line 197
    iput-boolean v3, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDR:Z

    .line 208
    iput-boolean v2, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDT:Z

    .line 228
    iput-boolean v2, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDW:Z

    .line 233
    iput-boolean v2, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDX:Z

    .line 276
    iput-boolean v2, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDZ:Z

    .line 281
    iput-boolean v2, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gEa:Z

    .line 286
    iput-boolean v2, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gEb:Z

    .line 291
    iput-boolean v2, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gEc:Z

    .line 296
    iput v1, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gEd:I

    .line 301
    iput v1, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gEe:I

    .line 306
    iput v1, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gEf:I

    .line 311
    iput v1, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gEg:I

    .line 403
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->mText:Ljava/lang/CharSequence;

    .line 404
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDD:Ljava/lang/CharSequence;

    .line 405
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v3}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->eBR:Landroid/text/TextPaint;

    .line 406
    iget-object v0, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->eBR:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, v0, Landroid/text/TextPaint;->density:F

    .line 409
    invoke-virtual {p0, v2}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->setDrawingCacheEnabled(Z)V

    .line 412
    iget-object v0, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->eBR:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDV:Landroid/graphics/Paint$FontMetricsInt;

    .line 414
    invoke-direct {p0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->aHQ()V

    .line 416
    iput-boolean v3, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDP:Z

    iput v3, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDL:I

    iput v3, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDJ:I

    iput v3, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDM:I

    iput v3, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDK:I

    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->requestLayout()V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->invalidate()V

    .line 417
    iput-object v5, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDC:Landroid/text/TextUtils$TruncateAt;

    iget-object v0, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDG:Landroid/text/Layout;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->aHO()V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->requestLayout()V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->invalidate()V

    .line 420
    :cond_0
    return-void
.end method

.method private aHN()I
    .locals 5

    .prologue
    .line 1663
    const/4 v0, 0x0

    .line 1664
    iget v1, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->dL:I

    and-int/lit8 v1, v1, 0x70

    .line 1666
    iget-object v2, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDG:Landroid/text/Layout;

    .line 1671
    const/16 v3, 0x30

    if-eq v1, v3, :cond_0

    .line 1678
    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->getMeasuredHeight()I

    move-result v3

    invoke-direct {p0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->getExtendedPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-direct {p0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->getExtendedPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    .line 1681
    invoke-virtual {v2}, Landroid/text/Layout;->getHeight()I

    move-result v2

    .line 1683
    if-ge v2, v3, :cond_0

    .line 1684
    const/16 v0, 0x50

    if-ne v1, v0, :cond_1

    .line 1685
    sub-int v0, v3, v2

    .line 1691
    :cond_0
    :goto_0
    return v0

    .line 1688
    :cond_1
    sub-int v0, v3, v2

    shr-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private aHO()V
    .locals 1

    .prologue
    .line 2000
    iget-object v0, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDG:Landroid/text/Layout;

    instance-of v0, v0, Landroid/text/BoringLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDS:Landroid/text/BoringLayout;

    if-nez v0, :cond_0

    .line 2001
    iget-object v0, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDG:Landroid/text/Layout;

    check-cast v0, Landroid/text/BoringLayout;

    iput-object v0, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDS:Landroid/text/BoringLayout;

    .line 2008
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDG:Landroid/text/Layout;

    .line 2009
    return-void
.end method

.method private aHP()V
    .locals 2

    .prologue
    .line 2017
    iget-boolean v0, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDN:Z

    if-eqz v0, :cond_1

    .line 2018
    iget v0, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->oP:I

    invoke-direct {p0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->getCompoundPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-direct {p0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->getCompoundPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 2024
    :goto_0
    if-gtz v0, :cond_0

    .line 2025
    const/4 v0, 0x0

    .line 2034
    :cond_0
    sget-object v1, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gEh:Landroid/text/BoringLayout$Metrics;

    sget-object v1, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gEh:Landroid/text/BoringLayout$Metrics;

    invoke-direct {p0, v0, v0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->bl(II)V

    .line 2036
    return-void

    .line 2021
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->getRight()I

    move-result v0

    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-direct {p0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->getCompoundPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-direct {p0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->getCompoundPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method private aHQ()V
    .locals 4

    .prologue
    .line 2298
    iget v0, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDU:I

    if-nez v0, :cond_0

    .line 2299
    iget-object v0, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDV:Landroid/graphics/Paint$FontMetricsInt;

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget-object v1, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDV:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v0, v1

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000

    add-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDU:I

    .line 2302
    :cond_0
    return-void
.end method

.method private bl(II)V
    .locals 12
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 2050
    if-gez p1, :cond_2

    move v5, v2

    .line 2056
    :goto_0
    iget v0, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->dL:I

    and-int/lit8 v0, v0, 0x7

    sparse-switch v0, :sswitch_data_0

    .line 2066
    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 2069
    :goto_1
    iget-object v0, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDC:Landroid/text/TextUtils$TruncateAt;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDF:Landroid/text/method/KeyListener;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2072
    :goto_2
    if-eqz v0, :cond_1

    .line 2073
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v1, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDD:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDD:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    iget-object v4, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->eBR:Landroid/text/TextPaint;

    iget v7, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDH:F

    iget v8, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDI:F

    iget-boolean v9, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDR:Z

    iget-object v10, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDC:Landroid/text/TextUtils$TruncateAt;

    move v11, p2

    invoke-direct/range {v0 .. v11}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    iput-object v0, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDG:Landroid/text/Layout;

    .line 2081
    :goto_3
    return-void

    .line 2058
    :sswitch_0
    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    goto :goto_1

    .line 2062
    :sswitch_1
    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_1

    :cond_0
    move v0, v2

    .line 2069
    goto :goto_2

    .line 2078
    :cond_1
    new-instance v2, Landroid/text/StaticLayout;

    iget-object v3, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDD:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->eBR:Landroid/text/TextPaint;

    iget v7, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDH:F

    iget v8, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDI:F

    iget-boolean v9, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDR:Z

    invoke-direct/range {v2 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v2, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDG:Landroid/text/Layout;

    goto :goto_3

    :cond_2
    move v5, p1

    goto :goto_0

    .line 2056
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch
.end method

.method private c(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 525
    iget-object v0, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDY:Lcom/tencent/mm/ui/base/dy;

    .line 527
    if-nez p1, :cond_0

    if-eqz p2, :cond_2

    :cond_0
    const/4 v1, 0x1

    .line 530
    :goto_0
    if-nez v1, :cond_9

    .line 532
    if-eqz v0, :cond_1

    .line 533
    iget v1, v0, Lcom/tencent/mm/ui/base/dy;->gEz:I

    if-nez v1, :cond_3

    .line 534
    iput-object v3, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDY:Lcom/tencent/mm/ui/base/dy;

    .line 623
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->invalidate()V

    .line 627
    return-void

    :cond_2
    move v1, v2

    .line 527
    goto :goto_0

    .line 538
    :cond_3
    iget-object v1, v0, Lcom/tencent/mm/ui/base/dy;->gEp:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/tencent/mm/ui/base/dy;->gEp:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 539
    :cond_4
    iput-object v3, v0, Lcom/tencent/mm/ui/base/dy;->gEp:Landroid/graphics/drawable/Drawable;

    .line 540
    iget-object v1, v0, Lcom/tencent/mm/ui/base/dy;->gEn:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_5

    iget-object v1, v0, Lcom/tencent/mm/ui/base/dy;->gEn:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 541
    :cond_5
    iput-object v3, v0, Lcom/tencent/mm/ui/base/dy;->gEn:Landroid/graphics/drawable/Drawable;

    .line 542
    iget-object v1, v0, Lcom/tencent/mm/ui/base/dy;->gEq:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_6

    iget-object v1, v0, Lcom/tencent/mm/ui/base/dy;->gEq:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 543
    :cond_6
    iput-object v3, v0, Lcom/tencent/mm/ui/base/dy;->gEq:Landroid/graphics/drawable/Drawable;

    .line 544
    iget-object v1, v0, Lcom/tencent/mm/ui/base/dy;->gEo:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/tencent/mm/ui/base/dy;->gEo:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 545
    :cond_7
    iput-object v3, v0, Lcom/tencent/mm/ui/base/dy;->gEo:Landroid/graphics/drawable/Drawable;

    .line 546
    iput v2, v0, Lcom/tencent/mm/ui/base/dy;->gEx:I

    iput v2, v0, Lcom/tencent/mm/ui/base/dy;->gEt:I

    .line 599
    :cond_8
    iput v2, v0, Lcom/tencent/mm/ui/base/dy;->gEy:I

    iput v2, v0, Lcom/tencent/mm/ui/base/dy;->gEu:I

    .line 602
    :goto_2
    iput v2, v0, Lcom/tencent/mm/ui/base/dy;->gEv:I

    iput v2, v0, Lcom/tencent/mm/ui/base/dy;->gEr:I

    .line 612
    iput v2, v0, Lcom/tencent/mm/ui/base/dy;->gEw:I

    iput v2, v0, Lcom/tencent/mm/ui/base/dy;->gEs:I

    goto :goto_1

    .line 553
    :cond_9
    if-nez v0, :cond_a

    .line 554
    new-instance v0, Lcom/tencent/mm/ui/base/dy;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/base/dy;-><init>(Lcom/tencent/mm/ui/base/NoMeasuredTextView;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDY:Lcom/tencent/mm/ui/base/dy;

    .line 557
    :cond_a
    iget-object v1, v0, Lcom/tencent/mm/ui/base/dy;->gEp:Landroid/graphics/drawable/Drawable;

    if-eq v1, p1, :cond_b

    iget-object v1, v0, Lcom/tencent/mm/ui/base/dy;->gEp:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_b

    .line 558
    iget-object v1, v0, Lcom/tencent/mm/ui/base/dy;->gEp:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 560
    :cond_b
    iput-object p1, v0, Lcom/tencent/mm/ui/base/dy;->gEp:Landroid/graphics/drawable/Drawable;

    .line 562
    iget-object v1, v0, Lcom/tencent/mm/ui/base/dy;->gEn:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_c

    iget-object v1, v0, Lcom/tencent/mm/ui/base/dy;->gEn:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_c

    .line 563
    iget-object v1, v0, Lcom/tencent/mm/ui/base/dy;->gEn:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 565
    :cond_c
    iput-object v3, v0, Lcom/tencent/mm/ui/base/dy;->gEn:Landroid/graphics/drawable/Drawable;

    .line 567
    iget-object v1, v0, Lcom/tencent/mm/ui/base/dy;->gEq:Landroid/graphics/drawable/Drawable;

    if-eq v1, p2, :cond_d

    iget-object v1, v0, Lcom/tencent/mm/ui/base/dy;->gEq:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_d

    .line 568
    iget-object v1, v0, Lcom/tencent/mm/ui/base/dy;->gEq:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 570
    :cond_d
    iput-object p2, v0, Lcom/tencent/mm/ui/base/dy;->gEq:Landroid/graphics/drawable/Drawable;

    .line 572
    iget-object v1, v0, Lcom/tencent/mm/ui/base/dy;->gEo:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_e

    iget-object v1, v0, Lcom/tencent/mm/ui/base/dy;->gEo:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_e

    .line 573
    iget-object v1, v0, Lcom/tencent/mm/ui/base/dy;->gEo:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 575
    :cond_e
    iput-object v3, v0, Lcom/tencent/mm/ui/base/dy;->gEo:Landroid/graphics/drawable/Drawable;

    .line 577
    iget-object v1, v0, Lcom/tencent/mm/ui/base/dy;->gEm:Landroid/graphics/Rect;

    .line 580
    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->getDrawableState()[I

    move-result-object v3

    .line 582
    if-eqz p1, :cond_f

    .line 583
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 584
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 585
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 586
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    iput v4, v0, Lcom/tencent/mm/ui/base/dy;->gEt:I

    .line 587
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v4

    iput v4, v0, Lcom/tencent/mm/ui/base/dy;->gEx:I

    .line 592
    :goto_3
    if-eqz p2, :cond_8

    .line 593
    invoke-virtual {p2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 594
    invoke-virtual {p2, v1}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 595
    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 596
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    iput v3, v0, Lcom/tencent/mm/ui/base/dy;->gEu:I

    .line 597
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, v0, Lcom/tencent/mm/ui/base/dy;->gEy:I

    goto/16 :goto_2

    .line 589
    :cond_f
    iput v2, v0, Lcom/tencent/mm/ui/base/dy;->gEx:I

    iput v2, v0, Lcom/tencent/mm/ui/base/dy;->gEt:I

    goto :goto_3
.end method

.method private getCompoundPaddingBottom()I
    .locals 3

    .prologue
    .line 887
    iget-object v0, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDY:Lcom/tencent/mm/ui/base/dy;

    .line 888
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/tencent/mm/ui/base/dy;->gEo:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gEc:Z

    if-nez v1, :cond_1

    .line 889
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->getPaddingBottom()I

    move-result v0

    .line 891
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->getPaddingBottom()I

    move-result v1

    iget v2, v0, Lcom/tencent/mm/ui/base/dy;->gEz:I

    add-int/2addr v1, v2

    iget v0, v0, Lcom/tencent/mm/ui/base/dy;->gEs:I

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method private getCompoundPaddingLeft()I
    .locals 3

    .prologue
    .line 901
    iget-object v0, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDY:Lcom/tencent/mm/ui/base/dy;

    .line 902
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/tencent/mm/ui/base/dy;->gEp:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDZ:Z

    if-nez v1, :cond_1

    .line 903
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->getPaddingLeft()I

    move-result v0

    .line 905
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->getPaddingLeft()I

    move-result v1

    iget v2, v0, Lcom/tencent/mm/ui/base/dy;->gEz:I

    add-int/2addr v1, v2

    iget v0, v0, Lcom/tencent/mm/ui/base/dy;->gEt:I

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method private getCompoundPaddingRight()I
    .locals 3

    .prologue
    .line 915
    iget-object v0, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDY:Lcom/tencent/mm/ui/base/dy;

    .line 916
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/tencent/mm/ui/base/dy;->gEq:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gEa:Z

    if-nez v1, :cond_1

    .line 917
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->getPaddingRight()I

    move-result v0

    .line 919
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->getPaddingRight()I

    move-result v1

    iget v2, v0, Lcom/tencent/mm/ui/base/dy;->gEz:I

    add-int/2addr v1, v2

    iget v0, v0, Lcom/tencent/mm/ui/base/dy;->gEu:I

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method private getCompoundPaddingTop()I
    .locals 3

    .prologue
    .line 873
    iget-object v0, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDY:Lcom/tencent/mm/ui/base/dy;

    .line 874
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/tencent/mm/ui/base/dy;->gEn:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gEb:Z

    if-nez v1, :cond_1

    .line 875
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->getPaddingTop()I

    move-result v0

    .line 877
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->getPaddingTop()I

    move-result v1

    iget v2, v0, Lcom/tencent/mm/ui/base/dy;->gEz:I

    add-int/2addr v1, v2

    iget v0, v0, Lcom/tencent/mm/ui/base/dy;->gEr:I

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method private getExtendedPaddingBottom()I
    .locals 5

    .prologue
    .line 962
    iget-object v0, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDG:Landroid/text/Layout;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDK:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 963
    :cond_0
    invoke-direct {p0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->getCompoundPaddingBottom()I

    move-result v0

    .line 985
    :cond_1
    :goto_0
    return v0

    .line 966
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDG:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    iget v1, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDJ:I

    if-gt v0, v1, :cond_3

    .line 967
    invoke-direct {p0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->getCompoundPaddingBottom()I

    move-result v0

    goto :goto_0

    .line 970
    :cond_3
    invoke-direct {p0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->getCompoundPaddingTop()I

    move-result v1

    .line 971
    invoke-direct {p0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->getCompoundPaddingBottom()I

    move-result v0

    .line 972
    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->getHeight()I

    move-result v2

    sub-int v1, v2, v1

    sub-int/2addr v1, v0

    .line 973
    iget-object v2, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDG:Landroid/text/Layout;

    iget v3, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDJ:I

    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineTop(I)I

    move-result v2

    .line 975
    if-ge v2, v1, :cond_1

    .line 979
    iget v3, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->dL:I

    and-int/lit8 v3, v3, 0x70

    .line 980
    const/16 v4, 0x30

    if-ne v3, v4, :cond_4

    .line 981
    add-int/2addr v0, v1

    sub-int/2addr v0, v2

    goto :goto_0

    .line 982
    :cond_4
    const/16 v4, 0x50

    if-eq v3, v4, :cond_1

    .line 985
    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method private getExtendedPaddingTop()I
    .locals 5

    .prologue
    .line 929
    iget-object v0, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDG:Landroid/text/Layout;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDK:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 930
    :cond_0
    invoke-direct {p0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->getCompoundPaddingTop()I

    move-result v0

    .line 952
    :cond_1
    :goto_0
    return v0

    .line 933
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDG:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    iget v1, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDJ:I

    if-gt v0, v1, :cond_3

    .line 934
    invoke-direct {p0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->getCompoundPaddingTop()I

    move-result v0

    goto :goto_0

    .line 937
    :cond_3
    invoke-direct {p0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->getCompoundPaddingTop()I

    move-result v0

    .line 938
    invoke-direct {p0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->getCompoundPaddingBottom()I

    move-result v1

    .line 939
    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->getHeight()I

    move-result v2

    sub-int/2addr v2, v0

    sub-int v1, v2, v1

    .line 940
    iget-object v2, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDG:Landroid/text/Layout;

    iget v3, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDJ:I

    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineTop(I)I

    move-result v2

    .line 942
    if-ge v2, v1, :cond_1

    .line 946
    iget v3, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->dL:I

    and-int/lit8 v3, v3, 0x70

    .line 947
    const/16 v4, 0x30

    if-eq v3, v4, :cond_1

    .line 949
    const/16 v4, 0x50

    if-ne v3, v4, :cond_4

    .line 950
    add-int/2addr v0, v1

    sub-int/2addr v0, v2

    goto :goto_0

    .line 952
    :cond_4
    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method private updateTextColors()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1428
    .line 1429
    iget-object v1, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDy:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    .line 1430
    iget v2, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDz:I

    if-eq v1, v2, :cond_0

    .line 1431
    iput v1, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDz:I

    .line 1432
    const/4 v0, 0x1

    .line 1435
    :cond_0
    if-eqz v0, :cond_1

    .line 1436
    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->invalidate()V

    .line 1438
    :cond_1
    return-void
.end method


# virtual methods
.method public final Q(F)V
    .locals 4
    .parameter

    .prologue
    .line 1067
    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1070
    if-nez v0, :cond_1

    .line 1071
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 1075
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    iget-object v1, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->eBR:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getTextSize()F

    move-result v1

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->eBR:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object v0, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->eBR:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDV:Landroid/graphics/Paint$FontMetricsInt;

    iget-object v0, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDV:Landroid/graphics/Paint$FontMetricsInt;

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget-object v1, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDV:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v0, v1

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000

    add-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDU:I

    iget-object v0, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDG:Landroid/text/Layout;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->aHO()V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->requestLayout()V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->invalidate()V

    .line 1077
    :cond_0
    return-void

    .line 1073
    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    goto :goto_0
.end method

.method public final aHM()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const v1, 0x7f02048f

    .line 694
    iget v0, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gEe:I

    if-eq v1, v0, :cond_1

    .line 695
    iput v1, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gEe:I

    .line 696
    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDY:Lcom/tencent/mm/ui/base/dy;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDY:Lcom/tencent/mm/ui/base/dy;

    iget-object v1, v1, Lcom/tencent/mm/ui/base/dy;->gEq:Landroid/graphics/drawable/Drawable;

    if-eq v1, v0, :cond_1

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->c(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 698
    :cond_1
    return-void
.end method

.method protected computeHorizontalScrollRange()I
    .locals 1

    .prologue
    .line 2539
    iget-object v0, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDG:Landroid/text/Layout;

    if-eqz v0, :cond_0

    .line 2540
    iget-object v0, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDG:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v0

    .line 2542
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/view/View;->computeHorizontalScrollRange()I

    move-result v0

    goto :goto_0
.end method

.method protected computeVerticalScrollExtent()I
    .locals 2

    .prologue
    .line 2561
    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->getHeight()I

    move-result v0

    invoke-direct {p0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->getCompoundPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-direct {p0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->getCompoundPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method protected computeVerticalScrollRange()I
    .locals 1

    .prologue
    .line 2550
    iget-object v0, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDG:Landroid/text/Layout;

    if-eqz v0, :cond_0

    .line 2551
    iget-object v0, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDG:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    .line 2553
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/view/View;->computeVerticalScrollRange()I

    move-result v0

    goto :goto_0
.end method

.method public final dA(Z)V
    .locals 0
    .parameter

    .prologue
    .line 362
    iput-boolean p1, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDX:Z

    .line 363
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 3

    .prologue
    .line 747
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 748
    iget-object v0, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDy:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDy:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 749
    invoke-direct {p0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->updateTextColors()V

    .line 752
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDY:Lcom/tencent/mm/ui/base/dy;

    .line 753
    if-eqz v0, :cond_4

    .line 754
    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->getDrawableState()[I

    move-result-object v1

    .line 755
    iget-object v2, v0, Lcom/tencent/mm/ui/base/dy;->gEn:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/tencent/mm/ui/base/dy;->gEn:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 756
    iget-object v2, v0, Lcom/tencent/mm/ui/base/dy;->gEn:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 758
    :cond_1
    iget-object v2, v0, Lcom/tencent/mm/ui/base/dy;->gEo:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/tencent/mm/ui/base/dy;->gEo:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 759
    iget-object v2, v0, Lcom/tencent/mm/ui/base/dy;->gEo:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 761
    :cond_2
    iget-object v2, v0, Lcom/tencent/mm/ui/base/dy;->gEp:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_3

    iget-object v2, v0, Lcom/tencent/mm/ui/base/dy;->gEp:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 762
    iget-object v2, v0, Lcom/tencent/mm/ui/base/dy;->gEp:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 764
    :cond_3
    iget-object v2, v0, Lcom/tencent/mm/ui/base/dy;->gEq:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_4

    iget-object v2, v0, Lcom/tencent/mm/ui/base/dy;->gEq:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 765
    iget-object v0, v0, Lcom/tencent/mm/ui/base/dy;->gEq:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 768
    :cond_4
    return-void
.end method

.method public final dy(Z)V
    .locals 0
    .parameter

    .prologue
    .line 319
    iput-boolean p1, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDZ:Z

    .line 320
    return-void
.end method

.method public final dz(Z)V
    .locals 0
    .parameter

    .prologue
    .line 328
    iput-boolean p1, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gEa:Z

    .line 329
    return-void
.end method

.method public getBaseline()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1984
    iget-object v0, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDG:Landroid/text/Layout;

    if-nez v0, :cond_0

    .line 1985
    invoke-super {p0}, Landroid/view/View;->getBaseline()I

    move-result v0

    .line 1993
    :goto_0
    return v0

    .line 1989
    :cond_0
    iget v0, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->dL:I

    and-int/lit8 v0, v0, 0x70

    const/16 v2, 0x30

    if-eq v0, v2, :cond_1

    .line 1990
    invoke-direct {p0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->aHN()I

    move-result v0

    .line 1993
    :goto_1
    invoke-direct {p0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->getExtendedPaddingTop()I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDG:Landroid/text/Layout;

    invoke-virtual {v2, v1}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .locals 4
    .parameter

    .prologue
    .line 1916
    iget-object v0, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDG:Landroid/text/Layout;

    if-nez v0, :cond_0

    .line 1917
    invoke-super {p0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 1941
    :goto_0
    return-void

    .line 1921
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->mText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 1922
    if-gez v0, :cond_1

    .line 1923
    invoke-super {p0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 1927
    :cond_1
    iget-object v1, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDG:Landroid/text/Layout;

    invoke-virtual {v1, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    .line 1928
    iget-object v2, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDG:Landroid/text/Layout;

    invoke-virtual {v2, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v2

    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 1929
    iget-object v2, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDG:Landroid/text/Layout;

    invoke-virtual {v2, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v1

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 1931
    iget-object v1, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDG:Landroid/text/Layout;

    invoke-virtual {v1, v0}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 1932
    iget v0, p1, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 1935
    invoke-direct {p0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->getCompoundPaddingLeft()I

    move-result v1

    .line 1936
    invoke-direct {p0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->getExtendedPaddingTop()I

    move-result v0

    .line 1937
    iget v2, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->dL:I

    and-int/lit8 v2, v2, 0x70

    const/16 v3, 0x30

    if-eq v2, v3, :cond_2

    .line 1938
    invoke-direct {p0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->aHN()I

    move-result v2

    add-int/2addr v0, v2

    .line 1940
    :cond_2
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0
.end method

.method public final getPaint()Landroid/text/TextPaint;
    .locals 1

    .prologue
    .line 1188
    iget-object v0, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->eBR:Landroid/text/TextPaint;

    return-object v0
.end method

.method public final getTextSize()F
    .locals 1

    .prologue
    .line 1048
    iget-object v0, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->eBR:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextSize()F

    move-result v0

    return v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 8
    .parameter

    .prologue
    .line 788
    invoke-virtual {p0, p1}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 789
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 790
    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->getScrollX()I

    move-result v1

    .line 791
    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->getScrollY()I

    move-result v0

    .line 796
    iget-object v3, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDY:Lcom/tencent/mm/ui/base/dy;

    .line 797
    if-eqz v3, :cond_0

    .line 798
    iget-object v4, v3, Lcom/tencent/mm/ui/base/dy;->gEp:Landroid/graphics/drawable/Drawable;

    if-ne p1, v4, :cond_2

    .line 799
    invoke-direct {p0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->getCompoundPaddingTop()I

    move-result v4

    .line 800
    invoke-direct {p0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->getCompoundPaddingBottom()I

    move-result v5

    .line 801
    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->getBottom()I

    move-result v6

    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->getTop()I

    move-result v7

    sub-int/2addr v6, v7

    sub-int v5, v6, v5

    sub-int/2addr v5, v4

    .line 803
    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->getPaddingLeft()I

    move-result v6

    add-int/2addr v1, v6

    .line 804
    iget v3, v3, Lcom/tencent/mm/ui/base/dy;->gEx:I

    sub-int v3, v5, v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v4

    add-int/2addr v0, v3

    .line 829
    :cond_0
    :goto_0
    iget v3, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v1

    iget v4, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v0

    iget v5, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v5

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v2

    invoke-virtual {p0, v3, v4, v1, v0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->invalidate(IIII)V

    .line 832
    :cond_1
    return-void

    .line 805
    :cond_2
    iget-object v4, v3, Lcom/tencent/mm/ui/base/dy;->gEq:Landroid/graphics/drawable/Drawable;

    if-ne p1, v4, :cond_3

    .line 806
    invoke-direct {p0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->getCompoundPaddingTop()I

    move-result v4

    .line 807
    invoke-direct {p0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->getCompoundPaddingBottom()I

    move-result v5

    .line 808
    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->getBottom()I

    move-result v6

    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->getTop()I

    move-result v7

    sub-int/2addr v6, v7

    sub-int v5, v6, v5

    sub-int/2addr v5, v4

    .line 810
    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->getRight()I

    move-result v6

    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->getLeft()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->getPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    iget v7, v3, Lcom/tencent/mm/ui/base/dy;->gEu:I

    sub-int/2addr v6, v7

    add-int/2addr v1, v6

    .line 811
    iget v3, v3, Lcom/tencent/mm/ui/base/dy;->gEy:I

    sub-int v3, v5, v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v4

    add-int/2addr v0, v3

    .line 812
    goto :goto_0

    :cond_3
    iget-object v4, v3, Lcom/tencent/mm/ui/base/dy;->gEn:Landroid/graphics/drawable/Drawable;

    if-ne p1, v4, :cond_4

    .line 813
    invoke-direct {p0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->getCompoundPaddingLeft()I

    move-result v4

    .line 814
    invoke-direct {p0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->getCompoundPaddingRight()I

    move-result v5

    .line 815
    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->getRight()I

    move-result v6

    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->getLeft()I

    move-result v7

    sub-int/2addr v6, v7

    sub-int v5, v6, v5

    sub-int/2addr v5, v4

    .line 817
    iget v3, v3, Lcom/tencent/mm/ui/base/dy;->gEv:I

    sub-int v3, v5, v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    .line 818
    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->getPaddingTop()I

    move-result v3

    add-int/2addr v0, v3

    .line 819
    goto :goto_0

    :cond_4
    iget-object v4, v3, Lcom/tencent/mm/ui/base/dy;->gEo:Landroid/graphics/drawable/Drawable;

    if-ne p1, v4, :cond_0

    .line 820
    invoke-direct {p0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->getCompoundPaddingLeft()I

    move-result v4

    .line 821
    invoke-direct {p0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->getCompoundPaddingRight()I

    move-result v5

    .line 822
    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->getRight()I

    move-result v6

    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->getLeft()I

    move-result v7

    sub-int/2addr v6, v7

    sub-int v5, v6, v5

    sub-int/2addr v5, v4

    .line 824
    iget v6, v3, Lcom/tencent/mm/ui/base/dy;->gEw:I

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    add-int/2addr v1, v4

    .line 825
    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->getBottom()I

    move-result v4

    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->getTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    iget v3, v3, Lcom/tencent/mm/ui/base/dy;->gEs:I

    sub-int v3, v4, v3

    add-int/2addr v0, v3

    goto/16 :goto_0
.end method

.method public final jb()V
    .locals 4

    .prologue
    const/16 v3, 0x35

    .line 1198
    const/4 v0, 0x0

    .line 1207
    const/4 v1, 0x5

    iget v2, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->dL:I

    and-int/lit8 v2, v2, 0x7

    if-eq v1, v2, :cond_0

    .line 1208
    const/4 v0, 0x1

    .line 1211
    :cond_0
    iget v1, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->dL:I

    if-eq v3, v1, :cond_1

    .line 1212
    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->invalidate()V

    .line 1215
    :cond_1
    iput v3, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->dL:I

    .line 1217
    iget-object v1, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDG:Landroid/text/Layout;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 1219
    iget-object v0, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDG:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v0

    .line 1221
    sget-object v1, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gEh:Landroid/text/BoringLayout$Metrics;

    sget-object v1, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gEh:Landroid/text/BoringLayout$Metrics;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->getWidth()I

    move-result v1

    invoke-direct {p0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->getCompoundPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-direct {p0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->getCompoundPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->bl(II)V

    .line 1225
    :cond_2
    return-void
.end method

.method public final nk(I)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 682
    iget v0, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gEd:I

    if-eq p1, v0, :cond_1

    .line 683
    iput p1, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gEd:I

    .line 684
    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDY:Lcom/tencent/mm/ui/base/dy;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDY:Lcom/tencent/mm/ui/base/dy;

    iget-object v1, v1, Lcom/tencent/mm/ui/base/dy;->gEp:Landroid/graphics/drawable/Drawable;

    if-eq v1, v0, :cond_1

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->c(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 686
    :cond_1
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 20
    .parameter

    .prologue
    .line 1739
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 1741
    invoke-direct/range {p0 .. p0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->getCompoundPaddingLeft()I

    move-result v5

    .line 1742
    invoke-direct/range {p0 .. p0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->getCompoundPaddingTop()I

    move-result v4

    .line 1743
    invoke-direct/range {p0 .. p0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->getCompoundPaddingRight()I

    move-result v6

    .line 1744
    invoke-direct/range {p0 .. p0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->getCompoundPaddingBottom()I

    move-result v2

    .line 1745
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->getScrollX()I

    move-result v7

    .line 1746
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->getScrollY()I

    move-result v8

    .line 1747
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->getRight()I

    move-result v9

    .line 1748
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->getLeft()I

    move-result v10

    .line 1749
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->getBottom()I

    move-result v11

    .line 1750
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->getTop()I

    move-result v12

    .line 1751
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->getWidth()I

    move-result v13

    .line 1752
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->getHeight()I

    move-result v14

    .line 1754
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDY:Lcom/tencent/mm/ui/base/dy;

    .line 1755
    const/high16 v3, -0x4080

    .line 1756
    if-eqz v15, :cond_3

    .line 1762
    sub-int v16, v11, v12

    sub-int v2, v16, v2

    sub-int v16, v2, v4

    .line 1763
    sub-int v2, v9, v10

    sub-int/2addr v2, v6

    sub-int v17, v2, v5

    .line 1767
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDZ:Z

    if-eqz v2, :cond_0

    iget-object v2, v15, Lcom/tencent/mm/ui/base/dy;->gEp:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 1768
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1769
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->getPaddingLeft()I

    move-result v2

    add-int/2addr v2, v7

    int-to-float v2, v2

    add-int v18, v8, v4

    iget v0, v15, Lcom/tencent/mm/ui/base/dy;->gEx:I

    move/from16 v19, v0

    sub-int v19, v16, v19

    div-int/lit8 v19, v19, 0x2

    add-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1772
    iget-object v2, v15, Lcom/tencent/mm/ui/base/dy;->gEp:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1773
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 1780
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gEa:Z

    if-eqz v2, :cond_1

    iget-object v2, v15, Lcom/tencent/mm/ui/base/dy;->gEq:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 1781
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1783
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDT:Z

    if-eqz v2, :cond_6

    .line 1784
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->eBR:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->mText:Ljava/lang/CharSequence;

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/lang/CharSequence;->length()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v2, v3, v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v2

    move v3, v2

    .line 1792
    :goto_0
    int-to-float v0, v7

    move/from16 v18, v0

    add-float v2, v2, v18

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->getPaddingRight()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v2, v2, v18

    add-int/2addr v4, v8

    iget v0, v15, Lcom/tencent/mm/ui/base/dy;->gEy:I

    move/from16 v18, v0

    sub-int v16, v16, v18

    div-int/lit8 v16, v16, 0x2

    add-int v4, v4, v16

    int-to-float v4, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1794
    iget-object v2, v15, Lcom/tencent/mm/ui/base/dy;->gEq:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1795
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 1800
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gEb:Z

    if-eqz v2, :cond_2

    iget-object v2, v15, Lcom/tencent/mm/ui/base/dy;->gEn:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    .line 1801
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1802
    add-int v2, v7, v5

    iget v4, v15, Lcom/tencent/mm/ui/base/dy;->gEv:I

    sub-int v4, v17, v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->getPaddingTop()I

    move-result v4

    add-int/2addr v4, v8

    int-to-float v4, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1804
    iget-object v2, v15, Lcom/tencent/mm/ui/base/dy;->gEn:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1805
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 1810
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gEc:Z

    if-eqz v2, :cond_3

    iget-object v2, v15, Lcom/tencent/mm/ui/base/dy;->gEo:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_3

    .line 1811
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1812
    add-int v2, v7, v5

    iget v4, v15, Lcom/tencent/mm/ui/base/dy;->gEw:I

    sub-int v4, v17, v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    int-to-float v2, v2

    add-int v4, v8, v11

    sub-int/2addr v4, v12

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->getPaddingBottom()I

    move-result v16

    sub-int v4, v4, v16

    iget v0, v15, Lcom/tencent/mm/ui/base/dy;->gEs:I

    move/from16 v16, v0

    sub-int v4, v4, v16

    int-to-float v4, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1815
    iget-object v2, v15, Lcom/tencent/mm/ui/base/dy;->gEo:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1816
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 1820
    :cond_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDz:I

    .line 1830
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->eBR:Landroid/text/TextPaint;

    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 1831
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->eBR:Landroid/text/TextPaint;

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->getDrawableState()[I

    move-result-object v4

    iput-object v4, v2, Landroid/text/TextPaint;->drawableState:[I

    .line 1833
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1839
    invoke-direct/range {p0 .. p0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->getExtendedPaddingTop()I

    move-result v15

    .line 1840
    invoke-direct/range {p0 .. p0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->getExtendedPaddingBottom()I

    move-result v2

    .line 1842
    add-int v4, v5, v7

    int-to-float v4, v4

    .line 1843
    add-int v16, v15, v8

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    .line 1844
    sub-int/2addr v9, v10

    sub-int v6, v9, v6

    add-int/2addr v6, v7

    int-to-float v6, v6

    .line 1845
    sub-int v7, v11, v12

    sub-int v2, v7, v2

    add-int/2addr v2, v8

    int-to-float v2, v2

    .line 1848
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v4, v1, v6, v2}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 1850
    const/4 v4, 0x0

    .line 1851
    const/4 v2, 0x0

    .line 1856
    move-object/from16 v0, p0

    iget v6, v0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->dL:I

    and-int/lit8 v6, v6, 0x70

    const/16 v7, 0x30

    if-eq v6, v7, :cond_4

    .line 1857
    invoke-direct/range {p0 .. p0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->aHN()I

    move-result v4

    .line 1858
    invoke-direct/range {p0 .. p0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->aHN()I

    move-result v2

    .line 1860
    :cond_4
    int-to-float v5, v5

    add-int v6, v15, v4

    int-to-float v6, v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1864
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDT:Z

    if-eqz v5, :cond_9

    .line 1866
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDV:Landroid/graphics/Paint$FontMetricsInt;

    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDV:Landroid/graphics/Paint$FontMetricsInt;

    iget v4, v4, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v2, v4

    sub-int v2, v14, v2

    div-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDV:Landroid/graphics/Paint$FontMetricsInt;

    iget v4, v4, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v2, v4

    int-to-float v7, v2

    .line 1869
    const/4 v2, 0x0

    .line 1870
    move-object/from16 v0, p0

    iget v4, v0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->dL:I

    and-int/lit8 v4, v4, 0x7

    const/4 v5, 0x3

    if-eq v4, v5, :cond_5

    .line 1871
    move-object/from16 v0, p0

    iget v4, v0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->dL:I

    and-int/lit8 v4, v4, 0x7

    sparse-switch v4, :sswitch_data_0

    .line 1887
    :cond_5
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->mText:Ljava/lang/CharSequence;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->eBR:Landroid/text/TextPaint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 1908
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 1909
    return-void

    .line 1789
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDD:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->eBR:Landroid/text/TextPaint;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v2, v0}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v2

    invoke-static {v2}, Landroid/util/FloatMath;->ceil(F)F

    move-result v2

    goto/16 :goto_0

    .line 1873
    :sswitch_0
    const/high16 v2, -0x4080

    cmpl-float v2, v3, v2

    if-nez v2, :cond_7

    .line 1874
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->eBR:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->mText:Ljava/lang/CharSequence;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v3

    .line 1876
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->getPaddingRight()I

    move-result v2

    sub-int v2, v13, v2

    int-to-float v2, v2

    sub-float/2addr v2, v3

    float-to-int v2, v2

    .line 1877
    goto :goto_1

    .line 1879
    :sswitch_1
    const/high16 v2, -0x4080

    cmpl-float v2, v3, v2

    if-nez v2, :cond_8

    .line 1880
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->eBR:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->mText:Ljava/lang/CharSequence;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v3

    .line 1882
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->getPaddingRight()I

    move-result v2

    sub-int v2, v13, v2

    int-to-float v2, v2

    sub-float/2addr v2, v3

    float-to-int v2, v2

    div-int/lit8 v2, v2, 0x2

    goto :goto_1

    .line 1889
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDG:Landroid/text/Layout;

    if-nez v3, :cond_a

    .line 1890
    invoke-direct/range {p0 .. p0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->aHP()V

    .line 1893
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDG:Landroid/text/Layout;

    .line 1895
    const/4 v5, 0x0

    const/4 v6, 0x0

    sub-int/2addr v2, v4

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v5, v6, v2}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    goto :goto_2

    .line 1871
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5 -> :sswitch_0
    .end sparse-switch
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 2590
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2594
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->mText:Ljava/lang/CharSequence;

    .line 2595
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2596
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2601
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1570
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 1571
    iget-boolean v0, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDW:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->getMeasuredWidth()I

    move-result v0

    if-lez v0, :cond_0

    .line 1572
    iget-object v0, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->mText:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->eBR:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->getMeasuredWidth()I

    move-result v2

    invoke-direct {p0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->getCompoundPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-direct {p0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->getCompoundPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v0, v1, v2, v3}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1573
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDW:Z

    .line 1575
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 2137
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 2138
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 2139
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 2140
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 2145
    if-nez v6, :cond_0

    .line 2146
    iget v0, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDU:I

    invoke-virtual {p0, v6, v0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->setMeasuredDimension(II)V

    .line 2230
    :goto_0
    return-void

    .line 2149
    :cond_0
    iget-boolean v0, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDT:Z

    if-eqz v0, :cond_2

    .line 2150
    iget v0, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDU:I

    if-nez v0, :cond_1

    .line 2151
    invoke-direct {p0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->aHQ()V

    .line 2152
    :cond_1
    iget v0, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDU:I

    invoke-virtual {p0, v6, v0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->setMeasuredDimension(II)V

    goto :goto_0

    .line 2156
    :cond_2
    sget-object v0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gEh:Landroid/text/BoringLayout$Metrics;

    .line 2157
    sget-object v0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gEh:Landroid/text/BoringLayout$Metrics;

    .line 2161
    invoke-direct {p0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->getCompoundPaddingLeft()I

    move-result v0

    invoke-direct {p0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->getCompoundPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    .line 2166
    iget-boolean v1, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDN:Z

    if-eqz v1, :cond_5

    .line 2195
    iget v1, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->oP:I

    sub-int v0, v1, v0

    .line 2199
    :goto_1
    iget-object v1, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDG:Landroid/text/Layout;

    if-nez v1, :cond_6

    .line 2200
    invoke-direct {p0, v0, v0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->bl(II)V

    .line 2211
    :cond_3
    :goto_2
    const/high16 v0, 0x4000

    if-ne v5, v0, :cond_8

    .line 2214
    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDQ:I

    move v0, v3

    .line 2226
    :cond_4
    :goto_3
    invoke-virtual {p0, v2, v2}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->scrollTo(II)V

    .line 2229
    invoke-virtual {p0, v6, v0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->setMeasuredDimension(II)V

    goto :goto_0

    .line 2197
    :cond_5
    sub-int v0, v6, v0

    goto :goto_1

    .line 2203
    :cond_6
    iget-object v1, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDG:Landroid/text/Layout;

    invoke-virtual {v1}, Landroid/text/Layout;->getWidth()I

    move-result v1

    if-eq v1, v0, :cond_7

    move v1, v4

    .line 2205
    :goto_4
    if-eqz v1, :cond_3

    .line 2206
    invoke-direct {p0, v0, v0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->bl(II)V

    goto :goto_2

    :cond_7
    move v1, v2

    .line 2203
    goto :goto_4

    .line 2216
    :cond_8
    iget-object v7, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDG:Landroid/text/Layout;

    if-nez v7, :cond_9

    move v0, v2

    .line 2219
    :goto_5
    iput v0, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDQ:I

    .line 2221
    const/high16 v1, -0x8000

    if-ne v5, v1, :cond_4

    .line 2222
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_3

    .line 2216
    :cond_9
    invoke-virtual {v7}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    invoke-direct {p0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->getCompoundPaddingTop()I

    move-result v0

    invoke-direct {p0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->getCompoundPaddingBottom()I

    move-result v8

    add-int/2addr v8, v0

    invoke-virtual {v7, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    add-int/2addr v0, v8

    iget v9, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDK:I

    if-ne v9, v4, :cond_c

    iget v9, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDJ:I

    if-le v1, v9, :cond_a

    iget v0, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDJ:I

    invoke-virtual {v7, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    invoke-virtual {v7}, Landroid/text/Layout;->getBottomPadding()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v0, v8

    iget v1, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDJ:I

    :cond_a
    :goto_6
    iget v7, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDM:I

    if-ne v7, v4, :cond_d

    iget v4, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDL:I

    if-ge v1, v4, :cond_b

    iget-object v4, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->eBR:Landroid/text/TextPaint;

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    move-result v4

    int-to-float v4, v4

    iget v7, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDH:F

    mul-float/2addr v4, v7

    iget v7, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDI:F

    add-float/2addr v4, v7

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget v7, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDL:I

    sub-int v1, v7, v1

    mul-int/2addr v1, v4

    add-int/2addr v0, v1

    :cond_b
    :goto_7
    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_5

    :cond_c
    iget v7, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDJ:I

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_6

    :cond_d
    iget v1, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDL:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_7
.end method

.method public final setMaxWidth(I)V
    .locals 1
    .parameter

    .prologue
    .line 1362
    iput p1, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->oP:I

    .line 1363
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDN:Z

    .line 1365
    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->requestLayout()V

    .line 1366
    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->invalidate()V

    .line 1367
    return-void
.end method

.method public setPadding(IIII)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1032
    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->getPaddingLeft()I

    move-result v0

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->getPaddingRight()I

    move-result v0

    if-ne p3, v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->getPaddingTop()I

    move-result v0

    if-ne p2, v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->getPaddingBottom()I

    move-result v0

    if-eq p4, v0, :cond_1

    .line 1034
    :cond_0
    invoke-direct {p0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->aHO()V

    .line 1038
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setPadding(IIII)V

    .line 1039
    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->invalidate()V

    .line 1040
    return-void
.end method

.method public final setText(Ljava/lang/CharSequence;)V
    .locals 5
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 1467
    iget-object v1, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDE:Lcom/tencent/mm/ui/base/dx;

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    instance-of v0, p1, Landroid/text/Spanned;

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDT:Z

    :goto_0
    sget-object v0, Lcom/tencent/mm/ui/base/dx;->gEk:Lcom/tencent/mm/ui/base/dx;

    if-eq v1, v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDF:Landroid/text/method/KeyListener;

    if-eqz v0, :cond_7

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDA:Landroid/text/Editable$Factory;

    invoke-virtual {v0, p1}, Landroid/text/Editable$Factory;->newEditable(Ljava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->getCompoundPaddingRight()I

    move-result v0

    invoke-direct {p0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->getCompoundPaddingLeft()I

    move-result v2

    add-int/2addr v2, v0

    iget-boolean v0, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDX:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDN:Z

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->oP:I

    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->getMeasuredWidth()I

    move-result v3

    if-lez v3, :cond_3

    iget v0, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->oP:I

    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->getMeasuredWidth()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_3
    iget-object v3, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->eBR:Landroid/text/TextPaint;

    sub-int/2addr v0, v2

    int-to-float v0, v0

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {p1, v3, v0, v4}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object p1

    :cond_4
    :goto_2
    iput-object v1, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDE:Lcom/tencent/mm/ui/base/dx;

    iput-object p1, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->mText:Ljava/lang/CharSequence;

    iput-object p1, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDD:Ljava/lang/CharSequence;

    iget-boolean v0, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDT:Z

    if-eqz v0, :cond_a

    invoke-direct {p0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->aHQ()V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->invalidate()V

    .line 1468
    :cond_5
    :goto_3
    return-void

    .line 1467
    :cond_6
    iput-boolean v3, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDT:Z

    goto :goto_0

    :cond_7
    sget-object v0, Lcom/tencent/mm/ui/base/dx;->gEj:Lcom/tencent/mm/ui/base/dx;

    if-ne v1, v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDB:Landroid/text/Spannable$Factory;

    invoke-virtual {v0, p1}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object p1

    goto :goto_1

    :cond_8
    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->getMeasuredWidth()I

    move-result v0

    if-lez v0, :cond_9

    iget-object v0, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->eBR:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v3, v2

    int-to-float v3, v3

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {p1, v0, v3, v4}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_2

    :cond_9
    iput-boolean v3, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDW:Z

    goto :goto_2

    :cond_a
    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->getWidth()I

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDG:Landroid/text/Layout;

    if-nez v0, :cond_c

    invoke-direct {p0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->aHP()V

    iget-object v0, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDG:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_b

    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->requestLayout()V

    :cond_b
    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->invalidate()V

    goto :goto_3

    :cond_c
    iget-object v0, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDG:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDG:Landroid/text/Layout;

    invoke-virtual {v1}, Landroid/text/Layout;->getWidth()I

    move-result v1

    sget-object v3, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gEh:Landroid/text/BoringLayout$Metrics;

    sget-object v3, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gEh:Landroid/text/BoringLayout$Metrics;

    sub-int v2, v1, v2

    invoke-direct {p0, v1, v2}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->bl(II)V

    iget-object v1, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDC:Landroid/text/TextUtils$TruncateAt;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-eq v1, v2, :cond_e

    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v2, -0x2

    if-eq v1, v2, :cond_d

    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_d

    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->invalidate()V

    goto :goto_3

    :cond_d
    iget-object v1, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDG:Landroid/text/Layout;

    invoke-virtual {v1}, Landroid/text/Layout;->getHeight()I

    move-result v1

    if-ne v1, v0, :cond_e

    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->getHeight()I

    move-result v0

    if-ne v1, v0, :cond_e

    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->invalidate()V

    goto/16 :goto_3

    :cond_e
    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->requestLayout()V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->invalidate()V

    goto/16 :goto_3
.end method

.method public final setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .parameter

    .prologue
    .line 1153
    if-nez p1, :cond_0

    .line 1154
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1156
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDy:Landroid/content/res/ColorStateList;

    if-ne v0, p1, :cond_1

    .line 1161
    :goto_0
    return-void

    .line 1159
    :cond_1
    iput-object p1, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDy:Landroid/content/res/ColorStateList;

    .line 1160
    invoke-direct {p0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->updateTextColors()V

    goto :goto_0
.end method

.method public final setTypeface(Landroid/graphics/Typeface;)V
    .locals 1
    .parameter

    .prologue
    .line 1117
    iget-object v0, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->eBR:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 1118
    iget-object v0, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->eBR:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1120
    iget-object v0, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDG:Landroid/text/Layout;

    if-eqz v0, :cond_0

    .line 1121
    invoke-direct {p0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->aHO()V

    .line 1122
    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->requestLayout()V

    .line 1123
    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->invalidate()V

    .line 1126
    :cond_0
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 2
    .parameter

    .prologue
    .line 775
    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    .line 776
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDY:Lcom/tencent/mm/ui/base/dy;

    if-eqz v1, :cond_1

    .line 777
    iget-object v0, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDY:Lcom/tencent/mm/ui/base/dy;

    iget-object v0, v0, Lcom/tencent/mm/ui/base/dy;->gEp:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDY:Lcom/tencent/mm/ui/base/dy;

    iget-object v0, v0, Lcom/tencent/mm/ui/base/dy;->gEn:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDY:Lcom/tencent/mm/ui/base/dy;

    iget-object v0, v0, Lcom/tencent/mm/ui/base/dy;->gEq:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->gDY:Lcom/tencent/mm/ui/base/dy;

    iget-object v0, v0, Lcom/tencent/mm/ui/base/dy;->gEo:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 780
    :cond_1
    :goto_0
    return v0

    .line 777
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
