.class public final Lcom/tencent/mm/ui/contact/db;
.super Lcom/tencent/mm/ui/bc;
.source "SourceFile"


# static fields
.field public static final gSp:Landroid/content/res/ColorStateList;

.field public static final gSq:Landroid/content/res/ColorStateList;


# instance fields
.field private cIs:Ljava/lang/String;

.field protected cKz:Ljava/util/List;

.field protected cPN:Lcom/tencent/mm/ui/base/cz;

.field private cqO:Lcom/tencent/mm/ui/applet/b;

.field private cqP:Lcom/tencent/mm/ui/applet/f;

.field private dKE:I

.field private dKF:Ljava/util/List;

.field protected dKG:Ljava/lang/String;

.field protected dKH:[I

.field private dKI:[Ljava/lang/String;

.field private dKJ:Z

.field private dkP:Z

.field private gKD:[Ljava/lang/String;

.field protected gRX:Ljava/lang/String;

.field private gRY:Ljava/util/List;

.field private gRZ:I

.field private gSc:Z

.field private gSl:Ljava/lang/String;

.field private gSm:Ljava/util/LinkedList;

.field private gSn:Z

.field private gSs:Landroid/util/SparseArray;

.field protected gUH:Lcom/tencent/mm/ui/contact/SelectContactUI;

.field private gUI:Lcom/tencent/mm/ui/contact/de;

.field private gUJ:Z

.field private gUK:Z

.field private gUL:Z

.field private gUM:Z

.field private gUN:Landroid/util/SparseIntArray;

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 810
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0100

    invoke-static {v0, v1}, Lcom/tencent/mm/an/a;->j(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    sput-object v0, Lcom/tencent/mm/ui/contact/db;->gSp:Landroid/content/res/ColorStateList;

    .line 812
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c002e

    invoke-static {v0, v1}, Lcom/tencent/mm/an/a;->j(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    sput-object v0, Lcom/tencent/mm/ui/contact/db;->gSq:Landroid/content/res/ColorStateList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 149
    const/16 v4, 0x8

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/tencent/mm/ui/contact/db;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 150
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 153
    new-instance v0, Lcom/tencent/mm/storage/i;

    invoke-direct {v0}, Lcom/tencent/mm/storage/i;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/tencent/mm/ui/bc;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    .line 79
    iput-object v1, p0, Lcom/tencent/mm/ui/contact/db;->dKG:Ljava/lang/String;

    .line 80
    iput-object v1, p0, Lcom/tencent/mm/ui/contact/db;->gRX:Ljava/lang/String;

    .line 81
    iput-object v1, p0, Lcom/tencent/mm/ui/contact/db;->cKz:Ljava/util/List;

    .line 86
    iput v2, p0, Lcom/tencent/mm/ui/contact/db;->gRZ:I

    .line 88
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/db;->cIs:Ljava/lang/String;

    .line 89
    iput-object v1, p0, Lcom/tencent/mm/ui/contact/db;->gKD:[Ljava/lang/String;

    .line 97
    invoke-static {}, Lcom/tencent/mm/ui/base/MMSlideDelView;->aHp()Lcom/tencent/mm/ui/base/cz;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/db;->cPN:Lcom/tencent/mm/ui/base/cz;

    .line 101
    iput v2, p0, Lcom/tencent/mm/ui/contact/db;->dKE:I

    .line 103
    iput-boolean v3, p0, Lcom/tencent/mm/ui/contact/db;->dKJ:Z

    .line 108
    iput-object v1, p0, Lcom/tencent/mm/ui/contact/db;->cqO:Lcom/tencent/mm/ui/applet/b;

    .line 109
    iput-object v1, p0, Lcom/tencent/mm/ui/contact/db;->cqP:Lcom/tencent/mm/ui/applet/f;

    .line 111
    iput-boolean v2, p0, Lcom/tencent/mm/ui/contact/db;->dkP:Z

    .line 113
    iput-boolean v2, p0, Lcom/tencent/mm/ui/contact/db;->gSc:Z

    .line 119
    iput-boolean v3, p0, Lcom/tencent/mm/ui/contact/db;->gUK:Z

    .line 121
    iput-boolean v3, p0, Lcom/tencent/mm/ui/contact/db;->gUL:Z

    .line 122
    iput-boolean v3, p0, Lcom/tencent/mm/ui/contact/db;->gUM:Z

    .line 673
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/db;->gSm:Ljava/util/LinkedList;

    .line 922
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/db;->gSs:Landroid/util/SparseArray;

    .line 924
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/db;->gUN:Landroid/util/SparseIntArray;

    .line 155
    iput-object p1, p0, Lcom/tencent/mm/ui/contact/db;->context:Landroid/content/Context;

    .line 156
    iput-object p2, p0, Lcom/tencent/mm/ui/contact/db;->dKG:Ljava/lang/String;

    .line 157
    iput-object p3, p0, Lcom/tencent/mm/ui/contact/db;->gRX:Ljava/lang/String;

    .line 158
    iput p4, p0, Lcom/tencent/mm/ui/contact/db;->type:I

    .line 159
    iput-boolean p5, p0, Lcom/tencent/mm/ui/contact/db;->gSc:Z

    .line 160
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/db;->dKF:Ljava/util/List;

    .line 161
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/db;->gRY:Ljava/util/List;

    .line 162
    invoke-static {}, Lcom/tencent/mm/model/v;->th()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/db;->gSl:Ljava/lang/String;

    .line 163
    invoke-static {}, Lcom/tencent/mm/model/v;->ts()Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/contact/db;->gUJ:Z

    .line 164
    return-void
.end method

.method private a(Lcom/tencent/mm/storage/i;I)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 871
    iget v0, p0, Lcom/tencent/mm/ui/contact/db;->dKE:I

    if-ge p2, v0, :cond_0

    .line 872
    const/16 v0, 0x20

    .line 875
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/tencent/mm/storage/i;->rl()I

    move-result v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/tencent/mm/ui/contact/db;)Lcom/tencent/mm/ui/bd;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/db;->gmO:Lcom/tencent/mm/ui/bd;

    return-object v0
.end method

.method private aKn()Z
    .locals 2

    .prologue
    .line 552
    iget-boolean v0, p0, Lcom/tencent/mm/ui/contact/db;->gUL:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/db;->dKG:Ljava/lang/String;

    const-string v1, "@micromsg.qq.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/db;->dKG:Ljava/lang/String;

    const-string v1, "@all.contact.without.chatroom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/tencent/mm/ui/contact/db;)Lcom/tencent/mm/ui/bd;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/db;->gmO:Lcom/tencent/mm/ui/bd;

    return-object v0
.end method

.method private b(Lcom/tencent/mm/storage/i;I)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter

    .prologue
    const v2, 0x7f0703f4

    .line 879
    iget v0, p0, Lcom/tencent/mm/ui/contact/db;->dKE:I

    if-ge p2, v0, :cond_1

    .line 880
    invoke-direct {p0, v2}, Lcom/tencent/mm/ui/contact/db;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 909
    :cond_0
    :goto_0
    return-object v0

    .line 882
    :cond_1
    invoke-virtual {p1}, Lcom/tencent/mm/storage/i;->rl()I

    move-result v0

    const/16 v1, 0x1f

    if-ne v0, v1, :cond_2

    .line 886
    const-string v0, ""

    goto :goto_0

    .line 888
    :cond_2
    invoke-virtual {p1}, Lcom/tencent/mm/storage/i;->rl()I

    move-result v0

    const/16 v1, 0x7b

    if-ne v0, v1, :cond_3

    .line 889
    const-string v0, "#"

    goto :goto_0

    .line 891
    :cond_3
    invoke-virtual {p1}, Lcom/tencent/mm/storage/i;->rl()I

    move-result v0

    const/16 v1, 0x21

    if-ne v0, v1, :cond_4

    .line 892
    const v0, 0x7f0703f7

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/contact/db;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 894
    :cond_4
    invoke-virtual {p1}, Lcom/tencent/mm/storage/i;->rl()I

    move-result v0

    const/16 v1, 0x2b

    if-ne v0, v1, :cond_5

    .line 895
    const v0, 0x7f070942

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/contact/db;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 897
    :cond_5
    invoke-virtual {p1}, Lcom/tencent/mm/storage/i;->rl()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_6

    .line 898
    invoke-direct {p0, v2}, Lcom/tencent/mm/ui/contact/db;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 901
    :cond_6
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/db;->gSs:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/tencent/mm/storage/i;->rl()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 902
    if-nez v0, :cond_0

    .line 905
    invoke-virtual {p1}, Lcom/tencent/mm/storage/i;->rl()I

    move-result v0

    int-to-char v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    .line 906
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/db;->gSs:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/tencent/mm/storage/i;->rl()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private getString(I)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 914
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/db;->gSs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 915
    if-nez v0, :cond_0

    .line 916
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/db;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 917
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/db;->gSs:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 919
    :cond_0
    return-object v0
.end method

.method private wP(Ljava/lang/String;)Z
    .locals 8
    .parameter

    .prologue
    const v7, 0x7f0709bb

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 436
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    move v0, v2

    .line 459
    :goto_0
    return v0

    .line 439
    :cond_1
    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/contact/db;->dU(Z)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/model/w;->g(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 440
    const/4 v0, 0x0

    .line 441
    iget-object v3, p0, Lcom/tencent/mm/ui/contact/db;->dKF:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/contact/df;

    .line 443
    :cond_2
    if-eqz v0, :cond_3

    .line 446
    iget-object v3, p0, Lcom/tencent/mm/ui/contact/db;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/tencent/mm/ui/contact/db;->context:Landroid/content/Context;

    const v5, 0x7f070070

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v6

    invoke-virtual {v6}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v6

    iget-object v0, v0, Lcom/tencent/mm/ui/contact/df;->bPx:Ljava/lang/String;

    invoke-virtual {v6, v0}, Lcom/tencent/mm/storage/k;->tO(Ljava/lang/String;)Lcom/tencent/mm/storage/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->rr()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    invoke-virtual {v4, v5, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/db;->context:Landroid/content/Context;

    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v0, v2}, Lcom/tencent/mm/ui/base/h;->p(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mm/ui/base/x;

    :cond_3
    move v0, v1

    .line 448
    goto :goto_0

    .line 450
    :cond_4
    invoke-static {p1}, Lcom/tencent/mm/model/v;->cm(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/db;->dKF:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_5

    .line 451
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/db;->context:Landroid/content/Context;

    const v2, 0x7f07060f

    invoke-static {v0, v2, v7}, Lcom/tencent/mm/ui/base/h;->c(Landroid/content/Context;II)Lcom/tencent/mm/ui/base/x;

    move v0, v1

    .line 452
    goto :goto_0

    .line 454
    :cond_5
    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/contact/db;->dU(Z)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    invoke-static {p1}, Lcom/tencent/mm/model/w;->co(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {p1}, Lcom/tencent/mm/model/w;->cr(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 455
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/db;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/db;->context:Landroid/content/Context;

    const v3, 0x7f070975

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/ui/contact/db;->context:Landroid/content/Context;

    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/tencent/mm/ui/base/h;->p(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mm/ui/base/x;

    move v0, v1

    .line 456
    goto/16 :goto_0

    :cond_6
    move v0, v2

    .line 459
    goto/16 :goto_0
.end method

.method private wQ(Ljava/lang/String;)Lcom/tencent/mm/ui/contact/df;
    .locals 4
    .parameter

    .prologue
    .line 488
    const/4 v1, 0x0

    .line 489
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/db;->dKF:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/contact/df;

    .line 490
    iget-object v3, v0, Lcom/tencent/mm/ui/contact/df;->bPx:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    move-object v1, v0

    .line 493
    goto :goto_0

    .line 494
    :cond_0
    return-object v1

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method


# virtual methods
.method public final declared-synchronized FZ()V
    .locals 12

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 558
    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v2, v3, :cond_0

    move v7, v0

    .line 559
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 560
    iget v0, p0, Lcom/tencent/mm/ui/contact/db;->type:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 561
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sp()Lcom/tencent/mm/ap/i;

    move-result-object v1

    .line 562
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 563
    const-string v0, "select rcontact.*"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 564
    const-string v0, " from rconversation, rcontact"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 565
    const-string v0, " where rconversation.username=rcontact.username"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 566
    const-string v0, " and rcontact.verifyFlag&8==0"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    const-string v0, " and rcontact.username!=\'officialaccounts\'"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 568
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/db;->cKz:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 569
    const-string v4, " and rcontact.username!=\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 558
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    move v7, v1

    goto :goto_0

    .line 571
    :cond_1
    :try_start_1
    const-string v0, " order by rconversation.conversationTime desc"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 572
    const-string v0, "MicroMsg.AddressAdapter"

    const-string v3, "latest contact with conversation sql: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v0, v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 573
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/tencent/mm/ap/i;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 598
    :cond_2
    :goto_2
    if-eqz v7, :cond_9

    .line 599
    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/contact/db;->h(Landroid/database/Cursor;)V

    .line 609
    :goto_3
    const-string v0, "MicroMsg.AddressAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "kevin resetCursor"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v8

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 610
    monitor-exit p0

    return-void

    .line 575
    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/db;->gKD:[Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 576
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/db;->gKD:[Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/db;->dKG:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/mm/ui/contact/db;->gRX:Ljava/lang/String;

    iget-object v4, p0, Lcom/tencent/mm/ui/contact/db;->cKz:Ljava/util/List;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/tencent/mm/storage/k;->a([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Landroid/database/Cursor;

    move-result-object v0

    .line 577
    invoke-direct {p0}, Lcom/tencent/mm/ui/contact/db;->aKn()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 578
    const/4 v1, 0x0

    iput v1, p0, Lcom/tencent/mm/ui/contact/db;->dKE:I

    goto :goto_2

    .line 580
    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/db;->cIs:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/db;->cIs:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_8

    .line 581
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 582
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 583
    iget-boolean v0, p0, Lcom/tencent/mm/ui/contact/db;->gUM:Z

    if-eqz v0, :cond_6

    const-string v0, "@black.android"

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/db;->dKG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "@t.qq.com"

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/db;->dKG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 584
    const-string v0, "weixin"

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 586
    :cond_6
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/db;->dKG:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/db;->gRX:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/mm/ui/contact/db;->cKz:Ljava/util/List;

    invoke-direct {p0}, Lcom/tencent/mm/ui/contact/db;->aKn()Z

    move-result v5

    iget-boolean v6, p0, Lcom/tencent/mm/ui/contact/db;->gSc:Z

    invoke-virtual/range {v0 .. v6}, Lcom/tencent/mm/storage/k;->c(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;ZZ)Landroid/database/Cursor;

    move-result-object v0

    .line 587
    invoke-direct {p0}, Lcom/tencent/mm/ui/contact/db;->aKn()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 588
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/db;->cKz:Ljava/util/List;

    iget-boolean v3, p0, Lcom/tencent/mm/ui/contact/db;->gSc:Z

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mm/storage/k;->c(Ljava/util/List;Z)I

    move-result v1

    iput v1, p0, Lcom/tencent/mm/ui/contact/db;->dKE:I

    .line 590
    :cond_7
    const-string v1, "MicroMsg.AddressAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "kevin setCursor : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v10

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 592
    :cond_8
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/db;->cIs:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/db;->dKG:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/mm/ui/contact/db;->gRX:Ljava/lang/String;

    iget-object v4, p0, Lcom/tencent/mm/ui/contact/db;->cKz:Ljava/util/List;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/tencent/mm/storage/k;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Landroid/database/Cursor;

    move-result-object v0

    .line 593
    invoke-direct {p0}, Lcom/tencent/mm/ui/contact/db;->aKn()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 594
    const/4 v1, 0x0

    iput v1, p0, Lcom/tencent/mm/ui/contact/db;->dKE:I

    goto/16 :goto_2

    .line 601
    :cond_9
    new-instance v1, Lcom/tencent/mm/ui/contact/dc;

    invoke-direct {v1, p0, v0}, Lcom/tencent/mm/ui/contact/dc;-><init>(Lcom/tencent/mm/ui/contact/db;Landroid/database/Cursor;)V

    invoke-static {v1}, Lcom/tencent/mm/sdk/platformtools/an;->i(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_3
.end method

.method public final G(Lcom/tencent/mm/storage/i;)V
    .locals 3
    .parameter

    .prologue
    .line 311
    invoke-virtual {p1}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/contact/db;->wQ(Ljava/lang/String;)Lcom/tencent/mm/ui/contact/df;

    move-result-object v0

    .line 312
    if-nez v0, :cond_1

    .line 313
    invoke-virtual {p1}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tencent/mm/storage/i;->rr()Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/contact/db;->wP(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 322
    :goto_0
    return-void

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/db;->dKF:Ljava/util/List;

    new-instance v1, Lcom/tencent/mm/ui/contact/df;

    invoke-virtual {p1}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tencent/mm/ui/contact/df;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 321
    :goto_1
    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/db;->notifyDataSetChanged()V

    goto :goto_0

    .line 319
    :cond_1
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/db;->dKF:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method protected final Ga()V
    .locals 0

    .prologue
    .line 548
    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/db;->FZ()V

    .line 549
    return-void
.end method

.method public final VG()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 516
    const-string v0, "MicroMsg.AddressAdapter"

    const-string v1, "getSections"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/db;->dKI:[Ljava/lang/String;

    return-object v0
.end method

.method public final VL()I
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/db;->dKF:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/db;->dKF:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 336
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final synthetic a(Ljava/lang/Object;Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 58
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

.method public final a(Lcom/tencent/mm/ui/contact/SelectContactUI;)V
    .locals 0
    .parameter

    .prologue
    .line 177
    iput-object p1, p0, Lcom/tencent/mm/ui/contact/db;->gUH:Lcom/tencent/mm/ui/contact/SelectContactUI;

    .line 178
    return-void
.end method

.method public final a(Lcom/tencent/mm/ui/contact/de;)V
    .locals 0
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Lcom/tencent/mm/ui/contact/db;->gUI:Lcom/tencent/mm/ui/contact/de;

    .line 142
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 167
    iput-object p1, p0, Lcom/tencent/mm/ui/contact/db;->dKG:Ljava/lang/String;

    .line 168
    iput-object p2, p0, Lcom/tencent/mm/ui/contact/db;->gRX:Ljava/lang/String;

    .line 169
    iput p3, p0, Lcom/tencent/mm/ui/contact/db;->type:I

    .line 170
    iput-object p4, p0, Lcom/tencent/mm/ui/contact/db;->cIs:Ljava/lang/String;

    .line 171
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mm/ui/contact/db;->dKE:I

    .line 173
    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/db;->FZ()V

    .line 174
    return-void
.end method

.method public final a(Ljava/lang/String;[Ljava/lang/String;Z)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 348
    iput-boolean v2, p0, Lcom/tencent/mm/ui/contact/db;->dKJ:Z

    .line 349
    if-eqz p2, :cond_0

    .line 350
    iput-object v4, p0, Lcom/tencent/mm/ui/contact/db;->cIs:Ljava/lang/String;

    .line 351
    iput-object p2, p0, Lcom/tencent/mm/ui/contact/db;->gKD:[Ljava/lang/String;

    .line 352
    iput-boolean p3, p0, Lcom/tencent/mm/ui/contact/db;->dKJ:Z

    .line 357
    :goto_0
    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/db;->FZ()V

    .line 358
    return-void

    .line 354
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/db;->dKG:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/db;->dKG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/db;->dKG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_1
    const-string v1, "MicroMsg.AddressAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "dkvoice ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/db;->cIs:Ljava/lang/String;

    .line 355
    iput-object v4, p0, Lcom/tencent/mm/ui/contact/db;->gKD:[Ljava/lang/String;

    goto :goto_0

    .line 354
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%@t.qq.com"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public final aB(Ljava/util/List;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x4

    .line 210
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/db;->cKz:Ljava/util/List;

    if-nez v0, :cond_0

    .line 211
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/db;->cKz:Ljava/util/List;

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/db;->cKz:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 214
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/db;->cKz:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 215
    iget v0, p0, Lcom/tencent/mm/ui/contact/db;->type:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/tencent/mm/ui/contact/db;->type:I

    if-eq v0, v2, :cond_1

    .line 216
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/db;->cKz:Ljava/util/List;

    invoke-static {}, Lcom/tencent/mm/model/v;->th()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    :cond_1
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sz()Lcom/tencent/mm/storage/cc;

    move-result-object v0

    const-string v1, "@t.qq.com"

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/cc;->vB(Ljava/lang/String;)Lcom/tencent/mm/storage/ca;

    move-result-object v0

    .line 220
    if-eqz v0, :cond_2

    .line 221
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/db;->cKz:Ljava/util/List;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/ca;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    :cond_2
    iget v0, p0, Lcom/tencent/mm/ui/contact/db;->type:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/tencent/mm/ui/contact/db;->type:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/tencent/mm/ui/contact/db;->type:I

    if-eq v0, v2, :cond_3

    iget v0, p0, Lcom/tencent/mm/ui/contact/db;->type:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/tencent/mm/ui/contact/db;->type:I

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/tencent/mm/ui/contact/db;->type:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/tencent/mm/ui/contact/db;->type:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_4

    .line 227
    :cond_3
    invoke-static {}, Lcom/tencent/mm/model/w;->tL()Ljava/util/List;

    move-result-object v0

    .line 228
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 229
    iget-object v2, p0, Lcom/tencent/mm/ui/contact/db;->cKz:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 232
    :cond_4
    return-void
.end method

.method public final aD(Ljava/util/List;)V
    .locals 5
    .parameter

    .prologue
    .line 463
    if-nez p1, :cond_0

    .line 479
    :goto_0
    return-void

    .line 467
    :cond_0
    invoke-static {}, Lcom/tencent/mm/model/v;->tJ()Lcom/tencent/mm/storage/i;

    move-result-object v1

    .line 468
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 469
    invoke-virtual {v1}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 470
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/db;->dKF:Ljava/util/List;

    new-instance v3, Lcom/tencent/mm/ui/contact/df;

    invoke-virtual {v1}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/tencent/mm/ui/contact/df;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 472
    :cond_1
    iget-object v3, p0, Lcom/tencent/mm/ui/contact/db;->dKF:Ljava/util/List;

    new-instance v4, Lcom/tencent/mm/ui/contact/df;

    invoke-direct {v4, v0}, Lcom/tencent/mm/ui/contact/df;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 475
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/db;->dKF:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/contact/db;->gRZ:I

    .line 478
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/contact/db;->ca(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final aE(Ljava/util/List;)V
    .locals 0
    .parameter

    .prologue
    .line 482
    if-eqz p1, :cond_0

    .line 483
    iput-object p1, p0, Lcom/tencent/mm/ui/contact/db;->gRY:Ljava/util/List;

    .line 485
    :cond_0
    return-void
.end method

.method public final aKR()V
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/contact/db;->gUL:Z

    .line 134
    return-void
.end method

.method public final aKS()V
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/contact/db;->gUM:Z

    .line 138
    return-void
.end method

.method public final aKT()Ljava/util/ArrayList;
    .locals 4

    .prologue
    .line 264
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/contact/db;->dU(Z)Ljava/util/ArrayList;

    move-result-object v1

    .line 265
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/db;->gRY:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 266
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 267
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 270
    :cond_1
    return-object v1
.end method

.method public final aKU()Z
    .locals 2

    .prologue
    .line 274
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/db;->dKF:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/tencent/mm/ui/contact/db;->gRZ:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final aKV()Ljava/util/List;
    .locals 6

    .prologue
    .line 278
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 279
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 281
    invoke-static {}, Lcom/tencent/mm/model/v;->th()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 283
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v0, p0, Lcom/tencent/mm/ui/contact/db;->gRZ:I

    if-ge v1, v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/db;->dKF:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/contact/df;

    iget-object v0, v0, Lcom/tencent/mm/ui/contact/df;->bPx:Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 283
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 287
    :cond_0
    iget v0, p0, Lcom/tencent/mm/ui/contact/db;->gRZ:I

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/db;->dKF:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 288
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/db;->dKF:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/contact/df;

    iget-object v0, v0, Lcom/tencent/mm/ui/contact/df;->bPx:Ljava/lang/String;

    .line 289
    invoke-static {v0}, Lcom/tencent/mm/model/w;->cr(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 290
    invoke-static {v0}, Lcom/tencent/mm/model/r;->ch(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 291
    if-eqz v0, :cond_3

    .line 292
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 295
    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 296
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 301
    :cond_2
    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 302
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 303
    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 287
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 307
    :cond_4
    return-object v2
.end method

.method public final ca(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 637
    if-eqz p1, :cond_1

    .line 659
    :cond_0
    :goto_0
    return-void

    .line 641
    :cond_1
    invoke-static {}, Lcom/tencent/mm/model/v;->th()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/db;->gSl:Ljava/lang/String;

    .line 642
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/db;->gmO:Lcom/tencent/mm/ui/bd;

    if-eqz v0, :cond_2

    .line 643
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/db;->gmO:Lcom/tencent/mm/ui/bd;

    invoke-interface {v0}, Lcom/tencent/mm/ui/bd;->FX()V

    .line 645
    :cond_2
    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/db;->FZ()V

    .line 648
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/db;->gmO:Lcom/tencent/mm/ui/bd;

    if-eqz v0, :cond_0

    .line 649
    new-instance v0, Lcom/tencent/mm/ui/contact/dd;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/contact/dd;-><init>(Lcom/tencent/mm/ui/contact/db;)V

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/an;->i(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final dP(Z)V
    .locals 0
    .parameter

    .prologue
    .line 206
    iput-boolean p1, p0, Lcom/tencent/mm/ui/contact/db;->dkP:Z

    .line 207
    return-void
.end method

.method public final dT(Z)V
    .locals 0
    .parameter

    .prologue
    .line 129
    iput-boolean p1, p0, Lcom/tencent/mm/ui/contact/db;->gUK:Z

    .line 130
    return-void
.end method

.method public final dU(Z)Ljava/util/ArrayList;
    .locals 7
    .parameter

    .prologue
    .line 235
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 236
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 239
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/db;->dKF:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/contact/df;

    .line 240
    const-string v4, "MicroMsg.AddressAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "selectedContact.userName"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/tencent/mm/ui/contact/df;->bPx:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    if-nez p1, :cond_2

    iget-object v4, v0, Lcom/tencent/mm/ui/contact/df;->bPx:Ljava/lang/String;

    invoke-static {v4}, Lcom/tencent/mm/model/w;->cr(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 242
    iget-object v0, v0, Lcom/tencent/mm/ui/contact/df;->bPx:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/model/r;->ch(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 243
    if-eqz v0, :cond_0

    .line 244
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 247
    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 248
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 253
    :cond_2
    iget-object v4, v0, Lcom/tencent/mm/ui/contact/df;->bPx:Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 254
    iget-object v4, v0, Lcom/tencent/mm/ui/contact/df;->bPx:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    iget-object v0, v0, Lcom/tencent/mm/ui/contact/df;->bPx:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 259
    :cond_3
    return-object v1
.end method

.method public final detach()V
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/db;->cqO:Lcom/tencent/mm/ui/applet/b;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/db;->cqO:Lcom/tencent/mm/ui/applet/b;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/applet/b;->detach()V

    .line 189
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/db;->cqO:Lcom/tencent/mm/ui/applet/b;

    .line 191
    :cond_0
    return-void
.end method

.method public final gW(I)V
    .locals 4
    .parameter

    .prologue
    .line 377
    invoke-virtual {p0, p1}, Lcom/tencent/mm/ui/contact/db;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/storage/i;

    .line 378
    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/tencent/mm/ui/contact/db;->wQ(Ljava/lang/String;)Lcom/tencent/mm/ui/contact/df;

    move-result-object v1

    .line 379
    iget-object v2, p0, Lcom/tencent/mm/ui/contact/db;->gRY:Ljava/util/List;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 380
    if-eqz v2, :cond_1

    .line 396
    :cond_0
    :goto_0
    return-void

    .line 384
    :cond_1
    if-nez v1, :cond_3

    .line 385
    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->rr()Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/tencent/mm/ui/contact/db;->wP(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 388
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/db;->dKF:Ljava/util/List;

    new-instance v2, Lcom/tencent/mm/ui/contact/df;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/tencent/mm/ui/contact/df;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 395
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/db;->notifyDataSetChanged()V

    goto :goto_0

    .line 391
    :cond_3
    iget-boolean v0, p0, Lcom/tencent/mm/ui/contact/db;->dkP:Z

    if-nez v0, :cond_2

    .line 392
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/db;->dKF:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public final getCount()I
    .locals 7

    .prologue
    .line 499
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 500
    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/db;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 501
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    const-wide/16 v5, 0x5

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    .line 502
    const-string v3, "MicroMsg.AddressAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "kevin getCursor().getCount() : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v0, v5, v0

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    :cond_0
    return v2
.end method

.method public final getPositionForSection(I)I
    .locals 1
    .parameter

    .prologue
    .line 508
    .line 509
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/db;->dKH:[I

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/db;->dKH:[I

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 510
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/db;->dKH:[I

    aget p1, v0, p1

    .line 512
    :cond_0
    iget v0, p0, Lcom/tencent/mm/ui/contact/db;->dKE:I

    add-int/2addr v0, p1

    return v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .parameter
    .parameter
    .parameter

    .prologue
    const v3, 0x7f030020

    const/4 v6, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v10, 0x8

    .line 681
    iget-boolean v0, p0, Lcom/tencent/mm/ui/contact/db;->gSn:Z

    if-nez v0, :cond_1

    move v0, v5

    :goto_0
    if-ge v0, v10, :cond_0

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/db;->gSm:Ljava/util/LinkedList;

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/db;->context:Landroid/content/Context;

    invoke-static {v2, v3, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput-boolean v4, p0, Lcom/tencent/mm/ui/contact/db;->gSn:Z

    .line 682
    :cond_1
    invoke-virtual {p0, p1}, Lcom/tencent/mm/ui/contact/db;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/storage/i;

    .line 683
    if-nez p2, :cond_8

    .line 685
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/db;->gSm:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_7

    .line 686
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/db;->gSm:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 687
    iget-object v2, p0, Lcom/tencent/mm/ui/contact/db;->gSm:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-object v2, v1

    .line 691
    :goto_1
    new-instance v3, Lcom/tencent/mm/ui/contact/dg;

    invoke-direct {v3}, Lcom/tencent/mm/ui/contact/dg;-><init>()V

    .line 693
    const v1, 0x7f0a0078

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/tencent/mm/ui/contact/dg;->cMT:Landroid/widget/TextView;

    .line 694
    const v1, 0x7f0a0089

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/ui/AddressView;

    iput-object v1, v3, Lcom/tencent/mm/ui/contact/dg;->gSw:Lcom/tencent/mm/ui/AddressView;

    .line 695
    const v1, 0x7f0a0080

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, v3, Lcom/tencent/mm/ui/contact/dg;->cMW:Landroid/widget/CheckBox;

    .line 703
    const v1, 0x7f0a0088

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/tencent/mm/ui/contact/dg;->gSx:Landroid/widget/TextView;

    .line 704
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/db;->gUH:Lcom/tencent/mm/ui/contact/SelectContactUI;

    if-eqz v1, :cond_2

    .line 705
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/db;->gUH:Lcom/tencent/mm/ui/contact/SelectContactUI;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/contact/SelectContactUI;->aKu()Lcom/tencent/mm/pluginsdk/ui/e;

    move-result-object v1

    iget-object v7, v3, Lcom/tencent/mm/ui/contact/dg;->gSw:Lcom/tencent/mm/ui/AddressView;

    invoke-virtual {v1, v7}, Lcom/tencent/mm/pluginsdk/ui/e;->a(Lcom/tencent/mm/pluginsdk/ui/f;)V

    .line 707
    :cond_2
    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object p2, v2

    move-object v2, v3

    .line 711
    :goto_2
    iget v1, p0, Lcom/tencent/mm/ui/contact/db;->type:I

    if-ne v1, v10, :cond_a

    if-nez p1, :cond_9

    iget-object v1, v2, Lcom/tencent/mm/ui/contact/dg;->cMT:Landroid/widget/TextView;

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, v2, Lcom/tencent/mm/ui/contact/dg;->cMT:Landroid/widget/TextView;

    const v3, 0x7f0708ca

    invoke-direct {p0, v3}, Lcom/tencent/mm/ui/contact/db;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 712
    :goto_3
    iget-object v1, v2, Lcom/tencent/mm/ui/contact/dg;->gSw:Lcom/tencent/mm/ui/AddressView;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/tencent/mm/pluginsdk/ui/c;->a(Lcom/tencent/mm/pluginsdk/ui/b;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->rJ()I

    move-result v1

    if-eqz v1, :cond_f

    invoke-static {}, Lcom/tencent/mm/model/ar;->ub()Lcom/tencent/mm/model/av;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->rJ()I

    move-result v3

    invoke-interface {v1, v3}, Lcom/tencent/mm/model/av;->cq(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-static {v1}, Lcom/tencent/mm/p/u;->eN(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v3, v2, Lcom/tencent/mm/ui/contact/dg;->gSw:Lcom/tencent/mm/ui/AddressView;

    invoke-virtual {v3, v1}, Lcom/tencent/mm/ui/AddressView;->setMaskBitmap(Landroid/graphics/Bitmap;)V

    .line 713
    :goto_4
    iget v1, v0, Lcom/tencent/mm/storage/i;->field_deleteFlag:I

    if-ne v1, v4, :cond_10

    iget-object v1, v2, Lcom/tencent/mm/ui/contact/dg;->gSw:Lcom/tencent/mm/ui/AddressView;

    sget-object v3, Lcom/tencent/mm/ui/contact/db;->gSq:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v3}, Lcom/tencent/mm/ui/AddressView;->setNickNameTextColor(Landroid/content/res/ColorStateList;)V

    :goto_5
    iget-object v1, v2, Lcom/tencent/mm/ui/contact/dg;->gSw:Lcom/tencent/mm/ui/AddressView;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/AddressView;->updateTextColors()V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->aAd()Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_11

    :try_start_0
    iget-object v3, p0, Lcom/tencent/mm/ui/contact/db;->context:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/model/w;->cu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v7, ""

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_3

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    new-instance v8, Ljava/lang/StringBuilder;

    const/16 v9, 0x20

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_3
    iget-object v7, v2, Lcom/tencent/mm/ui/contact/dg;->gSw:Lcom/tencent/mm/ui/AddressView;

    invoke-virtual {v7}, Lcom/tencent/mm/ui/AddressView;->getNickNameSize()F

    move-result v7

    float-to-int v7, v7

    invoke-static {v3, v1, v7}, Lcom/tencent/mm/ao/b;->f(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_6
    if-nez v1, :cond_4

    const-string v1, ""

    :cond_4
    iget-object v3, v2, Lcom/tencent/mm/ui/contact/dg;->gSw:Lcom/tencent/mm/ui/AddressView;

    invoke-virtual {v3, v1}, Lcom/tencent/mm/ui/AddressView;->setName(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/i;->o(Ljava/lang/CharSequence;)V

    .line 716
    :goto_7
    iget-boolean v1, p0, Lcom/tencent/mm/ui/contact/db;->gUK:Z

    if-eqz v1, :cond_14

    .line 717
    iget v1, p0, Lcom/tencent/mm/ui/contact/db;->type:I

    const/4 v3, 0x5

    if-eq v1, v3, :cond_6

    iget v1, p0, Lcom/tencent/mm/ui/contact/db;->type:I

    if-eq v1, v4, :cond_6

    iget v1, p0, Lcom/tencent/mm/ui/contact/db;->type:I

    if-eqz v1, :cond_6

    iget v1, p0, Lcom/tencent/mm/ui/contact/db;->type:I

    const/4 v3, 0x3

    if-eq v1, v3, :cond_6

    iget v1, p0, Lcom/tencent/mm/ui/contact/db;->type:I

    const/4 v3, 0x7

    if-ne v1, v3, :cond_5

    iget-boolean v1, p0, Lcom/tencent/mm/ui/contact/db;->gUJ:Z

    if-eqz v1, :cond_6

    :cond_5
    iget v1, p0, Lcom/tencent/mm/ui/contact/db;->type:I

    if-eq v1, v10, :cond_6

    iget v1, p0, Lcom/tencent/mm/ui/contact/db;->type:I

    const/16 v3, 0xa

    if-ne v1, v3, :cond_14

    .line 721
    :cond_6
    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/tencent/mm/ui/contact/db;->wQ(Ljava/lang/String;)Lcom/tencent/mm/ui/contact/df;

    move-result-object v1

    if-eqz v1, :cond_12

    move v1, v4

    .line 722
    :goto_8
    iget-object v3, p0, Lcom/tencent/mm/ui/contact/db;->gRY:Ljava/util/List;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    .line 723
    iget-boolean v6, p0, Lcom/tencent/mm/ui/contact/db;->dkP:Z

    if-nez v6, :cond_14

    .line 724
    iget-object v6, v2, Lcom/tencent/mm/ui/contact/dg;->cMW:Landroid/widget/CheckBox;

    invoke-virtual {v6, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 727
    if-nez v3, :cond_13

    .line 728
    iget-object v3, v2, Lcom/tencent/mm/ui/contact/dg;->cMW:Landroid/widget/CheckBox;

    invoke-virtual {v3, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 729
    iget-object v1, v2, Lcom/tencent/mm/ui/contact/dg;->cMW:Landroid/widget/CheckBox;

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 739
    :goto_9
    iget-object v1, v2, Lcom/tencent/mm/ui/contact/dg;->gSw:Lcom/tencent/mm/ui/AddressView;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/AddressView;->updatePositionFlag()V

    .line 741
    iget v0, v0, Lcom/tencent/mm/storage/i;->field_deleteFlag:I

    if-ne v0, v4, :cond_15

    .line 742
    iget-object v0, v2, Lcom/tencent/mm/ui/contact/dg;->gSx:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 743
    iget-object v0, v2, Lcom/tencent/mm/ui/contact/dg;->cMW:Landroid/widget/CheckBox;

    invoke-virtual {v0, v10}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 748
    :goto_a
    return-object p2

    .line 689
    :cond_7
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/db;->context:Landroid/content/Context;

    invoke-static {v1, v3, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    goto/16 :goto_1

    .line 709
    :cond_8
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/ui/contact/dg;

    move-object v2, v1

    goto/16 :goto_2

    .line 711
    :cond_9
    iget-object v1, v2, Lcom/tencent/mm/ui/contact/dg;->cMT:Landroid/widget/TextView;

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    :cond_a
    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/contact/db;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/storage/i;

    if-nez v1, :cond_b

    const/4 v1, -0x1

    :goto_b
    iget-boolean v3, p0, Lcom/tencent/mm/ui/contact/db;->dKJ:Z

    if-eqz v3, :cond_d

    if-nez p1, :cond_c

    invoke-direct {p0, v0, p1}, Lcom/tencent/mm/ui/contact/db;->b(Lcom/tencent/mm/storage/i;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_d

    iget-object v3, v2, Lcom/tencent/mm/ui/contact/dg;->cMT:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, v2, Lcom/tencent/mm/ui/contact/dg;->cMT:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_b
    add-int/lit8 v3, p1, -0x1

    invoke-direct {p0, v1, v3}, Lcom/tencent/mm/ui/contact/db;->a(Lcom/tencent/mm/storage/i;I)I

    move-result v1

    goto :goto_b

    :cond_c
    if-lez p1, :cond_d

    invoke-direct {p0, v0, p1}, Lcom/tencent/mm/ui/contact/db;->a(Lcom/tencent/mm/storage/i;I)I

    move-result v3

    if-eq v3, v1, :cond_d

    invoke-direct {p0, v0, p1}, Lcom/tencent/mm/ui/contact/db;->b(Lcom/tencent/mm/storage/i;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_d

    iget-object v3, v2, Lcom/tencent/mm/ui/contact/dg;->cMT:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, v2, Lcom/tencent/mm/ui/contact/dg;->cMT:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_d
    iget-object v1, v2, Lcom/tencent/mm/ui/contact/dg;->cMT:Landroid/widget/TextView;

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 712
    :cond_e
    iget-object v1, v2, Lcom/tencent/mm/ui/contact/dg;->gSw:Lcom/tencent/mm/ui/AddressView;

    invoke-virtual {v1, v6}, Lcom/tencent/mm/ui/AddressView;->setMaskBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_4

    :cond_f
    iget-object v1, v2, Lcom/tencent/mm/ui/contact/dg;->gSw:Lcom/tencent/mm/ui/AddressView;

    invoke-virtual {v1, v6}, Lcom/tencent/mm/ui/AddressView;->setMaskBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_4

    .line 713
    :cond_10
    iget-object v1, v2, Lcom/tencent/mm/ui/contact/dg;->gSw:Lcom/tencent/mm/ui/AddressView;

    sget-object v3, Lcom/tencent/mm/ui/contact/db;->gSp:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v3}, Lcom/tencent/mm/ui/AddressView;->setNickNameTextColor(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_5

    :catch_0
    move-exception v1

    move-object v1, v6

    goto/16 :goto_6

    :cond_11
    iget-object v3, v2, Lcom/tencent/mm/ui/contact/dg;->gSw:Lcom/tencent/mm/ui/AddressView;

    invoke-virtual {v3, v1}, Lcom/tencent/mm/ui/AddressView;->setName(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    :cond_12
    move v1, v5

    .line 721
    goto/16 :goto_8

    .line 731
    :cond_13
    iget-object v1, v2, Lcom/tencent/mm/ui/contact/dg;->cMW:Landroid/widget/CheckBox;

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 732
    iget-object v1, v2, Lcom/tencent/mm/ui/contact/dg;->cMW:Landroid/widget/CheckBox;

    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto/16 :goto_9

    .line 737
    :cond_14
    iget-object v1, v2, Lcom/tencent/mm/ui/contact/dg;->cMW:Landroid/widget/CheckBox;

    invoke-virtual {v1, v10}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto/16 :goto_9

    .line 745
    :cond_15
    iget-object v0, v2, Lcom/tencent/mm/ui/contact/dg;->gSx:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_a
.end method

.method public final h(Landroid/database/Cursor;)V
    .locals 8
    .parameter

    .prologue
    .line 616
    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/db;->closeCursor()V

    .line 617
    invoke-virtual {p0, p1}, Lcom/tencent/mm/ui/contact/db;->setCursor(Landroid/database/Cursor;)V

    .line 618
    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/db;->notifyDataSetChanged()V

    .line 619
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 620
    iget-object v2, p0, Lcom/tencent/mm/ui/contact/db;->gmO:Lcom/tencent/mm/ui/bd;

    if-eqz v2, :cond_0

    .line 621
    iget-object v2, p0, Lcom/tencent/mm/ui/contact/db;->gmO:Lcom/tencent/mm/ui/bd;

    invoke-interface {v2}, Lcom/tencent/mm/ui/bd;->FW()V

    .line 623
    :cond_0
    const-string v2, "MicroMsg.AddressAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "kevin onPostReset"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v0, v4, v0

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 626
    iget-object v2, p0, Lcom/tencent/mm/ui/contact/db;->cIs:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/db;->gUI:Lcom/tencent/mm/ui/contact/de;

    if-eqz v2, :cond_1

    .line 627
    iget-object v2, p0, Lcom/tencent/mm/ui/contact/db;->gUI:Lcom/tencent/mm/ui/contact/de;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/tencent/mm/ui/contact/de;->mL(I)V

    .line 629
    :cond_1
    const-string v2, "MicroMsg.AddressAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "kevin onTextSearchChange"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v0, v4, v0

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 631
    iget-object v2, p0, Lcom/tencent/mm/ui/contact/db;->gKD:[Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/db;->dKG:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/mm/ui/contact/db;->gRX:Ljava/lang/String;

    iget-object v4, p0, Lcom/tencent/mm/ui/contact/db;->cKz:Ljava/util/List;

    iget-object v5, p0, Lcom/tencent/mm/ui/contact/db;->gKD:[Ljava/lang/String;

    invoke-static {v2, v3, v4, v5}, Lcom/tencent/mm/model/w;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;[Ljava/lang/String;)[I

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/mm/ui/contact/db;->dKH:[I

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/db;->dKG:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/mm/ui/contact/db;->gRX:Ljava/lang/String;

    iget-object v4, p0, Lcom/tencent/mm/ui/contact/db;->gKD:[Ljava/lang/String;

    iget-object v5, p0, Lcom/tencent/mm/ui/contact/db;->cKz:Ljava/util/List;

    invoke-static {v2, v3, v4, v5}, Lcom/tencent/mm/model/w;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/mm/ui/contact/db;->dKI:[Ljava/lang/String;

    .line 632
    :goto_0
    const-string v2, "MicroMsg.AddressAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "kevin resetShowHead"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v0, v4, v0

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    return-void

    .line 631
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/tencent/mm/ui/contact/db;->dKG:Ljava/lang/String;

    iget-object v5, p0, Lcom/tencent/mm/ui/contact/db;->gRX:Ljava/lang/String;

    iget-object v6, p0, Lcom/tencent/mm/ui/contact/db;->cKz:Ljava/util/List;

    iget-object v7, p0, Lcom/tencent/mm/ui/contact/db;->cIs:Ljava/lang/String;

    invoke-static {v4, v5, v6, v7}, Lcom/tencent/mm/model/w;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)[I

    move-result-object v4

    iput-object v4, p0, Lcom/tencent/mm/ui/contact/db;->dKH:[I

    iget-object v4, p0, Lcom/tencent/mm/ui/contact/db;->dKG:Ljava/lang/String;

    iget-object v5, p0, Lcom/tencent/mm/ui/contact/db;->gRX:Ljava/lang/String;

    iget-object v6, p0, Lcom/tencent/mm/ui/contact/db;->cIs:Ljava/lang/String;

    iget-object v7, p0, Lcom/tencent/mm/ui/contact/db;->cKz:Ljava/util/List;

    invoke-static {v4, v5, v6, v7}, Lcom/tencent/mm/model/w;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/tencent/mm/ui/contact/db;->dKI:[Ljava/lang/String;

    const-string v4, "MicroMsg.AddressAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "kevin resetShowHead part1 : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v2, v6, v2

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final nI(I)V
    .locals 4
    .parameter

    .prologue
    .line 400
    invoke-virtual {p0, p1}, Lcom/tencent/mm/ui/contact/db;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/storage/i;

    .line 401
    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/tencent/mm/ui/contact/db;->wQ(Ljava/lang/String;)Lcom/tencent/mm/ui/contact/df;

    move-result-object v1

    .line 403
    iget-object v2, p0, Lcom/tencent/mm/ui/contact/db;->gRY:Ljava/util/List;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 404
    if-eqz v2, :cond_0

    .line 416
    :goto_0
    return-void

    .line 408
    :cond_0
    if-nez v1, :cond_2

    .line 409
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/db;->dKF:Ljava/util/List;

    new-instance v2, Lcom/tencent/mm/ui/contact/df;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/tencent/mm/ui/contact/df;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 415
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/db;->notifyDataSetChanged()V

    goto :goto_0

    .line 411
    :cond_2
    iget-boolean v0, p0, Lcom/tencent/mm/ui/contact/db;->dkP:Z

    if-nez v0, :cond_1

    .line 412
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/db;->dKF:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public final notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 63
    invoke-static {}, Lcom/tencent/mm/model/v;->th()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/db;->gSl:Ljava/lang/String;

    .line 64
    invoke-super {p0}, Lcom/tencent/mm/ui/bc;->notifyDataSetChanged()V

    .line 65
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 1
    .parameter

    .prologue
    .line 181
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/db;->cqO:Lcom/tencent/mm/ui/applet/b;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/db;->cqO:Lcom/tencent/mm/ui/applet/b;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/ui/applet/b;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 184
    :cond_0
    return-void
.end method

.method public final wH(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 344
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/tencent/mm/ui/contact/db;->a(Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 345
    return-void
.end method

.method public final wN(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 325
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/mm/storage/k;->tO(Ljava/lang/String;)Lcom/tencent/mm/storage/i;

    move-result-object v0

    .line 326
    if-eqz v0, :cond_0

    .line 327
    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/contact/db;->G(Lcom/tencent/mm/storage/i;)V

    .line 329
    :cond_0
    return-void
.end method

.method public final wO(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 419
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/mm/storage/k;->tO(Ljava/lang/String;)Lcom/tencent/mm/storage/i;

    move-result-object v0

    .line 420
    if-eqz v0, :cond_0

    .line 421
    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/contact/db;->G(Lcom/tencent/mm/storage/i;)V

    .line 423
    :cond_0
    return-void
.end method
