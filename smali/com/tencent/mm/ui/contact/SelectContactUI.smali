.class public Lcom/tencent/mm/ui/contact/SelectContactUI;
.super Lcom/tencent/mm/ui/MMActivity;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/n/m;


# instance fields
.field private cIr:Landroid/app/ProgressDialog;

.field private cQb:Z

.field private cWi:Ljava/lang/String;

.field private cZs:Ljava/lang/String;

.field private dKG:Ljava/lang/String;

.field private dLK:Lcom/tencent/mm/ui/base/AlphabetScrollBar;

.field private dLM:Lcom/tencent/mm/ui/base/ek;

.field private dRP:Landroid/app/ProgressDialog;

.field private diw:Lcom/tencent/mm/ui/tools/eo;

.field private gRX:Ljava/lang/String;

.field private gRY:Ljava/util/List;

.field private gSA:Landroid/widget/ListView;

.field private gSB:Landroid/widget/TextView;

.field private gSE:Lcom/tencent/mm/ui/voicesearch/j;

.field private gSF:Ljava/lang/String;

.field private gSH:I

.field private gSI:Landroid/widget/LinearLayout;

.field private gSJ:Z

.field private gSK:Z

.field private gSc:Z

.field private gUJ:Z

.field private gUQ:Lcom/tencent/mm/ui/contact/db;

.field private gUR:Ljava/lang/String;

.field private gUS:Ljava/lang/String;

.field private gUT:Ljava/lang/String;

.field private gUU:Z

.field private gUV:Z

.field private gUW:Z

.field private gUX:Ljava/lang/String;

.field private gUY:Ljava/lang/String;

.field private gUZ:Z

.field private gVa:Lcom/tencent/mm/plugin/chatroom/a/c;

.field private gVb:Lcom/tencent/mm/ui/base/ce;

.field private gVc:Landroid/widget/Button;

.field private gVd:Landroid/view/View;

.field private gVe:Z

.field private gVf:Ljava/lang/String;

.field private gVg:Z

.field private gVh:Z

.field private gVi:Z

.field private gVj:Z

.field private gVk:Z

.field private gVl:Ljava/lang/String;

.field private gVm:Landroid/view/View$OnClickListener;

.field goY:Lcom/tencent/mm/pluginsdk/ui/e;

.field private gpX:Landroid/widget/TextView;

