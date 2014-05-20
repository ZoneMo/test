.class public Lcom/tencent/mm/ui/contact/m;
.super Lcom/tencent/mm/ui/a;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/n/m;


# instance fields
.field private cIr:Landroid/app/ProgressDialog;

.field cKz:Ljava/util/List;

.field private dKG:Ljava/lang/String;

.field private dLK:Lcom/tencent/mm/ui/base/AlphabetScrollBar;

.field private dLM:Lcom/tencent/mm/ui/base/ek;

.field private diX:Lcom/tencent/mm/ui/tools/dg;

.field private gRX:Ljava/lang/String;

.field private gSA:Landroid/widget/ListView;

.field private gSB:Landroid/widget/TextView;

.field private gSC:Landroid/widget/TextView;

.field private gSD:Lcom/tencent/mm/ui/contact/i;

.field private gSE:Lcom/tencent/mm/ui/voicesearch/j;

.field private gSF:Ljava/lang/String;

.field private gSG:Ljava/lang/String;

.field private gSH:I

.field private gSI:Landroid/widget/LinearLayout;

.field private gSJ:Z

.field private gSK:Z

.field private gSL:Lcom/tencent/mm/ui/friend/f;

.field private gSM:Lcom/tencent/mm/ui/contact/BizContactEntranceView;

.field private gSN:Lcom/tencent/mm/ui/contact/ChatroomContactEntranceView;

.field private gSO:Lcom/tencent/mm/ui/contact/ContactCountView;

.field private gSP:Z

.field private gSQ:Z

.field private gSR:Landroid/view/animation/Animation;

.field private gSS:Landroid/view/animation/Animation;

.field private gST:Lcom/tencent/mm/ui/base/cd;

.field gSU:Ljava/util/List;

.field goY:Lcom/tencent/mm/pluginsdk/ui/e;

.field private gpX:Landroid/widget/TextView;

