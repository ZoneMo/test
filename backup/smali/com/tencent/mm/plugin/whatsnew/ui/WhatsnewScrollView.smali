.class public Lcom/tencent/mm/plugin/whatsnew/ui/WhatsnewScrollView;
.super Landroid/widget/ScrollView;
.source "SourceFile"


# instance fields
.field private fgg:Lcom/tencent/mm/plugin/whatsnew/ui/n;

.field private fgh:I

.field private fgi:I

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 19
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tencent/mm/plugin/whatsnew/ui/WhatsnewScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    iput-object p1, p0, Lcom/tencent/mm/plugin/whatsnew/ui/WhatsnewScrollView;->mContext:Landroid/content/Context;

    .line 21
    invoke-direct {p0}, Lcom/tencent/mm/plugin/whatsnew/ui/WhatsnewScrollView;->apg()V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/plugin/whatsnew/ui/WhatsnewScrollView;->fgg:Lcom/tencent/mm/plugin/whatsnew/ui/n;

    .line 46
    const/16 v0, 0x64

    iput v0, p0, Lcom/tencent/mm/plugin/whatsnew/ui/WhatsnewScrollView;->fgh:I

    .line 26
    iput-object p1, p0, Lcom/tencent/mm/plugin/whatsnew/ui/WhatsnewScrollView;->mContext:Landroid/content/Context;

    .line 27
    invoke-direct {p0}, Lcom/tencent/mm/plugin/whatsnew/ui/WhatsnewScrollView;->apg()V

    .line 28
    return-void
.end method

.method private apg()V
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/tencent/mm/plugin/whatsnew/ui/WhatsnewScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 55
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 57
    iget v1, p0, Lcom/tencent/mm/plugin/whatsnew/ui/WhatsnewScrollView;->fgh:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/tencent/mm/plugin/whatsnew/ui/WhatsnewScrollView;->fgi:I

    .line 58
    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/plugin/whatsnew/ui/n;)V
    .locals 0
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/tencent/mm/plugin/whatsnew/ui/WhatsnewScrollView;->fgg:Lcom/tencent/mm/plugin/whatsnew/ui/n;

    .line 32
    return-void
.end method

.method public final jW(I)V
    .locals 0
    .parameter

    .prologue
    .line 61
    iput p1, p0, Lcom/tencent/mm/plugin/whatsnew/ui/WhatsnewScrollView;->fgi:I

    .line 62
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 37
    iget-object v0, p0, Lcom/tencent/mm/plugin/whatsnew/ui/WhatsnewScrollView;->fgg:Lcom/tencent/mm/plugin/whatsnew/ui/n;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/tencent/mm/plugin/whatsnew/ui/WhatsnewScrollView;->fgg:Lcom/tencent/mm/plugin/whatsnew/ui/n;

    invoke-interface {v0, p2, p4}, Lcom/tencent/mm/plugin/whatsnew/ui/n;->aM(II)V

    .line 40
    :cond_0
    return-void
.end method

.method protected overScrollBy(IIIIIIIIZ)Z
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    .line 68
    add-int v2, p4, p2

    .line 69
    const/4 v1, 0x0

    .line 70
    move/from16 v0, p8

    neg-int v3, v0

    .line 71
    add-int v4, p8, p6

    .line 72
    if-le v2, v4, :cond_1

    .line 73
    const/4 v1, 0x1

    .line 80
    :cond_0
    :goto_0
    if-eqz v1, :cond_2

    .line 81
    div-int/lit8 v3, p2, 0x2

    iget v9, p0, Lcom/tencent/mm/plugin/whatsnew/ui/WhatsnewScrollView;->fgi:I

    move-object v1, p0

    move v2, p1

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v10, p9

    invoke-super/range {v1 .. v10}, Landroid/widget/ScrollView;->overScrollBy(IIIIIIIIZ)Z

    move-result v1

    .line 85
    :goto_1
    return v1

    .line 75
    :cond_1
    if-ge v2, v3, :cond_0

    .line 76
    const/4 v1, 0x1

    goto :goto_0

    .line 85
    :cond_2
    iget v9, p0, Lcom/tencent/mm/plugin/whatsnew/ui/WhatsnewScrollView;->fgi:I

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v10, p9

    invoke-super/range {v1 .. v10}, Landroid/widget/ScrollView;->overScrollBy(IIIIIIIIZ)Z

    move-result v1

    goto :goto_1
.end method
