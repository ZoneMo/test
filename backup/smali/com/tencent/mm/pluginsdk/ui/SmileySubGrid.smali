.class public Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;
.super Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;
.source "SourceFile"


# instance fields
.field private cUX:Landroid/view/WindowManager;

.field private dC:I

.field private ddz:Landroid/view/LayoutInflater;

.field deA:F

.field deB:F

.field fmC:I

.field fmD:I

.field fmE:I

.field fmF:I

.field fmG:Landroid/graphics/Rect;

.field fmH:Z

.field private fmI:Lcom/tencent/mm/pluginsdk/ui/DynamicEmojiView;

.field private fmJ:Landroid/view/View;

.field private fmK:Landroid/view/WindowManager$LayoutParams;

.field private fmL:I

.field private fmM:I

.field private fmN:Z

.field private fmO:Lcom/tencent/mm/pluginsdk/ui/az;

.field private fmP:I

.field private fmQ:I

.field private fmR:Lcom/tencent/mm/pluginsdk/ui/ax;

.field private fmS:Lcom/tencent/mm/pluginsdk/ui/ay;

.field private fmT:I

.field private fmU:I

.field private fmV:Landroid/view/View;

.field private fmW:I

.field private fmX:Ljava/lang/String;

.field private fmY:Lcom/tencent/mm/pluginsdk/ui/ba;

.field private volatile fmZ:I

.field private volatile fna:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 102
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 103
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x2

    const/4 v1, -0x1

    .line 111
    invoke-direct {p0, p1, p2}, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    const/4 v0, 0x6

    iput v0, p0, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->fmC:I

    .line 46
    iput v1, p0, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->fmF:I

    .line 48
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->fmG:Landroid/graphics/Rect;

    .line 77
    new-instance v0, Lcom/tencent/mm/pluginsdk/ui/ba;

    invoke-direct {v0, p0}, Lcom/tencent/mm/pluginsdk/ui/ba;-><init>(Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;)V

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->fmY:Lcom/tencent/mm/pluginsdk/ui/ba;

    .line 328
    iput v1, p0, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->fmZ:I

    .line 395
    iput-boolean v6, p0, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->fna:Z

    .line 112
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->ddz:Landroid/view/LayoutInflater;

    .line 113
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->cUX:Landroid/view/WindowManager;

    .line 115
    invoke-static {}, Lcom/tencent/mm/pluginsdk/h;->apj()Lcom/tencent/mm/pluginsdk/i;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->fmY:Lcom/tencent/mm/pluginsdk/ui/ba;

    invoke-interface {v0, v2}, Lcom/tencent/mm/pluginsdk/i;->a(Lcom/tencent/mm/sdk/e/al;)V

    .line 117
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->ddz:Landroid/view/LayoutInflater;

    sget v2, Lcom/tencent/mm/k;->aZB:I

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->fmJ:Landroid/view/View;

    .line 118
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->fmJ:Landroid/view/View;

    sget v2, Lcom/tencent/mm/i;->arG:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/pluginsdk/ui/DynamicEmojiView;

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->fmI:Lcom/tencent/mm/pluginsdk/ui/DynamicEmojiView;

    .line 119
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->fmI:Lcom/tencent/mm/pluginsdk/ui/DynamicEmojiView;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/DynamicEmojiView;->ard()V

    .line 122
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v4, 0x8

    const/4 v5, 0x1

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->fmK:Landroid/view/WindowManager$LayoutParams;

    .line 126
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/tencent/mm/g;->abt:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->fmW:I

    .line 127
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->fmK:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->fmW:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 128
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->fmK:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->fmW:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 129
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->fmK:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x11

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 131
    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->LJ()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->fmP:I

    .line 132
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->fmQ:I

    .line 134
    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->fmT:I

    .line 135
    iget v0, p0, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->fmT:I

    if-ne v0, v3, :cond_0

    .line 136
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->cUX:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->fmL:I

    .line 137
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->cUX:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->fmM:I

    .line 142
    :goto_0
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    invoke-virtual {p0, v6}, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->setBackgroundResource(I)V

    .line 144
    invoke-virtual {p0, v3}, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->setStretchMode(I)V

    .line 145
    const/high16 v0, 0x42a0

    invoke-static {p1, v0}, Lcom/tencent/mm/sdk/platformtools/e;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->fmU:I

    .line 146
    iget v0, p0, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->fmU:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->setColumnWidth(I)V

    .line 147
    iget v0, p0, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->fmL:I

    iget v1, p0, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->fmU:I

    div-int/2addr v0, v1

    .line 148
    invoke-virtual {p0, v0}, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->setNumColumns(I)V

    .line 149
    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->dC:I

    .line 155
    return-void

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->cUX:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->fmL:I

    .line 140
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->cUX:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->fmM:I

    goto :goto_0
