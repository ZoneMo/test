.class public final Lcom/tencent/mm/ui/chatting/fv;
.super Lcom/tencent/mm/ui/bc;
.source "SourceFile"


# instance fields
.field private bNl:Ljava/lang/String;

.field private cTj:Ljava/lang/String;

.field private clp:Ljava/lang/String;

.field private gJU:Z

.field private gOB:Lcom/tencent/mm/ui/chatting/fw;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tencent/mm/storage/ak;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/tencent/mm/ui/bc;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    .line 39
    iput-object p3, p0, Lcom/tencent/mm/ui/chatting/fv;->bNl:Ljava/lang/String;

    .line 40
    iput-object p4, p0, Lcom/tencent/mm/ui/chatting/fv;->clp:Ljava/lang/String;

    .line 41
    iput-boolean p5, p0, Lcom/tencent/mm/ui/chatting/fv;->gJU:Z

    .line 42
    return-void
.end method

.method private F(Lcom/tencent/mm/storage/ak;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 95
    invoke-virtual {p1}, Lcom/tencent/mm/storage/ak;->rO()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/fv;->clp:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/fv;->bNl:Ljava/lang/String;

    goto :goto_0
.end method

.method private G(Lcom/tencent/mm/storage/ak;)Ljava/lang/CharSequence;
    .locals 4
    .parameter

    .prologue
    .line 126
    invoke-virtual {p1}, Lcom/tencent/mm/storage/ak;->DL()J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/fv;->context:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/tencent/mm/storage/ak;->DL()J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/mm/pluginsdk/e/e;->b(Landroid/content/Context;JZ)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final FZ()V
    .locals 3

    .prologue
    .line 100
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sw()Lcom/tencent/mm/storage/ap;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/fv;->bNl:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/fv;->cTj:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/storage/ap;->aV(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/fv;->setCursor(Landroid/database/Cursor;)V

    .line 101
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/fv;->gOB:Lcom/tencent/mm/ui/chatting/fw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/fv;->cTj:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/fv;->gOB:Lcom/tencent/mm/ui/chatting/fw;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/fv;->getCount()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/chatting/fw;->nA(I)V

    .line 104
    :cond_0
    invoke-super {p0}, Lcom/tencent/mm/ui/bc;->notifyDataSetChanged()V

    .line 105
    return-void
.end method

.method protected final Ga()V
    .locals 0

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/fv;->closeCursor()V

    .line 110
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/fv;->FZ()V

    .line 111
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 22
    check-cast p1, Lcom/tencent/mm/storage/ak;

    if-nez p1, :cond_0

    new-instance p1, Lcom/tencent/mm/storage/ak;

    invoke-direct {p1}, Lcom/tencent/mm/storage/ak;-><init>()V

    :cond_0
    invoke-virtual {p1, p2}, Lcom/tencent/mm/storage/ak;->convertFrom(Landroid/database/Cursor;)V

    return-object p1
.end method

.method public final a(Lcom/tencent/mm/ui/chatting/fw;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/fv;->gOB:Lcom/tencent/mm/ui/chatting/fw;

    .line 35
    return-void
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 46
    if-nez p2, :cond_2

    .line 48
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/fv;->context:Landroid/content/Context;

    const v1, 0x7f030268

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 49
    new-instance v1, Lcom/tencent/mm/ui/chatting/fx;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/tencent/mm/ui/chatting/fx;-><init>(B)V

    .line 50
    const v0, 0x7f0a0290

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/tencent/mm/ui/chatting/fx;->cMS:Landroid/widget/ImageView;

    .line 51
    const v0, 0x7f0a0292

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/tencent/mm/ui/chatting/fx;->cPP:Landroid/widget/TextView;

    .line 52
    const v0, 0x7f0a0293

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/tencent/mm/ui/chatting/fx;->cPQ:Landroid/widget/TextView;

    .line 53
    const v0, 0x7f0a0714

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/tencent/mm/ui/chatting/fx;->gOC:Landroid/widget/TextView;

    .line 54
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 59
    :goto_0
    invoke-virtual {p0, p1}, Lcom/tencent/mm/ui/chatting/fv;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/storage/ak;

    .line 60
    if-eqz v0, :cond_1

    .line 61
    iget-boolean v2, p0, Lcom/tencent/mm/ui/chatting/fv;->gJU:Z

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->rO()I

    move-result v2

    if-nez v2, :cond_3

    .line 62
    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->getContent()Ljava/lang/String;

    move-result-object v2

    .line 63
    invoke-static {v2}, Lcom/tencent/mm/model/bv;->dy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 64
    invoke-static {v3}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 65
    iget-object v4, v1, Lcom/tencent/mm/ui/chatting/fx;->cMS:Landroid/widget/ImageView;

    invoke-static {v4, v3}, Lcom/tencent/mm/pluginsdk/ui/c;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 66
    iget-object v4, v1, Lcom/tencent/mm/ui/chatting/fx;->cPP:Landroid/widget/TextView;

    iget-object v5, v1, Lcom/tencent/mm/ui/chatting/fx;->cPP:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/tencent/mm/ui/chatting/fv;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/tencent/mm/model/w;->cu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v6, v1, Lcom/tencent/mm/ui/chatting/fx;->cPP:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getTextSize()F

    move-result v6

    float-to-int v6, v6

    invoke-static {v5, v3, v6}, Lcom/tencent/mm/ao/b;->e(Landroid/content/Context;Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    :cond_0
    iget-object v3, v1, Lcom/tencent/mm/ui/chatting/fx;->cPQ:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/chatting/fv;->G(Lcom/tencent/mm/storage/ak;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    invoke-static {v2}, Lcom/tencent/mm/model/bv;->dz(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    iget-object v2, v1, Lcom/tencent/mm/ui/chatting/fx;->gOC:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/tencent/mm/ui/chatting/fx;->gOC:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/tencent/mm/ui/chatting/fv;->context:Landroid/content/Context;

    iget-object v1, v1, Lcom/tencent/mm/ui/chatting/fx;->gOC:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    float-to-int v1, v1

    invoke-static {v3, v0, v1}, Lcom/tencent/mm/ao/b;->c(Landroid/content/Context;Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    :cond_1
    :goto_1
    return-object p2

    .line 56
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/chatting/fx;

    move-object v1, v0

    goto :goto_0

    .line 72
    :cond_3
    iget-object v2, v1, Lcom/tencent/mm/ui/chatting/fx;->cMS:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/chatting/fv;->F(Lcom/tencent/mm/storage/ak;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/mm/pluginsdk/ui/c;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 73
    iget-object v2, v1, Lcom/tencent/mm/ui/chatting/fx;->cPP:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/tencent/mm/ui/chatting/fx;->cPP:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/tencent/mm/ui/chatting/fv;->context:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/chatting/fv;->F(Lcom/tencent/mm/storage/ak;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/mm/model/w;->cu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Lcom/tencent/mm/ui/chatting/fx;->cPP:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getTextSize()F

    move-result v5

    float-to-int v5, v5

    invoke-static {v3, v4, v5}, Lcom/tencent/mm/ao/b;->e(Landroid/content/Context;Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v2, v1, Lcom/tencent/mm/ui/chatting/fx;->cPQ:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/chatting/fv;->G(Lcom/tencent/mm/storage/ak;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v2, v1, Lcom/tencent/mm/ui/chatting/fx;->gOC:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/tencent/mm/ui/chatting/fx;->gOC:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/tencent/mm/ui/chatting/fv;->context:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->getContent()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v1, Lcom/tencent/mm/ui/chatting/fx;->gOC:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    float-to-int v1, v1

    invoke-static {v3, v0, v1}, Lcom/tencent/mm/ao/b;->c(Landroid/content/Context;Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public final ih(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/fv;->cTj:Ljava/lang/String;

    .line 88
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/fv;->cTj:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/fv;->closeCursor()V

    .line 90
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/fv;->FZ()V

    .line 92
    :cond_0
    return-void
.end method