.field private gpY:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 94
    invoke-direct {p0}, Lcom/tencent/mm/ui/a;-><init>()V

    .line 115
    iput-object v2, p0, Lcom/tencent/mm/ui/contact/m;->cIr:Landroid/app/ProgressDialog;

    .line 117
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/m;->gSG:Ljava/lang/String;

    .line 123
    iput-object v2, p0, Lcom/tencent/mm/ui/contact/m;->gSI:Landroid/widget/LinearLayout;

    .line 128
    iput-boolean v1, p0, Lcom/tencent/mm/ui/contact/m;->gSJ:Z

    .line 129
    iput-boolean v1, p0, Lcom/tencent/mm/ui/contact/m;->gpY:Z

    .line 130
    iput-boolean v1, p0, Lcom/tencent/mm/ui/contact/m;->gSK:Z

    .line 139
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/ui/contact/m;->gSQ:Z

    .line 509
    new-instance v0, Lcom/tencent/mm/ui/contact/q;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/contact/q;-><init>(Lcom/tencent/mm/ui/contact/m;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/m;->gST:Lcom/tencent/mm/ui/base/cd;

    .line 527
    new-instance v0, Lcom/tencent/mm/ui/contact/r;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/contact/r;-><init>(Lcom/tencent/mm/ui/contact/m;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/m;->dLM:Lcom/tencent/mm/ui/base/ek;

    .line 607
    new-instance v0, Lcom/tencent/mm/pluginsdk/ui/e;

    new-instance v1, Lcom/tencent/mm/ui/contact/s;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/contact/s;-><init>(Lcom/tencent/mm/ui/contact/m;)V

    invoke-direct {v0, v1}, Lcom/tencent/mm/pluginsdk/ui/e;-><init>(Landroid/widget/AbsListView$OnScrollListener;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/m;->goY:Lcom/tencent/mm/pluginsdk/ui/e;

    .line 782
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/m;->cKz:Ljava/util/List;

    .line 783
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/m;->gSU:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/contact/m;)Lcom/tencent/mm/ui/contact/i;
    .locals 1
    .parameter

    .prologue
    .line 94
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/m;->gSD:Lcom/tencent/mm/ui/contact/i;

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/mm/ui/contact/m;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x5

    .line 94
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/m;->gSD:Lcom/tencent/mm/ui/contact/i;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/k;->b(Lcom/tencent/mm/sdk/e/ar;)V

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/mm/storage/k;->tO(Ljava/lang/String;)Lcom/tencent/mm/storage/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->qJ()V

    invoke-static {v0}, Lcom/tencent/mm/model/w;->n(Lcom/tencent/mm/storage/i;)V

    invoke-static {p1}, Lcom/tencent/mm/model/w;->cp(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/mm/storage/k;->tU(Ljava/lang/String;)I

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sA()Lcom/tencent/mm/storage/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/mm/storage/c;->tx(Ljava/lang/String;)Z

    :goto_0
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/z/i;

    invoke-direct {v1, v2}, Lcom/tencent/mm/z/i;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/m;->gSD:Lcom/tencent/mm/ui/contact/i;

    invoke-virtual {v0, p1, v2}, Lcom/tencent/mm/ui/contact/i;->av(Ljava/lang/String;I)V

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/m;->gSD:Lcom/tencent/mm/ui/contact/i;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/k;->a(Lcom/tencent/mm/sdk/e/ar;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/tencent/mm/storage/k;->a(Ljava/lang/String;Lcom/tencent/mm/storage/i;)I

    goto :goto_0
.end method

.method private aKs()V
    .locals 2

    .prologue
    .line 786
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/m;->cKz:Ljava/util/List;

    .line 787
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/m;->gSU:Ljava/util/List;

    .line 790
    invoke-static {}, Lcom/tencent/mm/ak/a;->avr()Z

    .line 791
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/m;->gSU:Ljava/util/List;

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/m;->cKz:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 796
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/m;->cKz:Ljava/util/List;

    const-string v1, "officialaccounts"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 797
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/m;->cKz:Ljava/util/List;

    const-string v1, "officialaccounts"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 801
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/m;->cKz:Ljava/util/List;

    const-string v1, "helper_entry"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 804
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/m;->gSD:Lcom/tencent/mm/ui/contact/i;

    if-eqz v0, :cond_1

    .line 805
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/m;->gSD:Lcom/tencent/mm/ui/contact/i;

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/m;->cKz:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/contact/i;->aB(Ljava/util/List;)V

    .line 808
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/m;->gSE:Lcom/tencent/mm/ui/voicesearch/j;

    if-eqz v0, :cond_2

    .line 809
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/m;->gSE:Lcom/tencent/mm/ui/voicesearch/j;

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/m;->gSU:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/voicesearch/j;->aB(Ljava/util/List;)V

    .line 829
    :cond_2
    return-void
.end method

.method private declared-synchronized aKt()V
    .locals 6

    .prologue
    .line 952
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 953
    invoke-direct {p0}, Lcom/tencent/mm/ui/contact/m;->aKs()V

    .line 954
    const-string v2, "MicroMsg.AddressUI"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "KEVIN updateBlockList() LAST"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v0, v4, v0

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 955
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 956
    iget-object v2, p0, Lcom/tencent/mm/ui/contact/m;->gSD:Lcom/tencent/mm/ui/contact/i;

    if-eqz v2, :cond_0

    const-string v2, "MicroMsg.AddressUI"

    const-string v3, "post to do refresh"

    invoke-static {v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/m;->gSD:Lcom/tencent/mm/ui/contact/i;

    invoke-virtual {v2}, Lcom/tencent/mm/ui/contact/i;->aKr()V

    :cond_0
    iget-object v2, p0, Lcom/tencent/mm/ui/contact/m;->gSE:Lcom/tencent/mm/ui/voicesearch/j;

    if-eqz v2, :cond_1

    new-instance v2, Lcom/tencent/mm/ui/contact/t;

    invoke-direct {v2, p0}, Lcom/tencent/mm/ui/contact/t;-><init>(Lcom/tencent/mm/ui/contact/m;)V

    invoke-static {v2}, Lcom/tencent/mm/sdk/platformtools/an;->i(Ljava/lang/Runnable;)V

    .line 957
    :cond_1
    const-string v2, "MicroMsg.AddressUI"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "KEVIN doRefresh() LAST"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v0, v4, v0

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 958
    monitor-exit p0

    return-void

    .line 952
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic b(Lcom/tencent/mm/ui/contact/m;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/tencent/mm/ui/contact/m;->gSG:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/tencent/mm/ui/contact/m;)V
    .locals 2
    .parameter

    .prologue
    .line 94
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/m;->gSB:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/m;->gSA:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    return-void
.end method

.method static synthetic c(Lcom/tencent/mm/ui/contact/m;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 94
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/m;->gSA:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic d(Lcom/tencent/mm/ui/contact/m;)Lcom/tencent/mm/ui/voicesearch/j;
    .locals 1
    .parameter

    .prologue
    .line 94
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/m;->gSE:Lcom/tencent/mm/ui/voicesearch/j;

    return-object v0
.end method

.method static synthetic e(Lcom/tencent/mm/ui/contact/m;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 94
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/m;->dKG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/tencent/mm/ui/contact/m;)Lcom/tencent/mm/ui/base/cd;
    .locals 1
    .parameter

    .prologue
    .line 94
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/m;->gST:Lcom/tencent/mm/ui/base/cd;

    return-object v0
.end method

.method static synthetic g(Lcom/tencent/mm/ui/contact/m;)Lcom/tencent/mm/ui/tools/dg;
    .locals 1
    .parameter

    .prologue
    .line 94
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/m;->diX:Lcom/tencent/mm/ui/tools/dg;

    return-object v0
.end method

.method static synthetic h(Lcom/tencent/mm/ui/contact/m;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 94
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/m;->gSG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcom/tencent/mm/ui/contact/m;)Z
    .locals 1
    .parameter

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/tencent/mm/ui/contact/m;->gSJ:Z

    return v0
.end method

.method static synthetic j(Lcom/tencent/mm/ui/contact/m;)Z
    .locals 1
    .parameter

    .prologue
    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/ui/contact/m;->gSJ:Z

    return v0
.end method

.method static synthetic k(Lcom/tencent/mm/ui/contact/m;)V
    .locals 0
    .parameter

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/tencent/mm/ui/contact/m;->aKt()V

    return-void
.end method


# virtual methods
.method protected final FR()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 212
    const-string v0, "MicroMsg.AddressUI"

    const-string v1, "on address ui init view"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/m;->gSA:Landroid/widget/ListView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/m;->gSL:Lcom/tencent/mm/ui/friend/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/m;->gSA:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/m;->gSL:Lcom/tencent/mm/ui/friend/f;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/m;->gSM:Lcom/tencent/mm/ui/contact/BizContactEntranceView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/m;->gSA:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/m;->gSM:Lcom/tencent/mm/ui/contact/BizContactEntranceView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/m;->gSN:Lcom/tencent/mm/ui/contact/ChatroomContactEntranceView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/m;->gSA:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/m;->gSN:Lcom/tencent/mm/ui/contact/ChatroomContactEntranceView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    .line 215
    :cond_2
    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/m;->aFo()V

    .line 216
    const v0, 0x7f0a006f

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/contact/m;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/m;->gSA:Landroid/widget/ListView;

    .line 217
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/m;->gSA:Landroid/widget/ListView;

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setScrollingCacheEnabled(Z)V

    .line 218
    const v0, 0x7f0a0071

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/contact/m;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/m;->gSB:Landroid/widget/TextView;

    .line 219
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/m;->gSB:Landroid/widget/TextView;

    const v1, 0x7f0703e6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 220
    const v0, 0x7f0a0070

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/contact/m;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/m;->gpX:Landroid/widget/TextView;

    .line 221
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/m;->gpX:Landroid/widget/TextView;

    const v1, 0x7f0703e7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 222
    const v0, 0x7f0a0073

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/contact/m;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/m;->gSC:Landroid/widget/TextView;

    .line 223
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/m;->gSC:Landroid/widget/TextView;

    new-instance v1, Lcom/tencent/mm/ui/contact/n;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/contact/n;-><init>(Lcom/tencent/mm/ui/contact/m;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    new-instance v0, Lcom/tencent/mm/ui/contact/i;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/m;->aal()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/m;->dKG:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/mm/ui/contact/m;->gRX:Ljava/lang/String;

    iget v4, p0, Lcom/tencent/mm/ui/contact/m;->gSH:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tencent/mm/ui/contact/i;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/m;->gSD:Lcom/tencent/mm/ui/contact/i;

    .line 232
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/m;->gSA:Landroid/widget/ListView;

    invoke-virtual {v0, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 236
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/m;->gSD:Lcom/tencent/mm/ui/contact/i;

    new-instance v1, Lcom/tencent/mm/ui/contact/y;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/contact/y;-><init>(Lcom/tencent/mm/ui/contact/m;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/contact/i;->a(Lcom/tencent/mm/ui/k;)V

    .line 251
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/m;->gSD:Lcom/tencent/mm/ui/contact/i;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/contact/i;->aKo()V

    .line 253
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/m;->gSD:Lcom/tencent/mm/ui/contact/i;

    invoke-virtual {v0, p0}, Lcom/tencent/mm/ui/contact/i;->i(Landroid/support/v4/app/Fragment;)V

    .line 254
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/m;->gSD:Lcom/tencent/mm/ui/contact/i;

    new-instance v1, Lcom/tencent/mm/ui/contact/aa;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/contact/aa;-><init>(Lcom/tencent/mm/ui/contact/m;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/contact/i;->a(Lcom/tencent/mm/ui/base/cy;)V

    .line 261
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/m;->gSD:Lcom/tencent/mm/ui/contact/i;

    new-instance v1, Lcom/tencent/mm/ui/contact/ab;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/contact/ab;-><init>(Lcom/tencent/mm/ui/contact/m;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/contact/i;->a(Lcom/tencent/mm/ui/base/dc;)V

    .line 268
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/m;->gSD:Lcom/tencent/mm/ui/contact/i;

    new-instance v1, Lcom/tencent/mm/ui/contact/ac;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/contact/ac;-><init>(Lcom/tencent/mm/ui/contact/m;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/contact/i;->a(Lcom/tencent/mm/ui/base/db;)V

    .line 281
    new-instance v0, Lcom/tencent/mm/ui/voicesearch/j;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/m;->aal()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, v5}, Lcom/tencent/mm/ui/voicesearch/j;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/m;->gSE:Lcom/tencent/mm/ui/voicesearch/j;

    .line 282
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/m;->gSE:Lcom/tencent/mm/ui/voicesearch/j;

    invoke-virtual {v0, v5}, Lcom/tencent/mm/ui/voicesearch/j;->eB(Z)V

    .line 284
    new-instance v0, Lcom/tencent/mm/ui/friend/f;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/m;->aal()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/mm/ui/friend/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/m;->gSL:Lcom/tencent/mm/ui/friend/f;

    .line 285
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/m;->gSA:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/m;->gSL:Lcom/tencent/mm/ui/friend/f;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 288
    new-instance v0, Lcom/tencent/mm/ui/contact/ChatroomContactEntranceView;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/m;->aal()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/mm/ui/contact/ChatroomContactEntranceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/m;->gSN:Lcom/tencent/mm/ui/contact/ChatroomContactEntranceView;

    .line 289
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/m;->gSA:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/m;->gSN:Lcom/tencent/mm/ui/contact/ChatroomContactEntranceView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 290
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/m;->gSN:Lcom/tencent/mm/ui/contact/ChatroomContactEntranceView;

    invoke-virtual {v0, v5}, Lcom/tencent/mm/ui/contact/ChatroomContactEntranceView;->setVisible(Z)V

    .line 292
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/m;->gSA:Landroid/widget/ListView;

    new-instance v1, Lcom/tencent/mm/ui/contact/ContactCountView;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/m;->aal()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tencent/mm/ui/contact/ContactCountView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/tencent/mm/ui/contact/m;->gSO:Lcom/tencent/mm/ui/contact/ContactCountView;

    invoke-virtual {v0, v1, v7, v6}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 294
    const-string v0, "brandservice"

    invoke-static {v0}, Lcom/tencent/mm/ak/a;->qc(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 295
    new-instance v0, Lcom/tencent/mm/ui/contact/BizContactEntranceView;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/m;->aal()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/mm/ui/contact/BizContactEntranceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/m;->gSM:Lcom/tencent/mm/ui/contact/BizContactEntranceView;

    .line 296
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/m;->gSA:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/m;->gSM:Lcom/tencent/mm/ui/contact/BizContactEntranceView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 297
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/m;->gSM:Lcom/tencent/mm/ui/contact/BizContactEntranceView;

    invoke-virtual {v0, v5}, Lcom/tencent/mm/ui/contact/BizContactEntranceView;->setVisible(Z)V

    .line 300
    :cond_3
    new-instance v0, Lcom/tencent/mm/ui/tools/dg;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/m;->aal()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/mm/ui/tools/dg;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/m;->diX:Lcom/tencent/mm/ui/tools/dg;

    .line 302
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/m;->gSD:Lcom/tencent/mm/ui/contact/i;

    new-instance v1, Lcom/tencent/mm/ui/contact/ad;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/contact/ad;-><init>(Lcom/tencent/mm/ui/contact/m;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/contact/i;->a(Lcom/tencent/mm/ui/contact/k;)V

    .line 319
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/m;->gSA:Landroid/widget/ListView;

    new-instance v1, Lcom/tencent/mm/ui/contact/ae;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/contact/ae;-><init>(Lcom/tencent/mm/ui/contact/m;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 424
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/m;->gSA:Landroid/widget/ListView;

    new-instance v1, Lcom/tencent/mm/ui/contact/af;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/contact/af;-><init>(Lcom/tencent/mm/ui/contact/m;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 465
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/m;->gSA:Landroid/widget/ListView;

    new-instance v1, Lcom/tencent/mm/ui/contact/ag;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/contact/ag;-><init>(Lcom/tencent/mm/ui/contact/m;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 482
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/m;->gSA:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/m;->goY:Lcom/tencent/mm/pluginsdk/ui/e;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 484
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/m;->gSA:Landroid/widget/ListView;

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setDrawingCacheEnabled(Z)V

    .line 486
    const v0, 0x7f0a0072

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/contact/m;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/base/AlphabetScrollBar;

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/m;->dLK:Lcom/tencent/mm/ui/base/AlphabetScrollBar;

    .line 487
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/m;->dLK:Lcom/tencent/mm/ui/base/AlphabetScrollBar;

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/m;->dLM:Lcom/tencent/mm/ui/base/ek;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/AlphabetScrollBar;->a(Lcom/tencent/mm/ui/base/ek;)V

    .line 489
    const v0, 0x7f0709d4

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/contact/m;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/ui/contact/o;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/contact/o;-><init>(Lcom/tencent/mm/ui/contact/m;)V

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/ui/contact/m;->c(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/base/MMImageButton;

    .line 499
    new-instance v0, Lcom/tencent/mm/ui/contact/p;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/contact/p;-><init>(Lcom/tencent/mm/ui/contact/m;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/contact/m;->l(Landroid/view/View$OnClickListener;)V

    .line 507
    return-void
.end method

.method public final FT()Z
    .locals 1

    .prologue
    .line 1197
    const/4 v0, 0x0

    return v0
.end method

.method public final FU()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1123
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/contact/m;->ig(Ljava/lang/String;)V

    .line 1124
    invoke-static {}, Lcom/tencent/mm/ui/LauncherUI;->aEA()Lcom/tencent/mm/ui/LauncherUI;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/LauncherUI;->da(Z)V

    .line 1125
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/m;->gSC:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1126
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/m;->gSC:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1128
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/m;->gSL:Lcom/tencent/mm/ui/friend/f;

    if-eqz v0, :cond_1

    .line 1130
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/m;->gSL:Lcom/tencent/mm/ui/friend/f;

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/friend/f;->setVisible(Z)V

    .line 1132
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/m;->gSM:Lcom/tencent/mm/ui/contact/BizContactEntranceView;

    if-eqz v0, :cond_2

    .line 1133
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/m;->gSM:Lcom/tencent/mm/ui/contact/BizContactEntranceView;

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/contact/BizContactEntranceView;->setVisible(Z)V

    .line 1135
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/m;->gSN:Lcom/tencent/mm/ui/contact/ChatroomContactEntranceView;

    if-eqz v0, :cond_3

    .line 1136
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/m;->gSN:Lcom/tencent/mm/ui/contact/ChatroomContactEntranceView;

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/contact/ChatroomContactEntranceView;->setVisible(Z)V

    .line 1138
    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/m;->gSO:Lcom/tencent/mm/ui/contact/ContactCountView;

    if-eqz v0, :cond_4

    .line 1139
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/m;->gSO:Lcom/tencent/mm/ui/contact/ContactCountView;

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/contact/ContactCountView;->setVisible(Z)V

    .line 1141
    :cond_4
    return-void
.end method

.method public final FV()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1145
    sget-object v0, Lcom/tencent/mm/plugin/d/c/m;->dZN:Lcom/tencent/mm/plugin/d/c/m;

    const/16 v1, 0x2aa7

    const-string v2, "3"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/plugin/d/c/m;->j(ILjava/lang/String;)V

    .line 1146
    invoke-static {}, Lcom/tencent/mm/ui/LauncherUI;->aEA()Lcom/tencent/mm/ui/LauncherUI;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/tencent/mm/ui/LauncherUI;->da(Z)V

    .line 1147
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/m;->gSC:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1148
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/m;->gSC:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1150
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/m;->gSL:Lcom/tencent/mm/ui/friend/f;

    if-eqz v0, :cond_1

    .line 1151
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/m;->gSL:Lcom/tencent/mm/ui/friend/f;

    invoke-virtual {v0, v3}, Lcom/tencent/mm/ui/friend/f;->setVisible(Z)V

    .line 1153
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/m;->gSM:Lcom/tencent/mm/ui/contact/BizContactEntranceView;

    if-eqz v0, :cond_2

    .line 1154
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/m;->gSM:Lcom/tencent/mm/ui/contact/BizContactEntranceView;

    invoke-virtual {v0, v3}, Lcom/tencent/mm/ui/contact/BizContactEntranceView;->setVisible(Z)V

    .line 1156
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/m;->gSN:Lcom/tencent/mm/ui/contact/ChatroomContactEntranceView;

    if-eqz v0, :cond_3

    .line 1157
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/m;->gSN:Lcom/tencent/mm/ui/contact/ChatroomContactEntranceView;

    invoke-virtual {v0, v3}, Lcom/tencent/mm/ui/contact/ChatroomContactEntranceView;->setVisible(Z)V

    .line 1159
    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/m;->gSO:Lcom/tencent/mm/ui/contact/ContactCountView;

    if-eqz v0, :cond_4

    .line 1160
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/m;->gSO:Lcom/tencent/mm/ui/contact/ContactCountView;

    invoke-virtual {v0, v3}, Lcom/tencent/mm/ui/contact/ContactCountView;->setVisible(Z)V

    .line 1162
    :cond_4
    return-void
.end method

.method public final a(IILjava/lang/String;Lcom/tencent/mm/n/x;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 754
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/m;->cIr:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 755
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/m;->cIr:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 756
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/m;->cIr:Landroid/app/ProgressDialog;

    .line 759
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/m;->aal()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/platformtools/au;->ag(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 780
    :cond_1
    :goto_0
    return-void

    .line 763
    :cond_2
    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/m;->aal()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v0, p1, p2, v1}, Lcom/tencent/mm/ui/cx;->a(Landroid/content/Context;III)Z

    move-result v0

    if-nez v0, :cond_1

    .line 767
    if-nez p1, :cond_1

    if-eqz p2, :cond_1

    goto :goto_0
.end method

.method public final a(Z[Ljava/lang/String;JI)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1177
    const-string v0, "MicroMsg.AddressUI"

    const-string v1, "onVoiceReturn"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1178
    if-eqz p1, :cond_0

    .line 1179
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/m;->aal()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/tencent/mm/ui/voicesearch/VoiceSearchResultUI;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1180
    const-string v1, "VoiceSearchResultUI_Resultlist"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1181
    const-string v1, "VoiceSearchResultUI_VoiceId"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1182
    const-string v1, "VoiceSearchResultUI_ShowType"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1183
    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/m;->aal()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1192
    :goto_0
    return-void

    .line 1185
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/m;->aal()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/tencent/mm/ui/voicesearch/VoiceSearchResultUI;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1186
    const-string v1, "VoiceSearchResultUI_Resultlist"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1187
    const-string v1, "VoiceSearchResultUI_Error"

    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/m;->aal()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f07005c

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1188
    const-string v1, "VoiceSearchResultUI_VoiceId"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1189
    const-string v1, "VoiceSearchResultUI_ShowType"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1190
    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/m;->aal()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected final aDG()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 879
    const-string v0, "MicroMsg.AddressUI"

    const-string v1, "address ui on create"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 880
    const-string v0, "MicroMsg.AddressUI"

    const-string v1, "on address ui create"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/tencent/mm/ui/contact/m;->gSJ:Z

    iput-boolean v2, p0, Lcom/tencent/mm/ui/contact/m;->gpY:Z

    iput-boolean v2, p0, Lcom/tencent/mm/ui/contact/m;->gSK:Z

    iput-object v3, p0, Lcom/tencent/mm/ui/contact/m;->dKG:Ljava/lang/String;

    iput-object v3, p0, Lcom/tencent/mm/ui/contact/m;->gRX:Ljava/lang/String;

    iput-object v3, p0, Lcom/tencent/mm/ui/contact/m;->gSF:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0x26

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/n/ac;->a(ILcom/tencent/mm/n/m;)V

    const-string v0, "@all.contact.without.chatroom"

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/m;->dKG:Ljava/lang/String;

    const-string v0, "Contact_GroupFilter_Str"

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/contact/m;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/m;->gRX:Ljava/lang/String;

    const v0, 0x7f070001

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/contact/m;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/m;->gSF:Ljava/lang/String;

    const-string v0, "List_Type"

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/ui/contact/m;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/contact/m;->gSH:I

    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/m;->FR()V

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/m;->gSD:Lcom/tencent/mm/ui/contact/i;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/k;->a(Lcom/tencent/mm/sdk/e/ar;)V

    .line 881
    return-void
.end method

.method protected final aDH()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 885
    const-string v0, "MicroMsg.AddressUI"

    const-string v1, "address ui on resume"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 886
    iget-boolean v0, p0, Lcom/tencent/mm/ui/contact/m;->gSQ:Z

    if-eqz v0, :cond_5

    .line 887
    iput-boolean v2, p0, Lcom/tencent/mm/ui/contact/m;->gSQ:Z

    .line 888
    iput-boolean v2, p0, Lcom/tencent/mm/ui/contact/m;->gSP:Z

    .line 889
    invoke-direct {p0}, Lcom/tencent/mm/ui/contact/m;->aKs()V

    .line 890
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/m;->gSA:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/m;->gSD:Lcom/tencent/mm/ui/contact/i;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 891
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/m;->gSA:Landroid/widget/ListView;

    new-instance v1, Lcom/tencent/mm/ui/contact/u;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/contact/u;-><init>(Lcom/tencent/mm/ui/contact/m;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 901
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/m;->gSE:Lcom/tencent/mm/ui/voicesearch/j;

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/voicesearch/j;->eA(Z)V

    .line 918
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/m;->gSM:Lcom/tencent/mm/ui/contact/BizContactEntranceView;

    if-eqz v0, :cond_1

    .line 920
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/m;->gSM:Lcom/tencent/mm/ui/contact/BizContactEntranceView;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/contact/BizContactEntranceView;->Qi()V

    .line 923
    :cond_1
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const/16 v1, 0x3008

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/storage/e;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/contact/m;->gSJ:Z

    .line 925
    iget v0, p0, Lcom/tencent/mm/ui/contact/m;->gSH:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 926
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v0

    invoke-static {}, Lcom/tencent/mm/model/v;->th()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/k;->tO(Ljava/lang/String;)Lcom/tencent/mm/storage/i;

    move-result-object v0

    .line 927
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->rb()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->ru()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->rw()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->rv()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 928
    :cond_2
    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->qI()V

    .line 929
    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/i;->bH(Ljava/lang/String;)V

    .line 930
    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/i;->bJ(Ljava/lang/String;)V

    .line 931
    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/i;->bI(Ljava/lang/String;)V

    .line 932
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v1

    invoke-static {}, Lcom/tencent/mm/model/v;->th()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/tencent/mm/storage/k;->a(Ljava/lang/String;Lcom/tencent/mm/storage/i;)I

    .line 936
    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/m;->gSE:Lcom/tencent/mm/ui/voicesearch/j;

    if-eqz v0, :cond_4

    .line 937
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/m;->gSE:Lcom/tencent/mm/ui/voicesearch/j;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/voicesearch/j;->onResume()V

    .line 939
    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/m;->gSD:Lcom/tencent/mm/ui/contact/i;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/contact/i;->aEd()V

    .line 940
    new-instance v0, Lcom/tencent/mm/ui/contact/w;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/contact/w;-><init>(Lcom/tencent/mm/ui/contact/m;)V

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/an;->i(Ljava/lang/Runnable;)V

    .line 949
    return-void

    .line 902
    :cond_5
    iget-boolean v0, p0, Lcom/tencent/mm/ui/contact/m;->gSP:Z

    if-eqz v0, :cond_0

    .line 903
    iput-boolean v2, p0, Lcom/tencent/mm/ui/contact/m;->gSP:Z

    .line 904
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tencent/mm/ui/contact/v;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/contact/v;-><init>(Lcom/tencent/mm/ui/contact/m;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 914
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/m;->gSO:Lcom/tencent/mm/ui/contact/ContactCountView;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/contact/ContactCountView;->aKy()V

    goto/16 :goto_0
.end method

.method protected final aDI()V
    .locals 0

    .prologue
    .line 970
    return-void
.end method

.method protected final aDJ()V
    .locals 3

    .prologue
    .line 975
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const/16 v1, 0x3008

    iget-boolean v2, p0, Lcom/tencent/mm/ui/contact/m;->gSJ:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/storage/e;->set(ILjava/lang/Object;)V

    .line 976
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/m;->gSE:Lcom/tencent/mm/ui/voicesearch/j;

    if-eqz v0, :cond_0

    .line 977
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/m;->gSE:Lcom/tencent/mm/ui/voicesearch/j;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/voicesearch/j;->onPause()V

    .line 979
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/m;->gSD:Lcom/tencent/mm/ui/contact/i;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/contact/i;->aKq()V

    .line 980
    new-instance v0, Lcom/tencent/mm/ui/contact/x;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/contact/x;-><init>(Lcom/tencent/mm/ui/contact/m;)V

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/an;->i(Ljava/lang/Runnable;)V

    .line 987
    return-void
.end method

.method protected final aDK()V
    .locals 0

    .prologue
    .line 993
    return-void
.end method

.method protected final aDL()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1002
    const-string v0, "MicroMsg.AddressUI"

    const-string v1, "onDestory"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1003
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/m;->dLK:Lcom/tencent/mm/ui/base/AlphabetScrollBar;

    if-eqz v0, :cond_0

    .line 1004
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/m;->dLK:Lcom/tencent/mm/ui/base/AlphabetScrollBar;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/AlphabetScrollBar;->aHU()V

    .line 1006
    :cond_0
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0x26

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/n/ac;->b(ILcom/tencent/mm/n/m;)V

    .line 1007
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/m;->gSD:Lcom/tencent/mm/ui/contact/i;

    if-eqz v0, :cond_1

    .line 1008
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/m;->gSD:Lcom/tencent/mm/ui/contact/i;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/contact/i;->closeCursor()V

    .line 1009
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/m;->gSD:Lcom/tencent/mm/ui/contact/i;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/contact/i;->detach()V

    .line 1010
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/m;->gSD:Lcom/tencent/mm/ui/contact/i;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/contact/i;->aDU()V

    .line 1013
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/m;->gSE:Lcom/tencent/mm/ui/voicesearch/j;

    if-eqz v0, :cond_2

    .line 1014
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/m;->gSE:Lcom/tencent/mm/ui/voicesearch/j;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/voicesearch/j;->detach()V

    .line 1015
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/m;->gSE:Lcom/tencent/mm/ui/voicesearch/j;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/voicesearch/j;->closeCursor()V

    .line 1018
    :cond_2
    invoke-static {}, Lcom/tencent/mm/model/be;->se()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/m;->gSD:Lcom/tencent/mm/ui/contact/i;

    if-eqz v0, :cond_3

    .line 1019
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/m;->gSD:Lcom/tencent/mm/ui/contact/i;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/k;->b(Lcom/tencent/mm/sdk/e/ar;)V

    .line 1021
    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/m;->gSL:Lcom/tencent/mm/ui/friend/f;

    if-eqz v0, :cond_4

    .line 1022
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/m;->gSL:Lcom/tencent/mm/ui/friend/f;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/friend/f;->detach()V

    .line 1023
    iput-object v2, p0, Lcom/tencent/mm/ui/contact/m;->gSL:Lcom/tencent/mm/ui/friend/f;

    .line 1025
    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/m;->gSM:Lcom/tencent/mm/ui/contact/BizContactEntranceView;

    if-eqz v0, :cond_5

    .line 1026
    iput-object v2, p0, Lcom/tencent/mm/ui/contact/m;->gSM:Lcom/tencent/mm/ui/contact/BizContactEntranceView;

    .line 1028
    :cond_5
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/m;->gSN:Lcom/tencent/mm/ui/contact/ChatroomContactEntranceView;

    if-eqz v0, :cond_6

    .line 1029
    iput-object v2, p0, Lcom/tencent/mm/ui/contact/m;->gSN:Lcom/tencent/mm/ui/contact/ChatroomContactEntranceView;

    .line 1031
    :cond_6
    return-void
.end method

.method public final aDM()V
    .locals 2

    .prologue
    .line 1096
    const-string v0, "MicroMsg.AddressUI"

    const-string v1, "request to top"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1097
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/m;->gSA:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 1098
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/m;->gSA:Landroid/widget/ListView;

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/g;->a(Landroid/widget/ListView;)V

    .line 1100
    :cond_0
    return-void
.end method

.method public final aDN()V
    .locals 2

    .prologue
    .line 1044
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/m;->gSD:Lcom/tencent/mm/ui/contact/i;

    if-eqz v0, :cond_0

    .line 1045
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/m;->gSD:Lcom/tencent/mm/ui/contact/i;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/contact/i;->clearCache()V

    .line 1048
    :cond_0
    const-string v0, "MicroMsg.INIT"

    const-string v1, "KEVIN Address turnTobg"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1056
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/m;->gSM:Lcom/tencent/mm/ui/contact/BizContactEntranceView;

    if-eqz v0, :cond_1

    .line 1057
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/m;->gSM:Lcom/tencent/mm/ui/contact/BizContactEntranceView;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/contact/BizContactEntranceView;->destroyDrawingCache()V

    .line 1059
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/m;->gSN:Lcom/tencent/mm/ui/contact/ChatroomContactEntranceView;

    if-eqz v0, :cond_2

    .line 1060
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/m;->gSN:Lcom/tencent/mm/ui/contact/ChatroomContactEntranceView;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/contact/ChatroomContactEntranceView;->destroyDrawingCache()V

    .line 1062
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/m;->gSO:Lcom/tencent/mm/ui/contact/ContactCountView;

    if-eqz v0, :cond_3

    .line 1063
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/m;->gSO:Lcom/tencent/mm/ui/contact/ContactCountView;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/contact/ContactCountView;->destroyDrawingCache()V

    .line 1065
    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/m;->gSL:Lcom/tencent/mm/ui/friend/f;

    if-eqz v0, :cond_4

    .line 1066
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/m;->gSL:Lcom/tencent/mm/ui/friend/f;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/friend/f;->destroyDrawingCache()V

    .line 1070
    :cond_4
    return-void
.end method

.method public final aDO()V
    .locals 2

    .prologue
    .line 1083
    const-string v0, "MicroMsg.INIT"

    const-string v1, "KEVIN Address turnTofg"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1084
    return-void
.end method

.method protected final aFq()Z
    .locals 1

    .prologue
    .line 1035
    const/4 v0, 0x1

    return v0
.end method

.method public final aKu()Lcom/tencent/mm/pluginsdk/ui/e;
    .locals 1

    .prologue
    .line 996
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/m;->goY:Lcom/tencent/mm/pluginsdk/ui/e;

    return-object v0
.end method

.method public final aKv()V
    .locals 1

    .prologue
    .line 1091
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/ui/contact/m;->gSP:Z

    .line 1092
    return-void
.end method

.method public final abb()V
    .locals 0

    .prologue
    .line 1166
    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/m;->SM()V

    .line 1167
    return-void
.end method

.method public final abc()V
    .locals 0

    .prologue
    .line 1173
    return-void
.end method

.method public final co(Z)V
    .locals 4
    .parameter

    .prologue
    .line 1203
    const-string v0, "MicroMsg.AddressUI"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "visible "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1204
    if-eqz p1, :cond_0

    .line 1205
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/m;->gSA:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    .line 1206
    const-string v1, "MicroMsg.AddressUI"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getFirstVisiblePosition  "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1207
    if-lez v0, :cond_0

    .line 1208
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/m;->gSA:Landroid/widget/ListView;

    new-instance v1, Lcom/tencent/mm/ui/contact/z;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/contact/z;-><init>(Lcom/tencent/mm/ui/contact/m;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 1219
    :cond_0
    return-void
.end method

.method public final dQ(Z)V
    .locals 4
    .parameter

    .prologue
    const-wide/16 v2, 0xc8

    const v1, 0x7f040016

    .line 186
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/m;->dLK:Lcom/tencent/mm/ui/base/AlphabetScrollBar;

    if-eqz v0, :cond_2

    .line 187
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/m;->gSR:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    .line 188
    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/m;->aal()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/m;->gSR:Landroid/view/animation/Animation;

    .line 189
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/m;->gSR:Landroid/view/animation/Animation;

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/m;->gSS:Landroid/view/animation/Animation;

    if-nez v0, :cond_1

    .line 192
    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/m;->aal()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/m;->gSS:Landroid/view/animation/Animation;

    .line 193
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/m;->gSS:Landroid/view/animation/Animation;

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 195
    :cond_1
    if-eqz p1, :cond_3

    .line 196
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/m;->dLK:Lcom/tencent/mm/ui/base/AlphabetScrollBar;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/AlphabetScrollBar;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    .line 197
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/m;->dLK:Lcom/tencent/mm/ui/base/AlphabetScrollBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/AlphabetScrollBar;->setVisibility(I)V

    .line 198
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/m;->dLK:Lcom/tencent/mm/ui/base/AlphabetScrollBar;

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/m;->gSR:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/AlphabetScrollBar;->startAnimation(Landroid/view/animation/Animation;)V

    .line 207
    :cond_2
    :goto_0
    return-void

    .line 201
    :cond_3
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/m;->dLK:Lcom/tencent/mm/ui/base/AlphabetScrollBar;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/base/AlphabetScrollBar;->getVisibility()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 202
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/m;->dLK:Lcom/tencent/mm/ui/base/AlphabetScrollBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/AlphabetScrollBar;->setVisibility(I)V

    .line 203
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/m;->dLK:Lcom/tencent/mm/ui/base/AlphabetScrollBar;

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/m;->gSS:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/AlphabetScrollBar;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method protected final getLayoutId()I
    .locals 1

    .prologue
    .line 143
    const v0, 0x7f03001d

    return v0
.end method

.method public final ig(Ljava/lang/String;)V
    .locals 6
    .parameter

    .prologue
    const/16 v5, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1114
    const-string v0, "MicroMsg.AddressUI"

    const-string v3, "onSearchBarChange %s"

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p1, v4, v2

    invoke-static {v0, v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1115
    invoke-static {p1}, Lcom/tencent/mm/platformtools/au;->hR(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1116
    iput-boolean v1, p0, Lcom/tencent/mm/ui/contact/m;->gpY:Z

    .line 1117
    iget-object v4, p0, Lcom/tencent/mm/ui/contact/m;->gSD:Lcom/tencent/mm/ui/contact/i;

    invoke-static {p1}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Lcom/tencent/mm/ui/contact/i;->dP(Z)V

    .line 1118
    iget-boolean v0, p0, Lcom/tencent/mm/ui/contact/m;->gSK:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/m;->gSE:Lcom/tencent/mm/ui/voicesearch/j;

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/voicesearch/j;->eA(Z)V

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/m;->gSD:Lcom/tencent/mm/ui/contact/i;

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/contact/i;->dP(Z)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/m;->gSD:Lcom/tencent/mm/ui/contact/i;

    invoke-virtual {v0, v3}, Lcom/tencent/mm/ui/contact/i;->wH(Ljava/lang/String;)V

    .line 1119
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v2

    .line 1117
    goto :goto_0

    .line 1118
    :cond_3
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_6

    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/m;->dLK:Lcom/tencent/mm/ui/base/AlphabetScrollBar;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/m;->dLK:Lcom/tencent/mm/ui/base/AlphabetScrollBar;

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/base/AlphabetScrollBar;->setVisibility(I)V

    :cond_5
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/m;->gSA:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/m;->gSD:Lcom/tencent/mm/ui/contact/i;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/m;->gSD:Lcom/tencent/mm/ui/contact/i;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/contact/i;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/m;->gSE:Lcom/tencent/mm/ui/voicesearch/j;

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/voicesearch/j;->eA(Z)V

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/m;->gSD:Lcom/tencent/mm/ui/contact/i;

    invoke-virtual {v0, v3}, Lcom/tencent/mm/ui/contact/i;->wH(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/m;->gSC:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/m;->gSC:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/m;->dLK:Lcom/tencent/mm/ui/base/AlphabetScrollBar;

    if-eqz v0, :cond_7

    const-string v0, "MicroMsg.AddressUI"

    const-string v2, "do query"

    invoke-static {v0, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/m;->dLK:Lcom/tencent/mm/ui/base/AlphabetScrollBar;

    invoke-virtual {v0, v5}, Lcom/tencent/mm/ui/base/AlphabetScrollBar;->setVisibility(I)V

    :cond_7
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/m;->gSD:Lcom/tencent/mm/ui/contact/i;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/contact/i;->clearCache()V

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/m;->gSA:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/m;->gSE:Lcom/tencent/mm/ui/voicesearch/j;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/m;->gSE:Lcom/tencent/mm/ui/voicesearch/j;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/voicesearch/j;->eA(Z)V

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/m;->gSE:Lcom/tencent/mm/ui/voicesearch/j;

    invoke-virtual {v0, v3}, Lcom/tencent/mm/ui/voicesearch/j;->ih(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/m;->gSE:Lcom/tencent/mm/ui/voicesearch/j;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/voicesearch/j;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/m;->gSC:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/m;->gSC:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, -0x1

    .line 856
    const-string v0, "MicroMsg.AddressUI"

    const-string v1, "onAcvityResult requestCode: %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 857
    const/4 v0, 0x6

    if-ne p1, v0, :cond_1

    .line 858
    if-ne p2, v5, :cond_1

    .line 859
    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/m;->aEo()V

    .line 860
    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/m;->finish()V

    .line 871
    :cond_0
    :goto_0
    return-void

    .line 864
    :cond_1
    if-ne p2, v5, :cond_0

    .line 867
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 869
    :pswitch_0
    invoke-virtual {p0, p3}, Lcom/tencent/mm/ui/contact/m;->r(Landroid/content/Intent;)V

    .line 870
    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/m;->finish()V

    goto :goto_0

    .line 867
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 674
    invoke-super {p0, p1, p2, p3}, Lcom/tencent/mm/ui/a;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 676
    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 678
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/m;->gSG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/k;->tO(Ljava/lang/String;)Lcom/tencent/mm/storage/i;

    move-result-object v0

    .line 679
    if-nez v0, :cond_1

    .line 680
    const-string v0, "MicroMsg.AddressUI"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onCreateContextMenu, contact is null, username = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/m;->gSG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    :cond_0
    :goto_0
    return-void

    .line 684
    :cond_1
    invoke-static {}, Lcom/tencent/mm/model/v;->th()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 688
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/m;->gSG:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/mm/model/w;->cr(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 689
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->rr()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v3}, Lcom/tencent/mm/ao/b;->e(Landroid/content/Context;Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 690
    iget v0, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    const/4 v1, 0x2

    const v2, 0x7f0703e5

    invoke-interface {p1, v0, v1, v4, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0

    .line 694
    :cond_2
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/m;->gSG:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/mm/model/w;->cH(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 698
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->rr()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v3}, Lcom/tencent/mm/ao/b;->e(Landroid/content/Context;Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 699
    iget v0, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    const/4 v1, 0x1

    const v2, 0x7f0703e4

    invoke-interface {p1, v0, v1, v4, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public final wI(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 648
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 670
    :cond_0
    :goto_0
    return-void

    .line 654
    :cond_1
    invoke-static {p1}, Lcom/tencent/mm/model/w;->cT(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 655
    const-string v0, "MicroMsg.AddressUI"

    const-string v1, "error, 4.5 do not contain this contact %s"

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 659
    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 660
    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/m;->aal()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 661
    const-string v1, "Contact_User"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 662
    invoke-static {p1}, Lcom/tencent/mm/model/w;->cr(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 663
    const-string v1, "Is_group_card"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 666
    :cond_3
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 667
    invoke-static {v0, p1}, Lcom/tencent/mm/ui/contact/bh;->b(Landroid/content/Intent;Ljava/lang/String;)V

    .line 668
    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/contact/m;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
