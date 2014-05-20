.class public Lcom/tencent/mm/ui/player/MusicBannerView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private context:Landroid/content/Context;

.field private gZY:Z

.field private hcW:Lcom/tencent/mm/ui/player/ScrollAlwaysTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/player/MusicBannerView;->gZY:Z

    .line 25
    iput-object p1, p0, Lcom/tencent/mm/ui/player/MusicBannerView;->context:Landroid/content/Context;

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/player/MusicBannerView;->gZY:Z

    .line 31
    iput-object p1, p0, Lcom/tencent/mm/ui/player/MusicBannerView;->context:Landroid/content/Context;

    .line 32
    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/player/MusicBannerView;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 15
    iget-object v0, p0, Lcom/tencent/mm/ui/player/MusicBannerView;->context:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public onFinishInflate()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 36
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 37
    iget-boolean v0, p0, Lcom/tencent/mm/ui/player/MusicBannerView;->gZY:Z

    if-nez v0, :cond_0

    const v0, 0x7f0a05de

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/player/MusicBannerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/player/ScrollAlwaysTextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/player/MusicBannerView;->hcW:Lcom/tencent/mm/ui/player/ScrollAlwaysTextView;

    new-instance v0, Lcom/tencent/mm/ui/player/b;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/player/b;-><init>(Lcom/tencent/mm/ui/player/MusicBannerView;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/player/MusicBannerView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/player/MusicBannerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0, v0, v2, v0, v2}, Lcom/tencent/mm/ui/player/MusicBannerView;->setPadding(IIII)V

    .line 38
    :cond_0
    return-void
.end method

.method public final xp(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lcom/tencent/mm/ui/player/MusicBannerView;->hcW:Lcom/tencent/mm/ui/player/ScrollAlwaysTextView;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/tencent/mm/ui/player/MusicBannerView;->hcW:Lcom/tencent/mm/ui/player/ScrollAlwaysTextView;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/ui/player/ScrollAlwaysTextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    :cond_0
    return-void
.end method
