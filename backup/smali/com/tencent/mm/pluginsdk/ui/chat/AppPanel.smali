.class public Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# static fields
.field private static efa:I

.field private static efb:I


# instance fields
.field private context:Landroid/content/Context;

.field private cvd:Z

.field private efl:Z

.field private efm:I

.field private efn:I

.field private efo:Lcom/tencent/mm/ui/base/MMFlipper;

.field private efp:Lcom/tencent/mm/ui/base/MMDotView;

.field private fmA:I

.field private fmz:Z

.field private fpA:Z

.field private fpB:Z

.field private fpC:Z

.field private fpD:Z

.field private fpE:Z

.field private fpF:Z

.field private fpG:Z

.field private fpH:Z

.field private fpI:Z

.field private fpJ:Z

.field private fpK:I

.field private fpL:I

.field private final fpM:I

.field private fpN:Lcom/tencent/mm/pluginsdk/ui/chat/d;

.field private fpj:I

.field private fpm:Ljava/util/List;

.field private final fps:[Z

.field private fpt:Lcom/tencent/mm/pluginsdk/ui/chat/l;

.field private fpu:Lcom/tencent/mm/pluginsdk/ui/chat/m;

.field private fpv:Ljava/util/List;

.field private fpw:I

.field private fpx:Z

.field private fpy:Z

.field private fpz:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const/16 v0, 0xd7

    sput v0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->efa:I

    .line 52
    const/16 v0, 0x9e

    sput v0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->efb:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    const/16 v3, 0x9

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 154
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 69
    new-array v0, v3, [Z

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->fps:[Z

    .line 119
    iput-boolean v2, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->efl:Z

    .line 120
    iput v3, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->fpj:I

    .line 121
    iget v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->fpj:I

    iput v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->fpw:I

    .line 123
    iput-boolean v1, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->fpx:Z

    .line 124
    iput-boolean v1, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->fpy:Z

    .line 125
    iput-boolean v1, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->fpz:Z

    .line 126
    iput-boolean v1, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->fpA:Z

    .line 127
    iput-boolean v1, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->fpB:Z

    .line 129
    iput-boolean v1, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->fpC:Z

    .line 130
    iput-boolean v1, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->fpD:Z

    .line 132
    iput-boolean v1, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->fpE:Z

    .line 133
    iput-boolean v1, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->fpF:Z

    .line 134
    iput-boolean v1, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->fpG:Z

    .line 136
    iput-boolean v1, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->fpH:Z

    .line 137
    iput-boolean v1, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->fpI:Z

    .line 139
    iput-boolean v1, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->fpJ:Z

    .line 141
    iput-boolean v2, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->cvd:Z

    .line 142
    iput v2, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->fpK:I

    .line 143
    iput v2, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->fpL:I

    .line 420
    const/4 v0, 0x2

    iput v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->fpM:I

    .line 521
    new-instance v0, Lcom/tencent/mm/pluginsdk/ui/chat/g;

    invoke-direct {v0, p0}, Lcom/tencent/mm/pluginsdk/ui/chat/g;-><init>(Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;)V

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->fpN:Lcom/tencent/mm/pluginsdk/ui/chat/d;

    .line 764
    iput-boolean v1, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->fmz:Z

    .line 806
    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->fmA:I

    .line 155
    iput-object p1, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->context:Landroid/content/Context;

    .line 156
    invoke-direct {p0}, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->init()V

    .line 157
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/16 v3, 0x9

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 148
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    new-array v0, v3, [Z

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->fps:[Z

    .line 119
    iput-boolean v2, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->efl:Z

    .line 120
    iput v3, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->fpj:I

    .line 121
    iget v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->fpj:I

    iput v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->fpw:I

    .line 123
    iput-boolean v1, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->fpx:Z

    .line 124
    iput-boolean v1, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->fpy:Z

    .line 125
    iput-boolean v1, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->fpz:Z

    .line 126
    iput-boolean v1, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->fpA:Z

    .line 127
    iput-boolean v1, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->fpB:Z

    .line 129
    iput-boolean v1, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->fpC:Z

    .line 130
    iput-boolean v1, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->fpD:Z

    .line 132
    iput-boolean v1, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->fpE:Z

    .line 133
    iput-boolean v1, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->fpF:Z

    .line 134
    iput-boolean v1, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->fpG:Z

    .line 136
    iput-boolean v1, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->fpH:Z

    .line 137
    iput-boolean v1, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->fpI:Z

    .line 139
    iput-boolean v1, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->fpJ:Z

    .line 141
    iput-boolean v2, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->cvd:Z

    .line 142
    iput v2, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->fpK:I

    .line 143
    iput v2, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->fpL:I

    .line 420
    const/4 v0, 0x2

    iput v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->fpM:I

    .line 521
    new-instance v0, Lcom/tencent/mm/pluginsdk/ui/chat/g;

    invoke-direct {v0, p0}, Lcom/tencent/mm/pluginsdk/ui/chat/g;-><init>(Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;)V

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->fpN:Lcom/tencent/mm/pluginsdk/ui/chat/d;

    .line 764
    iput-boolean v1, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->fmz:Z

    .line 806
    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->fmA:I

    .line 149
    iput-object p1, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->context:Landroid/content/Context;

    .line 150
    invoke-direct {p0}, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->init()V

    .line 151
    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 42
    iput p1, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->efn:I

    return p1
.end method

.method static synthetic a(Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;)Z
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->efl:Z

    return v0
.end method

.method private arB()I
    .locals 2

    .prologue
    .line 329
    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 330
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 332
    const/4 v0, 0x1

    .line 336
    :goto_0
    return v0

    .line 334
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private aso()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 261
    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->fps:[Z

    array-length v3, v2

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_0

    .line 262
    iget-object v4, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->fps:[Z

    aput-boolean v0, v4, v2

    .line 261
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 272
    :cond_0
    iget-boolean v2, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->fpy:Z

    if-nez v2, :cond_b

    .line 273
    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->fps:[Z

    aput-boolean v1, v2, v0

    .line 277
    :goto_1
    iget-boolean v2, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->fpz:Z

    if-nez v2, :cond_1

    .line 278
    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->fps:[Z

    aput-boolean v1, v2, v1

    .line 279
    add-int/lit8 v0, v0, 0x1

    .line 282
    :cond_1
    iget-boolean v2, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->fpE:Z

    if-nez v2, :cond_2

    .line 283
    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->fps:[Z

    const/4 v3, 0x2

    aput-boolean v1, v2, v3

    .line 284
    add-int/lit8 v0, v0, 0x1

    .line 287
    :cond_2
    iget-boolean v2, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->fpA:Z

    if-nez v2, :cond_3

    .line 288
    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->fps:[Z

    const/4 v3, 0x3

    aput-boolean v1, v2, v3

    .line 289
    add-int/lit8 v0, v0, 0x1

    .line 292
    :cond_3
    iget-boolean v2, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->fpB:Z

    if-nez v2, :cond_4

    .line 293
    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->fps:[Z

    const/4 v3, 0x4

    aput-boolean v1, v2, v3

    .line 294
    add-int/lit8 v0, v0, 0x1

    .line 297
    :cond_4
    iget-boolean v2, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->fpG:Z

    if-nez v2, :cond_5

    .line 298
    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->fps:[Z

    const/4 v3, 0x5

    aput-boolean v1, v2, v3

    .line 299
    add-int/lit8 v0, v0, 0x1

    .line 302
    :cond_5
    iget-boolean v2, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->fpI:Z

    if-eqz v2, :cond_6

    iget-boolean v2, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->fpH:Z

    if-nez v2, :cond_7

    .line 303
    :cond_6
    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->fps:[Z

    const/4 v3, 0x6

    aput-boolean v1, v2, v3

    .line 304
    add-int/lit8 v0, v0, 0x1

    .line 307
    :cond_7
    iget-boolean v2, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->fpD:Z

    if-eqz v2, :cond_8

    iget-boolean v2, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->fpC:Z

    if-nez v2, :cond_9

    .line 308
    :cond_8
    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->fps:[Z

    const/4 v3, 0x7

    aput-boolean v1, v2, v3

    .line 309
    add-int/lit8 v0, v0, 0x1

    .line 312
    :cond_9
    iget-boolean v2, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->fpJ:Z

    if-nez v2, :cond_a

    .line 313
    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->fps:[Z

    const/16 v3, 0x8

    aput-boolean v1, v2, v3

    .line 314
    add-int/lit8 v0, v0, 0x1

    .line 317
    :cond_a
    rsub-int/lit8 v0, v0, 0x9

    iput v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->fpj:I

    .line 318
    return-void

    :cond_b
    move v0, v1

    goto :goto_1
.end method

.method private asp()V
    .locals 2

    .prologue
    .line 353
    const-string v0, "MicroMsg.AppPanel"

    const-string v1, "AppPanel initFlipper"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->efo:Lcom/tencent/mm/ui/base/MMFlipper;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/MMFlipper;->removeAllViews()V

    .line 360
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->efo:Lcom/tencent/mm/ui/base/MMFlipper;

    new-instance v1, Lcom/tencent/mm/pluginsdk/ui/chat/e;

    invoke-direct {v1, p0}, Lcom/tencent/mm/pluginsdk/ui/chat/e;-><init>(Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/MMFlipper;->a(Lcom/tencent/mm/ui/base/as;)V

    .line 385
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->efo:Lcom/tencent/mm/ui/base/MMFlipper;

    new-instance v1, Lcom/tencent/mm/pluginsdk/ui/chat/f;

    invoke-direct {v1, p0}, Lcom/tencent/mm/pluginsdk/ui/chat/f;-><init>(Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/MMFlipper;->a(Lcom/tencent/mm/ui/base/at;)V

    .line 396
    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->asr()V

    .line 397
    return-void
.end method

.method private asq()V
    .locals 14

    .prologue
    const/4 v1, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 424
    iget v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->efm:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->efn:I

    if-nez v0, :cond_1

    .line 490
    :cond_0
    :goto_0
    return-void

    .line 431
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->fpv:Ljava/util/List;

    .line 432
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->efo:Lcom/tencent/mm/ui/base/MMFlipper;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/MMFlipper;->removeAllViews()V

    .line 434
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->context:Landroid/content/Context;

    const/high16 v2, 0x4292

    invoke-static {v0, v2}, Lcom/tencent/mm/sdk/platformtools/e;->a(Landroid/content/Context;F)I

    move-result v0

    .line 435
    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->context:Landroid/content/Context;

    const/high16 v3, 0x42b4

    invoke-static {v2, v3}, Lcom/tencent/mm/sdk/platformtools/e;->a(Landroid/content/Context;F)I

    move-result v2

    .line 436
    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->requestLayout()V

    .line 437
    iget v3, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->efm:I

    div-int v5, v3, v0

    .line 438
    iget v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->efn:I

    div-int/2addr v0, v2

    .line 442
    if-le v0, v1, :cond_2

    move v0, v1

    .line 444
    :cond_2
    iget v3, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->efn:I

    mul-int/2addr v2, v0

    sub-int v2, v3, v2

    add-int/lit8 v3, v0, 0x1

    div-int v9, v2, v3

    .line 445
    const-string v2, "MicroMsg.AppPanel"

    const-string v3, "jacks spacing2 = %d"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v8

    invoke-static {v2, v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 447
    const-string v2, "MicroMsg.AppPanel"

    const-string v3, "in initAppGrid, gridWidth = %d, gridHeight = %d"

    new-array v4, v1, [Ljava/lang/Object;

    iget v6, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->efm:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v8

    iget v6, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->efn:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v7

    invoke-static {v2, v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 448
    if-nez v5, :cond_3

    move v5, v7

    .line 451
    :cond_3
    if-nez v0, :cond_4

    move v0, v7

    .line 454
    :cond_4
    mul-int v3, v5, v0

    .line 455
    iget-boolean v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->fpF:Z

    if-eqz v0, :cond_5

    .line 457
    iget v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->fpj:I

    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->fpm:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v0, v2

    iput v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->fpw:I

    .line 466
    :goto_1
    invoke-static {}, Lcom/tencent/mm/ak/a;->avr()Z

    .line 469
    iget v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->fpw:I

    add-int/lit8 v0, v0, 0x1

    .line 473
    int-to-double v10, v0

    int-to-double v12, v3

    div-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v4, v10

    .line 474
    const-string v0, "MicroMsg.AppPanel"

    const-string v2, "in initAppGrid, totalItemCount = %d, itemsPerPage = %d, pageCount = %d"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    iget v10, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->fpw:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v6, v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v6, v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v6, v1

    invoke-static {v0, v2, v6}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v8

    .line 475
    :goto_2
    if-ge v1, v4, :cond_6

    .line 476
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->context:Landroid/content/Context;

    sget v2, Lcom/tencent/mm/k;->aSk:I

    const/4 v6, 0x0

    invoke-static {v0, v2, v6}, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/pluginsdk/ui/chat/AppGrid;

    .line 477
    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->fpm:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/tencent/mm/pluginsdk/ui/chat/AppGrid;->am(Ljava/util/List;)V

    .line 478
    iget v2, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->fpw:I

    iget v6, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->fpj:I

    invoke-virtual/range {v0 .. v6}, Lcom/tencent/mm/pluginsdk/ui/chat/AppGrid;->a(IIIIII)V

    .line 479
    invoke-virtual {v0, v9}, Lcom/tencent/mm/pluginsdk/ui/chat/AppGrid;->ku(I)V

    .line 480
    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->efo:Lcom/tencent/mm/ui/base/MMFlipper;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x1

    const/4 v11, -0x2

    invoke-direct {v6, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0, v6}, Lcom/tencent/mm/ui/base/MMFlipper;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 481
    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->fpv:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 475
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 459
    :cond_5
    iget v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->fpj:I

    iput v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->fpw:I

    goto :goto_1

    .line 483
    :cond_6
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->fpv:Ljava/util/List;

    if-eqz v0, :cond_7

    .line 484
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->fpv:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/pluginsdk/ui/chat/AppGrid;

    .line 485
    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->fpN:Lcom/tencent/mm/pluginsdk/ui/chat/d;

    invoke-virtual {v0, v2}, Lcom/tencent/mm/pluginsdk/ui/chat/AppGrid;->a(Lcom/tencent/mm/pluginsdk/ui/chat/d;)V

    goto :goto_3

    .line 488
    :cond_7
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->fpv:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v7, :cond_8

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->efp:Lcom/tencent/mm/ui/base/MMDotView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/MMDotView;->setVisibility(I)V

    .line 489
    :goto_4
    invoke-direct {p0}, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->aso()V

    goto/16 :goto_0

    .line 488
    :cond_8
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->efp:Lcom/tencent/mm/ui/base/MMDotView;

    invoke-virtual {v0, v8}, Lcom/tencent/mm/ui/base/MMDotView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->efp:Lcom/tencent/mm/ui/base/MMDotView;

    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->fpv:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/MMDotView;->mX(I)V

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->efo:Lcom/tencent/mm/ui/base/MMFlipper;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/MMFlipper;->aGP()I

    move-result v0

    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->efo:Lcom/tencent/mm/ui/base/MMFlipper;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/base/MMFlipper;->nb(I)V

    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->efp:Lcom/tencent/mm/ui/base/MMDotView;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/base/MMDotView;->mY(I)V

    goto :goto_4
.end method

.method static synthetic b(Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;)I
    .locals 1
    .parameter

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->arB()I

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 42
    iput p1, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->efm:I

    return p1
.end method

.method static synthetic c(Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;)Z
    .locals 1
    .parameter

    .prologue
    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->efl:Z

    return v0
.end method

.method static synthetic d(Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->asq()V

    return-void
.end method

.method static synthetic e(Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;)Lcom/tencent/mm/ui/base/MMDotView;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->efp:Lcom/tencent/mm/ui/base/MMDotView;

    return-object v0
.end method

.method static synthetic f(Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;)I
    .locals 1
    .parameter

    .prologue
    .line 42
    iget v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->fpj:I

    return v0
.end method

.method static synthetic g(Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;)[Z
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->fps:[Z

    return-object v0
.end method

.method static synthetic h(Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;)I
    .locals 1
    .parameter

    .prologue
    .line 42
    iget v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->fpw:I

    return v0
.end method

.method static synthetic i(Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->fpm:Ljava/util/List;

    return-object v0
.end method

.method private init()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 160
    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "window"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v3

    iput v3, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->fpK:I

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->fpL:I

    .line 161
    :goto_0
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->context:Landroid/content/Context;

    sget v3, Lcom/tencent/mm/k;->aSn:I

    invoke-static {v0, v3, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 162
    sget v0, Lcom/tencent/mm/i;->amv:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/base/MMDotView;

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->efp:Lcom/tencent/mm/ui/base/MMDotView;

    .line 163
    sget v0, Lcom/tencent/mm/i;->amw:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/base/MMFlipper;

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->efo:Lcom/tencent/mm/ui/base/MMFlipper;

    .line 166
    :try_start_0
    invoke-static {}, Lcom/tencent/mm/e/d;->qA()Lcom/tencent/mm/e/c;

    move-result-object v0

    const-string v3, "ShowAPPSuggestion"

    invoke-virtual {v0, v3}, Lcom/tencent/mm/e/c;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 167
    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v1, :cond_2

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/mm/pluginsdk/model/app/l;->aT(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->fpm:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    :goto_1
    invoke-direct {p0}, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->asp()V

    .line 179
    invoke-static {}, Lcom/tencent/mm/model/v;->tq()I

    move-result v0

    const/high16 v3, 0x10

    and-int/2addr v0, v3

    if-nez v0, :cond_3

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->fpD:Z

    .line 181
    invoke-static {}, Lcom/tencent/mm/e/d;->qB()Lcom/tencent/mm/e/a;

    invoke-static {}, Lcom/tencent/mm/e/a;->qo()I

    move-result v0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_4

    .line 184
    invoke-static {}, Lcom/tencent/mm/ak/a;->avr()Z

    move-result v1

    move-object v0, p0

    .line 186
    :goto_3
    iput-boolean v1, v0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->fpI:Z

    .line 189
    invoke-direct {p0}, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->aso()V

    .line 190
    return-void

    .line 160
    :cond_1
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v3

    iput v3, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->fpK:I

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->fpL:I

    goto :goto_0

    .line 170
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/mm/pluginsdk/model/app/l;->aU(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->fpm:Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 172
    :catch_0
    move-exception v0

    .line 173
    const-string v3, "MicroMsg.AppPanel"

    const-string v4, "exception in appPanel init, %s"

    new-array v5, v1, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v2

    invoke-static {v3, v4, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 174
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/mm/pluginsdk/model/app/l;->aT(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->fpm:Ljava/util/List;

    goto :goto_1

    :cond_3
    move v0, v2

    .line 179
    goto :goto_2

    .line 186
    :cond_4
    invoke-static {}, Lcom/tencent/mm/model/v;->tq()I

    move-result v0

    const/high16 v3, 0x40

    and-int/2addr v0, v3

    if-nez v0, :cond_5

    move-object v0, p0

    goto :goto_3

    :cond_5
    move v1, v2

    move-object v0, p0

    goto :goto_3
.end method

.method static synthetic j(Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;)Lcom/tencent/mm/pluginsdk/ui/chat/l;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->fpt:Lcom/tencent/mm/pluginsdk/ui/chat/l;

    return-object v0
.end method

.method static synthetic k(Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;)Z
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->fpF:Z

    return v0
.end method

.method static synthetic l(Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic m(Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;)Z
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->fpy:Z

    return v0
.end method

.method static synthetic n(Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 42
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->isSDCardAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/mm/ui/base/dn;->bW(Landroid/content/Context;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->context:Landroid/content/Context;

    sget v3, Lcom/tencent/mm/n;->bhe:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->context:Landroid/content/Context;

    sget v3, Lcom/tencent/mm/n;->bhd:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/pluginsdk/ui/chat/j;

    invoke-direct {v2, p0}, Lcom/tencent/mm/pluginsdk/ui/chat/j;-><init>(Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;)V

    invoke-static {v1, v4, v0, v4, v2}, Lcom/tencent/mm/ui/base/h;->b(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/tencent/mm/ui/base/v;)Lcom/tencent/mm/ui/base/ar;

    goto :goto_0
.end method

.method static synthetic o(Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;)Z
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->fpA:Z

    return v0
.end method

.method static synthetic p(Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;)Z
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->fpE:Z

    return v0
.end method

.method static synthetic q(Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;)Z
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->fpz:Z

    return v0
.end method

.method static synthetic r(Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 42
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->isSDCardAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/mm/ui/base/dn;->bW(Landroid/content/Context;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->context:Landroid/content/Context;

    sget v3, Lcom/tencent/mm/n;->bgG:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->context:Landroid/content/Context;

    sget v3, Lcom/tencent/mm/n;->bgF:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/pluginsdk/ui/chat/k;

    invoke-direct {v2, p0}, Lcom/tencent/mm/pluginsdk/ui/chat/k;-><init>(Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;)V

    invoke-static {v1, v4, v0, v4, v2}, Lcom/tencent/mm/ui/base/h;->b(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/tencent/mm/ui/base/v;)Lcom/tencent/mm/ui/base/ar;

    goto :goto_0
.end method

.method static synthetic s(Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;)Z
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->fpC:Z

    return v0
.end method

.method static synthetic t(Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;)Z
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->fpH:Z

    return v0
.end method

.method static synthetic u(Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;)Lcom/tencent/mm/pluginsdk/ui/chat/m;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->fpu:Lcom/tencent/mm/pluginsdk/ui/chat/m;

    return-object v0
.end method

.method static synthetic v(Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;)Z
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->fpB:Z

    return v0
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/pluginsdk/ui/chat/l;)V
    .locals 0
    .parameter

    .prologue
    .line 761
    iput-object p1, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->fpt:Lcom/tencent/mm/pluginsdk/ui/chat/l;

    .line 762
    return-void
.end method

.method public final a(Lcom/tencent/mm/pluginsdk/ui/chat/m;)V
    .locals 0
    .parameter

    .prologue
    .line 757
    iput-object p1, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->fpu:Lcom/tencent/mm/pluginsdk/ui/chat/m;

    .line 758
    return-void
.end method

.method public final aqY()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 515
    iput-boolean v1, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->efl:Z

    .line 516
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->efo:Lcom/tencent/mm/ui/base/MMFlipper;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/MMFlipper;->nb(I)V

    .line 517
    invoke-direct {p0}, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->asp()V

    .line 518
    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->requestLayout()V

    .line 519
    return-void
.end method

.method public final ara()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 400
    const-string v0, "MicroMsg.AppPanel"

    const-string v1, "app panel refleshed"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    :try_start_0
    invoke-static {}, Lcom/tencent/mm/e/d;->qA()Lcom/tencent/mm/e/c;

    move-result-object v0

    const-string v1, "ShowAPPSuggestion"

    invoke-virtual {v0, v1}, Lcom/tencent/mm/e/c;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 403
    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v3, :cond_1

    .line 404
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/mm/pluginsdk/model/app/l;->aT(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->fpm:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 413
    :goto_0
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->efo:Lcom/tencent/mm/ui/base/MMFlipper;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/MMFlipper;->aGP()I

    move-result v0

    .line 414
    invoke-direct {p0}, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->asq()V

    .line 416
    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->efo:Lcom/tencent/mm/ui/base/MMFlipper;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/base/MMFlipper;->nb(I)V

    .line 417
    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->efp:Lcom/tencent/mm/ui/base/MMDotView;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/base/MMDotView;->mY(I)V

    .line 418
    return-void

    .line 406
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/mm/pluginsdk/model/app/l;->aU(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->fpm:Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 408
    :catch_0
    move-exception v0

    .line 409
    const-string v1, "MicroMsg.AppPanel"

    const-string v2, "exception in appPanel init, %s"

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 410
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/mm/pluginsdk/model/app/l;->aT(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->fpm:Ljava/util/List;

    goto :goto_0
.end method

.method public final ash()V
    .locals 1

    .prologue
    .line 193
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->fpx:Z

    .line 194
    invoke-direct {p0}, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->aso()V

    .line 195
    return-void
.end method

.method public final asi()V
    .locals 1

    .prologue
    .line 199
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->fpy:Z

    .line 200
    invoke-direct {p0}, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->aso()V

    .line 201
    return-void
.end method

.method public final asj()V
    .locals 1

    .prologue
    .line 205
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->fpz:Z

    .line 206
    invoke-direct {p0}, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->aso()V

    .line 207
    return-void
.end method

.method public final ask()V
    .locals 1

    .prologue
    .line 211
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->fpA:Z

    .line 212
    invoke-direct {p0}, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->aso()V

    .line 213
    return-void
.end method

.method public final asl()V
    .locals 1

    .prologue
    .line 217
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->fpB:Z

    .line 218
    invoke-direct {p0}, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->aso()V

    .line 219
    return-void
.end method

.method public final asm()V
    .locals 1

    .prologue
    .line 250
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->fpE:Z

    .line 251
    invoke-direct {p0}, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->aso()V

    .line 252
    return-void
.end method

.method public final asn()V
    .locals 1

    .prologue
    .line 256
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->fpF:Z

    .line 257
    invoke-direct {p0}, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->aso()V

    .line 258
    return-void
.end method

.method public final asr()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 781
    iget-boolean v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->fmz:Z

    if-eqz v0, :cond_0

    .line 782
    invoke-direct {p0}, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->arB()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 783
    const-string v0, "MicroMsg.AppPanel"

    const-string v1, "initFlipper, landscape"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    sget v0, Lcom/tencent/mm/i;->amu:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 785
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 786
    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->context:Landroid/content/Context;

    sget v3, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->efb:I

    int-to-float v3, v3

    invoke-static {v2, v3}, Lcom/tencent/mm/sdk/platformtools/e;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 788
    iget v2, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->fpL:I

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 789
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 804
    :cond_0
    :goto_0
    return-void

    .line 792
    :cond_1
    iput-boolean v4, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->fmz:Z

    .line 794
    const-string v0, "MicroMsg.AppPanel"

    const-string v1, "initFlipper, portrait: %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    sget v3, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->efa:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 795
    sget v0, Lcom/tencent/mm/i;->amu:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 796
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 797
    iget v1, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->fmA:I

    if-lez v1, :cond_2

    iget v1, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->fmA:I

    :goto_1
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 799
    iget v1, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->fpK:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 800
    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 797
    :cond_2
    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->context:Landroid/content/Context;

    sget v3, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->efa:I

    int-to-float v3, v3

    invoke-static {v1, v3}, Lcom/tencent/mm/sdk/platformtools/e;->a(Landroid/content/Context;F)I

    move-result v1

    goto :goto_1
.end method

.method public final cw(Z)V
    .locals 3
    .parameter

    .prologue
    .line 223
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->fpC:Z

    .line 224
    invoke-direct {p0}, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->aso()V

    .line 225
    const-string v0, "MicroMsg.AppPanel"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "enable "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->fpC:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isVoipPluginEnable "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->fpD:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    return-void

    .line 223
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final cx(Z)V
    .locals 3
    .parameter

    .prologue
    .line 230
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->fpH:Z

    .line 231
    invoke-direct {p0}, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->aso()V

    .line 232
    const-string v0, "MicroMsg.AppPanel"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "enable "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->fpI:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isVoipAudioEnable "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->fpH:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    return-void

    .line 230
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final cy(Z)V
    .locals 1
    .parameter

    .prologue
    .line 237
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->fpJ:Z

    .line 238
    invoke-direct {p0}, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->aso()V

    .line 239
    return-void

    .line 237
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final cz(Z)V
    .locals 3
    .parameter

    .prologue
    .line 243
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->fpG:Z

    .line 244
    invoke-direct {p0}, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->aso()V

    .line 245
    const-string v0, "MicroMsg.AppPanel"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "disableTalkroom enable "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->fpG:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    return-void

    .line 243
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final kx(I)V
    .locals 1
    .parameter

    .prologue
    .line 774
    iget v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->fmA:I

    if-eq v0, p1, :cond_0

    .line 775
    iput p1, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->fmA:I

    .line 776
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->fmz:Z

    .line 778
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter

    .prologue
    .line 508
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 509
    :cond_0
    const-string v0, "MicroMsg.AppPanel"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onConfigChanged:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->aqY()V

    .line 512
    :cond_1
    return-void
.end method
