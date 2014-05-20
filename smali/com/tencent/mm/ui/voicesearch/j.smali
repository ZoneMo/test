.class public final Lcom/tencent/mm/ui/voicesearch/j;
.super Lcom/tencent/mm/ui/bc;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/n/m;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "DefaultLocale"
    }
.end annotation


# instance fields
.field private bLY:I

.field private cIr:Landroid/app/ProgressDialog;

.field private cKz:Ljava/util/List;

.field private che:Ljava/util/LinkedList;

.field private context:Landroid/content/Context;

.field private cqO:Lcom/tencent/mm/ui/applet/b;

.field private cqP:Lcom/tencent/mm/ui/applet/f;

.field private dKG:Ljava/lang/String;

.field private gKD:[Ljava/lang/String;

.field private htE:Ljava/lang/String;

.field private htF:Z

.field private htG:Lcom/tencent/mm/storage/i;

.field private htH:Z

.field private htI:Z

.field private htJ:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 99
    new-instance v0, Lcom/tencent/mm/storage/i;

    invoke-direct {v0}, Lcom/tencent/mm/storage/i;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/tencent/mm/ui/bc;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    .line 61
    iput-boolean v3, p0, Lcom/tencent/mm/ui/voicesearch/j;->htF:Z

    .line 62
    iput-object v2, p0, Lcom/tencent/mm/ui/voicesearch/j;->htG:Lcom/tencent/mm/storage/i;

    .line 64
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/voicesearch/j;->che:Ljava/util/LinkedList;

    .line 66
    iput-object v2, p0, Lcom/tencent/mm/ui/voicesearch/j;->cKz:Ljava/util/List;

    .line 67
    iput-boolean v1, p0, Lcom/tencent/mm/ui/voicesearch/j;->htH:Z

    .line 68
    iput-object v2, p0, Lcom/tencent/mm/ui/voicesearch/j;->cIr:Landroid/app/ProgressDialog;

    .line 69
    iput-boolean v3, p0, Lcom/tencent/mm/ui/voicesearch/j;->htI:Z

    .line 77
    iput v1, p0, Lcom/tencent/mm/ui/voicesearch/j;->bLY:I

    .line 81
    new-instance v0, Lcom/tencent/mm/ui/applet/b;

    new-instance v1, Lcom/tencent/mm/ui/voicesearch/k;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/voicesearch/k;-><init>(Lcom/tencent/mm/ui/voicesearch/j;)V

    invoke-direct {v0, v1}, Lcom/tencent/mm/ui/applet/b;-><init>(Lcom/tencent/mm/ui/applet/e;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/voicesearch/j;->cqO:Lcom/tencent/mm/ui/applet/b;

    .line 88
    iput-object v2, p0, Lcom/tencent/mm/ui/voicesearch/j;->cqP:Lcom/tencent/mm/ui/applet/f;

    .line 89
    iput-boolean v3, p0, Lcom/tencent/mm/ui/voicesearch/j;->htJ:Z

    .line 100
    iput-object p1, p0, Lcom/tencent/mm/ui/voicesearch/j;->context:Landroid/content/Context;

    .line 101
    new-instance v0, Lcom/tencent/mm/storage/i;

    invoke-direct {v0}, Lcom/tencent/mm/storage/i;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/voicesearch/j;->htG:Lcom/tencent/mm/storage/i;

    iget-object v0, p0, Lcom/tencent/mm/ui/voicesearch/j;->htG:Lcom/tencent/mm/storage/i;

    const-string v1, "_find_more_public_contact_"

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/i;->setUsername(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/voicesearch/j;->htG:Lcom/tencent/mm/storage/i;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->qP()V

    const-string v0, "@micromsg.with.all.biz.qq.com"

    iput-object v0, p0, Lcom/tencent/mm/ui/voicesearch/j;->dKG:Ljava/lang/String;

    .line 103
    iput p2, p0, Lcom/tencent/mm/ui/voicesearch/j;->bLY:I

    .line 104
    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/voicesearch/j;Ljava/util/LinkedList;)Ljava/util/LinkedList;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/tencent/mm/ui/voicesearch/j;->che:Ljava/util/LinkedList;

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/mm/ui/voicesearch/j;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/tencent/mm/ui/voicesearch/j;->cKz:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/mm/ui/voicesearch/j;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/tencent/mm/ui/voicesearch/j;->cKz:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/mm/ui/voicesearch/j;Landroid/database/Cursor;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lcom/tencent/mm/ui/voicesearch/j;->setCursor(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/voicesearch/j;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/tencent/mm/ui/voicesearch/j;->htF:Z

    return p1
.end method

.method static synthetic b(Lcom/tencent/mm/ui/voicesearch/j;)Lcom/tencent/mm/storage/i;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/tencent/mm/ui/voicesearch/j;->htG:Lcom/tencent/mm/storage/i;

    return-object v0
.end method

.method static synthetic b(Lcom/tencent/mm/ui/voicesearch/j;Landroid/database/Cursor;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lcom/tencent/mm/ui/voicesearch/j;->setCursor(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic b(Lcom/tencent/mm/ui/voicesearch/j;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/tencent/mm/ui/voicesearch/j;->htH:Z

    return p1
.end method

.method static synthetic c(Lcom/tencent/mm/ui/voicesearch/j;Landroid/database/Cursor;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lcom/tencent/mm/ui/voicesearch/j;->setCursor(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic c(Lcom/tencent/mm/ui/voicesearch/j;)Z
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/tencent/mm/ui/voicesearch/j;->htH:Z

    return v0
.end method

.method static synthetic d(Lcom/tencent/mm/ui/voicesearch/j;Landroid/database/Cursor;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lcom/tencent/mm/ui/voicesearch/j;->setCursor(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic d(Lcom/tencent/mm/ui/voicesearch/j;)Z
    .locals 1
    .parameter

    .prologue
    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/ui/voicesearch/j;->htJ:Z

    return v0
.end method

.method static synthetic e(Lcom/tencent/mm/ui/voicesearch/j;)I
    .locals 1
    .parameter

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/tencent/mm/ui/voicesearch/j;->aEK()I

    move-result v0

    return v0
.end method

.method static synthetic e(Lcom/tencent/mm/ui/voicesearch/j;Landroid/database/Cursor;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lcom/tencent/mm/ui/voicesearch/j;->setCursor(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic f(Lcom/tencent/mm/ui/voicesearch/j;)Ljava/util/LinkedList;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/tencent/mm/ui/voicesearch/j;->che:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic g(Lcom/tencent/mm/ui/voicesearch/j;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/tencent/mm/ui/voicesearch/j;->gKD:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/tencent/mm/ui/voicesearch/j;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/tencent/mm/ui/voicesearch/j;->dKG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcom/tencent/mm/ui/voicesearch/j;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/tencent/mm/ui/voicesearch/j;->htE:Ljava/lang/String;

    return-object v0
.end method

.method private v(Ljava/lang/Runnable;)V
    .locals 2
    .parameter

    .prologue
    .line 792
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 793
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 794
    invoke-virtual {p0}, Lcom/tencent/mm/ui/voicesearch/j;->notifyDataSetChanged()V

    .line 806
    :goto_0
    return-void

    .line 797
    :cond_0
    new-instance v0, Lcom/tencent/mm/ui/voicesearch/n;

    invoke-direct {v0, p0, p1}, Lcom/tencent/mm/ui/voicesearch/n;-><init>(Lcom/tencent/mm/ui/voicesearch/j;Ljava/lang/Runnable;)V

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/an;->i(Ljava/lang/Runnable;)V

    goto :goto_0
.end method


# virtual methods
.method public final FZ()V
    .locals 1

    .prologue
    .line 540
    new-instance v0, Lcom/tencent/mm/ui/voicesearch/s;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/voicesearch/s;-><init>(Lcom/tencent/mm/ui/voicesearch/j;)V

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/voicesearch/j;->v(Ljava/lang/Runnable;)V

    .line 596
    return-void
.end method

.method protected final Ga()V
    .locals 0

    .prologue
    .line 600
    invoke-virtual {p0}, Lcom/tencent/mm/ui/voicesearch/j;->closeCursor()V

    .line 601
    invoke-virtual {p0}, Lcom/tencent/mm/ui/voicesearch/j;->FZ()V

    .line 602
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 52
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v0

    invoke-static {p2}, Lcom/tencent/mm/storage/i;->f(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/k;->tI(Ljava/lang/String;)Lcom/tencent/mm/storage/i;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/mm/storage/i;

    invoke-direct {v0}, Lcom/tencent/mm/storage/i;-><init>()V

    invoke-virtual {v0, p2}, Lcom/tencent/mm/storage/i;->convertFrom(Landroid/database/Cursor;)V

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/storage/k;->y(Lcom/tencent/mm/storage/i;)V

    :cond_0
    return-object v0
.end method

.method public final a(IILjava/lang/String;Lcom/tencent/mm/n/x;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 691
    const-string v0, "MicroMsg.SearchResultAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSceneEnd: errType = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " errCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " errMsg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    invoke-virtual {p4}, Lcom/tencent/mm/n/x;->getType()I

    move-result v0

    const/16 v1, 0x6a

    if-eq v0, v1, :cond_0

    .line 694
    const-string v0, "MicroMsg.SearchResultAdapter"

    const-string v1, "error type"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    :goto_0
    return-void

    .line 697
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/voicesearch/j;->cIr:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 698
    iget-object v0, p0, Lcom/tencent/mm/ui/voicesearch/j;->cIr:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 699
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/voicesearch/j;->cIr:Landroid/app/ProgressDialog;

    .line 702
    :cond_1
    iput-boolean v3, p0, Lcom/tencent/mm/ui/voicesearch/j;->htJ:Z

    .line 703
    iget-object v0, p0, Lcom/tencent/mm/ui/voicesearch/j;->context:Landroid/content/Context;

    const/4 v1, 0x7

    invoke-static {v0, p1, p2, v1}, Lcom/tencent/mm/ui/cx;->a(Landroid/content/Context;III)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 704
    iput-boolean v3, p0, Lcom/tencent/mm/ui/voicesearch/j;->htH:Z

    goto :goto_0

    .line 708
    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    const/4 v0, -0x4

    if-ne p2, v0, :cond_3

    .line 709
    new-instance v0, Lcom/tencent/mm/ui/voicesearch/u;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/voicesearch/u;-><init>(Lcom/tencent/mm/ui/voicesearch/j;)V

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/voicesearch/j;->v(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 719
    :cond_3
    if-nez p1, :cond_4

    if-eqz p2, :cond_5

    .line 720
    :cond_4
    new-instance v0, Lcom/tencent/mm/ui/voicesearch/l;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/voicesearch/l;-><init>(Lcom/tencent/mm/ui/voicesearch/j;)V

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/voicesearch/j;->v(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 731
    :cond_5
    new-instance v0, Lcom/tencent/mm/ui/voicesearch/m;

    invoke-direct {v0, p0, p4}, Lcom/tencent/mm/ui/voicesearch/m;-><init>(Lcom/tencent/mm/ui/voicesearch/j;Lcom/tencent/mm/n/x;)V

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/voicesearch/j;->v(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final aB(Ljava/util/List;)V
    .locals 1
    .parameter

    .prologue
    .line 114
    new-instance v0, Lcom/tencent/mm/ui/voicesearch/o;

    invoke-direct {v0, p0, p1}, Lcom/tencent/mm/ui/voicesearch/o;-><init>(Lcom/tencent/mm/ui/voicesearch/j;Ljava/util/List;)V

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/voicesearch/j;->v(Ljava/lang/Runnable;)V

    .line 128
    return-void
.end method

.method public final aG(Ljava/util/List;)V
    .locals 1
    .parameter

    .prologue
    .line 637
    if-eqz p1, :cond_0

    .line 638
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/mm/ui/voicesearch/j;->gKD:[Ljava/lang/String;

    .line 641
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/voicesearch/j;->htE:Ljava/lang/String;

    .line 642
    invoke-virtual {p0}, Lcom/tencent/mm/ui/voicesearch/j;->closeCursor()V

    .line 643
    invoke-virtual {p0}, Lcom/tencent/mm/ui/voicesearch/j;->FZ()V

    .line 644
    return-void
.end method

.method public final aPm()Z
    .locals 1

    .prologue
    .line 151
    iget-boolean v0, p0, Lcom/tencent/mm/ui/voicesearch/j;->htI:Z

    return v0
.end method

.method protected final aiD()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 171
    iget-boolean v1, p0, Lcom/tencent/mm/ui/voicesearch/j;->htF:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/mm/ui/voicesearch/j;->htG:Lcom/tencent/mm/storage/i;

    invoke-virtual {v1}, Lcom/tencent/mm/storage/i;->isHidden()Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    add-int/lit8 v0, v0, 0x1

    :cond_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/voicesearch/j;->che:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public final detach()V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/tencent/mm/ui/voicesearch/j;->cqO:Lcom/tencent/mm/ui/applet/b;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/tencent/mm/ui/voicesearch/j;->cqO:Lcom/tencent/mm/ui/applet/b;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/applet/b;->detach()V

    .line 146
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/voicesearch/j;->cqO:Lcom/tencent/mm/ui/applet/b;

    .line 148
    :cond_0
    return-void
.end method

.method public final eA(Z)V
    .locals 1
    .parameter

    .prologue
    .line 131
    iput-boolean p1, p0, Lcom/tencent/mm/ui/voicesearch/j;->htI:Z

    .line 132
    if-eqz p1, :cond_0

    .line 133
    iget-object v0, p0, Lcom/tencent/mm/ui/voicesearch/j;->htG:Lcom/tencent/mm/storage/i;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->qP()V

    .line 135
    :cond_0
    return-void
.end method

.method public final eB(Z)V
    .locals 1
    .parameter

    .prologue
    .line 191
    new-instance v0, Lcom/tencent/mm/ui/voicesearch/p;

    invoke-direct {v0, p0, p1}, Lcom/tencent/mm/ui/voicesearch/p;-><init>(Lcom/tencent/mm/ui/voicesearch/j;Z)V

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/voicesearch/j;->v(Ljava/lang/Runnable;)V

    .line 198
    return-void
.end method

.method public final synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/tencent/mm/ui/voicesearch/j;->oD(I)Lcom/tencent/mm/storage/i;

    move-result-object v0

    return-object v0
.end method

.method public final getItemViewType(I)I
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x2

    .line 162
    iget v1, p0, Lcom/tencent/mm/ui/voicesearch/j;->bLY:I

    if-ne v1, v0, :cond_0

    .line 166
    :goto_0
    return v0

    .line 165
    :cond_0
    invoke-virtual {p0, p1}, Lcom/tencent/mm/ui/voicesearch/j;->oE(I)Z

    move-result v0

    .line 166
    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const v3, 0x7f0c0100

    const v5, 0x7f0a0083

    const/16 v7, 0x8

    const/4 v2, 0x0

    .line 265
    invoke-virtual {p0, p1}, Lcom/tencent/mm/ui/voicesearch/j;->mz(I)Z

    move-result v0

    .line 268
    invoke-virtual {p0, p1}, Lcom/tencent/mm/ui/voicesearch/j;->oE(I)Z

    move-result v4

    .line 271
    iget-boolean v1, p0, Lcom/tencent/mm/ui/voicesearch/j;->htF:Z

    if-eqz v1, :cond_c

    if-eqz v0, :cond_c

    .line 273
    if-eqz p2, :cond_0

    .line 274
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/voicesearch/v;

    .line 275
    if-eqz v4, :cond_0

    iget-object v0, v0, Lcom/tencent/mm/ui/voicesearch/v;->htM:Landroid/widget/ProgressBar;

    if-nez v0, :cond_0

    move-object p2, v2

    .line 277
    :cond_0
    if-nez p2, :cond_4

    .line 282
    if-eqz v4, :cond_3

    .line 283
    iget-object v0, p0, Lcom/tencent/mm/ui/voicesearch/j;->context:Landroid/content/Context;

    const v1, 0x7f0300b3

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 284
    new-instance v1, Lcom/tencent/mm/ui/voicesearch/v;

    invoke-direct {v1}, Lcom/tencent/mm/ui/voicesearch/v;-><init>()V

    .line 285
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/tencent/mm/ui/voicesearch/v;->cMU:Landroid/widget/TextView;

    .line 287
    const v0, 0x7f0a0251

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, v1, Lcom/tencent/mm/ui/voicesearch/v;->htM:Landroid/widget/ProgressBar;

    .line 288
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 307
    :goto_0
    if-nez v4, :cond_8

    .line 309
    iget-object v0, p0, Lcom/tencent/mm/ui/voicesearch/j;->cqP:Lcom/tencent/mm/ui/applet/f;

    if-nez v0, :cond_1

    .line 310
    new-instance v0, Lcom/tencent/mm/ui/voicesearch/r;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/voicesearch/r;-><init>(Lcom/tencent/mm/ui/voicesearch/j;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/voicesearch/j;->cqP:Lcom/tencent/mm/ui/applet/f;

    .line 331
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/voicesearch/j;->cqO:Lcom/tencent/mm/ui/applet/b;

    if-eqz v0, :cond_2

    .line 332
    iget-object v0, p0, Lcom/tencent/mm/ui/voicesearch/j;->cqO:Lcom/tencent/mm/ui/applet/b;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/voicesearch/j;->aEK()I

    move-result v2

    sub-int v2, p1, v2

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lcom/tencent/mm/ui/voicesearch/j;->cqP:Lcom/tencent/mm/ui/applet/f;

    invoke-virtual {v0, v2, v3}, Lcom/tencent/mm/ui/applet/b;->a(ILcom/tencent/mm/ui/applet/f;)V

    .line 334
    :cond_2
    invoke-virtual {p0, p1}, Lcom/tencent/mm/ui/voicesearch/j;->oC(I)Lcom/tencent/mm/protocal/a/sh;

    move-result-object v2

    .line 335
    iget-object v0, v1, Lcom/tencent/mm/ui/voicesearch/v;->cMT:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 336
    if-nez v2, :cond_5

    .line 516
    :goto_1
    return-object p2

    .line 291
    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/ui/voicesearch/j;->context:Landroid/content/Context;

    const v1, 0x7f0300b9

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 292
    new-instance v1, Lcom/tencent/mm/ui/voicesearch/v;

    invoke-direct {v1}, Lcom/tencent/mm/ui/voicesearch/v;-><init>()V

    .line 293
    const v0, 0x7f0a0078

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/tencent/mm/ui/voicesearch/v;->cMT:Landroid/widget/TextView;

    .line 294
    const v0, 0x7f0a007b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/base/MaskLayout;

    iput-object v0, v1, Lcom/tencent/mm/ui/voicesearch/v;->cTU:Lcom/tencent/mm/ui/base/MaskLayout;

    .line 295
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/tencent/mm/ui/voicesearch/v;->cMU:Landroid/widget/TextView;

    .line 296
    const v0, 0x7f0a0080

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v1, Lcom/tencent/mm/ui/voicesearch/v;->cMW:Landroid/widget/CheckBox;

    .line 297
    const v0, 0x7f0a0084

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/tencent/mm/ui/voicesearch/v;->dKL:Landroid/widget/TextView;

    .line 300
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 304
    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/voicesearch/v;

    move-object v1, v0

    goto :goto_0

    .line 339
    :cond_5
    iget-object v0, v1, Lcom/tencent/mm/ui/voicesearch/v;->dKL:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 342
    iget-object v0, v1, Lcom/tencent/mm/ui/voicesearch/v;->cTU:Lcom/tencent/mm/ui/base/MaskLayout;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/MaskLayout;->getContentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 344
    iget-object v3, v2, Lcom/tencent/mm/protocal/a/sh;->fEI:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v3}, Lcom/tencent/mm/protocal/a/rw;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/tencent/mm/pluginsdk/ui/c;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 347
    iget v0, v2, Lcom/tencent/mm/protocal/a/sh;->fNp:I

    if-eqz v0, :cond_7

    .line 348
    invoke-static {}, Lcom/tencent/mm/model/ar;->ub()Lcom/tencent/mm/model/av;

    move-result-object v0

    iget v3, v2, Lcom/tencent/mm/protocal/a/sh;->fNp:I

    invoke-interface {v0, v3}, Lcom/tencent/mm/model/av;->cq(I)Ljava/lang/String;

    move-result-object v0

    .line 350
    if-eqz v0, :cond_6

    .line 351
    invoke-static {v0}, Lcom/tencent/mm/p/u;->eN(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 352
    iget-object v3, v1, Lcom/tencent/mm/ui/voicesearch/v;->cTU:Lcom/tencent/mm/ui/base/MaskLayout;

    sget-object v4, Lcom/tencent/mm/ui/base/dv;->gCR:Lcom/tencent/mm/ui/base/dv;

    invoke-virtual {v3, v0, v4}, Lcom/tencent/mm/ui/base/MaskLayout;->a(Landroid/graphics/Bitmap;Lcom/tencent/mm/ui/base/dv;)V

    .line 376
    :goto_2
    iget-object v0, v2, Lcom/tencent/mm/protocal/a/sh;->fNa:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/a/rw;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 378
    :try_start_0
    iget-object v2, v1, Lcom/tencent/mm/ui/voicesearch/v;->cMU:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/tencent/mm/ui/voicesearch/v;->cMU:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/tencent/mm/ui/voicesearch/j;->context:Landroid/content/Context;

    iget-object v4, v1, Lcom/tencent/mm/ui/voicesearch/v;->cMU:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getTextSize()F

    move-result v4

    float-to-int v4, v4

    invoke-static {v3, v0, v4}, Lcom/tencent/mm/ao/b;->e(Landroid/content/Context;Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 381
    :catch_0
    move-exception v0

    iget-object v0, v1, Lcom/tencent/mm/ui/voicesearch/v;->cMU:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 354
    :cond_6
    iget-object v0, v1, Lcom/tencent/mm/ui/voicesearch/v;->cTU:Lcom/tencent/mm/ui/base/MaskLayout;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/MaskLayout;->aHz()V

    goto :goto_2

    .line 357
    :cond_7
    iget-object v0, v1, Lcom/tencent/mm/ui/voicesearch/v;->cTU:Lcom/tencent/mm/ui/base/MaskLayout;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/MaskLayout;->aHz()V

    goto :goto_2

    .line 388
    :cond_8
    iget-boolean v0, p0, Lcom/tencent/mm/ui/voicesearch/j;->htJ:Z

    if-eqz v0, :cond_a

    .line 389
    iget-object v0, v1, Lcom/tencent/mm/ui/voicesearch/v;->htM:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 395
    :goto_3
    const-string v0, "MicroMsg.SearchResultAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "refresh  "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/tencent/mm/ui/voicesearch/j;->htH:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    iget-object v0, p0, Lcom/tencent/mm/ui/voicesearch/j;->che:Ljava/util/LinkedList;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/tencent/mm/ui/voicesearch/j;->che:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_b

    :cond_9
    iget-boolean v0, p0, Lcom/tencent/mm/ui/voicesearch/j;->htH:Z

    if-nez v0, :cond_b

    .line 398
    iget-object v0, v1, Lcom/tencent/mm/ui/voicesearch/v;->cMU:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/tencent/mm/ui/voicesearch/j;->context:Landroid/content/Context;

    const v3, 0x7f0703fd

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 399
    iget-object v0, v1, Lcom/tencent/mm/ui/voicesearch/v;->cMU:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/mm/ui/voicesearch/j;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c000e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    .line 392
    :cond_a
    iget-object v0, v1, Lcom/tencent/mm/ui/voicesearch/v;->htM:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_3

    .line 412
    :cond_b
    iget-object v0, v1, Lcom/tencent/mm/ui/voicesearch/v;->cMU:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/tencent/mm/ui/voicesearch/j;->context:Landroid/content/Context;

    const v4, 0x7f0703fc

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 413
    iget-object v0, v1, Lcom/tencent/mm/ui/voicesearch/v;->cMU:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/mm/ui/voicesearch/j;->context:Landroid/content/Context;

    invoke-static {v1, v3}, Lcom/tencent/mm/an/a;->j(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_1

    .line 422
    :cond_c
    iget v0, p0, Lcom/tencent/mm/ui/voicesearch/j;->bLY:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_e

    .line 424
    if-nez p2, :cond_d

    .line 425
    iget-object v0, p0, Lcom/tencent/mm/ui/voicesearch/j;->context:Landroid/content/Context;

    const v1, 0x7f03030a

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 426
    new-instance v1, Lcom/tencent/mm/ui/voicesearch/v;

    invoke-direct {v1}, Lcom/tencent/mm/ui/voicesearch/v;-><init>()V

    .line 427
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/tencent/mm/ui/voicesearch/v;->cMU:Landroid/widget/TextView;

    .line 428
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v1

    .line 433
    :goto_4
    invoke-virtual {p0, p1}, Lcom/tencent/mm/ui/voicesearch/j;->oD(I)Lcom/tencent/mm/storage/i;

    move-result-object v1

    .line 434
    iget-object v4, v0, Lcom/tencent/mm/ui/voicesearch/v;->cMU:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/tencent/mm/ui/voicesearch/j;->context:Landroid/content/Context;

    invoke-static {v5, v3}, Lcom/tencent/mm/an/a;->j(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 436
    :try_start_1
    iget-object v3, p0, Lcom/tencent/mm/ui/voicesearch/j;->context:Landroid/content/Context;

    const v4, 0x7f070412

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v1}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/tencent/mm/model/w;->a(Lcom/tencent/mm/storage/i;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 437
    iget-object v3, v0, Lcom/tencent/mm/ui/voicesearch/v;->cMU:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/tencent/mm/ui/voicesearch/v;->cMU:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/tencent/mm/ui/voicesearch/j;->context:Landroid/content/Context;

    iget-object v5, v0, Lcom/tencent/mm/ui/voicesearch/v;->cMU:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getTextSize()F

    move-result v5

    float-to-int v5, v5

    invoke-static {v4, v1, v5}, Lcom/tencent/mm/ao/b;->e(Landroid/content/Context;Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 442
    :goto_5
    iget-object v0, v0, Lcom/tencent/mm/ui/voicesearch/v;->cMU:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 430
    :cond_d
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/voicesearch/v;

    goto :goto_4

    .line 439
    :catch_1
    move-exception v1

    .line 440
    iget-object v1, v0, Lcom/tencent/mm/ui/voicesearch/v;->cMU:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 448
    :cond_e
    if-eqz p2, :cond_15

    .line 449
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/voicesearch/v;

    .line 450
    if-nez v0, :cond_14

    move-object v1, v2

    .line 455
    :goto_6
    if-nez v1, :cond_13

    .line 456
    iget-object v0, p0, Lcom/tencent/mm/ui/voicesearch/j;->context:Landroid/content/Context;

    const v1, 0x7f0300b9

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 457
    new-instance v1, Lcom/tencent/mm/ui/voicesearch/v;

    invoke-direct {v1}, Lcom/tencent/mm/ui/voicesearch/v;-><init>()V

    .line 458
    const v0, 0x7f0a0078

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/tencent/mm/ui/voicesearch/v;->cMT:Landroid/widget/TextView;

    .line 459
    const v0, 0x7f0a007b

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/base/MaskLayout;

    iput-object v0, v1, Lcom/tencent/mm/ui/voicesearch/v;->cTU:Lcom/tencent/mm/ui/base/MaskLayout;

    .line 460
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/tencent/mm/ui/voicesearch/v;->cMU:Landroid/widget/TextView;

    .line 461
    const v0, 0x7f0a0080

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v1, Lcom/tencent/mm/ui/voicesearch/v;->cMW:Landroid/widget/CheckBox;

    .line 462
    const v0, 0x7f0a0084

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/tencent/mm/ui/voicesearch/v;->dKL:Landroid/widget/TextView;

    .line 465
    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 469
    :goto_7
    invoke-virtual {p0, p1}, Lcom/tencent/mm/ui/voicesearch/j;->oD(I)Lcom/tencent/mm/storage/i;

    move-result-object v4

    .line 470
    iget-object v0, v1, Lcom/tencent/mm/ui/voicesearch/v;->cMT:Landroid/widget/TextView;

    if-eqz v0, :cond_f

    .line 471
    iget-object v0, v1, Lcom/tencent/mm/ui/voicesearch/v;->cMT:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 474
    :cond_f
    iget-object v5, v1, Lcom/tencent/mm/ui/voicesearch/v;->cMU:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/tencent/mm/ui/voicesearch/j;->context:Landroid/content/Context;

    invoke-virtual {v4}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/model/w;->db(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    move v0, v3

    :goto_8
    invoke-static {v6, v0}, Lcom/tencent/mm/an/a;->j(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 476
    iget-object v0, v1, Lcom/tencent/mm/ui/voicesearch/v;->cTU:Lcom/tencent/mm/ui/base/MaskLayout;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/MaskLayout;->getContentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 478
    invoke-virtual {v4}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/tencent/mm/pluginsdk/ui/c;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 479
    iget-object v0, v1, Lcom/tencent/mm/ui/voicesearch/v;->dKL:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 481
    invoke-virtual {v4}, Lcom/tencent/mm/storage/i;->rJ()I

    move-result v0

    if-eqz v0, :cond_12

    .line 482
    invoke-static {}, Lcom/tencent/mm/model/ar;->ub()Lcom/tencent/mm/model/av;

    move-result-object v0

    invoke-virtual {v4}, Lcom/tencent/mm/storage/i;->rJ()I

    move-result v3

    invoke-interface {v0, v3}, Lcom/tencent/mm/model/av;->cq(I)Ljava/lang/String;

    move-result-object v0

    .line 484
    if-eqz v0, :cond_11

    .line 485
    invoke-static {v0}, Lcom/tencent/mm/p/u;->eN(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 486
    iget-object v3, v1, Lcom/tencent/mm/ui/voicesearch/v;->cTU:Lcom/tencent/mm/ui/base/MaskLayout;

    sget-object v5, Lcom/tencent/mm/ui/base/dv;->gCR:Lcom/tencent/mm/ui/base/dv;

    invoke-virtual {v3, v0, v5}, Lcom/tencent/mm/ui/base/MaskLayout;->a(Landroid/graphics/Bitmap;Lcom/tencent/mm/ui/base/dv;)V

    .line 510
    :goto_9
    :try_start_2
    iget-object v0, v1, Lcom/tencent/mm/ui/voicesearch/v;->cMU:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/tencent/mm/ui/voicesearch/v;->cMU:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/tencent/mm/ui/voicesearch/j;->context:Landroid/content/Context;

    invoke-virtual {v4}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/mm/model/w;->a(Lcom/tencent/mm/storage/i;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Lcom/tencent/mm/ui/voicesearch/v;->cMU:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getTextSize()F

    move-result v5

    float-to-int v5, v5

    invoke-static {v3, v4, v5}, Lcom/tencent/mm/ao/b;->e(Landroid/content/Context;Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_a
    move-object p2, v2

    .line 516
    goto/16 :goto_1

    .line 474
    :cond_10
    const v0, 0x7f0c0102

    goto :goto_8

    .line 488
    :cond_11
    iget-object v0, v1, Lcom/tencent/mm/ui/voicesearch/v;->cTU:Lcom/tencent/mm/ui/base/MaskLayout;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/MaskLayout;->aHz()V

    goto :goto_9

    .line 491
    :cond_12
    iget-object v0, v1, Lcom/tencent/mm/ui/voicesearch/v;->cTU:Lcom/tencent/mm/ui/base/MaskLayout;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/MaskLayout;->aHz()V

    goto :goto_9

    .line 513
    :catch_2
    move-exception v0

    iget-object v0, v1, Lcom/tencent/mm/ui/voicesearch/v;->cMU:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a

    :cond_13
    move-object v2, v1

    move-object v1, v0

    goto/16 :goto_7

    :cond_14
    move-object v1, p2

    goto/16 :goto_6

    :cond_15
    move-object v0, v2

    move-object v1, p2

    goto/16 :goto_6
.end method

.method public final getViewTypeCount()I
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x3

    return v0
.end method

.method public final ih(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 647
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%@micromsg.with.all.biz.qq.com"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string v1, "MicroMsg.SearchResultAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "translateQueryText ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/tencent/mm/ui/voicesearch/j;->htE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 649
    new-instance v1, Lcom/tencent/mm/ui/voicesearch/t;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/voicesearch/t;-><init>(Lcom/tencent/mm/ui/voicesearch/j;)V

    invoke-direct {p0, v1}, Lcom/tencent/mm/ui/voicesearch/j;->v(Ljava/lang/Runnable;)V

    .line 657
    :cond_1
    iput-object v0, p0, Lcom/tencent/mm/ui/voicesearch/j;->htE:Ljava/lang/String;

    .line 658
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/voicesearch/j;->gKD:[Ljava/lang/String;

    .line 659
    iget-object v0, p0, Lcom/tencent/mm/ui/voicesearch/j;->htE:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 660
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/ui/voicesearch/j;->htE:Ljava/lang/String;

    .line 662
    :cond_2
    invoke-virtual {p0}, Lcom/tencent/mm/ui/voicesearch/j;->closeCursor()V

    .line 663
    invoke-virtual {p0}, Lcom/tencent/mm/ui/voicesearch/j;->FZ()V

    .line 664
    return-void
.end method

.method public final isEnabled(I)Z
    .locals 1
    .parameter

    .prologue
    .line 256
    invoke-virtual {p0, p1}, Lcom/tencent/mm/ui/voicesearch/j;->oE(I)Z

    move-result v0

    .line 257
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/voicesearch/j;->che:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/voicesearch/j;->che:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/tencent/mm/ui/voicesearch/j;->htH:Z

    if-nez v0, :cond_1

    .line 258
    const/4 v0, 0x0

    .line 260
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final oC(I)Lcom/tencent/mm/protocal/a/sh;
    .locals 3
    .parameter

    .prologue
    .line 175
    :try_start_0
    const-string v0, "MicroMsg.SearchResultAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "position "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/voicesearch/j;->che:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tencent/mm/ui/voicesearch/j;->aEK()I

    move-result v2

    sub-int v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/tencent/mm/ui/voicesearch/j;->che:Ljava/util/LinkedList;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/voicesearch/j;->aEK()I

    move-result v1

    sub-int v1, p1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/a/sh;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final oD(I)Lcom/tencent/mm/storage/i;
    .locals 1
    .parameter

    .prologue
    .line 185
    invoke-virtual {p0, p1}, Lcom/tencent/mm/ui/voicesearch/j;->mz(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    invoke-virtual {p0}, Lcom/tencent/mm/ui/voicesearch/j;->aEL()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/storage/i;

    .line 188
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/tencent/mm/ui/bc;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/storage/i;

    goto :goto_0
.end method

.method public final oE(I)Z
    .locals 2
    .parameter

    .prologue
    .line 245
    iget-boolean v0, p0, Lcom/tencent/mm/ui/voicesearch/j;->htF:Z

    if-eqz v0, :cond_0

    .line 246
    invoke-virtual {p0}, Lcom/tencent/mm/ui/voicesearch/j;->aEK()I

    move-result v0

    .line 247
    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/mm/ui/voicesearch/j;->aiD()I

    move-result v1

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_0

    .line 248
    const/4 v0, 0x1

    .line 251
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onPause()V
    .locals 2

    .prologue
    .line 626
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0x6a

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/n/ac;->b(ILcom/tencent/mm/n/m;)V

    .line 627
    return-void
.end method

.method public final onResume()V
    .locals 2

    .prologue
    .line 620
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0x6a

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/n/ac;->a(ILcom/tencent/mm/n/m;)V

    .line 621
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 1
    .parameter

    .prologue
    .line 138
    iget-object v0, p0, Lcom/tencent/mm/ui/voicesearch/j;->cqO:Lcom/tencent/mm/ui/applet/b;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/tencent/mm/ui/voicesearch/j;->cqO:Lcom/tencent/mm/ui/applet/b;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/ui/applet/b;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 141
    :cond_0
    return-void
.end method

.method public final xY(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 213
    iput-object p1, p0, Lcom/tencent/mm/ui/voicesearch/j;->dKG:Ljava/lang/String;

    .line 214
    return-void
.end method

.method public final xZ(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 218
    new-instance v0, Lcom/tencent/mm/ui/voicesearch/q;

    invoke-direct {v0, p0, p1}, Lcom/tencent/mm/ui/voicesearch/q;-><init>(Lcom/tencent/mm/ui/voicesearch/j;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/voicesearch/j;->v(Ljava/lang/Runnable;)V

    .line 242
    return-void
.end method

.method public final ya(Ljava/lang/String;)Z
    .locals 2
    .parameter

    .prologue
    .line 810
    iget-object v0, p0, Lcom/tencent/mm/ui/voicesearch/j;->cKz:Ljava/util/List;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 811
    iget-object v0, p0, Lcom/tencent/mm/ui/voicesearch/j;->cKz:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 812
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 813
    const/4 v0, 0x0

    .line 817
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
