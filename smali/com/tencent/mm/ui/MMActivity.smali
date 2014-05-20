.class public abstract Lcom/tencent/mm/ui/MMActivity;
.super Landroid/support/v7/app/ActionBarActivity;
.source "SourceFile"


# static fields
.field private static gnn:Z

.field private static gno:Lcom/tencent/mm/ui/MMActivity;

.field private static gnp:Z

.field private static gnu:I

.field private static gnv:I


# instance fields
.field private cBR:Landroid/media/AudioManager;

.field private cYm:Landroid/view/View;

.field className:Ljava/lang/String;

.field private dLe:Landroid/view/LayoutInflater;

.field private diw:Lcom/tencent/mm/ui/tools/eo;

.field private eNl:I

.field private elv:Landroid/view/View;

.field private final gmE:J

.field private gmP:Landroid/view/View;

.field private gmQ:Landroid/view/View;

.field private gmR:Landroid/widget/LinearLayout;

.field private gmS:Landroid/widget/RelativeLayout;

.field private gmT:Landroid/view/View;

.field private gmU:Landroid/widget/TextView;

.field private gmV:Landroid/widget/FrameLayout;

.field private final gmW:I

.field private gmX:Z

.field private gmY:Ljava/lang/String;

.field private gmZ:I

.field private gnA:Lcom/tencent/mm/ui/br;

.field private gna:I

.field private gnb:Lcom/tencent/mm/ui/widget/a;

.field private gnc:Lcom/tencent/mm/ui/widget/a;

.field private gnd:Lcom/tencent/mm/ui/widget/a;

.field private gne:Lcom/tencent/mm/ui/widget/a;

.field private gnf:Z

.field private gng:Z

.field private gnh:I

.field protected gni:Z

.field protected gnj:Landroid/os/Handler;

.field private gnk:Z

.field private gnl:Lcom/tencent/mm/ui/bs;

.field private gnm:Ljava/util/LinkedList;

.field private gnq:Ljava/util/ArrayList;

.field private gnr:Lcom/tencent/mm/c/a/hk;

.field private gns:Lcom/tencent/mm/sdk/b/g;

.field private gnt:Landroid/content/Intent;

.field private gnw:I

.field private gnx:Lcom/tencent/mm/ui/bs;

.field private gny:Landroid/view/MenuItem;

.field private gnz:J

