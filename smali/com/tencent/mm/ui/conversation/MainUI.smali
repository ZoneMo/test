.class public Lcom/tencent/mm/ui/conversation/MainUI;
.super Lcom/tencent/mm/ui/a;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/m/p;
.implements Lcom/tencent/mm/model/ba;
.implements Lcom/tencent/mm/n/m;
.implements Lcom/tencent/mm/n/n;
.implements Lcom/tencent/mm/pluginsdk/ai;
.implements Lcom/tencent/mm/sdk/e/ar;


# static fields
.field private static gZG:Z


# instance fields
.field private bNl:Ljava/lang/String;

.field private cIr:Landroid/app/ProgressDialog;

.field private cQb:Z

.field private dLv:Lcom/tencent/mm/ui/base/cd;

.field private diX:Lcom/tencent/mm/ui/tools/dg;

.field private dio:Z

.field private ecl:Lcom/tencent/mm/network/ag;

.field private edd:Lcom/tencent/mm/model/am;

.field private flR:Lcom/tencent/mm/sdk/b/g;

.field private flS:Landroid/os/Handler;

.field private gSC:Landroid/widget/TextView;

.field private gSJ:Z

.field private gXR:Lcom/tencent/mm/storage/n;

.field private gYZ:Landroid/view/View;

.field private gZA:Lcom/tencent/mm/compatible/g/k;

.field private gZB:Landroid/os/Handler;

.field private gZC:Ljava/util/HashMap;

.field private gZD:I

.field private gZE:I

.field gZF:Lcom/tencent/mm/sdk/b/g;

.field private gZa:Lcom/tencent/mm/ui/base/x;

.field private gZb:Landroid/widget/ListView;

.field private gZc:Landroid/widget/TextView;

.field private gZd:Lcom/tencent/mm/ui/conversation/ab;

.field private gZe:Landroid/view/View;

.field private gZf:Landroid/widget/ImageView;

.field private gZg:Lcom/tencent/mm/plugin/backup/ui/BakchatBannerView;

.field private gZh:Lcom/tencent/mm/ui/conversation/NetWarnView;

.field private gZi:Lcom/tencent/mm/ui/player/MusicBannerView;

.field private gZj:Landroid/view/View;

.field private gZk:Lcom/tencent/mm/ui/tools/ds;

.field private gZl:Lcom/tencent/mm/ui/conversation/ADListView;

.field private gZm:Lcom/tencent/mm/ui/conversation/a;

.field private gZn:Landroid/view/View;

.field private gZo:Landroid/widget/LinearLayout;

.field private gZp:Z

.field private gZq:Z

.field private gZr:Z

.field private gZs:I

.field private gZt:Landroid/view/View;

.field private gZu:Landroid/view/View;

.field private gZv:Landroid/widget/ImageView;

.field private gZw:Landroid/widget/TextView;

.field private gZx:Landroid/widget/ImageView;

.field private gZy:Landroid/widget/ImageView;

.field private gZz:Lcom/tencent/mm/z/i;

.field private gmg:Landroid/os/MessageQueue$IdleHandler;

.field goY:Lcom/tencent/mm/pluginsdk/ui/e;

.field private gpX:Landroid/widget/TextView;

.field private gpY:Z