.end method

.method private W(Landroid/view/View;)V
    .locals 6
    .parameter

    .prologue
    .line 422
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->fmG:Landroid/graphics/Rect;

    .line 423
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 424
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->fmG:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v1, v5

    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->getPaddingTop()I

    move-result v5

    sub-int/2addr v2, v5

    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->getPaddingRight()I

    move-result v5

    add-int/2addr v3, v5

    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->getPaddingBottom()I

    move-result v5

    add-int/2addr v0, v5

    invoke-virtual {v4, v1, v2, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 426
    iget-boolean v0, p0, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->fmH:Z

    .line 427
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eq v1, v0, :cond_0

    .line 428
    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->fmH:Z

    .line 429
    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->refreshDrawableState()V

    .line 431
    :cond_0
    return-void

    .line 428
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;)Lcom/tencent/mm/pluginsdk/ui/DynamicEmojiView;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->fmI:Lcom/tencent/mm/pluginsdk/ui/DynamicEmojiView;

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;Landroid/view/View;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->o(Landroid/view/View;I)V

    return-void
.end method

.method private arF()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 398
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->fmO:Lcom/tencent/mm/pluginsdk/ui/az;

    if-eqz v0, :cond_0

    .line 399
    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 400
    if-eqz v0, :cond_0

    .line 401
    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->fmO:Lcom/tencent/mm/pluginsdk/ui/az;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 404
    :cond_0
    iget-boolean v0, p0, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->fmN:Z

    if-eqz v0, :cond_1

    .line 405
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->cUX:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->fmJ:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 406
    iput-boolean v2, p0, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->fmN:Z

    .line 407
    iput-boolean v2, p0, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->fna:Z

    .line 409
    :cond_1
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->fmX:Ljava/lang/String;

    .line 410
    return-void
.end method

.method static synthetic b(Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;)Z
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->fmN:Z

    return v0
.end method

