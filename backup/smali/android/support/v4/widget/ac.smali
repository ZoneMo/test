.class public final Landroid/support/v4/widget/ac;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ef:Landroid/view/animation/Interpolator;


# instance fields
.field private dC:I

.field private eG:I

.field private eH:Landroid/view/VelocityTracker;

.field private gE:I

.field private gF:[F

.field private gG:[F

.field private gH:[F

.field private gI:[F

.field private gJ:[I

.field private gK:[I

.field private gL:[I

.field private gM:I

.field private gN:F

.field private gO:F

.field private gP:I

.field private gQ:I

.field private gR:Landroid/support/v4/widget/o;

.field private final gS:Landroid/support/v4/widget/af;

.field private gT:Landroid/view/View;

.field private gU:Z

.field private final gV:Landroid/view/ViewGroup;

.field private final gW:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 326
    new-instance v0, Landroid/support/v4/widget/ad;

    invoke-direct {v0}, Landroid/support/v4/widget/ad;-><init>()V

    sput-object v0, Landroid/support/v4/widget/ac;->ef:Landroid/view/animation/Interpolator;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/support/v4/widget/af;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/widget/ac;->eG:I

    .line 333
    new-instance v0, Landroid/support/v4/widget/ae;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/ae;-><init>(Landroid/support/v4/widget/ac;)V

    iput-object v0, p0, Landroid/support/v4/widget/ac;->gW:Ljava/lang/Runnable;

    .line 374
    if-nez p2, :cond_0

    .line 375
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parent view may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 377
    :cond_0
    if-nez p3, :cond_1

    .line 378
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Callback may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 381
    :cond_1
    iput-object p2, p0, Landroid/support/v4/widget/ac;->gV:Landroid/view/ViewGroup;

    .line 382
    iput-object p3, p0, Landroid/support/v4/widget/ac;->gS:Landroid/support/v4/widget/af;

    .line 384
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 385
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 386
    const/high16 v2, 0x41a0

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f00

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Landroid/support/v4/widget/ac;->gP:I

    .line 388
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Landroid/support/v4/widget/ac;->dC:I

    .line 389
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Landroid/support/v4/widget/ac;->gN:F

    .line 390
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Landroid/support/v4/widget/ac;->gO:F

    .line 391
    sget-object v0, Landroid/support/v4/widget/ac;->ef:Landroid/view/animation/Interpolator;

    invoke-static {p1, v0}, Landroid/support/v4/widget/o;->a(Landroid/content/Context;Landroid/view/animation/Interpolator;)Landroid/support/v4/widget/o;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/widget/ac;->gR:Landroid/support/v4/widget/o;

    .line 392
    return-void
.end method

.method private static a(FFF)F
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 667
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 668
    cmpg-float v2, v1, p1

    if-gez v2, :cond_1

    move p2, v0

    .line 670
    :cond_0
    :goto_0
    return p2

    .line 669
    :cond_1
    cmpl-float v1, v1, p2

    if-lez v1, :cond_2

    cmpl-float v0, p0, v0

    if-gtz v0, :cond_0

    neg-float p2, p2

    goto :goto_0

    :cond_2
    move p2, p0

    .line 670
    goto :goto_0
.end method

.method private a(III)I
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v7, 0x3f80

    .line 618
    if-nez p1, :cond_0

    .line 619
    const/4 v0, 0x0

    .line 636
    :goto_0
    return v0

    .line 622
    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/ac;->gV:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    .line 623
    div-int/lit8 v1, v0, 0x2

    .line 624
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    int-to-float v0, v0

    div-float v0, v2, v0

    invoke-static {v7, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 625
    int-to-float v2, v1

    int-to-float v1, v1

    const/high16 v3, 0x3f00

    sub-float/2addr v0, v3

    float-to-double v3, v0

    const-wide v5, 0x3fde28c7460698c7L

    mul-double/2addr v3, v5

    double-to-float v0, v3

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v0, v3

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    .line 629
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 630
    if-lez v1, :cond_1

    .line 631
    const/high16 v2, 0x447a

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    .line 636
    :goto_1
    const/16 v1, 0x258

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    .line 633
    :cond_1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    int-to-float v1, p3

    div-float/2addr v0, v1

    .line 634
    add-float/2addr v0, v7

    const/high16 v1, 0x4380

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_1
.end method

.method public static a(Landroid/view/ViewGroup;FLandroid/support/v4/widget/af;)Landroid/support/v4/widget/ac;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 360
    new-instance v0, Landroid/support/v4/widget/ac;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0, p2}, Landroid/support/v4/widget/ac;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/support/v4/widget/af;)V

    .line 361
    iget v1, v0, Landroid/support/v4/widget/ac;->dC:I

    int-to-float v1, v1

    const/high16 v2, 0x3f80

    div-float/2addr v2, p1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/support/v4/widget/ac;->dC:I

    .line 362
    return-object v0
.end method

.method private a(FFI)V
    .locals 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 828
    iget-object v2, p0, Landroid/support/v4/widget/ac;->gF:[F

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/support/v4/widget/ac;->gF:[F

    array-length v2, v2

    if-gt v2, p3, :cond_2

    :cond_0
    add-int/lit8 v2, p3, 0x1

    new-array v2, v2, [F

    add-int/lit8 v3, p3, 0x1

    new-array v3, v3, [F

    add-int/lit8 v4, p3, 0x1

    new-array v4, v4, [F

    add-int/lit8 v5, p3, 0x1

    new-array v5, v5, [F

    add-int/lit8 v6, p3, 0x1

    new-array v6, v6, [I

    add-int/lit8 v7, p3, 0x1

    new-array v7, v7, [I

    add-int/lit8 v8, p3, 0x1

    new-array v8, v8, [I

    iget-object v9, p0, Landroid/support/v4/widget/ac;->gF:[F

    if-eqz v9, :cond_1

    iget-object v9, p0, Landroid/support/v4/widget/ac;->gF:[F

    iget-object v10, p0, Landroid/support/v4/widget/ac;->gF:[F

    array-length v10, v10

    invoke-static {v9, v0, v2, v0, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v9, p0, Landroid/support/v4/widget/ac;->gG:[F

    iget-object v10, p0, Landroid/support/v4/widget/ac;->gG:[F

    array-length v10, v10

    invoke-static {v9, v0, v3, v0, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v9, p0, Landroid/support/v4/widget/ac;->gH:[F

    iget-object v10, p0, Landroid/support/v4/widget/ac;->gH:[F

    array-length v10, v10

    invoke-static {v9, v0, v4, v0, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v9, p0, Landroid/support/v4/widget/ac;->gI:[F

    iget-object v10, p0, Landroid/support/v4/widget/ac;->gI:[F

    array-length v10, v10

    invoke-static {v9, v0, v5, v0, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v9, p0, Landroid/support/v4/widget/ac;->gJ:[I

    iget-object v10, p0, Landroid/support/v4/widget/ac;->gJ:[I

    array-length v10, v10

    invoke-static {v9, v0, v6, v0, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v9, p0, Landroid/support/v4/widget/ac;->gK:[I

    iget-object v10, p0, Landroid/support/v4/widget/ac;->gK:[I

    array-length v10, v10

    invoke-static {v9, v0, v7, v0, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v9, p0, Landroid/support/v4/widget/ac;->gL:[I

    iget-object v10, p0, Landroid/support/v4/widget/ac;->gL:[I

    array-length v10, v10

    invoke-static {v9, v0, v8, v0, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iput-object v2, p0, Landroid/support/v4/widget/ac;->gF:[F

    iput-object v3, p0, Landroid/support/v4/widget/ac;->gG:[F

    iput-object v4, p0, Landroid/support/v4/widget/ac;->gH:[F

    iput-object v5, p0, Landroid/support/v4/widget/ac;->gI:[F

    iput-object v6, p0, Landroid/support/v4/widget/ac;->gJ:[I

    iput-object v7, p0, Landroid/support/v4/widget/ac;->gK:[I

    iput-object v8, p0, Landroid/support/v4/widget/ac;->gL:[I

    .line 829
    :cond_2
    iget-object v2, p0, Landroid/support/v4/widget/ac;->gF:[F

    iget-object v3, p0, Landroid/support/v4/widget/ac;->gH:[F

    aput p1, v3, p3

    aput p1, v2, p3

    .line 830
    iget-object v2, p0, Landroid/support/v4/widget/ac;->gG:[F

    iget-object v3, p0, Landroid/support/v4/widget/ac;->gI:[F

    aput p2, v3, p3

    aput p2, v2, p3

    .line 831
    iget-object v2, p0, Landroid/support/v4/widget/ac;->gJ:[I

    float-to-int v3, p1

    float-to-int v4, p2

    iget-object v5, p0, Landroid/support/v4/widget/ac;->gV:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getLeft()I

    move-result v5

    iget v6, p0, Landroid/support/v4/widget/ac;->gP:I

    add-int/2addr v5, v6

    if-ge v3, v5, :cond_3

    move v0, v1

    :cond_3
    iget-object v5, p0, Landroid/support/v4/widget/ac;->gV:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getTop()I

    move-result v5

    iget v6, p0, Landroid/support/v4/widget/ac;->gP:I

    add-int/2addr v5, v6

    if-ge v4, v5, :cond_4

    or-int/lit8 v0, v0, 0x4

    :cond_4
    iget-object v5, p0, Landroid/support/v4/widget/ac;->gV:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getRight()I

    move-result v5

    iget v6, p0, Landroid/support/v4/widget/ac;->gP:I

    sub-int/2addr v5, v6

    if-le v3, v5, :cond_5

    or-int/lit8 v0, v0, 0x2

    :cond_5
    iget-object v3, p0, Landroid/support/v4/widget/ac;->gV:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getBottom()I

    move-result v3

    iget v5, p0, Landroid/support/v4/widget/ac;->gP:I

    sub-int/2addr v3, v5

    if-le v4, v3, :cond_6

    or-int/lit8 v0, v0, 0x8

    :cond_6
    aput v0, v2, p3

    .line 832
    iget v0, p0, Landroid/support/v4/widget/ac;->gM:I

    shl-int/2addr v1, p3

    or-int/2addr v0, v1

    iput v0, p0, Landroid/support/v4/widget/ac;->gM:I

    .line 833
    return-void
.end method

.method private a(FFII)Z
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1218
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 1219
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 1221
    iget-object v3, p0, Landroid/support/v4/widget/ac;->gJ:[I

    aget v3, v3, p3

    and-int/2addr v3, p4

    if-ne v3, p4, :cond_0

    iget v3, p0, Landroid/support/v4/widget/ac;->gQ:I

    and-int/2addr v3, p4

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/support/v4/widget/ac;->gL:[I

    aget v3, v3, p3

    and-int/2addr v3, p4

    if-eq v3, p4, :cond_0

    iget-object v3, p0, Landroid/support/v4/widget/ac;->gK:[I

    aget v3, v3, p3

    and-int/2addr v3, p4

    if-eq v3, p4, :cond_0

    iget v3, p0, Landroid/support/v4/widget/ac;->dC:I

    int-to-float v3, v3

    cmpg-float v3, v1, v3

    if-gtz v3, :cond_1

    iget v3, p0, Landroid/support/v4/widget/ac;->dC:I

    int-to-float v3, v3

    cmpg-float v3, v2, v3

    if-gtz v3, :cond_1

    .line 1228
    :cond_0
    :goto_0
    return v0

    .line 1227
    :cond_1
    const/high16 v3, 0x3f00

    mul-float/2addr v2, v3

    cmpg-float v2, v1, v2

    if-gez v2, :cond_2

    iget-object v2, p0, Landroid/support/v4/widget/ac;->gS:Landroid/support/v4/widget/af;

    .line 1228
    :cond_2
    iget-object v2, p0, Landroid/support/v4/widget/ac;->gK:[I

    aget v2, v2, p3

    and-int/2addr v2, p4

    if-nez v2, :cond_0

    iget v2, p0, Landroid/support/v4/widget/ac;->dC:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private aQ()V
    .locals 4

    .prologue
    .line 1355
    iget-object v0, p0, Landroid/support/v4/widget/ac;->eH:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    iget v2, p0, Landroid/support/v4/widget/ac;->gN:F

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1356
    iget-object v0, p0, Landroid/support/v4/widget/ac;->eH:Landroid/view/VelocityTracker;

    iget v1, p0, Landroid/support/v4/widget/ac;->eG:I

    invoke-static {v0, v1}, Landroid/support/v4/view/aw;->a(Landroid/view/VelocityTracker;I)F

    move-result v0

    iget v1, p0, Landroid/support/v4/widget/ac;->gO:F

    iget v2, p0, Landroid/support/v4/widget/ac;->gN:F

    invoke-static {v0, v1, v2}, Landroid/support/v4/widget/ac;->a(FFF)F

    move-result v0

    .line 1359
    iget-object v1, p0, Landroid/support/v4/widget/ac;->eH:Landroid/view/VelocityTracker;

    iget v2, p0, Landroid/support/v4/widget/ac;->eG:I

    invoke-static {v1, v2}, Landroid/support/v4/view/aw;->b(Landroid/view/VelocityTracker;I)F

    move-result v1

    iget v2, p0, Landroid/support/v4/widget/ac;->gO:F

    iget v3, p0, Landroid/support/v4/widget/ac;->gN:F

    invoke-static {v1, v2, v3}, Landroid/support/v4/widget/ac;->a(FFF)F

    .line 1362
    invoke-direct {p0, v0}, Landroid/support/v4/widget/ac;->f(F)V

    .line 1363
    return-void
.end method

.method private static b(III)I
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 650
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 651
    if-ge v0, p1, :cond_1

    const/4 p2, 0x0

    .line 653
    :cond_0
    :goto_0
    return p2

    .line 652
    :cond_1
    if-le v0, p2, :cond_2

    if-gtz p0, :cond_0

    neg-int p2, p2

    goto :goto_0

    :cond_2
    move p2, p0

    .line 653
    goto :goto_0
.end method

.method private b(FFI)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 1197
    const/4 v1, 0x0

    .line 1198
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v4/widget/ac;->a(FFII)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1201
    :goto_0
    const/4 v1, 0x4

    invoke-direct {p0, p2, p1, p3, v1}, Landroid/support/v4/widget/ac;->a(FFII)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1202
    or-int/lit8 v0, v0, 0x4

    .line 1204
    :cond_0
    const/4 v1, 0x2

    invoke-direct {p0, p1, p2, p3, v1}, Landroid/support/v4/widget/ac;->a(FFII)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1205
    or-int/lit8 v0, v0, 0x2

    .line 1207
    :cond_1
    const/16 v1, 0x8

    invoke-direct {p0, p2, p1, p3, v1}, Landroid/support/v4/widget/ac;->a(FFII)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1208
    or-int/lit8 v0, v0, 0x8

    .line 1211
    :cond_2
    if-eqz v0, :cond_3

    .line 1212
    iget-object v1, p0, Landroid/support/v4/widget/ac;->gK:[I

    aget v2, v1, p3

    or-int/2addr v2, v0

    aput v2, v1, p3

    .line 1213
    iget-object v1, p0, Landroid/support/v4/widget/ac;->gS:Landroid/support/v4/widget/af;

    invoke-virtual {v1, v0, p3}, Landroid/support/v4/widget/af;->d(II)V

    .line 1215
    :cond_3
    return-void

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method private b(IIII)Z
    .locals 14
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 577
    iget-object v1, p0, Landroid/support/v4/widget/ac;->gT:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 578
    iget-object v1, p0, Landroid/support/v4/widget/ac;->gT:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    .line 579
    sub-int v4, p1, v2

    .line 580
    sub-int v5, p2, v3

    .line 582
    if-nez v4, :cond_0

    if-nez v5, :cond_0

    .line 584
    iget-object v1, p0, Landroid/support/v4/widget/ac;->gR:Landroid/support/v4/widget/o;

    invoke-virtual {v1}, Landroid/support/v4/widget/o;->abortAnimation()V

    .line 585
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/support/v4/widget/ac;->v(I)V

    .line 586
    const/4 v1, 0x0

    .line 593
    :goto_0
    return v1

    .line 589
    :cond_0
    iget-object v7, p0, Landroid/support/v4/widget/ac;->gT:Landroid/view/View;

    iget v1, p0, Landroid/support/v4/widget/ac;->gO:F

    float-to-int v1, v1

    iget v6, p0, Landroid/support/v4/widget/ac;->gN:F

    float-to-int v6, v6

    move/from16 v0, p3

    invoke-static {v0, v1, v6}, Landroid/support/v4/widget/ac;->b(III)I

    move-result v8

    iget v1, p0, Landroid/support/v4/widget/ac;->gO:F

    float-to-int v1, v1

    iget v6, p0, Landroid/support/v4/widget/ac;->gN:F

    float-to-int v6, v6

    move/from16 v0, p4

    invoke-static {v0, v1, v6}, Landroid/support/v4/widget/ac;->b(III)I

    move-result v9

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v10

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v6

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v11

    add-int v12, v6, v11

    add-int v13, v1, v10

    if-eqz v8, :cond_1

    int-to-float v1, v6

    int-to-float v6, v12

    div-float/2addr v1, v6

    move v6, v1

    :goto_1
    if-eqz v9, :cond_2

    int-to-float v1, v11

    int-to-float v10, v12

    div-float/2addr v1, v10

    :goto_2
    iget-object v10, p0, Landroid/support/v4/widget/ac;->gS:Landroid/support/v4/widget/af;

    invoke-virtual {v10, v7}, Landroid/support/v4/widget/af;->y(Landroid/view/View;)I

    move-result v7

    invoke-direct {p0, v4, v8, v7}, Landroid/support/v4/widget/ac;->a(III)I

    move-result v7

    iget-object v8, p0, Landroid/support/v4/widget/ac;->gS:Landroid/support/v4/widget/af;

    const/4 v8, 0x0

    invoke-direct {p0, v5, v9, v8}, Landroid/support/v4/widget/ac;->a(III)I

    move-result v8

    int-to-float v7, v7

    mul-float/2addr v6, v7

    int-to-float v7, v8

    mul-float/2addr v1, v7

    add-float/2addr v1, v6

    float-to-int v6, v1

    .line 590
    iget-object v1, p0, Landroid/support/v4/widget/ac;->gR:Landroid/support/v4/widget/o;

    invoke-virtual/range {v1 .. v6}, Landroid/support/v4/widget/o;->startScroll(IIIII)V

    .line 592
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/support/v4/widget/ac;->v(I)V

    .line 593
    const/4 v1, 0x1

    goto :goto_0

    .line 589
    :cond_1
    int-to-float v1, v1

    int-to-float v6, v13

    div-float/2addr v1, v6

    move v6, v1

    goto :goto_1

    :cond_2
    int-to-float v1, v10

    int-to-float v10, v13

    div-float/2addr v1, v10

    goto :goto_2
.end method

.method public static b(Landroid/view/View;II)Z
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1410
    if-nez p0, :cond_1

    .line 1413
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    if-lt p1, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v1

    if-lt p2, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v1

    if-ge p2, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private c(Landroid/view/View;F)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1245
    if-nez p1, :cond_1

    .line 1255
    :cond_0
    :goto_0
    return v2

    .line 1248
    :cond_1
    iget-object v0, p0, Landroid/support/v4/widget/ac;->gS:Landroid/support/v4/widget/af;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/af;->y(Landroid/view/View;)I

    move-result v0

    if-lez v0, :cond_2

    move v0, v1

    .line 1249
    :goto_1
    iget-object v3, p0, Landroid/support/v4/widget/ac;->gS:Landroid/support/v4/widget/af;

    .line 1251
    if-eqz v0, :cond_0

    .line 1254
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v3, p0, Landroid/support/v4/widget/ac;->dC:I

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_0

    move v2, v1

    goto :goto_0

    :cond_2
    move v0, v2

    .line 1248
    goto :goto_1
.end method

.method private e(Landroid/view/MotionEvent;)V
    .locals 6
    .parameter

    .prologue
    .line 836
    invoke-static {p1}, Landroid/support/v4/view/aj;->c(Landroid/view/MotionEvent;)I

    move-result v1

    .line 837
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 838
    invoke-static {p1, v0}, Landroid/support/v4/view/aj;->b(Landroid/view/MotionEvent;I)I

    move-result v2

    .line 839
    invoke-static {p1, v0}, Landroid/support/v4/view/aj;->c(Landroid/view/MotionEvent;I)F

    move-result v3

    .line 840
    invoke-static {p1, v0}, Landroid/support/v4/view/aj;->d(Landroid/view/MotionEvent;I)F

    move-result v4

    .line 841
    iget-object v5, p0, Landroid/support/v4/widget/ac;->gH:[F

    aput v3, v5, v2

    .line 842
    iget-object v3, p0, Landroid/support/v4/widget/ac;->gI:[F

    aput v4, v3, v2

    .line 837
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 844
    :cond_0
    return-void
.end method

.method private f(F)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 759
    iput-boolean v3, p0, Landroid/support/v4/widget/ac;->gU:Z

    .line 760
    iget-object v0, p0, Landroid/support/v4/widget/ac;->gS:Landroid/support/v4/widget/af;

    iget-object v1, p0, Landroid/support/v4/widget/ac;->gT:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/widget/af;->b(Landroid/view/View;F)V

    .line 761
    iput-boolean v2, p0, Landroid/support/v4/widget/ac;->gU:Z

    .line 763
    iget v0, p0, Landroid/support/v4/widget/ac;->gE:I

    if-ne v0, v3, :cond_0

    .line 765
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/ac;->v(I)V

    .line 767
    :cond_0
    return-void
.end method

.method private f(Landroid/view/View;I)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 883
    iget-object v1, p0, Landroid/support/v4/widget/ac;->gT:Landroid/view/View;

    if-ne p1, v1, :cond_0

    iget v1, p0, Landroid/support/v4/widget/ac;->eG:I

    if-ne v1, p2, :cond_0

    .line 892
    :goto_0
    return v0

    .line 887
    :cond_0
    if-eqz p1, :cond_1

    iget-object v1, p0, Landroid/support/v4/widget/ac;->gS:Landroid/support/v4/widget/af;

    invoke-virtual {v1, p1}, Landroid/support/v4/widget/af;->w(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 888
    iput p2, p0, Landroid/support/v4/widget/ac;->eG:I

    .line 889
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/widget/ac;->e(Landroid/view/View;I)V

    goto :goto_0

    .line 892
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private u(I)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 784
    iget-object v0, p0, Landroid/support/v4/widget/ac;->gF:[F

    if-nez v0, :cond_0

    .line 795
    :goto_0
    return-void

    .line 787
    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/ac;->gF:[F

    aput v1, v0, p1

    .line 788
    iget-object v0, p0, Landroid/support/v4/widget/ac;->gG:[F

    aput v1, v0, p1

    .line 789
    iget-object v0, p0, Landroid/support/v4/widget/ac;->gH:[F

    aput v1, v0, p1

    .line 790
    iget-object v0, p0, Landroid/support/v4/widget/ac;->gI:[F

    aput v1, v0, p1

    .line 791
    iget-object v0, p0, Landroid/support/v4/widget/ac;->gJ:[I

    aput v2, v0, p1

    .line 792
    iget-object v0, p0, Landroid/support/v4/widget/ac;->gK:[I

    aput v2, v0, p1

    .line 793
    iget-object v0, p0, Landroid/support/v4/widget/ac;->gL:[I

    aput v2, v0, p1

    .line 794
    iget v0, p0, Landroid/support/v4/widget/ac;->gM:I

    const/4 v1, 0x1

    shl-int/2addr v1, p1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/support/v4/widget/ac;->gM:I

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/view/View;II)Z
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 539
    iput-object p1, p0, Landroid/support/v4/widget/ac;->gT:Landroid/view/View;

    .line 540
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/widget/ac;->eG:I

    .line 542
    invoke-direct {p0, p2, p3, v1, v1}, Landroid/support/v4/widget/ac;->b(IIII)Z

    move-result v0

    return v0
.end method

.method public final aL()I
    .locals 1

    .prologue
    .line 421
    iget v0, p0, Landroid/support/v4/widget/ac;->gE:I

    return v0
.end method

.method public final aM()I
    .locals 1

    .prologue
    .line 448
    iget v0, p0, Landroid/support/v4/widget/ac;->gP:I

    return v0
.end method

.method public final aN()Landroid/view/View;
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Landroid/support/v4/widget/ac;->gT:Landroid/view/View;

    return-object v0
.end method

.method public final aO()Z
    .locals 7

    .prologue
    const/4 v6, 0x2

    .line 715
    iget v0, p0, Landroid/support/v4/widget/ac;->gE:I

    if-ne v0, v6, :cond_5

    .line 716
    iget-object v0, p0, Landroid/support/v4/widget/ac;->gR:Landroid/support/v4/widget/o;

    invoke-virtual {v0}, Landroid/support/v4/widget/o;->computeScrollOffset()Z

    move-result v0

    .line 717
    iget-object v1, p0, Landroid/support/v4/widget/ac;->gR:Landroid/support/v4/widget/o;

    invoke-virtual {v1}, Landroid/support/v4/widget/o;->getCurrX()I

    move-result v1

    .line 718
    iget-object v2, p0, Landroid/support/v4/widget/ac;->gR:Landroid/support/v4/widget/o;

    invoke-virtual {v2}, Landroid/support/v4/widget/o;->getCurrY()I

    move-result v2

    .line 719
    iget-object v3, p0, Landroid/support/v4/widget/ac;->gT:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int v3, v1, v3

    .line 720
    iget-object v4, p0, Landroid/support/v4/widget/ac;->gT:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int v4, v2, v4

    .line 722
    if-eqz v3, :cond_0

    .line 723
    iget-object v5, p0, Landroid/support/v4/widget/ac;->gT:Landroid/view/View;

    invoke-virtual {v5, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 725
    :cond_0
    if-eqz v4, :cond_1

    .line 726
    iget-object v5, p0, Landroid/support/v4/widget/ac;->gT:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 729
    :cond_1
    if-nez v3, :cond_2

    if-eqz v4, :cond_3

    .line 730
    :cond_2
    iget-object v3, p0, Landroid/support/v4/widget/ac;->gS:Landroid/support/v4/widget/af;

    iget-object v4, p0, Landroid/support/v4/widget/ac;->gT:Landroid/view/View;

    invoke-virtual {v3, v4, v1}, Landroid/support/v4/widget/af;->c(Landroid/view/View;I)V

    .line 733
    :cond_3
    if-eqz v0, :cond_4

    iget-object v3, p0, Landroid/support/v4/widget/ac;->gR:Landroid/support/v4/widget/o;

    invoke-virtual {v3}, Landroid/support/v4/widget/o;->getFinalX()I

    move-result v3

    if-ne v1, v3, :cond_4

    iget-object v1, p0, Landroid/support/v4/widget/ac;->gR:Landroid/support/v4/widget/o;

    invoke-virtual {v1}, Landroid/support/v4/widget/o;->getFinalY()I

    move-result v1

    if-ne v2, v1, :cond_4

    .line 736
    iget-object v0, p0, Landroid/support/v4/widget/ac;->gR:Landroid/support/v4/widget/o;

    invoke-virtual {v0}, Landroid/support/v4/widget/o;->abortAnimation()V

    .line 737
    iget-object v0, p0, Landroid/support/v4/widget/ac;->gR:Landroid/support/v4/widget/o;

    invoke-virtual {v0}, Landroid/support/v4/widget/o;->isFinished()Z

    move-result v0

    .line 740
    :cond_4
    if-nez v0, :cond_5

    .line 741
    iget-object v0, p0, Landroid/support/v4/widget/ac;->gV:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/support/v4/widget/ac;->gW:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 744
    :cond_5
    iget v0, p0, Landroid/support/v4/widget/ac;->gE:I

    if-ne v0, v6, :cond_6

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final aP()Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1276
    iget-object v2, p0, Landroid/support/v4/widget/ac;->gF:[F

    array-length v4, v2

    move v3, v1

    .line 1277
    :goto_0
    if-ge v3, v4, :cond_4

    .line 1278
    iget v2, p0, Landroid/support/v4/widget/ac;->gM:I

    shl-int v5, v0, v3

    and-int/2addr v2, v5

    if-eqz v2, :cond_0

    move v2, v0

    :goto_1
    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/support/v4/widget/ac;->gH:[F

    aget v2, v2, v3

    iget-object v5, p0, Landroid/support/v4/widget/ac;->gF:[F

    aget v5, v5, v3

    sub-float/2addr v2, v5

    iget-object v5, p0, Landroid/support/v4/widget/ac;->gI:[F

    aget v5, v5, v3

    iget-object v6, p0, Landroid/support/v4/widget/ac;->gG:[F

    aget v6, v6, v3

    sub-float/2addr v5, v6

    mul-float/2addr v2, v2

    mul-float/2addr v5, v5

    add-float/2addr v2, v5

    iget v5, p0, Landroid/support/v4/widget/ac;->dC:I

    iget v6, p0, Landroid/support/v4/widget/ac;->dC:I

    mul-int/2addr v5, v6

    int-to-float v5, v5

    cmpl-float v2, v2, v5

    if-lez v2, :cond_1

    move v2, v0

    :goto_2
    if-eqz v2, :cond_3

    .line 1282
    :goto_3
    return v0

    :cond_0
    move v2, v1

    .line 1278
    goto :goto_1

    :cond_1
    move v2, v1

    goto :goto_2

    :cond_2
    move v2, v1

    goto :goto_2

    .line 1277
    :cond_3
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    :cond_4
    move v0, v1

    .line 1282
    goto :goto_3
.end method

.method public final abort()V
    .locals 3

    .prologue
    .line 512
    invoke-virtual {p0}, Landroid/support/v4/widget/ac;->cancel()V

    .line 513
    iget v0, p0, Landroid/support/v4/widget/ac;->gE:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 514
    iget-object v0, p0, Landroid/support/v4/widget/ac;->gR:Landroid/support/v4/widget/o;

    invoke-virtual {v0}, Landroid/support/v4/widget/o;->getCurrX()I

    .line 515
    iget-object v0, p0, Landroid/support/v4/widget/ac;->gR:Landroid/support/v4/widget/o;

    invoke-virtual {v0}, Landroid/support/v4/widget/o;->getCurrY()I

    .line 516
    iget-object v0, p0, Landroid/support/v4/widget/ac;->gR:Landroid/support/v4/widget/o;

    invoke-virtual {v0}, Landroid/support/v4/widget/o;->abortAnimation()V

    .line 517
    iget-object v0, p0, Landroid/support/v4/widget/ac;->gR:Landroid/support/v4/widget/o;

    invoke-virtual {v0}, Landroid/support/v4/widget/o;->getCurrX()I

    move-result v0

    .line 518
    iget-object v1, p0, Landroid/support/v4/widget/ac;->gR:Landroid/support/v4/widget/o;

    invoke-virtual {v1}, Landroid/support/v4/widget/o;->getCurrY()I

    .line 519
    iget-object v1, p0, Landroid/support/v4/widget/ac;->gS:Landroid/support/v4/widget/af;

    iget-object v2, p0, Landroid/support/v4/widget/ac;->gT:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/widget/af;->c(Landroid/view/View;I)V

    .line 521
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/ac;->v(I)V

    .line 522
    return-void
.end method

.method public final cancel()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 498
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/widget/ac;->eG:I

    .line 499
    iget-object v0, p0, Landroid/support/v4/widget/ac;->gF:[F

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/widget/ac;->gF:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Landroid/support/v4/widget/ac;->gG:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Landroid/support/v4/widget/ac;->gH:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Landroid/support/v4/widget/ac;->gI:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Landroid/support/v4/widget/ac;->gJ:[I

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    iget-object v0, p0, Landroid/support/v4/widget/ac;->gK:[I

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    iget-object v0, p0, Landroid/support/v4/widget/ac;->gL:[I

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    iput v2, p0, Landroid/support/v4/widget/ac;->gM:I

    .line 501
    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/ac;->eH:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1

    .line 502
    iget-object v0, p0, Landroid/support/v4/widget/ac;->eH:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 503
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/widget/ac;->eH:Landroid/view/VelocityTracker;

    .line 505
    :cond_1
    return-void
.end method

.method public final e(F)V
    .locals 0
    .parameter

    .prologue
    .line 401
    iput p1, p0, Landroid/support/v4/widget/ac;->gO:F

    .line 402
    return-void
.end method

.method public final e(Landroid/view/View;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 460
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/widget/ac;->gV:Landroid/view/ViewGroup;

    if-eq v0, v1, :cond_0

    .line 461
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "captureChildView: parameter must be a descendant of the ViewDragHelper\'s tracked parent view ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/support/v4/widget/ac;->gV:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 465
    :cond_0
    iput-object p1, p0, Landroid/support/v4/widget/ac;->gT:Landroid/view/View;

    .line 466
    iput p2, p0, Landroid/support/v4/widget/ac;->eG:I

    .line 467
    iget-object v0, p0, Landroid/support/v4/widget/ac;->gS:Landroid/support/v4/widget/af;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/af;->x(Landroid/view/View;)V

    .line 468
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/ac;->v(I)V

    .line 469
    return-void
.end method

.method public final e(II)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 557
    iget-boolean v0, p0, Landroid/support/v4/widget/ac;->gU:Z

    if-nez v0, :cond_0

    .line 558
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 562
    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/ac;->eH:Landroid/view/VelocityTracker;

    iget v1, p0, Landroid/support/v4/widget/ac;->eG:I

    invoke-static {v0, v1}, Landroid/support/v4/view/aw;->a(Landroid/view/VelocityTracker;I)F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Landroid/support/v4/widget/ac;->eH:Landroid/view/VelocityTracker;

    iget v2, p0, Landroid/support/v4/widget/ac;->eG:I

    invoke-static {v1, v2}, Landroid/support/v4/view/aw;->b(Landroid/view/VelocityTracker;I)F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/support/v4/widget/ac;->b(IIII)Z

    move-result v0

    return v0
.end method

.method public final f(II)Landroid/view/View;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1428
    iget-object v0, p0, Landroid/support/v4/widget/ac;->gV:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1429
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 1430
    iget-object v0, p0, Landroid/support/v4/widget/ac;->gV:Landroid/view/ViewGroup;

    iget-object v2, p0, Landroid/support/v4/widget/ac;->gS:Landroid/support/v4/widget/af;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1431
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    if-lt p1, v2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v2

    if-ge p1, v2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    if-lt p2, v2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v2

    if-ge p2, v2, :cond_0

    .line 1436
    :goto_1
    return-object v0

    .line 1429
    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 1436
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final f(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter

    .prologue
    const/4 v6, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 939
    invoke-static {p1}, Landroid/support/v4/view/aj;->a(Landroid/view/MotionEvent;)I

    move-result v2

    .line 940
    invoke-static {p1}, Landroid/support/v4/view/aj;->b(Landroid/view/MotionEvent;)I

    move-result v3

    .line 942
    if-nez v2, :cond_0

    .line 945
    invoke-virtual {p0}, Landroid/support/v4/widget/ac;->cancel()V

    .line 948
    :cond_0
    iget-object v4, p0, Landroid/support/v4/widget/ac;->eH:Landroid/view/VelocityTracker;

    if-nez v4, :cond_1

    .line 949
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v4

    iput-object v4, p0, Landroid/support/v4/widget/ac;->eH:Landroid/view/VelocityTracker;

    .line 951
    :cond_1
    iget-object v4, p0, Landroid/support/v4/widget/ac;->eH:Landroid/view/VelocityTracker;

    invoke-virtual {v4, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 953
    packed-switch v2, :pswitch_data_0

    .line 1036
    :cond_2
    :goto_0
    :pswitch_0
    iget v2, p0, Landroid/support/v4/widget/ac;->gE:I

    if-ne v2, v0, :cond_7

    :goto_1
    return v0

    .line 955
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 956
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 957
    invoke-static {p1, v1}, Landroid/support/v4/view/aj;->b(Landroid/view/MotionEvent;I)I

    move-result v4

    .line 958
    invoke-direct {p0, v2, v3, v4}, Landroid/support/v4/widget/ac;->a(FFI)V

    .line 960
    float-to-int v2, v2

    float-to-int v3, v3

    invoke-virtual {p0, v2, v3}, Landroid/support/v4/widget/ac;->f(II)Landroid/view/View;

    move-result-object v2

    .line 963
    iget-object v3, p0, Landroid/support/v4/widget/ac;->gT:Landroid/view/View;

    if-ne v2, v3, :cond_3

    iget v3, p0, Landroid/support/v4/widget/ac;->gE:I

    if-ne v3, v6, :cond_3

    .line 964
    invoke-direct {p0, v2, v4}, Landroid/support/v4/widget/ac;->f(Landroid/view/View;I)Z

    .line 967
    :cond_3
    iget-object v2, p0, Landroid/support/v4/widget/ac;->gJ:[I

    aget v2, v2, v4

    .line 968
    iget v3, p0, Landroid/support/v4/widget/ac;->gQ:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_2

    .line 969
    iget-object v2, p0, Landroid/support/v4/widget/ac;->gS:Landroid/support/v4/widget/af;

    iget v3, p0, Landroid/support/v4/widget/ac;->gQ:I

    invoke-virtual {v2}, Landroid/support/v4/widget/af;->aF()V

    goto :goto_0

    .line 975
    :pswitch_2
    invoke-static {p1, v3}, Landroid/support/v4/view/aj;->b(Landroid/view/MotionEvent;I)I

    move-result v2

    .line 976
    invoke-static {p1, v3}, Landroid/support/v4/view/aj;->c(Landroid/view/MotionEvent;I)F

    move-result v4

    .line 977
    invoke-static {p1, v3}, Landroid/support/v4/view/aj;->d(Landroid/view/MotionEvent;I)F

    move-result v3

    .line 979
    invoke-direct {p0, v4, v3, v2}, Landroid/support/v4/widget/ac;->a(FFI)V

    .line 982
    iget v5, p0, Landroid/support/v4/widget/ac;->gE:I

    if-nez v5, :cond_4

    .line 983
    iget-object v3, p0, Landroid/support/v4/widget/ac;->gJ:[I

    aget v2, v3, v2

    .line 984
    iget v3, p0, Landroid/support/v4/widget/ac;->gQ:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_2

    .line 985
    iget-object v2, p0, Landroid/support/v4/widget/ac;->gS:Landroid/support/v4/widget/af;

    iget v3, p0, Landroid/support/v4/widget/ac;->gQ:I

    invoke-virtual {v2}, Landroid/support/v4/widget/af;->aF()V

    goto :goto_0

    .line 987
    :cond_4
    iget v5, p0, Landroid/support/v4/widget/ac;->gE:I

    if-ne v5, v6, :cond_2

    .line 989
    float-to-int v4, v4

    float-to-int v3, v3

    invoke-virtual {p0, v4, v3}, Landroid/support/v4/widget/ac;->f(II)Landroid/view/View;

    move-result-object v3

    .line 990
    iget-object v4, p0, Landroid/support/v4/widget/ac;->gT:Landroid/view/View;

    if-ne v3, v4, :cond_2

    .line 991
    invoke-direct {p0, v3, v2}, Landroid/support/v4/widget/ac;->f(Landroid/view/View;I)Z

    goto :goto_0

    .line 999
    :pswitch_3
    invoke-static {p1}, Landroid/support/v4/view/aj;->c(Landroid/view/MotionEvent;)I

    move-result v3

    move v2, v1

    .line 1000
    :goto_2
    if-ge v2, v3, :cond_6

    .line 1001
    invoke-static {p1, v2}, Landroid/support/v4/view/aj;->b(Landroid/view/MotionEvent;I)I

    move-result v4

    .line 1002
    invoke-static {p1, v2}, Landroid/support/v4/view/aj;->c(Landroid/view/MotionEvent;I)F

    move-result v5

    .line 1003
    invoke-static {p1, v2}, Landroid/support/v4/view/aj;->d(Landroid/view/MotionEvent;I)F

    move-result v6

    .line 1004
    iget-object v7, p0, Landroid/support/v4/widget/ac;->gF:[F

    aget v7, v7, v4

    sub-float v7, v5, v7

    .line 1005
    iget-object v8, p0, Landroid/support/v4/widget/ac;->gG:[F

    aget v8, v8, v4

    sub-float v8, v6, v8

    .line 1007
    invoke-direct {p0, v7, v8, v4}, Landroid/support/v4/widget/ac;->b(FFI)V

    .line 1008
    iget v8, p0, Landroid/support/v4/widget/ac;->gE:I

    if-eq v8, v0, :cond_6

    .line 1010
    float-to-int v5, v5

    float-to-int v6, v6

    invoke-virtual {p0, v5, v6}, Landroid/support/v4/widget/ac;->f(II)Landroid/view/View;

    move-result-object v5

    .line 1014
    if-eqz v5, :cond_5

    invoke-direct {p0, v5, v7}, Landroid/support/v4/widget/ac;->c(Landroid/view/View;F)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-direct {p0, v5, v4}, Landroid/support/v4/widget/ac;->f(Landroid/view/View;I)Z

    move-result v4

    if-nez v4, :cond_6

    .line 1016
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1019
    :cond_6
    invoke-direct {p0, p1}, Landroid/support/v4/widget/ac;->e(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 1024
    :pswitch_4
    invoke-static {p1, v3}, Landroid/support/v4/view/aj;->b(Landroid/view/MotionEvent;I)I

    move-result v2

    .line 1025
    invoke-direct {p0, v2}, Landroid/support/v4/widget/ac;->u(I)V

    goto/16 :goto_0

    .line 1031
    :pswitch_5
    invoke-virtual {p0}, Landroid/support/v4/widget/ac;->cancel()V

    goto/16 :goto_0

    :cond_7
    move v0, v1

    .line 1036
    goto/16 :goto_1

    .line 953
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public final g(Landroid/view/MotionEvent;)V
    .locals 8
    .parameter

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    const/4 v7, 0x1

    .line 1046
    invoke-static {p1}, Landroid/support/v4/view/aj;->a(Landroid/view/MotionEvent;)I

    move-result v2

    .line 1047
    invoke-static {p1}, Landroid/support/v4/view/aj;->b(Landroid/view/MotionEvent;)I

    move-result v3

    .line 1049
    if-nez v2, :cond_0

    .line 1052
    invoke-virtual {p0}, Landroid/support/v4/widget/ac;->cancel()V

    .line 1055
    :cond_0
    iget-object v4, p0, Landroid/support/v4/widget/ac;->eH:Landroid/view/VelocityTracker;

    if-nez v4, :cond_1

    .line 1056
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v4

    iput-object v4, p0, Landroid/support/v4/widget/ac;->eH:Landroid/view/VelocityTracker;

    .line 1058
    :cond_1
    iget-object v4, p0, Landroid/support/v4/widget/ac;->eH:Landroid/view/VelocityTracker;

    invoke-virtual {v4, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1060
    packed-switch v2, :pswitch_data_0

    .line 1194
    :cond_2
    :goto_0
    :pswitch_0
    return-void

    .line 1062
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 1063
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 1064
    invoke-static {p1, v0}, Landroid/support/v4/view/aj;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 1065
    float-to-int v3, v1

    float-to-int v4, v2

    invoke-virtual {p0, v3, v4}, Landroid/support/v4/widget/ac;->f(II)Landroid/view/View;

    move-result-object v3

    .line 1067
    invoke-direct {p0, v1, v2, v0}, Landroid/support/v4/widget/ac;->a(FFI)V

    .line 1072
    invoke-direct {p0, v3, v0}, Landroid/support/v4/widget/ac;->f(Landroid/view/View;I)Z

    .line 1074
    iget-object v1, p0, Landroid/support/v4/widget/ac;->gJ:[I

    aget v0, v1, v0

    .line 1075
    iget v1, p0, Landroid/support/v4/widget/ac;->gQ:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    .line 1076
    iget-object v0, p0, Landroid/support/v4/widget/ac;->gS:Landroid/support/v4/widget/af;

    iget v1, p0, Landroid/support/v4/widget/ac;->gQ:I

    invoke-virtual {v0}, Landroid/support/v4/widget/af;->aF()V

    goto :goto_0

    .line 1082
    :pswitch_2
    invoke-static {p1, v3}, Landroid/support/v4/view/aj;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 1083
    invoke-static {p1, v3}, Landroid/support/v4/view/aj;->c(Landroid/view/MotionEvent;I)F

    move-result v1

    .line 1084
    invoke-static {p1, v3}, Landroid/support/v4/view/aj;->d(Landroid/view/MotionEvent;I)F

    move-result v2

    .line 1086
    invoke-direct {p0, v1, v2, v0}, Landroid/support/v4/widget/ac;->a(FFI)V

    .line 1089
    iget v3, p0, Landroid/support/v4/widget/ac;->gE:I

    if-nez v3, :cond_3

    .line 1092
    float-to-int v1, v1

    float-to-int v2, v2

    invoke-virtual {p0, v1, v2}, Landroid/support/v4/widget/ac;->f(II)Landroid/view/View;

    move-result-object v1

    .line 1093
    invoke-direct {p0, v1, v0}, Landroid/support/v4/widget/ac;->f(Landroid/view/View;I)Z

    .line 1095
    iget-object v1, p0, Landroid/support/v4/widget/ac;->gJ:[I

    aget v0, v1, v0

    .line 1096
    iget v1, p0, Landroid/support/v4/widget/ac;->gQ:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    .line 1097
    iget-object v0, p0, Landroid/support/v4/widget/ac;->gS:Landroid/support/v4/widget/af;

    iget v1, p0, Landroid/support/v4/widget/ac;->gQ:I

    invoke-virtual {v0}, Landroid/support/v4/widget/af;->aF()V

    goto :goto_0

    .line 1099
    :cond_3
    float-to-int v1, v1

    float-to-int v2, v2

    iget-object v3, p0, Landroid/support/v4/widget/ac;->gT:Landroid/view/View;

    invoke-static {v3, v1, v2}, Landroid/support/v4/widget/ac;->b(Landroid/view/View;II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1104
    iget-object v1, p0, Landroid/support/v4/widget/ac;->gT:Landroid/view/View;

    invoke-direct {p0, v1, v0}, Landroid/support/v4/widget/ac;->f(Landroid/view/View;I)Z

    goto :goto_0

    .line 1110
    :pswitch_3
    iget v1, p0, Landroid/support/v4/widget/ac;->gE:I

    if-ne v1, v7, :cond_8

    .line 1111
    iget v0, p0, Landroid/support/v4/widget/ac;->eG:I

    invoke-static {p1, v0}, Landroid/support/v4/view/aj;->a(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 1112
    invoke-static {p1, v0}, Landroid/support/v4/view/aj;->c(Landroid/view/MotionEvent;I)F

    move-result v1

    .line 1113
    invoke-static {p1, v0}, Landroid/support/v4/view/aj;->d(Landroid/view/MotionEvent;I)F

    move-result v0

    .line 1114
    iget-object v2, p0, Landroid/support/v4/widget/ac;->gH:[F

    iget v3, p0, Landroid/support/v4/widget/ac;->eG:I

    aget v2, v2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    .line 1115
    iget-object v2, p0, Landroid/support/v4/widget/ac;->gI:[F

    iget v3, p0, Landroid/support/v4/widget/ac;->eG:I

    aget v2, v2, v3

    sub-float/2addr v0, v2

    float-to-int v2, v0

    .line 1117
    iget-object v0, p0, Landroid/support/v4/widget/ac;->gT:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    add-int/2addr v0, v1

    iget-object v3, p0, Landroid/support/v4/widget/ac;->gT:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    iget-object v3, p0, Landroid/support/v4/widget/ac;->gT:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    iget-object v4, p0, Landroid/support/v4/widget/ac;->gT:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    if-eqz v1, :cond_4

    iget-object v5, p0, Landroid/support/v4/widget/ac;->gS:Landroid/support/v4/widget/af;

    iget-object v6, p0, Landroid/support/v4/widget/ac;->gT:Landroid/view/View;

    invoke-virtual {v5, v6, v0}, Landroid/support/v4/widget/af;->d(Landroid/view/View;I)I

    move-result v0

    iget-object v5, p0, Landroid/support/v4/widget/ac;->gT:Landroid/view/View;

    sub-int v3, v0, v3

    invoke-virtual {v5, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    :cond_4
    if-eqz v2, :cond_5

    iget-object v3, p0, Landroid/support/v4/widget/ac;->gS:Landroid/support/v4/widget/af;

    iget-object v5, p0, Landroid/support/v4/widget/ac;->gT:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/support/v4/widget/af;->z(Landroid/view/View;)I

    move-result v3

    iget-object v5, p0, Landroid/support/v4/widget/ac;->gT:Landroid/view/View;

    sub-int/2addr v3, v4

    invoke-virtual {v5, v3}, Landroid/view/View;->offsetTopAndBottom(I)V

    :cond_5
    if-nez v1, :cond_6

    if-eqz v2, :cond_7

    :cond_6
    iget-object v1, p0, Landroid/support/v4/widget/ac;->gS:Landroid/support/v4/widget/af;

    iget-object v2, p0, Landroid/support/v4/widget/ac;->gT:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/widget/af;->c(Landroid/view/View;I)V

    .line 1119
    :cond_7
    invoke-direct {p0, p1}, Landroid/support/v4/widget/ac;->e(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 1122
    :cond_8
    invoke-static {p1}, Landroid/support/v4/view/aj;->c(Landroid/view/MotionEvent;)I

    move-result v1

    .line 1123
    :goto_1
    if-ge v0, v1, :cond_a

    .line 1124
    invoke-static {p1, v0}, Landroid/support/v4/view/aj;->b(Landroid/view/MotionEvent;I)I

    move-result v2

    .line 1125
    invoke-static {p1, v0}, Landroid/support/v4/view/aj;->c(Landroid/view/MotionEvent;I)F

    move-result v3

    .line 1126
    invoke-static {p1, v0}, Landroid/support/v4/view/aj;->d(Landroid/view/MotionEvent;I)F

    move-result v4

    .line 1127
    iget-object v5, p0, Landroid/support/v4/widget/ac;->gF:[F

    aget v5, v5, v2

    sub-float v5, v3, v5

    .line 1128
    iget-object v6, p0, Landroid/support/v4/widget/ac;->gG:[F

    aget v6, v6, v2

    sub-float v6, v4, v6

    .line 1130
    invoke-direct {p0, v5, v6, v2}, Landroid/support/v4/widget/ac;->b(FFI)V

    .line 1131
    iget v6, p0, Landroid/support/v4/widget/ac;->gE:I

    if-eq v6, v7, :cond_a

    .line 1133
    float-to-int v3, v3

    float-to-int v4, v4

    invoke-virtual {p0, v3, v4}, Landroid/support/v4/widget/ac;->f(II)Landroid/view/View;

    move-result-object v3

    .line 1137
    invoke-direct {p0, v3, v5}, Landroid/support/v4/widget/ac;->c(Landroid/view/View;F)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-direct {p0, v3, v2}, Landroid/support/v4/widget/ac;->f(Landroid/view/View;I)Z

    move-result v2

    if-nez v2, :cond_a

    .line 1139
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1142
    :cond_a
    invoke-direct {p0, p1}, Landroid/support/v4/widget/ac;->e(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 1148
    :pswitch_4
    invoke-static {p1, v3}, Landroid/support/v4/view/aj;->b(Landroid/view/MotionEvent;I)I

    move-result v2

    .line 1149
    iget v3, p0, Landroid/support/v4/widget/ac;->gE:I

    if-ne v3, v7, :cond_b

    iget v3, p0, Landroid/support/v4/widget/ac;->eG:I

    if-ne v2, v3, :cond_b

    .line 1152
    invoke-static {p1}, Landroid/support/v4/view/aj;->c(Landroid/view/MotionEvent;)I

    move-result v3

    .line 1153
    :goto_2
    if-ge v0, v3, :cond_f

    .line 1154
    invoke-static {p1, v0}, Landroid/support/v4/view/aj;->b(Landroid/view/MotionEvent;I)I

    move-result v4

    .line 1155
    iget v5, p0, Landroid/support/v4/widget/ac;->eG:I

    if-eq v4, v5, :cond_c

    .line 1157
    invoke-static {p1, v0}, Landroid/support/v4/view/aj;->c(Landroid/view/MotionEvent;I)F

    move-result v5

    .line 1161
    invoke-static {p1, v0}, Landroid/support/v4/view/aj;->d(Landroid/view/MotionEvent;I)F

    move-result v6

    .line 1162
    float-to-int v5, v5

    float-to-int v6, v6

    invoke-virtual {p0, v5, v6}, Landroid/support/v4/widget/ac;->f(II)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Landroid/support/v4/widget/ac;->gT:Landroid/view/View;

    if-ne v5, v6, :cond_c

    iget-object v5, p0, Landroid/support/v4/widget/ac;->gT:Landroid/view/View;

    invoke-direct {p0, v5, v4}, Landroid/support/v4/widget/ac;->f(Landroid/view/View;I)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1164
    iget v0, p0, Landroid/support/v4/widget/ac;->eG:I

    .line 1169
    :goto_3
    if-ne v0, v1, :cond_b

    .line 1171
    invoke-direct {p0}, Landroid/support/v4/widget/ac;->aQ()V

    .line 1174
    :cond_b
    invoke-direct {p0, v2}, Landroid/support/v4/widget/ac;->u(I)V

    goto/16 :goto_0

    .line 1153
    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1179
    :pswitch_5
    iget v0, p0, Landroid/support/v4/widget/ac;->gE:I

    if-ne v0, v7, :cond_d

    .line 1180
    invoke-direct {p0}, Landroid/support/v4/widget/ac;->aQ()V

    .line 1182
    :cond_d
    invoke-virtual {p0}, Landroid/support/v4/widget/ac;->cancel()V

    goto/16 :goto_0

    .line 1187
    :pswitch_6
    iget v0, p0, Landroid/support/v4/widget/ac;->gE:I

    if-ne v0, v7, :cond_e

    .line 1188
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v4/widget/ac;->f(F)V

    .line 1190
    :cond_e
    invoke-virtual {p0}, Landroid/support/v4/widget/ac;->cancel()V

    goto/16 :goto_0

    :cond_f
    move v0, v1

    goto :goto_3

    .line 1060
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public final getTouchSlop()I
    .locals 1

    .prologue
    .line 490
    iget v0, p0, Landroid/support/v4/widget/ac;->dC:I

    return v0
.end method

.method public final t(I)V
    .locals 0
    .parameter

    .prologue
    .line 437
    iput p1, p0, Landroid/support/v4/widget/ac;->gQ:I

    .line 438
    return-void
.end method

.method final v(I)V
    .locals 1
    .parameter

    .prologue
    .line 864
    iget v0, p0, Landroid/support/v4/widget/ac;->gE:I

    if-eq v0, p1, :cond_0

    .line 865
    iput p1, p0, Landroid/support/v4/widget/ac;->gE:I

    .line 866
    iget-object v0, p0, Landroid/support/v4/widget/ac;->gS:Landroid/support/v4/widget/af;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/af;->s(I)V

    .line 867
    if-nez p1, :cond_0

    .line 868
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/widget/ac;->gT:Landroid/view/View;

    .line 871
    :cond_0
    return-void
.end method