.field private ha:Landroid/support/v7/app/ActionBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 137
    sput-boolean v0, Lcom/tencent/mm/ui/MMActivity;->gnn:Z

    .line 140
    sput-boolean v0, Lcom/tencent/mm/ui/MMActivity;->gnp:Z

    .line 320
    sput v0, Lcom/tencent/mm/ui/MMActivity;->gnu:I

    .line 321
    sput v0, Lcom/tencent/mm/ui/MMActivity;->gnv:I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 74
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;-><init>()V

    .line 91
    const/16 v0, 0x32

    iput v0, p0, Lcom/tencent/mm/ui/MMActivity;->gmW:I

    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/ui/MMActivity;->gmX:Z

    .line 97
    const-string v0, " "

    iput-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->gmY:Ljava/lang/String;

    .line 98
    iput v2, p0, Lcom/tencent/mm/ui/MMActivity;->gmZ:I

    .line 99
    iput v2, p0, Lcom/tencent/mm/ui/MMActivity;->gna:I

    .line 100
    iput-object v3, p0, Lcom/tencent/mm/ui/MMActivity;->gnb:Lcom/tencent/mm/ui/widget/a;

    .line 101
    iput-object v3, p0, Lcom/tencent/mm/ui/MMActivity;->gnc:Lcom/tencent/mm/ui/widget/a;

    .line 102
    iput-object v3, p0, Lcom/tencent/mm/ui/MMActivity;->gnd:Lcom/tencent/mm/ui/widget/a;

    .line 103
    iput-object v3, p0, Lcom/tencent/mm/ui/MMActivity;->gne:Lcom/tencent/mm/ui/widget/a;

    .line 104
    iput-boolean v2, p0, Lcom/tencent/mm/ui/MMActivity;->gnf:Z

    .line 105
    iput-boolean v2, p0, Lcom/tencent/mm/ui/MMActivity;->gng:Z

    .line 107
    iput v2, p0, Lcom/tencent/mm/ui/MMActivity;->gnh:I

    .line 109
    iput-boolean v2, p0, Lcom/tencent/mm/ui/MMActivity;->gni:Z

    .line 110
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->gnj:Landroid/os/Handler;

    .line 134
    new-instance v0, Lcom/tencent/mm/ui/bs;

    invoke-direct {v0, v2}, Lcom/tencent/mm/ui/bs;-><init>(B)V

    iput-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->gnl:Lcom/tencent/mm/ui/bs;

    .line 135
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->gnm:Ljava/util/LinkedList;

    .line 147
    iput-object v3, p0, Lcom/tencent/mm/ui/MMActivity;->gnr:Lcom/tencent/mm/c/a/hk;

    .line 148
    new-instance v0, Lcom/tencent/mm/ui/be;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/be;-><init>(Lcom/tencent/mm/ui/MMActivity;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->gns:Lcom/tencent/mm/sdk/b/g;

    .line 319
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.tencent.mm.ui.TOP_MARGIN_LAYOUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->gnt:Landroid/content/Intent;

    .line 472
    iput v2, p0, Lcom/tencent/mm/ui/MMActivity;->gnw:I

    .line 1281
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lcom/tencent/mm/ui/MMActivity;->gmE:J

    .line 1282
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/mm/ui/MMActivity;->gnz:J

    .line 1524
    iput-object v3, p0, Lcom/tencent/mm/ui/MMActivity;->gnA:Lcom/tencent/mm/ui/br;

    .line 1526
    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/MMActivity;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 74
    iput-wide p1, p0, Lcom/tencent/mm/ui/MMActivity;->gnz:J

    return-wide p1
.end method

.method static synthetic a(Lcom/tencent/mm/ui/MMActivity;Lcom/tencent/mm/c/a/hk;)Lcom/tencent/mm/c/a/hk;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/tencent/mm/ui/MMActivity;->gnr:Lcom/tencent/mm/c/a/hk;

    return-object p1
.end method

.method private a(IILjava/lang/String;Landroid/view/MenuItem$OnMenuItemClickListener;Landroid/view/View$OnLongClickListener;Lcom/tencent/mm/ui/bt;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1354
    new-instance v3, Lcom/tencent/mm/ui/bs;

    invoke-direct {v3, v2}, Lcom/tencent/mm/ui/bs;-><init>(B)V

    .line 1355
    iput p1, v3, Lcom/tencent/mm/ui/bs;->gnH:I

    .line 1356
    iput p2, v3, Lcom/tencent/mm/ui/bs;->gnI:I

    .line 1357
    iput-object p3, v3, Lcom/tencent/mm/ui/bs;->text:Ljava/lang/String;

    .line 1358
    iput-object p4, v3, Lcom/tencent/mm/ui/bs;->eam:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 1359
    iput-object p5, v3, Lcom/tencent/mm/ui/bs;->gnM:Landroid/view/View$OnLongClickListener;

    .line 1360
    iput-object p6, v3, Lcom/tencent/mm/ui/bs;->gnL:Lcom/tencent/mm/ui/bt;

    .line 1362
    iget v0, v3, Lcom/tencent/mm/ui/bs;->gnI:I

    sget v1, Lcom/tencent/mm/h;->afQ:I

    if-ne v0, v1, :cond_0

    invoke-static {p3}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1363
    sget v0, Lcom/tencent/mm/n;->bqg:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/MMActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/tencent/mm/ui/bs;->text:Ljava/lang/String;

    .line 1365
    :cond_0
    iget v4, v3, Lcom/tencent/mm/ui/bs;->gnH:I

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->gnm:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->gnm:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/bs;

    iget v0, v0, Lcom/tencent/mm/ui/bs;->gnH:I

    if-ne v0, v4, :cond_2

    const-string v0, "MicroMsg.MMActivity"

    const-string v5, "match menu, id %d, remove it"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v2

    invoke-static {v0, v5, v6}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->gnm:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 1366
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->gnm:Ljava/util/LinkedList;

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1367
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/tencent/mm/ui/bi;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/bi;-><init>(Lcom/tencent/mm/ui/MMActivity;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1375
    return-void

    .line 1365
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private a(IZLjava/lang/String;Ljava/lang/String;Z)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v7, 0x30

    const/16 v2, 0x8

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 164
    const-string v0, "MicroMsg.MMActivity"

    const-string v3, "initNotifyView viewid %d"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v0, v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 166
    invoke-virtual {p0}, Lcom/tencent/mm/ui/MMActivity;->aEW()Z

    move-result v0

    if-nez v0, :cond_1

    .line 263
    :cond_0
    :goto_0
    return-void

    .line 169
    :cond_1
    if-nez p2, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->gmT:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 172
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->ha:Landroid/support/v7/app/ActionBar;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->ha:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->gmV:Landroid/widget/FrameLayout;

    if-nez v0, :cond_4

    .line 176
    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->cYm:Landroid/view/View;

    sget v3, Lcom/tencent/mm/i;->aBt:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->gmV:Landroid/widget/FrameLayout;

    .line 178
    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->gmT:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 179
    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->gmV:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/tencent/mm/ui/MMActivity;->gmT:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 181
    :cond_5
    sget v0, Lcom/tencent/mm/k;->aXp:I

    .line 182
    if-lez p1, :cond_b

    .line 185
    :goto_1
    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->dLe:Landroid/view/LayoutInflater;

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->gmT:Landroid/view/View;

    .line 186
    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->gmT:Landroid/view/View;

    sget v3, Lcom/tencent/mm/i;->aCY:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->gmU:Landroid/widget/TextView;

    .line 187
    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->gmT:Landroid/view/View;

    sget v3, Lcom/tencent/mm/i;->aCU:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v3, Lcom/tencent/mm/ui/bj;

    invoke-direct {v3, p0}, Lcom/tencent/mm/ui/bj;-><init>(Lcom/tencent/mm/ui/MMActivity;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->gmT:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 200
    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->gmT:Landroid/view/View;

    new-instance v3, Lcom/tencent/mm/ui/bk;

    invoke-direct {v3, p0, p3}, Lcom/tencent/mm/ui/bk;-><init>(Lcom/tencent/mm/ui/MMActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    const/high16 v4, 0x423c

    invoke-static {p0, v4}, Lcom/tencent/mm/sdk/platformtools/e;->a(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v0, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 214
    iget-object v3, p0, Lcom/tencent/mm/ui/MMActivity;->elv:Landroid/view/View;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/tencent/mm/ui/MMActivity;->elv:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    if-lez v3, :cond_7

    .line 215
    const-string v3, "MicroMsg.MMActivity"

    const-string v4, "titleView.getHeight() = [%s]"

    new-array v5, v6, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/tencent/mm/ui/MMActivity;->elv:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v3, v4, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 216
    iput v7, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 217
    iget-object v3, p0, Lcom/tencent/mm/ui/MMActivity;->elv:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 222
    :goto_2
    iget-object v3, p0, Lcom/tencent/mm/ui/MMActivity;->gmV:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/tencent/mm/ui/MMActivity;->gmT:Landroid/view/View;

    iget-object v5, p0, Lcom/tencent/mm/ui/MMActivity;->gmV:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v5

    invoke-virtual {v3, v4, v5, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 224
    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->gmT:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 225
    if-eqz p5, :cond_a

    .line 226
    iget-object v3, p0, Lcom/tencent/mm/ui/MMActivity;->gmT:Landroid/view/View;

    if-eqz p2, :cond_8

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 227
    sget v0, Lcom/tencent/mm/n;->bpe:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/MMActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 228
    invoke-static {p4}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    sget v1, Lcom/tencent/mm/n;->bpd:I

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/MMActivity;->getString(I)Ljava/lang/String;

    move-result-object p4

    .line 230
    :cond_6
    if-eqz p3, :cond_9

    .line 231
    new-instance v1, Landroid/text/SpannableString;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 232
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    const v3, -0x9a6919

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v4

    const/16 v4, 0x21

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 233
    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->gmU:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    :goto_4
    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->gmT:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 238
    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->gmV:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    goto/16 :goto_0

    .line 219
    :cond_7
    iput v7, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 220
    const/high16 v3, 0x4248

    invoke-static {p0, v3}, Lcom/tencent/mm/sdk/platformtools/e;->a(Landroid/content/Context;F)I

    move-result v3

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_2

    :cond_8
    move v0, v2

    .line 226
    goto :goto_3

    .line 235
    :cond_9
    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->gmU:Landroid/widget/TextView;

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 240
    :cond_a
    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->gmT:Landroid/view/View;

    new-instance v1, Lcom/tencent/mm/ui/bl;

    invoke-direct {v1, p0, p2, p4, p3}, Lcom/tencent/mm/ui/bl;-><init>(Lcom/tencent/mm/ui/MMActivity;ZLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :cond_b
    move p1, v0

    goto/16 :goto_1
.end method

.method private a(Landroid/view/MenuItem;Lcom/tencent/mm/ui/bs;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 902
    iget-boolean v0, p0, Lcom/tencent/mm/ui/MMActivity;->gmX:Z

    if-nez v0, :cond_1

    .line 903
    const-string v0, "MicroMsg.MMActivity"

    const-string v1, "callMenuCallback screen not enable."

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 909
    :cond_0
    :goto_0
    return-void

    .line 906
    :cond_1
    iget-object v0, p2, Lcom/tencent/mm/ui/bs;->eam:Landroid/view/MenuItem$OnMenuItemClickListener;

    if-eqz v0, :cond_0

    .line 907
    iget-object v0, p2, Lcom/tencent/mm/ui/bs;->eam:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v0, p1}, Landroid/view/MenuItem$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    goto :goto_0
.end method

.method static synthetic a(Lcom/tencent/mm/ui/MMActivity;IZLjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 74
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/tencent/mm/ui/MMActivity;->a(IZLjava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/MMActivity;Landroid/view/MenuItem;Lcom/tencent/mm/ui/bs;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Lcom/tencent/mm/ui/MMActivity;->a(Landroid/view/MenuItem;Lcom/tencent/mm/ui/bs;)V

    return-void
.end method

.method private a(ZIZ)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1152
    .line 1153
    if-eqz p1, :cond_0

    .line 1155
    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->gnm:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/bs;

    .line 1156
    iget-boolean v5, v0, Lcom/tencent/mm/ui/bs;->cQJ:Z

    if-eq v5, p3, :cond_5

    .line 1158
    iput-boolean p3, v0, Lcom/tencent/mm/ui/bs;->cQJ:Z

    move v0, v3

    :goto_1
    move v1, v0

    .line 1160
    goto :goto_0

    .line 1163
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->gnm:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/bs;

    .line 1164
    iget v5, v0, Lcom/tencent/mm/ui/bs;->gnH:I

    if-ne v5, p2, :cond_4

    iget-boolean v5, v0, Lcom/tencent/mm/ui/bs;->cQJ:Z

    if-eq v5, p3, :cond_4

    .line 1166
    iput-boolean p3, v0, Lcom/tencent/mm/ui/bs;->cQJ:Z

    move v0, v3

    :goto_3
    move v1, v0

    .line 1168
    goto :goto_2

    .line 1170
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->diw:Lcom/tencent/mm/ui/tools/eo;

    if-nez v0, :cond_3

    move v0, v2

    .line 1171
    :goto_4
    if-nez v0, :cond_2

    .line 1173
    invoke-virtual {p0}, Lcom/tencent/mm/ui/MMActivity;->u()V

    .line 1175
    :cond_2
    const-string v4, "MicroMsg.MMActivity"

    const-string v5, "enable option menu, target id %d, changed %B, searching %B"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v6, v3

    const/4 v1, 0x2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v6, v1

    invoke-static {v4, v5, v6}, Lcom/tencent/mm/sdk/platformtools/aa;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1176
    return-void

    .line 1170
    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->diw:Lcom/tencent/mm/ui/tools/eo;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/tools/eo;->aNF()Z

    move-result v0

    goto :goto_4

    :cond_4
    move v0, v1

    goto :goto_3

    :cond_5
    move v0, v1

    goto :goto_1
.end method

.method static synthetic a(Lcom/tencent/mm/ui/MMActivity;Landroid/view/View;Lcom/tencent/mm/ui/bs;)Z
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/tencent/mm/ui/MMActivity;->gmX:Z

    if-nez v0, :cond_0

    const-string v0, "MicroMsg.MMActivity"

    const-string v1, "callMenuCallback screen not enable."

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p2, Lcom/tencent/mm/ui/bs;->gnM:Landroid/view/View$OnLongClickListener;

    if-eqz v0, :cond_1

    iget-object v0, p2, Lcom/tencent/mm/ui/bs;->gnM:Landroid/view/View$OnLongClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static aEX()V
    .locals 1

    .prologue
    .line 717
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/mm/ui/MMActivity;->gnn:Z

    .line 718
    return-void
.end method

.method private aFb()V
    .locals 11

    .prologue
    const/16 v10, 0x21

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1071
    const-string v0, "%s"

    .line 1076
    invoke-virtual {p0}, Lcom/tencent/mm/ui/MMActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/tencent/mm/g;->aaK:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 1078
    iget v3, p0, Lcom/tencent/mm/ui/MMActivity;->gmZ:I

    if-eqz v3, :cond_0

    .line 1079
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "# "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1081
    :cond_0
    iget v3, p0, Lcom/tencent/mm/ui/MMActivity;->gna:I

    if-eqz v3, :cond_9

    .line 1082
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " #"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    move v0, v1

    .line 1086
    :goto_0
    iget-boolean v4, p0, Lcom/tencent/mm/ui/MMActivity;->gnf:Z

    if-eqz v4, :cond_8

    .line 1087
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1090
    add-int/lit8 v0, v0, 0x2

    move-object v4, v3

    move v3, v0

    move v0, v1

    .line 1092
    :goto_1
    iget-boolean v5, p0, Lcom/tencent/mm/ui/MMActivity;->gng:Z

    if-eqz v5, :cond_7

    .line 1093
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1096
    add-int/lit8 v0, v0, 0x2

    .line 1097
    add-int/lit8 v3, v3, 0x2

    move-object v5, v4

    move v4, v3

    move v3, v0

    move v0, v1

    .line 1099
    :goto_2
    const-string v7, "MicroMsg.MMActivity"

    const-string v8, "span title format %s"

    new-array v9, v1, [Ljava/lang/Object;

    aput-object v5, v9, v2

    invoke-static {v7, v8, v9}, Lcom/tencent/mm/sdk/platformtools/aa;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1100
    invoke-virtual {p0}, Lcom/tencent/mm/ui/MMActivity;->aal()Landroid/app/Activity;

    move-result-object v7

    new-array v8, v1, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/tencent/mm/ui/MMActivity;->gmY:Ljava/lang/String;

    aput-object v9, v8, v2

    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5, v6}, Lcom/tencent/mm/ao/b;->e(Landroid/content/Context;Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object v5

    .line 1102
    iget v7, p0, Lcom/tencent/mm/ui/MMActivity;->gmZ:I

    if-eqz v7, :cond_1

    .line 1103
    iget-object v7, p0, Lcom/tencent/mm/ui/MMActivity;->gnb:Lcom/tencent/mm/ui/widget/a;

    invoke-virtual {v5, v7, v2, v1, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1105
    :cond_1
    iget v1, p0, Lcom/tencent/mm/ui/MMActivity;->gna:I

    if-eqz v1, :cond_2

    .line 1106
    invoke-virtual {v5}, Landroid/text/SpannableString;->length()I

    move-result v1

    sub-int/2addr v1, v4

    .line 1107
    iget-object v2, p0, Lcom/tencent/mm/ui/MMActivity;->gnc:Lcom/tencent/mm/ui/widget/a;

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v5, v2, v1, v4, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1109
    :cond_2
    iget-boolean v1, p0, Lcom/tencent/mm/ui/MMActivity;->gnf:Z

    if-eqz v1, :cond_4

    .line 1110
    iget-object v1, p0, Lcom/tencent/mm/ui/MMActivity;->gnd:Lcom/tencent/mm/ui/widget/a;

    if-nez v1, :cond_3

    .line 1111
    sget v1, Lcom/tencent/mm/h;->adc:I

    invoke-direct {p0, v6, v1}, Lcom/tencent/mm/ui/MMActivity;->ba(II)Lcom/tencent/mm/ui/widget/a;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/mm/ui/MMActivity;->gnd:Lcom/tencent/mm/ui/widget/a;

    .line 1113
    :cond_3
    invoke-virtual {v5}, Landroid/text/SpannableString;->length()I

    move-result v1

    sub-int/2addr v1, v3

    .line 1114
    iget-object v2, p0, Lcom/tencent/mm/ui/MMActivity;->gnd:Lcom/tencent/mm/ui/widget/a;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v5, v2, v1, v3, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1116
    :cond_4
    iget-boolean v1, p0, Lcom/tencent/mm/ui/MMActivity;->gng:Z

    if-eqz v1, :cond_6

    .line 1117
    iget-object v1, p0, Lcom/tencent/mm/ui/MMActivity;->gne:Lcom/tencent/mm/ui/widget/a;

    if-nez v1, :cond_5

    .line 1118
    sget v1, Lcom/tencent/mm/h;->ade:I

    invoke-direct {p0, v6, v1}, Lcom/tencent/mm/ui/MMActivity;->ba(II)Lcom/tencent/mm/ui/widget/a;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/mm/ui/MMActivity;->gne:Lcom/tencent/mm/ui/widget/a;

    .line 1120
    :cond_5
    invoke-virtual {v5}, Landroid/text/SpannableString;->length()I

    move-result v1

    sub-int v0, v1, v0

    .line 1121
    iget-object v1, p0, Lcom/tencent/mm/ui/MMActivity;->gne:Lcom/tencent/mm/ui/widget/a;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v5, v1, v0, v2, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1123
    :cond_6
    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->ha:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0, v5}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 1124
    return-void

    :cond_7
    move-object v5, v4

    move v4, v3

    move v3, v0

    move v0, v2

    goto :goto_2

    :cond_8
    move-object v4, v3

    move v3, v0

    move v0, v2

    goto/16 :goto_1

    :cond_9
    move-object v3, v0

    move v0, v2

    goto/16 :goto_0
.end method

.method static synthetic aFh()I
    .locals 1

    .prologue
    .line 74
    sget v0, Lcom/tencent/mm/ui/MMActivity;->gnu:I

    return v0
.end method

.method static synthetic aFi()I
    .locals 1

    .prologue
    .line 74
    sget v0, Lcom/tencent/mm/ui/MMActivity;->gnv:I

    return v0
.end method

.method private b(ZIZ)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1187
    .line 1188
    if-eqz p1, :cond_0

    .line 1190
    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->gnm:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/bs;

    .line 1191
    iget-boolean v5, v0, Lcom/tencent/mm/ui/bs;->visible:Z

    if-eq v5, p3, :cond_5

    .line 1193
    iput-boolean p3, v0, Lcom/tencent/mm/ui/bs;->visible:Z

    move v0, v3

    :goto_1
    move v1, v0

    .line 1195
    goto :goto_0

    .line 1198
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->gnm:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/bs;

    .line 1199
    iget v5, v0, Lcom/tencent/mm/ui/bs;->gnH:I

    if-ne v5, p2, :cond_4

    iget-boolean v5, v0, Lcom/tencent/mm/ui/bs;->visible:Z

    if-eq v5, p3, :cond_4

    .line 1201
    iput-boolean p3, v0, Lcom/tencent/mm/ui/bs;->visible:Z

    move v0, v3

    :goto_3
    move v1, v0

    .line 1203
    goto :goto_2

    .line 1205
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->diw:Lcom/tencent/mm/ui/tools/eo;

    if-nez v0, :cond_3

    move v0, v2

    .line 1206
    :goto_4
    if-nez v0, :cond_2

    .line 1208
    invoke-virtual {p0}, Lcom/tencent/mm/ui/MMActivity;->u()V

    .line 1210
    :cond_2
    const-string v4, "MicroMsg.MMActivity"

    const-string v5, "show option menu, target id %d, changed %B, searching %B"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v6, v3

    const/4 v1, 0x2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v6, v1

    invoke-static {v4, v5, v6}, Lcom/tencent/mm/sdk/platformtools/aa;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1211
    return-void

    .line 1205
    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->diw:Lcom/tencent/mm/ui/tools/eo;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/tools/eo;->aNF()Z

    move-result v0

    goto :goto_4

    :cond_4
    move v0, v1

    goto :goto_3

    :cond_5
    move v0, v1

    goto :goto_1
.end method

.method public static bO(Landroid/content/Context;)Ljava/util/Locale;
    .locals 2
    .parameter

    .prologue
    .line 304
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->azs()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/z;->a(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v0

    .line 307
    const-string v1, "language_default"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 308
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {p0, v0}, Lcom/tencent/mm/sdk/platformtools/z;->a(Landroid/content/Context;Ljava/util/Locale;)V

    .line 309
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 313
    :goto_0
    return-object v0

    .line 311
    :cond_0
    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/z;->sA(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    .line 312
    invoke-static {p0, v0}, Lcom/tencent/mm/sdk/platformtools/z;->a(Landroid/content/Context;Ljava/util/Locale;)V

    goto :goto_0
.end method

.method private ba(II)Lcom/tencent/mm/ui/widget/a;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 1063
    invoke-virtual {p0}, Lcom/tencent/mm/ui/MMActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1064
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1065
    new-instance v1, Lcom/tencent/mm/ui/widget/a;

    invoke-direct {v1, v0}, Lcom/tencent/mm/ui/widget/a;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 1066
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    sub-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/widget/a;->oG(I)V

    .line 1067
    return-object v1
.end method

.method static synthetic c(Lcom/tencent/mm/ui/MMActivity;)Lcom/tencent/mm/c/a/hk;
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->gnr:Lcom/tencent/mm/c/a/hk;

    return-object v0
.end method

.method static synthetic d(Lcom/tencent/mm/ui/MMActivity;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->gmT:Landroid/view/View;

    return-object v0
.end method

.method static synthetic e(Lcom/tencent/mm/ui/MMActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->gmU:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic f(Lcom/tencent/mm/ui/MMActivity;)Landroid/widget/FrameLayout;
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->gmV:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic g(Lcom/tencent/mm/ui/MMActivity;)Landroid/content/Intent;
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->gnt:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic h(Lcom/tencent/mm/ui/MMActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 74
    const/4 v0, 0x2

    iput v0, p0, Lcom/tencent/mm/ui/MMActivity;->gnw:I

    invoke-virtual {p0}, Lcom/tencent/mm/ui/MMActivity;->aEP()V

    return-void
.end method

.method static synthetic i(Lcom/tencent/mm/ui/MMActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 74
    const/4 v0, 0x1

    iput v0, p0, Lcom/tencent/mm/ui/MMActivity;->gnw:I

    invoke-virtual {p0}, Lcom/tencent/mm/ui/MMActivity;->aEP()V

    return-void
.end method

.method static synthetic j(Lcom/tencent/mm/ui/MMActivity;)Landroid/support/v7/app/ActionBar;
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->ha:Landroid/support/v7/app/ActionBar;

    return-object v0
.end method

.method static synthetic k(Lcom/tencent/mm/ui/MMActivity;)J
    .locals 2
    .parameter

    .prologue
    .line 74
    iget-wide v0, p0, Lcom/tencent/mm/ui/MMActivity;->gnz:J

    return-wide v0
.end method

.method private mF(I)Lcom/tencent/mm/ui/bs;
    .locals 3
    .parameter

    .prologue
    .line 1383
    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->gnm:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/bs;

    .line 1384
    iget v2, v0, Lcom/tencent/mm/ui/bs;->gnH:I

    if-ne v2, p1, :cond_0

    .line 1388
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic mH(I)I
    .locals 0
    .parameter

    .prologue
    .line 74
    sput p0, Lcom/tencent/mm/ui/MMActivity;->gnu:I

    return p0
.end method

.method static synthetic mI(I)I
    .locals 0
    .parameter

    .prologue
    .line 74
    sput p0, Lcom/tencent/mm/ui/MMActivity;->gnv:I

    return p0
.end method

.method public static t(Landroid/app/Activity;)V
    .locals 3
    .parameter

    .prologue
    .line 1495
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1496
    if-nez v0, :cond_1

    .line 1509
    :cond_0
    :goto_0
    return-void

    .line 1499
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    .line 1500
    if-eqz v1, :cond_0

    .line 1503
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    .line 1504
    if-eqz v1, :cond_0

    .line 1508
    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    goto :goto_0
.end method


# virtual methods
.method protected FR()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 941
    return-void
.end method

.method protected IX()I
    .locals 1

    .prologue
    .line 569
    const/4 v0, -0x1

    return v0
.end method

.method protected Iw()I
    .locals 1

    .prologue
    .line 932
    sget v0, Lcom/tencent/mm/k;->aXm:I

    return v0
.end method

.method public SM()V
    .locals 3

    .prologue
    .line 1456
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/MMActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1457
    if-nez v0, :cond_1

    .line 1469
    :cond_0
    :goto_0
    return-void

    .line 1460
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/mm/ui/MMActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    .line 1461
    if-eqz v1, :cond_0

    .line 1464
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    .line 1465
    if-eqz v1, :cond_0

    .line 1468
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method public UY()V
    .locals 0

    .prologue
    .line 1491
    invoke-static {p0}, Lcom/tencent/mm/ui/MMActivity;->t(Landroid/app/Activity;)V

    .line 1492
    return-void
.end method

.method public final a(IIILandroid/view/MenuItem$OnMenuItemClickListener;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1249
    invoke-virtual {p0, p2}, Lcom/tencent/mm/ui/MMActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    sget-object v6, Lcom/tencent/mm/ui/bt;->gnN:Lcom/tencent/mm/ui/bt;

    move-object v0, p0

    move v1, p1

    move v2, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/tencent/mm/ui/MMActivity;->a(IILjava/lang/String;Landroid/view/MenuItem$OnMenuItemClickListener;Landroid/view/View$OnLongClickListener;Lcom/tencent/mm/ui/bt;)V

    .line 1250
    return-void
.end method

.method public final a(IILandroid/view/MenuItem$OnMenuItemClickListener;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1241
    const-string v3, ""

    const/4 v5, 0x0

    sget-object v6, Lcom/tencent/mm/ui/bt;->gnN:Lcom/tencent/mm/ui/bt;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/tencent/mm/ui/MMActivity;->a(IILjava/lang/String;Landroid/view/MenuItem$OnMenuItemClickListener;Landroid/view/View$OnLongClickListener;Lcom/tencent/mm/ui/bt;)V

    .line 1242
    return-void
.end method

.method public final a(ILandroid/view/MenuItem$OnMenuItemClickListener;Landroid/view/View$OnLongClickListener;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1253
    const/4 v1, 0x0

    const-string v3, ""

    sget-object v6, Lcom/tencent/mm/ui/bt;->gnN:Lcom/tencent/mm/ui/bt;

    move-object v0, p0

    move v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/tencent/mm/ui/MMActivity;->a(IILjava/lang/String;Landroid/view/MenuItem$OnMenuItemClickListener;Landroid/view/View$OnLongClickListener;Lcom/tencent/mm/ui/bt;)V

    .line 1254
    return-void
.end method

.method public final a(ILjava/lang/String;Landroid/view/MenuItem$OnMenuItemClickListener;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1229
    const/4 v2, 0x0

    const/4 v5, 0x0

    sget-object v6, Lcom/tencent/mm/ui/bt;->gnN:Lcom/tencent/mm/ui/bt;

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/tencent/mm/ui/MMActivity;->a(IILjava/lang/String;Landroid/view/MenuItem$OnMenuItemClickListener;Landroid/view/View$OnLongClickListener;Lcom/tencent/mm/ui/bt;)V

    .line 1230
    return-void
.end method

.method public final a(Landroid/app/Dialog;)V
    .locals 1
    .parameter

    .prologue
    .line 677
    if-nez p1, :cond_0

    .line 683
    :goto_0
    return-void

    .line 679
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->gnq:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 680
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->gnq:Ljava/util/ArrayList;

    .line 682
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->gnq:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public a(Landroid/view/MenuItem$OnMenuItemClickListener;)V
    .locals 2
    .parameter

    .prologue
    .line 1306
    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->ha:Landroid/support/v7/app/ActionBar;

    if-nez v0, :cond_0

    .line 1318
    :goto_0
    return-void

    .line 1309
    :cond_0
    if-nez p1, :cond_1

    .line 1310
    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->ha:Landroid/support/v7/app/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 1311
    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->ha:Landroid/support/v7/app/ActionBar;

    sget v1, Lcom/tencent/mm/h;->abA:I

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setLogo(I)V

    .line 1316
    :goto_1
    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->gnl:Lcom/tencent/mm/ui/bs;

    const v1, 0x102002c

    iput v1, v0, Lcom/tencent/mm/ui/bs;->gnH:I

    .line 1317
    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->gnl:Lcom/tencent/mm/ui/bs;

    iput-object p1, v0, Lcom/tencent/mm/ui/bs;->eam:Landroid/view/MenuItem$OnMenuItemClickListener;

    goto :goto_0

    .line 1313
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->ha:Landroid/support/v7/app/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 1314
    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->ha:Landroid/support/v7/app/ActionBar;

    sget v1, Lcom/tencent/mm/h;->abB:I

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setLogo(I)V

    goto :goto_1
.end method

.method public final a(Lcom/tencent/mm/ui/br;)V
    .locals 0
    .parameter

    .prologue
    .line 1538
    iput-object p1, p0, Lcom/tencent/mm/ui/MMActivity;->gnA:Lcom/tencent/mm/ui/br;

    .line 1539
    return-void
.end method

.method public final a(Lcom/tencent/mm/ui/br;Landroid/content/Intent;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1532
    iput-object p1, p0, Lcom/tencent/mm/ui/MMActivity;->gnA:Lcom/tencent/mm/ui/br;

    .line 1533
    invoke-virtual {p0, p2, p3}, Lcom/tencent/mm/ui/MMActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1534
    return-void
.end method

.method protected final a(Ljava/lang/Class;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1451
    invoke-virtual {p2, p0, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1452
    invoke-virtual {p0, p2}, Lcom/tencent/mm/ui/MMActivity;->startActivity(Landroid/content/Intent;)V

    .line 1453
    return-void
.end method

.method public final a(Ljava/lang/String;Landroid/view/MenuItem$OnMenuItemClickListener;Lcom/tencent/mm/ui/bt;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1237
    const/4 v5, 0x0

    move-object v0, p0

    move v2, v1

    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/tencent/mm/ui/MMActivity;->a(IILjava/lang/String;Landroid/view/MenuItem$OnMenuItemClickListener;Landroid/view/View$OnLongClickListener;Lcom/tencent/mm/ui/bt;)V

    .line 1238
    return-void
.end method

.method public final a(ZLcom/tencent/mm/ui/tools/eo;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1214
    const-string v0, "MicroMsg.MMActivity"

    const-string v1, "add search menu"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1215
    new-instance v0, Lcom/tencent/mm/ui/bs;

    invoke-direct {v0, v2}, Lcom/tencent/mm/ui/bs;-><init>(B)V

    .line 1216
    sget v1, Lcom/tencent/mm/i;->aAZ:I

    iput v1, v0, Lcom/tencent/mm/ui/bs;->gnH:I

    .line 1217
    sget v1, Lcom/tencent/mm/h;->abD:I

    iput v1, v0, Lcom/tencent/mm/ui/bs;->gnI:I

    .line 1218
    iput-object v3, v0, Lcom/tencent/mm/ui/bs;->eam:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 1219
    iput-object v3, v0, Lcom/tencent/mm/ui/bs;->gnM:Landroid/view/View$OnLongClickListener;

    .line 1221
    iget v1, v0, Lcom/tencent/mm/ui/bs;->gnH:I

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/MMActivity;->mE(I)Z

    .line 1222
    iget-object v1, p0, Lcom/tencent/mm/ui/MMActivity;->gnm:Ljava/util/LinkedList;

    invoke-virtual {v1, v2, v0}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 1223
    iput-boolean p1, p0, Lcom/tencent/mm/ui/MMActivity;->gnk:Z

    .line 1224
    iput-object p2, p0, Lcom/tencent/mm/ui/MMActivity;->diw:Lcom/tencent/mm/ui/tools/eo;

    .line 1225
    invoke-virtual {p0}, Lcom/tencent/mm/ui/MMActivity;->u()V

    .line 1226
    return-void
.end method

.method protected aEM()V
    .locals 0

    .prologue
    .line 327
    return-void
.end method

.method protected aEN()V
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->cYm:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/MMActivity;->setContentView(Landroid/view/View;)V

    .line 443
    return-void
.end method

.method public final aEO()I
    .locals 1

    .prologue
    .line 480
    iget v0, p0, Lcom/tencent/mm/ui/MMActivity;->gnw:I

    return v0
.end method

.method public aEP()V
    .locals 0

    .prologue
    .line 495
    return-void
.end method

.method public final aEQ()Z
    .locals 1

    .prologue
    .line 513
    iget-boolean v0, p0, Lcom/tencent/mm/ui/MMActivity;->gmX:Z

    return v0
.end method

.method protected final aER()V
    .locals 7

    .prologue
    const/16 v6, 0x30

    const/4 v3, -0x1

    .line 530
    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->gmR:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/tencent/mm/ui/MMActivity;->gmP:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 531
    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->gmV:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    .line 532
    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->cYm:Landroid/view/View;

    sget v1, Lcom/tencent/mm/i;->aBt:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->gmV:Landroid/widget/FrameLayout;

    .line 534
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->gmT:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 535
    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->gmV:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/tencent/mm/ui/MMActivity;->gmT:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 537
    :cond_1
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/MMActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 538
    const v1, 0x7f0300eb

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->gmP:Landroid/view/View;

    .line 539
    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->gmR:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/tencent/mm/ui/MMActivity;->gmP:Landroid/view/View;

    invoke-virtual {v0, v1, v3, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 540
    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->gmT:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 541
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v1, 0x423c

    invoke-static {p0, v1}, Lcom/tencent/mm/sdk/platformtools/e;->a(Landroid/content/Context;F)I

    move-result v1

    invoke-direct {v0, v3, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 542
    iget-object v1, p0, Lcom/tencent/mm/ui/MMActivity;->elv:Landroid/view/View;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/tencent/mm/ui/MMActivity;->elv:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-lez v1, :cond_3

    .line 543
    const-string v1, "MicroMsg.MMActivity"

    const-string v2, "titleView.getHeight() = [%s]"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/tencent/mm/ui/MMActivity;->elv:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 544
    iput v6, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 545
    iget-object v1, p0, Lcom/tencent/mm/ui/MMActivity;->elv:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 550
    :goto_0
    iget-object v1, p0, Lcom/tencent/mm/ui/MMActivity;->gmV:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/tencent/mm/ui/MMActivity;->gmT:Landroid/view/View;

    iget-object v3, p0, Lcom/tencent/mm/ui/MMActivity;->gmV:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v3

    invoke-virtual {v1, v2, v3, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 552
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->gmR:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->invalidate()V

    .line 553
    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->gmV:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 554
    return-void

    .line 547
    :cond_3
    iput v6, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 548
    const/high16 v1, 0x4248

    invoke-static {p0, v1}, Lcom/tencent/mm/sdk/platformtools/e;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_0
.end method

.method public final aES()Landroid/view/View;
    .locals 1

    .prologue
    .line 557
    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->gmP:Landroid/view/View;

    return-object v0
.end method

.method protected final aET()Landroid/view/View;
    .locals 1

    .prologue
    .line 565
    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->gmS:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public final aEU()I
    .locals 2

    .prologue
    .line 592
    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->cBR:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    return v0
.end method

.method public final aEV()I
    .locals 2

    .prologue
    .line 596
    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->cBR:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    return v0
.end method

.method public aEW()Z
    .locals 1

    .prologue
    .line 649
    const/4 v0, 0x1

    return v0
.end method

.method public final aEY()Z
    .locals 2

    .prologue
    .line 893
    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->gnl:Lcom/tencent/mm/ui/bs;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->gnl:Lcom/tencent/mm/ui/bs;

    iget-boolean v0, v0, Lcom/tencent/mm/ui/bs;->cQJ:Z

    if-eqz v0, :cond_0

    .line 895
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/tencent/mm/ui/MMActivity;->gnl:Lcom/tencent/mm/ui/bs;

    invoke-direct {p0, v0, v1}, Lcom/tencent/mm/ui/MMActivity;->a(Landroid/view/MenuItem;Lcom/tencent/mm/ui/bs;)V

    .line 896
    const/4 v0, 0x1

    .line 898
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected aEZ()Ljava/lang/String;
    .locals 1

    .prologue
    .line 928
    const-string v0, ""

    return-object v0
.end method

.method protected final aFa()Landroid/view/View;
    .locals 3

    .prologue
    .line 946
    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->dLe:Landroid/view/LayoutInflater;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/MMActivity;->getLayoutId()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final aFc()V
    .locals 1

    .prologue
    .line 1321
    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->gnm:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1326
    :goto_0
    return-void

    .line 1324
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->gnm:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 1325
    invoke-virtual {p0}, Lcom/tencent/mm/ui/MMActivity;->u()V

    goto :goto_0
.end method

.method public final aFd()V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1399
    const-string v2, "MicroMsg.MMActivity"

    const-string v3, "hideTitleView hasTitle:%b"

    new-array v4, v0, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/tencent/mm/ui/MMActivity;->ha:Landroid/support/v7/app/ActionBar;

    if-eqz v5, :cond_0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {v2, v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1400
    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->ha:Landroid/support/v7/app/ActionBar;

    if-nez v0, :cond_1

    .line 1404
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 1399
    goto :goto_0

    .line 1403
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->ha:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->hide()V

    goto :goto_1
.end method

.method public final aFe()V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1407
    const-string v2, "MicroMsg.MMActivity"

    const-string v3, "showTitleView hasTitle:%b"

    new-array v4, v0, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/tencent/mm/ui/MMActivity;->ha:Landroid/support/v7/app/ActionBar;

    if-eqz v5, :cond_0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {v2, v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1408
    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->ha:Landroid/support/v7/app/ActionBar;

    if-nez v0, :cond_1

    .line 1412
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 1407
    goto :goto_0

    .line 1411
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->ha:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->show()V

    goto :goto_1
.end method

.method public final aFf()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1415
    const-string v2, "MicroMsg.MMActivity"

    const-string v3, "isTitleShowing hasTitle:%b"

    new-array v4, v0, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/tencent/mm/ui/MMActivity;->ha:Landroid/support/v7/app/ActionBar;

    if-eqz v5, :cond_0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {v2, v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1416
    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->ha:Landroid/support/v7/app/ActionBar;

    if-nez v0, :cond_1

    .line 1419
    :goto_1
    return v1

    :cond_0
    move v0, v1

    .line 1415
    goto :goto_0

    .line 1419
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->ha:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->isShowing()Z

    move-result v1

    goto :goto_1
.end method

.method public final aFg()I
    .locals 1

    .prologue
    .line 1428
    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->ha:Landroid/support/v7/app/ActionBar;

    if-nez v0, :cond_0

    .line 1429
    const/4 v0, 0x0

    .line 1431
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->ha:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->getHeight()I

    move-result v0

    goto :goto_0
.end method

.method public aal()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 505
    invoke-virtual {p0}, Lcom/tencent/mm/ui/MMActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 506
    invoke-virtual {p0}, Lcom/tencent/mm/ui/MMActivity;->getParent()Landroid/app/Activity;

    move-result-object p0

    .line 508
    :cond_0
    return-object p0
.end method

.method public final af(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 1476
    if-nez p1, :cond_1

    .line 1488
    :cond_0
    :goto_0
    return-void

    .line 1479
    :cond_1
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/MMActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1480
    if-eqz v0, :cond_0

    .line 1483
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    .line 1484
    if-eqz v1, :cond_0

    .line 1487
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method public final ag(Z)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 517
    iput-boolean p1, p0, Lcom/tencent/mm/ui/MMActivity;->gmX:Z

    .line 518
    iget-object v3, p0, Lcom/tencent/mm/ui/MMActivity;->gmQ:Landroid/view/View;

    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 519
    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->gmQ:Landroid/view/View;

    if-nez p1, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 520
    if-nez p1, :cond_2

    .line 521
    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->gmQ:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 522
    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->gmQ:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 526
    :goto_2
    return-void

    :cond_0
    move v0, v2

    .line 518
    goto :goto_0

    :cond_1
    move v1, v2

    .line 519
    goto :goto_1

    .line 524
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->gmQ:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method public final bb(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1257
    invoke-direct {p0, p1}, Lcom/tencent/mm/ui/MMActivity;->mF(I)Lcom/tencent/mm/ui/bs;

    move-result-object v0

    .line 1258
    if-eqz v0, :cond_0

    iget v1, v0, Lcom/tencent/mm/ui/bs;->gnI:I

    if-eq v1, p2, :cond_0

    .line 1259
    iput p2, v0, Lcom/tencent/mm/ui/bs;->gnI:I

    .line 1260
    invoke-virtual {p0}, Lcom/tencent/mm/ui/MMActivity;->u()V

    .line 1262
    :cond_0
    return-void
.end method

.method public dc(Z)V
    .locals 4
    .parameter

    .prologue
    .line 709
    sget-boolean v0, Lcom/tencent/mm/ui/MMActivity;->gnn:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 710
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "classname"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "main_process"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/tencent/mm/ui/base/ej;->a(Landroid/content/Context;ZLandroid/content/Intent;)V

    .line 714
    :goto_0
    return-void

    .line 713
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "classname"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/tencent/mm/ui/MMActivity;->aEZ()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/tencent/mm/ui/base/ej;->a(Landroid/content/Context;ZLandroid/content/Intent;)V

    goto :goto_0
.end method

.method public final dd(Z)V
    .locals 4
    .parameter

    .prologue
    const-wide/16 v2, 0x100

    .line 963
    if-eqz p1, :cond_1

    .line 964
    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->ha:Landroid/support/v7/app/ActionBar;

    if-eqz v0, :cond_0

    .line 965
    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->ha:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->hide()V

    .line 967
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->gnj:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/mm/ui/bf;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/bf;-><init>(Lcom/tencent/mm/ui/MMActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 989
    :goto_0
    return-void

    .line 978
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/mm/ui/MMActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 979
    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->gnj:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/mm/ui/bg;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/bg;-><init>(Lcom/tencent/mm/ui/MMActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public final de(Z)V
    .locals 1
    .parameter

    .prologue
    .line 1127
    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->ha:Landroid/support/v7/app/ActionBar;

    if-nez v0, :cond_0

    .line 1131
    :goto_0
    return-void

    .line 1130
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->ha:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    goto :goto_0
.end method

.method public final df(Z)V
    .locals 1
    .parameter

    .prologue
    .line 1134
    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->gnl:Lcom/tencent/mm/ui/bs;

    if-nez v0, :cond_1

    .line 1141
    :cond_0
    :goto_0
    return-void

    .line 1137
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->gnl:Lcom/tencent/mm/ui/bs;

    iget-boolean v0, v0, Lcom/tencent/mm/ui/bs;->cQJ:Z

    if-eq v0, p1, :cond_0

    .line 1138
    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->gnl:Lcom/tencent/mm/ui/bs;

    iput-boolean p1, v0, Lcom/tencent/mm/ui/bs;->cQJ:Z

    .line 1139
    invoke-virtual {p0}, Lcom/tencent/mm/ui/MMActivity;->u()V

    goto :goto_0
.end method

.method public final dg(Z)V
    .locals 2
    .parameter

    .prologue
    .line 1144
    const/4 v0, 0x1

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/tencent/mm/ui/MMActivity;->a(ZIZ)V

    .line 1145
    return-void
.end method

.method public final dh(Z)V
    .locals 2
    .parameter

    .prologue
    .line 1179
    const/4 v0, 0x1

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/tencent/mm/ui/MMActivity;->b(ZIZ)V

    .line 1180
    return-void
.end method

.method protected final e(Ljava/lang/Class;)V
    .locals 1
    .parameter

    .prologue
    .line 1445
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1446
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1447
    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/MMActivity;->startActivity(Landroid/content/Intent;)V

    .line 1448
    return-void
.end method

.method public finish()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 1513
    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->finish()V

    .line 1515
    invoke-virtual {p0}, Lcom/tencent/mm/ui/MMActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "MMActivity.OverrideEnterAnimation"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1516
    invoke-virtual {p0}, Lcom/tencent/mm/ui/MMActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "MMActivity.OverrideExitAnimation"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1518
    if-eq v0, v3, :cond_0

    .line 1519
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 1521
    :cond_0
    return-void
.end method

.method protected final getContentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 561
    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->cYm:Landroid/view/View;

    return-object v0
.end method

.method protected abstract getLayoutId()I
.end method

.method public final l(IZ)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1148
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/tencent/mm/ui/MMActivity;->a(ZIZ)V

    .line 1149
    return-void
.end method

.method public final m(IZ)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1183
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/tencent/mm/ui/MMActivity;->b(ZIZ)V

    .line 1184
    return-void
.end method

.method public final mA(I)V
    .locals 2
    .parameter

    .prologue
    .line 266
    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->cYm:Landroid/view/View;

    if-nez v0, :cond_0

    .line 276
    :goto_0
    return-void

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->gmV:Landroid/widget/FrameLayout;

    if-nez v0, :cond_1

    .line 271
    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->cYm:Landroid/view/View;

    sget v1, Lcom/tencent/mm/i;->aBt:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->gmV:Landroid/widget/FrameLayout;

    .line 274
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->gmV:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 275
    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->gmR:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public final mB(I)V
    .locals 1
    .parameter

    .prologue
    .line 1001
    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->ha:Landroid/support/v7/app/ActionBar;

    if-nez v0, :cond_0

    .line 1009
    :goto_0
    return-void

    .line 1004
    :cond_0
    if-nez p1, :cond_1

    .line 1005
    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->ha:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->show()V

    goto :goto_0

    .line 1007
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->ha:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->hide()V

    goto :goto_0
.end method

.method public final mC(I)V
    .locals 1
    .parameter

    .prologue
    .line 1031
    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->ha:Landroid/support/v7/app/ActionBar;

    if-nez v0, :cond_0

    .line 1035
    :goto_0
    return-void

    .line 1034
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->ha:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->setSubtitle(I)V

    goto :goto_0
.end method

.method public final mD(I)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1042
    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->ha:Landroid/support/v7/app/ActionBar;

    if-nez v0, :cond_0

    .line 1060
    :goto_0
    return-void

    .line 1045
    :cond_0
    iput v1, p0, Lcom/tencent/mm/ui/MMActivity;->gmZ:I

    .line 1047
    iput-object v2, p0, Lcom/tencent/mm/ui/MMActivity;->gnb:Lcom/tencent/mm/ui/widget/a;

    .line 1048
    if-nez p1, :cond_2

    .line 1053
    iput v1, p0, Lcom/tencent/mm/ui/MMActivity;->gna:I

    .line 1054
    iput-object v2, p0, Lcom/tencent/mm/ui/MMActivity;->gnc:Lcom/tencent/mm/ui/widget/a;

    .line 1059
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/tencent/mm/ui/MMActivity;->aFb()V

    goto :goto_0

    .line 1055
    :cond_2
    iget v0, p0, Lcom/tencent/mm/ui/MMActivity;->gna:I

    if-eq v0, p1, :cond_1

    .line 1056
    iput p1, p0, Lcom/tencent/mm/ui/MMActivity;->gna:I

    .line 1057
    invoke-virtual {p0}, Lcom/tencent/mm/ui/MMActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/tencent/mm/g;->aaK:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget v1, p0, Lcom/tencent/mm/ui/MMActivity;->gna:I

    invoke-direct {p0, v0, v1}, Lcom/tencent/mm/ui/MMActivity;->ba(II)Lcom/tencent/mm/ui/widget/a;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->gnc:Lcom/tencent/mm/ui/widget/a;

    goto :goto_1
.end method

.method public final mE(I)Z
    .locals 7
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1341
    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->gnm:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 1342
    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->gnm:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/bs;

    .line 1343
    iget v0, v0, Lcom/tencent/mm/ui/bs;->gnH:I

    if-ne v0, p1, :cond_1

    .line 1344
    const-string v0, "MicroMsg.MMActivity"

    const-string v4, "match menu, id %d, remove it"

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v0, v4, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1345
    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->gnm:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 1346
    invoke-virtual {p0}, Lcom/tencent/mm/ui/MMActivity;->u()V

    move v2, v3

    .line 1350
    :cond_0
    return v2

    .line 1341
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public mG(I)V
    .locals 1
    .parameter

    .prologue
    .line 1440
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/tencent/mm/ui/MMActivity;->gnf:Z

    .line 1441
    invoke-direct {p0}, Lcom/tencent/mm/ui/MMActivity;->aFb()V

    .line 1442
    return-void

    .line 1440
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mm(I)V
    .locals 1
    .parameter

    .prologue
    .line 1435
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/tencent/mm/ui/MMActivity;->gng:Z

    .line 1436
    invoke-direct {p0}, Lcom/tencent/mm/ui/MMActivity;->aFb()V

    .line 1437
    return-void

    .line 1435
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mn(I)V
    .locals 1
    .parameter

    .prologue
    .line 1020
    invoke-virtual {p0, p1}, Lcom/tencent/mm/ui/MMActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/MMActivity;->vT(Ljava/lang/String;)V

    .line 1021
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1543
    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->gnA:Lcom/tencent/mm/ui/br;

    if-eqz v0, :cond_0

    .line 1544
    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->gnA:Lcom/tencent/mm/ui/br;

    invoke-interface {v0, p1, p2, p3}, Lcom/tencent/mm/ui/br;->b(IILandroid/content/Intent;)V

    .line 1546
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->gnA:Lcom/tencent/mm/ui/br;

    .line 1547
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x3

    const/4 v4, 0x2

    const/4 v3, -0x1

    .line 331
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 332
    invoke-virtual {p0}, Lcom/tencent/mm/ui/MMActivity;->aEM()V

    .line 334
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->className:Ljava/lang/String;

    .line 335
    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->className:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/tencent/mm/ui/fc;->w(ILjava/lang/String;)V

    .line 337
    invoke-virtual {p0}, Lcom/tencent/mm/ui/MMActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/ui/MMActivity;->bO(Landroid/content/Context;)Ljava/util/Locale;

    .line 339
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/MMActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->cBR:Landroid/media/AudioManager;

    .line 340
    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->cBR:Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/MMActivity;->eNl:I

    .line 341
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->dLe:Landroid/view/LayoutInflater;

    .line 342
    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->dLe:Landroid/view/LayoutInflater;

    sget v1, Lcom/tencent/mm/k;->aWn:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->cYm:Landroid/view/View;

    .line 343
    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->cYm:Landroid/view/View;

    sget v1, Lcom/tencent/mm/i;->aBB:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->gmR:Landroid/widget/LinearLayout;

    .line 344
    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->cYm:Landroid/view/View;

    sget v1, Lcom/tencent/mm/i;->aBu:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->gmS:Landroid/widget/RelativeLayout;

    .line 345
    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->cYm:Landroid/view/View;

    sget v1, Lcom/tencent/mm/i;->aBC:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->gmQ:Landroid/view/View;

    .line 347
    invoke-virtual {p0}, Lcom/tencent/mm/ui/MMActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/tencent/mm/g;->aaX:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/MMActivity;->gnh:I

    .line 349
    invoke-virtual {p0}, Lcom/tencent/mm/ui/MMActivity;->Iw()I

    move-result v0

    .line 350
    if-eq v0, v3, :cond_0

    .line 351
    iget-object v1, p0, Lcom/tencent/mm/ui/MMActivity;->dLe:Landroid/view/LayoutInflater;

    invoke-virtual {v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->elv:Landroid/view/View;

    .line 352
    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->gmR:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/tencent/mm/ui/MMActivity;->elv:Landroid/view/View;

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 353
    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->elv:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 356
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/mm/ui/MMActivity;->getLayoutId()I

    move-result v0

    .line 357
    if-eq v0, v3, :cond_1

    .line 360
    invoke-virtual {p0}, Lcom/tencent/mm/ui/MMActivity;->aFa()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->gmP:Landroid/view/View;

    .line 363
    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->gmR:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/tencent/mm/ui/MMActivity;->gmP:Landroid/view/View;

    invoke-virtual {v0, v1, v3, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 364
    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->cYm:Landroid/view/View;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/MMActivity;->aEN()V

    .line 367
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/mm/ui/MMActivity;->aW()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->ha:Landroid/support/v7/app/ActionBar;

    .line 368
    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->ha:Landroid/support/v7/app/ActionBar;

    if-eqz v0, :cond_3

    .line 369
    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->ha:Landroid/support/v7/app/ActionBar;

    sget v1, Lcom/tencent/mm/n;->amt:I

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    .line 370
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_2

    .line 371
    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->ha:Landroid/support/v7/app/ActionBar;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/MMActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/tencent/mm/f;->ZK:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 373
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->ha:Landroid/support/v7/app/ActionBar;

    sget v1, Lcom/tencent/mm/h;->abA:I

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setLogo(I)V

    .line 376
    :cond_3
    sget v0, Lcom/tencent/mm/i;->aBs:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/MMActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    .line 377
    if-eqz v0, :cond_4

    .line 378
    new-instance v1, Lcom/tencent/mm/ui/bm;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/bm;-><init>(Lcom/tencent/mm/ui/MMActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 388
    :cond_4
    sget v0, Lcom/tencent/mm/i;->aBr:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/MMActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/LayoutListenerView;

    .line 389
    if-eqz v0, :cond_5

    .line 390
    new-instance v1, Lcom/tencent/mm/ui/bn;

    invoke-direct {v1, p0, v0}, Lcom/tencent/mm/ui/bn;-><init>(Lcom/tencent/mm/ui/MMActivity;Lcom/tencent/mm/ui/LayoutListenerView;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/LayoutListenerView;->a(Lcom/tencent/mm/ui/ba;)V

    .line 409
    invoke-virtual {p0}, Lcom/tencent/mm/ui/MMActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 410
    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_5

    .line 412
    new-instance v1, Lcom/tencent/mm/ui/bo;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/bo;-><init>(Lcom/tencent/mm/ui/MMActivity;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/LayoutListenerView;->a(Lcom/tencent/mm/ui/bb;)V

    .line 431
    :cond_5
    new-instance v0, Lcom/tencent/mm/c/a/m;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/m;-><init>()V

    .line 432
    iget-object v1, v0, Lcom/tencent/mm/c/a/m;->bLU:Lcom/tencent/mm/c/a/n;

    iput v4, v1, Lcom/tencent/mm/c/a/n;->type:I

    .line 433
    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/tencent/mm/sdk/b/f;->f(Lcom/tencent/mm/sdk/b/e;)Z

    .line 435
    iget-object v1, v0, Lcom/tencent/mm/c/a/m;->bLV:Lcom/tencent/mm/c/a/o;

    iget v1, v1, Lcom/tencent/mm/c/a/o;->bLZ:I

    if-ne v1, v4, :cond_6

    .line 436
    iget-object v1, v0, Lcom/tencent/mm/c/a/m;->bLV:Lcom/tencent/mm/c/a/o;

    iget v1, v1, Lcom/tencent/mm/c/a/o;->bMb:I

    iget-object v2, v0, Lcom/tencent/mm/c/a/m;->bLV:Lcom/tencent/mm/c/a/o;

    iget-boolean v2, v2, Lcom/tencent/mm/c/a/o;->visible:Z

    iget-object v3, v0, Lcom/tencent/mm/c/a/m;->bLV:Lcom/tencent/mm/c/a/o;

    iget-object v3, v3, Lcom/tencent/mm/c/a/o;->url:Ljava/lang/String;

    iget-object v0, v0, Lcom/tencent/mm/c/a/m;->bLV:Lcom/tencent/mm/c/a/o;

    iget-object v4, v0, Lcom/tencent/mm/c/a/o;->desc:Ljava/lang/String;

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/tencent/mm/ui/MMActivity;->a(IZLjava/lang/String;Ljava/lang/String;Z)V

    .line 439
    :cond_6
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 11
    .parameter

    .prologue
    .line 739
    const-string v0, "MicroMsg.MMActivity"

    const-string v1, "on create option menu, menuCache size:%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/tencent/mm/ui/MMActivity;->gnm:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 740
    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->ha:Landroid/support/v7/app/ActionBar;

    if-nez v0, :cond_0

    .line 741
    const-string v0, "MicroMsg.MMActivity"

    const-string v1, "error, mActionBar is null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    const/4 v0, 0x0

    .line 858
    :goto_0
    return v0

    .line 744
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->gnx:Lcom/tencent/mm/ui/bs;

    .line 745
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->gny:Landroid/view/MenuItem;

    .line 747
    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->ha:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->getHeight()I

    move-result v0

    .line 748
    if-nez v0, :cond_e

    .line 749
    invoke-virtual {p0}, Lcom/tencent/mm/ui/MMActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 750
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v1, v0, :cond_2

    .line 751
    invoke-virtual {p0}, Lcom/tencent/mm/ui/MMActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/tencent/mm/g;->aaM:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    move v3, v0

    .line 757
    :goto_1
    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->gnm:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/bs;

    .line 758
    iget v1, v0, Lcom/tencent/mm/ui/bs;->gnH:I

    const v2, 0x102002c

    if-ne v1, v2, :cond_3

    .line 759
    const-string v0, "MicroMsg.MMActivity"

    const-string v1, "match back option menu, continue"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 753
    :cond_2
    invoke-virtual {p0}, Lcom/tencent/mm/ui/MMActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/tencent/mm/g;->aaN:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    move v3, v0

    goto :goto_1

    .line 762
    :cond_3
    iget v1, v0, Lcom/tencent/mm/ui/bs;->gnH:I

    sget v2, Lcom/tencent/mm/i;->aAZ:I

    if-ne v1, v2, :cond_5

    .line 763
    const-string v1, "MicroMsg.MMActivity"

    const-string v2, "match search menu, enable search view[%B], search view helper is null[%B]"

    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-boolean v6, p0, Lcom/tencent/mm/ui/MMActivity;->gnk:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v0

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->diw:Lcom/tencent/mm/ui/tools/eo;

    if-nez v0, :cond_4

    const/4 v0, 0x1

    :goto_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v1, v2, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 764
    iget-boolean v0, p0, Lcom/tencent/mm/ui/MMActivity;->gnk:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->diw:Lcom/tencent/mm/ui/tools/eo;

    if-eqz v0, :cond_1

    .line 765
    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->diw:Lcom/tencent/mm/ui/tools/eo;

    invoke-virtual {v0, p0, p1}, Lcom/tencent/mm/ui/tools/eo;->b(Landroid/support/v4/app/FragmentActivity;Landroid/view/Menu;)V

    goto :goto_2

    .line 763
    :cond_4
    const/4 v0, 0x0

    goto :goto_3

    .line 770
    :cond_5
    const/4 v1, 0x0

    iget v2, v0, Lcom/tencent/mm/ui/bs;->gnH:I

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/tencent/mm/ui/bs;->text:Ljava/lang/String;

    invoke-interface {p1, v1, v2, v5, v6}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v5

    .line 771
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/tencent/mm/compatible/f/a;->a(Landroid/view/MenuItem;Ljava/lang/String;)V

    .line 773
    new-instance v6, Lcom/tencent/mm/ui/bp;

    invoke-direct {v6, p0, v5, v0}, Lcom/tencent/mm/ui/bp;-><init>(Lcom/tencent/mm/ui/MMActivity;Landroid/view/MenuItem;Lcom/tencent/mm/ui/bs;)V

    .line 780
    new-instance v7, Lcom/tencent/mm/ui/bq;

    invoke-direct {v7, p0, v0}, Lcom/tencent/mm/ui/bq;-><init>(Lcom/tencent/mm/ui/MMActivity;Lcom/tencent/mm/ui/bs;)V

    .line 787
    iget v1, v0, Lcom/tencent/mm/ui/bs;->gnI:I

    if-eqz v1, :cond_9

    .line 788
    iget-object v1, v0, Lcom/tencent/mm/ui/bs;->gnM:Landroid/view/View$OnLongClickListener;

    if-eqz v1, :cond_8

    .line 790
    const/16 v1, 0x38

    invoke-static {p0, v1}, Lcom/tencent/mm/an/a;->fromDPToPix(Landroid/content/Context;I)I

    move-result v8

    .line 791
    iget-object v1, v0, Lcom/tencent/mm/ui/bs;->gnK:Landroid/view/View;

    if-nez v1, :cond_7

    .line 793
    new-instance v2, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/MMActivity;->aal()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 794
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v8, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 795
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 796
    sget v1, Lcom/tencent/mm/h;->abC:I

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 797
    invoke-virtual {v2, v3}, Landroid/view/View;->setMinimumHeight(I)V

    .line 798
    invoke-virtual {v2, v8}, Landroid/view/View;->setMinimumWidth(I)V

    .line 799
    iput-object v2, v0, Lcom/tencent/mm/ui/bs;->gnK:Landroid/view/View;

    :goto_4
    move-object v1, v2

    .line 803
    check-cast v1, Landroid/widget/ImageButton;

    iget v9, v0, Lcom/tencent/mm/ui/bs;->gnI:I

    invoke-virtual {v1, v9}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 804
    invoke-static {v5, v2}, Landroid/support/v4/view/z;->a(Landroid/view/MenuItem;Landroid/view/View;)Landroid/view/MenuItem;

    .line 805
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 806
    iput v8, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 807
    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 808
    invoke-virtual {v2, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 809
    invoke-virtual {v2, v7}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 810
    iget-boolean v1, v0, Lcom/tencent/mm/ui/bs;->cQJ:Z

    invoke-virtual {v2, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 846
    :goto_5
    iget-boolean v1, v0, Lcom/tencent/mm/ui/bs;->cQJ:Z

    invoke-interface {v5, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 847
    iget-boolean v1, v0, Lcom/tencent/mm/ui/bs;->visible:Z

    invoke-interface {v5, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 848
    const/4 v1, 0x2

    invoke-static {v5, v1}, Landroid/support/v4/view/z;->a(Landroid/view/MenuItem;I)V

    .line 851
    iget v1, v0, Lcom/tencent/mm/ui/bs;->gnI:I

    sget v2, Lcom/tencent/mm/h;->afQ:I

    if-ne v1, v2, :cond_6

    .line 852
    iput-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->gnx:Lcom/tencent/mm/ui/bs;

    .line 853
    iput-object v5, p0, Lcom/tencent/mm/ui/MMActivity;->gny:Landroid/view/MenuItem;

    .line 855
    :cond_6
    const-string v1, "MicroMsg.MMActivity"

    const-string v2, "set %d %s option menu enable %B, visible %B"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget v7, v0, Lcom/tencent/mm/ui/bs;->gnH:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, v0, Lcom/tencent/mm/ui/bs;->text:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    iget-boolean v7, v0, Lcom/tencent/mm/ui/bs;->cQJ:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    iget-boolean v0, v0, Lcom/tencent/mm/ui/bs;->visible:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v1, v2, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 801
    :cond_7
    iget-object v2, v0, Lcom/tencent/mm/ui/bs;->gnK:Landroid/view/View;

    goto :goto_4

    .line 813
    :cond_8
    iget v1, v0, Lcom/tencent/mm/ui/bs;->gnI:I

    invoke-interface {v5, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_5

    .line 817
    :cond_9
    iget-object v1, v0, Lcom/tencent/mm/ui/bs;->gnJ:Landroid/view/View;

    if-nez v1, :cond_a

    .line 819
    invoke-virtual {p0}, Lcom/tencent/mm/ui/MMActivity;->aal()Landroid/app/Activity;

    move-result-object v1

    sget v2, Lcom/tencent/mm/k;->aSc:I

    const/4 v8, 0x0

    invoke-static {v1, v2, v8}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/ui/bs;->gnJ:Landroid/view/View;

    .line 821
    :cond_a
    iget-object v1, v0, Lcom/tencent/mm/ui/bs;->gnL:Lcom/tencent/mm/ui/bt;

    sget-object v2, Lcom/tencent/mm/ui/bt;->gnP:Lcom/tencent/mm/ui/bt;

    if-ne v1, v2, :cond_b

    .line 822
    iget-object v1, v0, Lcom/tencent/mm/ui/bs;->gnJ:Landroid/view/View;

    sget v2, Lcom/tencent/mm/i;->akS:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 823
    iget-object v1, v0, Lcom/tencent/mm/ui/bs;->gnJ:Landroid/view/View;

    sget v2, Lcom/tencent/mm/i;->divider:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 824
    iget-object v1, v0, Lcom/tencent/mm/ui/bs;->gnJ:Landroid/view/View;

    sget v2, Lcom/tencent/mm/i;->akT:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 825
    sget v2, Lcom/tencent/mm/h;->acZ:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 826
    iget v2, p0, Lcom/tencent/mm/ui/MMActivity;->gnh:I

    const/4 v8, 0x0

    iget v9, p0, Lcom/tencent/mm/ui/MMActivity;->gnh:I

    const/4 v10, 0x0

    invoke-virtual {v1, v2, v8, v9, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 838
    :goto_6
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 839
    iget-object v2, v0, Lcom/tencent/mm/ui/bs;->text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 840
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 841
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 842
    iget-boolean v2, v0, Lcom/tencent/mm/ui/bs;->cQJ:Z

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 843
    iget-object v1, v0, Lcom/tencent/mm/ui/bs;->gnJ:Landroid/view/View;

    invoke-static {v5, v1}, Landroid/support/v4/view/z;->a(Landroid/view/MenuItem;Landroid/view/View;)Landroid/view/MenuItem;

    goto/16 :goto_5

    .line 827
    :cond_b
    iget-object v1, v0, Lcom/tencent/mm/ui/bs;->gnL:Lcom/tencent/mm/ui/bt;

    sget-object v2, Lcom/tencent/mm/ui/bt;->gnO:Lcom/tencent/mm/ui/bt;

    if-ne v1, v2, :cond_c

    .line 828
    iget-object v1, v0, Lcom/tencent/mm/ui/bs;->gnJ:Landroid/view/View;

    sget v2, Lcom/tencent/mm/i;->akS:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 829
    iget-object v1, v0, Lcom/tencent/mm/ui/bs;->gnJ:Landroid/view/View;

    sget v2, Lcom/tencent/mm/i;->divider:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 830
    iget-object v1, v0, Lcom/tencent/mm/ui/bs;->gnJ:Landroid/view/View;

    sget v2, Lcom/tencent/mm/i;->akT:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 831
    sget v2, Lcom/tencent/mm/h;->acX:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 832
    iget v2, p0, Lcom/tencent/mm/ui/MMActivity;->gnh:I

    const/4 v8, 0x0

    iget v9, p0, Lcom/tencent/mm/ui/MMActivity;->gnh:I

    const/4 v10, 0x0

    invoke-virtual {v1, v2, v8, v9, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_6

    .line 834
    :cond_c
    iget-object v1, v0, Lcom/tencent/mm/ui/bs;->gnJ:Landroid/view/View;

    sget v2, Lcom/tencent/mm/i;->akT:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 835
    iget-object v1, v0, Lcom/tencent/mm/ui/bs;->gnJ:Landroid/view/View;

    sget v2, Lcom/tencent/mm/i;->divider:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 836
    iget-object v1, v0, Lcom/tencent/mm/ui/bs;->gnJ:Landroid/view/View;

    sget v2, Lcom/tencent/mm/i;->akS:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    goto :goto_6

    .line 858
    :cond_d
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    goto/16 :goto_0

    :cond_e
    move v3, v0

    goto/16 :goto_1
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    .line 692
    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onDestroy()V

    .line 693
    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->cYm:Landroid/view/View;

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/h;->ad(Landroid/view/View;)V

    .line 695
    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->gnq:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 696
    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->gnq:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 697
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 698
    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->gnq:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Dialog;

    .line 699
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 700
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 697
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 703
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->gnq:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 704
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->gnq:Ljava/util/ArrayList;

    .line 706
    :cond_2
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x3

    const/4 v1, 0x1

    .line 612
    const/16 v0, 0x19

    if-ne p1, v0, :cond_1

    .line 614
    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->cBR:Landroid/media/AudioManager;

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    .line 615
    iget v0, p0, Lcom/tencent/mm/ui/MMActivity;->eNl:I

    div-int/lit8 v0, v0, 0x7

    .line 616
    if-nez v0, :cond_0

    move v0, v1

    .line 619
    :cond_0
    iget-object v3, p0, Lcom/tencent/mm/ui/MMActivity;->cBR:Landroid/media/AudioManager;

    sub-int v0, v2, v0

    invoke-virtual {v3, v4, v0, v5}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 640
    :goto_0
    return v1

    .line 623
    :cond_1
    const/16 v0, 0x18

    if-ne p1, v0, :cond_4

    .line 624
    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->cBR:Landroid/media/AudioManager;

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    .line 625
    iget v0, p0, Lcom/tencent/mm/ui/MMActivity;->eNl:I

    if-lt v2, v0, :cond_2

    .line 626
    const-string v0, "MicroMsg.MMActivity"

    const-string v2, "has set the max volume"

    invoke-static {v0, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 629
    :cond_2
    iget v0, p0, Lcom/tencent/mm/ui/MMActivity;->eNl:I

    div-int/lit8 v0, v0, 0x7

    .line 630
    if-nez v0, :cond_3

    move v0, v1

    .line 633
    :cond_3
    iget-object v3, p0, Lcom/tencent/mm/ui/MMActivity;->cBR:Landroid/media/AudioManager;

    add-int/2addr v0, v2

    invoke-virtual {v3, v4, v0, v5}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0

    .line 636
    :cond_4
    iget-boolean v0, p0, Lcom/tencent/mm/ui/MMActivity;->gnk:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->diw:Lcom/tencent/mm/ui/tools/eo;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->diw:Lcom/tencent/mm/ui/tools/eo;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/mm/ui/tools/eo;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 637
    const-string v0, "MicroMsg.MMActivity"

    const-string v2, "match search view on key down"

    invoke-static {v0, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 640
    :cond_5
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/ActionBarActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 601
    const/16 v1, 0x52

    if-ne p1, v1, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 602
    iget-object v1, p0, Lcom/tencent/mm/ui/MMActivity;->gnx:Lcom/tencent/mm/ui/bs;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/mm/ui/MMActivity;->gnx:Lcom/tencent/mm/ui/bs;

    iget-boolean v1, v1, Lcom/tencent/mm/ui/bs;->cQJ:Z

    if-eqz v1, :cond_0

    .line 603
    iget-object v1, p0, Lcom/tencent/mm/ui/MMActivity;->gny:Landroid/view/MenuItem;

    iget-object v2, p0, Lcom/tencent/mm/ui/MMActivity;->gnx:Lcom/tencent/mm/ui/bs;

    invoke-direct {p0, v1, v2}, Lcom/tencent/mm/ui/MMActivity;->a(Landroid/view/MenuItem;Lcom/tencent/mm/ui/bs;)V

    .line 607
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/ActionBarActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x1

    .line 872
    const-string v0, "MicroMsg.MMActivity"

    const-string v1, "on options item selected"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 873
    iget-boolean v0, p0, Lcom/tencent/mm/ui/MMActivity;->gmX:Z

    if-nez v0, :cond_1

    .line 874
    const-string v0, "MicroMsg.MMActivity"

    const-string v1, "onOptionsItemSelected screen not enable."

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 889
    :cond_0
    :goto_0
    return v6

    .line 877
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget-object v1, p0, Lcom/tencent/mm/ui/MMActivity;->gnl:Lcom/tencent/mm/ui/bs;

    iget v1, v1, Lcom/tencent/mm/ui/bs;->gnH:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->gnl:Lcom/tencent/mm/ui/bs;

    iget-boolean v0, v0, Lcom/tencent/mm/ui/bs;->cQJ:Z

    if-eqz v0, :cond_2

    .line 878
    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->gnl:Lcom/tencent/mm/ui/bs;

    invoke-direct {p0, p1, v0}, Lcom/tencent/mm/ui/MMActivity;->a(Landroid/view/MenuItem;Lcom/tencent/mm/ui/bs;)V

    goto :goto_0

    .line 881
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->gnm:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/bs;

    .line 882
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    iget v3, v0, Lcom/tencent/mm/ui/bs;->gnH:I

    if-ne v2, v3, :cond_3

    .line 883
    const-string v1, "MicroMsg.MMActivity"

    const-string v2, "on option menu %d click"

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 884
    invoke-direct {p0, p1, v0}, Lcom/tencent/mm/ui/MMActivity;->a(Landroid/view/MenuItem;Lcom/tencent/mm/ui/bs;)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 6

    .prologue
    .line 722
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 723
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/tencent/mm/ui/MMActivity;->className:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/tencent/mm/ui/fc;->w(ILjava/lang/String;)V

    .line 724
    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onPause()V

    .line 725
    const/4 v2, 0x0

    sput-object v2, Lcom/tencent/mm/ui/MMActivity;->gno:Lcom/tencent/mm/ui/MMActivity;

    .line 726
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/tencent/mm/ui/MMActivity;->dc(Z)V

    .line 729
    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v2

    const-string v3, "UINotify"

    iget-object v4, p0, Lcom/tencent/mm/ui/MMActivity;->gns:Lcom/tencent/mm/sdk/b/g;

    invoke-interface {v2, v3, v4}, Lcom/tencent/mm/sdk/b/f;->b(Ljava/lang/String;Lcom/tencent/mm/sdk/b/g;)Z

    .line 730
    const-string v2, "MicroMsg.INIT"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "KEVIN MMActivity onPause:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v0, v4, v0

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter

    .prologue
    .line 863
    const-string v0, "MicroMsg.MMActivity"

    const-string v1, "on prepare option menu"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    iget-boolean v0, p0, Lcom/tencent/mm/ui/MMActivity;->gnk:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->diw:Lcom/tencent/mm/ui/tools/eo;

    if-eqz v0, :cond_0

    .line 865
    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->diw:Lcom/tencent/mm/ui/tools/eo;

    invoke-virtual {v0, p0, p1}, Lcom/tencent/mm/ui/tools/eo;->a(Landroid/support/v4/app/FragmentActivity;Landroid/view/Menu;)V

    .line 867
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 10

    .prologue
    const/4 v4, 0x2

    const/4 v5, 0x1

    .line 654
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 655
    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->className:Ljava/lang/String;

    invoke-static {v5, v0}, Lcom/tencent/mm/ui/fc;->w(ILjava/lang/String;)V

    .line 657
    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onResume()V

    .line 658
    const-string v0, "MicroMsg.INIT"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "KEVIN MMActivity super.onResume "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v6

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    sput-object p0, Lcom/tencent/mm/ui/MMActivity;->gno:Lcom/tencent/mm/ui/MMActivity;

    .line 660
    invoke-virtual {p0, v5}, Lcom/tencent/mm/ui/MMActivity;->dc(Z)V

    .line 663
    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v0

    const-string v1, "UINotify"

    iget-object v2, p0, Lcom/tencent/mm/ui/MMActivity;->gns:Lcom/tencent/mm/sdk/b/g;

    invoke-interface {v0, v1, v2}, Lcom/tencent/mm/sdk/b/f;->a(Ljava/lang/String;Lcom/tencent/mm/sdk/b/g;)Z

    .line 664
    new-instance v0, Lcom/tencent/mm/c/a/m;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/m;-><init>()V

    .line 665
    iget-object v1, v0, Lcom/tencent/mm/c/a/m;->bLU:Lcom/tencent/mm/c/a/n;

    iput v4, v1, Lcom/tencent/mm/c/a/n;->type:I

    .line 666
    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/tencent/mm/sdk/b/f;->f(Lcom/tencent/mm/sdk/b/e;)Z

    .line 668
    iget-object v1, v0, Lcom/tencent/mm/c/a/m;->bLV:Lcom/tencent/mm/c/a/o;

    iget v1, v1, Lcom/tencent/mm/c/a/o;->bLZ:I

    if-ne v1, v4, :cond_0

    .line 669
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 670
    iget-object v1, v0, Lcom/tencent/mm/c/a/m;->bLV:Lcom/tencent/mm/c/a/o;

    iget v1, v1, Lcom/tencent/mm/c/a/o;->bMb:I

    iget-object v2, v0, Lcom/tencent/mm/c/a/m;->bLV:Lcom/tencent/mm/c/a/o;

    iget-boolean v2, v2, Lcom/tencent/mm/c/a/o;->visible:Z

    iget-object v3, v0, Lcom/tencent/mm/c/a/m;->bLV:Lcom/tencent/mm/c/a/o;

    iget-object v3, v3, Lcom/tencent/mm/c/a/o;->url:Ljava/lang/String;

    iget-object v0, v0, Lcom/tencent/mm/c/a/m;->bLV:Lcom/tencent/mm/c/a/o;

    iget-object v4, v0, Lcom/tencent/mm/c/a/o;->desc:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/tencent/mm/ui/MMActivity;->a(IZLjava/lang/String;Ljava/lang/String;Z)V

    .line 671
    const-string v0, "MicroMsg.INIT"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "KEVIN MMActivity onResume initNotifyView:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v8

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    :cond_0
    const-string v0, "MicroMsg.INIT"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "KEVIN MMActivity onResume :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v6

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 499
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    .line 500
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 502
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 575
    invoke-virtual {p0}, Lcom/tencent/mm/ui/MMActivity;->IX()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 577
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->azs()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lcom/tencent/mm/ui/MMActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 578
    const-string v1, "settings_landscape_mode"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/MMActivity;->gni:Z

    .line 579
    iget-boolean v0, p0, Lcom/tencent/mm/ui/MMActivity;->gni:Z

    if-eqz v0, :cond_0

    .line 580
    invoke-virtual {p0, v2}, Lcom/tencent/mm/ui/MMActivity;->setRequestedOrientation(I)V

    .line 588
    :goto_0
    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onStart()V

    .line 589
    return-void

    .line 582
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/MMActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 585
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/mm/ui/MMActivity;->IX()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/MMActivity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method public final s(Ljava/lang/Runnable;)V
    .locals 2
    .parameter

    .prologue
    .line 1286
    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->ha:Landroid/support/v7/app/ActionBar;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 1303
    :cond_0
    :goto_0
    return-void

    .line 1290
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->ha:Landroid/support/v7/app/ActionBar;

    sget v1, Lcom/tencent/mm/k;->baK:I

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setCustomView(I)V

    .line 1291
    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->ha:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->aU()V

    .line 1292
    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->ha:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/ui/bh;

    invoke-direct {v1, p0, p1}, Lcom/tencent/mm/ui/bh;-><init>(Lcom/tencent/mm/ui/MMActivity;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public final v(ILjava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1265
    invoke-direct {p0, p1}, Lcom/tencent/mm/ui/MMActivity;->mF(I)Lcom/tencent/mm/ui/bs;

    move-result-object v0

    .line 1266
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-static {p2, v1}, Lcom/tencent/mm/sdk/platformtools/cj;->R(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/tencent/mm/ui/bs;->text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1267
    iput-object p2, v0, Lcom/tencent/mm/ui/bs;->text:Ljava/lang/String;

    .line 1268
    invoke-virtual {p0}, Lcom/tencent/mm/ui/MMActivity;->u()V

    .line 1270
    :cond_0
    return-void
.end method

.method public vT(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 1012
    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->ha:Landroid/support/v7/app/ActionBar;

    if-nez v0, :cond_0

    .line 1017
    :goto_0
    return-void

    .line 1015
    :cond_0
    iput-object p1, p0, Lcom/tencent/mm/ui/MMActivity;->gmY:Ljava/lang/String;

    .line 1016
    invoke-direct {p0}, Lcom/tencent/mm/ui/MMActivity;->aFb()V

    goto :goto_0
.end method

.method public final vU(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 1024
    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->ha:Landroid/support/v7/app/ActionBar;

    if-nez v0, :cond_0

    .line 1028
    :goto_0
    return-void

    .line 1027
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->ha:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