.method static synthetic c(Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;)I
    .locals 1
    .parameter

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic d(Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;)I
    .locals 1
    .parameter

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic e(Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->fmJ:Landroid/view/View;

    return-object v0
.end method

.method static synthetic f(Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;)Landroid/view/WindowManager$LayoutParams;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->fmK:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method static synthetic g(Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;)Landroid/view/WindowManager;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->cUX:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic h(Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;)Z
    .locals 1
    .parameter

    .prologue
    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->fmN:Z

    return v0
.end method

.method private k(Lcom/tencent/mm/storage/y;)V
    .locals 2
    .parameter

    .prologue
    .line 550
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/tencent/mm/storage/y;->yK()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->fmX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 551
    invoke-virtual {p1}, Lcom/tencent/mm/storage/y;->yK()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->fmX:Ljava/lang/String;

    .line 552
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->fmI:Lcom/tencent/mm/pluginsdk/ui/DynamicEmojiView;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/pluginsdk/ui/DynamicEmojiView;->i(Lcom/tencent/mm/storage/y;)V

    .line 556
    :cond_0
    if-nez p1, :cond_1

    .line 558
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->fmI:Lcom/tencent/mm/pluginsdk/ui/DynamicEmojiView;

    sget-object v1, Lcom/tencent/mm/pluginsdk/ui/j;->fkr:Lcom/tencent/mm/pluginsdk/ui/j;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/pluginsdk/ui/DynamicEmojiView;->a(Lcom/tencent/mm/pluginsdk/ui/j;)Z

    .line 566
    :goto_0
    return-void

    .line 563
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->fmI:Lcom/tencent/mm/pluginsdk/ui/DynamicEmojiView;

    sget-object v1, Lcom/tencent/mm/pluginsdk/ui/j;->fks:Lcom/tencent/mm/pluginsdk/ui/j;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/pluginsdk/ui/DynamicEmojiView;->a(Lcom/tencent/mm/pluginsdk/ui/j;)Z

    goto :goto_0
.end method

.method private o(Landroid/view/View;I)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 317
    iget v0, p0, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->fmZ:I

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->fmJ:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    if-nez v0, :cond_5

    .line 318
    const-string v0, "MicroMsg.SmileySubGrid"

    const-string v3, "jacks begin show:%d"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 319
    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/storage/y;

    iget-object v3, p0, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->fmO:Lcom/tencent/mm/pluginsdk/ui/az;

    if-nez v3, :cond_0

    new-instance v3, Lcom/tencent/mm/pluginsdk/ui/az;

    invoke-direct {v3, p0, v2}, Lcom/tencent/mm/pluginsdk/ui/az;-><init>(Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;B)V

    iput-object v3, p0, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->fmO:Lcom/tencent/mm/pluginsdk/ui/az;

    :cond_0
    invoke-direct {p0, v0}, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->k(Lcom/tencent/mm/storage/y;)V

    iget v0, p0, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->fmT:I

    if-ne v0, v1, :cond_2

    rem-int/lit8 v0, p2, 0x4

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->fmJ:Landroid/view/View;

    sget v3, Lcom/tencent/mm/h;->adZ:I

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_1
    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    iget v3, p0, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->fmT:I

    if-ne v3, v1, :cond_3

    iget-object v3, p0, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->fmK:Landroid/view/WindowManager$LayoutParams;

    aget v2, v0, v2

    iget v4, p0, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->fmL:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v2, v4

    add-int/lit8 v2, v2, 0x0

    iput v2, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->fmK:Landroid/view/WindowManager$LayoutParams;

    aget v0, v0, v1

    iget v3, p0, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->fmM:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v0, v3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->LI()I

    move-result v3

    sub-int/2addr v0, v3

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    :goto_2
    iget-boolean v0, p0, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->fmN:Z

    if-nez v0, :cond_4

    iput-boolean v1, p0, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->fna:Z

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->fmO:Lcom/tencent/mm/pluginsdk/ui/az;

    iget v1, p0, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->fmQ:I

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 320
    :goto_3
    invoke-virtual {p0, p2}, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->fM(I)V

    .line 325
    :goto_4
    iput p2, p0, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->fmZ:I

    .line 326
    return-void

    :cond_1
    move v0, v2

    .line 317
    goto :goto_0

    .line 319
    :pswitch_1
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->fmJ:Landroid/view/View;

    sget v3, Lcom/tencent/mm/h;->adX:I

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->fmJ:Landroid/view/View;

    sget v3, Lcom/tencent/mm/h;->adY:I

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    :cond_2
    rem-int/lit8 v0, p2, 0x8

    sparse-switch v0, :sswitch_data_0

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->fmJ:Landroid/view/View;

    sget v3, Lcom/tencent/mm/h;->adZ:I

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    :sswitch_0
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->fmJ:Landroid/view/View;

    sget v3, Lcom/tencent/mm/h;->adX:I

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    :sswitch_1
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->fmJ:Landroid/view/View;

    sget v3, Lcom/tencent/mm/h;->adY:I

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->fmK:Landroid/view/WindowManager$LayoutParams;

    aget v2, v0, v2

    iget v4, p0, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->fmM:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v2, v4

    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->LI()I

    move-result v4

    sub-int/2addr v2, v4

    iput v2, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->fmK:Landroid/view/WindowManager$LayoutParams;

    aget v0, v0, v1

    iget v3, p0, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->fmL:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v0, v3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x0

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->cUX:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->fmJ:Landroid/view/View;

    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->fmK:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    .line 322
    :cond_5
    const-string v0, "MicroMsg.SmileySubGrid"

    const-string v3, "jacks already show:%d"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    .line 319
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x7 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method protected LI()I
    .locals 1

    .prologue
    .line 527
    const/4 v0, 0x0

    return v0
.end method

.method protected LJ()I
    .locals 1

    .prologue
    .line 531
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    return v0
.end method

.method protected LK()Z
    .locals 1

    .prologue
    .line 535
    const/4 v0, 0x1

    return v0
.end method

.method public final V(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    .line 418
    iput-object p1, p0, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->fmV:Landroid/view/View;

    .line 419
    return-void
.end method

.method public final a(Lcom/tencent/mm/storage/y;I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 539
    iget v0, p0, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->fmZ:I

    if-ne v0, p2, :cond_0

    iget-boolean v0, p0, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->fna:Z

    if-nez v0, :cond_1

    .line 542
    :cond_0
    const-string v0, "MicroMsg.SmileySubGrid"

    const-string v1, "not show:%d, needData: %B, so do not refresh"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-boolean v4, p0, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->fna:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 547
    :goto_0
    return-void

    .line 545
    :cond_1
    invoke-direct {p0, p1}, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->k(Lcom/tencent/mm/storage/y;)V

    goto :goto_0
.end method

.method protected am(Z)V
    .locals 1
    .parameter

    .prologue
    .line 512
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->fmV:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 513
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->fmV:Landroid/view/View;

    instance-of v0, v0, Lcom/tencent/mm/ui/base/MMFlipper;

    if-eqz v0, :cond_1

    .line 514
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->fmV:Landroid/view/View;

    check-cast v0, Lcom/tencent/mm/ui/base/MMFlipper;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/ui/base/MMFlipper;->am(Z)V

    .line 520
    :cond_0
    :goto_0
    return-void

    .line 515
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->fmV:Landroid/view/View;

    instance-of v0, v0, Lcom/tencent/mm/ui/base/CustomViewPager;

    if-eqz v0, :cond_0

    .line 516
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->fmV:Landroid/view/View;

    check-cast v0, Lcom/tencent/mm/ui/base/CustomViewPager;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/ui/base/CustomViewPager;->da(Z)V

    goto :goto_0
.end method

.method public final arE()I
    .locals 1

    .prologue
    .line 309
    iget v0, p0, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->fmF:I

    return v0
.end method

.method public final arG()V
    .locals 2

    .prologue
    .line 414
    invoke-static {}, Lcom/tencent/mm/pluginsdk/h;->apj()Lcom/tencent/mm/pluginsdk/i;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->fmY:Lcom/tencent/mm/pluginsdk/ui/ba;

    invoke-interface {v0, v1}, Lcom/tencent/mm/pluginsdk/i;->b(Lcom/tencent/mm/sdk/e/al;)V

    .line 415
    return-void
.end method

.method public final arH()Z
    .locals 2

    .prologue
    .line 582
    iget v0, p0, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->fmC:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected fM(I)V
    .locals 0
    .parameter

    .prologue
    .line 332
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter

    .prologue
    const/16 v7, 0x19

    const/4 v6, -0x1

    const/4 v0, 0x1

    const/4 v5, 0x0

    .line 159
    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->LK()Z

    move-result v1

    if-nez v1, :cond_1

    .line 160
    invoke-direct {p0}, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->arF()V

    .line 161
    invoke-super {p0, p1}, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 287
    :cond_0
    :goto_0
    return v0

    .line 163
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 164
    const/4 v1, 0x0

    .line 165
    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 167
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    .line 168
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    .line 169
    int-to-float v4, v2

    iput v4, p0, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->deA:F

    .line 170
    int-to-float v4, v3

    iput v4, p0, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->deB:F

    .line 171
    invoke-virtual {p0, v2, v3}, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->pointToPosition(II)I

    move-result v2

    .line 172
    if-ltz v2, :cond_2

    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 173
    iput v5, p0, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->fmD:I

    .line 175
    :cond_2
    if-ltz v2, :cond_3

    .line 176
    iput v2, p0, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->fmF:I

    .line 177
    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->getFirstVisiblePosition()I

    move-result v1

    sub-int v1, v2, v1

    invoke-virtual {p0, v1}, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 181
    :cond_3
    if-eqz v1, :cond_4

    .line 182
    invoke-virtual {v1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 183
    invoke-virtual {v1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 184
    invoke-direct {p0, v1}, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->W(Landroid/view/View;)V

    .line 188
    :cond_4
    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->fmR:Lcom/tencent/mm/pluginsdk/ui/ax;

    if-nez v1, :cond_5

    .line 189
    new-instance v1, Lcom/tencent/mm/pluginsdk/ui/ax;

    invoke-direct {v1, p0, v5}, Lcom/tencent/mm/pluginsdk/ui/ax;-><init>(Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;B)V

    iput-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->fmR:Lcom/tencent/mm/pluginsdk/ui/ax;

    .line 191
    :cond_5
    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->fmR:Lcom/tencent/mm/pluginsdk/ui/ax;

    invoke-virtual {v1}, Lcom/tencent/mm/pluginsdk/ui/ax;->arI()V

    .line 192
    iput v2, p0, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->fmE:I

    .line 193
    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->aru()I

    move-result v1

    if-ne v1, v7, :cond_6

    iget v1, p0, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->dJC:I

    if-nez v1, :cond_6

    if-eqz v2, :cond_0

    .line 194
    :cond_6
    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->fmR:Lcom/tencent/mm/pluginsdk/ui/ax;

    iget v2, p0, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->fmP:I

    int-to-long v2, v2

    invoke-virtual {p0, v1, v2, v3}, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 200
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 201
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 202
    iget v3, p0, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->fmC:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_a

    .line 203
    invoke-virtual {p0, v1, v2}, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->pointToPosition(II)I

    move-result v1

    .line 204
    iput v1, p0, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->fmE:I

    .line 205
    if-ltz v1, :cond_9

    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->aru()I

    move-result v2

    if-ne v2, v7, :cond_7

    if-nez v1, :cond_7

    iget v2, p0, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->dJC:I

    if-eqz v2, :cond_9

    .line 206
    :cond_7
    iget v2, p0, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->fmF:I

    if-eq v2, v1, :cond_8

    .line 207
    iput v1, p0, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->fmF:I

    .line 208
    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->getFirstVisiblePosition()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 209
    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->layoutChildren()V

    .line 210
    if-eqz v1, :cond_8

    .line 211
    invoke-virtual {v1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 212
    invoke-virtual {v1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 213
    invoke-direct {p0, v1}, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->W(Landroid/view/View;)V

    .line 214
    iget v2, p0, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->fmF:I

    invoke-direct {p0, v1, v2}, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->o(Landroid/view/View;I)V

    .line 229
    :cond_8
    :goto_1
    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 230
    if-eqz v1, :cond_0

    .line 231
    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->fmR:Lcom/tencent/mm/pluginsdk/ui/ax;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 219
    :cond_9
    invoke-direct {p0}, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->arF()V

    .line 220
    iget v1, p0, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->fmF:I

    if-ltz v1, :cond_8

    .line 221
    iget v1, p0, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->fmF:I

    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->getFirstVisiblePosition()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 222
    if-eqz v1, :cond_8

    .line 223
    invoke-virtual {v1, v5}, Landroid/view/View;->setPressed(Z)V

    .line 224
    invoke-virtual {v1, v5}, Landroid/view/View;->setSelected(Z)V

    .line 225
    invoke-direct {p0, v1}, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->W(Landroid/view/View;)V

    goto :goto_1

    .line 235
    :cond_a
    iget v2, p0, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->deA:F

    int-to-float v1, v1

    sub-float v1, v2, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->dC:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_b

    .line 236
    iput v6, p0, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->fmD:I

    .line 237
    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 238
    if-eqz v1, :cond_b

    .line 239
    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->fmR:Lcom/tencent/mm/pluginsdk/ui/ax;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 242
    :cond_b
    invoke-direct {p0}, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->arF()V

    goto/16 :goto_0

    .line 251
    :pswitch_2
    iget v1, p0, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->fmE:I

    .line 252
    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->getFirstVisiblePosition()I

    move-result v3

    sub-int v3, v1, v3

    invoke-virtual {p0, v3}, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 253
    if-ne v2, v0, :cond_d

    .line 254
    iget v2, p0, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->fmD:I

    if-eq v2, v6, :cond_d

    .line 255
    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->fmS:Lcom/tencent/mm/pluginsdk/ui/ay;

    if-nez v2, :cond_c

    .line 256
    new-instance v2, Lcom/tencent/mm/pluginsdk/ui/ay;

    invoke-direct {v2, p0, v5}, Lcom/tencent/mm/pluginsdk/ui/ay;-><init>(Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;B)V

    iput-object v2, p0, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->fmS:Lcom/tencent/mm/pluginsdk/ui/ay;

    .line 258
    :cond_c
    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->fmS:Lcom/tencent/mm/pluginsdk/ui/ay;

    .line 259
    iput-object v3, v2, Lcom/tencent/mm/pluginsdk/ui/ay;->fnc:Landroid/view/View;

    .line 260
    iput v1, v2, Lcom/tencent/mm/pluginsdk/ui/ay;->fnd:I

    .line 261
    invoke-virtual {v2}, Lcom/tencent/mm/pluginsdk/ui/ay;->arI()V

    .line 262
    invoke-virtual {p0, v2}, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->post(Ljava/lang/Runnable;)Z

    .line 271
    :cond_d
    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 272
    if-eqz v1, :cond_e

    .line 273
    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->fmR:Lcom/tencent/mm/pluginsdk/ui/ax;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 276
    :cond_e
    invoke-virtual {p0, v0}, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->am(Z)V

    .line 277
    invoke-direct {p0}, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->arF()V

    .line 278
    iget v1, p0, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->fmF:I

    if-ltz v1, :cond_f

    .line 279
    iget v1, p0, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->fmF:I

    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->getFirstVisiblePosition()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 280
    if-eqz v1, :cond_f

    .line 281
    invoke-virtual {v1, v5}, Landroid/view/View;->setPressed(Z)V

    .line 282
    invoke-virtual {v1, v5}, Landroid/view/View;->setSelected(Z)V

    .line 283
    invoke-direct {p0, v1}, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->W(Landroid/view/View;)V

    .line 286
    :cond_f
    const/4 v1, 0x6

    iput v1, p0, Lcom/tencent/mm/pluginsdk/ui/SmileySubGrid;->fmC:I

    goto/16 :goto_0

    .line 165
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
