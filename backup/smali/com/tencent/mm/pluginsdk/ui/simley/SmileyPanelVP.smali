.class public Lcom/tencent/mm/pluginsdk/ui/simley/SmileyPanelVP;
.super Lcom/tencent/mm/ui/base/CustomViewPager;
.source "SourceFile"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private fsS:Lcom/tencent/mm/pluginsdk/ui/simley/g;

.field private ftR:Lcom/tencent/mm/pluginsdk/ui/simley/p;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/tencent/mm/ui/base/CustomViewPager;-><init>(Landroid/content/Context;)V

    .line 22
    const-string v0, "MicroMsg.SmileyPanel.VP"

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/SmileyPanelVP;->TAG:Ljava/lang/String;

    .line 30
    invoke-direct {p0}, Lcom/tencent/mm/pluginsdk/ui/simley/SmileyPanelVP;->cG()V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/tencent/mm/ui/base/CustomViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    const-string v0, "MicroMsg.SmileyPanel.VP"

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/SmileyPanelVP;->TAG:Ljava/lang/String;

    .line 35
    invoke-direct {p0}, Lcom/tencent/mm/pluginsdk/ui/simley/SmileyPanelVP;->cG()V

    .line 36
    return-void
.end method

.method private cG()V
    .locals 2

    .prologue
    .line 39
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    .line 40
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/tencent/mm/pluginsdk/ui/simley/SmileyPanelVP;->setOverScrollMode(I)V

    .line 42
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v4/view/an;)V
    .locals 0
    .parameter

    .prologue
    .line 74
    invoke-super {p0, p1}, Lcom/tencent/mm/ui/base/CustomViewPager;->a(Landroid/support/v4/view/an;)V

    .line 75
    return-void
.end method

.method public final a(Lcom/tencent/mm/pluginsdk/ui/simley/g;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/tencent/mm/pluginsdk/ui/simley/SmileyPanelVP;->fsS:Lcom/tencent/mm/pluginsdk/ui/simley/g;

    .line 50
    return-void
.end method

.method public final a(Lcom/tencent/mm/pluginsdk/ui/simley/o;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 84
    const/4 v0, 0x2

    if-lt p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Lcom/tencent/mm/pluginsdk/ui/simley/o;->cO(Z)V

    .line 85
    invoke-virtual {p1}, Lcom/tencent/mm/pluginsdk/ui/simley/o;->auG()V

    .line 86
    invoke-super {p0, p1}, Lcom/tencent/mm/ui/base/CustomViewPager;->a(Landroid/support/v4/view/an;)V

    .line 87
    invoke-virtual {p1, v1}, Lcom/tencent/mm/pluginsdk/ui/simley/o;->cO(Z)V

    .line 88
    return-void

    :cond_0
    move v0, v1

    .line 84
    goto :goto_0
.end method

.method public final a(Lcom/tencent/mm/pluginsdk/ui/simley/p;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/tencent/mm/pluginsdk/ui/simley/SmileyPanelVP;->ftR:Lcom/tencent/mm/pluginsdk/ui/simley/p;

    .line 46
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-super {p0, p1, p2, p3, p4}, Lcom/tencent/mm/ui/base/CustomViewPager;->onSizeChanged(IIII)V

    .line 55
    const-string v0, "MicroMsg.SmileyPanel.VP"

    const-string v1, "w: %d, h: %d, oldw: %d, oldh: %d"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/SmileyPanelVP;->fsS:Lcom/tencent/mm/pluginsdk/ui/simley/g;

    if-eqz v0, :cond_0

    if-lez p2, :cond_0

    if-eq p4, p2, :cond_0

    .line 59
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/SmileyPanelVP;->fsS:Lcom/tencent/mm/pluginsdk/ui/simley/g;

    invoke-virtual {v0, p2}, Lcom/tencent/mm/pluginsdk/ui/simley/g;->kI(I)V

    .line 61
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/SmileyPanelVP;->ftR:Lcom/tencent/mm/pluginsdk/ui/simley/p;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/SmileyPanelVP;->ftR:Lcom/tencent/mm/pluginsdk/ui/simley/p;

    invoke-interface {v0}, Lcom/tencent/mm/pluginsdk/ui/simley/p;->auD()V

    .line 66
    :cond_0
    return-void
.end method
