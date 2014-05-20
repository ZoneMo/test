.class public final Lcom/tencent/mm/pluginsdk/ui/chat/bj;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private eDW:Landroid/widget/Button;

.field private fmA:I

.field private frk:Lcom/tencent/mm/pluginsdk/ui/VoiceSearchLayout;

.field private frl:Landroid/widget/Button;

.field private frm:Lcom/tencent/mm/pluginsdk/ui/chat/bn;

.field private frn:Lcom/tencent/mm/pluginsdk/ui/bh;

.field private fro:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 72
    new-instance v0, Lcom/tencent/mm/pluginsdk/ui/chat/bm;

    invoke-direct {v0, p0}, Lcom/tencent/mm/pluginsdk/ui/chat/bm;-><init>(Lcom/tencent/mm/pluginsdk/ui/chat/bj;)V

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/bj;->frn:Lcom/tencent/mm/pluginsdk/ui/bh;

    .line 122
    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/ui/chat/bj;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0xd7

    invoke-static {v0, v1}, Lcom/tencent/mm/an/a;->fromDPToPix(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/bj;->fmA:I

    .line 124
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/bj;->fro:Z

    .line 33
    invoke-direct {p0}, Lcom/tencent/mm/pluginsdk/ui/chat/bj;->init()V

    .line 34
    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/pluginsdk/ui/chat/bj;)Lcom/tencent/mm/pluginsdk/ui/chat/bn;
    .locals 1
    .parameter

    .prologue
    .line 16
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/bj;->frm:Lcom/tencent/mm/pluginsdk/ui/chat/bn;

    return-object v0
.end method

.method static synthetic b(Lcom/tencent/mm/pluginsdk/ui/chat/bj;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 16
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/bj;->frl:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/mm/pluginsdk/ui/chat/bj;)V
    .locals 0
    .parameter

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/tencent/mm/pluginsdk/ui/chat/bj;->init()V

    return-void
.end method

.method private init()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 39
    const-string v0, "MicroMsg.VoiceInputPanel"

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/ui/chat/bj;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/tencent/mm/k;->bbk:I

    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 42
    sget v0, Lcom/tencent/mm/i;->apE:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/pluginsdk/ui/chat/bj;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/bj;->frl:Landroid/widget/Button;

    .line 43
    sget v0, Lcom/tencent/mm/i;->aIU:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/pluginsdk/ui/chat/bj;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/bj;->eDW:Landroid/widget/Button;

    .line 45
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/bj;->frl:Landroid/widget/Button;

    new-instance v1, Lcom/tencent/mm/pluginsdk/ui/chat/bk;

    invoke-direct {v1, p0}, Lcom/tencent/mm/pluginsdk/ui/chat/bk;-><init>(Lcom/tencent/mm/pluginsdk/ui/chat/bj;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/bj;->eDW:Landroid/widget/Button;

    new-instance v1, Lcom/tencent/mm/pluginsdk/ui/chat/bl;

    invoke-direct {v1, p0}, Lcom/tencent/mm/pluginsdk/ui/chat/bl;-><init>(Lcom/tencent/mm/pluginsdk/ui/chat/bj;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    const/16 v0, 0x10

    invoke-static {v0}, Lcom/tencent/mm/compatible/g/g;->bG(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    sget v0, Lcom/tencent/mm/i;->aPf:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/pluginsdk/ui/chat/bj;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 70
    :goto_0
    return-void

    .line 68
    :cond_0
    sget v0, Lcom/tencent/mm/i;->aPf:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/pluginsdk/ui/chat/bj;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/pluginsdk/ui/chat/bn;)V
    .locals 0
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/tencent/mm/pluginsdk/ui/chat/bj;->frm:Lcom/tencent/mm/pluginsdk/ui/chat/bn;

    .line 101
    return-void
.end method

.method public final asr()V
    .locals 4

    .prologue
    .line 134
    iget-boolean v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/bj;->fro:Z

    if-eqz v0, :cond_1

    .line 135
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/bj;->fro:Z

    .line 136
    sget v0, Lcom/tencent/mm/i;->aON:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/pluginsdk/ui/chat/bj;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 137
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 138
    iget v2, p0, Lcom/tencent/mm/pluginsdk/ui/chat/bj;->fmA:I

    .line 139
    if-nez v0, :cond_0

    .line 141
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v0, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 143
    :cond_0
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 145
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 147
    :cond_1
    return-void
.end method

.method public final atg()V
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/bj;->frk:Lcom/tencent/mm/pluginsdk/ui/VoiceSearchLayout;

    if-nez v0, :cond_0

    .line 105
    sget v0, Lcom/tencent/mm/i;->aPe:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/pluginsdk/ui/chat/bj;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/pluginsdk/ui/VoiceSearchLayout;

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/bj;->frk:Lcom/tencent/mm/pluginsdk/ui/VoiceSearchLayout;

    .line 106
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/bj;->frk:Lcom/tencent/mm/pluginsdk/ui/VoiceSearchLayout;

    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/chat/bj;->frn:Lcom/tencent/mm/pluginsdk/ui/bh;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/pluginsdk/ui/VoiceSearchLayout;->a(Lcom/tencent/mm/pluginsdk/ui/bh;)V

    .line 107
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/bj;->frk:Lcom/tencent/mm/pluginsdk/ui/VoiceSearchLayout;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/VoiceSearchLayout;->arL()V

    .line 108
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/bj;->frk:Lcom/tencent/mm/pluginsdk/ui/VoiceSearchLayout;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/VoiceSearchLayout;->arM()V

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/bj;->frk:Lcom/tencent/mm/pluginsdk/ui/VoiceSearchLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/pluginsdk/ui/VoiceSearchLayout;->ki(I)V

    .line 112
    return-void
.end method

.method public final ath()V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/bj;->eDW:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 120
    return-void
.end method

.method public final kF(I)V
    .locals 1
    .parameter

    .prologue
    .line 127
    iget v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/bj;->fmA:I

    if-eq v0, p1, :cond_0

    .line 128
    iput p1, p0, Lcom/tencent/mm/pluginsdk/ui/chat/bj;->fmA:I

    .line 129
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/bj;->fro:Z

    .line 131
    :cond_0
    return-void
.end method

.method public final reset()V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/bj;->frk:Lcom/tencent/mm/pluginsdk/ui/VoiceSearchLayout;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/VoiceSearchLayout;->arO()V

    .line 116
    return-void
.end method
