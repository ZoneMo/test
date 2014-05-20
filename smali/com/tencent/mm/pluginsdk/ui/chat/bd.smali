.class public final Lcom/tencent/mm/pluginsdk/ui/chat/bd;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private dey:Landroid/view/View;

.field private fep:Landroid/view/View;

.field private fkl:Lcom/tencent/mm/pluginsdk/ui/EmojiView;

.field private fqk:Lcom/tencent/mm/pluginsdk/ui/chat/bi;

.field private frc:Lcom/tencent/mm/storage/y;

.field private frd:Lcom/tencent/mm/ui/base/ce;

.field private fre:Landroid/view/View;

.field private frf:Landroid/view/View;

.field private frg:Landroid/view/View;

.field private frh:Lcom/tencent/mm/pluginsdk/ui/aw;

.field private fri:Ljava/lang/String;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/tencent/mm/pluginsdk/ui/chat/bd;->mContext:Landroid/content/Context;

    .line 56
    iput-object p2, p0, Lcom/tencent/mm/pluginsdk/ui/chat/bd;->dey:Landroid/view/View;

    .line 57
    iput-object p3, p0, Lcom/tencent/mm/pluginsdk/ui/chat/bd;->fre:Landroid/view/View;

    .line 58
    iput-object p4, p0, Lcom/tencent/mm/pluginsdk/ui/chat/bd;->frf:Landroid/view/View;

    .line 59
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/bd;->mContext:Landroid/content/Context;

    sget v1, Lcom/tencent/mm/k;->aTa:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/bd;->fep:Landroid/view/View;

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/bd;->fep:Landroid/view/View;

    sget v1, Lcom/tencent/mm/i;->aMy:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/bd;->fkl:Lcom/tencent/mm/pluginsdk/ui/EmojiView;

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/bd;->mContext:Landroid/content/Context;

    sget v1, Lcom/tencent/mm/g;->abt:I

    invoke-static {v0, v1}, Lcom/tencent/mm/an/a;->l(Landroid/content/Context;I)I

    move-result v0

    new-instance v1, Lcom/tencent/mm/ui/base/ce;

    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/ui/chat/bd;->fep:Landroid/view/View;

    invoke-direct {v1, v2, v0, v0, v3}, Lcom/tencent/mm/ui/base/ce;-><init>(Landroid/view/View;IIB)V

    iput-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/chat/bd;->frd:Lcom/tencent/mm/ui/base/ce;

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/bd;->frd:Lcom/tencent/mm/ui/base/ce;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/ce;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/bd;->frd:Lcom/tencent/mm/ui/base/ce;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/ce;->setOutsideTouchable(Z)V

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/bd;->frd:Lcom/tencent/mm/ui/base/ce;

    invoke-virtual {v0, v3}, Lcom/tencent/mm/ui/base/ce;->setFocusable(Z)V

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/bd;->fep:Landroid/view/View;

    new-instance v1, Lcom/tencent/mm/pluginsdk/ui/chat/be;

    invoke-direct {v1, p0}, Lcom/tencent/mm/pluginsdk/ui/chat/be;-><init>(Lcom/tencent/mm/pluginsdk/ui/chat/bd;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/pluginsdk/ui/chat/bd;)Lcom/tencent/mm/storage/y;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/bd;->frc:Lcom/tencent/mm/storage/y;

    return-object v0
.end method

.method private atf()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 106
    .line 108
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/bd;->frg:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 112
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 113
    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/chat/bd;->frg:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 115
    aget v1, v0, v4

    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/ui/chat/bd;->frd:Lcom/tencent/mm/ui/base/ce;

    invoke-virtual {v2}, Lcom/tencent/mm/ui/base/ce;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/tencent/mm/pluginsdk/ui/chat/bd;->frg:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    .line 116
    const/4 v2, 0x1

    aget v0, v0, v2

    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/ui/chat/bd;->frd:Lcom/tencent/mm/ui/base/ce;

    invoke-virtual {v2}, Lcom/tencent/mm/ui/base/ce;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    .line 120
    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/ui/chat/bd;->frd:Lcom/tencent/mm/ui/base/ce;

    iget-object v3, p0, Lcom/tencent/mm/pluginsdk/ui/chat/bd;->frg:Landroid/view/View;

    invoke-virtual {v2, v3, v4, v1, v0}, Lcom/tencent/mm/ui/base/ce;->showAtLocation(Landroid/view/View;III)V

    .line 122
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/tencent/mm/pluginsdk/ui/chat/bd;)Lcom/tencent/mm/pluginsdk/ui/aw;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/bd;->frh:Lcom/tencent/mm/pluginsdk/ui/aw;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/mm/pluginsdk/ui/chat/bd;)Lcom/tencent/mm/pluginsdk/ui/chat/bi;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/bd;->fqk:Lcom/tencent/mm/pluginsdk/ui/chat/bi;

    return-object v0
.end method