.field private gpY:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 79
    invoke-direct {p0}, Lcom/tencent/mm/ui/MMActivity;-><init>()V

    .line 104
    iput-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->cIr:Landroid/app/ProgressDialog;

    .line 106
    iput-boolean v2, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gUU:Z

    .line 107
    iput-boolean v2, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gUV:Z

    .line 108
    iput-boolean v2, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gUW:Z

    .line 113
    iput-boolean v2, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gUZ:Z

    .line 116
    iput-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gVa:Lcom/tencent/mm/plugin/chatroom/a/c;

    .line 119
    iput-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSI:Landroid/widget/LinearLayout;

    .line 121
    iput-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gVd:Landroid/view/View;

    .line 122
    iput-boolean v1, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gVe:Z

    .line 124
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gVf:Ljava/lang/String;

    .line 129
    iput-boolean v2, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSJ:Z

    .line 130
    iput-boolean v2, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gpY:Z

    .line 131
    iput-boolean v2, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSK:Z

    .line 132
    iput-boolean v1, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gVg:Z

    .line 134
    iput-boolean v2, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gVh:Z

    .line 136
    iput-boolean v2, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gVi:Z

    .line 138
    iput-boolean v2, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSc:Z

    .line 139
    iput-boolean v2, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gVj:Z

    .line 141
    iput-boolean v2, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gVk:Z

    .line 1009
    new-instance v0, Lcom/tencent/mm/pluginsdk/ui/e;

    new-instance v1, Lcom/tencent/mm/ui/contact/dt;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/contact/dt;-><init>(Lcom/tencent/mm/ui/contact/SelectContactUI;)V

    invoke-direct {v0, v1}, Lcom/tencent/mm/pluginsdk/ui/e;-><init>(Landroid/widget/AbsListView$OnScrollListener;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->goY:Lcom/tencent/mm/pluginsdk/ui/e;

    .line 1075
    new-instance v0, Lcom/tencent/mm/ui/contact/du;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/contact/du;-><init>(Lcom/tencent/mm/ui/contact/SelectContactUI;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gVm:Landroid/view/View$OnClickListener;

    .line 1097
    new-instance v0, Lcom/tencent/mm/ui/contact/dv;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/contact/dv;-><init>(Lcom/tencent/mm/ui/contact/SelectContactUI;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->dLM:Lcom/tencent/mm/ui/base/ek;

    .line 1389
    iput-boolean v2, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->cQb:Z

    return-void
.end method

.method static synthetic A(Lcom/tencent/mm/ui/contact/SelectContactUI;)Z
    .locals 1
    .parameter

    .prologue
    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->cQb:Z

    return v0
.end method

.method static synthetic B(Lcom/tencent/mm/ui/contact/SelectContactUI;)Z
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->cQb:Z

    return v0
.end method

.method static synthetic C(Lcom/tencent/mm/ui/contact/SelectContactUI;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->dRP:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic D(Lcom/tencent/mm/ui/contact/SelectContactUI;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->dRP:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/mm/ui/contact/SelectContactUI;Lcom/tencent/mm/ui/base/ce;)Lcom/tencent/mm/ui/base/ce;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gVb:Lcom/tencent/mm/ui/base/ce;

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/mm/ui/contact/SelectContactUI;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 79
    const-string v0, "@black.android"

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->dKG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-gtz p1, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSB:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSA:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->dLK:Lcom/tencent/mm/ui/base/AlphabetScrollBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->dLK:Lcom/tencent/mm/ui/base/AlphabetScrollBar;

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/base/AlphabetScrollBar;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSB:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSA:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->dLK:Lcom/tencent/mm/ui/base/AlphabetScrollBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSE:Lcom/tencent/mm/ui/voicesearch/j;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/voicesearch/j;->aPm()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->dLK:Lcom/tencent/mm/ui/base/AlphabetScrollBar;

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/base/AlphabetScrollBar;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->dLK:Lcom/tencent/mm/ui/base/AlphabetScrollBar;

    invoke-virtual {v0, v3}, Lcom/tencent/mm/ui/base/AlphabetScrollBar;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/tencent/mm/ui/contact/SelectContactUI;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 79
    iget-boolean v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSK:Z

    if-eqz v0, :cond_1

    const-string v0, "MicroMsg.SelectContactUI"

    const-string v1, "search for add contact"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSE:Lcom/tencent/mm/ui/voicesearch/j;

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/voicesearch/j;->eA(Z)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gUQ:Lcom/tencent/mm/ui/contact/db;

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/contact/db;->dP(Z)V

    iput-boolean v3, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gVg:Z

    iget-boolean v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gVe:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gVd:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gVd:Landroid/view/View;

    const v1, 0x7f0a041f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gUQ:Lcom/tencent/mm/ui/contact/db;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/ui/contact/db;->wH(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gVh:Z

    if-nez v0, :cond_4

    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->dLK:Lcom/tencent/mm/ui/base/AlphabetScrollBar;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->dLK:Lcom/tencent/mm/ui/base/AlphabetScrollBar;

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/base/AlphabetScrollBar;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSA:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gUQ:Lcom/tencent/mm/ui/contact/db;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gUQ:Lcom/tencent/mm/ui/contact/db;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/contact/db;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSE:Lcom/tencent/mm/ui/voicesearch/j;

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/voicesearch/j;->eA(Z)V

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gUQ:Lcom/tencent/mm/ui/contact/db;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/ui/contact/db;->wH(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->dLK:Lcom/tencent/mm/ui/base/AlphabetScrollBar;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->dLK:Lcom/tencent/mm/ui/base/AlphabetScrollBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/AlphabetScrollBar;->setVisibility(I)V

    :cond_5
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSA:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSE:Lcom/tencent/mm/ui/voicesearch/j;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSE:Lcom/tencent/mm/ui/voicesearch/j;

    invoke-virtual {v0, v3}, Lcom/tencent/mm/ui/voicesearch/j;->eA(Z)V

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSE:Lcom/tencent/mm/ui/voicesearch/j;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/ui/voicesearch/j;->ih(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSE:Lcom/tencent/mm/ui/voicesearch/j;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/voicesearch/j;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/tencent/mm/ui/contact/SelectContactUI;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Lcom/tencent/mm/ui/contact/SelectContactUI;->g(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/contact/SelectContactUI;Ljava/util/LinkedList;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 79
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    :goto_1
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/tencent/mm/pluginsdk/ui/applet/an;

    new-instance v2, Lcom/tencent/mm/ui/contact/ec;

    invoke-direct {v2, p0}, Lcom/tencent/mm/ui/contact/ec;-><init>(Lcom/tencent/mm/ui/contact/SelectContactUI;)V

    invoke-direct {v1, p0, v2}, Lcom/tencent/mm/pluginsdk/ui/applet/an;-><init>(Landroid/content/Context;Lcom/tencent/mm/pluginsdk/ui/applet/au;)V

    invoke-virtual {v1, p1, v0}, Lcom/tencent/mm/pluginsdk/ui/applet/an;->c(Ljava/util/LinkedList;Ljava/util/LinkedList;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/contact/SelectContactUI;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gpY:Z

    return p1
.end method

.method private static aA(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .parameter

    .prologue
    .line 1496
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 1497
    invoke-static {}, Lcom/tencent/mm/model/be;->se()Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v1

    .line 1510
    :goto_0
    return-object v0

    .line 1500
    :cond_0
    if-nez p0, :cond_1

    move-object v0, v1

    .line 1501
    goto :goto_0

    .line 1503
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1504
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/tencent/mm/storage/k;->tO(Ljava/lang/String;)Lcom/tencent/mm/storage/i;

    move-result-object v3

    .line 1505
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/tencent/mm/storage/i;->rj()I

    move-result v4

    if-eqz v4, :cond_2

    .line 1506
    invoke-virtual {v3}, Lcom/tencent/mm/storage/i;->rr()Ljava/lang/String;

    move-result-object v0

    .line 1508
    :cond_2
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 1510
    goto :goto_0
.end method

.method private aKW()I
    .locals 1

    .prologue
    .line 1758
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSI:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 1759
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSI:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 1761
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private aKX()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 1799
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gUQ:Lcom/tencent/mm/ui/contact/db;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/contact/db;->dU(Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 1800
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1801
    const-string v2, "Select_Contact"

    const-string v3, ","

    invoke-static {v0, v3}, Lcom/tencent/mm/platformtools/au;->a(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1802
    const-string v0, "extra_id"

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->cZs:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1804
    const-string v0, "consume_id"

    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/SelectContactUI;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "consume_id"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1805
    const-string v0, "extra_coverurl"

    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/SelectContactUI;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "extra_coverurl"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1806
    const-string v0, "extra_name"

    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/SelectContactUI;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "extra_name"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1807
    const-string v0, "extra_price"

    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/SelectContactUI;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "extra_price"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1808
    const-string v0, "extra_price_num"

    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/SelectContactUI;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "extra_price_num"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1809
    const-string v0, "extra_price_type"

    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/SelectContactUI;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "extra_price_type"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1810
    const-string v0, "google_price"

    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/SelectContactUI;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "google_price"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1811
    const-string v0, "extra_flag"

    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/SelectContactUI;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "extra_flag"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1812
    const-string v0, "extra_type"

    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/SelectContactUI;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "extra_type"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1813
    const-string v0, "is_google_play"

    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/SelectContactUI;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "is_google_play"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1815
    const-string v0, "emoji"

    const-string v2, ".ui.EmojiStoreGiftUI"

    invoke-static {p0, v0, v2, v1}, Lcom/tencent/mm/ak/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    .line 1816
    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/SelectContactUI;->finish()V

    .line 1817
    return-void
.end method

.method private akH()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1250
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gUQ:Lcom/tencent/mm/ui/contact/db;

    if-eqz v0, :cond_0

    .line 1251
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gUQ:Lcom/tencent/mm/ui/contact/db;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/contact/db;->ca(Ljava/lang/String;)V

    .line 1253
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSE:Lcom/tencent/mm/ui/voicesearch/j;

    if-eqz v0, :cond_1

    .line 1254
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSE:Lcom/tencent/mm/ui/voicesearch/j;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/voicesearch/j;->ca(Ljava/lang/String;)V

    .line 1256
    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/tencent/mm/ui/contact/SelectContactUI;)Lcom/tencent/mm/ui/contact/db;
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gUQ:Lcom/tencent/mm/ui/contact/db;

    return-object v0
.end method

.method static synthetic b(Lcom/tencent/mm/ui/contact/SelectContactUI;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gVf:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/tencent/mm/ui/contact/SelectContactUI;I)Z
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x7

    const/4 v9, 0x3

    const/4 v8, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 79
    const-string v3, "MicroMsg.SelectContactUI"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "onItemClick "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSE:Lcom/tencent/mm/ui/voicesearch/j;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSE:Lcom/tencent/mm/ui/voicesearch/j;

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSA:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSA:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    sub-int v3, p1, v0

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSE:Lcom/tencent/mm/ui/voicesearch/j;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSE:Lcom/tencent/mm/ui/voicesearch/j;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/voicesearch/j;->aPm()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSE:Lcom/tencent/mm/ui/voicesearch/j;

    invoke-virtual {v0, v3}, Lcom/tencent/mm/ui/voicesearch/j;->mz(I)Z

    move-result v0

    iget-object v4, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSE:Lcom/tencent/mm/ui/voicesearch/j;

    invoke-virtual {v4, v3}, Lcom/tencent/mm/ui/voicesearch/j;->oE(I)Z

    move-result v4

    const-string v5, "MicroMsg.SelectContactUI"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "onItemClick "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSE:Lcom/tencent/mm/ui/voicesearch/j;

    invoke-virtual {v5, v3}, Lcom/tencent/mm/ui/voicesearch/j;->oD(I)Lcom/tencent/mm/storage/i;

    move-result-object v5

    iget v6, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSH:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_4

    iget-boolean v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gUZ:Z

    if-eqz v0, :cond_2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "Select_Conv_User"

    invoke-virtual {v5}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v8, v0}, Lcom/tencent/mm/ui/contact/SelectContactUI;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/SelectContactUI;->finish()V

    :cond_0
    :goto_1
    return v2

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSE:Lcom/tencent/mm/ui/voicesearch/j;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/voicesearch/j;->aPm()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gUY:Ljava/lang/String;

    const-string v1, "@chatroom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v5}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gUY:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/tencent/mm/ui/contact/SelectContactUI;->bg(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v5}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gUY:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/tencent/mm/ui/contact/SelectContactUI;->bf(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    if-eqz v4, :cond_6

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSE:Lcom/tencent/mm/ui/voicesearch/j;

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->diw:Lcom/tencent/mm/ui/tools/eo;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->diw:Lcom/tencent/mm/ui/tools/eo;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/tools/eo;->aMH()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v2, v0}, Lcom/tencent/mm/ui/voicesearch/j;->xZ(Ljava/lang/String;)V

    move v2, v1

    goto :goto_1

    :cond_5
    const-string v0, ""

    goto :goto_2

    :cond_6
    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSE:Lcom/tencent/mm/ui/voicesearch/j;

    invoke-virtual {v0, v3}, Lcom/tencent/mm/ui/voicesearch/j;->oC(I)Lcom/tencent/mm/protocal/a/sh;

    move-result-object v0

    iget-object v1, v0, Lcom/tencent/mm/protocal/a/sh;->fEI:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/rw;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/tencent/mm/storage/k;->tO(Ljava/lang/String;)Lcom/tencent/mm/storage/i;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/storage/i;->rb()Z

    move-result v4

    if-eqz v4, :cond_8

    new-instance v0, Landroid/content/Intent;

    const-class v4, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;

    invoke-direct {v0, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "Contact_User"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "Contact_Scene"

    invoke-virtual {v0, v4, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    invoke-virtual {v3}, Lcom/tencent/mm/storage/i;->aAp()Z

    move-result v3

    if-eqz v3, :cond_7

    sget-object v3, Lcom/tencent/mm/plugin/d/c/m;->dZN:Lcom/tencent/mm/plugin/d/c/m;

    const/16 v4, 0x283a

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",3"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/tencent/mm/plugin/d/c/m;->j(ILjava/lang/String;)V

    :cond_7
    invoke-static {v0, v1}, Lcom/tencent/mm/ui/contact/bh;->b(Landroid/content/Intent;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/contact/SelectContactUI;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    :cond_8
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "Contact_User"

    iget-object v5, v0, Lcom/tencent/mm/protocal/a/sh;->fEI:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v5}, Lcom/tencent/mm/protocal/a/rw;->getString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "Contact_Alias"

    iget-object v5, v0, Lcom/tencent/mm/protocal/a/sh;->cqt:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "Contact_Nick"

    iget-object v5, v0, Lcom/tencent/mm/protocal/a/sh;->fNa:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v5}, Lcom/tencent/mm/protocal/a/rw;->getString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "Contact_Signature"

    iget-object v5, v0, Lcom/tencent/mm/protocal/a/sh;->cqr:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "Contact_RegionCode"

    iget-object v5, v0, Lcom/tencent/mm/protocal/a/sh;->cqx:Ljava/lang/String;

    iget-object v6, v0, Lcom/tencent/mm/protocal/a/sh;->Tu:Ljava/lang/String;

    iget-object v7, v0, Lcom/tencent/mm/protocal/a/sh;->Tv:Ljava/lang/String;

    invoke-static {v5, v6, v7}, Lcom/tencent/mm/storage/RegionCodeDecoder;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "Contact_Sex"

    iget v5, v0, Lcom/tencent/mm/protocal/a/sh;->cqq:I

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "Contact_VUser_Info"

    iget-object v5, v0, Lcom/tencent/mm/protocal/a/sh;->fNq:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "Contact_VUser_Info_Flag"

    iget v5, v0, Lcom/tencent/mm/protocal/a/sh;->fNp:I

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "Contact_KWeibo_flag"

    iget v5, v0, Lcom/tencent/mm/protocal/a/sh;->fNt:I

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "Contact_KWeibo"

    iget-object v5, v0, Lcom/tencent/mm/protocal/a/sh;->fNr:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "Contact_KWeiboNick"

    iget-object v5, v0, Lcom/tencent/mm/protocal/a/sh;->fNs:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "Contact_KSnsIFlag"

    iget-object v5, v0, Lcom/tencent/mm/protocal/a/sh;->fNv:Lcom/tencent/mm/protocal/a/vp;

    iget v5, v5, Lcom/tencent/mm/protocal/a/vp;->cqz:I

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "Contact_KSnsBgId"

    iget-object v5, v0, Lcom/tencent/mm/protocal/a/sh;->fNv:Lcom/tencent/mm/protocal/a/vp;

    iget-wide v5, v5, Lcom/tencent/mm/protocal/a/vp;->cqB:J

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v4, "Contact_KSnsBgUrl"

    iget-object v5, v0, Lcom/tencent/mm/protocal/a/sh;->fNv:Lcom/tencent/mm/protocal/a/vp;

    iget-object v5, v5, Lcom/tencent/mm/protocal/a/vp;->cqA:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget v0, v0, Lcom/tencent/mm/protocal/a/sh;->fNp:I

    and-int/lit8 v0, v0, 0x8

    if-lez v0, :cond_9

    sget-object v0, Lcom/tencent/mm/plugin/d/c/m;->dZN:Lcom/tencent/mm/plugin/d/c/m;

    const/16 v4, 0x283a

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ",3"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/tencent/mm/plugin/d/c/m;->j(ILjava/lang/String;)V

    :cond_9
    invoke-virtual {p0, v3}, Lcom/tencent/mm/ui/contact/SelectContactUI;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    :cond_a
    invoke-virtual {v5}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/model/w;->cT(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tencent/mm/ui/contact/SelectContactUI;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "Contact_GroupFilter_Type"

    const-string v3, "@biz.contact"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/contact/SelectContactUI;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    :cond_b
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "Contact_User"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "Contact_Scene"

    invoke-virtual {v1, v3, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/contact/SelectContactUI;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    :cond_c
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gUQ:Lcom/tencent/mm/ui/contact/db;

    invoke-virtual {v0, v3}, Lcom/tencent/mm/ui/contact/db;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/storage/i;

    iget v4, v0, Lcom/tencent/mm/storage/i;->field_deleteFlag:I

    if-eq v4, v1, :cond_0

    iget-boolean v4, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gUW:Z

    if-eqz v4, :cond_d

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v3, "Select_Conv_User"

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->kn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v8, v1}, Lcom/tencent/mm/ui/contact/SelectContactUI;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/SelectContactUI;->finish()V

    goto/16 :goto_1

    :cond_d
    iget v4, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSH:I

    if-ne v4, v6, :cond_e

    iget-boolean v4, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gUJ:Z

    if-eqz v4, :cond_e

    iget-object v4, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gUQ:Lcom/tencent/mm/ui/contact/db;

    invoke-virtual {v4, v3}, Lcom/tencent/mm/ui/contact/db;->gW(I)V

    invoke-direct {p0}, Lcom/tencent/mm/ui/contact/SelectContactUI;->aKX()V

    :cond_e
    iget v4, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSH:I

    if-eqz v4, :cond_f

    iget v4, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSH:I

    if-eq v4, v1, :cond_f

    iget v4, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSH:I

    if-eq v4, v9, :cond_f

    iget v4, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSH:I

    const/4 v5, 0x5

    if-eq v4, v5, :cond_f

    iget v4, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSH:I

    if-eq v4, v6, :cond_f

    iget v4, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSH:I

    const/16 v5, 0x8

    if-eq v4, v5, :cond_f

    iget v4, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSH:I

    const/16 v5, 0xa

    if-ne v4, v5, :cond_14

    :cond_f
    iget v4, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSH:I

    if-nez v4, :cond_10

    iget-boolean v4, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gVj:Z

    if-eqz v4, :cond_10

    const-string v1, "MicroMsg.SelectContactUI"

    const-string v3, "go to single chat"

    invoke-static {v1, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/contact/SelectContactUI;->wS(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_10
    iget-object v4, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gUQ:Lcom/tencent/mm/ui/contact/db;

    invoke-virtual {v4, v3}, Lcom/tencent/mm/ui/contact/db;->gW(I)V

    iget-object v3, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gUQ:Lcom/tencent/mm/ui/contact/db;

    invoke-virtual {v3}, Lcom/tencent/mm/ui/contact/db;->aKU()Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/contact/SelectContactUI;->dg(Z)V

    :goto_3
    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/contact/SelectContactUI;->wR(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gVc:Landroid/widget/Button;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0709c4

    invoke-virtual {p0, v4}, Lcom/tencent/mm/ui/contact/SelectContactUI;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/tencent/mm/ui/contact/SelectContactUI;->aKW()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gVc:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/tencent/mm/ui/contact/SelectContactUI;->aKW()I

    move-result v0

    if-lez v0, :cond_13

    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Landroid/widget/Button;->setEnabled(Z)V

    iget-boolean v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gVg:Z

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->diw:Lcom/tencent/mm/ui/tools/eo;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/tools/eo;->clearText()V

    :cond_11
    move v2, v1

    goto/16 :goto_1

    :cond_12
    invoke-virtual {p0, v2}, Lcom/tencent/mm/ui/contact/SelectContactUI;->dg(Z)V

    goto :goto_3

    :cond_13
    move v0, v2

    goto :goto_4

    :cond_14
    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSH:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_18

    iget-boolean v1, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gUZ:Z

    if-eqz v1, :cond_15

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v3, "Select_Conv_User"

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v8, v1}, Lcom/tencent/mm/ui/contact/SelectContactUI;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/SelectContactUI;->finish()V

    goto/16 :goto_1

    :cond_15
    invoke-static {v3}, Lcom/tencent/mm/model/w;->cT(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    const-string v0, "MicroMsg.SelectContactUI"

    const-string v1, "error, never here"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_16
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gUY:Ljava/lang/String;

    const-string v3, "@chatroom"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gUY:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/tencent/mm/ui/contact/SelectContactUI;->bg(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_17
    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gUY:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/tencent/mm/ui/contact/SelectContactUI;->bf(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_18
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSH:I

    if-eqz v0, :cond_19

    iget v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSH:I

    if-eq v0, v1, :cond_19

    iget v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSH:I

    if-eq v0, v9, :cond_19

    iget v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSH:I

    const/4 v4, 0x5

    if-eq v0, v4, :cond_19

    iget v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSH:I

    if-eq v0, v6, :cond_19

    iget v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSH:I

    const/16 v4, 0x8

    if-eq v0, v4, :cond_19

    iget v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSH:I

    const/16 v4, 0x9

    if-eq v0, v4, :cond_19

    iget v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSH:I

    const/16 v4, 0xa

    if-ne v0, v4, :cond_1a

    :cond_19
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gUQ:Lcom/tencent/mm/ui/contact/db;

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/tencent/mm/storage/k;->tO(Ljava/lang/String;)Lcom/tencent/mm/storage/i;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/contact/db;->G(Lcom/tencent/mm/storage/i;)V

    goto/16 :goto_1

    :cond_1a
    invoke-static {v3}, Lcom/tencent/mm/model/w;->cT(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const-string v0, "MicroMsg.SelectContactUI"

    const-string v4, "error, 4.5 do not contain this contact %s"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v3, v1, v2

    invoke-static {v0, v4, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_1b
    iget-boolean v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gUV:Z

    if-eqz v0, :cond_1c

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "Select_Contact"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v8, v0}, Lcom/tencent/mm/ui/contact/SelectContactUI;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/SelectContactUI;->finish()V

    goto/16 :goto_1

    :cond_1c
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v4, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;

    invoke-virtual {v0, p0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v4, "Contact_User"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v3}, Lcom/tencent/mm/model/w;->cr(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1d

    const-string v4, "Is_group_card"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_1d
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-static {v0, v3}, Lcom/tencent/mm/ui/contact/bh;->b(Landroid/content/Intent;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/contact/SelectContactUI;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1
.end method

.method static synthetic b(Lcom/tencent/mm/ui/contact/SelectContactUI;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gUU:Z

    return p1
.end method

.method private bf(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1589
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 1590
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1591
    invoke-direct {p0, p1, v0}, Lcom/tencent/mm/ui/contact/SelectContactUI;->g(Ljava/lang/String;Ljava/util/List;)V

    .line 1592
    return-void
.end method

.method private bg(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 1611
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1612
    const-class v0, Lcom/tencent/mm/ui/contact/SendContactCardUI;

    invoke-virtual {v2, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1613
    const-string v3, "cardNameToSend is null"

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v3, v0}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    .line 1615
    const-string v0, "be_send_card_name"

    invoke-virtual {v2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1616
    const-string v0, "received_card_name"

    invoke-virtual {v2, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1617
    const-string v0, "Is_Chatroom"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1619
    const/high16 v0, 0x400

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1620
    const/4 v0, 0x6

    invoke-virtual {p0, v2, v0}, Lcom/tencent/mm/ui/contact/SelectContactUI;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1621
    return-void

    .line 1613
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lcom/tencent/mm/ui/contact/SelectContactUI;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/tencent/mm/ui/contact/SelectContactUI;->wS(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/tencent/mm/ui/contact/SelectContactUI;)Z
    .locals 1
    .parameter

    .prologue
    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gVg:Z

    return v0
.end method

.method static synthetic d(Lcom/tencent/mm/ui/contact/SelectContactUI;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/tencent/mm/ui/contact/SelectContactUI;->wR(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic d(Lcom/tencent/mm/ui/contact/SelectContactUI;)Z
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gVe:Z

    return v0
.end method

.method static synthetic e(Lcom/tencent/mm/ui/contact/SelectContactUI;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gVd:Landroid/view/View;

    return-object v0
.end method

.method static synthetic f(Lcom/tencent/mm/ui/contact/SelectContactUI;)Z
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gpY:Z

    return v0
.end method

.method static synthetic g(Lcom/tencent/mm/ui/contact/SelectContactUI;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gpX:Landroid/widget/TextView;

    return-object v0
.end method

.method private g(Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1595
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1596
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1597
    const-class v0, Lcom/tencent/mm/ui/contact/SendContactCardUI;

    invoke-virtual {v2, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1598
    const-string v3, "cardNameToSend is null"

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gUX:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v3, v0}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    .line 1600
    const-string v0, "be_send_card_name"

    invoke-virtual {v2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1601
    const-string v0, ","

    invoke-static {p2, v0}, Lcom/tencent/mm/platformtools/au;->a(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1602
    const-string v3, "received_card_name"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1603
    const-string v0, "Is_Chatroom"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1605
    const/high16 v0, 0x400

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1606
    const/4 v0, 0x6

    invoke-virtual {p0, v2, v0}, Lcom/tencent/mm/ui/contact/SelectContactUI;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1608
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 1598
    goto :goto_0
.end method

.method static synthetic h(Lcom/tencent/mm/ui/contact/SelectContactUI;)Lcom/tencent/mm/ui/tools/eo;
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->diw:Lcom/tencent/mm/ui/tools/eo;

    return-object v0
.end method

.method static synthetic i(Lcom/tencent/mm/ui/contact/SelectContactUI;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSA:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic j(Lcom/tencent/mm/ui/contact/SelectContactUI;)Lcom/tencent/mm/ui/voicesearch/j;
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSE:Lcom/tencent/mm/ui/voicesearch/j;

    return-object v0
.end method

.method static synthetic k(Lcom/tencent/mm/ui/contact/SelectContactUI;)I
    .locals 1
    .parameter

    .prologue
    .line 79
    iget v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSH:I

    return v0
.end method

.method static synthetic l(Lcom/tencent/mm/ui/contact/SelectContactUI;)Z
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gVi:Z

    return v0
.end method

.method static synthetic m(Lcom/tencent/mm/ui/contact/SelectContactUI;)Z
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gUV:Z

    return v0
.end method

.method static synthetic n(Lcom/tencent/mm/ui/contact/SelectContactUI;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gUX:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic o(Lcom/tencent/mm/ui/contact/SelectContactUI;)Z
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gVk:Z

    return v0
.end method

.method static synthetic p(Lcom/tencent/mm/ui/contact/SelectContactUI;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gUY:Ljava/lang/String;

    return-object v0
.end method

.method private q(IZ)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1167
    new-instance v0, Lcom/tencent/mm/z/i;

    invoke-direct {v0, p1}, Lcom/tencent/mm/z/i;-><init>(I)V

    .line 1168
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/tencent/mm/ui/contact/dw;

    invoke-direct {v2, p0, v0}, Lcom/tencent/mm/ui/contact/dw;-><init>(Lcom/tencent/mm/ui/contact/SelectContactUI;Lcom/tencent/mm/z/i;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1177
    if-eqz p2, :cond_0

    .line 1178
    const v1, 0x7f0709bb

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/contact/SelectContactUI;->getString(I)Ljava/lang/String;

    const v1, 0x7f0709ef

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/contact/SelectContactUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Lcom/tencent/mm/ui/contact/dx;

    invoke-direct {v3, p0, v0}, Lcom/tencent/mm/ui/contact/dx;-><init>(Lcom/tencent/mm/ui/contact/SelectContactUI;Lcom/tencent/mm/z/i;)V

    invoke-static {p0, v1, v2, v3}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)Lcom/tencent/mm/ui/base/ch;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->cIr:Landroid/app/ProgressDialog;

    .line 1188
    :cond_0
    return-void
.end method

.method static synthetic q(Lcom/tencent/mm/ui/contact/SelectContactUI;)Z
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gUU:Z

    return v0
.end method

.method static synthetic r(Lcom/tencent/mm/ui/contact/SelectContactUI;)V
    .locals 5
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 79
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gUQ:Lcom/tencent/mm/ui/contact/db;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/contact/db;->aKT()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {}, Lcom/tencent/mm/model/v;->th()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v3, :cond_0

    const-class v1, Lcom/tencent/mm/ui/chatting/ChattingUI;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "Chat_User"

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/tencent/mm/ui/contact/SelectContactUI;->a(Ljava/lang/Class;Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/tencent/mm/plugin/chatroom/a/c;

    const-string v2, ""

    invoke-direct {v1, v2, v0}, Lcom/tencent/mm/plugin/chatroom/a/c;-><init>(Ljava/lang/String;Ljava/util/List;)V

    iput-object v1, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gVa:Lcom/tencent/mm/plugin/chatroom/a/c;

    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gVa:Lcom/tencent/mm/plugin/chatroom/a/c;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    const v0, 0x7f0709bb

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/contact/SelectContactUI;->getString(I)Ljava/lang/String;

    const v0, 0x7f07060d

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/contact/SelectContactUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/ui/contact/dy;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/contact/dy;-><init>(Lcom/tencent/mm/ui/contact/SelectContactUI;)V

    invoke-static {p0, v0, v3, v1}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)Lcom/tencent/mm/ui/base/ch;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->cIr:Landroid/app/ProgressDialog;

    goto :goto_0
.end method

.method static synthetic s(Lcom/tencent/mm/ui/contact/SelectContactUI;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->dKG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic t(Lcom/tencent/mm/ui/contact/SelectContactUI;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/tencent/mm/ui/contact/SelectContactUI;->aKX()V

    return-void
.end method

.method static synthetic u(Lcom/tencent/mm/ui/contact/SelectContactUI;)Z
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSJ:Z

    return v0
.end method

.method static synthetic v(Lcom/tencent/mm/ui/contact/SelectContactUI;)Z
    .locals 1
    .parameter

    .prologue
    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSJ:Z

    return v0
.end method

.method static synthetic w(Lcom/tencent/mm/ui/contact/SelectContactUI;)Lcom/tencent/mm/ui/base/ce;
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gVb:Lcom/tencent/mm/ui/base/ce;

    return-object v0
.end method

.method private wR(Ljava/lang/String;)V
    .locals 6
    .parameter

    .prologue
    const v5, 0x7f0d003d

    const/4 v1, 0x0

    .line 1034
    invoke-static {p1}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1073
    :cond_0
    :goto_0
    return-void

    .line 1038
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gRY:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 1040
    if-nez v0, :cond_0

    .line 1044
    const-string v0, "MicroMsg.SelectContactUI"

    const-string v2, "search finish %B"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-boolean v4, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gVg:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v0, v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1045
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSI:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 1046
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSI:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    move v0, v1

    .line 1047
    :goto_1
    add-int/lit8 v3, v2, -0x1

    if-ge v0, v3, :cond_3

    .line 1048
    iget-object v3, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSI:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1049
    iget-boolean v1, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gVg:Z

    if-eqz v1, :cond_0

    .line 1050
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSI:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    goto :goto_0

    .line 1047
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1056
    :cond_3
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1058
    invoke-static {v3, p1}, Lcom/tencent/mm/pluginsdk/ui/c;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 1060
    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1062
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gVm:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1064
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSI:Landroid/widget/LinearLayout;

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 1065
    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 1066
    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/SelectContactUI;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1067
    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/SelectContactUI;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1068
    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/SelectContactUI;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0d001b

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1069
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1070
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSI:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/HorizontalScrollView;

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSI:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    goto/16 :goto_0
.end method

.method private wS(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 1624
    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/SelectContactUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Need_Result"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 1625
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1626
    if-eqz v0, :cond_0

    .line 1628
    const-string v0, "Select_Conv_User"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1629
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/ui/contact/SelectContactUI;->setResult(ILandroid/content/Intent;)V

    .line 1637
    :goto_0
    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/SelectContactUI;->finish()V

    .line 1639
    return-void

    .line 1632
    :cond_0
    const-class v0, Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1633
    const-string v0, "Chat_User"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1634
    const/high16 v0, 0x400

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1635
    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/contact/SelectContactUI;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method static synthetic x(Lcom/tencent/mm/ui/contact/SelectContactUI;)I
    .locals 1
    .parameter

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/tencent/mm/ui/contact/SelectContactUI;->aKW()I

    move-result v0

    return v0
.end method

.method static synthetic y(Lcom/tencent/mm/ui/contact/SelectContactUI;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gVc:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic z(Lcom/tencent/mm/ui/contact/SelectContactUI;)Lcom/tencent/mm/plugin/chatroom/a/c;
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gVa:Lcom/tencent/mm/plugin/chatroom/a/c;

    return-object v0
.end method


# virtual methods
.method protected final FR()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const v9, 0x7f0a041f

    const/16 v8, 0x8

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 358
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSA:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gVd:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSA:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gVd:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    .line 359
    :cond_0
    const v0, 0x7f0a087c

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/contact/SelectContactUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 360
    const v0, 0x7f0a006f

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/contact/SelectContactUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSA:Landroid/widget/ListView;

    .line 361
    const v0, 0x7f0a0071

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/contact/SelectContactUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSB:Landroid/widget/TextView;

    .line 362
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSB:Landroid/widget/TextView;

    const v1, 0x7f0703e6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 363
    const v0, 0x7f0a0070

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/contact/SelectContactUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gpX:Landroid/widget/TextView;

    .line 364
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gpX:Landroid/widget/TextView;

    const v1, 0x7f0703e7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 365
    new-instance v0, Lcom/tencent/mm/ui/contact/db;

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->dKG:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gRX:Ljava/lang/String;

    iget v4, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSH:I

    iget-boolean v5, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSc:Z

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/tencent/mm/ui/contact/db;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gUQ:Lcom/tencent/mm/ui/contact/db;

    .line 366
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gUQ:Lcom/tencent/mm/ui/contact/db;

    iget v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSH:I

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gVj:Z

    if-nez v0, :cond_16

    :cond_1
    move v0, v7

    :goto_0
    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/contact/db;->dT(Z)V

    .line 367
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSA:Landroid/widget/ListView;

    invoke-virtual {v0, v10}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 369
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gUQ:Lcom/tencent/mm/ui/contact/db;

    new-instance v1, Lcom/tencent/mm/ui/contact/dh;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/contact/dh;-><init>(Lcom/tencent/mm/ui/contact/SelectContactUI;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/contact/db;->a(Lcom/tencent/mm/ui/bd;)V

    .line 383
    iget-boolean v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gUW:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gUT:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v0, ""

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gUT:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 384
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gUT:Ljava/lang/String;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 385
    const-string v1, "MicroMsg.SelectContactUI"

    const-string v2, "chatroom members name=[%s]"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 386
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gUQ:Lcom/tencent/mm/ui/contact/db;

    const-string v2, ""

    invoke-virtual {v1, v2, v0, v7}, Lcom/tencent/mm/ui/contact/db;->a(Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 389
    :cond_2
    new-instance v0, Lcom/tencent/mm/ui/voicesearch/j;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/SelectContactUI;->aal()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, v7}, Lcom/tencent/mm/ui/voicesearch/j;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSE:Lcom/tencent/mm/ui/voicesearch/j;

    .line 390
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSE:Lcom/tencent/mm/ui/voicesearch/j;

    invoke-virtual {v0, v7}, Lcom/tencent/mm/ui/voicesearch/j;->eB(Z)V

    .line 392
    iget v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSH:I

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSH:I

    if-eq v0, v7, :cond_3

    iget v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSH:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSH:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSH:I

    if-eq v0, v8, :cond_3

    iget v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSH:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_5

    .line 396
    :cond_3
    iget v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSH:I

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gVj:Z

    if-nez v0, :cond_5

    .line 397
    :cond_4
    const v0, 0x7f0a0075

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/contact/SelectContactUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSI:Landroid/widget/LinearLayout;

    .line 398
    const v0, 0x7f0a0074

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/contact/SelectContactUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 399
    iput-boolean v7, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSK:Z

    .line 403
    :cond_5
    const-string v0, "MicroMsg.SelectContactUI"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "listType is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSH:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    new-instance v0, Lcom/tencent/mm/ui/tools/eo;

    invoke-direct {v0}, Lcom/tencent/mm/ui/tools/eo;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->diw:Lcom/tencent/mm/ui/tools/eo;

    .line 406
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->diw:Lcom/tencent/mm/ui/tools/eo;

    new-instance v1, Lcom/tencent/mm/ui/contact/ds;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/contact/ds;-><init>(Lcom/tencent/mm/ui/contact/SelectContactUI;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/tools/eo;->a(Lcom/tencent/mm/ui/tools/ez;)V

    .line 441
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->diw:Lcom/tencent/mm/ui/tools/eo;

    invoke-virtual {p0, v7, v0}, Lcom/tencent/mm/ui/contact/SelectContactUI;->a(ZLcom/tencent/mm/ui/tools/eo;)V

    .line 444
    const-string v0, "@biz.contact"

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->dKG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 445
    new-instance v0, Lcom/tencent/mm/ui/contact/ed;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/contact/ed;-><init>(Lcom/tencent/mm/ui/contact/SelectContactUI;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/contact/SelectContactUI;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)V

    .line 468
    :cond_6
    iget v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSH:I

    if-nez v0, :cond_17

    iget-boolean v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gVe:Z

    if-eqz v0, :cond_17

    .line 469
    const v0, 0x7f03013d

    invoke-static {p0, v0, v10}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gVd:Landroid/view/View;

    .line 470
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gVd:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 471
    if-eqz v0, :cond_7

    .line 472
    new-instance v1, Lcom/tencent/mm/ui/contact/ee;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/contact/ee;-><init>(Lcom/tencent/mm/ui/contact/SelectContactUI;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 483
    :cond_7
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSA:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gVd:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 551
    :cond_8
    :goto_1
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gUQ:Lcom/tencent/mm/ui/contact/db;

    invoke-virtual {v0, p0}, Lcom/tencent/mm/ui/contact/db;->a(Lcom/tencent/mm/ui/contact/SelectContactUI;)V

    .line 552
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSA:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gUQ:Lcom/tencent/mm/ui/contact/db;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 553
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gUQ:Lcom/tencent/mm/ui/contact/db;

    new-instance v1, Lcom/tencent/mm/ui/contact/ei;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/contact/ei;-><init>(Lcom/tencent/mm/ui/contact/SelectContactUI;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/contact/db;->a(Lcom/tencent/mm/ui/contact/de;)V

    .line 571
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSA:Landroid/widget/ListView;

    new-instance v1, Lcom/tencent/mm/ui/contact/ej;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/contact/ej;-><init>(Lcom/tencent/mm/ui/contact/SelectContactUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 580
    iget v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSH:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    .line 581
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSA:Landroid/widget/ListView;

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/contact/SelectContactUI;->registerForContextMenu(Landroid/view/View;)V

    .line 583
    :cond_9
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSA:Landroid/widget/ListView;

    new-instance v1, Lcom/tencent/mm/ui/contact/di;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/contact/di;-><init>(Lcom/tencent/mm/ui/contact/SelectContactUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 626
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSA:Landroid/widget/ListView;

    new-instance v1, Lcom/tencent/mm/ui/contact/dj;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/contact/dj;-><init>(Lcom/tencent/mm/ui/contact/SelectContactUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 651
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSA:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->goY:Lcom/tencent/mm/pluginsdk/ui/e;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 653
    iget v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSH:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->dKG:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->dKG:Ljava/lang/String;

    const-string v1, "@micromsg.qq.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 654
    :cond_a
    const v0, 0x7f020505

    new-instance v1, Lcom/tencent/mm/ui/contact/dk;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/contact/dk;-><init>(Lcom/tencent/mm/ui/contact/SelectContactUI;)V

    invoke-virtual {p0, v6, v0, v1}, Lcom/tencent/mm/ui/contact/SelectContactUI;->a(IILandroid/view/MenuItem$OnMenuItemClickListener;)V

    .line 667
    :cond_b
    const v0, 0x7f0a0077

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/contact/SelectContactUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gVc:Landroid/widget/Button;

    .line 668
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gVc:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/tencent/mm/ui/contact/SelectContactUI;->aKW()I

    move-result v0

    if-lez v0, :cond_1e

    move v0, v7

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 670
    iget v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSH:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_c

    iget v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSH:I

    if-eqz v0, :cond_c

    iget v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSH:I

    if-eq v0, v7, :cond_c

    iget v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSH:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_c

    iget v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSH:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_c

    iget v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSH:I

    if-eq v0, v8, :cond_c

    iget v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSH:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_d

    .line 672
    :cond_c
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gVc:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 673
    iget v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSH:I

    if-ne v0, v7, :cond_1f

    .line 676
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gUQ:Lcom/tencent/mm/ui/contact/db;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/contact/db;->aKU()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/contact/SelectContactUI;->dg(Z)V

    .line 677
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gVc:Landroid/widget/Button;

    new-instance v1, Lcom/tencent/mm/ui/contact/dl;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/contact/dl;-><init>(Lcom/tencent/mm/ui/contact/SelectContactUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 748
    :cond_d
    :goto_3
    iget v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSH:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_e

    iget v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSH:I

    if-eqz v0, :cond_e

    iget v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSH:I

    if-eq v0, v7, :cond_e

    iget v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSH:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_e

    iget v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSH:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_e

    iget v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSH:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_f

    .line 750
    :cond_e
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gVc:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0709c4

    invoke-virtual {p0, v2}, Lcom/tencent/mm/ui/contact/SelectContactUI;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/tencent/mm/ui/contact/SelectContactUI;->aKW()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 751
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gVc:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/tencent/mm/ui/contact/SelectContactUI;->aKW()I

    move-result v0

    if-lez v0, :cond_21

    move v0, v7

    :goto_4
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 755
    :cond_f
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSF:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/contact/SelectContactUI;->vT(Ljava/lang/String;)V

    .line 757
    new-instance v0, Lcom/tencent/mm/ui/contact/do;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/contact/do;-><init>(Lcom/tencent/mm/ui/contact/SelectContactUI;)V

    .line 766
    new-instance v0, Lcom/tencent/mm/ui/contact/dp;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/contact/dp;-><init>(Lcom/tencent/mm/ui/contact/SelectContactUI;)V

    .line 784
    iget v1, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSH:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_10

    iget v1, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSH:I

    if-eqz v1, :cond_10

    iget v1, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSH:I

    if-eq v1, v7, :cond_10

    iget v1, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSH:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_10

    iget v1, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSH:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_10

    iget v1, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSH:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_10

    iget v1, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSH:I

    if-eq v1, v8, :cond_10

    iget v1, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSH:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_22

    .line 786
    :cond_10
    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/contact/SelectContactUI;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)V

    .line 793
    :cond_11
    :goto_5
    const v0, 0x7f0a0072

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/contact/SelectContactUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/base/AlphabetScrollBar;

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->dLK:Lcom/tencent/mm/ui/base/AlphabetScrollBar;

    .line 795
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSE:Lcom/tencent/mm/ui/voicesearch/j;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/voicesearch/j;->aPm()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 796
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->dLK:Lcom/tencent/mm/ui/base/AlphabetScrollBar;

    invoke-virtual {v0, v8}, Lcom/tencent/mm/ui/base/AlphabetScrollBar;->setVisibility(I)V

    .line 802
    :goto_6
    const-string v0, "@t.qq.com"

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->dKG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    const/16 v0, 0x9

    invoke-static {}, Lcom/tencent/mm/model/w;->tN()Z

    move-result v1

    if-nez v1, :cond_25

    :goto_7
    invoke-direct {p0, v0, v7}, Lcom/tencent/mm/ui/contact/SelectContactUI;->q(IZ)V

    .line 804
    :cond_12
    :goto_8
    iget v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSH:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_13

    .line 805
    const v0, 0x7f0709c4

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/contact/SelectContactUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/ui/contact/dq;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/contact/dq;-><init>(Lcom/tencent/mm/ui/contact/SelectContactUI;)V

    invoke-virtual {p0, v6, v0, v1}, Lcom/tencent/mm/ui/contact/SelectContactUI;->a(ILjava/lang/String;Landroid/view/MenuItem$OnMenuItemClickListener;)V

    .line 814
    :cond_13
    iget v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSH:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_14

    iget-boolean v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gUJ:Z

    if-eqz v0, :cond_14

    .line 816
    invoke-virtual {p0, v6}, Lcom/tencent/mm/ui/contact/SelectContactUI;->dh(Z)V

    .line 820
    :cond_14
    iget v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSH:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_15

    .line 821
    const v0, 0x7f0709c4

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/contact/SelectContactUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/ui/contact/dr;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/contact/dr;-><init>(Lcom/tencent/mm/ui/contact/SelectContactUI;)V

    invoke-virtual {p0, v6, v0, v1}, Lcom/tencent/mm/ui/contact/SelectContactUI;->a(ILjava/lang/String;Landroid/view/MenuItem$OnMenuItemClickListener;)V

    .line 830
    :cond_15
    return-void

    :cond_16
    move v0, v6

    .line 366
    goto/16 :goto_0

    .line 485
    :cond_17
    iget v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSH:I

    if-ne v0, v7, :cond_19

    iget-boolean v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gVe:Z

    if-eqz v0, :cond_19

    .line 487
    const v0, 0x7f03013d

    invoke-static {p0, v0, v10}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gVd:Landroid/view/View;

    .line 488
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gVd:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 489
    if-eqz v0, :cond_18

    .line 490
    new-instance v1, Lcom/tencent/mm/ui/contact/ef;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/contact/ef;-><init>(Lcom/tencent/mm/ui/contact/SelectContactUI;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 500
    :cond_18
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gVd:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0703f2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 501
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSA:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gVd:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    goto/16 :goto_1

    .line 502
    :cond_19
    iget v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSH:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1b

    iget-boolean v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gVe:Z

    if-eqz v0, :cond_1b

    .line 503
    const v0, 0x7f03013d

    invoke-static {p0, v0, v10}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gVd:Landroid/view/View;

    .line 504
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gVd:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 505
    if-eqz v0, :cond_1a

    .line 506
    new-instance v1, Lcom/tencent/mm/ui/contact/eg;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/contact/eg;-><init>(Lcom/tencent/mm/ui/contact/SelectContactUI;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 519
    :cond_1a
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSA:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gVd:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    goto/16 :goto_1

    .line 520
    :cond_1b
    iget v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSH:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1d

    iget-boolean v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gVe:Z

    if-eqz v0, :cond_1d

    .line 521
    const v0, 0x7f03013d

    invoke-static {p0, v0, v10}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gVd:Landroid/view/View;

    .line 522
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gVd:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 523
    if-eqz v0, :cond_1c

    .line 524
    new-instance v1, Lcom/tencent/mm/ui/contact/eh;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/contact/eh;-><init>(Lcom/tencent/mm/ui/contact/SelectContactUI;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 537
    :cond_1c
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSA:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gVd:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    goto/16 :goto_1

    .line 538
    :cond_1d
    iget v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSH:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_8

    .line 546
    iget v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSH:I

    if-ne v0, v8, :cond_8

    .line 547
    const v0, 0x7f03013d

    invoke-static {p0, v0, v10}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gVd:Landroid/view/View;

    .line 548
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gVd:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    goto/16 :goto_1

    :cond_1e
    move v0, v6

    .line 668
    goto/16 :goto_2

    .line 705
    :cond_1f
    iget v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSH:I

    if-ne v0, v8, :cond_20

    .line 706
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gVc:Landroid/widget/Button;

    new-instance v1, Lcom/tencent/mm/ui/contact/dm;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/contact/dm;-><init>(Lcom/tencent/mm/ui/contact/SelectContactUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_3

    .line 719
    :cond_20
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gUQ:Lcom/tencent/mm/ui/contact/db;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/contact/db;->aKU()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/contact/SelectContactUI;->dg(Z)V

    .line 720
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gVc:Landroid/widget/Button;

    new-instance v1, Lcom/tencent/mm/ui/contact/dn;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/contact/dn;-><init>(Lcom/tencent/mm/ui/contact/SelectContactUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_3

    :cond_21
    move v0, v6

    .line 751
    goto/16 :goto_4

    .line 788
    :cond_22
    const-string v1, "@black.android"

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->dKG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    const-string v1, "@domain.android"

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->dKG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    const-string v1, "@t.qq.com"

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->dKG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 789
    :cond_23
    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/contact/SelectContactUI;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)V

    goto/16 :goto_5

    .line 798
    :cond_24
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->dLK:Lcom/tencent/mm/ui/base/AlphabetScrollBar;

    invoke-virtual {v0, v6}, Lcom/tencent/mm/ui/base/AlphabetScrollBar;->setVisibility(I)V

    .line 799
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->dLK:Lcom/tencent/mm/ui/base/AlphabetScrollBar;

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->dLM:Lcom/tencent/mm/ui/base/ek;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/AlphabetScrollBar;->a(Lcom/tencent/mm/ui/base/ek;)V

    goto/16 :goto_6

    :cond_25
    move v7, v6

    .line 802
    goto/16 :goto_7

    :cond_26
    const-string v0, "@qqim"

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->dKG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v0, 0xa

    invoke-static {}, Lcom/tencent/mm/model/w;->tO()Z

    move-result v1

    if-nez v1, :cond_27

    :goto_9
    invoke-direct {p0, v0, v7}, Lcom/tencent/mm/ui/contact/SelectContactUI;->q(IZ)V

    goto/16 :goto_8

    :cond_27
    move v7, v6

    goto :goto_9
.end method

.method public final a(IILjava/lang/String;Lcom/tencent/mm/n/x;)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const v9, 0x7f070612

    const/16 v1, 0x77

    const v8, 0x7f07060e

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1438
    invoke-virtual {p4}, Lcom/tencent/mm/n/x;->getType()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 1439
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gVa:Lcom/tencent/mm/plugin/chatroom/a/c;

    if-nez v0, :cond_1

    .line 1487
    :cond_0
    :goto_0
    return-void

    .line 1442
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gVa:Lcom/tencent/mm/plugin/chatroom/a/c;

    .line 1443
    iput-boolean v2, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gUU:Z

    .line 1446
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->cIr:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_3

    .line 1447
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->cIr:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1448
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->cIr:Landroid/app/ProgressDialog;

    .line 1451
    :cond_3
    invoke-static {p0}, Lcom/tencent/mm/platformtools/au;->ag(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1455
    const/4 v0, 0x4

    invoke-static {p0, p1, p2, v0}, Lcom/tencent/mm/ui/cx;->a(Landroid/content/Context;III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1459
    if-nez p1, :cond_4

    if-eqz p2, :cond_d

    .line 1460
    :cond_4
    invoke-virtual {p4}, Lcom/tencent/mm/n/x;->getType()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 1461
    check-cast p4, Lcom/tencent/mm/plugin/chatroom/a/c;

    const-string v1, ""

    const-string v0, ""

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, -0x17

    if-ne p2, v5, :cond_5

    const v0, 0x7f07096e

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/contact/SelectContactUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v0, 0x7f07096c

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/contact/SelectContactUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_5
    invoke-virtual {p4}, Lcom/tencent/mm/plugin/chatroom/a/c;->Kj()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_9

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_9

    invoke-virtual {p4}, Lcom/tencent/mm/plugin/chatroom/a/c;->Kk()I

    move-result v6

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ne v6, v7, :cond_9

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    move v0, v2

    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_6

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_7

    move v0, v3

    :goto_2
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-ne v4, v3, :cond_8

    const v4, 0x7f070075

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Lcom/tencent/mm/ui/contact/SelectContactUI;->aA(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    invoke-static {v5, v0}, Lcom/tencent/mm/platformtools/au;->a(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v2

    invoke-virtual {p0, v4, v3}, Lcom/tencent/mm/ui/contact/SelectContactUI;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {p0, v8}, Lcom/tencent/mm/ui/contact/SelectContactUI;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/tencent/mm/ui/contact/eb;

    invoke-direct {v3, p0, v1}, Lcom/tencent/mm/ui/contact/eb;-><init>(Lcom/tencent/mm/ui/contact/SelectContactUI;Ljava/util/LinkedList;)V

    invoke-static {p0, v0, v2, v3}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/x;

    goto/16 :goto_0

    :cond_7
    move v0, v2

    goto :goto_2

    :cond_8
    const v4, 0x7f070074

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Lcom/tencent/mm/ui/contact/SelectContactUI;->aA(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    invoke-static {v5, v0}, Lcom/tencent/mm/platformtools/au;->a(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v2

    invoke-virtual {p0, v4, v3}, Lcom/tencent/mm/ui/contact/SelectContactUI;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_9
    invoke-virtual {p4}, Lcom/tencent/mm/plugin/chatroom/a/c;->Kh()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_a

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_a

    invoke-virtual {p0, v8}, Lcom/tencent/mm/ui/contact/SelectContactUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v6, 0x7f07006a

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {v5}, Lcom/tencent/mm/ui/contact/SelectContactUI;->aA(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/tencent/mm/platformtools/au;->a(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v2

    invoke-virtual {p0, v6, v7}, Lcom/tencent/mm/ui/contact/SelectContactUI;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_a
    invoke-virtual {p4}, Lcom/tencent/mm/plugin/chatroom/a/c;->Kg()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_b

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_b

    invoke-virtual {p0, v8}, Lcom/tencent/mm/ui/contact/SelectContactUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v6, 0x7f07006b

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {v5}, Lcom/tencent/mm/ui/contact/SelectContactUI;->aA(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/tencent/mm/platformtools/au;->a(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v2

    invoke-virtual {p0, v6, v7}, Lcom/tencent/mm/ui/contact/SelectContactUI;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_b
    if-eqz v1, :cond_c

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_c

    invoke-static {p0, v0, v1}, Lcom/tencent/mm/ui/base/h;->p(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mm/ui/base/x;

    goto/16 :goto_0

    :cond_c
    const v0, 0x7f070060

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/ui/contact/SelectContactUI;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 1466
    :cond_d
    invoke-virtual {p4}, Lcom/tencent/mm/n/x;->getType()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    .line 1486
    :sswitch_0
    invoke-direct {p0}, Lcom/tencent/mm/ui/contact/SelectContactUI;->akH()V

    goto/16 :goto_0

    :sswitch_1
    move-object v0, p4

    .line 1468
    check-cast v0, Lcom/tencent/mm/plugin/chatroom/a/c;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/chatroom/a/c;->Kl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->cWi:Ljava/lang/String;

    .line 1469
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->cWi:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gUQ:Lcom/tencent/mm/ui/contact/db;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/contact/db;->aKT()Ljava/util/ArrayList;

    move-result-object v1

    const v4, 0x7f070610

    invoke-virtual {p0, v4}, Lcom/tencent/mm/ui/contact/SelectContactUI;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-static {v0, v1, v4, v2, v5}, Lcom/tencent/mm/model/bv;->a(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZLjava/lang/String;)V

    .line 1470
    check-cast p4, Lcom/tencent/mm/plugin/chatroom/a/c;

    .line 1471
    invoke-virtual {p4}, Lcom/tencent/mm/plugin/chatroom/a/c;->Kj()Ljava/util/List;

    move-result-object v0

    .line 1472
    if-eqz v0, :cond_f

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_f

    .line 1473
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 1474
    :goto_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_e

    .line 1475
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1474
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1477
    :cond_e
    invoke-virtual {p4}, Lcom/tencent/mm/plugin/chatroom/a/c;->Kl()Ljava/lang/String;

    move-result-object v0

    .line 1478
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "weixin://findfriend/verifycontact/"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1479
    const v4, 0x7f070611

    invoke-virtual {p0, v4}, Lcom/tencent/mm/ui/contact/SelectContactUI;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v4, v3, v2}, Lcom/tencent/mm/model/bv;->a(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZLjava/lang/String;)V

    .line 1481
    :cond_f
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->cWi:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/contact/SelectContactUI;->wS(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1466
    :sswitch_data_0
    .sparse-switch
        0x26 -> :sswitch_0
        0x77 -> :sswitch_1
    .end sparse-switch
.end method

.method protected final aEZ()Ljava/lang/String;
    .locals 2

    .prologue
    .line 350
    const-string v0, "@biz.contact"

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->dKG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 351
    const-string v0, "_bizContact"

    .line 353
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public final aKY()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 1820
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gUQ:Lcom/tencent/mm/ui/contact/db;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/contact/db;->dU(Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 1821
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1822
    const-string v2, "Select_Contact"

    const-string v3, ","

    invoke-static {v0, v3}, Lcom/tencent/mm/platformtools/au;->a(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1823
    const-string v0, "extra_id"

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->cZs:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1825
    const-string v0, "consume_id"

    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/SelectContactUI;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "consume_id"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1826
    const-string v0, "extra_coverurl"

    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/SelectContactUI;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "extra_coverurl"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1827
    const-string v0, "extra_name"

    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/SelectContactUI;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "extra_name"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1828
    const-string v0, "extra_price"

    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/SelectContactUI;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "extra_price"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1829
    const-string v0, "extra_price_num"

    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/SelectContactUI;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "extra_price_num"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1830
    const-string v0, "extra_price_type"

    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/SelectContactUI;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "extra_price_type"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1831
    const-string v0, "google_price"

    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/SelectContactUI;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "google_price"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1832
    const-string v0, "extra_flag"

    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/SelectContactUI;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "extra_flag"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1833
    const-string v0, "extra_type"

    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/SelectContactUI;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "extra_type"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1834
    const-string v0, "is_google_play"

    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/SelectContactUI;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "is_google_play"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1835
    const-string v0, "share_desc"

    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/SelectContactUI;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "share_desc"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1837
    invoke-virtual {p0, v4, v1}, Lcom/tencent/mm/ui/contact/SelectContactUI;->setResult(ILandroid/content/Intent;)V

    .line 1838
    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/SelectContactUI;->finish()V

    .line 1839
    return-void
.end method

.method public final aKu()Lcom/tencent/mm/pluginsdk/ui/e;
    .locals 1

    .prologue
    .line 1006
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->goY:Lcom/tencent/mm/pluginsdk/ui/e;

    return-object v0
.end method

.method protected final getLayoutId()I
    .locals 1

    .prologue
    .line 149
    const v0, 0x7f03001d

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, -0x1

    .line 316
    const-string v0, "MicroMsg.SelectContactUI"

    const-string v1, "onAcvityResult requestCode: %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 317
    const/4 v0, 0x6

    if-ne p1, v0, :cond_1

    .line 318
    if-ne p2, v5, :cond_1

    .line 319
    invoke-virtual {p0, v5}, Lcom/tencent/mm/ui/contact/SelectContactUI;->setResult(I)V

    .line 320
    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/SelectContactUI;->finish()V

    .line 346
    :cond_0
    :goto_0
    return-void

    .line 325
    :cond_1
    if-ne p2, v5, :cond_0

    .line 328
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 330
    :pswitch_0
    invoke-virtual {p0, v5, p3}, Lcom/tencent/mm/ui/contact/SelectContactUI;->setResult(ILandroid/content/Intent;)V

    .line 331
    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/SelectContactUI;->finish()V

    goto :goto_0

    .line 335
    :pswitch_1
    const-string v0, "Select_Contact"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 336
    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 337
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gUY:Ljava/lang/String;

    const-string v2, "@chatroom"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 338
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gUY:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/tencent/mm/ui/contact/SelectContactUI;->bg(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 340
    :cond_2
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gUY:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/tencent/mm/ui/contact/SelectContactUI;->bf(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 328
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x1

    .line 1359
    invoke-super {p0, p1}, Lcom/tencent/mm/ui/MMActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    .line 1361
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 1377
    :goto_0
    return v3

    .line 1365
    :sswitch_0
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gVf:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gVf:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/k;->tO(Ljava/lang/String;)Lcom/tencent/mm/storage/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->qJ()V

    invoke-static {v0}, Lcom/tencent/mm/model/w;->n(Lcom/tencent/mm/storage/i;)V

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gVf:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/mm/model/w;->cp(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gVf:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/k;->tU(Ljava/lang/String;)I

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sA()Lcom/tencent/mm/storage/c;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gVf:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/c;->tx(Ljava/lang/String;)Z

    :goto_1
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/z/i;

    invoke-direct {v1, v4}, Lcom/tencent/mm/z/i;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    .line 1376
    :goto_2
    invoke-direct {p0}, Lcom/tencent/mm/ui/contact/SelectContactUI;->akH()V

    goto :goto_0

    .line 1365
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->cQb:Z

    const v1, 0x7f0709bb

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/contact/SelectContactUI;->getString(I)Ljava/lang/String;

    const v1, 0x7f0709ee

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/contact/SelectContactUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/ui/contact/dz;

    invoke-direct {v2, p0}, Lcom/tencent/mm/ui/contact/dz;-><init>(Lcom/tencent/mm/ui/contact/SelectContactUI;)V

    invoke-static {p0, v1, v3, v2}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)Lcom/tencent/mm/ui/base/ch;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->dRP:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gVf:Ljava/lang/String;

    new-instance v2, Lcom/tencent/mm/ui/contact/ea;

    invoke-direct {v2, p0}, Lcom/tencent/mm/ui/contact/ea;-><init>(Lcom/tencent/mm/ui/contact/SelectContactUI;)V

    invoke-static {v1, v2}, Lcom/tencent/mm/model/bv;->a(Ljava/lang/String;Lcom/tencent/mm/model/ca;)I

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gVf:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/tencent/mm/storage/k;->a(Ljava/lang/String;Lcom/tencent/mm/storage/i;)I

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sx()Lcom/tencent/mm/storage/o;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gVf:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/o;->tX(Ljava/lang/String;)V

    goto :goto_1

    .line 1370
    :sswitch_1
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gVf:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gVf:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/k;->tO(Ljava/lang/String;)Lcom/tencent/mm/storage/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->qJ()V

    invoke-static {v0}, Lcom/tencent/mm/model/w;->n(Lcom/tencent/mm/storage/i;)V

    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/z/i;

    invoke-direct {v1, v4}, Lcom/tencent/mm/z/i;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    goto :goto_2

    .line 1361
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x7 -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    const v4, 0x7f0703de

    const/4 v3, 0x0

    .line 154
    invoke-super {p0, p1}, Lcom/tencent/mm/ui/MMActivity;->onCreate(Landroid/os/Bundle;)V

    .line 155
    invoke-static {}, Lcom/tencent/mm/model/v;->ts()Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gUJ:Z

    .line 156
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0x77

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/n/ac;->a(ILcom/tencent/mm/n/m;)V

    .line 157
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0x1e

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/n/ac;->a(ILcom/tencent/mm/n/m;)V

    .line 158
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0x26

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/n/ac;->a(ILcom/tencent/mm/n/m;)V

    .line 160
    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/SelectContactUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Contact_GroupFilter_Type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->dKG:Ljava/lang/String;

    .line 161
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->dKG:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/au;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    .line 162
    const-string v0, "@micromsg.qq.com"

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->dKG:Ljava/lang/String;

    .line 164
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/SelectContactUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Contact_GroupFilter_Str"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gRX:Ljava/lang/String;

    .line 165
    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/SelectContactUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Contact_GroupFilter_DisplayName"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSF:Ljava/lang/String;

    .line 167
    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/SelectContactUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "single_chat"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gVj:Z

    .line 169
    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/SelectContactUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Chatroom_member_list"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gUT:Ljava/lang/String;

    .line 170
    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/SelectContactUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Show_Chatroom_member"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gUW:Z

    .line 172
    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/SelectContactUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Block_list"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gUR:Ljava/lang/String;

    .line 173
    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/SelectContactUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Disabled_Selected_list"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gUS:Ljava/lang/String;

    .line 175
    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/SelectContactUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "List_Type"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSH:I

    .line 176
    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/SelectContactUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Add_SendCard"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gUV:Z

    .line 177
    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/SelectContactUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Need_Group_Item"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gVe:Z

    .line 178
    iget-boolean v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gVe:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/tencent/mm/model/w;->tM()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSH:I

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gVj:Z

    if-eqz v0, :cond_3

    .line 179
    :cond_2
    iput-boolean v3, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gVe:Z

    .line 182
    :cond_3
    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/SelectContactUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "recommend_friends"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gVk:Z

    .line 183
    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/SelectContactUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Need_Voice_Search"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gVh:Z

    .line 185
    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/SelectContactUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "to_talk_room"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gVi:Z

    .line 187
    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/SelectContactUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "favour_include_biz"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSc:Z

    .line 188
    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/SelectContactUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->cZs:Ljava/lang/String;

    .line 189
    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/SelectContactUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "share_desc"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gVl:Ljava/lang/String;

    .line 190
    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/SelectContactUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Add_address_titile"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 191
    if-eqz v0, :cond_4

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 192
    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/contact/SelectContactUI;->vT(Ljava/lang/String;)V

    .line 194
    :cond_4
    iget-boolean v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gUV:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gVk:Z

    if-eqz v0, :cond_6

    .line 195
    :cond_5
    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/SelectContactUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "be_send_card_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/au;->R(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gUX:Ljava/lang/String;

    .line 196
    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/SelectContactUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "received_card_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/au;->R(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gUY:Ljava/lang/String;

    .line 200
    :cond_6
    iget v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSH:I

    if-nez v0, :cond_a

    .line 201
    iget-boolean v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gVj:Z

    if-eqz v0, :cond_9

    .line 202
    const v0, 0x7f0703dd

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/contact/SelectContactUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSF:Ljava/lang/String;

    .line 229
    :cond_7
    :goto_0
    const-string v0, "@biz.contact"

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->dKG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 231
    const v0, 0x7f0703f8

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/contact/SelectContactUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSF:Ljava/lang/String;

    .line 235
    :cond_8
    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/SelectContactUI;->FR()V

    .line 236
    return-void

    .line 204
    :cond_9
    const v0, 0x7f0703dc

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/contact/SelectContactUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSF:Ljava/lang/String;

    goto :goto_0

    .line 207
    :cond_a
    iget v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSH:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_b

    iget v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSH:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_b

    iget v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSH:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_c

    .line 208
    :cond_b
    invoke-virtual {p0, v4}, Lcom/tencent/mm/ui/contact/SelectContactUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSF:Ljava/lang/String;

    goto :goto_0

    .line 210
    :cond_c
    iget v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSH:I

    if-ne v0, v5, :cond_d

    .line 211
    const v0, 0x7f0703df

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/contact/SelectContactUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSF:Ljava/lang/String;

    goto :goto_0

    .line 213
    :cond_d
    iget v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSH:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_e

    .line 215
    invoke-virtual {p0, v4}, Lcom/tencent/mm/ui/contact/SelectContactUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSF:Ljava/lang/String;

    .line 216
    iput v5, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSH:I

    goto :goto_0

    .line 217
    :cond_e
    iget v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSH:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_f

    iget v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSH:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_10

    .line 219
    :cond_f
    invoke-virtual {p0, v4}, Lcom/tencent/mm/ui/contact/SelectContactUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSF:Ljava/lang/String;

    goto :goto_0

    .line 221
    :cond_10
    iget v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSH:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_11

    .line 222
    invoke-virtual {p0, v4}, Lcom/tencent/mm/ui/contact/SelectContactUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSF:Ljava/lang/String;

    .line 223
    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/SelectContactUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "select_contact_pick_result"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gUZ:Z

    goto :goto_0

    .line 225
    :cond_11
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSF:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/au;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_7

    .line 226
    const v0, 0x7f070001

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/contact/SelectContactUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSF:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 1319
    invoke-super {p0, p1, p2, p3}, Lcom/tencent/mm/ui/MMActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 1321
    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 1323
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gVf:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/k;->tO(Ljava/lang/String;)Lcom/tencent/mm/storage/i;

    move-result-object v0

    .line 1324
    if-nez v0, :cond_1

    .line 1325
    const-string v0, "MicroMsg.SelectContactUI"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onCreateContextMenu, contact is null, username = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gVf:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1355
    :cond_0
    :goto_0
    return-void

    .line 1329
    :cond_1
    const-string v1, "@domain.android"

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->dKG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "@black.android"

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->dKG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "@t.qq.com"

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->dKG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1333
    invoke-static {}, Lcom/tencent/mm/model/v;->th()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1337
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gVf:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/mm/model/w;->cr(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1338
    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->rr()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Lcom/tencent/mm/ao/b;->e(Landroid/content/Context;Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 1339
    iget v0, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    const/4 v1, 0x2

    const v2, 0x7f0703e5

    invoke-interface {p1, v0, v1, v4, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0

    .line 1343
    :cond_2
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gVf:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/mm/model/w;->cH(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1353
    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->rr()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Lcom/tencent/mm/ao/b;->e(Landroid/content/Context;Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 1354
    iget v0, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    const/4 v1, 0x1

    const v2, 0x7f0703e4

    invoke-interface {p1, v0, v1, v4, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 283
    const-string v0, "MicroMsg.SelectContactUI"

    const-string v1, "onDestory"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0x77

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/n/ac;->b(ILcom/tencent/mm/n/m;)V

    .line 285
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0x1e

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/n/ac;->b(ILcom/tencent/mm/n/m;)V

    .line 286
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0x26

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/n/ac;->b(ILcom/tencent/mm/n/m;)V

    .line 288
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->dLK:Lcom/tencent/mm/ui/base/AlphabetScrollBar;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/AlphabetScrollBar;->aHU()V

    .line 289
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gUQ:Lcom/tencent/mm/ui/contact/db;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/contact/db;->closeCursor()V

    .line 290
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gUQ:Lcom/tencent/mm/ui/contact/db;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/contact/db;->detach()V

    .line 291
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gUQ:Lcom/tencent/mm/ui/contact/db;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/contact/db;->aDU()V

    .line 293
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gVb:Lcom/tencent/mm/ui/base/ce;

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gVb:Lcom/tencent/mm/ui/base/ce;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/ce;->dismiss()V

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSE:Lcom/tencent/mm/ui/voicesearch/j;

    if-eqz v0, :cond_1

    .line 297
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSE:Lcom/tencent/mm/ui/voicesearch/j;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/voicesearch/j;->detach()V

    .line 298
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSE:Lcom/tencent/mm/ui/voicesearch/j;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/voicesearch/j;->closeCursor()V

    .line 311
    :cond_1
    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onDestroy()V

    .line 312
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1791
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 1792
    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/SelectContactUI;->finish()V

    .line 1795
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/tencent/mm/ui/MMActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 267
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gVb:Lcom/tencent/mm/ui/base/ce;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gVb:Lcom/tencent/mm/ui/base/ce;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/ce;->dismiss()V

    .line 270
    :cond_0
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const/16 v1, 0x3008

    iget-boolean v2, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSJ:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/storage/e;->set(ILjava/lang/Object;)V

    .line 274
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSE:Lcom/tencent/mm/ui/voicesearch/j;

    if-eqz v0, :cond_1

    .line 275
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSE:Lcom/tencent/mm/ui/voicesearch/j;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/voicesearch/j;->onPause()V

    .line 278
    :cond_1
    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onPause()V

    .line 279
    return-void
.end method

.method public onResume()V
    .locals 10

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 240
    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onResume()V

    .line 241
    const/4 v0, 0x0

    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iget-object v3, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gUR:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gUR:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gUR:Ljava/lang/String;

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/platformtools/au;->c([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_e

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_e

    iget v3, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSH:I

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSH:I

    if-eq v3, v1, :cond_1

    iget v3, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSH:I

    if-eq v3, v9, :cond_1

    iget v3, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSH:I

    const/4 v5, 0x7

    if-eq v3, v5, :cond_1

    iget v3, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSH:I

    const/16 v5, 0x8

    if-eq v3, v5, :cond_1

    iget v3, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSH:I

    const/16 v5, 0x9

    if-ne v3, v5, :cond_d

    :cond_1
    iget-object v3, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gUQ:Lcom/tencent/mm/ui/contact/db;

    invoke-virtual {v3, v0}, Lcom/tencent/mm/ui/contact/db;->aD(Ljava/util/List;)V

    :cond_2
    :goto_0
    iget v3, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSH:I

    packed-switch v3, :pswitch_data_0

    :goto_1
    :pswitch_0
    const-string v3, "officialaccounts"

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "officialaccounts"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    const-string v3, "helper_entry"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "@t.qq.com"

    iget-object v5, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->dKG:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "weixin"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-object v3, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gUQ:Lcom/tencent/mm/ui/contact/db;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gUQ:Lcom/tencent/mm/ui/contact/db;

    invoke-virtual {v3, v0}, Lcom/tencent/mm/ui/contact/db;->aB(Ljava/util/List;)V

    :cond_5
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSE:Lcom/tencent/mm/ui/voicesearch/j;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSE:Lcom/tencent/mm/ui/voicesearch/j;

    invoke-virtual {v0, v4}, Lcom/tencent/mm/ui/voicesearch/j;->aB(Ljava/util/List;)V

    :cond_6
    iget v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSH:I

    if-eq v0, v8, :cond_7

    iget v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSH:I

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSH:I

    if-eq v0, v1, :cond_7

    iget v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSH:I

    if-ne v0, v9, :cond_12

    :cond_7
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gVc:Landroid/widget/Button;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0709c4

    invoke-virtual {p0, v4}, Lcom/tencent/mm/ui/contact/SelectContactUI;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/tencent/mm/ui/contact/SelectContactUI;->aKW()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gVc:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/tencent/mm/ui/contact/SelectContactUI;->aKW()I

    move-result v0

    if-lez v0, :cond_11

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_3
    iget v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSH:I

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSF:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/contact/SelectContactUI;->vT(Ljava/lang/String;)V

    .line 242
    :cond_8
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gUS:Ljava/lang/String;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gUS:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gUS:Ljava/lang/String;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/platformtools/au;->c([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gRY:Ljava/util/List;

    :goto_4
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gRY:Ljava/util/List;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gRY:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gUQ:Lcom/tencent/mm/ui/contact/db;

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gRY:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/contact/db;->aE(Ljava/util/List;)V

    .line 245
    :cond_9
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

    iput-boolean v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSJ:Z

    .line 247
    iget v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSH:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    .line 248
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v0

    invoke-static {}, Lcom/tencent/mm/model/v;->th()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/k;->tO(Ljava/lang/String;)Lcom/tencent/mm/storage/i;

    move-result-object v0

    .line 249
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->rb()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->ru()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->rw()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->rv()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 250
    :cond_a
    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->qI()V

    .line 251
    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/i;->bH(Ljava/lang/String;)V

    .line 252
    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/i;->bJ(Ljava/lang/String;)V

    .line 253
    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/i;->bI(Ljava/lang/String;)V

    .line 254
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v1

    invoke-static {}, Lcom/tencent/mm/model/v;->th()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/tencent/mm/storage/k;->a(Ljava/lang/String;Lcom/tencent/mm/storage/i;)I

    .line 258
    :cond_b
    invoke-direct {p0}, Lcom/tencent/mm/ui/contact/SelectContactUI;->akH()V

    .line 259
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSE:Lcom/tencent/mm/ui/voicesearch/j;

    if-eqz v0, :cond_c

    .line 260
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSE:Lcom/tencent/mm/ui/voicesearch/j;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/voicesearch/j;->onResume()V

    .line 263
    :cond_c
    return-void

    .line 241
    :cond_d
    iget v3, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSH:I

    if-eq v3, v8, :cond_2

    iget v3, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSH:I

    const/4 v5, 0x4

    if-ne v3, v5, :cond_2

    goto/16 :goto_0

    :cond_e
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    goto/16 :goto_0

    :pswitch_1
    const-string v3, "helper_entry"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "officialaccounts"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "filehelper"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :pswitch_2
    const-string v3, "helper_entry"

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    const-string v3, "helper_entry"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_f
    invoke-interface {v4, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1

    :pswitch_3
    const-string v3, "helper_entry"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "officialaccounts"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/tencent/mm/model/w;->chR:[Ljava/lang/String;

    array-length v6, v5

    move v3, v2

    :goto_5
    if-ge v3, v6, :cond_10

    aget-object v7, v5, v3

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_10
    invoke-interface {v4, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1

    :pswitch_4
    invoke-interface {v4, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1

    :cond_11
    move v0, v2

    goto/16 :goto_2

    :cond_12
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gSF:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/contact/SelectContactUI;->vT(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 242
    :cond_13
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/SelectContactUI;->gRY:Ljava/util/List;

    goto/16 :goto_4

    .line 241
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
