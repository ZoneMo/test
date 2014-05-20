.class public Lcom/tencent/mm/pluginsdk/ui/simley/VPSmileyPanel;
.super Lcom/tencent/mm/pluginsdk/ui/ChatFooterPanel;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/pluginsdk/ui/simley/n;


# static fields
.field public static VERSION:I


# instance fields
.field private final TAG:Ljava/lang/String;

.field private fsS:Lcom/tencent/mm/pluginsdk/ui/simley/g;

.field private ftU:Lcom/tencent/mm/pluginsdk/ui/simley/k;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    sput v0, Lcom/tencent/mm/pluginsdk/ui/simley/VPSmileyPanel;->VERSION:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tencent/mm/pluginsdk/ui/ChatFooterPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    const-string v0, "MicroMsg.SmileyPanel.Main"

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/VPSmileyPanel;->TAG:Ljava/lang/String;

    .line 44
    invoke-direct {p0}, Lcom/tencent/mm/pluginsdk/ui/simley/VPSmileyPanel;->init()V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/tencent/mm/pluginsdk/ui/ChatFooterPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    const-string v0, "MicroMsg.SmileyPanel.Main"

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/VPSmileyPanel;->TAG:Ljava/lang/String;

    .line 49
    invoke-direct {p0}, Lcom/tencent/mm/pluginsdk/ui/simley/VPSmileyPanel;->init()V

    .line 50
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 53
    new-instance v0, Lcom/tencent/mm/pluginsdk/ui/simley/g;

    invoke-direct {v0}, Lcom/tencent/mm/pluginsdk/ui/simley/g;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/VPSmileyPanel;->fsS:Lcom/tencent/mm/pluginsdk/ui/simley/g;

    .line 54
    new-instance v0, Lcom/tencent/mm/pluginsdk/ui/simley/k;

    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/ui/simley/VPSmileyPanel;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/ui/simley/VPSmileyPanel;->fsS:Lcom/tencent/mm/pluginsdk/ui/simley/g;

    invoke-direct {v0, v1, v2, p0}, Lcom/tencent/mm/pluginsdk/ui/simley/k;-><init>(Landroid/content/Context;Lcom/tencent/mm/pluginsdk/ui/simley/g;Lcom/tencent/mm/pluginsdk/ui/simley/n;)V

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/VPSmileyPanel;->ftU:Lcom/tencent/mm/pluginsdk/ui/simley/k;

    .line 55
    sget-object v0, Lcom/tencent/mm/pluginsdk/ui/simley/a;->fsB:Lcom/tencent/mm/pluginsdk/ui/simley/b;

    iget v0, v0, Lcom/tencent/mm/pluginsdk/ui/simley/b;->VERSION:I

    sput v0, Lcom/tencent/mm/pluginsdk/ui/simley/VPSmileyPanel;->VERSION:I

    .line 57
    return-void
.end method


# virtual methods
.method public final aqY()V
    .locals 2

    .prologue
    .line 103
    const-string v0, "MicroMsg.SmileyPanel.Main"

    const-string v1, "dealOrientationChange"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public final aqZ()V
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/VPSmileyPanel;->fki:Lcom/tencent/mm/pluginsdk/ui/h;

    .line 111
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/VPSmileyPanel;->ftU:Lcom/tencent/mm/pluginsdk/ui/simley/k;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/VPSmileyPanel;->ftU:Lcom/tencent/mm/pluginsdk/ui/simley/k;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/simley/k;->aut()V

    .line 114
    :cond_0
    return-void
.end method