.method static synthetic d(Lcom/tencent/mm/pluginsdk/ui/chat/bd;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/bd;->fri:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/tencent/mm/pluginsdk/ui/chat/bd;)Lcom/tencent/mm/ui/base/ce;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/bd;->frd:Lcom/tencent/mm/ui/base/ce;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/pluginsdk/ui/chat/bi;)V
    .locals 0
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/tencent/mm/pluginsdk/ui/chat/bd;->fqk:Lcom/tencent/mm/pluginsdk/ui/chat/bi;

    .line 95
    return-void
.end method

.method public final ab(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/tencent/mm/pluginsdk/ui/chat/bd;->frg:Landroid/view/View;

    .line 64
    return-void
.end method

.method public final ay(Ljava/lang/String;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 164
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 165
    iput-object p1, p0, Lcom/tencent/mm/pluginsdk/ui/chat/bd;->fri:Ljava/lang/String;

    .line 166
    invoke-static {}, Lcom/tencent/mm/pluginsdk/h;->apj()Lcom/tencent/mm/pluginsdk/i;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/tencent/mm/pluginsdk/i;->ji(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 167
    invoke-static {}, Lcom/tencent/mm/pluginsdk/h;->apj()Lcom/tencent/mm/pluginsdk/i;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/tencent/mm/pluginsdk/i;->ja(Ljava/lang/String;)Lcom/tencent/mm/storage/y;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/chat/bd;->frc:Lcom/tencent/mm/storage/y;

    .line 168
    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/chat/bd;->frc:Lcom/tencent/mm/storage/y;

    if-nez v1, :cond_1

    .line 170
    :cond_0
    :goto_0
    return v0

    .line 168
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final c(Lcom/tencent/mm/pluginsdk/ui/aw;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/tencent/mm/pluginsdk/ui/chat/bd;->frh:Lcom/tencent/mm/pluginsdk/ui/aw;

    .line 91
    return-void
.end method

.method public final hide()V
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/bd;->frd:Lcom/tencent/mm/ui/base/ce;

    if-nez v0, :cond_0

    .line 161
    :goto_0
    return-void

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/bd;->frd:Lcom/tencent/mm/ui/base/ce;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/ce;->dismiss()V

    goto :goto_0
.end method

.method public final qP(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 174
    new-instance v0, Lcom/tencent/mm/pluginsdk/ui/chat/bg;

    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/chat/bd;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/tencent/mm/pluginsdk/ui/chat/bg;-><init>(Lcom/tencent/mm/pluginsdk/ui/chat/bd;Landroid/os/Looper;)V

    .line 181
    new-instance v1, Lcom/tencent/mm/pluginsdk/ui/chat/bh;

    invoke-direct {v1, p0, p1, v0}, Lcom/tencent/mm/pluginsdk/ui/chat/bh;-><init>(Lcom/tencent/mm/pluginsdk/ui/chat/bd;Ljava/lang/String;Landroid/os/Handler;)V

    invoke-virtual {v1}, Lcom/tencent/mm/pluginsdk/ui/chat/bh;->start()V

    .line 191
    return-void
.end method

.method public final show()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 133
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/bd;->frc:Lcom/tencent/mm/storage/y;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/bd;->fkl:Lcom/tencent/mm/pluginsdk/ui/EmojiView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/bd;->frd:Lcom/tencent/mm/ui/base/ce;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/bd;->dey:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/bd;->fre:Landroid/view/View;

    if-nez v0, :cond_1

    .line 134
    :cond_0
    const-string v0, "MicroMsg.SuggestEmoticonBubble"

    const-string v1, "some thing is null."

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    :goto_0
    return-void

    .line 137
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/bd;->fkl:Lcom/tencent/mm/pluginsdk/ui/EmojiView;

    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/chat/bd;->frc:Lcom/tencent/mm/storage/y;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->j(Lcom/tencent/mm/storage/y;)V

    .line 143
    invoke-direct {p0}, Lcom/tencent/mm/pluginsdk/ui/chat/bd;->atf()V

    .line 145
    new-instance v0, Lcom/tencent/mm/sdk/platformtools/ay;

    new-instance v1, Lcom/tencent/mm/pluginsdk/ui/chat/bf;

    invoke-direct {v1, p0}, Lcom/tencent/mm/pluginsdk/ui/chat/bf;-><init>(Lcom/tencent/mm/pluginsdk/ui/chat/bd;)V

    invoke-direct {v0, v1, v4}, Lcom/tencent/mm/sdk/platformtools/ay;-><init>(Lcom/tencent/mm/sdk/platformtools/az;Z)V

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/ay;->bO(J)V

    .line 153
    sget-object v0, Lcom/tencent/mm/plugin/d/c/m;->dZN:Lcom/tencent/mm/plugin/d/c/m;

    const/16 v1, 0x2af2

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/tencent/mm/pluginsdk/ui/chat/bd;->fri:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/plugin/d/c/m;->d(I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final update()V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/bd;->frd:Lcom/tencent/mm/ui/base/ce;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/ce;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/bd;->frd:Lcom/tencent/mm/ui/base/ce;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/ce;->dismiss()V

    .line 127
    invoke-direct {p0}, Lcom/tencent/mm/pluginsdk/ui/chat/bd;->atf()V

    .line 130
    :cond_0
    return-void
.end method