.field private wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1372
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/mm/ui/conversation/MainUI;->gZG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 139
    invoke-direct {p0}, Lcom/tencent/mm/ui/a;-><init>()V

    .line 152
    iput-object v1, p0, Lcom/tencent/mm/ui/conversation/MainUI;->cIr:Landroid/app/ProgressDialog;

    .line 153
    iput-object v1, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZa:Lcom/tencent/mm/ui/base/x;

    .line 159
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->bNl:Ljava/lang/String;

    .line 160
    iput-object v1, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gXR:Lcom/tencent/mm/storage/n;

    .line 167
    iput-object v1, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZh:Lcom/tencent/mm/ui/conversation/NetWarnView;

    .line 168
    iput-object v1, p0, Lcom/tencent/mm/ui/conversation/MainUI;->flR:Lcom/tencent/mm/sdk/b/g;

    .line 173
    iput-object v1, p0, Lcom/tencent/mm/ui/conversation/MainUI;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 174
    iput-boolean v2, p0, Lcom/tencent/mm/ui/conversation/MainUI;->dio:Z

    .line 182
    iput-object v1, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZo:Landroid/widget/LinearLayout;

    .line 184
    iput-boolean v2, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZp:Z

    .line 187
    iput-boolean v2, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gSJ:Z

    .line 188
    iput-boolean v2, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gpY:Z

    .line 189
    iput-boolean v2, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZq:Z

    .line 190
    iput-boolean v2, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZr:Z

    .line 195
    iput v2, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZs:I

    .line 206
    iput-object v1, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZz:Lcom/tencent/mm/z/i;

    .line 207
    new-instance v0, Lcom/tencent/mm/compatible/g/k;

    invoke-direct {v0}, Lcom/tencent/mm/compatible/g/k;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZA:Lcom/tencent/mm/compatible/g/k;

    .line 211
    new-instance v0, Lcom/tencent/mm/ui/conversation/ai;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/conversation/ai;-><init>(Lcom/tencent/mm/ui/conversation/MainUI;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->ecl:Lcom/tencent/mm/network/ag;

    .line 403
    iput-object v1, p0, Lcom/tencent/mm/ui/conversation/MainUI;->edd:Lcom/tencent/mm/model/am;

    .line 498
    new-instance v0, Lcom/tencent/mm/ui/conversation/bw;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/conversation/bw;-><init>(Lcom/tencent/mm/ui/conversation/MainUI;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZB:Landroid/os/Handler;

    .line 506
    new-instance v0, Lcom/tencent/mm/pluginsdk/ui/e;

    new-instance v1, Lcom/tencent/mm/ui/conversation/bx;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/conversation/bx;-><init>(Lcom/tencent/mm/ui/conversation/MainUI;)V

    invoke-direct {v0, v1}, Lcom/tencent/mm/pluginsdk/ui/e;-><init>(Landroid/widget/AbsListView$OnScrollListener;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->goY:Lcom/tencent/mm/pluginsdk/ui/e;

    .line 528
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZC:Ljava/util/HashMap;

    .line 529
    iput v3, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZD:I

    .line 534
    iput v3, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZE:I

    .line 1054
    new-instance v0, Lcom/tencent/mm/ui/conversation/ba;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/conversation/ba;-><init>(Lcom/tencent/mm/ui/conversation/MainUI;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->dLv:Lcom/tencent/mm/ui/base/cd;

    .line 1086
    new-instance v0, Lcom/tencent/mm/ui/conversation/bb;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/conversation/bb;-><init>(Lcom/tencent/mm/ui/conversation/MainUI;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZF:Lcom/tencent/mm/sdk/b/g;

    .line 1370
    iput-boolean v2, p0, Lcom/tencent/mm/ui/conversation/MainUI;->cQb:Z

    .line 1922
    new-instance v0, Lcom/tencent/mm/ui/conversation/bo;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/conversation/bo;-><init>(Lcom/tencent/mm/ui/conversation/MainUI;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->flS:Landroid/os/Handler;

    return-void
.end method

.method private LP()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    .line 1702
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1704
    const-string v2, "MicroMsg.MainUI"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "KEVIN setShowTitle: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v0, v4, v0

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1706
    invoke-direct {p0}, Lcom/tencent/mm/ui/conversation/MainUI;->aLD()V

    .line 1710
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const/16 v1, 0x1a

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/e;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 1711
    if-eqz v0, :cond_1

    .line 1712
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1713
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/conversation/MainUI;->mm(I)V

    .line 1720
    :goto_0
    return-void

    .line 1715
    :cond_0
    invoke-virtual {p0, v6}, Lcom/tencent/mm/ui/conversation/MainUI;->mm(I)V

    goto :goto_0

    .line 1718
    :cond_1
    invoke-virtual {p0, v6}, Lcom/tencent/mm/ui/conversation/MainUI;->mm(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/tencent/mm/ui/conversation/MainUI;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Lcom/tencent/mm/ui/conversation/MainUI;->cIr:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/mm/ui/conversation/MainUI;Lcom/tencent/mm/storage/n;)Lcom/tencent/mm/storage/n;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gXR:Lcom/tencent/mm/storage/n;

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/mm/ui/conversation/MainUI;)V
    .locals 0
    .parameter

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/tencent/mm/ui/conversation/MainUI;->aLD()V

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/conversation/MainUI;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 139
    if-gtz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZc:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZb:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZb:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZc:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/tencent/mm/ui/conversation/MainUI;Ljava/lang/Class;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 139
    invoke-virtual {p0, p1, p2}, Lcom/tencent/mm/ui/conversation/MainUI;->a(Ljava/lang/Class;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/conversation/MainUI;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const v6, 0x7f0709ee

    const v5, 0x7f0709bb

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 139
    invoke-static {p1}, Lcom/tencent/mm/model/w;->cp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sw()Lcom/tencent/mm/storage/ap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/mm/storage/ap;->uV(Ljava/lang/String;)Lcom/tencent/mm/storage/ak;

    move-result-object v0

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->st()Lcom/tencent/mm/storage/au;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/storage/bc;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->AH()I

    move-result v0

    invoke-direct {v2, p1, v0}, Lcom/tencent/mm/storage/bc;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Lcom/tencent/mm/storage/au;->a(Lcom/tencent/mm/storage/bz;)V

    iput-boolean v4, p0, Lcom/tencent/mm/ui/conversation/MainUI;->cQb:Z

    invoke-virtual {p0}, Lcom/tencent/mm/ui/conversation/MainUI;->aal()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, v5}, Lcom/tencent/mm/ui/conversation/MainUI;->getString(I)Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/tencent/mm/ui/conversation/MainUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/ui/conversation/bf;

    invoke-direct {v2, p0}, Lcom/tencent/mm/ui/conversation/bf;-><init>(Lcom/tencent/mm/ui/conversation/MainUI;)V

    invoke-static {v0, v1, v3, v2}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)Lcom/tencent/mm/ui/base/ch;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->cIr:Landroid/app/ProgressDialog;

    new-instance v0, Lcom/tencent/mm/ui/conversation/bg;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/conversation/bg;-><init>(Lcom/tencent/mm/ui/conversation/MainUI;)V

    invoke-static {p1, v0}, Lcom/tencent/mm/model/bv;->a(Ljava/lang/String;Lcom/tencent/mm/model/ca;)I

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/mm/storage/k;->tO(Ljava/lang/String;)Lcom/tencent/mm/storage/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->qN()V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->rb()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/tencent/mm/model/w;->f(Ljava/lang/String;Z)V

    :goto_0
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sx()Lcom/tencent/mm/storage/o;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/mm/storage/o;->tX(Ljava/lang/String;)V

    :goto_1
    invoke-static {p1}, Lcom/tencent/mm/model/w;->cC(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "MicroMsg.MainUI"

    const-string v1, "del all qmessage"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/model/bv;->uT()V

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sx()Lcom/tencent/mm/storage/o;

    move-result-object v0

    const-string v1, "@qqim"

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/o;->tY(Ljava/lang/String;)Z

    :cond_0
    :goto_2
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/z/i;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Lcom/tencent/mm/z/i;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    return-void

    :cond_1
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/tencent/mm/storage/k;->a(Ljava/lang/String;Lcom/tencent/mm/storage/i;)I

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/tencent/mm/model/w;->cL(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sx()Lcom/tencent/mm/storage/o;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/mm/storage/o;->tY(Ljava/lang/String;)Z

    new-instance v0, Lcom/tencent/mm/c/a/ew;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/ew;-><init>()V

    iget-object v1, v0, Lcom/tencent/mm/c/a/ew;->bPF:Lcom/tencent/mm/c/a/ex;

    const/4 v2, 0x4

    iput v2, v1, Lcom/tencent/mm/c/a/ex;->bNK:I

    iget-object v1, v0, Lcom/tencent/mm/c/a/ew;->bPF:Lcom/tencent/mm/c/a/ex;

    const/16 v2, 0x14

    iput v2, v1, Lcom/tencent/mm/c/a/ex;->bPK:I

    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/tencent/mm/sdk/b/f;->f(Lcom/tencent/mm/sdk/b/e;)Z

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lcom/tencent/mm/model/w;->cB(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sx()Lcom/tencent/mm/storage/o;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/mm/storage/o;->tY(Ljava/lang/String;)Z

    goto :goto_1

    :cond_4
    invoke-static {p1}, Lcom/tencent/mm/model/w;->cE(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sx()Lcom/tencent/mm/storage/o;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/mm/storage/o;->tX(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_5
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sw()Lcom/tencent/mm/storage/ap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/mm/storage/ap;->uV(Ljava/lang/String;)Lcom/tencent/mm/storage/ak;

    move-result-object v0

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->st()Lcom/tencent/mm/storage/au;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/storage/bc;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->AH()I

    move-result v0

    invoke-direct {v2, p1, v0}, Lcom/tencent/mm/storage/bc;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Lcom/tencent/mm/storage/au;->a(Lcom/tencent/mm/storage/bz;)V

    iput-boolean v4, p0, Lcom/tencent/mm/ui/conversation/MainUI;->cQb:Z

    invoke-virtual {p0}, Lcom/tencent/mm/ui/conversation/MainUI;->aal()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, v5}, Lcom/tencent/mm/ui/conversation/MainUI;->getString(I)Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/tencent/mm/ui/conversation/MainUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/ui/conversation/bi;

    invoke-direct {v2, p0}, Lcom/tencent/mm/ui/conversation/bi;-><init>(Lcom/tencent/mm/ui/conversation/MainUI;)V

    invoke-static {v0, v1, v3, v2}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)Lcom/tencent/mm/ui/base/ch;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->cIr:Landroid/app/ProgressDialog;

    new-instance v0, Lcom/tencent/mm/ui/conversation/bj;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/conversation/bj;-><init>(Lcom/tencent/mm/ui/conversation/MainUI;)V

    invoke-static {p1, v0}, Lcom/tencent/mm/model/bv;->a(Ljava/lang/String;Lcom/tencent/mm/model/ca;)I

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/mm/storage/k;->tO(Ljava/lang/String;)Lcom/tencent/mm/storage/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->qN()V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->qO()V

    new-instance v1, Lcom/tencent/mm/protocal/a/ob;

    invoke-direct {v1}, Lcom/tencent/mm/protocal/a/ob;-><init>()V

    new-instance v2, Lcom/tencent/mm/protocal/a/rw;

    invoke-direct {v2}, Lcom/tencent/mm/protocal/a/rw;-><init>()V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/mm/platformtools/au;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/mm/protocal/a/rw;->sn(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/rw;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/mm/protocal/a/ob;->fEI:Lcom/tencent/mm/protocal/a/rw;

    new-instance v2, Lcom/tencent/mm/protocal/a/rw;

    invoke-direct {v2}, Lcom/tencent/mm/protocal/a/rw;-><init>()V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->kn()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/mm/platformtools/au;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/mm/protocal/a/rw;->sn(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/rw;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/mm/protocal/a/ob;->fNa:Lcom/tencent/mm/protocal/a/rw;

    new-instance v2, Lcom/tencent/mm/protocal/a/rw;

    invoke-direct {v2}, Lcom/tencent/mm/protocal/a/rw;-><init>()V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->rn()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/mm/platformtools/au;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/mm/protocal/a/rw;->sn(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/rw;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/mm/protocal/a/ob;->fEG:Lcom/tencent/mm/protocal/a/rw;

    new-instance v2, Lcom/tencent/mm/protocal/a/rw;

    invoke-direct {v2}, Lcom/tencent/mm/protocal/a/rw;-><init>()V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->ro()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/mm/platformtools/au;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/mm/protocal/a/rw;->sn(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/rw;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/mm/protocal/a/ob;->fEH:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->rk()I

    move-result v2

    iput v2, v1, Lcom/tencent/mm/protocal/a/ob;->cqq:I

    const/16 v2, 0xf7f

    iput v2, v1, Lcom/tencent/mm/protocal/a/ob;->fEj:I

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->getType()I

    move-result v2

    iput v2, v1, Lcom/tencent/mm/protocal/a/ob;->fEk:I

    new-instance v2, Lcom/tencent/mm/protocal/a/rw;

    invoke-direct {v2}, Lcom/tencent/mm/protocal/a/rw;-><init>()V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->ru()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/mm/platformtools/au;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/mm/protocal/a/rw;->sn(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/rw;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/mm/protocal/a/ob;->fOO:Lcom/tencent/mm/protocal/a/rw;

    new-instance v2, Lcom/tencent/mm/protocal/a/rw;

    invoke-direct {v2}, Lcom/tencent/mm/protocal/a/rw;-><init>()V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->rv()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/mm/platformtools/au;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/mm/protocal/a/rw;->sn(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/rw;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/mm/protocal/a/ob;->fOP:Lcom/tencent/mm/protocal/a/rw;

    new-instance v2, Lcom/tencent/mm/protocal/a/rw;

    invoke-direct {v2}, Lcom/tencent/mm/protocal/a/rw;-><init>()V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->rw()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/mm/platformtools/au;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/mm/protocal/a/rw;->sn(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/rw;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/mm/protocal/a/ob;->fOQ:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->rt()I

    move-result v2

    iput v2, v1, Lcom/tencent/mm/protocal/a/ob;->fEp:I

    new-instance v2, Lcom/tencent/mm/protocal/a/rw;

    invoke-direct {v2}, Lcom/tencent/mm/protocal/a/rw;-><init>()V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->rx()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/mm/platformtools/au;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/mm/protocal/a/rw;->sn(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/rw;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/mm/protocal/a/ob;->fOY:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->ry()I

    move-result v2

    iput v2, v1, Lcom/tencent/mm/protocal/a/ob;->fEt:I

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->rA()I

    move-result v2

    iput v2, v1, Lcom/tencent/mm/protocal/a/ob;->cqs:I

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->rB()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mm/platformtools/au;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/mm/protocal/a/ob;->cqr:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->vz()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mm/platformtools/au;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/mm/protocal/a/ob;->Tv:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->vA()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mm/platformtools/au;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/mm/protocal/a/ob;->Tu:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->rG()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mm/platformtools/au;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/mm/protocal/a/ob;->fNr:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->rH()I

    move-result v2

    iput v2, v1, Lcom/tencent/mm/protocal/a/ob;->fNt:I

    iput v4, v1, Lcom/tencent/mm/protocal/a/ob;->fOT:I

    new-instance v2, Lcom/tencent/mm/protocal/a/rv;

    invoke-direct {v2}, Lcom/tencent/mm/protocal/a/rv;-><init>()V

    iput-object v2, v1, Lcom/tencent/mm/protocal/a/ob;->fzx:Lcom/tencent/mm/protocal/a/rv;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->getCountryCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mm/platformtools/au;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/mm/protocal/a/ob;->cqx:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/b;->st()Lcom/tencent/mm/storage/au;

    move-result-object v2

    new-instance v3, Lcom/tencent/mm/storage/az;

    const/4 v4, 0x2

    invoke-direct {v3, v4, v1}, Lcom/tencent/mm/storage/az;-><init>(ILcom/tencent/mm/am/a;)V

    invoke-virtual {v2, v3}, Lcom/tencent/mm/storage/au;->a(Lcom/tencent/mm/storage/bz;)V

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/tencent/mm/storage/k;->a(Ljava/lang/String;Lcom/tencent/mm/storage/i;)I

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sx()Lcom/tencent/mm/storage/o;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/mm/storage/o;->tX(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_6
    invoke-static {p1}, Lcom/tencent/mm/model/w;->cA(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MicroMsg.MainUI"

    const-string v1, "del all tmessage"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/model/bv;->uU()V

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sx()Lcom/tencent/mm/storage/o;

    move-result-object v0

    const-string v1, "@t.qq.com"

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/o;->tY(Ljava/lang/String;)Z

    goto/16 :goto_2
.end method

.method private aLC()V
    .locals 2

    .prologue
    .line 406
    invoke-static {}, Lcom/tencent/mm/model/be;->nS()Lcom/tencent/mm/model/al;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->edd:Lcom/tencent/mm/model/am;

    if-nez v0, :cond_0

    .line 408
    invoke-direct {p0}, Lcom/tencent/mm/ui/conversation/MainUI;->aLE()V

    .line 410
    new-instance v0, Lcom/tencent/mm/ui/conversation/bv;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/conversation/bv;-><init>(Lcom/tencent/mm/ui/conversation/MainUI;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->edd:Lcom/tencent/mm/model/am;

    .line 453
    :cond_0
    invoke-static {}, Lcom/tencent/mm/model/be;->nS()Lcom/tencent/mm/model/al;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/conversation/MainUI;->edd:Lcom/tencent/mm/model/am;

    invoke-interface {v0, v1}, Lcom/tencent/mm/model/al;->a(Lcom/tencent/mm/model/am;)V

    .line 454
    return-void
.end method

.method private aLD()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 1559
    invoke-static {}, Lcom/tencent/mm/model/be;->se()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZl:Lcom/tencent/mm/ui/conversation/ADListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZm:Lcom/tencent/mm/ui/conversation/a;

    if-nez v0, :cond_1

    .line 1589
    :cond_0
    :goto_0
    return-void

    .line 1563
    :cond_1
    invoke-static {}, Lcom/tencent/mm/model/be;->se()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZh:Lcom/tencent/mm/ui/conversation/NetWarnView;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/conversation/MainUI;->aal()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/conversation/NetWarnView;->bZ(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1564
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZl:Lcom/tencent/mm/ui/conversation/ADListView;

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/conversation/ADListView;->setVisibility(I)V

    goto :goto_0

    .line 1567
    :cond_2
    iget-boolean v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gpY:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZq:Z

    if-nez v0, :cond_3

    .line 1568
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZh:Lcom/tencent/mm/ui/conversation/NetWarnView;

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/conversation/NetWarnView;->setVisibility(I)V

    .line 1570
    :cond_3
    invoke-virtual {p0}, Lcom/tencent/mm/ui/conversation/MainUI;->aal()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/ac/b;->Q(Landroid/content/Context;)Lcom/tencent/mm/ac/b;

    move-result-object v0

    .line 1572
    if-eqz v0, :cond_4

    .line 1573
    iget-object v1, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZm:Lcom/tencent/mm/ui/conversation/a;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/conversation/a;->a(Lcom/tencent/mm/ac/b;)V

    .line 1576
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZm:Lcom/tencent/mm/ui/conversation/a;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/conversation/a;->FZ()V

    .line 1578
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZl:Lcom/tencent/mm/ui/conversation/ADListView;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/conversation/ADListView;->dP()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1579
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZl:Lcom/tencent/mm/ui/conversation/ADListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/conversation/ADListView;->setVisibility(I)V

    .line 1585
    :goto_1
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZl:Lcom/tencent/mm/ui/conversation/ADListView;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/conversation/ADListView;->getVisibility()I

    goto :goto_0

    .line 1581
    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZl:Lcom/tencent/mm/ui/conversation/ADListView;

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/conversation/ADListView;->setVisibility(I)V

    goto :goto_1
.end method

.method private aLE()V
    .locals 3

    .prologue
    .line 1592
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZi:Lcom/tencent/mm/ui/player/MusicBannerView;

    if-eqz v0, :cond_0

    .line 1593
    invoke-static {}, Lcom/tencent/mm/model/be;->nS()Lcom/tencent/mm/model/al;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/mm/model/al;->op()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1594
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZi:Lcom/tencent/mm/ui/player/MusicBannerView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0701b1

    invoke-virtual {p0, v2}, Lcom/tencent/mm/ui/conversation/MainUI;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0701b2

    invoke-virtual {p0, v2}, Lcom/tencent/mm/ui/conversation/MainUI;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/tencent/mm/model/be;->nS()Lcom/tencent/mm/model/al;

    move-result-object v2

    invoke-interface {v2}, Lcom/tencent/mm/model/al;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/player/MusicBannerView;->xp(Ljava/lang/String;)V

    .line 1595
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZi:Lcom/tencent/mm/ui/player/MusicBannerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/player/MusicBannerView;->setVisibility(I)V

    .line 1600
    :cond_0
    :goto_0
    return-void

    .line 1597
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZi:Lcom/tencent/mm/ui/player/MusicBannerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/player/MusicBannerView;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic aLH()V
    .locals 3

    .prologue
    .line 139
    invoke-static {}, Lcom/tencent/mm/model/be;->se()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/mm/modelfriend/z;->zp()Lcom/tencent/mm/modelfriend/aa;

    move-result-object v0

    sget-object v1, Lcom/tencent/mm/modelfriend/aa;->crc:Lcom/tencent/mm/modelfriend/aa;

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/tencent/mm/modelfriend/z;->zo()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/mm/modelfriend/as;

    invoke-static {}, Lcom/tencent/mm/modelfriend/z;->zc()Ljava/util/List;

    move-result-object v1

    invoke-static {}, Lcom/tencent/mm/modelfriend/z;->zx()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/tencent/mm/modelfriend/as;-><init>(Ljava/util/List;Ljava/util/List;)V

    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/tencent/mm/ui/conversation/MainUI;)Lcom/tencent/mm/ui/conversation/ab;
    .locals 1
    .parameter

    .prologue
    .line 139
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZd:Lcom/tencent/mm/ui/conversation/ab;

    return-object v0
.end method

.method static synthetic b(Lcom/tencent/mm/ui/conversation/MainUI;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Lcom/tencent/mm/ui/conversation/MainUI;->bNl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/tencent/mm/ui/conversation/MainUI;Ljava/lang/Class;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 139
    invoke-virtual {p0, p1, p2}, Lcom/tencent/mm/ui/conversation/MainUI;->a(Ljava/lang/Class;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic c(Lcom/tencent/mm/ui/conversation/MainUI;)Landroid/os/MessageQueue$IdleHandler;
    .locals 1
    .parameter

    .prologue
    .line 139
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gmg:Landroid/os/MessageQueue$IdleHandler;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/mm/ui/conversation/MainUI;Ljava/lang/Class;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 139
    invoke-virtual {p0, p1, p2}, Lcom/tencent/mm/ui/conversation/MainUI;->a(Ljava/lang/Class;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic d(Lcom/tencent/mm/ui/conversation/MainUI;)Lcom/tencent/mm/compatible/g/k;
    .locals 1
    .parameter

    .prologue
    .line 139
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZA:Lcom/tencent/mm/compatible/g/k;

    return-object v0
.end method

.method static synthetic e(Lcom/tencent/mm/ui/conversation/MainUI;)Z
    .locals 1
    .parameter

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->dio:Z

    return v0
.end method

.method static synthetic f(Lcom/tencent/mm/ui/conversation/MainUI;)Lcom/tencent/mm/z/i;
    .locals 1
    .parameter

    .prologue
    .line 139
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZz:Lcom/tencent/mm/z/i;

    return-object v0
.end method

.method static synthetic g(Lcom/tencent/mm/ui/conversation/MainUI;)V
    .locals 0
    .parameter

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/tencent/mm/ui/conversation/MainUI;->aLE()V

    return-void
.end method

.method static synthetic h(Lcom/tencent/mm/ui/conversation/MainUI;)V
    .locals 2
    .parameter

    .prologue
    .line 139
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZi:Lcom/tencent/mm/ui/player/MusicBannerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZi:Lcom/tencent/mm/ui/player/MusicBannerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/player/MusicBannerView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZd:Lcom/tencent/mm/ui/conversation/ab;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZd:Lcom/tencent/mm/ui/conversation/ab;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/conversation/ab;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method static synthetic i(Lcom/tencent/mm/ui/conversation/MainUI;)Z
    .locals 1
    .parameter

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gSJ:Z

    return v0
.end method

.method static synthetic j(Lcom/tencent/mm/ui/conversation/MainUI;)Z
    .locals 1
    .parameter

    .prologue
    .line 139
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gSJ:Z

    return v0
.end method

.method static synthetic k(Lcom/tencent/mm/ui/conversation/MainUI;)V
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 139
    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZD:I

    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZC:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZd:Lcom/tencent/mm/ui/conversation/ab;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZE:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZd:Lcom/tencent/mm/ui/conversation/ab;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/conversation/ab;->hasLoadAllData()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iput v6, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZD:I

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZd:Lcom/tencent/mm/ui/conversation/ab;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/conversation/ab;->aLx()Z

    move-result v0

    if-eqz v0, :cond_2

    iput v6, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZD:I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZd:Lcom/tencent/mm/ui/conversation/ab;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/conversation/ab;->aLw()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    const-string v1, "MicroMsg.MainUI"

    const-string v2, "preSetLauncherUIUnReadCount  events size %d"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "floatbottle"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iput v6, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZD:I

    goto :goto_0

    :cond_3
    const-string v1, "officialaccounts"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    iput v7, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZD:I

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZd:Lcom/tencent/mm/ui/conversation/ab;

    invoke-virtual {v2, v0}, Lcom/tencent/mm/ui/conversation/ab;->xe(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZd:Lcom/tencent/mm/ui/conversation/ab;

    invoke-virtual {v2, v0}, Lcom/tencent/mm/ui/conversation/ab;->xd(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_6
    const-string v1, "MicroMsg.MainUI"

    const-string v2, "preSetLauncherUIUnReadCount  username %s contact change UNREAD_RESET_ALL"

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v0, v3, v6

    invoke-static {v1, v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput v6, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZD:I

    goto :goto_0

    :cond_7
    iget-object v2, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZd:Lcom/tencent/mm/ui/conversation/ab;

    invoke-virtual {v2, v0}, Lcom/tencent/mm/ui/conversation/ab;->xf(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/conversation/MainUI;->xg(Ljava/lang/String;)Lcom/tencent/mm/storage/n;

    move-result-object v2

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZC:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "MicroMsg.MainUI"

    const-string v3, "preSetLauncherUIUnReadCount  cov == null username %s, unreadcount %d"

    new-array v4, v8, [Ljava/lang/Object;

    aput-object v0, v4, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v7

    invoke-static {v2, v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_8
    iget-object v3, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZC:Ljava/util/HashMap;

    iget v4, v2, Lcom/tencent/mm/storage/n;->field_unReadCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "MicroMsg.MainUI"

    const-string v4, "preSetLauncherUIUnReadCount  cov != null username %s, unreadcount %d"

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v0, v5, v6

    iget v0, v2, Lcom/tencent/mm/storage/n;->field_unReadCount:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v7

    invoke-static {v3, v4, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_9
    const-string v0, "MicroMsg.MainUI"

    const-string v1, "preSetLauncherUIUnReadCount  preUnReadCount size %d"

    new-array v2, v7, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZC:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZC:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    iput v7, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZD:I

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZC:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    const/16 v1, 0x14

    if-le v0, v1, :cond_b

    iput v6, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZD:I

    goto/16 :goto_0

    :cond_b
    iput v8, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZD:I

    goto/16 :goto_0
.end method

.method static synthetic l(Lcom/tencent/mm/ui/conversation/MainUI;)V
    .locals 15
    .parameter

    .prologue
    const/4 v14, 0x3

    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v4, 0x0

    .line 139
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {p0}, Lcom/tencent/mm/ui/conversation/MainUI;->f()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/LauncherUI;

    const-string v1, "MicroMsg.MainUI"

    const-string v2, "postSetLauncherUIUnReadCount  resetStatus %d"

    new-array v3, v12, [Ljava/lang/Object;

    iget v5, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZD:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZd:Lcom/tencent/mm/ui/conversation/ab;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/conversation/ab;->aLA()V

    iget v1, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZD:I

    packed-switch v1, :pswitch_data_0

    invoke-virtual {v0}, Lcom/tencent/mm/ui/LauncherUI;->aEC()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZE:I

    const-string v0, "MicroMsg.MainUI"

    const-string v1, "postSetLauncherUIUnReadCount UNREAD_RESET_ALL totalUnReadCount %d, usetime %d,"

    new-array v2, v13, [Ljava/lang/Object;

    iget v3, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZE:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v6

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v12

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v1, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZC:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v3, v4

    :cond_0
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v5, "MicroMsg.MainUI"

    const-string v9, "postSetLauncherUIUnReadCount  username %s, preunread %d"

    new-array v10, v13, [Ljava/lang/Object;

    aput-object v2, v10, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-static {v5, v9, v10}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, v2}, Lcom/tencent/mm/ui/conversation/MainUI;->xg(Ljava/lang/String;)Lcom/tencent/mm/storage/n;

    move-result-object v5

    if-nez v5, :cond_2

    rsub-int/lit8 v1, v1, 0x0

    const-string v5, "MicroMsg.MainUI"

    const-string v9, "postSetLauncherUIUnReadCount  cov == null username %s, change %d"

    new-array v10, v13, [Ljava/lang/Object;

    aput-object v2, v10, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-static {v5, v9, v10}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v5, v1

    :goto_2
    if-eqz v5, :cond_1

    iget-object v1, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZd:Lcom/tencent/mm/ui/conversation/ab;

    invoke-virtual {v1, v2}, Lcom/tencent/mm/ui/conversation/ab;->xc(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "MicroMsg.MainUI"

    const-string v9, "postSetLauncherUIUnReadCount  username %s isWithoutItemCache"

    new-array v10, v12, [Ljava/lang/Object;

    aput-object v2, v10, v4

    invoke-static {v1, v9, v10}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/tencent/mm/storage/k;->tO(Ljava/lang/String;)Lcom/tencent/mm/storage/i;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v2}, Lcom/tencent/mm/model/w;->cp(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v1}, Lcom/tencent/mm/storage/i;->ry()I

    move-result v1

    if-eqz v1, :cond_0

    :cond_1
    :goto_3
    add-int v1, v3, v5

    const-string v3, "MicroMsg.MainUI"

    const-string v9, "postSetLauncherUIUnReadCount  real change usename %s, change %d, totalchange %d"

    new-array v10, v14, [Ljava/lang/Object;

    aput-object v2, v10, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v10, v12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v10, v13

    invoke-static {v3, v9, v10}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v3, v1

    goto/16 :goto_1

    :cond_2
    iget v5, v5, Lcom/tencent/mm/storage/n;->field_unReadCount:I

    sub-int v1, v5, v1

    add-int/lit8 v1, v1, 0x0

    const-string v5, "MicroMsg.MainUI"

    const-string v9, "postSetLauncherUIUnReadCount  cov != null username %s, change %d"

    new-array v10, v13, [Ljava/lang/Object;

    aput-object v2, v10, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-static {v5, v9, v10}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v5, v1

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Lcom/tencent/mm/storage/i;->rf()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_3

    :cond_4
    iget v1, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZE:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZE:I

    iget v1, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZE:I

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/LauncherUI;->ms(I)V

    const-string v0, "MicroMsg.MainUI"

    const-string v1, "postSetLauncherUIUnReadCount UNREAD_RESET_PART totalUnReadCount %d, change %d, usetime %d,"

    new-array v2, v14, [Ljava/lang/Object;

    iget v5, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZE:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v6

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v13

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic m(Lcom/tencent/mm/ui/conversation/MainUI;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 139
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZb:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic n(Lcom/tencent/mm/ui/conversation/MainUI;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 139
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZo:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic o(Lcom/tencent/mm/ui/conversation/MainUI;)Lcom/tencent/mm/ui/tools/ds;
    .locals 1
    .parameter

    .prologue
    .line 139
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZk:Lcom/tencent/mm/ui/tools/ds;

    return-object v0
.end method

.method static synthetic p(Lcom/tencent/mm/ui/conversation/MainUI;)V
    .locals 4
    .parameter

    .prologue
    const v3, 0x7f070189

    .line 139
    const v0, 0x7f0708e5

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/conversation/MainUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/tencent/mm/protocal/a;->fxu:Z

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/z;->azj()Ljava/lang/String;

    move-result-object v1

    const-string v2, "zh_CN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "zh_TW"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v3}, Lcom/tencent/mm/ui/conversation/MainUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/tencent/mm/ui/conversation/MainUI;->f()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v2, v0, Landroid/support/v7/app/ActionBarActivity;

    if-eqz v2, :cond_1

    check-cast v0, Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBarActivity;->aW()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_1
    return-void

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v3}, Lcom/tencent/mm/ui/conversation/MainUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :cond_3
    move-object v1, v0

    goto :goto_0
.end method

.method static synthetic q(Lcom/tencent/mm/ui/conversation/MainUI;)Lcom/tencent/mm/storage/n;
    .locals 1
    .parameter

    .prologue
    .line 139
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gXR:Lcom/tencent/mm/storage/n;

    return-object v0
.end method

.method static synthetic r(Lcom/tencent/mm/ui/conversation/MainUI;)Lcom/tencent/mm/ui/base/cd;
    .locals 1
    .parameter

    .prologue
    .line 139
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->dLv:Lcom/tencent/mm/ui/base/cd;

    return-object v0
.end method

.method static synthetic s(Lcom/tencent/mm/ui/conversation/MainUI;)Lcom/tencent/mm/ui/tools/dg;
    .locals 1
    .parameter

    .prologue
    .line 139
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->diX:Lcom/tencent/mm/ui/tools/dg;

    return-object v0
.end method

.method private s(III)Z
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1478
    const/4 v2, 0x4

    if-ne p1, v2, :cond_2

    const/16 v2, -0x10

    if-eq p2, v2, :cond_0

    const/16 v2, -0x11

    if-ne p2, v2, :cond_2

    .line 1479
    :cond_0
    const-string v2, "MicroMsg.MainUI"

    const-string v3, "trigger check update: errCode:%d, sceneType:%d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v2, v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1480
    sget-boolean v2, Lcom/tencent/mm/platformtools/at;->cHy:Z

    if-eqz v2, :cond_1

    .line 1481
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "system_config_prefs"

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1482
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "recomended_update_ignore"

    invoke-static {}, Lcom/tencent/mm/platformtools/au;->FC()J

    move-result-wide v4

    const-wide/32 v6, 0x15180

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1485
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/mm/ui/conversation/MainUI;->aal()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, p1, p2}, Lcom/tencent/mm/ui/cl;->a(Landroid/app/Activity;II)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1489
    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method static synthetic t(Lcom/tencent/mm/ui/conversation/MainUI;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 139
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->bNl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic u(Lcom/tencent/mm/ui/conversation/MainUI;)Z
    .locals 1
    .parameter

    .prologue
    .line 139
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->cQb:Z

    return v0
.end method

.method static synthetic v(Lcom/tencent/mm/ui/conversation/MainUI;)Z
    .locals 1
    .parameter

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->cQb:Z

    return v0
.end method

.method static synthetic w(Lcom/tencent/mm/ui/conversation/MainUI;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 139
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->cIr:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic x(Lcom/tencent/mm/ui/conversation/MainUI;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 139
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->flS:Landroid/os/Handler;

    return-object v0
.end method

.method private xg(Ljava/lang/String;)Lcom/tencent/mm/storage/n;
    .locals 1
    .parameter

    .prologue
    .line 676
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZd:Lcom/tencent/mm/ui/conversation/ab;

    if-eqz v0, :cond_0

    .line 677
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZd:Lcom/tencent/mm/ui/conversation/ab;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/ui/conversation/ab;->getItemByKey(Ljava/lang/Object;)Linfo/guardianproject/database/CursorDataItem;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/storage/n;

    .line 679
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final FR()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 686
    const-string v0, "MicroMsg.MainUI"

    const-string v1, "main ui init view"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZb:Landroid/widget/ListView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZb:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gYZ:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZb:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gYZ:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZe:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZb:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZe:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZj:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZb:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZj:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZt:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZb:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZt:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZn:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZb:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZn:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZo:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZb:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZo:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    .line 688
    :cond_5
    invoke-virtual {p0}, Lcom/tencent/mm/ui/conversation/MainUI;->aFo()V

    .line 689
    const v0, 0x7f0a048d

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/conversation/MainUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZc:Landroid/widget/TextView;

    .line 690
    const v0, 0x7f0a0073

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/conversation/MainUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gSC:Landroid/widget/TextView;

    .line 691
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gSC:Landroid/widget/TextView;

    new-instance v1, Lcom/tencent/mm/ui/conversation/by;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/conversation/by;-><init>(Lcom/tencent/mm/ui/conversation/MainUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 699
    const v0, 0x7f0a048c

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/conversation/MainUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZb:Landroid/widget/ListView;

    .line 701
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZb:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setDrawingCacheEnabled(Z)V

    .line 703
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZb:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setScrollingCacheEnabled(Z)V

    .line 705
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZb:Landroid/widget/ListView;

    new-instance v1, Lcom/tencent/mm/ui/conversation/ak;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/conversation/ak;-><init>(Lcom/tencent/mm/ui/conversation/MainUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 714
    const v0, 0x7f0a048e

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/conversation/MainUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gpX:Landroid/widget/TextView;

    .line 715
    new-instance v0, Lcom/tencent/mm/ui/conversation/ab;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/conversation/MainUI;->aal()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/ui/conversation/al;

    invoke-direct {v2, p0}, Lcom/tencent/mm/ui/conversation/al;-><init>(Lcom/tencent/mm/ui/conversation/MainUI;)V

    invoke-direct {v0, v1, v2}, Lcom/tencent/mm/ui/conversation/ab;-><init>(Landroid/content/Context;Lcom/tencent/mm/ui/k;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZd:Lcom/tencent/mm/ui/conversation/ab;

    .line 754
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZd:Lcom/tencent/mm/ui/conversation/ab;

    new-instance v1, Lcom/tencent/mm/ui/conversation/an;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/conversation/an;-><init>(Lcom/tencent/mm/ui/conversation/MainUI;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/conversation/ab;->a(Lcom/tencent/mm/ui/base/cy;)V

    .line 761
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZd:Lcom/tencent/mm/ui/conversation/ab;

    new-instance v1, Lcom/tencent/mm/ui/conversation/ao;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/conversation/ao;-><init>(Lcom/tencent/mm/ui/conversation/MainUI;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/conversation/ab;->a(Lcom/tencent/mm/ui/base/dc;)V

    .line 768
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZd:Lcom/tencent/mm/ui/conversation/ab;

    new-instance v1, Lcom/tencent/mm/ui/conversation/ap;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/conversation/ap;-><init>(Lcom/tencent/mm/ui/conversation/MainUI;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/conversation/ab;->a(Lcom/tencent/mm/ui/base/db;)V

    .line 805
    invoke-virtual {p0}, Lcom/tencent/mm/ui/conversation/MainUI;->aal()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f030043

    invoke-static {v0, v1, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 806
    const v0, 0x7f0a0106

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/backup/ui/BakchatBannerView;

    iput-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZg:Lcom/tencent/mm/plugin/backup/ui/BakchatBannerView;

    .line 807
    invoke-virtual {p0}, Lcom/tencent/mm/ui/conversation/MainUI;->aal()Landroid/app/Activity;

    move-result-object v0

    const v2, 0x7f030210

    invoke-static {v0, v2, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 808
    const v0, 0x7f0a05f7

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/conversation/NetWarnView;

    iput-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZh:Lcom/tencent/mm/ui/conversation/NetWarnView;

    .line 809
    invoke-virtual {p0}, Lcom/tencent/mm/ui/conversation/MainUI;->aal()Landroid/app/Activity;

    move-result-object v0

    const v3, 0x7f030206

    invoke-static {v0, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZj:Landroid/view/View;

    .line 810
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZj:Landroid/view/View;

    const v3, 0x7f0a05dc

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/player/MusicBannerView;

    iput-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZi:Lcom/tencent/mm/ui/player/MusicBannerView;

    .line 812
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZb:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 813
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZb:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 814
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZb:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZj:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 815
    invoke-virtual {p0}, Lcom/tencent/mm/ui/conversation/MainUI;->aal()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f030021

    invoke-static {v0, v1, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZt:Landroid/view/View;

    .line 816
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZb:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZt:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 818
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/conversation/MainUI;->aal()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZo:Landroid/widget/LinearLayout;

    .line 819
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZb:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZo:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 820
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZo:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 821
    invoke-direct {p0}, Lcom/tencent/mm/ui/conversation/MainUI;->aLC()V

    .line 823
    invoke-static {}, Lcom/tencent/mm/model/br;->uP()Lcom/tencent/mm/model/br;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/ui/conversation/aq;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/conversation/aq;-><init>(Lcom/tencent/mm/ui/conversation/MainUI;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/model/br;->a(Lcom/tencent/mm/model/bu;)V

    .line 841
    invoke-static {}, Lcom/tencent/mm/model/br;->uP()Lcom/tencent/mm/model/br;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/model/br;->ciT:Lcom/tencent/mm/model/bu;

    invoke-interface {v0}, Lcom/tencent/mm/model/bu;->tf()V

    .line 843
    invoke-static {}, Lcom/tencent/mm/x/b;->Bg()Z

    .line 844
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZb:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/tencent/mm/ui/conversation/MainUI;->goY:Lcom/tencent/mm/pluginsdk/ui/e;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 860
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZd:Lcom/tencent/mm/ui/conversation/ab;

    iget-object v1, p0, Lcom/tencent/mm/ui/conversation/MainUI;->goY:Lcom/tencent/mm/pluginsdk/ui/e;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/conversation/ab;->b(Lcom/tencent/mm/pluginsdk/ui/e;)V

    .line 862
    iget v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZE:I

    if-gez v0, :cond_6

    .line 863
    invoke-virtual {p0}, Lcom/tencent/mm/ui/conversation/MainUI;->f()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/LauncherUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/LauncherUI;->aEC()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZE:I

    .line 865
    :cond_6
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZb:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZd:Lcom/tencent/mm/ui/conversation/ab;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 866
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZb:Landroid/widget/ListView;

    new-instance v1, Lcom/tencent/mm/ui/conversation/as;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/conversation/as;-><init>(Lcom/tencent/mm/ui/conversation/MainUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 873
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZt:Landroid/view/View;

    const v1, 0x7f0a008a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/conversation/ADListView;

    iput-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZl:Lcom/tencent/mm/ui/conversation/ADListView;

    .line 875
    new-instance v0, Lcom/tencent/mm/ui/tools/dg;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/conversation/MainUI;->aal()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/mm/ui/tools/dg;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->diX:Lcom/tencent/mm/ui/tools/dg;

    .line 877
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZb:Landroid/widget/ListView;

    new-instance v1, Lcom/tencent/mm/ui/conversation/at;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/conversation/at;-><init>(Lcom/tencent/mm/ui/conversation/MainUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 977
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZb:Landroid/widget/ListView;

    new-instance v1, Lcom/tencent/mm/ui/conversation/au;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/conversation/au;-><init>(Lcom/tencent/mm/ui/conversation/MainUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 996
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZb:Landroid/widget/ListView;

    new-instance v1, Lcom/tencent/mm/ui/conversation/aw;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/conversation/aw;-><init>(Lcom/tencent/mm/ui/conversation/MainUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1017
    const v0, 0x7f020068

    new-instance v1, Lcom/tencent/mm/ui/conversation/ax;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/conversation/ax;-><init>(Lcom/tencent/mm/ui/conversation/MainUI;)V

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/ui/conversation/MainUI;->a(ILandroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/base/MMImageButton;

    .line 1033
    sget-boolean v0, Lcom/tencent/mm/protocal/a;->fxu:Z

    if-eqz v0, :cond_7

    .line 1034
    new-instance v0, Lcom/tencent/mm/ui/conversation/ay;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/conversation/ay;-><init>(Lcom/tencent/mm/ui/conversation/MainUI;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/conversation/MainUI;->m(Landroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/base/MMImageButton;

    .line 1043
    :cond_7
    new-instance v0, Lcom/tencent/mm/ui/conversation/az;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/conversation/az;-><init>(Lcom/tencent/mm/ui/conversation/MainUI;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/conversation/MainUI;->l(Landroid/view/View$OnClickListener;)V

    .line 1052
    return-void
.end method

.method public final FT()Z
    .locals 1

    .prologue
    .line 2111
    const/4 v0, 0x0

    return v0
.end method

.method public final FU()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2054
    const-string v0, "MicroMsg.MainUI"

    const-string v1, "onQuitSearch"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2055
    iput-boolean v2, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZr:Z

    .line 2056
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/conversation/MainUI;->ig(Ljava/lang/String;)V

    .line 2057
    invoke-static {}, Lcom/tencent/mm/ui/LauncherUI;->aEA()Lcom/tencent/mm/ui/LauncherUI;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/LauncherUI;->da(Z)V

    .line 2058
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gSC:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 2059
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gSC:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2061
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZh:Lcom/tencent/mm/ui/conversation/NetWarnView;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/conversation/MainUI;->aal()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/conversation/NetWarnView;->bZ(Landroid/content/Context;)Z

    .line 2062
    invoke-direct {p0}, Lcom/tencent/mm/ui/conversation/MainUI;->aLE()V

    .line 2063
    return-void
.end method

.method public final FV()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 2067
    const-string v0, "MicroMsg.MainUI"

    const-string v1, "onEnterSearch"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2068
    sget-object v0, Lcom/tencent/mm/plugin/d/c/m;->dZN:Lcom/tencent/mm/plugin/d/c/m;

    const/16 v1, 0x2aa7

    const-string v2, "2"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/plugin/d/c/m;->j(ILjava/lang/String;)V

    .line 2069
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZh:Lcom/tencent/mm/ui/conversation/NetWarnView;

    invoke-virtual {v0, v4}, Lcom/tencent/mm/ui/conversation/NetWarnView;->setVisibility(I)V

    .line 2070
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZi:Lcom/tencent/mm/ui/player/MusicBannerView;

    invoke-virtual {v0, v4}, Lcom/tencent/mm/ui/player/MusicBannerView;->setVisibility(I)V

    .line 2071
    invoke-static {}, Lcom/tencent/mm/ui/LauncherUI;->aEA()Lcom/tencent/mm/ui/LauncherUI;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/tencent/mm/ui/LauncherUI;->da(Z)V

    .line 2072
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gSC:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 2073
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gSC:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2075
    :cond_0
    return-void
.end method

.method public final a(IILcom/tencent/mm/n/x;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1494
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/tencent/mm/n/x;->getType()I

    move-result v0

    const/16 v1, 0x26

    if-eq v0, v1, :cond_1

    .line 1507
    :cond_0
    :goto_0
    return-void

    .line 1498
    :cond_1
    if-eqz p2, :cond_2

    mul-int/lit8 v0, p1, 0x64

    div-int/2addr v0, p2

    .line 1499
    :goto_1
    new-instance v1, Lcom/tencent/mm/ui/conversation/bl;

    invoke-direct {v1, p0, v0}, Lcom/tencent/mm/ui/conversation/bl;-><init>(Lcom/tencent/mm/ui/conversation/MainUI;I)V

    invoke-static {v1}, Lcom/tencent/mm/sdk/platformtools/an;->i(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1498
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final a(IILjava/lang/String;Lcom/tencent/mm/n/x;)V
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/16 v10, 0x26

    const/4 v9, 0x4

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1376
    invoke-virtual {p4}, Lcom/tencent/mm/n/x;->getType()I

    move-result v0

    if-eq v0, v10, :cond_1

    .line 1377
    invoke-virtual {p4}, Lcom/tencent/mm/n/x;->getType()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/tencent/mm/ui/conversation/MainUI;->s(III)Z

    .line 1474
    :cond_0
    :goto_0
    return-void

    .line 1382
    :cond_1
    const-string v1, "MicroMsg.MainUI"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "onSceneEnd: errType = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " errCode = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " errMsg = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " type = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p4}, Lcom/tencent/mm/n/x;->getType()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " @"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/mm/ui/conversation/MainUI;->hashCode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " initScene:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZz:Lcom/tencent/mm/z/i;

    if-nez v0, :cond_7

    const/4 v0, -0x1

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " scene:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p4}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " initCurrently:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/tencent/mm/ui/conversation/MainUI;->dio:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1388
    iget-boolean v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->dio:Z

    if-eqz v0, :cond_4

    move-object v0, p4

    check-cast v0, Lcom/tencent/mm/z/i;

    invoke-virtual {v0}, Lcom/tencent/mm/z/i;->Br()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1389
    const-string v0, "MicroMsg.MainUI"

    const-string v1, "dksord dkinit Kevin init fin: %d "

    new-array v2, v7, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZA:Lcom/tencent/mm/compatible/g/k;

    invoke-virtual {v3}, Lcom/tencent/mm/compatible/g/k;->qh()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1391
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZd:Lcom/tencent/mm/ui/conversation/ab;

    if-eqz v0, :cond_2

    .line 1392
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZd:Lcom/tencent/mm/ui/conversation/ab;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/k;->a(Lcom/tencent/mm/sdk/e/ar;)V

    .line 1393
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZd:Lcom/tencent/mm/ui/conversation/ab;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/conversation/ab;->aLv()V

    .line 1394
    invoke-virtual {p0}, Lcom/tencent/mm/ui/conversation/MainUI;->f()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1395
    invoke-virtual {p0}, Lcom/tencent/mm/ui/conversation/MainUI;->f()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/LauncherUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/LauncherUI;->aEC()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZE:I

    .line 1398
    :cond_2
    iput-boolean v8, p0, Lcom/tencent/mm/ui/conversation/MainUI;->dio:Z

    .line 1399
    iput-object v5, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZz:Lcom/tencent/mm/z/i;

    .line 1400
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1401
    const-string v0, "MicroMsg.MainUI"

    const-string v1, "wakelock.release!"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1402
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1404
    :cond_3
    invoke-static {}, Lcom/tencent/mm/model/be;->ut()Lcom/tencent/mm/sdk/platformtools/an;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/sdk/platformtools/an;->azz()V

    .line 1407
    :cond_4
    iget-boolean v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->dio:Z

    if-nez v0, :cond_5

    .line 1408
    const-string v1, "MicroMsg.MainUI"

    const-string v2, "tipDialog dismiss initScene:%d tipDialog:%s"

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZz:Lcom/tencent/mm/z/i;

    if-nez v0, :cond_8

    const/4 v0, -0x1

    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v8

    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->cIr:Landroid/app/ProgressDialog;

    aput-object v0, v3, v7

    invoke-static {v1, v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1409
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->cIr:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_5

    .line 1410
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->cIr:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1411
    iput-object v5, p0, Lcom/tencent/mm/ui/conversation/MainUI;->cIr:Landroid/app/ProgressDialog;

    .line 1412
    invoke-static {}, Lcom/tencent/mm/model/be;->ut()Lcom/tencent/mm/sdk/platformtools/an;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/sdk/platformtools/an;->azz()V

    .line 1416
    :cond_5
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZa:Lcom/tencent/mm/ui/base/x;

    if-eqz v0, :cond_6

    .line 1417
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZa:Lcom/tencent/mm/ui/base/x;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/x;->dismiss()V

    .line 1418
    iput-object v5, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZa:Lcom/tencent/mm/ui/base/x;

    .line 1421
    :cond_6
    iget-boolean v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gke:Z

    if-nez v0, :cond_9

    if-ne p1, v9, :cond_9

    const/4 v0, -0x6

    if-ne p2, v0, :cond_9

    .line 1422
    const-string v0, "MicroMsg.MainUI"

    const-string v1, "not show verify dialog on background"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1382
    :cond_7
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZz:Lcom/tencent/mm/z/i;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto/16 :goto_1

    .line 1408
    :cond_8
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZz:Lcom/tencent/mm/z/i;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_2

    .line 1426
    :cond_9
    invoke-virtual {p0}, Lcom/tencent/mm/ui/conversation/MainUI;->aal()Landroid/app/Activity;

    invoke-static {p1, p2}, Lcom/tencent/mm/ui/cl;->bc(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1430
    invoke-virtual {p0}, Lcom/tencent/mm/ui/conversation/MainUI;->f()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/conversation/MainUI;->aal()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/tencent/mm/ui/LauncherUI;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "Intro_Switch"

    invoke-virtual {v1, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    invoke-static {v0, p1, p2, v1, p3}, Lcom/tencent/mm/ui/cl;->a(Landroid/app/Activity;IILandroid/content/Intent;Ljava/lang/String;)Lcom/tencent/mm/ui/base/x;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZa:Lcom/tencent/mm/ui/base/x;

    .line 1432
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZa:Lcom/tencent/mm/ui/base/x;

    if-nez v0, :cond_0

    .line 1436
    invoke-static {}, Lcom/tencent/mm/model/be;->se()Z

    move-result v0

    if-nez v0, :cond_a

    .line 1437
    const-string v0, "MicroMsg.MainUI"

    const-string v1, "onSceneEnd not set uin"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1441
    :cond_a
    iget-boolean v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZp:Z

    if-nez v0, :cond_b

    .line 1442
    iput-boolean v7, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZp:Z

    .line 1443
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/e;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const/16 v2, 0x39

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/tencent/mm/storage/e;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_e

    move v0, v7

    :goto_3
    if-eqz v0, :cond_b

    if-eqz v1, :cond_b

    invoke-virtual {p0}, Lcom/tencent/mm/ui/conversation/MainUI;->aal()Landroid/app/Activity;

    move-result-object v0

    new-array v2, v7, [Ljava/lang/Object;

    aput-object v1, v2, v8

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f07015c

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0709bb

    invoke-virtual {p0, v2}, Lcom/tencent/mm/ui/conversation/MainUI;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f07015d

    invoke-virtual {p0, v3}, Lcom/tencent/mm/ui/conversation/MainUI;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f07015e

    invoke-virtual {p0, v4}, Lcom/tencent/mm/ui/conversation/MainUI;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/tencent/mm/ui/conversation/bd;

    invoke-direct {v5, p0}, Lcom/tencent/mm/ui/conversation/bd;-><init>(Lcom/tencent/mm/ui/conversation/MainUI;)V

    new-instance v6, Lcom/tencent/mm/ui/conversation/be;

    invoke-direct {v6, p0}, Lcom/tencent/mm/ui/conversation/be;-><init>(Lcom/tencent/mm/ui/conversation/MainUI;)V

    invoke-static/range {v0 .. v6}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/x;

    .line 1446
    :cond_b
    if-ne p1, v9, :cond_c

    const/16 v0, -0x11

    if-ne p2, v0, :cond_c

    sget-boolean v0, Lcom/tencent/mm/ui/conversation/MainUI;->gZG:Z

    if-nez v0, :cond_c

    .line 1447
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/z/i;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Lcom/tencent/mm/z/i;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    .line 1448
    sput-boolean v7, Lcom/tencent/mm/ui/conversation/MainUI;->gZG:Z

    .line 1451
    :cond_c
    invoke-virtual {p4}, Lcom/tencent/mm/n/x;->getType()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/tencent/mm/ui/conversation/MainUI;->s(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1455
    invoke-virtual {p0}, Lcom/tencent/mm/ui/conversation/MainUI;->aal()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1, p2, v9}, Lcom/tencent/mm/ui/cx;->a(Landroid/content/Context;III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1459
    invoke-virtual {p4}, Lcom/tencent/mm/n/x;->getType()I

    move-result v0

    if-ne v0, v10, :cond_d

    move-object v0, p4

    check-cast v0, Lcom/tencent/mm/z/i;

    invoke-virtual {v0}, Lcom/tencent/mm/z/i;->Bq()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1460
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/tencent/mm/ui/conversation/bk;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/conversation/bk;-><init>(Lcom/tencent/mm/ui/conversation/MainUI;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1468
    invoke-static {}, Lcom/tencent/mm/model/v;->tm()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_d

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sx()Lcom/tencent/mm/storage/o;

    move-result-object v0

    const-string v1, "masssendapp"

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/o;->tZ(Ljava/lang/String;)Lcom/tencent/mm/storage/n;

    move-result-object v0

    if-nez v0, :cond_d

    new-instance v0, Lcom/tencent/mm/storage/n;

    invoke-direct {v0}, Lcom/tencent/mm/storage/n;-><init>()V

    const-string v1, "masssendapp"

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/n;->setUsername(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07049b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/n;->setContent(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/platformtools/au;->FD()J

    move-result-wide v1

    const-wide/16 v3, 0x7d0

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/storage/n;->o(J)V

    invoke-virtual {v0, v8}, Lcom/tencent/mm/storage/n;->bZ(I)V

    invoke-virtual {v0, v8}, Lcom/tencent/mm/storage/n;->bY(I)V

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->sx()Lcom/tencent/mm/storage/o;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/storage/o;->c(Lcom/tencent/mm/storage/n;)J

    invoke-static {}, Lcom/tencent/mm/model/v;->tm()I

    move-result v0

    and-int/lit16 v0, v0, -0x81

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v1

    const/16 v2, 0x28

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/tencent/mm/storage/e;->set(ILjava/lang/Object;)V

    .line 1471
    :cond_d
    invoke-virtual {p4}, Lcom/tencent/mm/n/x;->getType()I

    move-result v0

    if-ne v0, v10, :cond_0

    .line 1472
    invoke-direct {p0}, Lcom/tencent/mm/ui/conversation/MainUI;->aLD()V

    goto/16 :goto_0

    :cond_e
    move v0, v8

    .line 1443
    goto/16 :goto_3
.end method

.method public final a(ILcom/tencent/mm/sdk/e/ao;Ljava/lang/Object;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1519
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    if-ne p2, v0, :cond_1

    .line 1520
    invoke-static {p3}, Lcom/tencent/mm/platformtools/au;->U(Ljava/lang/Object;)I

    move-result v0

    .line 1521
    const/16 v1, 0x2001

    if-ne v1, v0, :cond_0

    .line 1522
    invoke-direct {p0}, Lcom/tencent/mm/ui/conversation/MainUI;->aLD()V

    .line 1525
    :cond_0
    const/16 v1, 0x2a

    if-ne v1, v0, :cond_1

    .line 1526
    invoke-direct {p0}, Lcom/tencent/mm/ui/conversation/MainUI;->aLD()V

    .line 1530
    :cond_1
    return-void
.end method

.method public final a(Z[Ljava/lang/String;JI)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2091
    const-string v0, "MicroMsg.MainUI"

    const-string v1, "onVoiceReturn"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2092
    if-eqz p1, :cond_0

    .line 2093
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/conversation/MainUI;->aal()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/tencent/mm/ui/voicesearch/VoiceSearchResultUI;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2094
    const-string v1, "VoiceSearchResultUI_Resultlist"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 2095
    const-string v1, "VoiceSearchResultUI_VoiceId"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2096
    const-string v1, "VoiceSearchResultUI_ShowType"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2097
    invoke-virtual {p0}, Lcom/tencent/mm/ui/conversation/MainUI;->aal()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 2106
    :goto_0
    return-void

    .line 2099
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/conversation/MainUI;->aal()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/tencent/mm/ui/voicesearch/VoiceSearchResultUI;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2100
    const-string v1, "VoiceSearchResultUI_Resultlist"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 2101
    const-string v1, "VoiceSearchResultUI_Error"

    invoke-virtual {p0}, Lcom/tencent/mm/ui/conversation/MainUI;->aal()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f07005c

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2102
    const-string v1, "VoiceSearchResultUI_VoiceId"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2103
    const-string v1, "VoiceSearchResultUI_ShowType"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2104
    invoke-virtual {p0}, Lcom/tencent/mm/ui/conversation/MainUI;->aal()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected final aDG()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1635
    const-string v0, "MicroMsg.MainUI"

    const-string v1, "on tab create"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1636
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, v8}, Lcom/tencent/mm/ui/conversation/MainUI;->setMenuVisibility(Z)V

    invoke-static {}, Lcom/tencent/mm/model/be;->ut()Lcom/tencent/mm/sdk/platformtools/an;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/sdk/platformtools/an;->azz()V

    new-instance v0, Lcom/tencent/mm/ui/tools/ds;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/conversation/MainUI;->f()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/tencent/mm/ui/tools/ds;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZk:Lcom/tencent/mm/ui/tools/ds;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/conversation/MainUI;->FR()V

    iput-boolean v7, p0, Lcom/tencent/mm/ui/conversation/MainUI;->dio:Z

    iput-boolean v7, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZp:Z

    iput-boolean v7, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gSJ:Z

    iput-boolean v7, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gpY:Z

    iput-boolean v7, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZq:Z

    iput v7, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZs:I

    new-instance v0, Lcom/tencent/mm/ui/conversation/bh;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/conversation/bh;-><init>(Lcom/tencent/mm/ui/conversation/MainUI;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gmg:Landroid/os/MessageQueue$IdleHandler;

    new-instance v0, Lcom/tencent/mm/ui/conversation/br;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/conversation/br;-><init>(Lcom/tencent/mm/ui/conversation/MainUI;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->ecl:Lcom/tencent/mm/network/ag;

    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZb:Landroid/widget/ListView;

    invoke-virtual {v0, v7}, Landroid/widget/ListView;->setSelection(I)V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/conversation/MainUI;->aal()Landroid/app/Activity;

    move-result-object v0

    const-string v3, "power"

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/16 v3, 0x1a

    const-string v4, "My Lock"

    invoke-virtual {v0, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/4 v3, -0x1

    invoke-virtual {v0, v3, p0}, Lcom/tencent/mm/n/ac;->a(ILcom/tencent/mm/n/m;)V

    invoke-static {}, Lcom/tencent/mm/m/af;->vJ()Lcom/tencent/mm/m/m;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/mm/m/m;->d(Lcom/tencent/mm/m/p;)V

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/mm/model/b;->a(Lcom/tencent/mm/model/ba;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->ecl:Lcom/tencent/mm/network/ag;

    invoke-static {v0}, Lcom/tencent/mm/model/be;->a(Lcom/tencent/mm/network/ag;)V

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const/16 v3, 0xf

    invoke-virtual {v0, v3}, Lcom/tencent/mm/storage/e;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/au;->c(Ljava/lang/Integer;)I

    move-result v0

    if-nez v0, :cond_1

    iput-boolean v8, p0, Lcom/tencent/mm/ui/conversation/MainUI;->dio:Z

    new-instance v0, Lcom/tencent/mm/z/i;

    invoke-direct {v0, v8, p0}, Lcom/tencent/mm/z/i;-><init>(ILcom/tencent/mm/n/n;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZz:Lcom/tencent/mm/z/i;

    const-string v0, "MicroMsg.MainUI"

    const-string v3, "dksord doInit t:%d initScene:%d"

    new-array v4, v9, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZA:Lcom/tencent/mm/compatible/g/k;

    invoke-virtual {v5}, Lcom/tencent/mm/compatible/g/k;->qh()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v7

    iget-object v5, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZz:Lcom/tencent/mm/z/i;

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v0, v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZA:Lcom/tencent/mm/compatible/g/k;

    invoke-virtual {v0}, Lcom/tencent/mm/compatible/g/k;->reset()V

    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    iget-object v3, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZz:Lcom/tencent/mm/z/i;

    invoke-virtual {v0, v3}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    new-instance v0, Lcom/tencent/mm/ui/conversation/bt;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/conversation/bt;-><init>(Lcom/tencent/mm/ui/conversation/MainUI;)V

    const-wide/16 v3, 0x2

    invoke-static {v0, v3, v4}, Lcom/tencent/mm/sdk/platformtools/an;->b(Ljava/lang/Runnable;J)V

    :goto_0
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iget-object v3, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gmg:Landroid/os/MessageQueue$IdleHandler;

    invoke-virtual {v0, v3}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v0

    const-string v3, "MainUITabDoubleClick"

    iget-object v4, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZF:Lcom/tencent/mm/sdk/b/g;

    invoke-interface {v0, v3, v4}, Lcom/tencent/mm/sdk/b/f;->a(Ljava/lang/String;Lcom/tencent/mm/sdk/b/g;)Z

    invoke-static {v7}, Lcom/tencent/mm/model/be;->P(Z)V

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sx()Lcom/tencent/mm/storage/o;

    move-result-object v0

    iget-object v3, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZd:Lcom/tencent/mm/ui/conversation/ab;

    invoke-virtual {v0, v3}, Lcom/tencent/mm/storage/o;->a(Lcom/tencent/mm/sdk/e/ar;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZd:Lcom/tencent/mm/ui/conversation/ab;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/conversation/ab;->aLs()V

    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZd:Lcom/tencent/mm/ui/conversation/ab;

    new-instance v3, Lcom/tencent/mm/ui/conversation/av;

    invoke-direct {v3, p0}, Lcom/tencent/mm/ui/conversation/av;-><init>(Lcom/tencent/mm/ui/conversation/MainUI;)V

    invoke-virtual {v0, v3}, Lcom/tencent/mm/ui/conversation/ab;->a(Lcom/tencent/mm/ui/conversation/ad;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->flR:Lcom/tencent/mm/sdk/b/g;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/mm/ui/conversation/bp;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/conversation/bp;-><init>(Lcom/tencent/mm/ui/conversation/MainUI;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->flR:Lcom/tencent/mm/sdk/b/g;

    :cond_0
    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v0

    const-string v3, "RePullEmojiInfoDesc"

    iget-object v4, p0, Lcom/tencent/mm/ui/conversation/MainUI;->flR:Lcom/tencent/mm/sdk/b/g;

    invoke-interface {v0, v3, v4}, Lcom/tencent/mm/sdk/b/f;->a(Ljava/lang/String;Lcom/tencent/mm/sdk/b/g;)Z

    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZd:Lcom/tencent/mm/ui/conversation/ab;

    invoke-static {}, Lcom/tencent/mm/ui/conversation/ab;->onCreate()V

    const-string v0, "MicroMsg.MainUI"

    const-string v3, "kevin mainUIOnCreate time:%d diff:%d uin:%d ver:%x"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/au;->N(J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v4, v7

    iget-object v1, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZA:Lcom/tencent/mm/compatible/g/k;

    invoke-virtual {v1}, Lcom/tencent/mm/compatible/g/k;->qh()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v4, v8

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->sd()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v9

    const/4 v1, 0x3

    sget v2, Lcom/tencent/mm/protocal/a;->fxr:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-static {v0, v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1637
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZb:Landroid/widget/ListView;

    new-instance v1, Lcom/tencent/mm/ui/conversation/bn;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/conversation/bn;-><init>(Lcom/tencent/mm/ui/conversation/MainUI;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1644
    return-void

    .line 1636
    :cond_1
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v0

    iget-object v3, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZd:Lcom/tencent/mm/ui/conversation/ab;

    invoke-virtual {v0, v3}, Lcom/tencent/mm/storage/k;->a(Lcom/tencent/mm/sdk/e/ar;)V

    goto/16 :goto_0
.end method

.method protected final aDH()V
    .locals 8

    .prologue
    .line 1661
    invoke-static {}, Lcom/tencent/mm/platformtools/au;->FD()J

    move-result-wide v1

    .line 1662
    iget-boolean v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->dio:Z

    if-eqz v0, :cond_0

    .line 1663
    const-string v0, "MicroMsg.MainUI"

    const-string v3, "wakelock.acquire!"

    invoke-static {v0, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1664
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1667
    :cond_0
    iget v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZE:I

    if-gez v0, :cond_1

    .line 1669
    const-string v0, "MicroMsg.MainUI"

    const-string v3, "onTabResume totalUnReadCount %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZE:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v0, v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1670
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZd:Lcom/tencent/mm/ui/conversation/ab;

    if-eqz v0, :cond_1

    .line 1671
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZd:Lcom/tencent/mm/ui/conversation/ab;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/conversation/ab;->aLv()V

    .line 1673
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/mm/ui/conversation/MainUI;->aal()Landroid/app/Activity;

    invoke-static {}, Lcom/tencent/mm/ui/cl;->aFn()Lcom/tencent/mm/ui/base/x;

    .line 1675
    invoke-virtual {p0}, Lcom/tencent/mm/ui/conversation/MainUI;->aLF()V

    .line 1678
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 1679
    new-instance v0, Lcom/tencent/mm/ui/conversation/a;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/conversation/MainUI;->aal()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/tencent/mm/ui/conversation/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZm:Lcom/tencent/mm/ui/conversation/a;

    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZl:Lcom/tencent/mm/ui/conversation/ADListView;

    iget-object v5, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZm:Lcom/tencent/mm/ui/conversation/a;

    invoke-virtual {v0, v5}, Lcom/tencent/mm/ui/conversation/ADListView;->a(Lcom/tencent/mm/ui/conversation/a;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZl:Lcom/tencent/mm/ui/conversation/ADListView;

    new-instance v5, Lcom/tencent/mm/ui/conversation/bm;

    invoke-direct {v5, p0}, Lcom/tencent/mm/ui/conversation/bm;-><init>(Lcom/tencent/mm/ui/conversation/MainUI;)V

    invoke-virtual {v0, v5}, Lcom/tencent/mm/ui/conversation/ADListView;->a(Lcom/tencent/mm/ui/conversation/d;)V

    .line 1680
    const-string v0, "MicroMsg.MainUI"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "KEVIN initTips: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v3, v6, v3

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1682
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 1683
    invoke-direct {p0}, Lcom/tencent/mm/ui/conversation/MainUI;->aLC()V

    .line 1684
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const/16 v5, 0x3008

    invoke-virtual {v0, v5}, Lcom/tencent/mm/storage/e;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/au;->c(Ljava/lang/Boolean;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gSJ:Z

    .line 1685
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZg:Lcom/tencent/mm/plugin/backup/ui/BakchatBannerView;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/backup/ui/BakchatBannerView;->refresh()V

    .line 1686
    const-string v0, "MicroMsg.MainUI"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "KEVIN bakBannerView : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v3, v6, v3

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", show slide tips ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gSJ:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1688
    invoke-direct {p0}, Lcom/tencent/mm/ui/conversation/MainUI;->LP()V

    .line 1690
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/mm/storage/e;->a(Lcom/tencent/mm/sdk/e/ar;)V

    .line 1692
    invoke-static {}, Lcom/tencent/mm/pluginsdk/h;->apl()Lcom/tencent/mm/pluginsdk/aj;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1693
    invoke-static {}, Lcom/tencent/mm/pluginsdk/h;->apl()Lcom/tencent/mm/pluginsdk/aj;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/tencent/mm/pluginsdk/aj;->a(Lcom/tencent/mm/pluginsdk/ai;)V

    .line 1696
    :cond_2
    const-string v0, "MicroMsg.MainUI"

    const-string v3, "onResume"

    invoke-static {v0, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1697
    const-string v0, "TestTimeLayoutTime"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "KEVIN mainui OnResume : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v1, v4, v1

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1698
    return-void
.end method

.method protected final aDI()V
    .locals 2

    .prologue
    .line 1729
    const-string v0, "MicroMsg.MainUI"

    const-string v1, "on tab start"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1730
    invoke-direct {p0}, Lcom/tencent/mm/ui/conversation/MainUI;->LP()V

    .line 1731
    return-void
.end method

.method protected final aDJ()V
    .locals 2

    .prologue
    .line 1735
    const-string v0, "MicroMsg.MainUI"

    const-string v1, "on tab pause"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1736
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZg:Lcom/tencent/mm/plugin/backup/ui/BakchatBannerView;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/backup/ui/BakchatBannerView;->Iq()V

    .line 1737
    iget-boolean v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->dio:Z

    if-eqz v0, :cond_0

    .line 1739
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1740
    const-string v0, "MicroMsg.MainUI"

    const-string v1, "wakelock.release!"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1741
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1746
    :cond_0
    invoke-static {}, Lcom/tencent/mm/model/be;->se()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1747
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/mm/storage/e;->b(Lcom/tencent/mm/sdk/e/ar;)V

    .line 1748
    const-string v0, "MicroMsg.MainUI"

    const-string v1, "on pause"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1751
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/mm/ui/conversation/MainUI;->SM()V

    .line 1753
    invoke-static {}, Lcom/tencent/mm/pluginsdk/h;->apl()Lcom/tencent/mm/pluginsdk/aj;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1754
    invoke-static {}, Lcom/tencent/mm/pluginsdk/h;->apl()Lcom/tencent/mm/pluginsdk/aj;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/tencent/mm/pluginsdk/aj;->b(Lcom/tencent/mm/pluginsdk/ai;)V

    .line 1757
    :cond_2
    invoke-virtual {p0}, Lcom/tencent/mm/ui/conversation/MainUI;->aLG()V

    .line 1758
    const-string v0, "MicroMsg.INIT"

    const-string v1, "KEVIN mainui onTabPause  "

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1759
    return-void
.end method

.method protected final aDK()V
    .locals 2

    .prologue
    .line 1763
    const-string v0, "MicroMsg.MainUI"

    const-string v1, "on tab stop"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1764
    return-void
.end method

.method protected final aDL()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 1769
    const-string v0, "MicroMsg.MainUI"

    const-string v1, "on tab destory"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1771
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/n/ac;->b(ILcom/tencent/mm/n/m;)V

    .line 1773
    invoke-static {}, Lcom/tencent/mm/model/be;->se()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1774
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/mm/model/b;->b(Lcom/tencent/mm/model/ba;)V

    .line 1775
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZd:Lcom/tencent/mm/ui/conversation/ab;

    if-eqz v0, :cond_0

    .line 1776
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sx()Lcom/tencent/mm/storage/o;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZd:Lcom/tencent/mm/ui/conversation/ab;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/o;->b(Lcom/tencent/mm/sdk/e/ar;)V

    .line 1777
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZd:Lcom/tencent/mm/ui/conversation/ab;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/k;->b(Lcom/tencent/mm/sdk/e/ar;)V

    .line 1781
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZd:Lcom/tencent/mm/ui/conversation/ab;

    if-eqz v0, :cond_1

    .line 1782
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZd:Lcom/tencent/mm/ui/conversation/ab;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/conversation/ab;->aLt()V

    .line 1783
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZd:Lcom/tencent/mm/ui/conversation/ab;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/conversation/ab;->aLr()V

    .line 1784
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZd:Lcom/tencent/mm/ui/conversation/ab;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/conversation/ab;->onDestroy()V

    .line 1787
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->flR:Lcom/tencent/mm/sdk/b/g;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v0

    const-string v1, "RePullEmojiInfoDesc"

    iget-object v2, p0, Lcom/tencent/mm/ui/conversation/MainUI;->flR:Lcom/tencent/mm/sdk/b/g;

    invoke-interface {v0, v1, v2}, Lcom/tencent/mm/sdk/b/f;->b(Ljava/lang/String;Lcom/tencent/mm/sdk/b/g;)Z

    iput-object v3, p0, Lcom/tencent/mm/ui/conversation/MainUI;->flR:Lcom/tencent/mm/sdk/b/g;

    .line 1790
    :cond_2
    invoke-static {}, Lcom/tencent/mm/model/be;->se()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1791
    invoke-static {}, Lcom/tencent/mm/m/af;->vJ()Lcom/tencent/mm/m/m;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/mm/m/m;->e(Lcom/tencent/mm/m/p;)V

    .line 1794
    invoke-static {}, Lcom/tencent/mm/platformtools/au;->FG()V

    .line 1798
    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->ecl:Lcom/tencent/mm/network/ag;

    invoke-static {v0}, Lcom/tencent/mm/model/be;->b(Lcom/tencent/mm/network/ag;)V

    .line 1800
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZh:Lcom/tencent/mm/ui/conversation/NetWarnView;

    if-eqz v0, :cond_4

    .line 1801
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZh:Lcom/tencent/mm/ui/conversation/NetWarnView;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/conversation/NetWarnView;->release()V

    .line 1804
    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->cIr:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_5

    .line 1805
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->cIr:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1806
    iput-object v3, p0, Lcom/tencent/mm/ui/conversation/MainUI;->cIr:Landroid/app/ProgressDialog;

    .line 1808
    :cond_5
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZa:Lcom/tencent/mm/ui/base/x;

    if-eqz v0, :cond_6

    .line 1809
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZa:Lcom/tencent/mm/ui/base/x;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/x;->dismiss()V

    .line 1810
    iput-object v3, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZa:Lcom/tencent/mm/ui/base/x;

    .line 1813
    :cond_6
    invoke-static {}, Lcom/tencent/mm/model/be;->nS()Lcom/tencent/mm/model/al;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 1814
    invoke-static {}, Lcom/tencent/mm/model/be;->nS()Lcom/tencent/mm/model/al;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/conversation/MainUI;->edd:Lcom/tencent/mm/model/am;

    invoke-interface {v0, v1}, Lcom/tencent/mm/model/al;->b(Lcom/tencent/mm/model/am;)V

    .line 1817
    :cond_7
    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v0

    const-string v1, "MainUITabDoubleClick"

    iget-object v2, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZF:Lcom/tencent/mm/sdk/b/g;

    invoke-interface {v0, v1, v2}, Lcom/tencent/mm/sdk/b/f;->b(Ljava/lang/String;Lcom/tencent/mm/sdk/b/g;)Z

    .line 1819
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZa:Lcom/tencent/mm/ui/base/x;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZa:Lcom/tencent/mm/ui/base/x;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/x;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1820
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZa:Lcom/tencent/mm/ui/base/x;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/x;->dismiss()V

    .line 1823
    :cond_8
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZB:Landroid/os/Handler;

    if-eqz v0, :cond_9

    .line 1824
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZB:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1825
    iput-object v3, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZB:Landroid/os/Handler;

    .line 1827
    :cond_9
    const-string v0, "MicroMsg.MainUI"

    const-string v1, "onTabDestroy  acc:%b"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Lcom/tencent/mm/model/be;->se()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1828
    return-void
.end method

.method public final aDM()V
    .locals 1

    .prologue
    .line 1919
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZb:Landroid/widget/ListView;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/d;->a(Landroid/widget/ListView;)V

    .line 1920
    return-void
.end method

.method public final aDN()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1845
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZl:Lcom/tencent/mm/ui/conversation/ADListView;

    if-eqz v0, :cond_0

    .line 1846
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZl:Lcom/tencent/mm/ui/conversation/ADListView;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/conversation/ADListView;->a(Lcom/tencent/mm/ui/conversation/a;)V

    .line 1848
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZu:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1849
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZu:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1851
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZg:Lcom/tencent/mm/plugin/backup/ui/BakchatBannerView;

    if-eqz v0, :cond_2

    .line 1852
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZg:Lcom/tencent/mm/plugin/backup/ui/BakchatBannerView;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/backup/ui/BakchatBannerView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1854
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZx:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 1855
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZx:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1857
    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZy:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    .line 1858
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZy:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1860
    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZi:Lcom/tencent/mm/ui/player/MusicBannerView;

    if-eqz v0, :cond_5

    .line 1861
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZi:Lcom/tencent/mm/ui/player/MusicBannerView;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/player/MusicBannerView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1864
    :cond_5
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZf:Landroid/widget/ImageView;

    if-eqz v0, :cond_6

    .line 1865
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZf:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1867
    :cond_6
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZw:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    .line 1868
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZw:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->destroyDrawingCache()V

    .line 1871
    :cond_7
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZh:Lcom/tencent/mm/ui/conversation/NetWarnView;

    if-eqz v0, :cond_8

    .line 1872
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZh:Lcom/tencent/mm/ui/conversation/NetWarnView;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/conversation/NetWarnView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1873
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZh:Lcom/tencent/mm/ui/conversation/NetWarnView;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/conversation/NetWarnView;->arP()V

    .line 1877
    :cond_8
    const-string v0, "MicroMsg.INIT"

    const-string v1, "KEVIN mainui turnTobg"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1878
    return-void
.end method

.method public final aDO()V
    .locals 4

    .prologue
    const v3, 0x7f020803

    .line 1882
    const-string v0, "MicroMsg.MainUI"

    const-string v1, "turn to fg"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1890
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZl:Lcom/tencent/mm/ui/conversation/ADListView;

    if-eqz v0, :cond_0

    .line 1891
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZl:Lcom/tencent/mm/ui/conversation/ADListView;

    iget-object v1, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZm:Lcom/tencent/mm/ui/conversation/a;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/conversation/ADListView;->a(Lcom/tencent/mm/ui/conversation/a;)V

    .line 1893
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZg:Lcom/tencent/mm/plugin/backup/ui/BakchatBannerView;

    if-eqz v0, :cond_1

    .line 1894
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZg:Lcom/tencent/mm/plugin/backup/ui/BakchatBannerView;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/conversation/MainUI;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/backup/ui/BakchatBannerView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1896
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZx:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 1897
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZx:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/conversation/MainUI;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020158

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1899
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZh:Lcom/tencent/mm/ui/conversation/NetWarnView;

    if-eqz v0, :cond_3

    .line 1900
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZh:Lcom/tencent/mm/ui/conversation/NetWarnView;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/conversation/MainUI;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020802

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/conversation/NetWarnView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1902
    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZy:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    .line 1903
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZy:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/conversation/MainUI;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020593

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1905
    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZv:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    .line 1906
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZv:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/conversation/MainUI;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200d1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1908
    :cond_5
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZi:Lcom/tencent/mm/ui/player/MusicBannerView;

    if-eqz v0, :cond_6

    .line 1909
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZi:Lcom/tencent/mm/ui/player/MusicBannerView;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/conversation/MainUI;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/player/MusicBannerView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1911
    :cond_6
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZf:Landroid/widget/ImageView;

    if-eqz v0, :cond_7

    .line 1912
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZf:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/conversation/MainUI;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020576

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1914
    :cond_7
    const-string v0, "MicroMsg.INIT"

    const-string v1, "KEVIN mainui turnToFg"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1915
    return-void
.end method

.method protected final aFq()Z
    .locals 1

    .prologue
    .line 1832
    const/4 v0, 0x1

    return v0
.end method

.method public final aKs()V
    .locals 1

    .prologue
    .line 1284
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZd:Lcom/tencent/mm/ui/conversation/ab;

    if-eqz v0, :cond_0

    .line 1285
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZd:Lcom/tencent/mm/ui/conversation/ab;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/conversation/ab;->aKs()V

    .line 1287
    :cond_0
    return-void
.end method

.method public final aLF()V
    .locals 1

    .prologue
    .line 1648
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZd:Lcom/tencent/mm/ui/conversation/ab;

    if-eqz v0, :cond_0

    .line 1649
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZd:Lcom/tencent/mm/ui/conversation/ab;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/conversation/ab;->onResume()V

    .line 1651
    :cond_0
    return-void
.end method

.method public final aLG()V
    .locals 1

    .prologue
    .line 1654
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZd:Lcom/tencent/mm/ui/conversation/ab;

    if-eqz v0, :cond_0

    .line 1655
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZd:Lcom/tencent/mm/ui/conversation/ab;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/conversation/ab;->onPause()V

    .line 1657
    :cond_0
    return-void
.end method

.method public final abb()V
    .locals 2

    .prologue
    .line 2079
    const-string v0, "MicroMsg.MainUI"

    const-string v1, "onVoiceSearchStart"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2080
    invoke-virtual {p0}, Lcom/tencent/mm/ui/conversation/MainUI;->SM()V

    .line 2081
    return-void
.end method

.method public final abc()V
    .locals 2

    .prologue
    .line 2086
    const-string v0, "MicroMsg.MainUI"

    const-string v1, "onVoiceSearchCancel"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2087
    return-void
.end method

.method public final co(Z)V
    .locals 4
    .parameter

    .prologue
    .line 2117
    const-string v0, "MicroMsg.MainUI"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "visible "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2118
    if-eqz p1, :cond_0

    .line 2120
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZb:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    .line 2121
    const-string v1, "MicroMsg.MainUI"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getFirstVisiblePosition  "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2122
    if-lez v0, :cond_0

    .line 2123
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZb:Landroid/widget/ListView;

    new-instance v1, Lcom/tencent/mm/ui/conversation/bq;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/conversation/bq;-><init>(Lcom/tencent/mm/ui/conversation/MainUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 2134
    :cond_0
    return-void
.end method

.method public final ei(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 1512
    invoke-static {}, Lcom/tencent/mm/model/be;->se()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/mm/model/be;->uG()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/tencent/mm/platformtools/au;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {}, Lcom/tencent/mm/model/v;->th()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1513
    invoke-direct {p0}, Lcom/tencent/mm/ui/conversation/MainUI;->aLD()V

    .line 1515
    :cond_0
    return-void
.end method

.method protected final getLayoutId()I
    .locals 1

    .prologue
    .line 242
    const v0, 0x7f03016d

    return v0
.end method

.method public final ig(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    const/16 v3, 0x1234

    const/4 v2, 0x1

    .line 2034
    const-string v0, "MicroMsg.MainUI"

    const-string v1, "onSearchChange"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2035
    invoke-static {p1}, Lcom/tencent/mm/platformtools/au;->hR(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2036
    iput-boolean v2, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gpY:Z

    .line 2037
    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 2038
    iput-boolean v2, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZq:Z

    .line 2041
    :cond_0
    iget-object v1, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZB:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2042
    iget-boolean v1, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZq:Z

    if-eqz v1, :cond_1

    .line 2044
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZd:Lcom/tencent/mm/ui/conversation/ab;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/conversation/ab;->ih(Ljava/lang/String;)V

    .line 2050
    :goto_0
    return-void

    .line 2047
    :cond_1
    iget-object v1, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZB:Landroid/os/Handler;

    invoke-virtual {v1, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2048
    iget-object v1, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZB:Landroid/os/Handler;

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter

    .prologue
    .line 1323
    invoke-super {p0, p1}, Lcom/tencent/mm/ui/a;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1324
    invoke-direct {p0}, Lcom/tencent/mm/ui/conversation/MainUI;->aLD()V

    .line 1325
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 1331
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/conversation/MainUI;->bNl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/k;->tO(Ljava/lang/String;)Lcom/tencent/mm/storage/i;

    move-result-object v1

    .line 1332
    if-nez v1, :cond_1

    .line 1333
    const-string v0, "MicroMsg.MainUI"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onCreateContextMenu, contact is null, talker = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/mm/ui/conversation/MainUI;->bNl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1368
    :cond_0
    :goto_0
    return-void

    .line 1336
    :cond_1
    invoke-virtual {v1}, Lcom/tencent/mm/storage/i;->rr()Ljava/lang/String;

    move-result-object v0

    .line 1339
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "@chatroom"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/tencent/mm/storage/i;->kn()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1340
    const v0, 0x7f07022b

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/conversation/MainUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1343
    :cond_2
    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 1344
    invoke-virtual {p0}, Lcom/tencent/mm/ui/conversation/MainUI;->aal()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v1, v0, v2}, Lcom/tencent/mm/ao/b;->e(Landroid/content/Context;Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 1346
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gXR:Lcom/tencent/mm/storage/n;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gXR:Lcom/tencent/mm/storage/n;

    invoke-static {v0}, Lcom/tencent/mm/model/w;->a(Lcom/tencent/mm/storage/n;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1347
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sx()Lcom/tencent/mm/storage/o;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/conversation/MainUI;->bNl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/o;->ud(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1348
    iget v0, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    const/4 v1, 0x6

    const v2, 0x7f0701a7

    invoke-interface {p1, v0, v1, v4, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1354
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gXR:Lcom/tencent/mm/storage/n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gXR:Lcom/tencent/mm/storage/n;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/n;->rQ()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 1355
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->bNl:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/model/w;->cC(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1356
    iget v0, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    const v1, 0x7f070194

    invoke-interface {p1, v0, v5, v4, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0

    .line 1350
    :cond_4
    iget v0, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    const/4 v1, 0x5

    const v2, 0x7f0701a6

    invoke-interface {p1, v0, v1, v4, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_1

    .line 1357
    :cond_5
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->bNl:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/model/w;->cA(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1358
    iget v0, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    const v1, 0x7f070195

    invoke-interface {p1, v0, v5, v4, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 1359
    :cond_6
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->bNl:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/model/w;->cB(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1360
    iget v0, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    const v1, 0x7f070196

    invoke-interface {p1, v0, v5, v4, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 1362
    :cond_7
    iget v0, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    const v1, 0x7f070192

    invoke-interface {p1, v0, v5, v4, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_0
.end method

.method public final onStart()V
    .locals 0

    .prologue
    .line 1318
    invoke-super {p0}, Lcom/tencent/mm/ui/a;->onStart()V

    .line 1319
    return-void
.end method

.method public final r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1625
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/MainUI;->gZd:Lcom/tencent/mm/ui/conversation/ab;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/conversation/ab;->notifyDataSetChanged()V

    .line 1626
    return-void
.end method

.method public final uf()V
    .locals 0

    .prologue
    .line 1630
    invoke-direct {p0}, Lcom/tencent/mm/ui/conversation/MainUI;->aLD()V

    .line 1631
    return-void
.end method