.method public final ara()V
    .locals 4

    .prologue
    .line 120
    const-string v0, "MicroMsg.SmileyPanel.Main"

    const-string v1, "vpsmiley ----- reflesh"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    sget v0, Lcom/tencent/mm/pluginsdk/ui/simley/VPSmileyPanel;->VERSION:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/tencent/mm/pluginsdk/ui/simley/VPSmileyPanel;->VERSION:I

    .line 123
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/ui/simley/VPSmileyPanel;->fsS:Lcom/tencent/mm/pluginsdk/ui/simley/g;

    invoke-virtual {v2}, Lcom/tencent/mm/pluginsdk/ui/simley/g;->atF()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    .line 124
    const-string v0, "MicroMsg.SmileyPanel.Main"

    const-string v1, "already refresh so pass reflesh"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/VPSmileyPanel;->fsS:Lcom/tencent/mm/pluginsdk/ui/simley/g;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/simley/g;->atY()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/VPSmileyPanel;->ftU:Lcom/tencent/mm/pluginsdk/ui/simley/k;

    sget-object v1, Lcom/tencent/mm/pluginsdk/ui/simley/f;->fta:Lcom/tencent/mm/pluginsdk/ui/simley/f;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/pluginsdk/ui/simley/k;->a(Lcom/tencent/mm/pluginsdk/ui/simley/f;)V

    goto :goto_0
.end method

.method public final arb()V
    .locals 2

    .prologue
    .line 149
    const-string v0, "MicroMsg.SmileyPanel.Main"

    const-string v1, "vpsmiley ----- hideCustomBtn"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/VPSmileyPanel;->fsS:Lcom/tencent/mm/pluginsdk/ui/simley/g;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/simley/g;->auh()V

    .line 153
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/VPSmileyPanel;->ftU:Lcom/tencent/mm/pluginsdk/ui/simley/k;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/simley/k;->auC()V

    .line 154
    return-void
.end method

.method public final aty()Lcom/tencent/mm/pluginsdk/ui/aw;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/VPSmileyPanel;->fkj:Lcom/tencent/mm/pluginsdk/ui/chat/ar;

    check-cast v0, Lcom/tencent/mm/pluginsdk/ui/aw;

    return-object v0
.end method

.method public final auE()Lcom/tencent/mm/pluginsdk/ui/h;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/VPSmileyPanel;->fki:Lcom/tencent/mm/pluginsdk/ui/h;

    return-object v0
.end method

.method public final auJ()V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/VPSmileyPanel;->fsS:Lcom/tencent/mm/pluginsdk/ui/simley/g;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/simley/g;->aua()V

    .line 135
    return-void
.end method

.method public final auK()I
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/VPSmileyPanel;->fsS:Lcom/tencent/mm/pluginsdk/ui/simley/g;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/simley/g;->aui()I

    move-result v0

    return v0
.end method

.method public final ch(Z)V
    .locals 1
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/VPSmileyPanel;->ftU:Lcom/tencent/mm/pluginsdk/ui/simley/k;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/pluginsdk/ui/simley/k;->cN(Z)V

    .line 98
    return-void
.end method

.method public final ci(Z)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 160
    const-string v0, "MicroMsg.SmileyPanel.Main"

    const-string v1, "vpsmiley ----- hideQQSmiley: %B, hideEmojiSmiley: %B"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 161
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/VPSmileyPanel;->fsS:Lcom/tencent/mm/pluginsdk/ui/simley/g;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/pluginsdk/ui/simley/g;->cH(Z)V

    .line 162
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/VPSmileyPanel;->fsS:Lcom/tencent/mm/pluginsdk/ui/simley/g;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/simley/g;->atT()V

    .line 163
    return-void
.end method

.method public final cj(Z)V
    .locals 2
    .parameter

    .prologue
    .line 167
    const-string v0, "MicroMsg.SmileyPanel.Main"

    const-string v1, "vpsmiley ----- hideSendButton"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/VPSmileyPanel;->ftU:Lcom/tencent/mm/pluginsdk/ui/simley/k;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/pluginsdk/ui/simley/k;->cM(Z)V

    .line 169
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/VPSmileyPanel;->fsS:Lcom/tencent/mm/pluginsdk/ui/simley/g;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/pluginsdk/ui/simley/g;->cI(Z)V

    .line 170
    return-void
