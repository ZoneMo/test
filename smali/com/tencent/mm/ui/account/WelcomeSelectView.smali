.class public Lcom/tencent/mm/ui/account/WelcomeSelectView;
.super Lcom/tencent/mm/ui/account/WelcomeView;
.source "SourceFile"


# instance fields
.field private context:Landroid/content/Context;

.field private grv:Landroid/view/View;

.field private guE:Landroid/view/View;

.field private guF:Landroid/widget/ImageView;

.field private guG:I

.field private guH:Landroid/widget/Button;

.field private guI:Landroid/widget/Button;

.field private guJ:Landroid/widget/TextView;

.field private ue:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/tencent/mm/ui/account/WelcomeView;-><init>(Landroid/content/Context;)V

    .line 45
    const/16 v0, 0x82

    iput v0, p0, Lcom/tencent/mm/ui/account/WelcomeSelectView;->guG:I

    .line 50
    const/16 v0, 0x320

    iput v0, p0, Lcom/tencent/mm/ui/account/WelcomeSelectView;->ue:I

    .line 60
    invoke-direct {p0, p1}, Lcom/tencent/mm/ui/account/WelcomeSelectView;->aD(Landroid/content/Context;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/tencent/mm/ui/account/WelcomeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    const/16 v0, 0x82

    iput v0, p0, Lcom/tencent/mm/ui/account/WelcomeSelectView;->guG:I

    .line 50
    const/16 v0, 0x320

    iput v0, p0, Lcom/tencent/mm/ui/account/WelcomeSelectView;->ue:I

    .line 55
    invoke-direct {p0, p1}, Lcom/tencent/mm/ui/account/WelcomeSelectView;->aD(Landroid/content/Context;)V

    .line 56
    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/account/WelcomeSelectView;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/tencent/mm/ui/account/WelcomeSelectView;->guF:Landroid/widget/ImageView;

    return-object v0
.end method

.method private aD(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    const/16 v2, 0x8

    .line 98
    iput-object p1, p0, Lcom/tencent/mm/ui/account/WelcomeSelectView;->context:Landroid/content/Context;

    .line 99
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/tencent/mm/k;->bbZ:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 100
    sget v0, Lcom/tencent/mm/i;->aIL:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/account/WelcomeSelectView;->grv:Landroid/view/View;

    .line 101
    sget v0, Lcom/tencent/mm/i;->aRo:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/account/WelcomeSelectView;->guE:Landroid/view/View;

    .line 102
    sget v0, Lcom/tencent/mm/i;->aRs:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/mm/ui/account/WelcomeSelectView;->guF:Landroid/widget/ImageView;

    .line 103
    const/16 v0, 0x57

    invoke-static {p1, v0}, Lcom/tencent/mm/an/a;->fromDPToPix(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/account/WelcomeSelectView;->guG:I

    .line 104
    sget v0, Lcom/tencent/mm/i;->aIK:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tencent/mm/ui/account/WelcomeSelectView;->guH:Landroid/widget/Button;

    .line 105
    sget v0, Lcom/tencent/mm/i;->aIM:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tencent/mm/ui/account/WelcomeSelectView;->guI:Landroid/widget/Button;

    .line 106
    sget v0, Lcom/tencent/mm/i;->aRp:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/account/WelcomeSelectView;->guJ:Landroid/widget/TextView;

    .line 107
    iget-object v0, p0, Lcom/tencent/mm/ui/account/WelcomeSelectView;->guF:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 108
    iget-object v0, p0, Lcom/tencent/mm/ui/account/WelcomeSelectView;->grv:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 109
    iget-object v0, p0, Lcom/tencent/mm/ui/account/WelcomeSelectView;->guJ:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 110
    iget-object v0, p0, Lcom/tencent/mm/ui/account/WelcomeSelectView;->guJ:Landroid/widget/TextView;

    sget-object v1, Lcom/tencent/mm/plugin/a/a;->cHT:Lcom/tencent/mm/pluginsdk/d;

    invoke-interface {v1, p1}, Lcom/tencent/mm/pluginsdk/d;->t(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/tencent/mm/ui/account/WelcomeSelectView;->ue:I

    .line 112
    iget-object v0, p0, Lcom/tencent/mm/ui/account/WelcomeSelectView;->guJ:Landroid/widget/TextView;

    new-instance v1, Lcom/tencent/mm/ui/account/lp;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/account/lp;-><init>(Lcom/tencent/mm/ui/account/WelcomeSelectView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iget-object v0, p0, Lcom/tencent/mm/ui/account/WelcomeSelectView;->guH:Landroid/widget/Button;

    new-instance v1, Lcom/tencent/mm/ui/account/lq;

    invoke-direct {v1, p0, p1}, Lcom/tencent/mm/ui/account/lq;-><init>(Lcom/tencent/mm/ui/account/WelcomeSelectView;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    iget-object v0, p0, Lcom/tencent/mm/ui/account/WelcomeSelectView;->guI:Landroid/widget/Button;

    new-instance v1, Lcom/tencent/mm/ui/account/lr;

    invoke-direct {v1, p0, p1}, Lcom/tencent/mm/ui/account/lr;-><init>(Lcom/tencent/mm/ui/account/WelcomeSelectView;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    invoke-direct {p0}, Lcom/tencent/mm/ui/account/WelcomeSelectView;->init()V

    .line 172
    return-void
.end method

.method static synthetic b(Lcom/tencent/mm/ui/account/WelcomeSelectView;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/tencent/mm/ui/account/WelcomeSelectView;->grv:Landroid/view/View;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/mm/ui/account/WelcomeSelectView;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/tencent/mm/ui/account/WelcomeSelectView;->guJ:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic d(Lcom/tencent/mm/ui/account/WelcomeSelectView;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/tencent/mm/ui/account/WelcomeSelectView;->guE:Landroid/view/View;

    return-object v0
.end method

.method private init()V
    .locals 4

    .prologue
    .line 75
    iget-object v0, p0, Lcom/tencent/mm/ui/account/WelcomeSelectView;->context:Landroid/content/Context;

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->azs()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/account/WelcomeSelectView;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/z;->b(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v0

    .line 76
    iget-object v1, p0, Lcom/tencent/mm/ui/account/WelcomeSelectView;->guJ:Landroid/widget/TextView;

    sget-object v2, Lcom/tencent/mm/plugin/a/a;->cHT:Lcom/tencent/mm/pluginsdk/d;

    iget-object v3, p0, Lcom/tencent/mm/ui/account/WelcomeSelectView;->context:Landroid/content/Context;

    invoke-interface {v2, v3}, Lcom/tencent/mm/pluginsdk/d;->t(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    if-eqz v0, :cond_2

    const-string v1, "language_default"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 78
    const-string v1, "zh_CN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 79
    iget-object v1, p0, Lcom/tencent/mm/ui/account/WelcomeSelectView;->guF:Landroid/widget/ImageView;

    sget v2, Lcom/tencent/mm/h;->akx:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 90
    :goto_0
    if-eqz v0, :cond_0

    const-string v1, "language_default"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/tencent/mm/ui/account/WelcomeSelectView;->guJ:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/mm/ui/account/WelcomeSelectView;->context:Landroid/content/Context;

    sget v2, Lcom/tencent/mm/n;->bpX:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/account/WelcomeSelectView;->guH:Landroid/widget/Button;

    sget v1, Lcom/tencent/mm/n;->bph:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 94
    iget-object v0, p0, Lcom/tencent/mm/ui/account/WelcomeSelectView;->guI:Landroid/widget/Button;

    sget v1, Lcom/tencent/mm/n;->bpg:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 95
    return-void

    .line 81
    :cond_1
    iget-object v1, p0, Lcom/tencent/mm/ui/account/WelcomeSelectView;->guF:Landroid/widget/ImageView;

    sget v2, Lcom/tencent/mm/h;->aky:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 84
    :cond_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 85
    iget-object v1, p0, Lcom/tencent/mm/ui/account/WelcomeSelectView;->guF:Landroid/widget/ImageView;

    sget v2, Lcom/tencent/mm/h;->akx:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 87
    :cond_3
    iget-object v1, p0, Lcom/tencent/mm/ui/account/WelcomeSelectView;->guF:Landroid/widget/ImageView;

    sget v2, Lcom/tencent/mm/h;->aky:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method


# virtual methods
.method public final aGn()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 175
    iget v0, p0, Lcom/tencent/mm/ui/account/WelcomeSelectView;->ue:I

    add-int/lit16 v0, v0, -0x96

    div-int/lit8 v0, v0, 0x5

    .line 176
    iget v1, p0, Lcom/tencent/mm/ui/account/WelcomeSelectView;->guG:I

    if-le v1, v0, :cond_0

    :goto_0
    iput v0, p0, Lcom/tencent/mm/ui/account/WelcomeSelectView;->guG:I

    .line 177
    iget-object v0, p0, Lcom/tencent/mm/ui/account/WelcomeSelectView;->guE:Landroid/view/View;

    iget v1, p0, Lcom/tencent/mm/ui/account/WelcomeSelectView;->guG:I

    neg-int v1, v1

    int-to-float v1, v1

    new-instance v2, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v2, v3, v3, v3, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    new-instance v3, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v3, 0x6a4

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    new-instance v3, Lcom/tencent/mm/ui/account/ls;

    invoke-direct {v3, p0, v0, v1}, Lcom/tencent/mm/ui/account/ls;-><init>(Lcom/tencent/mm/ui/account/WelcomeSelectView;Landroid/view/View;F)V

    invoke-virtual {v2, v3}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 178
    return-void

    .line 176
    :cond_0
    iget v0, p0, Lcom/tencent/mm/ui/account/WelcomeSelectView;->guG:I

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/tencent/mm/ui/account/WelcomeView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 71
    const/16 v0, 0xf

    invoke-static {v0}, Lcom/tencent/mm/plugin/d/c/i;->hy(I)V

    .line 72
    return-void
.end method

.method public final onPause()V
    .locals 0

    .prologue
    .line 235
    return-void
.end method

.method public final onResume()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/tencent/mm/ui/account/WelcomeSelectView;->init()V

    .line 65
    return-void
.end method
