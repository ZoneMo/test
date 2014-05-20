.class public Lcom/tencent/mm/pluginsdk/ui/EmojiView;
.super Landroid/widget/ImageView;
.source "SourceFile"


# static fields
.field private static fkB:Landroid/os/Handler;

.field private static fkC:I

.field private static fkx:Z

.field private static fky:J

.field private static fkz:I


# instance fields
.field private cRZ:I

.field private cZk:Lcom/tencent/mm/storage/y;

.field private cpI:Z

.field private fkA:Lcom/tencent/mm/pluginsdk/ui/o;

.field private fkD:J

.field private fkE:I

.field private fkF:J

.field private fkG:J

.field private fkH:Ljava/util/ArrayList;

.field private fkI:[Ljava/lang/String;

.field private fkJ:Ljava/util/List;

.field private fkK:Landroid/graphics/Bitmap;

.field private fkL:Z

.field private fkM:J

.field private fkN:Z

.field private fkO:Z

.field private fkP:Ljava/lang/Runnable;

.field private handler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->fkx:Z

    .line 32
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->fky:J

    .line 40
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/tencent/mm/pluginsdk/ui/l;

    invoke-direct {v1}, Lcom/tencent/mm/pluginsdk/ui/l;-><init>()V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    sput-object v0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->fkB:Landroid/os/Handler;

    .line 48
    const/4 v0, 0x1

    sput v0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->fkC:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 123
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tencent/mm/pluginsdk/ui/EmojiView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 124
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 127
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 80
    iput-wide v2, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->fkD:J

    .line 81
    iput v1, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->cRZ:I

    .line 82
    iput v1, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->fkE:I

    .line 84
    iput-wide v2, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->fkF:J

    .line 85
    iput-wide v2, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->fkG:J

    .line 86
    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->fkH:Ljava/util/ArrayList;

    .line 87
    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->fkI:[Ljava/lang/String;

    .line 88
    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->fkJ:Ljava/util/List;

    .line 89
    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->fkK:Landroid/graphics/Bitmap;

    .line 90
    iput-boolean v1, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->fkL:Z

    .line 91
    iput-boolean v4, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->cpI:Z

    .line 95
    iput-boolean v4, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->fkO:Z

    .line 97
    new-instance v0, Lcom/tencent/mm/pluginsdk/ui/m;

    invoke-direct {v0, p0}, Lcom/tencent/mm/pluginsdk/ui/m;-><init>(Lcom/tencent/mm/pluginsdk/ui/EmojiView;)V

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->handler:Landroid/os/Handler;

    .line 112
    new-instance v0, Lcom/tencent/mm/pluginsdk/ui/n;

    invoke-direct {v0, p0}, Lcom/tencent/mm/pluginsdk/ui/n;-><init>(Lcom/tencent/mm/pluginsdk/ui/EmojiView;)V

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->fkP:Ljava/lang/Runnable;

    .line 128
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/tencent/mm/g;->abu:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->fkz:I

    .line 129
    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/pluginsdk/ui/EmojiView;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->arm()V

    return-void
.end method

.method public static ark()V
    .locals 2

    .prologue
    .line 62
    const-wide v0, 0x7fffffffffffffffL

    sput-wide v0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->fky:J

    .line 63
    return-void
.end method

.method private arl()I
    .locals 2

    .prologue
    .line 390
    iget v0, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->cRZ:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->cRZ:I

    iget v1, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->fkE:I

    rem-int/2addr v0, v1

    return v0
.end method

.method private arm()V
    .locals 11

    .prologue
    const-wide/16 v9, 0x12c

    const/4 v7, 0x1

    const-wide/16 v2, 0x64

    const/4 v0, 0x0

    .line 410
    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->cZk:Lcom/tencent/mm/storage/y;

    if-nez v1, :cond_1

    .line 557
    :cond_0
    :goto_0
    return-void

    .line 413
    :cond_1
    iget-boolean v1, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->fkN:Z

    if-nez v1, :cond_2

    .line 414
    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/tencent/mm/h;->ago:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->i(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 418
    :cond_2
    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->cZk:Lcom/tencent/mm/storage/y;

    invoke-virtual {v1}, Lcom/tencent/mm/storage/y;->aBG()I

    move-result v1

    sget v4, Lcom/tencent/mm/storage/y;->ghl:I

    if-ne v1, v4, :cond_6

    .line 419
    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->fkJ:Ljava/util/List;

    if-nez v1, :cond_4

    .line 420
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v1, v0

    :goto_1
    const/4 v5, 0x4

    if-ge v1, v5, :cond_3

    new-instance v5, Lcom/tencent/mm/storage/y;

    invoke-direct {v5}, Lcom/tencent/mm/storage/y;-><init>()V

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "dice_action_"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".png"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/tencent/mm/storage/y;->setName(Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    iput-object v4, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->fkJ:Ljava/util/List;

    .line 421
    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->fkJ:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->fkE:I

    .line 422
    iput-wide v2, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->fkG:J

    iput-wide v2, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->fkF:J

    .line 425
    :cond_4
    invoke-direct {p0}, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->recycle()V

    .line 426
    iget v1, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->cRZ:I

    iget v2, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->fkE:I

    mul-int/lit8 v2, v2, 0x3

    if-gt v1, v2, :cond_5

    .line 427
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->fkJ:Ljava/util/List;

    invoke-direct {p0}, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->arl()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/storage/y;

    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/y;->bM(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->i(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 430
    :cond_5
    iput-boolean v0, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->fkL:Z

    .line 431
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->cZk:Lcom/tencent/mm/storage/y;

    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/y;->bM(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->i(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 437
    :cond_6
    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->cZk:Lcom/tencent/mm/storage/y;

    invoke-virtual {v1}, Lcom/tencent/mm/storage/y;->aBG()I

    move-result v1

    sget v4, Lcom/tencent/mm/storage/y;->ghk:I

    if-ne v1, v4, :cond_a

    .line 438
    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->fkJ:Ljava/util/List;

    if-nez v1, :cond_8

    .line 439
    invoke-static {}, Lcom/tencent/mm/pluginsdk/h;->apj()Lcom/tencent/mm/pluginsdk/i;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->cZk:Lcom/tencent/mm/storage/y;

    invoke-virtual {v2}, Lcom/tencent/mm/storage/y;->aBG()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/tencent/mm/pluginsdk/i;->fD(I)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->fkJ:Ljava/util/List;

    .line 442
    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->fkJ:Ljava/util/List;

    if-nez v1, :cond_7

    .line 443
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->fkJ:Ljava/util/List;

    .line 445
    :cond_7
    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->fkJ:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->fkE:I

    .line 446
    const-string v1, "MicroMsg.EmojiView"

    const-string v2, "jsb totalFrame: %d"

    new-array v3, v7, [Ljava/lang/Object;

    iget v4, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->fkE:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v1, v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 447
    iput-wide v9, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->fkG:J

    iput-wide v9, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->fkF:J

    .line 450
    :cond_8
    invoke-direct {p0}, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->recycle()V

    .line 451
    iget v1, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->cRZ:I

    iget v2, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->fkE:I

    mul-int/lit8 v2, v2, 0x3

    if-gt v1, v2, :cond_9

    .line 452
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->fkJ:Ljava/util/List;

    invoke-direct {p0}, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->arl()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/storage/y;

    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/y;->bM(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->i(Landroid/graphics/Bitmap;)V

    .line 459
    :goto_2
    iget-boolean v0, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->cpI:Z

    if-nez v0, :cond_0

    .line 460
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->fkK:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->h(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->i(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 455
    :cond_9
    iput-boolean v0, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->fkL:Z

    .line 456
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->cZk:Lcom/tencent/mm/storage/y;

    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/y;->bM(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->i(Landroid/graphics/Bitmap;)V

    goto :goto_2

    .line 466
    :cond_a
    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->cZk:Lcom/tencent/mm/storage/y;

    invoke-virtual {v1}, Lcom/tencent/mm/storage/y;->getType()I

    move-result v1

    sget v4, Lcom/tencent/mm/storage/y;->gho:I

    if-eq v1, v4, :cond_b

    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->cZk:Lcom/tencent/mm/storage/y;

    invoke-virtual {v1}, Lcom/tencent/mm/storage/y;->getType()I

    move-result v1

    sget v4, Lcom/tencent/mm/storage/y;->ghr:I

    if-ne v1, v4, :cond_0

    .line 468
    :cond_b
    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->cZk:Lcom/tencent/mm/storage/y;

    invoke-virtual {v1}, Lcom/tencent/mm/storage/y;->aBA()Z

    move-result v1

    if-nez v1, :cond_e

    .line 469
    invoke-static {}, Lcom/tencent/mm/pluginsdk/h;->apj()Lcom/tencent/mm/pluginsdk/i;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->cZk:Lcom/tencent/mm/storage/y;

    invoke-interface {v0, v1}, Lcom/tencent/mm/pluginsdk/i;->a(Lcom/tencent/mm/storage/y;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 470
    invoke-static {}, Lcom/tencent/mm/pluginsdk/h;->apj()Lcom/tencent/mm/pluginsdk/i;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->cZk:Lcom/tencent/mm/storage/y;

    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/tencent/mm/pluginsdk/i;->a(Lcom/tencent/mm/storage/y;Landroid/content/Context;)V

    .line 474
    :cond_c
    const-string v0, "MicroMsg.EmojiView"

    const-string v1, "set static bitmap"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->fkA:Lcom/tencent/mm/pluginsdk/ui/o;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->fkA:Lcom/tencent/mm/pluginsdk/ui/o;

    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->cZk:Lcom/tencent/mm/storage/y;

    invoke-interface {v0, v1}, Lcom/tencent/mm/pluginsdk/ui/o;->g(Lcom/tencent/mm/storage/y;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 477
    :cond_d
    const-string v0, "MicroMsg.EmojiView"

    const-string v1, "use default encoding bitmap"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->cZk:Lcom/tencent/mm/storage/y;

    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/y;->bM(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->i(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 484
    :cond_e
    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->fkA:Lcom/tencent/mm/pluginsdk/ui/o;

    if-eqz v1, :cond_f

    .line 485
    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->fkA:Lcom/tencent/mm/pluginsdk/ui/o;

    iget-object v4, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->cZk:Lcom/tencent/mm/storage/y;

    invoke-interface {v1, v4}, Lcom/tencent/mm/pluginsdk/ui/o;->h(Lcom/tencent/mm/storage/y;)V

    .line 501
    :cond_f
    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->fkH:Ljava/util/ArrayList;

    if-eqz v1, :cond_10

    iget v1, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->fkE:I

    if-nez v1, :cond_14

    .line 502
    :cond_10
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->fkH:Ljava/util/ArrayList;

    .line 504
    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->cZk:Lcom/tencent/mm/storage/y;

    invoke-virtual {v1}, Lcom/tencent/mm/storage/y;->aBL()Ljava/lang/String;

    move-result-object v1

    .line 505
    const-string v4, "MicroMsg.EmojiView"

    const-string v5, "res = %s"

    new-array v6, v7, [Ljava/lang/Object;

    aput-object v1, v6, v0

    invoke-static {v4, v5, v6}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 506
    const-string v4, "_"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->fkI:[Ljava/lang/String;

    .line 508
    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->fkI:[Ljava/lang/String;

    array-length v1, v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    .line 513
    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->fkI:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->fkE:I

    .line 516
    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->fkI:[Ljava/lang/String;

    aget-object v1, v1, v7

    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 518
    if-eqz v5, :cond_11

    array-length v1, v5

    iget v4, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->fkE:I

    if-eq v1, v4, :cond_12

    .line 519
    :cond_11
    const-string v0, "MicroMsg.EmojiView"

    const-string v1, "durArr.length != totalFrame"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 523
    :cond_12
    array-length v6, v5

    move v4, v0

    :goto_3
    if-ge v4, v6, :cond_14

    aget-object v0, v5, v4

    .line 524
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 525
    const-wide/16 v7, 0x0

    cmp-long v7, v0, v7

    if-gtz v7, :cond_13

    move-wide v0, v2

    .line 528
    :cond_13
    iget-object v7, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->fkH:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 523
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_3

    .line 538
    :cond_14
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->fkH:Ljava/util/ArrayList;

    iget v1, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->cRZ:I

    iget v4, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->fkE:I

    rem-int/2addr v1, v4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->fkF:J

    .line 539
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->fkH:Ljava/util/ArrayList;

    iget v1, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->cRZ:I

    add-int/lit8 v1, v1, 0x1

    iget v4, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->fkE:I

    rem-int/2addr v1, v4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->fkG:J

    .line 542
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->cZk:Lcom/tencent/mm/storage/y;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/y;->aBG()I

    move-result v0

    sget v1, Lcom/tencent/mm/storage/y;->ghl:I

    if-ne v0, v1, :cond_16

    .line 543
    iput-wide v2, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->fkF:J

    .line 544
    iput-wide v2, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->fkG:J

    .line 550
    :cond_15
    :goto_4
    invoke-direct {p0}, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->recycle()V

    .line 551
    invoke-static {}, Lcom/tencent/mm/pluginsdk/h;->apj()Lcom/tencent/mm/pluginsdk/i;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0}, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->arl()I

    move-result v2

    iget-object v3, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->cZk:Lcom/tencent/mm/storage/y;

    invoke-interface {v0, v1, v2, v3}, Lcom/tencent/mm/pluginsdk/i;->a(Landroid/content/Context;ILcom/tencent/mm/storage/y;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->i(Landroid/graphics/Bitmap;)V

    .line 552
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->fkK:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 553
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->cZk:Lcom/tencent/mm/storage/y;

    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/y;->bM(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->i(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 545
    :cond_16
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->cZk:Lcom/tencent/mm/storage/y;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/y;->aBG()I

    move-result v0

    sget v1, Lcom/tencent/mm/storage/y;->ghk:I

    if-ne v0, v1, :cond_15

    .line 546
    iput-wide v9, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->fkF:J

    .line 547
    iput-wide v9, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->fkG:J

    goto :goto_4
.end method

.method public static bF(J)V
    .locals 2
    .parameter

    .prologue
    .line 66
    sget-wide v0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->fky:J

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    .line 67
    sput-wide p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->fky:J

    .line 69
    :cond_0
    return-void
.end method

.method public static ck(Z)V
    .locals 4
    .parameter

    .prologue
    .line 51
    sput-boolean p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->fkx:Z

    .line 53
    if-eqz p0, :cond_0

    .line 54
    sget-object v0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->fkB:Landroid/os/Handler;

    sget v1, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->fkC:I

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 59
    :goto_0
    return-void

    .line 57
    :cond_0
    sget-object v0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->fkB:Landroid/os/Handler;

    sget v1, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->fkC:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method

.method private h(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 578
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 589
    :cond_0
    :goto_0
    return-object p1

    .line 582
    :cond_1
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 583
    const/high16 v0, -0x4080

    const/high16 v2, 0x3f80

    invoke-virtual {v5, v0, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 584
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move-object v0, p1

    move v2, v1

    move v6, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 585
    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0xa0

    invoke-static {v1, v2}, Lcom/tencent/mm/an/a;->fromDPToPix(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 586
    if-eq p1, v0, :cond_2

    .line 587
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    move-object p1, v0

    .line 589
    goto :goto_0
.end method

.method static synthetic pn()Z
    .locals 1

    .prologue
    .line 28
    sget-boolean v0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->fkx:Z

    return v0
.end method

.method public static qC(Ljava/lang/String;)I
    .locals 2
    .parameter

    .prologue
    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "emojiview_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    return v0
.end method

.method private recycle()V
    .locals 1

    .prologue
    .line 572
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->fkK:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->fkK:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 573
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->fkK:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 575
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/pluginsdk/ui/o;)V
    .locals 0
    .parameter

    .prologue
    .line 649
    iput-object p1, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->fkA:Lcom/tencent/mm/pluginsdk/ui/o;

    .line 650
    return-void
.end method

.method public final declared-synchronized a(Lcom/tencent/mm/storage/y;JZZ)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 141
    monitor-enter p0

    if-nez p1, :cond_0

    .line 142
    :try_start_0
    const-string v0, "MicroMsg.EmojiView"

    const-string v1, "setEmojiInfo but emoji null!"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iput-object p1, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->cZk:Lcom/tencent/mm/storage/y;

    .line 144
    invoke-direct {p0}, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    :goto_0
    monitor-exit p0

    return-void

    .line 147
    :cond_0
    :try_start_1
    const-string v0, "MicroMsg.EmojiView"

    const-string v1, "setEmojiInfo"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-virtual {p1}, Lcom/tencent/mm/storage/y;->yK()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->qC(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->setId(I)V

    .line 151
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->isSDCardAvailable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->fkN:Z

    .line 153
    iget-boolean v0, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->fkN:Z

    if-nez v0, :cond_4

    .line 154
    invoke-virtual {p1}, Lcom/tencent/mm/storage/y;->aBG()I

    move-result v0

    sget v1, Lcom/tencent/mm/storage/y;->ghc:I

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/tencent/mm/storage/y;->aBG()I

    move-result v0

    sget v1, Lcom/tencent/mm/storage/y;->ghl:I

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/tencent/mm/storage/y;->aBG()I

    move-result v0

    sget v1, Lcom/tencent/mm/storage/y;->ghk:I

    if-ne v0, v1, :cond_2

    .line 155
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tencent/mm/storage/y;->bM(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->i(Landroid/graphics/Bitmap;)V

    .line 163
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->fkL:Z

    .line 164
    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->requestLayout()V

    .line 165
    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->invalidate()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 141
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 156
    :cond_2
    :try_start_2
    invoke-virtual {p1}, Lcom/tencent/mm/storage/y;->aBK()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/tencent/mm/storage/y;->aBK()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/tencent/mm/storage/w;->ggX:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/tencent/mm/storage/y;->aBK()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/tencent/mm/storage/w;->ggW:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/tencent/mm/storage/y;->aBK()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/tencent/mm/storage/w;->ggY:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 159
    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tencent/mm/storage/y;->bM(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->i(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 161
    :cond_3
    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/tencent/mm/h;->ago:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->i(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 169
    :cond_4
    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->cZk:Lcom/tencent/mm/storage/y;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->cZk:Lcom/tencent/mm/storage/y;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/y;->yK()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->cZk:Lcom/tencent/mm/storage/y;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/y;->yK()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tencent/mm/storage/y;->yK()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-wide v0, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->fkD:J

    cmp-long v0, v0, p2

    if-nez v0, :cond_6

    .line 170
    :cond_5
    const-string v0, "MicroMsg.EmojiView"

    const-string v1, " emojiView UI reset same emoji."

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 174
    :cond_6
    iput-object p1, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->cZk:Lcom/tencent/mm/storage/y;

    .line 175
    iput-wide p2, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->fkD:J

    .line 176
    iput-boolean p5, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->cpI:Z

    .line 178
    invoke-virtual {p1}, Lcom/tencent/mm/storage/y;->apQ()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p1}, Lcom/tencent/mm/storage/y;->getType()I

    move-result v0

    sget v1, Lcom/tencent/mm/storage/y;->gho:I

    if-eq v0, v1, :cond_7

    invoke-virtual {p1}, Lcom/tencent/mm/storage/y;->getType()I

    move-result v0

    sget v1, Lcom/tencent/mm/storage/y;->ghr:I

    if-ne v0, v1, :cond_8

    :cond_7
    if-nez p4, :cond_b

    .line 179
    :cond_8
    const-string v0, "MicroMsg.EmojiView"

    const-string v1, "emoji is not gif"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-direct {p0}, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->recycle()V

    .line 181
    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tencent/mm/storage/y;->bM(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 182
    const-string v2, "MicroMsg.EmojiView"

    const-string v3, "emoji is %s"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v5, 0x0

    if-nez v1, :cond_a

    const-string v0, "null!"

    :goto_2
    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 183
    invoke-virtual {p0, v1}, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->i(Landroid/graphics/Bitmap;)V

    .line 184
    invoke-virtual {p1}, Lcom/tencent/mm/storage/y;->aBG()I

    move-result v0

    sget v1, Lcom/tencent/mm/storage/y;->ghk:I

    if-ne v0, v1, :cond_9

    if-nez p5, :cond_9

    .line 185
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->fkK:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->h(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->i(Landroid/graphics/Bitmap;)V

    .line 187
    :cond_9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->fkL:Z

    .line 210
    :goto_3
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->handler:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 211
    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->requestLayout()V

    .line 212
    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->invalidate()V

    goto/16 :goto_0

    :cond_a
    move-object v0, v1

    .line 182
    goto :goto_2

    .line 190
    :cond_b
    const-string v0, "MicroMsg.EmojiView"

    const-string v1, "emoji is gif"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->fkL:Z

    .line 193
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->cRZ:I

    .line 194
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->fkE:I

    .line 195
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->fkF:J

    .line 196
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->fkG:J

    .line 197
    invoke-virtual {p1}, Lcom/tencent/mm/storage/y;->aBG()I

    move-result v0

    sget v1, Lcom/tencent/mm/storage/y;->ghl:I

    if-ne v0, v1, :cond_d

    .line 198
    const-wide/16 v0, 0x64

    iput-wide v0, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->fkF:J

    .line 199
    const-wide/16 v0, 0x64

    iput-wide v0, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->fkG:J

    .line 205
    :cond_c
    :goto_4
    const-string v0, "MicroMsg.EmojiView"

    const-string v1, "set duration to 0"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->fkJ:Ljava/util/List;

    .line 207
    invoke-direct {p0}, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->arm()V

    .line 208
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->fkM:J

    goto :goto_3

    .line 200
    :cond_d
    invoke-virtual {p1}, Lcom/tencent/mm/storage/y;->aBG()I

    move-result v0

    sget v1, Lcom/tencent/mm/storage/y;->ghk:I

    if-ne v0, v1, :cond_c

    .line 201
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->fkF:J

    .line 202
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->fkG:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4
.end method

.method protected arg()Z
    .locals 1

    .prologue
    .line 302
    invoke-static {}, Lcom/tencent/mm/pluginsdk/h;->apj()Lcom/tencent/mm/pluginsdk/i;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/mm/pluginsdk/i;->KR()Z

    move-result v0

    return v0
.end method

.method protected arh()V
    .locals 0

    .prologue
    .line 366
    return-void
.end method

.method protected ari()Z
    .locals 1

    .prologue
    .line 386
    const/4 v0, 0x1

    return v0
.end method

.method protected arj()Z
    .locals 1

    .prologue
    .line 284
    const/4 v0, 0x1

    return v0
.end method

.method public final arn()Lcom/tencent/mm/storage/y;
    .locals 1

    .prologue
    .line 626
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->cZk:Lcom/tencent/mm/storage/y;

    return-object v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter

    .prologue
    .line 290
    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->arg()Z

    move-result v0

    .line 291
    iget-boolean v1, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->fkL:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->fkM:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->fkF:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_0

    .line 292
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->fkM:J

    .line 295
    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->handler:Landroid/os/Handler;

    const/16 v3, 0x3e9

    iget-wide v0, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->fkG:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-nez v0, :cond_2

    const-wide/16 v0, 0x64

    :goto_1
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 298
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->draw(Landroid/graphics/Canvas;)V

    .line 299
    return-void

    .line 291
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 295
    :cond_2
    iget-wide v0, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->fkG:J

    goto :goto_1
.end method

.method public final declared-synchronized i(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter

    .prologue
    .line 597
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 598
    :try_start_0
    iput-object p1, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->fkK:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 611
    :goto_0
    monitor-exit p0

    return-void

    .line 600
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->cZk:Lcom/tencent/mm/storage/y;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->cZk:Lcom/tencent/mm/storage/y;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/y;->aBy()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 601
    iget-boolean v0, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->fkO:Z

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    .line 602
    const-string v0, "MicroMsg.EmojiView"

    const-string v1, "user emo_loading_bg"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/tencent/mm/h;->adU:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->fkK:Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 597
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 605
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->cZk:Lcom/tencent/mm/storage/y;

    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/y;->bN(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->fkK:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 608
    :cond_2
    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/tencent/mm/h;->afh:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->fkK:Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public final declared-synchronized i(Lcom/tencent/mm/storage/y;)V
    .locals 1
    .parameter

    .prologue
    .line 136
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->fkO:Z

    .line 137
    invoke-virtual {p0, p1}, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->j(Lcom/tencent/mm/storage/y;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    monitor-exit p0

    return-void

    .line 136
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized j(Lcom/tencent/mm/storage/y;)V
    .locals 6
    .parameter

    .prologue
    .line 132
    monitor-enter p0

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->a(Lcom/tencent/mm/storage/y;JZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    monitor-exit p0

    return-void

    .line 132
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter

    .prologue
    const-wide/high16 v8, 0x3ff0

    .line 307
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->fkK:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->fkK:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 308
    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->getRight()I

    move-result v0

    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    .line 309
    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->getBottom()I

    move-result v1

    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    .line 310
    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->fkK:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 311
    iget-object v3, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->fkK:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 315
    int-to-double v4, v0

    int-to-double v6, v2

    div-double/2addr v4, v6

    .line 316
    int-to-double v0, v1

    int-to-double v2, v3

    div-double/2addr v0, v2

    .line 329
    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->fkK:Landroid/graphics/Bitmap;

    .line 330
    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->ari()Z

    move-result v3

    if-eqz v3, :cond_1

    cmpg-double v3, v4, v8

    if-ltz v3, :cond_0

    cmpg-double v0, v0, v8

    if-gez v0, :cond_1

    .line 341
    :cond_0
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 349
    :cond_1
    invoke-virtual {p0, v2}, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 350
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 362
    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 247
    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->arj()Z

    move-result v1

    if-nez v1, :cond_0

    .line 248
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 249
    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->arh()V

    .line 281
    :goto_0
    return-void

    .line 255
    :cond_0
    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->fkK:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    .line 256
    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 261
    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->fkK:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Landroid/graphics/Bitmap;->getScaledWidth(I)I

    move-result v1

    invoke-static {v1, p1}, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->resolveSize(II)I

    move-result v1

    .line 262
    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->fkK:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v0}, Landroid/graphics/Bitmap;->getScaledHeight(I)I

    move-result v0

    invoke-static {v0, p2}, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->resolveSize(II)I

    move-result v0

    .line 273
    :goto_1
    sget v2, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->fkz:I

    if-le v1, v2, :cond_1

    .line 274
    sget v0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->fkz:I

    .line 276
    sget v1, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->fkz:I

    .line 278
    :cond_1
    invoke-virtual {p0, v1, v0}, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->setMeasuredDimension(II)V

    .line 279
    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->arh()V

    goto :goto_0

    :cond_2
    move v1, v0

    goto :goto_1
.end method

.method public final refresh()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x12c

    const-wide/16 v4, 0x64

    const-wide/16 v2, 0x0

    .line 216
    const-string v0, "MicroMsg.EmojiView"

    const-string v1, "refresh emoji view."

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->cZk:Lcom/tencent/mm/storage/y;

    if-nez v0, :cond_0

    .line 219
    const-string v0, "MicroMsg.EmojiView"

    const-string v1, "pre refresh emoji view failed. emoji is null. can\'t get md5"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    :goto_0
    return-void

    .line 222
    :cond_0
    invoke-static {}, Lcom/tencent/mm/pluginsdk/h;->apj()Lcom/tencent/mm/pluginsdk/i;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->cZk:Lcom/tencent/mm/storage/y;

    invoke-virtual {v1}, Lcom/tencent/mm/storage/y;->yK()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tencent/mm/pluginsdk/i;->ja(Ljava/lang/String;)Lcom/tencent/mm/storage/y;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->cZk:Lcom/tencent/mm/storage/y;

    .line 223
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->cZk:Lcom/tencent/mm/storage/y;

    if-nez v0, :cond_1

    .line 224
    const-string v0, "MicroMsg.EmojiView"

    const-string v1, "refresh emoji view failed. emoji is null."

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 230
    :cond_1
    iput-wide v2, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->fkF:J

    .line 231
    iput-wide v2, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->fkG:J

    .line 232
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->cZk:Lcom/tencent/mm/storage/y;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/y;->aBG()I

    move-result v0

    sget v1, Lcom/tencent/mm/storage/y;->ghl:I

    if-ne v0, v1, :cond_3

    .line 233
    iput-wide v4, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->fkF:J

    .line 234
    iput-wide v4, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->fkG:J

    .line 239
    :cond_2
    :goto_1
    iput-wide v2, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->fkM:J

    .line 240
    invoke-direct {p0}, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->arm()V

    .line 242
    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->invalidate()V

    goto :goto_0

    .line 235
    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->cZk:Lcom/tencent/mm/storage/y;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/y;->aBG()I

    move-result v0

    sget v1, Lcom/tencent/mm/storage/y;->ghk:I

    if-ne v0, v1, :cond_2

    .line 236
    iput-wide v6, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->fkF:J

    .line 237
    iput-wide v6, p0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->fkG:J

    goto :goto_1
.end method
