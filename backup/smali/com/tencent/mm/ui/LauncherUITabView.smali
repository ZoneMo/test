.class public Lcom/tencent/mm/ui/LauncherUITabView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field protected fiI:I

.field protected gmA:Lcom/tencent/mm/ui/az;

.field protected gmB:Lcom/tencent/mm/ui/az;

.field protected gmC:Landroid/view/View$OnClickListener;

.field private gmD:Landroid/os/Handler;

.field private gmq:Z

.field private gmr:Z

.field private gms:I

.field private gmt:I

.field private gmu:Landroid/graphics/Bitmap;

.field private gmv:Landroid/widget/ImageView;

.field private gmw:Landroid/graphics/Matrix;

.field private gmx:Lcom/tencent/mm/ui/ay;

.field protected gmy:Lcom/tencent/mm/ui/az;

.field protected gmz:Lcom/tencent/mm/ui/az;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 75
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 42
    iput-boolean v0, p0, Lcom/tencent/mm/ui/LauncherUITabView;->gmq:Z

    .line 43
    iput-boolean v0, p0, Lcom/tencent/mm/ui/LauncherUITabView;->gmr:Z

    .line 44
    iput v0, p0, Lcom/tencent/mm/ui/LauncherUITabView;->gms:I

    .line 47
    iput v0, p0, Lcom/tencent/mm/ui/LauncherUITabView;->fiI:I

    .line 51
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/LauncherUITabView;->gmw:Landroid/graphics/Matrix;

    .line 93
    new-instance v0, Lcom/tencent/mm/ui/aw;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/aw;-><init>(Lcom/tencent/mm/ui/LauncherUITabView;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/LauncherUITabView;->gmC:Landroid/view/View$OnClickListener;

    .line 131
    new-instance v0, Lcom/tencent/mm/ui/ax;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/ax;-><init>(Lcom/tencent/mm/ui/LauncherUITabView;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/LauncherUITabView;->gmD:Landroid/os/Handler;

    .line 76
    invoke-direct {p0}, Lcom/tencent/mm/ui/LauncherUITabView;->init()V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 80
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    iput-boolean v0, p0, Lcom/tencent/mm/ui/LauncherUITabView;->gmq:Z

    .line 43
    iput-boolean v0, p0, Lcom/tencent/mm/ui/LauncherUITabView;->gmr:Z

    .line 44
    iput v0, p0, Lcom/tencent/mm/ui/LauncherUITabView;->gms:I

    .line 47
    iput v0, p0, Lcom/tencent/mm/ui/LauncherUITabView;->fiI:I

    .line 51
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/LauncherUITabView;->gmw:Landroid/graphics/Matrix;

    .line 93
    new-instance v0, Lcom/tencent/mm/ui/aw;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/aw;-><init>(Lcom/tencent/mm/ui/LauncherUITabView;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/LauncherUITabView;->gmC:Landroid/view/View$OnClickListener;

    .line 131
    new-instance v0, Lcom/tencent/mm/ui/ax;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/ax;-><init>(Lcom/tencent/mm/ui/LauncherUITabView;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/LauncherUITabView;->gmD:Landroid/os/Handler;

    .line 81
    invoke-direct {p0}, Lcom/tencent/mm/ui/LauncherUITabView;->init()V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 85
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    iput-boolean v0, p0, Lcom/tencent/mm/ui/LauncherUITabView;->gmq:Z

    .line 43
    iput-boolean v0, p0, Lcom/tencent/mm/ui/LauncherUITabView;->gmr:Z

    .line 44
    iput v0, p0, Lcom/tencent/mm/ui/LauncherUITabView;->gms:I

    .line 47
    iput v0, p0, Lcom/tencent/mm/ui/LauncherUITabView;->fiI:I

    .line 51
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/LauncherUITabView;->gmw:Landroid/graphics/Matrix;

    .line 93
    new-instance v0, Lcom/tencent/mm/ui/aw;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/aw;-><init>(Lcom/tencent/mm/ui/LauncherUITabView;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/LauncherUITabView;->gmC:Landroid/view/View$OnClickListener;

    .line 131
    new-instance v0, Lcom/tencent/mm/ui/ax;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/ax;-><init>(Lcom/tencent/mm/ui/LauncherUITabView;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/LauncherUITabView;->gmD:Landroid/os/Handler;

    .line 86
    invoke-direct {p0}, Lcom/tencent/mm/ui/LauncherUITabView;->init()V

    .line 87
    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/LauncherUITabView;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/tencent/mm/ui/LauncherUITabView;->gmD:Landroid/os/Handler;

    return-object v0
.end method

.method private static a(Lcom/tencent/mm/ui/az;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 256
    const-string v0, "MicroMsg.LauncherUITabView"

    const-string v1, "update tab tips content %s, visibility:%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/tencent/mm/ui/az;->gkk:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 257
    invoke-static {p1}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/tencent/mm/ui/az;->gkk:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 268
    :goto_0
    return-void

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/az;->gkk:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    iget-object v0, p0, Lcom/tencent/mm/ui/az;->gkk:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/tencent/mm/ui/LauncherUITabView;)Lcom/tencent/mm/ui/ay;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/tencent/mm/ui/LauncherUITabView;->gmx:Lcom/tencent/mm/ui/ay;

    return-object v0
.end method

.method private init()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 208
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/z;->azj()Ljava/lang/String;

    move-result-object v2

    .line 209
    const-string v0, "zh_CN"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "zh_TW"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/tencent/mm/ui/LauncherUITabView;->gmq:Z

    .line 210
    const-string v0, "en"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/LauncherUITabView;->gmr:Z

    .line 211
    iget-boolean v0, p0, Lcom/tencent/mm/ui/LauncherUITabView;->gmq:Z

    if-eqz v0, :cond_1

    .line 212
    invoke-virtual {p0}, Lcom/tencent/mm/ui/LauncherUITabView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v2, 0x4000

    invoke-static {v0, v2}, Lcom/tencent/mm/sdk/platformtools/e;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/LauncherUITabView;->gms:I

    .line 215
    :cond_1
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/LauncherUITabView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 217
    const v2, 0x233445

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setId(I)V

    .line 218
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 219
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 220
    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/ui/LauncherUITabView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 222
    invoke-virtual {p0}, Lcom/tencent/mm/ui/LauncherUITabView;->aEH()V

    .line 224
    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/LauncherUITabView;->c(Landroid/widget/LinearLayout;)Lcom/tencent/mm/ui/az;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/mm/ui/LauncherUITabView;->gmy:Lcom/tencent/mm/ui/az;

    .line 225
    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/LauncherUITabView;->e(Landroid/widget/LinearLayout;)Lcom/tencent/mm/ui/az;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/mm/ui/LauncherUITabView;->gmA:Lcom/tencent/mm/ui/az;

    .line 226
    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/LauncherUITabView;->d(Landroid/widget/LinearLayout;)Lcom/tencent/mm/ui/az;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/mm/ui/LauncherUITabView;->gmz:Lcom/tencent/mm/ui/az;

    .line 227
    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/LauncherUITabView;->f(Landroid/widget/LinearLayout;)Lcom/tencent/mm/ui/az;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/LauncherUITabView;->gmB:Lcom/tencent/mm/ui/az;

    .line 228
    return-void

    :cond_2
    move v0, v1

    .line 209
    goto :goto_0
.end method


# virtual methods
.method protected a(ILandroid/view/ViewGroup;)Lcom/tencent/mm/ui/az;
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 141
    invoke-virtual {p0}, Lcom/tencent/mm/ui/LauncherUITabView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 142
    new-instance v1, Lcom/tencent/mm/ui/az;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/az;-><init>(Lcom/tencent/mm/ui/LauncherUITabView;)V

    .line 143
    const v2, 0x7f030155

    invoke-virtual {v0, v2, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/mm/ui/az;->elC:Landroid/view/View;

    .line 144
    iget-object v0, v1, Lcom/tencent/mm/ui/az;->elC:Landroid/view/View;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 145
    iget-object v0, v1, Lcom/tencent/mm/ui/az;->elC:Landroid/view/View;

    iget-object v2, p0, Lcom/tencent/mm/ui/LauncherUITabView;->gmC:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    iget-object v0, v1, Lcom/tencent/mm/ui/az;->elC:Landroid/view/View;

    const v2, 0x7f0a0448

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/tencent/mm/ui/az;->daV:Landroid/widget/TextView;

    .line 147
    iget-object v0, v1, Lcom/tencent/mm/ui/az;->elC:Landroid/view/View;

    const v2, 0x7f0a044a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/tencent/mm/ui/az;->gkk:Landroid/widget/TextView;

    .line 148
    iget-object v0, v1, Lcom/tencent/mm/ui/az;->elC:Landroid/view/View;

    const v2, 0x7f0a0449

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/mm/ui/az;->gmI:Landroid/view/View;

    .line 149
    iget-boolean v0, p0, Lcom/tencent/mm/ui/LauncherUITabView;->gmq:Z

    if-eqz v0, :cond_1

    .line 150
    iget-object v0, v1, Lcom/tencent/mm/ui/az;->daV:Landroid/widget/TextView;

    iget-object v2, v1, Lcom/tencent/mm/ui/az;->daV:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    iget v3, p0, Lcom/tencent/mm/ui/LauncherUITabView;->gms:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {v0, v4, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 151
    iget-object v0, v1, Lcom/tencent/mm/ui/az;->daV:Landroid/widget/TextView;

    invoke-virtual {v0, v5, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 156
    :cond_0
    :goto_0
    return-object v1

    .line 152
    :cond_1
    iget-boolean v0, p0, Lcom/tencent/mm/ui/LauncherUITabView;->gmr:Z

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, v1, Lcom/tencent/mm/ui/az;->daV:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v0, v5, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_0
.end method

.method public final a(Lcom/tencent/mm/ui/ay;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/tencent/mm/ui/LauncherUITabView;->gmx:Lcom/tencent/mm/ui/ay;

    .line 91
    return-void
.end method

.method protected aEH()V
    .locals 4

    .prologue
    .line 196
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/LauncherUITabView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/LauncherUITabView;->gmv:Landroid/widget/ImageView;

    .line 197
    iget-object v0, p0, Lcom/tencent/mm/ui/LauncherUITabView;->gmv:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/tencent/mm/ui/LauncherUITabView;->gmw:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 198
    iget-object v0, p0, Lcom/tencent/mm/ui/LauncherUITabView;->gmv:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 199
    iget-object v0, p0, Lcom/tencent/mm/ui/LauncherUITabView;->gmv:Landroid/widget/ImageView;

    const v1, 0x233446

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setId(I)V

    .line 200
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-virtual {p0}, Lcom/tencent/mm/ui/LauncherUITabView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/tencent/mm/an/a;->fromDPToPix(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 201
    const/16 v1, 0x8

    const v2, 0x233445

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 203
    iget-object v1, p0, Lcom/tencent/mm/ui/LauncherUITabView;->gmv:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0}, Lcom/tencent/mm/ui/LauncherUITabView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 204
    return-void
.end method

.method protected aZ(II)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 243
    const-string v0, "MicroMsg.LauncherUITabView"

    const-string v1, "on layout, width %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sub-int v4, p2, p1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 244
    sub-int v0, p2, p1

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/tencent/mm/ui/LauncherUITabView;->gmt:I

    .line 245
    iget v0, p0, Lcom/tencent/mm/ui/LauncherUITabView;->gmt:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/LauncherUITabView;->mv(I)V

    .line 246
    iget v0, p0, Lcom/tencent/mm/ui/LauncherUITabView;->fiI:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/LauncherUITabView;->mu(I)V

    .line 247
    return-void
.end method

.method public b(IF)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 336
    iget-object v0, p0, Lcom/tencent/mm/ui/LauncherUITabView;->gmw:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/tencent/mm/ui/LauncherUITabView;->gmt:I

    int-to-float v1, v1

    int-to-float v2, p1

    add-float/2addr v2, p2

    mul-float/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 337
    iget-object v0, p0, Lcom/tencent/mm/ui/LauncherUITabView;->gmv:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/tencent/mm/ui/LauncherUITabView;->gmw:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 338
    return-void
.end method

.method protected c(Landroid/widget/LinearLayout;)Lcom/tencent/mm/ui/az;
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 160
    invoke-virtual {p0, v4, p1}, Lcom/tencent/mm/ui/LauncherUITabView;->a(ILandroid/view/ViewGroup;)Lcom/tencent/mm/ui/az;

    move-result-object v0

    .line 161
    iget-object v1, v0, Lcom/tencent/mm/ui/az;->daV:Landroid/widget/TextView;

    const v2, 0x7f07018e

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 162
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/LauncherUITabView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0039

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {v1, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 163
    const/high16 v2, 0x3f80

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 164
    iget-object v2, v0, Lcom/tencent/mm/ui/az;->elC:Landroid/view/View;

    invoke-virtual {p1, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 165
    return-object v0
.end method

.method protected d(Landroid/widget/LinearLayout;)Lcom/tencent/mm/ui/az;
    .locals 5
    .parameter

    .prologue
    .line 169
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/tencent/mm/ui/LauncherUITabView;->a(ILandroid/view/ViewGroup;)Lcom/tencent/mm/ui/az;

    move-result-object v0

    .line 170
    iget-object v1, v0, Lcom/tencent/mm/ui/az;->daV:Landroid/widget/TextView;

    const v2, 0x7f07018f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 171
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/tencent/mm/ui/LauncherUITabView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0039

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 172
    const/high16 v2, 0x3f80

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 173
    iget-object v2, v0, Lcom/tencent/mm/ui/az;->elC:Landroid/view/View;

    invoke-virtual {p1, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 174
    return-object v0
.end method

.method public final db(Z)V
    .locals 2
    .parameter

    .prologue
    .line 315
    if-eqz p1, :cond_0

    .line 316
    iget-object v0, p0, Lcom/tencent/mm/ui/LauncherUITabView;->gmA:Lcom/tencent/mm/ui/az;

    iget-object v0, v0, Lcom/tencent/mm/ui/az;->gmI:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 320
    :goto_0
    return-void

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/LauncherUITabView;->gmA:Lcom/tencent/mm/ui/az;

    iget-object v0, v0, Lcom/tencent/mm/ui/az;->gmI:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected e(Landroid/widget/LinearLayout;)Lcom/tencent/mm/ui/az;
    .locals 5
    .parameter

    .prologue
    .line 178
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/tencent/mm/ui/LauncherUITabView;->a(ILandroid/view/ViewGroup;)Lcom/tencent/mm/ui/az;

    move-result-object v0

    .line 179
    iget-object v1, v0, Lcom/tencent/mm/ui/az;->daV:Landroid/widget/TextView;

    const v2, 0x7f070190

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 180
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/tencent/mm/ui/LauncherUITabView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0039

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 181
    const/high16 v2, 0x3f80

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 182
    iget-object v2, v0, Lcom/tencent/mm/ui/az;->elC:Landroid/view/View;

    invoke-virtual {p1, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 183
    return-object v0
.end method

.method protected f(Landroid/widget/LinearLayout;)Lcom/tencent/mm/ui/az;
    .locals 5
    .parameter

    .prologue
    .line 187
    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Lcom/tencent/mm/ui/LauncherUITabView;->a(ILandroid/view/ViewGroup;)Lcom/tencent/mm/ui/az;

    move-result-object v0

    .line 188
    iget-object v1, v0, Lcom/tencent/mm/ui/az;->daV:Landroid/widget/TextView;

    const v2, 0x7f070191

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 189
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/tencent/mm/ui/LauncherUITabView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0037

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 190
    const/high16 v2, 0x3f80

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 192
    return-object v0
.end method

.method public mu(I)V
    .locals 4
    .parameter

    .prologue
    const v3, 0x7f0c003a

    const v2, 0x7f0c0033

    .line 342
    iput p1, p0, Lcom/tencent/mm/ui/LauncherUITabView;->fiI:I

    .line 344
    iget-object v0, p0, Lcom/tencent/mm/ui/LauncherUITabView;->gmy:Lcom/tencent/mm/ui/az;

    iget-object v0, v0, Lcom/tencent/mm/ui/az;->daV:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/LauncherUITabView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 345
    iget-object v0, p0, Lcom/tencent/mm/ui/LauncherUITabView;->gmz:Lcom/tencent/mm/ui/az;

    iget-object v0, v0, Lcom/tencent/mm/ui/az;->daV:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/LauncherUITabView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 346
    iget-object v0, p0, Lcom/tencent/mm/ui/LauncherUITabView;->gmA:Lcom/tencent/mm/ui/az;

    iget-object v0, v0, Lcom/tencent/mm/ui/az;->daV:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/LauncherUITabView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 348
    packed-switch p1, :pswitch_data_0

    .line 357
    :goto_0
    return-void

    .line 350
    :pswitch_0
    iget-object v0, p0, Lcom/tencent/mm/ui/LauncherUITabView;->gmy:Lcom/tencent/mm/ui/az;

    iget-object v0, v0, Lcom/tencent/mm/ui/az;->daV:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/LauncherUITabView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 353
    :pswitch_1
    iget-object v0, p0, Lcom/tencent/mm/ui/LauncherUITabView;->gmz:Lcom/tencent/mm/ui/az;

    iget-object v0, v0, Lcom/tencent/mm/ui/az;->daV:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/LauncherUITabView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 356
    :pswitch_2
    iget-object v0, p0, Lcom/tencent/mm/ui/LauncherUITabView;->gmA:Lcom/tencent/mm/ui/az;

    iget-object v0, v0, Lcom/tencent/mm/ui/az;->daV:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/LauncherUITabView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 348
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected mv(I)V
    .locals 5
    .parameter

    .prologue
    .line 232
    iget-object v0, p0, Lcom/tencent/mm/ui/LauncherUITabView;->gmu:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/LauncherUITabView;->gmu:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-eq v0, p1, :cond_1

    .line 233
    :cond_0
    const-string v1, "MicroMsg.LauncherUITabView"

    const-string v2, "sharp width changed, from %d to %d"

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/tencent/mm/ui/LauncherUITabView;->gmu:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    const/4 v0, -0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v1, v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 234
    invoke-virtual {p0}, Lcom/tencent/mm/ui/LauncherUITabView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/tencent/mm/an/a;->fromDPToPix(Landroid/content/Context;I)I

    move-result v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/LauncherUITabView;->gmu:Landroid/graphics/Bitmap;

    .line 235
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/tencent/mm/ui/LauncherUITabView;->gmu:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 236
    invoke-virtual {p0}, Lcom/tencent/mm/ui/LauncherUITabView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c003a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 237
    iget v0, p0, Lcom/tencent/mm/ui/LauncherUITabView;->fiI:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/ui/LauncherUITabView;->b(IF)V

    .line 238
    iget-object v0, p0, Lcom/tencent/mm/ui/LauncherUITabView;->gmv:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/tencent/mm/ui/LauncherUITabView;->gmu:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 240
    :cond_1
    return-void

    .line 233
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/LauncherUITabView;->gmu:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    goto :goto_0
.end method

.method public final mw(I)V
    .locals 3
    .parameter

    .prologue
    .line 271
    if-lez p1, :cond_1

    .line 272
    const/16 v0, 0x63

    if-le p1, v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/tencent/mm/ui/LauncherUITabView;->gmy:Lcom/tencent/mm/ui/az;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/LauncherUITabView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f070a7d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/LauncherUITabView;->a(Lcom/tencent/mm/ui/az;Ljava/lang/String;)V

    .line 280
    :goto_0
    return-void

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/LauncherUITabView;->gmy:Lcom/tencent/mm/ui/az;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/LauncherUITabView;->a(Lcom/tencent/mm/ui/az;Ljava/lang/String;)V

    goto :goto_0

    .line 278
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/LauncherUITabView;->gmy:Lcom/tencent/mm/ui/az;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/LauncherUITabView;->a(Lcom/tencent/mm/ui/az;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final mx(I)V
    .locals 3
    .parameter

    .prologue
    .line 283
    if-lez p1, :cond_1

    .line 284
    const/16 v0, 0x63

    if-le p1, v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/tencent/mm/ui/LauncherUITabView;->gmz:Lcom/tencent/mm/ui/az;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/LauncherUITabView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f070a7d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/LauncherUITabView;->a(Lcom/tencent/mm/ui/az;Ljava/lang/String;)V

    .line 292
    :goto_0
    return-void

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/LauncherUITabView;->gmz:Lcom/tencent/mm/ui/az;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/LauncherUITabView;->a(Lcom/tencent/mm/ui/az;Ljava/lang/String;)V

    goto :goto_0

    .line 290
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/LauncherUITabView;->gmz:Lcom/tencent/mm/ui/az;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/LauncherUITabView;->a(Lcom/tencent/mm/ui/az;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final my(I)V
    .locals 3
    .parameter

    .prologue
    .line 295
    if-lez p1, :cond_1

    .line 296
    const/16 v0, 0x63

    if-le p1, v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/tencent/mm/ui/LauncherUITabView;->gmA:Lcom/tencent/mm/ui/az;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/LauncherUITabView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f070a7d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/LauncherUITabView;->a(Lcom/tencent/mm/ui/az;Ljava/lang/String;)V

    .line 304
    :goto_0
    return-void

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/LauncherUITabView;->gmA:Lcom/tencent/mm/ui/az;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/LauncherUITabView;->a(Lcom/tencent/mm/ui/az;Ljava/lang/String;)V

    goto :goto_0

    .line 302
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/LauncherUITabView;->gmA:Lcom/tencent/mm/ui/az;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/LauncherUITabView;->a(Lcom/tencent/mm/ui/az;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 251
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 252
    invoke-virtual {p0, p2, p4}, Lcom/tencent/mm/ui/LauncherUITabView;->aZ(II)V

    .line 253
    return-void
.end method