.end method

.method public final destroy()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/VPSmileyPanel;->ftU:Lcom/tencent/mm/pluginsdk/ui/simley/k;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/VPSmileyPanel;->ftU:Lcom/tencent/mm/pluginsdk/ui/simley/k;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/simley/k;->aus()V

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/VPSmileyPanel;->fsS:Lcom/tencent/mm/pluginsdk/ui/simley/g;

    if-eqz v0, :cond_1

    .line 89
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/VPSmileyPanel;->fsS:Lcom/tencent/mm/pluginsdk/ui/simley/g;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/simley/g;->auk()V

    .line 92
    :cond_1
    return-void
.end method

.method public final kR(I)V
    .locals 5
    .parameter

    .prologue
    .line 191
    const-string v0, "MicroMsg.SmileyPanel.Main"

    const-string v1, "vpsmiley ----- setPortHeightPx: %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 192
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/VPSmileyPanel;->fsS:Lcom/tencent/mm/pluginsdk/ui/simley/g;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/pluginsdk/ui/simley/g;->kN(I)V

    .line 193
    return-void
.end method

.method public final onPause()V
    .locals 2

    .prologue
    .line 74
    const-string v0, "MicroMsg.SmileyPanel.Main"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/VPSmileyPanel;->fsS:Lcom/tencent/mm/pluginsdk/ui/simley/g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/pluginsdk/ui/simley/g;->cL(Z)V

    .line 78
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/VPSmileyPanel;->fsS:Lcom/tencent/mm/pluginsdk/ui/simley/g;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/simley/g;->atN()V

    .line 79
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/VPSmileyPanel;->fsS:Lcom/tencent/mm/pluginsdk/ui/simley/g;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/simley/g;->atK()V

    .line 81
    return-void
.end method

.method public final onResume()V
    .locals 2

    .prologue
    .line 61
    const-string v0, "MicroMsg.SmileyPanel.Main"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/VPSmileyPanel;->fsS:Lcom/tencent/mm/pluginsdk/ui/simley/g;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/pluginsdk/ui/simley/g;->cL(Z)V

    .line 63
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/VPSmileyPanel;->fsS:Lcom/tencent/mm/pluginsdk/ui/simley/g;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/simley/g;->atM()V

    .line 64
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/VPSmileyPanel;->fsS:Lcom/tencent/mm/pluginsdk/ui/simley/g;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/simley/g;->atL()V

    .line 66
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/VPSmileyPanel;->ftU:Lcom/tencent/mm/pluginsdk/ui/simley/k;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/simley/k;->auq()V

    .line 69
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 201
    invoke-super {p0, p1, p2, p3, p4}, Lcom/tencent/mm/pluginsdk/ui/ChatFooterPanel;->onSizeChanged(IIII)V

    .line 202
    return-void
.end method

.method public final reset()V
    .locals 2

    .prologue
    .line 140
    const-string v0, "MicroMsg.SmileyPanel.Main"

    const-string v1, "vpsmiley ----- reset"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/VPSmileyPanel;->fsS:Lcom/tencent/mm/pluginsdk/ui/simley/g;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/simley/g;->atY()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/VPSmileyPanel;->ftU:Lcom/tencent/mm/pluginsdk/ui/simley/k;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/simley/k;->auB()V

    .line 144
    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .parameter

    .prologue
    .line 206
    invoke-super {p0, p1}, Lcom/tencent/mm/pluginsdk/ui/ChatFooterPanel;->setVisibility(I)V

    .line 207
    if-nez p1, :cond_0

    .line 209
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/VPSmileyPanel;->ftU:Lcom/tencent/mm/pluginsdk/ui/simley/k;

    invoke-virtual {v0, p0}, Lcom/tencent/mm/pluginsdk/ui/simley/k;->d(Landroid/view/ViewGroup;)V

    .line 212
    :cond_0
    return-void
.end method
