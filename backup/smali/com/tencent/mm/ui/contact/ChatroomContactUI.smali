.class public Lcom/tencent/mm/ui/contact/ChatroomContactUI;
.super Lcom/tencent/mm/ui/MMActivity;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/n/m;


# instance fields
.field private dir:Landroid/widget/TextView;

.field private gSA:Landroid/widget/ListView;

.field private gSE:Lcom/tencent/mm/ui/voicesearch/j;

.field private gSO:Lcom/tencent/mm/ui/contact/ContactCountView;

.field private gTj:Lcom/tencent/mm/pluginsdk/ui/tools/u;

.field private gTk:Lcom/tencent/mm/ui/contact/ap;

.field private gmc:Lcom/tencent/mm/pluginsdk/ui/VoiceSearchLayout;

.field private goY:Lcom/tencent/mm/pluginsdk/ui/e;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/tencent/mm/ui/MMActivity;-><init>()V

    .line 69
    new-instance v0, Lcom/tencent/mm/pluginsdk/ui/e;

    new-instance v1, Lcom/tencent/mm/ui/contact/av;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/contact/av;-><init>(Lcom/tencent/mm/ui/contact/ChatroomContactUI;)V

    invoke-direct {v0, v1}, Lcom/tencent/mm/pluginsdk/ui/e;-><init>(Landroid/widget/AbsListView$OnScrollListener;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/ChatroomContactUI;->goY:Lcom/tencent/mm/pluginsdk/ui/e;

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/contact/ChatroomContactUI;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ChatroomContactUI;->gSA:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/mm/ui/contact/ChatroomContactUI;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 54
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ChatroomContactUI;->gSO:Lcom/tencent/mm/ui/contact/ContactCountView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ChatroomContactUI;->gSO:Lcom/tencent/mm/ui/contact/ContactCountView;

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/contact/ContactCountView;->setVisible(Z)V

    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ChatroomContactUI;->gSA:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ChatroomContactUI;->gTk:Lcom/tencent/mm/ui/contact/ap;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ChatroomContactUI;->gTk:Lcom/tencent/mm/ui/contact/ap;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/contact/ap;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ChatroomContactUI;->gSE:Lcom/tencent/mm/ui/voicesearch/j;

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/voicesearch/j;->eA(Z)V

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ChatroomContactUI;->gTk:Lcom/tencent/mm/ui/contact/ap;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/contact/ap;->FZ()V

    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ChatroomContactUI;->gSO:Lcom/tencent/mm/ui/contact/ContactCountView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ChatroomContactUI;->gSO:Lcom/tencent/mm/ui/contact/ContactCountView;

    invoke-virtual {v0, v3}, Lcom/tencent/mm/ui/contact/ContactCountView;->setVisible(Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ChatroomContactUI;->gSA:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ChatroomContactUI;->gSE:Lcom/tencent/mm/ui/voicesearch/j;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ChatroomContactUI;->gSE:Lcom/tencent/mm/ui/voicesearch/j;

    invoke-virtual {v0, v3}, Lcom/tencent/mm/ui/voicesearch/j;->eA(Z)V

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ChatroomContactUI;->gSE:Lcom/tencent/mm/ui/voicesearch/j;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/ui/voicesearch/j;->ih(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ChatroomContactUI;->gSE:Lcom/tencent/mm/ui/voicesearch/j;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/voicesearch/j;->notifyDataSetChanged()V

    goto :goto_1
.end method

.method private akH()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 536
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ChatroomContactUI;->gTk:Lcom/tencent/mm/ui/contact/ap;

    if-eqz v0, :cond_0

    .line 537
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ChatroomContactUI;->gTk:Lcom/tencent/mm/ui/contact/ap;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/contact/ap;->ca(Ljava/lang/String;)V

    .line 539
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ChatroomContactUI;->gSE:Lcom/tencent/mm/ui/voicesearch/j;

    if-eqz v0, :cond_1

    .line 540
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ChatroomContactUI;->gSE:Lcom/tencent/mm/ui/voicesearch/j;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/voicesearch/j;->ca(Ljava/lang/String;)V

    .line 542
    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/tencent/mm/ui/contact/ChatroomContactUI;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/tencent/mm/ui/contact/ChatroomContactUI;->akH()V

    return-void
.end method

.method static synthetic b(Lcom/tencent/mm/ui/contact/ChatroomContactUI;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 54
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Lcom/tencent/mm/model/w;->cT(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "MicroMsg.ChatroomContactUI"

    const-string v1, "error, 4.5 do not contain this contact %s"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "Contact_User"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p1}, Lcom/tencent/mm/model/w;->cr(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "Is_group_card"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_3
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-static {v0, p1}, Lcom/tencent/mm/ui/contact/bh;->b(Landroid/content/Intent;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/contact/ChatroomContactUI;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/tencent/mm/ui/contact/ChatroomContactUI;)Lcom/tencent/mm/ui/voicesearch/j;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ChatroomContactUI;->gSE:Lcom/tencent/mm/ui/voicesearch/j;

    return-object v0
.end method

.method static synthetic d(Lcom/tencent/mm/ui/contact/ChatroomContactUI;)Lcom/tencent/mm/pluginsdk/ui/tools/u;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ChatroomContactUI;->gTj:Lcom/tencent/mm/pluginsdk/ui/tools/u;

    return-object v0
.end method

.method static synthetic e(Lcom/tencent/mm/ui/contact/ChatroomContactUI;)Lcom/tencent/mm/ui/contact/ap;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ChatroomContactUI;->gTk:Lcom/tencent/mm/ui/contact/ap;

    return-object v0
.end method

.method static synthetic wJ(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 54
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/mm/storage/k;->tO(Ljava/lang/String;)Lcom/tencent/mm/storage/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->qJ()V

    invoke-static {v0}, Lcom/tencent/mm/model/w;->n(Lcom/tencent/mm/storage/i;)V

    invoke-static {p0}, Lcom/tencent/mm/model/w;->cp(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/mm/storage/k;->tU(Ljava/lang/String;)I

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sA()Lcom/tencent/mm/storage/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/mm/storage/c;->tx(Ljava/lang/String;)Z

    :goto_0
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/z/i;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Lcom/tencent/mm/z/i;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    return-void

    :cond_0
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/tencent/mm/storage/k;->a(Ljava/lang/String;Lcom/tencent/mm/storage/i;)I

    goto :goto_0
.end method


# virtual methods
.method public final FR()V
    .locals 8

    .prologue
    const/16 v7, 0x28

    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 100
    const v0, 0x7f0a0070

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/contact/ChatroomContactUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 102
    const v0, 0x7f0a006f

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/contact/ChatroomContactUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/ChatroomContactUI;->gSA:Landroid/widget/ListView;

    .line 103
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ChatroomContactUI;->gSA:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 105
    const v0, 0x7f0a0070

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/contact/ChatroomContactUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/ChatroomContactUI;->dir:Landroid/widget/TextView;

    .line 106
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ChatroomContactUI;->dir:Landroid/widget/TextView;

    const v1, 0x7f0703e8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 108
    const-string v0, "@all.chatroom.contact"

    .line 110
    new-instance v1, Lcom/tencent/mm/ui/contact/ap;

    invoke-direct {v1, p0, v0}, Lcom/tencent/mm/ui/contact/ap;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/tencent/mm/ui/contact/ChatroomContactUI;->gTk:Lcom/tencent/mm/ui/contact/ap;

    .line 111
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ChatroomContactUI;->gTk:Lcom/tencent/mm/ui/contact/ap;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/contact/ap;->aEJ()V

    .line 113
    new-instance v1, Lcom/tencent/mm/ui/voicesearch/j;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/ChatroomContactUI;->aal()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, v5}, Lcom/tencent/mm/ui/voicesearch/j;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/tencent/mm/ui/contact/ChatroomContactUI;->gSE:Lcom/tencent/mm/ui/voicesearch/j;

    .line 116
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ChatroomContactUI;->gSE:Lcom/tencent/mm/ui/voicesearch/j;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/voicesearch/j;->xY(Ljava/lang/String;)V

    .line 118
    new-instance v0, Lcom/tencent/mm/pluginsdk/ui/tools/u;

    invoke-direct {v0}, Lcom/tencent/mm/pluginsdk/ui/tools/u;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/ChatroomContactUI;->gTj:Lcom/tencent/mm/pluginsdk/ui/tools/u;

    .line 119
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ChatroomContactUI;->gTj:Lcom/tencent/mm/pluginsdk/ui/tools/u;

    new-instance v1, Lcom/tencent/mm/ui/contact/az;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/contact/az;-><init>(Lcom/tencent/mm/ui/contact/ChatroomContactUI;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/pluginsdk/ui/tools/u;->a(Lcom/tencent/mm/pluginsdk/ui/tools/w;)V

    .line 178
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ChatroomContactUI;->gTj:Lcom/tencent/mm/pluginsdk/ui/tools/u;

    invoke-virtual {p0, v5, v0}, Lcom/tencent/mm/ui/contact/ChatroomContactUI;->a(ZLcom/tencent/mm/ui/tools/eo;)V

    .line 181
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ChatroomContactUI;->gTk:Lcom/tencent/mm/ui/contact/ap;

    new-instance v1, Lcom/tencent/mm/ui/contact/ba;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/contact/ba;-><init>(Lcom/tencent/mm/ui/contact/ChatroomContactUI;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/contact/ap;->a(Lcom/tencent/mm/ui/base/cy;)V

    .line 188
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ChatroomContactUI;->gTk:Lcom/tencent/mm/ui/contact/ap;

    new-instance v1, Lcom/tencent/mm/ui/contact/bb;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/contact/bb;-><init>(Lcom/tencent/mm/ui/contact/ChatroomContactUI;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/contact/ap;->a(Lcom/tencent/mm/ui/base/dc;)V

    .line 195
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ChatroomContactUI;->gTk:Lcom/tencent/mm/ui/contact/ap;

    new-instance v1, Lcom/tencent/mm/ui/contact/bc;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/contact/bc;-><init>(Lcom/tencent/mm/ui/contact/ChatroomContactUI;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/contact/ap;->a(Lcom/tencent/mm/ui/base/db;)V

    .line 207
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ChatroomContactUI;->gSA:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ChatroomContactUI;->goY:Lcom/tencent/mm/pluginsdk/ui/e;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 208
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ChatroomContactUI;->gTk:Lcom/tencent/mm/ui/contact/ap;

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ChatroomContactUI;->goY:Lcom/tencent/mm/pluginsdk/ui/e;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/contact/ap;->a(Lcom/tencent/mm/pluginsdk/ui/e;)V

    .line 210
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ChatroomContactUI;->gSA:Landroid/widget/ListView;

    new-instance v1, Lcom/tencent/mm/ui/contact/bd;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/contact/bd;-><init>(Lcom/tencent/mm/ui/contact/ChatroomContactUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 305
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ChatroomContactUI;->gSA:Landroid/widget/ListView;

    new-instance v1, Lcom/tencent/mm/ui/contact/be;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/contact/be;-><init>(Lcom/tencent/mm/ui/contact/ChatroomContactUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 329
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ChatroomContactUI;->gSA:Landroid/widget/ListView;

    new-instance v1, Lcom/tencent/mm/ui/contact/ContactCountView;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/contact/ContactCountView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/tencent/mm/ui/contact/ChatroomContactUI;->gSO:Lcom/tencent/mm/ui/contact/ContactCountView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 331
    new-instance v0, Lcom/tencent/mm/ui/contact/bf;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/contact/bf;-><init>(Lcom/tencent/mm/ui/contact/ChatroomContactUI;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/contact/ChatroomContactUI;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)V

    .line 340
    const v0, 0x7f0708db

    const v1, 0x7f020508

    new-instance v2, Lcom/tencent/mm/ui/contact/bg;

    invoke-direct {v2, p0}, Lcom/tencent/mm/ui/contact/bg;-><init>(Lcom/tencent/mm/ui/contact/ChatroomContactUI;)V

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/tencent/mm/ui/contact/ChatroomContactUI;->a(IIILandroid/view/MenuItem$OnMenuItemClickListener;)V

    .line 352
    new-instance v0, Lcom/tencent/mm/ui/contact/aw;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/contact/aw;-><init>(Lcom/tencent/mm/ui/contact/ChatroomContactUI;)V

    .line 360
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ChatroomContactUI;->gSA:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ChatroomContactUI;->gTk:Lcom/tencent/mm/ui/contact/ap;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 361
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ChatroomContactUI;->gSE:Lcom/tencent/mm/ui/voicesearch/j;

    invoke-virtual {v0, v3}, Lcom/tencent/mm/ui/voicesearch/j;->eA(Z)V

    .line 363
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ChatroomContactUI;->gSA:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 365
    new-instance v0, Lcom/tencent/mm/pluginsdk/ui/VoiceSearchLayout;

    invoke-direct {v0, p0}, Lcom/tencent/mm/pluginsdk/ui/VoiceSearchLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/ChatroomContactUI;->gmc:Lcom/tencent/mm/pluginsdk/ui/VoiceSearchLayout;

    .line 366
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 367
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 368
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ChatroomContactUI;->gmc:Lcom/tencent/mm/pluginsdk/ui/VoiceSearchLayout;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/pluginsdk/ui/VoiceSearchLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 369
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ChatroomContactUI;->gmc:Lcom/tencent/mm/pluginsdk/ui/VoiceSearchLayout;

    const/high16 v1, 0x42c8

    invoke-static {p0, v1}, Lcom/tencent/mm/sdk/platformtools/e;->a(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/pluginsdk/ui/VoiceSearchLayout;->kj(I)V

    .line 370
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ChatroomContactUI;->gmc:Lcom/tencent/mm/pluginsdk/ui/VoiceSearchLayout;

    invoke-virtual {v0, v6}, Lcom/tencent/mm/pluginsdk/ui/VoiceSearchLayout;->setVisibility(I)V

    .line 372
    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/ChatroomContactUI;->aET()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 373
    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/ChatroomContactUI;->aET()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ChatroomContactUI;->gmc:Lcom/tencent/mm/pluginsdk/ui/VoiceSearchLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 375
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ChatroomContactUI;->gmc:Lcom/tencent/mm/pluginsdk/ui/VoiceSearchLayout;

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ChatroomContactUI;->gmc:Lcom/tencent/mm/pluginsdk/ui/VoiceSearchLayout;

    new-instance v1, Lcom/tencent/mm/ui/contact/ax;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/contact/ax;-><init>(Lcom/tencent/mm/ui/contact/ChatroomContactUI;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/pluginsdk/ui/VoiceSearchLayout;->a(Lcom/tencent/mm/pluginsdk/ui/bi;)V

    .line 402
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ChatroomContactUI;->gTk:Lcom/tencent/mm/ui/contact/ap;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/contact/ap;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 403
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ChatroomContactUI;->dir:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 404
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ChatroomContactUI;->dir:Landroid/widget/TextView;

    invoke-virtual {v0, v7, v3, v7, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 405
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ChatroomContactUI;->dir:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 407
    :cond_1
    return-void
.end method

.method public final a(IILjava/lang/String;Lcom/tencent/mm/n/x;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 552
    invoke-static {p0}, Lcom/tencent/mm/platformtools/au;->ag(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 567
    :cond_0
    :goto_0
    return-void

    .line 556
    :cond_1
    const/4 v0, 0x4

    invoke-static {p0, p1, p2, v0}, Lcom/tencent/mm/ui/cx;->a(Landroid/content/Context;III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 560
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 564
    invoke-virtual {p4}, Lcom/tencent/mm/n/x;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 566
    :pswitch_0
    invoke-direct {p0}, Lcom/tencent/mm/ui/contact/ChatroomContactUI;->akH()V

    goto :goto_0

    .line 564
    :pswitch_data_0
    .packed-switch 0x26
        :pswitch_0
    .end packed-switch
.end method

.method protected final getLayoutId()I
    .locals 1

    .prologue
    .line 81
    const v0, 0x7f030063

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 86
    invoke-super {p0, p1}, Lcom/tencent/mm/ui/MMActivity;->onCreate(Landroid/os/Bundle;)V

    .line 87
    const v0, 0x7f0703db

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/contact/ChatroomContactUI;->mn(I)V

    .line 88
    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/ChatroomContactUI;->FR()V

    .line 89
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0x26

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/n/ac;->a(ILcom/tencent/mm/n/m;)V

    .line 90
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ChatroomContactUI;->gTk:Lcom/tencent/mm/ui/contact/ap;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/k;->a(Lcom/tencent/mm/sdk/e/ar;)V

    .line 91
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 449
    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onDestroy()V

    .line 451
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0x26

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/n/ac;->b(ILcom/tencent/mm/n/m;)V

    .line 452
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ChatroomContactUI;->gTk:Lcom/tencent/mm/ui/contact/ap;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/k;->b(Lcom/tencent/mm/sdk/e/ar;)V

    .line 453
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ChatroomContactUI;->gTk:Lcom/tencent/mm/ui/contact/ap;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/contact/ap;->detach()V

    .line 454
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ChatroomContactUI;->gTk:Lcom/tencent/mm/ui/contact/ap;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/contact/ap;->closeCursor()V

    .line 455
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ChatroomContactUI;->gTk:Lcom/tencent/mm/ui/contact/ap;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/contact/ap;->aDU()V

    .line 457
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ChatroomContactUI;->gSE:Lcom/tencent/mm/ui/voicesearch/j;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/voicesearch/j;->detach()V

    .line 458
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ChatroomContactUI;->gSE:Lcom/tencent/mm/ui/voicesearch/j;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/voicesearch/j;->closeCursor()V

    .line 460
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 436
    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onPause()V

    .line 438
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ChatroomContactUI;->gTj:Lcom/tencent/mm/pluginsdk/ui/tools/u;

    if-eqz v0, :cond_0

    .line 439
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ChatroomContactUI;->gTj:Lcom/tencent/mm/pluginsdk/ui/tools/u;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/tools/u;->onPause()V

    .line 442
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ChatroomContactUI;->gSE:Lcom/tencent/mm/ui/voicesearch/j;

    if-eqz v0, :cond_1

    .line 443
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ChatroomContactUI;->gSE:Lcom/tencent/mm/ui/voicesearch/j;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/voicesearch/j;->onPause()V

    .line 445
    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 411
    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onResume()V

    .line 413
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ChatroomContactUI;->gSO:Lcom/tencent/mm/ui/contact/ContactCountView;

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ChatroomContactUI;->gSO:Lcom/tencent/mm/ui/contact/ContactCountView;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/contact/ContactCountView;->aKx()V

    .line 415
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ChatroomContactUI;->gSO:Lcom/tencent/mm/ui/contact/ContactCountView;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/contact/ContactCountView;->aKy()V

    .line 418
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ChatroomContactUI;->gTj:Lcom/tencent/mm/pluginsdk/ui/tools/u;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ChatroomContactUI;->gmc:Lcom/tencent/mm/pluginsdk/ui/VoiceSearchLayout;

    if-eqz v0, :cond_1

    .line 419
    invoke-static {}, Lcom/tencent/mm/ak/a;->avr()Z

    invoke-static {}, Lcom/tencent/mm/x/b;->Bj()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/z;->azj()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zh_CN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 420
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ChatroomContactUI;->gTj:Lcom/tencent/mm/pluginsdk/ui/tools/u;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/pluginsdk/ui/tools/u;->cP(Z)V

    .line 421
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ChatroomContactUI;->gTj:Lcom/tencent/mm/pluginsdk/ui/tools/u;

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ChatroomContactUI;->gmc:Lcom/tencent/mm/pluginsdk/ui/VoiceSearchLayout;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/pluginsdk/ui/tools/u;->r(Lcom/tencent/mm/pluginsdk/ui/VoiceSearchLayout;)V

    .line 429
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ChatroomContactUI;->gSE:Lcom/tencent/mm/ui/voicesearch/j;

    if-eqz v0, :cond_2

    .line 430
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ChatroomContactUI;->gSE:Lcom/tencent/mm/ui/voicesearch/j;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/voicesearch/j;->onResume()V

    .line 432
    :cond_2
    return-void

    .line 423
    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ChatroomContactUI;->gTj:Lcom/tencent/mm/pluginsdk/ui/tools/u;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/pluginsdk/ui/tools/u;->cP(Z)V

    goto :goto_0
.end method
