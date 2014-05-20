.class public final Lcom/tencent/mm/booter/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/model/ap;
.implements Lcom/tencent/mm/model/ax;


# static fields
.field private static final cap:Ljava/util/Set;

.field private static cas:I

.field private static cat:I

.field private static cau:Ljava/lang/ref/WeakReference;


# instance fields
.field private bNl:Ljava/lang/String;

.field private bNy:Ljava/lang/String;

.field private cab:Ljava/lang/String;

.field private cac:Ljava/lang/String;

.field private cad:Lcom/tencent/mm/storage/ak;

.field private cae:I

.field private caf:Ljava/lang/String;

.field private cag:Landroid/content/Intent;

.field private cah:I

.field private cai:I

.field private caj:Z

.field private cak:J

.field private cal:I

.field private cam:Z

.field private can:Landroid/graphics/Bitmap;

.field private cao:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field private caq:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field private car:Z

.field private context:Landroid/content/Context;

.field private tv:Landroid/media/MediaPlayer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 176
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 178
    sput-object v0, Lcom/tencent/mm/booter/w;->cap:Ljava/util/Set;

    const-string v1, "readerapp"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 179
    sget-object v0, Lcom/tencent/mm/booter/w;->cap:Ljava/util/Set;

    const-string v1, "blogapp"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 180
    sget-object v0, Lcom/tencent/mm/booter/w;->cap:Ljava/util/Set;

    const-string v1, "newsapp"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 956
    sput v2, Lcom/tencent/mm/booter/w;->cas:I

    .line 957
    sput v2, Lcom/tencent/mm/booter/w;->cat:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object v2, p0, Lcom/tencent/mm/booter/w;->context:Landroid/content/Context;

    .line 113
    new-instance v0, Lcom/tencent/mm/booter/x;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/tencent/mm/booter/x;-><init>(Lcom/tencent/mm/booter/w;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tencent/mm/booter/w;->cao:Landroid/os/Handler;

    .line 756
    iput-object v2, p0, Lcom/tencent/mm/booter/w;->tv:Landroid/media/MediaPlayer;

    .line 757
    new-instance v0, Lcom/tencent/mm/booter/y;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/tencent/mm/booter/y;-><init>(Lcom/tencent/mm/booter/w;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tencent/mm/booter/w;->caq:Landroid/os/Handler;

    .line 776
    iput-boolean v3, p0, Lcom/tencent/mm/booter/w;->car:Z

    .line 126
    iput-object p1, p0, Lcom/tencent/mm/booter/w;->context:Landroid/content/Context;

    .line 127
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/booter/w;->bNl:Ljava/lang/String;

    .line 128
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/booter/w;->bNy:Ljava/lang/String;

    .line 129
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/booter/w;->caf:Ljava/lang/String;

    .line 130
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/booter/w;->cab:Ljava/lang/String;

    .line 131
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/mm/booter/w;->cak:J

    .line 132
    iput-boolean v3, p0, Lcom/tencent/mm/booter/w;->caj:Z

    .line 133
    iput-object v2, p0, Lcom/tencent/mm/booter/w;->cag:Landroid/content/Intent;

    .line 134
    invoke-static {p0}, Lcom/tencent/mm/z/n;->a(Lcom/tencent/mm/model/ax;)V

    .line 135
    invoke-static {p0}, Lcom/tencent/mm/modelvoice/p;->a(Lcom/tencent/mm/model/ax;)V

    .line 136
    invoke-static {}, Lcom/tencent/mm/pluginsdk/h;->apj()Lcom/tencent/mm/pluginsdk/i;

    .line 137
    invoke-static {p0}, Lcom/tencent/mm/plugin/base/stub/b;->a(Lcom/tencent/mm/model/ax;)V

    .line 138
    return-void
.end method

.method private I(Z)V
    .locals 4
    .parameter

    .prologue
    .line 486
    const-string v0, "MicroMsg.MMNotification"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "updateNotifyInfo: silent = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/booter/w;->caj:Z

    .line 488
    if-nez p1, :cond_0

    .line 489
    const-string v0, "MicroMsg.MMNotification"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "updateNotifyInfo : modify lastNotSilentTime = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/tencent/mm/booter/w;->cak:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/mm/booter/w;->cak:J

    .line 492
    :cond_0
    return-void
.end method

.method private static a(Lcom/tencent/mm/storage/ak;)I
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 379
    invoke-virtual {p0}, Lcom/tencent/mm/storage/ak;->aCn()Ljava/lang/String;

    move-result-object v3

    .line 380
    invoke-virtual {p0}, Lcom/tencent/mm/storage/ak;->aCl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/model/w;->cw(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v2

    .line 381
    :goto_0
    invoke-static {v3}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 400
    :cond_0
    :goto_1
    return v1

    .line 380
    :cond_1
    const/4 v0, 0x3

    move v1, v0

    goto :goto_0

    .line 384
    :cond_2
    const-string v0, "msgsource"

    invoke-static {v3, v0}, Lcom/tencent/mm/sdk/platformtools/u;->aL(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 385
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 389
    :try_start_0
    const-string v3, ".msgsource.tips"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 396
    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_3

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_3

    .line 397
    const-string v0, "MicroMsg.MMNotification"

    const-string v1, "not support this notify tip, no text with sound!!!"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    move v1, v2

    .line 400
    goto :goto_1

    .line 390
    :catch_0
    move-exception v0

    .line 391
    const-string v2, "MicroMsg.MMNotification"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "parseTipsFlag "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move v2, v0

    goto :goto_2
.end method

.method public static a(ILjava/lang/String;Ljava/lang/String;ILandroid/content/Context;)Ljava/lang/String;
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 998
    const/4 v0, 0x0

    new-instance v6, Lcom/tencent/mm/pointers/PString;

    invoke-direct {v6}, Lcom/tencent/mm/pointers/PString;-><init>()V

    new-instance v7, Lcom/tencent/mm/pointers/PString;

    invoke-direct {v7}, Lcom/tencent/mm/pointers/PString;-><init>()V

    new-instance v8, Lcom/tencent/mm/pointers/PInt;

    invoke-direct {v8}, Lcom/tencent/mm/pointers/PInt;-><init>()V

    const/4 v9, 0x0

    move v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v9}, Lcom/tencent/mm/booter/w;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILandroid/content/Context;Lcom/tencent/mm/pointers/PString;Lcom/tencent/mm/pointers/PString;Lcom/tencent/mm/pointers/PInt;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/mm/pointers/PString;Lcom/tencent/mm/pointers/PString;)Ljava/lang/String;
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const v3, 0x7f07007c

    const v2, 0x7f07007b

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1660
    const-string v0, ""

    .line 1661
    invoke-static {p2}, Lcom/tencent/mm/model/w;->cA(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Lcom/tencent/mm/model/w;->cC(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1662
    :cond_0
    if-eqz p3, :cond_2

    .line 1663
    const-string v1, ":"

    invoke-virtual {p3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 1664
    if-ltz v1, :cond_2

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 1665
    invoke-virtual {p3, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 1666
    invoke-static {v4}, Lcom/tencent/mm/storage/i;->ty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v4}, Lcom/tencent/mm/storage/i;->tA(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1667
    :cond_1
    invoke-static {v4}, Lcom/tencent/mm/model/w;->cu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1668
    iput-object v4, p6, Lcom/tencent/mm/pointers/PString;->value:Ljava/lang/String;

    .line 1669
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    .line 1689
    :cond_2
    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_9

    .line 1690
    if-nez p4, :cond_8

    :goto_0
    iput-object p3, p5, Lcom/tencent/mm/pointers/PString;->value:Ljava/lang/String;

    .line 1691
    iget-object v0, p5, Lcom/tencent/mm/pointers/PString;->value:Ljava/lang/String;

    .line 1695
    :goto_1
    return-object v0

    .line 1674
    :cond_3
    invoke-static {p2}, Lcom/tencent/mm/storage/i;->ty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {p2}, Lcom/tencent/mm/storage/i;->tA(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1675
    :cond_4
    invoke-static {p2}, Lcom/tencent/mm/model/w;->cu(Ljava/lang/String;)Ljava/lang/String;

    .line 1676
    iput-object p2, p6, Lcom/tencent/mm/pointers/PString;->value:Ljava/lang/String;

    .line 1677
    if-ne p1, v6, :cond_6

    .line 1678
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-array v1, v6, [Ljava/lang/Object;

    const-string v3, ""

    aput-object v3, v1, v7

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez p4, :cond_5

    :goto_2
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p5, Lcom/tencent/mm/pointers/PString;->value:Ljava/lang/String;

    .line 1679
    const-string v0, ""

    iput-object v0, p6, Lcom/tencent/mm/pointers/PString;->value:Ljava/lang/String;

    .line 1680
    iget-object v0, p5, Lcom/tencent/mm/pointers/PString;->value:Ljava/lang/String;

    goto :goto_1

    :cond_5
    move-object p3, p4

    .line 1678
    goto :goto_2

    .line 1683
    :cond_6
    if-nez p4, :cond_7

    :goto_3
    iput-object p3, p5, Lcom/tencent/mm/pointers/PString;->value:Ljava/lang/String;

    .line 1684
    const-string v0, ""

    iput-object v0, p6, Lcom/tencent/mm/pointers/PString;->value:Ljava/lang/String;

    .line 1685
    iget-object v0, p5, Lcom/tencent/mm/pointers/PString;->value:Ljava/lang/String;

    goto :goto_1

    :cond_7
    move-object p3, p4

    .line 1683
    goto :goto_3

    :cond_8
    move-object p3, p4

    .line 1690
    goto :goto_0

    .line 1694
    :cond_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-ne p1, v6, :cond_a

    move v1, v2

    :goto_4
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez p4, :cond_b

    move-object v1, p3

    :goto_5
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p5, Lcom/tencent/mm/pointers/PString;->value:Ljava/lang/String;

    .line 1695
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-ne p1, v6, :cond_c

    :goto_6
    new-array v3, v6, [Ljava/lang/Object;

    aput-object v0, v3, v7

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez p4, :cond_d

    :goto_7
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_a
    move v1, v3

    .line 1694
    goto :goto_4

    :cond_b
    move-object v1, p4

    goto :goto_5

    :cond_c
    move v2, v3

    .line 1695
    goto :goto_6

    :cond_d
    move-object p3, p4

    goto :goto_7
.end method

.method static synthetic a(Lcom/tencent/mm/booter/w;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/tencent/mm/booter/w;->bNl:Ljava/lang/String;

    return-object v0
.end method

.method private static a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILandroid/content/Context;Lcom/tencent/mm/pointers/PString;Lcom/tencent/mm/pointers/PString;Lcom/tencent/mm/pointers/PInt;Z)Ljava/lang/String;
    .locals 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1019
    const-string v5, "context is null"

    if-eqz p5, :cond_0

    const/4 v4, 0x1

    :goto_0
    invoke-static {v5, v4}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    .line 1020
    const-string v5, "username is null"

    if-eqz p2, :cond_1

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    const/4 v4, 0x1

    :goto_1
    invoke-static {v5, v4}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    .line 1022
    if-nez p9, :cond_5

    invoke-static/range {p2 .. p2}, Lcom/tencent/mm/model/w;->cA(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/tencent/mm/model/v;->tv()Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v4, 0x1

    :goto_2
    if-eqz v4, :cond_5

    .line 1023
    const v4, 0x7f0702a6

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1596
    :goto_3
    return-object v4

    .line 1019
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 1020
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 1022
    :cond_2
    invoke-static/range {p2 .. p2}, Lcom/tencent/mm/model/w;->cC(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {}, Lcom/tencent/mm/model/v;->tr()Z

    move-result v4

    if-nez v4, :cond_3

    const/4 v4, 0x1

    goto :goto_2

    :cond_3
    invoke-static/range {p2 .. p2}, Lcom/tencent/mm/model/w;->cG(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {}, Lcom/tencent/mm/model/v;->ty()Z

    move-result v4

    if-nez v4, :cond_4

    const/4 v4, 0x1

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    goto :goto_2

    .line 1027
    :cond_5
    invoke-static/range {p2 .. p2}, Lcom/tencent/mm/model/w;->cG(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1028
    if-eqz p9, :cond_6

    .line 1029
    const-string v4, ""

    goto :goto_3

    .line 1031
    :cond_6
    invoke-static {}, Lcom/tencent/mm/model/v;->ty()Z

    move-result v5

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v4

    const v6, 0x10101

    invoke-virtual {v4, v6}, Lcom/tencent/mm/storage/e;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    const-wide/16 v6, 0x0

    invoke-static {v4, v6, v7}, Lcom/tencent/mm/sdk/platformtools/cj;->a(Ljava/lang/Long;J)J

    move-result-wide v6

    if-nez v5, :cond_7

    const v4, 0x7f0702a6

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_7
    const-wide/16 v4, 0x0

    cmp-long v4, v6, v4

    if-nez v4, :cond_8

    const v4, 0x7f070bfc

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_8
    invoke-static {v6, v7}, Lcom/tencent/mm/sdk/platformtools/cj;->M(J)J

    move-result-wide v4

    const-wide/16 v8, 0x3e8

    mul-long/2addr v4, v8

    const-wide/32 v8, 0x48190800

    cmp-long v4, v4, v8

    if-lez v4, :cond_9

    const v4, 0x7f070bfb

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v6, v7}, Lcom/tencent/mm/sdk/platformtools/cj;->M(J)J

    move-result-wide v6

    const-wide/16 v9, 0x3e8

    mul-long/2addr v6, v9

    const-wide/32 v9, 0x5265c00

    div-long/2addr v6, v9

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v8

    move-object/from16 v0, p5

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_3

    :cond_9
    const-string v4, ""

    goto/16 :goto_3

    .line 1035
    :cond_a
    const-string v14, ""

    .line 1036
    const-string v6, ""

    .line 1037
    const-string v5, ""

    .line 1038
    const/4 v4, 0x0

    .line 1041
    if-eqz p3, :cond_65

    if-eqz p9, :cond_65

    .line 1042
    const/4 v4, 0x1

    .line 1043
    invoke-static/range {p3 .. p3}, Lcom/tencent/mm/booter/w;->aW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    move v11, v4

    .line 1046
    :goto_4
    move-object/from16 v0, p3

    move-object/from16 v1, p6

    iput-object v0, v1, Lcom/tencent/mm/pointers/PString;->value:Ljava/lang/String;

    .line 1049
    if-nez p1, :cond_64

    invoke-static/range {p2 .. p2}, Lcom/tencent/mm/model/w;->cp(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_64

    .line 1051
    invoke-static/range {p3 .. p3}, Lcom/tencent/mm/model/bv;->dw(Ljava/lang/String;)I

    move-result v4

    .line 1052
    if-lez v4, :cond_64

    .line 1053
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 1054
    move-object/from16 v0, p2

    invoke-static {v6, v0}, Lcom/tencent/mm/model/w;->q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1062
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v7, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    move-object v12, v5

    move-object v13, v6

    .line 1066
    :goto_5
    invoke-static/range {p2 .. p2}, Lcom/tencent/mm/model/w;->cT(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_63

    .line 1067
    const-string v5, ":"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 1068
    const/4 v6, -0x1

    if-eq v5, v6, :cond_63

    .line 1069
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p7

    iput-object v6, v0, Lcom/tencent/mm/pointers/PString;->value:Ljava/lang/String;

    .line 1070
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    move-object/from16 v7, p3

    .line 1074
    :goto_6
    sparse-switch p4, :sswitch_data_0

    :cond_b
    :goto_7
    move-object v4, v14

    .line 1479
    :goto_8
    invoke-static/range {p2 .. p2}, Lcom/tencent/mm/model/w;->cB(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_51

    .line 1487
    const/4 v5, 0x1

    move/from16 v0, p1

    if-ne v5, v0, :cond_49

    .line 1488
    invoke-static {v4}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_47

    .line 1489
    move-object/from16 v0, p6

    iput-object v4, v0, Lcom/tencent/mm/pointers/PString;->value:Ljava/lang/String;

    goto/16 :goto_3

    .line 1078
    :sswitch_0
    const v4, 0x7f0709de

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 1079
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_c

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1080
    :goto_9
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_d

    const-string v5, "%s: "

    :goto_a
    move-object/from16 v0, p6

    iput-object v5, v0, Lcom/tencent/mm/pointers/PString;->value:Ljava/lang/String;

    move-object v7, v4

    move-object v4, p0

    .line 1081
    goto :goto_8

    .line 1079
    :cond_c
    const-string v4, ""

    goto :goto_9

    .line 1080
    :cond_d
    const-string v5, ""

    goto :goto_a

    .line 1085
    :sswitch_1
    invoke-static {v7}, Lcom/tencent/mm/storage/u;->uk(Ljava/lang/String;)Lcom/tencent/mm/storage/u;

    move-result-object v4

    .line 1086
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/tencent/mm/storage/u;->DG()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1087
    if-eqz p0, :cond_e

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x20

    if-ne v5, v6, :cond_e

    .line 1093
    :goto_b
    const-string v5, ""

    move-object/from16 v0, p6

    iput-object v5, v0, Lcom/tencent/mm/pointers/PString;->value:Ljava/lang/String;

    .line 1094
    invoke-virtual {v4}, Lcom/tencent/mm/storage/u;->DG()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p7

    iput-object v4, v0, Lcom/tencent/mm/pointers/PString;->value:Ljava/lang/String;

    move-object v4, p0

    .line 1095
    goto/16 :goto_8

    .line 1090
    :cond_e
    const v5, 0x7f0709e8

    move-object/from16 v0, p5

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_b

    .line 1099
    :sswitch_2
    const v4, 0x7f0709de

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v4, p5

    move/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-static/range {v4 .. v10}, Lcom/tencent/mm/booter/w;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/mm/pointers/PString;Lcom/tencent/mm/pointers/PString;)Ljava/lang/String;

    move-result-object v7

    move-object v4, v14

    .line 1100
    goto/16 :goto_8

    .line 1104
    :sswitch_3
    const/4 v8, 0x0

    move-object/from16 v4, p5

    move/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-static/range {v4 .. v10}, Lcom/tencent/mm/booter/w;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/mm/pointers/PString;Lcom/tencent/mm/pointers/PString;)Ljava/lang/String;

    move-result-object v7

    move-object v4, v14

    .line 1105
    goto/16 :goto_8

    .line 1108
    :sswitch_4
    invoke-static/range {p2 .. p2}, Lcom/tencent/mm/storage/i;->ty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_f

    invoke-static/range {p2 .. p2}, Lcom/tencent/mm/storage/i;->tA(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_f

    invoke-static/range {p2 .. p2}, Lcom/tencent/mm/model/w;->cA(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_f

    invoke-static/range {p2 .. p2}, Lcom/tencent/mm/model/w;->cC(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 1109
    :cond_f
    const v4, 0x7f0709e0

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v4, p5

    move/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-static/range {v4 .. v10}, Lcom/tencent/mm/booter/w;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/mm/pointers/PString;Lcom/tencent/mm/pointers/PString;)Ljava/lang/String;

    move-result-object v7

    move-object v4, v14

    .line 1110
    goto/16 :goto_8

    .line 1111
    :cond_10
    if-eqz v7, :cond_11

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_11

    invoke-static/range {p2 .. p2}, Lcom/tencent/mm/model/w;->cB(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_11

    .line 1112
    invoke-static/range {p2 .. p2}, Lcom/tencent/mm/model/w;->cp(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 1113
    new-instance v4, Lcom/tencent/mm/modelvoice/bf;

    invoke-direct {v4, v7}, Lcom/tencent/mm/modelvoice/bf;-><init>(Ljava/lang/String;)V

    .line 1114
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/tencent/mm/modelvoice/bf;->DG()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1115
    const-string v5, "%s:"

    move-object/from16 v0, p6

    iput-object v5, v0, Lcom/tencent/mm/pointers/PString;->value:Ljava/lang/String;

    .line 1116
    invoke-virtual {v4}, Lcom/tencent/mm/modelvoice/bf;->DG()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p7

    iput-object v4, v0, Lcom/tencent/mm/pointers/PString;->value:Ljava/lang/String;

    .line 1121
    :cond_11
    :goto_c
    const v4, 0x7f0709e0

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_8

    .line 1118
    :cond_12
    const-string v7, ""

    goto :goto_c

    .line 1125
    :sswitch_5
    invoke-static/range {p2 .. p2}, Lcom/tencent/mm/storage/i;->ty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_13

    invoke-static/range {p2 .. p2}, Lcom/tencent/mm/storage/i;->tA(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_13

    invoke-static/range {p2 .. p2}, Lcom/tencent/mm/model/w;->cA(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_13

    invoke-static/range {p2 .. p2}, Lcom/tencent/mm/model/w;->cC(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 1126
    :cond_13
    const v4, 0x7f0709e1

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v4, p5

    move/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-static/range {v4 .. v10}, Lcom/tencent/mm/booter/w;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/mm/pointers/PString;Lcom/tencent/mm/pointers/PString;)Ljava/lang/String;

    move-result-object v7

    move-object v4, v14

    .line 1127
    goto/16 :goto_8

    .line 1130
    :cond_14
    if-eqz v7, :cond_15

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_15

    invoke-static/range {p2 .. p2}, Lcom/tencent/mm/model/w;->cB(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_15

    .line 1131
    invoke-static/range {p2 .. p2}, Lcom/tencent/mm/model/w;->cp(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 1132
    new-instance v4, Lcom/tencent/mm/ai/o;

    invoke-direct {v4, v7}, Lcom/tencent/mm/ai/o;-><init>(Ljava/lang/String;)V

    .line 1133
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/tencent/mm/ai/o;->DG()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1134
    const-string v5, "%s:"

    move-object/from16 v0, p6

    iput-object v5, v0, Lcom/tencent/mm/pointers/PString;->value:Ljava/lang/String;

    .line 1135
    invoke-virtual {v4}, Lcom/tencent/mm/ai/o;->DG()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p7

    iput-object v4, v0, Lcom/tencent/mm/pointers/PString;->value:Ljava/lang/String;

    .line 1140
    :cond_15
    :goto_d
    const v4, 0x7f0709e1

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_8

    .line 1137
    :cond_16
    const-string v7, ""

    goto :goto_d

    .line 1144
    :sswitch_6
    const-string v7, ""

    .line 1145
    const v4, 0x7f0709e5

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_8

    .line 1150
    :sswitch_7
    const-string v7, ""

    .line 1151
    const v4, 0x7f0709e7

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_8

    .line 1155
    :sswitch_8
    sget-object v4, Lcom/tencent/mm/storage/ak;->ghI:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 1156
    const-string v7, ""

    .line 1157
    const v4, 0x7f0709e5

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_8

    .line 1158
    :cond_17
    sget-object v4, Lcom/tencent/mm/storage/ak;->ghH:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1159
    const-string v7, ""

    .line 1160
    const v4, 0x7f0709e6

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_8

    .line 1164
    :sswitch_9
    const-string v7, ""

    .line 1165
    const v4, 0x7f0709e5

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_8

    .line 1168
    :sswitch_a
    const-string v7, ""

    .line 1169
    const v4, 0x7f0709e6

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_8

    .line 1173
    :sswitch_b
    if-eqz v7, :cond_b

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_b

    .line 1174
    invoke-static {v7}, Lcom/tencent/mm/storage/ao;->uU(Ljava/lang/String;)Lcom/tencent/mm/storage/ao;

    move-result-object v4

    .line 1175
    if-eqz v4, :cond_18

    invoke-virtual {v4}, Lcom/tencent/mm/storage/ao;->aCu()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_18

    invoke-virtual {v4}, Lcom/tencent/mm/storage/ao;->aCu()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_18

    .line 1176
    invoke-virtual {v4}, Lcom/tencent/mm/storage/ao;->Gf()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 1195
    :pswitch_0
    const v5, 0x7f070076

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v4}, Lcom/tencent/mm/storage/ao;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v7

    move-object/from16 v0, p5

    invoke-virtual {v0, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 1196
    move-object/from16 v0, p6

    iput-object v7, v0, Lcom/tencent/mm/pointers/PString;->value:Ljava/lang/String;

    :cond_18
    move-object v4, v14

    .line 1200
    goto/16 :goto_8

    .line 1178
    :pswitch_1
    const v5, 0x7f070077

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v4}, Lcom/tencent/mm/storage/ao;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v7

    move-object/from16 v0, p5

    invoke-virtual {v0, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    move-object v4, v14

    .line 1179
    goto/16 :goto_8

    .line 1187
    :pswitch_2
    const v5, 0x7f070078

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v4}, Lcom/tencent/mm/storage/ao;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v7

    move-object/from16 v0, p5

    invoke-virtual {v0, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    move-object v4, v14

    .line 1188
    goto/16 :goto_8

    .line 1190
    :pswitch_3
    const v5, 0x7f070079

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v4}, Lcom/tencent/mm/storage/ao;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v7

    move-object/from16 v0, p5

    invoke-virtual {v0, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 1191
    move-object/from16 v0, p6

    iput-object v7, v0, Lcom/tencent/mm/pointers/PString;->value:Ljava/lang/String;

    move-object v4, v14

    .line 1192
    goto/16 :goto_8

    .line 1204
    :sswitch_c
    if-eqz v7, :cond_b

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_b

    .line 1205
    invoke-static {v7}, Lcom/tencent/mm/storage/al;->uQ(Ljava/lang/String;)Lcom/tencent/mm/storage/al;

    move-result-object v4

    .line 1206
    if-eqz v4, :cond_19

    invoke-virtual {v4}, Lcom/tencent/mm/storage/al;->aCu()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_19

    invoke-virtual {v4}, Lcom/tencent/mm/storage/al;->aCu()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_19

    .line 1207
    const v5, 0x7f07007a

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v4}, Lcom/tencent/mm/storage/al;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v7

    move-object/from16 v0, p5

    invoke-virtual {v0, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 1208
    move-object/from16 v0, p6

    iput-object v7, v0, Lcom/tencent/mm/pointers/PString;->value:Ljava/lang/String;

    :cond_19
    move-object v4, v14

    .line 1210
    goto/16 :goto_8

    .line 1214
    :sswitch_d
    invoke-static {v7}, Lcom/tencent/mm/sdk/platformtools/cj;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_b

    .line 1215
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/mm/model/b;->sw()Lcom/tencent/mm/storage/ap;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/tencent/mm/storage/ap;->vh(Ljava/lang/String;)Lcom/tencent/mm/storage/an;

    move-result-object v4

    .line 1216
    const v5, 0x7f070071

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v4}, Lcom/tencent/mm/storage/an;->Ch()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual {v4}, Lcom/tencent/mm/storage/an;->getTitle()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v7

    move-object/from16 v0, p5

    invoke-virtual {v0, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 1217
    move-object/from16 v0, p6

    iput-object v7, v0, Lcom/tencent/mm/pointers/PString;->value:Ljava/lang/String;

    move-object v4, v14

    .line 1218
    goto/16 :goto_8

    .line 1222
    :sswitch_e
    invoke-static {v7}, Lcom/tencent/mm/sdk/platformtools/cj;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_b

    .line 1224
    invoke-static/range {p2 .. p2}, Lcom/tencent/mm/model/w;->cp(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 1225
    invoke-static {v7}, Lcom/tencent/mm/model/bv;->dy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1226
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1b

    :cond_1a
    move-object/from16 v4, p2

    .line 1233
    :cond_1b
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tencent/mm/model/b;->sw()Lcom/tencent/mm/storage/ap;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/tencent/mm/storage/ap;->vj(Ljava/lang/String;)Lcom/tencent/mm/storage/al;

    move-result-object v6

    .line 1234
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/tencent/mm/storage/k;->tO(Ljava/lang/String;)Lcom/tencent/mm/storage/i;

    move-result-object v5

    .line 1235
    invoke-virtual {v5}, Lcom/tencent/mm/storage/i;->rr()Ljava/lang/String;

    move-result-object v5

    .line 1237
    invoke-static {v5}, Lcom/tencent/mm/model/w;->cp(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1c

    .line 1238
    invoke-static {v5}, Lcom/tencent/mm/model/r;->cj(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Lcom/tencent/mm/model/r;->f(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    .line 1241
    :cond_1c
    const/4 v7, 0x1

    move/from16 v0, p1

    if-ne v0, v7, :cond_1d

    .line 1242
    const v7, 0x7f07007f

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v5, v8, v9

    const/4 v5, 0x1

    invoke-virtual {v6}, Lcom/tencent/mm/storage/al;->getDisplayName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v5

    move-object/from16 v0, p5

    invoke-virtual {v0, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 1243
    const v5, 0x7f07007f

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "%s"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-virtual {v6}, Lcom/tencent/mm/storage/al;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v8, v9

    move-object/from16 v0, p5

    invoke-virtual {v0, v5, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p6

    iput-object v5, v0, Lcom/tencent/mm/pointers/PString;->value:Ljava/lang/String;

    .line 1244
    move-object/from16 v0, p7

    iput-object v4, v0, Lcom/tencent/mm/pointers/PString;->value:Ljava/lang/String;

    move-object v4, v14

    goto/16 :goto_8

    .line 1246
    :cond_1d
    const v7, 0x7f07007e

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v5, v8, v9

    const/4 v5, 0x1

    invoke-virtual {v6}, Lcom/tencent/mm/storage/al;->getDisplayName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v5

    move-object/from16 v0, p5

    invoke-virtual {v0, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 1247
    const v5, 0x7f07007e

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "%s"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-virtual {v6}, Lcom/tencent/mm/storage/al;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v8, v9

    move-object/from16 v0, p5

    invoke-virtual {v0, v5, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p6

    iput-object v5, v0, Lcom/tencent/mm/pointers/PString;->value:Ljava/lang/String;

    .line 1248
    move-object/from16 v0, p7

    iput-object v4, v0, Lcom/tencent/mm/pointers/PString;->value:Ljava/lang/String;

    move-object v4, v14

    .line 1250
    goto/16 :goto_8

    .line 1254
    :sswitch_f
    invoke-static {v7}, Lcom/tencent/mm/sdk/platformtools/cj;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_b

    .line 1256
    invoke-static/range {p2 .. p2}, Lcom/tencent/mm/model/w;->cp(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_62

    .line 1257
    invoke-static {v7}, Lcom/tencent/mm/model/bv;->dw(Ljava/lang/String;)I

    move-result v4

    .line 1258
    const/4 v5, -0x1

    if-eq v4, v5, :cond_61

    .line 1259
    const/4 v5, 0x0

    invoke-virtual {v7, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 1261
    :goto_e
    invoke-static {v7}, Lcom/tencent/mm/model/bv;->dz(Ljava/lang/String;)Ljava/lang/String;

    .line 1263
    :goto_f
    const/4 v5, 0x1

    move/from16 v0, p1

    if-ne v0, v5, :cond_1e

    .line 1264
    const v4, 0x7f070b0b

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1265
    move-object/from16 v0, p6

    iput-object v7, v0, Lcom/tencent/mm/pointers/PString;->value:Ljava/lang/String;

    move-object v4, v14

    goto/16 :goto_8

    .line 1267
    :cond_1e
    const v5, 0x7f070b0b

    move-object/from16 v0, p5

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1268
    const v5, 0x7f070b0b

    move-object/from16 v0, p5

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p6

    iput-object v5, v0, Lcom/tencent/mm/pointers/PString;->value:Ljava/lang/String;

    .line 1269
    move-object/from16 v0, p7

    iput-object v4, v0, Lcom/tencent/mm/pointers/PString;->value:Ljava/lang/String;

    move-object v4, v14

    .line 1271
    goto/16 :goto_8

    .line 1276
    :sswitch_10
    invoke-static {v4}, Lcom/tencent/mm/sdk/platformtools/cj;->sT(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1278
    invoke-static {v4}, Lcom/tencent/mm/j/b;->bR(Ljava/lang/String;)Lcom/tencent/mm/j/b;

    move-result-object v4

    .line 1279
    if-nez v4, :cond_1f

    .line 1280
    const-string v4, "MicroMsg.MMNotification"

    const-string v5, "decode msg content failed"

    invoke-static {v4, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1281
    const-string v4, ""

    goto/16 :goto_3

    .line 1283
    :cond_1f
    const-string v4, ""

    .line 1284
    const v5, 0x7f070d23

    move-object/from16 v0, p5

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1285
    move-object/from16 v0, p6

    iput-object v7, v0, Lcom/tencent/mm/pointers/PString;->value:Ljava/lang/String;

    goto/16 :goto_8

    .line 1289
    :sswitch_11
    invoke-static {v4}, Lcom/tencent/mm/sdk/platformtools/cj;->sT(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1290
    invoke-static {v4}, Lcom/tencent/mm/j/b;->bR(Ljava/lang/String;)Lcom/tencent/mm/j/b;

    move-result-object v4

    .line 1292
    iget v5, v4, Lcom/tencent/mm/j/b;->cgU:I

    if-eqz v5, :cond_22

    .line 1293
    iget v5, v4, Lcom/tencent/mm/j/b;->cgU:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_20

    .line 1295
    const v4, 0x7f070c5c

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1303
    :goto_10
    const-string v7, ""

    .line 1304
    move-object/from16 v0, p7

    iput-object v13, v0, Lcom/tencent/mm/pointers/PString;->value:Ljava/lang/String;

    .line 1305
    const-string v5, ""

    move-object/from16 v0, p6

    iput-object v5, v0, Lcom/tencent/mm/pointers/PString;->value:Ljava/lang/String;

    goto/16 :goto_8

    .line 1296
    :cond_20
    iget v5, v4, Lcom/tencent/mm/j/b;->cgU:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_21

    .line 1297
    const v4, 0x7f070c5d

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_10

    .line 1298
    :cond_21
    iget v4, v4, Lcom/tencent/mm/j/b;->cgU:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_22

    .line 1299
    const v4, 0x7f070c5e

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_10

    .line 1301
    :cond_22
    const v4, 0x7f070c5b

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_10

    .line 1309
    :sswitch_12
    invoke-static {v4}, Lcom/tencent/mm/sdk/platformtools/cj;->sT(Ljava/lang/String;)Ljava/lang/String;

    .line 1310
    const v4, 0x7f070c69

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1311
    const-string v7, ""

    .line 1312
    move-object/from16 v0, p7

    iput-object v13, v0, Lcom/tencent/mm/pointers/PString;->value:Ljava/lang/String;

    .line 1313
    const-string v5, ""

    move-object/from16 v0, p6

    iput-object v5, v0, Lcom/tencent/mm/pointers/PString;->value:Ljava/lang/String;

    goto/16 :goto_8

    .line 1317
    :sswitch_13
    invoke-static {v4}, Lcom/tencent/mm/sdk/platformtools/cj;->sT(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1318
    invoke-static {v4}, Lcom/tencent/mm/j/b;->bR(Ljava/lang/String;)Lcom/tencent/mm/j/b;

    move-result-object v4

    .line 1319
    iget v4, v4, Lcom/tencent/mm/j/b;->cgU:I

    packed-switch v4, :pswitch_data_1

    .line 1328
    const v4, 0x7f0709eb

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1332
    :goto_11
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_24

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1333
    :goto_12
    invoke-static/range {p2 .. p2}, Lcom/tencent/mm/model/w;->cT(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_23

    .line 1334
    move-object/from16 v0, p7

    iput-object v13, v0, Lcom/tencent/mm/pointers/PString;->value:Ljava/lang/String;

    .line 1337
    :cond_23
    const-string v6, ""

    move-object/from16 v0, p6

    iput-object v6, v0, Lcom/tencent/mm/pointers/PString;->value:Ljava/lang/String;

    move-object v7, v5

    .line 1338
    goto/16 :goto_8

    .line 1321
    :pswitch_4
    const v4, 0x7f0709ec

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_11

    .line 1324
    :pswitch_5
    const v4, 0x7f0709ed

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_11

    .line 1332
    :cond_24
    const-string v5, ""

    goto :goto_12

    .line 1341
    :sswitch_14
    invoke-static {v4}, Lcom/tencent/mm/sdk/platformtools/cj;->sT(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1343
    invoke-static {v4}, Lcom/tencent/mm/j/b;->bR(Ljava/lang/String;)Lcom/tencent/mm/j/b;

    move-result-object v5

    .line 1344
    if-nez v5, :cond_25

    .line 1345
    const-string v4, "MicroMsg.MMNotification"

    const-string v5, "decode msg content failed"

    invoke-static {v4, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1346
    const-string v4, ""

    goto/16 :goto_3

    .line 1348
    :cond_25
    const-string p0, ""

    .line 1349
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_27

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ": "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v5, Lcom/tencent/mm/j/b;->title:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1350
    :goto_13
    invoke-static/range {p2 .. p2}, Lcom/tencent/mm/model/w;->cT(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_26

    .line 1351
    move-object/from16 v0, p7

    iput-object v13, v0, Lcom/tencent/mm/pointers/PString;->value:Ljava/lang/String;

    .line 1353
    :cond_26
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_28

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "%s: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v5, Lcom/tencent/mm/j/b;->title:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_14
    move-object/from16 v0, p6

    iput-object v5, v0, Lcom/tencent/mm/pointers/PString;->value:Ljava/lang/String;

    move-object v7, v4

    move-object v4, p0

    .line 1354
    goto/16 :goto_8

    .line 1349
    :cond_27
    iget-object v4, v5, Lcom/tencent/mm/j/b;->title:Ljava/lang/String;

    goto :goto_13

    .line 1353
    :cond_28
    iget-object v5, v5, Lcom/tencent/mm/j/b;->title:Ljava/lang/String;

    goto :goto_14

    .line 1361
    :sswitch_15
    invoke-static {v4}, Lcom/tencent/mm/sdk/platformtools/cj;->sT(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1363
    invoke-static {v4}, Lcom/tencent/mm/j/b;->bR(Ljava/lang/String;)Lcom/tencent/mm/j/b;

    move-result-object v5

    .line 1364
    if-nez v5, :cond_29

    .line 1365
    const-string v4, "MicroMsg.MMNotification"

    const-string v5, "decode msg content failed"

    invoke-static {v4, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1366
    const-string v4, ""

    goto/16 :goto_3

    .line 1368
    :cond_29
    iget v4, v5, Lcom/tencent/mm/j/b;->type:I

    packed-switch v4, :pswitch_data_2

    .line 1455
    :pswitch_6
    const-string v4, ""

    .line 1456
    const-string v7, ""

    goto/16 :goto_8

    .line 1370
    :pswitch_7
    const-string p0, ""

    .line 1371
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2b

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ": "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v5, Lcom/tencent/mm/j/b;->title:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1372
    :goto_15
    invoke-static/range {p2 .. p2}, Lcom/tencent/mm/model/w;->cT(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2a

    .line 1373
    move-object/from16 v0, p7

    iput-object v13, v0, Lcom/tencent/mm/pointers/PString;->value:Ljava/lang/String;

    .line 1375
    :cond_2a
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_2c

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "%s: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v5, Lcom/tencent/mm/j/b;->title:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_16
    move-object/from16 v0, p6

    iput-object v5, v0, Lcom/tencent/mm/pointers/PString;->value:Ljava/lang/String;

    move-object v7, v4

    move-object v4, p0

    .line 1376
    goto/16 :goto_8

    .line 1371
    :cond_2b
    iget-object v4, v5, Lcom/tencent/mm/j/b;->title:Ljava/lang/String;

    goto :goto_15

    .line 1375
    :cond_2c
    iget-object v5, v5, Lcom/tencent/mm/j/b;->title:Ljava/lang/String;

    goto :goto_16

    .line 1379
    :pswitch_8
    const v4, 0x7f0709de

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 1380
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2e

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1381
    :goto_17
    invoke-static/range {p2 .. p2}, Lcom/tencent/mm/model/w;->cT(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2d

    .line 1382
    move-object/from16 v0, p7

    iput-object v13, v0, Lcom/tencent/mm/pointers/PString;->value:Ljava/lang/String;

    .line 1384
    :cond_2d
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2f

    const-string v5, "%s: "

    :goto_18
    move-object/from16 v0, p6

    iput-object v5, v0, Lcom/tencent/mm/pointers/PString;->value:Ljava/lang/String;

    move-object v7, v4

    move-object v4, p0

    .line 1385
    goto/16 :goto_8

    .line 1380
    :cond_2e
    const-string v4, ""

    goto :goto_17

    .line 1384
    :cond_2f
    const-string v5, ""

    goto :goto_18

    .line 1388
    :pswitch_9
    const v4, 0x7f0709df

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 1389
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_31

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1390
    :goto_19
    invoke-static/range {p2 .. p2}, Lcom/tencent/mm/model/w;->cT(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_30

    .line 1391
    move-object/from16 v0, p7

    iput-object v13, v0, Lcom/tencent/mm/pointers/PString;->value:Ljava/lang/String;

    .line 1393
    :cond_30
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_32

    const-string v5, "%s: "

    :goto_1a
    move-object/from16 v0, p6

    iput-object v5, v0, Lcom/tencent/mm/pointers/PString;->value:Ljava/lang/String;

    move-object v7, v4

    move-object v4, p0

    .line 1394
    goto/16 :goto_8

    .line 1389
    :cond_31
    const-string v4, ""

    goto :goto_19

    .line 1393
    :cond_32
    const-string v5, ""

    goto :goto_1a

    .line 1397
    :pswitch_a
    const v4, 0x7f0709e1

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 1398
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_34

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1399
    :goto_1b
    invoke-static/range {p2 .. p2}, Lcom/tencent/mm/model/w;->cT(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_33

    .line 1400
    move-object/from16 v0, p7

    iput-object v13, v0, Lcom/tencent/mm/pointers/PString;->value:Ljava/lang/String;

    .line 1402
    :cond_33
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_35

    const-string v5, "%s: "

    :goto_1c
    move-object/from16 v0, p6

    iput-object v5, v0, Lcom/tencent/mm/pointers/PString;->value:Ljava/lang/String;

    move-object v7, v4

    move-object v4, p0

    .line 1403
    goto/16 :goto_8

    .line 1398
    :cond_34
    const-string v4, ""

    goto :goto_1b

    .line 1402
    :cond_35
    const-string v5, ""

    goto :goto_1c

    .line 1405
    :pswitch_b
    const v4, 0x7f0709e4

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 1406
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_37

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1407
    :goto_1d
    invoke-static/range {p2 .. p2}, Lcom/tencent/mm/model/w;->cT(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_36

    .line 1408
    move-object/from16 v0, p7

    iput-object v13, v0, Lcom/tencent/mm/pointers/PString;->value:Ljava/lang/String;

    .line 1410
    :cond_36
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_38

    const-string v5, "%s: "

    :goto_1e
    move-object/from16 v0, p6

    iput-object v5, v0, Lcom/tencent/mm/pointers/PString;->value:Ljava/lang/String;

    move-object v7, v4

    move-object v4, p0

    .line 1411
    goto/16 :goto_8

    .line 1406
    :cond_37
    const-string v4, ""

    goto :goto_1d

    .line 1410
    :cond_38
    const-string v5, ""

    goto :goto_1e

    .line 1413
    :pswitch_c
    const v4, 0x7f0709e2

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 1414
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3a

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1415
    :goto_1f
    invoke-static/range {p2 .. p2}, Lcom/tencent/mm/model/w;->cT(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_39

    .line 1416
    move-object/from16 v0, p7

    iput-object v13, v0, Lcom/tencent/mm/pointers/PString;->value:Ljava/lang/String;

    .line 1418
    :cond_39
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3b

    const-string v5, "%s: "

    :goto_20
    move-object/from16 v0, p6

    iput-object v5, v0, Lcom/tencent/mm/pointers/PString;->value:Ljava/lang/String;

    move-object v7, v4

    move-object v4, p0

    .line 1419
    goto/16 :goto_8

    .line 1414
    :cond_3a
    const-string v4, ""

    goto :goto_1f

    .line 1418
    :cond_3b
    const-string v5, ""

    goto :goto_20

    .line 1421
    :pswitch_d
    const v4, 0x7f0709e3

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 1422
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3d

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1423
    :goto_21
    invoke-static/range {p2 .. p2}, Lcom/tencent/mm/model/w;->cT(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3c

    .line 1424
    move-object/from16 v0, p7

    iput-object v13, v0, Lcom/tencent/mm/pointers/PString;->value:Ljava/lang/String;

    .line 1426
    :cond_3c
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3e

    const-string v5, "%s: "

    :goto_22
    move-object/from16 v0, p6

    iput-object v5, v0, Lcom/tencent/mm/pointers/PString;->value:Ljava/lang/String;

    move-object v7, v4

    move-object v4, p0

    .line 1427
    goto/16 :goto_8

    .line 1422
    :cond_3d
    const-string v4, ""

    goto :goto_21

    .line 1426
    :cond_3e
    const-string v5, ""

    goto :goto_22

    .line 1429
    :pswitch_e
    const v4, 0x7f0709e9

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 1430
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_40

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1431
    :goto_23
    invoke-static/range {p2 .. p2}, Lcom/tencent/mm/model/w;->cT(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3f

    .line 1432
    move-object/from16 v0, p7

    iput-object v13, v0, Lcom/tencent/mm/pointers/PString;->value:Ljava/lang/String;

    .line 1435
    :cond_3f
    const-string v5, ""

    move-object/from16 v0, p6

    iput-object v5, v0, Lcom/tencent/mm/pointers/PString;->value:Ljava/lang/String;

    move-object v7, v4

    move-object v4, p0

    .line 1436
    goto/16 :goto_8

    .line 1430
    :cond_40
    const-string v4, ""

    goto :goto_23

    .line 1438
    :pswitch_f
    const v4, 0x7f0709ea

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 1439
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_42

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1440
    :goto_24
    invoke-static/range {p2 .. p2}, Lcom/tencent/mm/model/w;->cT(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_41

    .line 1441
    move-object/from16 v0, p7

    iput-object v13, v0, Lcom/tencent/mm/pointers/PString;->value:Ljava/lang/String;

    .line 1444
    :cond_41
    const-string v5, ""

    move-object/from16 v0, p6

    iput-object v5, v0, Lcom/tencent/mm/pointers/PString;->value:Ljava/lang/String;

    move-object v7, v4

    move-object v4, p0

    .line 1445
    goto/16 :goto_8

    .line 1439
    :cond_42
    const-string v4, ""

    goto :goto_24

    .line 1447
    :pswitch_10
    const-string p0, ""

    .line 1448
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_44

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ": "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v5, Lcom/tencent/mm/j/b;->title:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1449
    :goto_25
    invoke-static/range {p2 .. p2}, Lcom/tencent/mm/model/w;->cT(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_43

    .line 1450
    move-object/from16 v0, p7

    iput-object v13, v0, Lcom/tencent/mm/pointers/PString;->value:Ljava/lang/String;

    .line 1452
    :cond_43
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_45

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "%s: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v5, Lcom/tencent/mm/j/b;->title:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_26
    move-object/from16 v0, p6

    iput-object v5, v0, Lcom/tencent/mm/pointers/PString;->value:Ljava/lang/String;

    move-object v7, v4

    move-object v4, p0

    .line 1453
    goto/16 :goto_8

    .line 1448
    :cond_44
    iget-object v4, v5, Lcom/tencent/mm/j/b;->title:Ljava/lang/String;

    goto :goto_25

    .line 1452
    :cond_45
    iget-object v5, v5, Lcom/tencent/mm/j/b;->title:Ljava/lang/String;

    goto :goto_26

    .line 1463
    :sswitch_16
    if-eqz v11, :cond_46

    .line 1464
    invoke-static {v7}, Lcom/tencent/mm/booter/w;->aX(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1466
    :cond_46
    invoke-static {v7}, Lcom/tencent/mm/j/b;->bT(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/mm/booter/w;->aW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1467
    move-object/from16 v0, p6

    iput-object v7, v0, Lcom/tencent/mm/pointers/PString;->value:Ljava/lang/String;

    move-object v4, v14

    .line 1468
    goto/16 :goto_8

    .line 1471
    :sswitch_17
    invoke-static {v7}, Lcom/tencent/mm/j/b;->bS(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p6

    iput-object v4, v0, Lcom/tencent/mm/pointers/PString;->value:Ljava/lang/String;

    .line 1472
    move-object/from16 v0, p6

    iget-object v4, v0, Lcom/tencent/mm/pointers/PString;->value:Ljava/lang/String;

    goto/16 :goto_8

    .line 1477
    :sswitch_18
    invoke-static {v7}, Lcom/tencent/mm/q/b;->eS(Ljava/lang/String;)Lcom/tencent/mm/q/b;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/mm/q/a;->b(Lcom/tencent/mm/q/b;)Ljava/lang/String;

    move-result-object v7

    .line 1478
    move-object/from16 v0, p6

    iput-object v7, v0, Lcom/tencent/mm/pointers/PString;->value:Ljava/lang/String;

    goto/16 :goto_7

    .line 1492
    :cond_47
    const-string v4, "@bottle:"

    invoke-virtual {v7, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1493
    array-length v5, v4

    const/4 v6, 0x1

    if-le v5, v6, :cond_48

    .line 1494
    const/4 v5, 0x1

    aget-object v5, v4, v5

    move-object/from16 v0, p6

    iput-object v5, v0, Lcom/tencent/mm/pointers/PString;->value:Ljava/lang/String;

    .line 1495
    const/4 v5, 0x1

    aget-object v4, v4, v5

    goto/16 :goto_3

    .line 1498
    :cond_48
    const-string v4, ""

    move-object/from16 v0, p6

    iput-object v4, v0, Lcom/tencent/mm/pointers/PString;->value:Ljava/lang/String;

    .line 1499
    const/4 v4, 0x0

    goto/16 :goto_3

    .line 1501
    :cond_49
    const/4 v5, 0x0

    .line 1502
    const-string v6, ":"

    invoke-virtual {v7, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1503
    if-eqz v6, :cond_4a

    array-length v8, v6

    if-gtz v8, :cond_4b

    .line 1504
    :cond_4a
    const-string v4, ""

    move-object/from16 v0, p6

    iput-object v4, v0, Lcom/tencent/mm/pointers/PString;->value:Ljava/lang/String;

    .line 1505
    const/4 v4, 0x0

    goto/16 :goto_3

    .line 1507
    :cond_4b
    const/4 v8, 0x0

    aget-object v6, v6, v8

    .line 1509
    invoke-static {v6}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4e

    .line 1510
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v8

    invoke-virtual {v8}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/tencent/mm/storage/k;->tO(Ljava/lang/String;)Lcom/tencent/mm/storage/i;

    move-result-object v6

    .line 1511
    if-eqz v6, :cond_4c

    invoke-virtual {v6}, Lcom/tencent/mm/storage/i;->rD()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_4c

    .line 1512
    invoke-virtual {v6}, Lcom/tencent/mm/storage/i;->rD()Ljava/lang/String;

    move-result-object v5

    .line 1516
    :cond_4c
    if-eqz v5, :cond_4d

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-gtz v8, :cond_4e

    .line 1517
    :cond_4d
    invoke-virtual {v6}, Lcom/tencent/mm/storage/i;->rC()Ljava/lang/String;

    move-result-object v5

    .line 1520
    :cond_4e
    invoke-static {v4}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4f

    .line 1521
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p6

    iput-object v6, v0, Lcom/tencent/mm/pointers/PString;->value:Ljava/lang/String;

    .line 1522
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_3

    .line 1524
    :cond_4f
    const-string v4, "@bottle:"

    invoke-virtual {v7, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1525
    array-length v6, v4

    const/4 v7, 0x1

    if-le v6, v7, :cond_50

    .line 1526
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v7, v4, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p6

    iput-object v6, v0, Lcom/tencent/mm/pointers/PString;->value:Ljava/lang/String;

    .line 1527
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v4, v4, v6

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_3

    .line 1529
    :cond_50
    move-object/from16 v0, p6

    iput-object v5, v0, Lcom/tencent/mm/pointers/PString;->value:Ljava/lang/String;

    move-object v4, v5

    .line 1530
    goto/16 :goto_3

    .line 1533
    :cond_51
    invoke-static {v7}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_52

    .line 1534
    const-string v5, ""

    move-object/from16 v0, p6

    iput-object v5, v0, Lcom/tencent/mm/pointers/PString;->value:Ljava/lang/String;

    .line 1538
    :cond_52
    invoke-static {v13}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_58

    .line 1539
    if-eqz v12, :cond_53

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_53

    .line 1540
    invoke-static {v7, v13, v12}, Lcom/tencent/mm/booter/w;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1543
    :cond_53
    move-object/from16 v0, p7

    iget-object v5, v0, Lcom/tencent/mm/pointers/PString;->value:Ljava/lang/String;

    invoke-static {v5}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_54

    .line 1544
    move-object/from16 v0, p6

    iget-object v5, v0, Lcom/tencent/mm/pointers/PString;->value:Ljava/lang/String;

    const-string v6, "%s"

    invoke-static {v5, v13, v6}, Lcom/tencent/mm/booter/w;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p6

    iput-object v5, v0, Lcom/tencent/mm/pointers/PString;->value:Ljava/lang/String;

    .line 1545
    move-object/from16 v0, p7

    iput-object v13, v0, Lcom/tencent/mm/pointers/PString;->value:Ljava/lang/String;

    .line 1548
    :cond_54
    invoke-static {v7}, Lcom/tencent/mm/compatible/g/n;->bm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1549
    move-object/from16 v0, p6

    iget-object v6, v0, Lcom/tencent/mm/pointers/PString;->value:Ljava/lang/String;

    invoke-static {v6}, Lcom/tencent/mm/compatible/g/n;->bm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p6

    iput-object v6, v0, Lcom/tencent/mm/pointers/PString;->value:Ljava/lang/String;

    .line 1551
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1552
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p6

    iget-object v7, v0, Lcom/tencent/mm/pointers/PString;->value:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p6

    iput-object v4, v0, Lcom/tencent/mm/pointers/PString;->value:Ljava/lang/String;

    .line 1554
    if-eqz p9, :cond_56

    move-object/from16 v0, p6

    iget-object v4, v0, Lcom/tencent/mm/pointers/PString;->value:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v6, 0x20

    if-ne v4, v6, :cond_57

    const/16 v4, 0x2f

    move/from16 v0, p4

    if-eq v0, v4, :cond_55

    const v4, 0x100031

    move/from16 v0, p4

    if-ne v0, v4, :cond_57

    :cond_55
    move-object/from16 v0, p6

    iput-object v5, v0, Lcom/tencent/mm/pointers/PString;->value:Ljava/lang/String;

    const/4 v4, 0x1

    :goto_27
    if-nez v4, :cond_56

    .line 1555
    move/from16 v0, p4

    move-object/from16 v1, p6

    move-object/from16 v2, p7

    move-object/from16 v3, p8

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/mm/booter/w;->a(ILcom/tencent/mm/pointers/PString;Lcom/tencent/mm/pointers/PString;Lcom/tencent/mm/pointers/PInt;)V

    .line 1558
    :cond_56
    invoke-static {v5}, Lcom/tencent/mm/sdk/platformtools/cj;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_3

    .line 1554
    :cond_57
    const/4 v4, 0x0

    goto :goto_27

    .line 1561
    :cond_58
    invoke-static/range {p2 .. p2}, Lcom/tencent/mm/model/w;->cT(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5f

    .line 1562
    if-eqz v4, :cond_59

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_59

    move-object v7, v4

    .line 1566
    :cond_59
    invoke-static {v7}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5a

    .line 1567
    const-string v4, ""

    move-object/from16 v0, p6

    iput-object v4, v0, Lcom/tencent/mm/pointers/PString;->value:Ljava/lang/String;

    .line 1568
    const-string v4, ""

    move-object/from16 v0, p7

    iput-object v4, v0, Lcom/tencent/mm/pointers/PString;->value:Ljava/lang/String;

    .line 1569
    const-string v4, ""

    goto/16 :goto_3

    .line 1572
    :cond_5a
    if-nez p1, :cond_5d

    .line 1573
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "%s:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p6

    iput-object v4, v0, Lcom/tencent/mm/pointers/PString;->value:Ljava/lang/String;

    .line 1577
    :goto_28
    if-eqz p9, :cond_5e

    .line 1578
    move/from16 v0, p4

    move-object/from16 v1, p6

    move-object/from16 v2, p7

    move-object/from16 v3, p8

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/mm/booter/w;->a(ILcom/tencent/mm/pointers/PString;Lcom/tencent/mm/pointers/PString;Lcom/tencent/mm/pointers/PInt;)V

    move-object v4, v7

    .line 1593
    :cond_5b
    :goto_29
    if-eqz v11, :cond_5c

    .line 1594
    invoke-static {v4}, Lcom/tencent/mm/booter/w;->aX(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1596
    :cond_5c
    invoke-static {v4}, Lcom/tencent/mm/ao/a;->ti(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/mm/sdk/platformtools/cj;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_3

    .line 1575
    :cond_5d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f070a2c

    move-object/from16 v0, p5

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p6

    iput-object v4, v0, Lcom/tencent/mm/pointers/PString;->value:Ljava/lang/String;

    goto :goto_28

    .line 1580
    :cond_5e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p7

    iget-object v5, v0, Lcom/tencent/mm/pointers/PString;->value:Ljava/lang/String;

    invoke-static {v5}, Lcom/tencent/mm/model/w;->cu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_3

    .line 1584
    :cond_5f
    if-eqz v4, :cond_60

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_60

    .line 1586
    move-object/from16 v0, p6

    iput-object v4, v0, Lcom/tencent/mm/pointers/PString;->value:Ljava/lang/String;

    .line 1588
    :goto_2a
    if-eqz p9, :cond_5b

    .line 1589
    move/from16 v0, p4

    move-object/from16 v1, p6

    move-object/from16 v2, p7

    move-object/from16 v3, p8

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/mm/booter/w;->a(ILcom/tencent/mm/pointers/PString;Lcom/tencent/mm/pointers/PString;Lcom/tencent/mm/pointers/PInt;)V

    goto :goto_29

    :cond_60
    move-object v4, v7

    goto :goto_2a

    :cond_61
    move-object/from16 v4, p2

    goto/16 :goto_e

    :cond_62
    move-object/from16 v4, p2

    goto/16 :goto_f

    :cond_63
    move-object/from16 v7, p3

    goto/16 :goto_6

    :cond_64
    move-object/from16 v4, p3

    move-object v12, v5

    move-object v13, v6

    goto/16 :goto_5

    :cond_65
    move v11, v4

    goto/16 :goto_4

    .line 1074
    nop

    :sswitch_data_0
    .sparse-switch
        -0x6fffffff -> :sswitch_7
        -0x6ffffffe -> :sswitch_7
        -0x6ffffffd -> :sswitch_7
        -0x6ffffffc -> :sswitch_a
        -0x6ffffffa -> :sswitch_14
        0x3 -> :sswitch_0
        0xb -> :sswitch_3
        0xd -> :sswitch_2
        0x17 -> :sswitch_0
        0x21 -> :sswitch_0
        0x22 -> :sswitch_4
        0x23 -> :sswitch_d
        0x24 -> :sswitch_3
        0x25 -> :sswitch_b
        0x27 -> :sswitch_2
        0x28 -> :sswitch_c
        0x2a -> :sswitch_e
        0x2b -> :sswitch_5
        0x2f -> :sswitch_1
        0x30 -> :sswitch_f
        0x31 -> :sswitch_15
        0x32 -> :sswitch_8
        0x34 -> :sswitch_9
        0x35 -> :sswitch_8
        0x37 -> :sswitch_18
        0x39 -> :sswitch_18
        0x100031 -> :sswitch_1
        0xbbaedf -> :sswitch_6
        0x1000031 -> :sswitch_15
        0x10000031 -> :sswitch_15
        0x11000031 -> :sswitch_16
        0x12000031 -> :sswitch_10
        0x13000031 -> :sswitch_17
        0x14000031 -> :sswitch_11
        0x16000031 -> :sswitch_13
        0x18000031 -> :sswitch_12
    .end sparse-switch

    .line 1176
    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 1319
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 1368
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_d
        :pswitch_b
        :pswitch_c
        :pswitch_e
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_f
        :pswitch_6
        :pswitch_10
    .end packed-switch
.end method

.method private static a(ILcom/tencent/mm/pointers/PString;Lcom/tencent/mm/pointers/PString;Lcom/tencent/mm/pointers/PInt;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v0, 0x96

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1622
    iget-object v1, p1, Lcom/tencent/mm/pointers/PString;->value:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_1

    const/16 v1, 0x2f

    if-eq p0, v1, :cond_0

    const v1, 0x100031

    if-ne p0, v1, :cond_1

    .line 1640
    :cond_0
    :goto_0
    return-void

    .line 1627
    :cond_1
    iget-object v1, p1, Lcom/tencent/mm/pointers/PString;->value:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/mm/ao/a;->ti(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/tencent/mm/pointers/PString;->value:Ljava/lang/String;

    .line 1628
    iget-object v1, p1, Lcom/tencent/mm/pointers/PString;->value:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v0, :cond_2

    .line 1629
    iget-object v1, p1, Lcom/tencent/mm/pointers/PString;->value:Ljava/lang/String;

    iget-object v2, p1, Lcom/tencent/mm/pointers/PString;->value:Ljava/lang/String;

    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_5

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x25

    if-eq v3, v4, :cond_4

    :goto_2
    invoke-virtual {v1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/pointers/PString;->value:Ljava/lang/String;

    .line 1631
    :cond_2
    sget-object v0, Lcom/tencent/mm/booter/w;->cau:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    .line 1632
    :goto_3
    iget-object v1, p1, Lcom/tencent/mm/pointers/PString;->value:Ljava/lang/String;

    const-string v2, "%%"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "%s"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    if-nez v0, :cond_7

    .line 1633
    :cond_3
    iput v5, p3, Lcom/tencent/mm/pointers/PInt;->value:I

    goto :goto_0

    .line 1629
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_2

    .line 1631
    :cond_6
    sget-object v0, Lcom/tencent/mm/booter/w;->cau:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/TextPaint;

    goto :goto_3

    .line 1637
    :cond_7
    iget-object v1, p1, Lcom/tencent/mm/pointers/PString;->value:Ljava/lang/String;

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p2, Lcom/tencent/mm/pointers/PString;->value:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1638
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v1, Lcom/tencent/mm/booter/w;->cat:I

    if-lez v1, :cond_8

    sget v1, Lcom/tencent/mm/booter/w;->cat:I

    :goto_4
    invoke-static {v3, v2, v1}, Lcom/tencent/mm/ao/b;->d(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v2

    sget v1, Lcom/tencent/mm/booter/w;->cas:I

    if-lez v1, :cond_9

    sget v1, Lcom/tencent/mm/booter/w;->cas:I

    :goto_5
    int-to-float v1, v1

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v2, v0, v1, v3}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/pointers/PString;->value:Ljava/lang/String;

    .line 1639
    iput v6, p3, Lcom/tencent/mm/pointers/PInt;->value:I

    goto/16 :goto_0

    .line 1638
    :cond_8
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v4, 0x4160

    invoke-static {v1, v4}, Lcom/tencent/mm/sdk/platformtools/e;->a(Landroid/content/Context;F)I

    move-result v1

    goto :goto_4

    :cond_9
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v3, 0x4348

    invoke-static {v1, v3}, Lcom/tencent/mm/sdk/platformtools/e;->a(Landroid/content/Context;F)I

    move-result v1

    goto :goto_5
.end method

.method public static a(Landroid/text/TextPaint;)V
    .locals 1
    .parameter

    .prologue
    .line 965
    sget-object v0, Lcom/tencent/mm/booter/w;->cau:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/mm/booter/w;->cau:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 966
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/tencent/mm/booter/w;->cau:Ljava/lang/ref/WeakReference;

    .line 968
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/booter/w;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 17
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 80
    invoke-static {}, Lcom/tencent/mm/model/be;->se()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "keep_app_silent"

    invoke-static {v2}, Lcom/tencent/mm/sdk/platformtools/am;->sG(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "MicroMsg.MMNotification"

    const-string v3, "shouldKeepSilent: is locked"

    invoke-static {v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    :goto_0
    const-string v3, "MicroMsg.MMNotification"

    const-string v4, "deal notify"

    invoke-static {v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Landroid/text/format/Time;

    invoke-direct {v4}, Landroid/text/format/Time;-><init>()V

    invoke-virtual {v4}, Landroid/text/format/Time;->setToNow()V

    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/n/ac;->wR()Z

    move-result v3

    if-nez v3, :cond_13

    iget v3, v4, Landroid/text/format/Time;->hour:I

    iget v5, v4, Landroid/text/format/Time;->minute:I

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->azs()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "settings_active_time_full"

    const/4 v8, 0x1

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_12

    const-string v7, "settings_active_begin_time_hour"

    const/16 v8, 0x8

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    const-string v8, "settings_active_begin_time_min"

    const/4 v9, 0x0

    invoke-interface {v6, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    const-string v9, "settings_active_end_time_hour"

    const/16 v10, 0x17

    invoke-interface {v6, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    const-string v10, "settings_active_end_time_min"

    const/4 v11, 0x0

    invoke-interface {v6, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    if-ne v7, v9, :cond_0

    if-eq v8, v6, :cond_12

    :cond_0
    if-ne v7, v9, :cond_6

    if-ge v8, v6, :cond_6

    if-ne v3, v7, :cond_1

    if-lt v5, v8, :cond_1

    if-le v5, v6, :cond_12

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-nez v3, :cond_13

    const-string v2, "MicroMsg.MMNotification"

    const-string v3, "ignore notification during background deactive time"

    invoke-static {v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_2
    return-void

    :cond_3
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/tencent/mm/booter/w;->cak:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_5

    const-string v2, "MicroMsg.MMNotification"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "shouldKeepSilent: lastNotSilentTime = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/tencent/mm/booter/w;->cak:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/tencent/mm/booter/w;->cak:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/tencent/mm/booter/w;->cak:J

    const-wide/16 v6, 0x1388

    add-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-gez v2, :cond_4

    const-string v2, "MicroMsg.MMNotification"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "shouldKeepSilent: lastNotSilentTime = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/tencent/mm/booter/w;->cak:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " current time = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/tencent/mm/booter/w;->caj:Z

    goto/16 :goto_0

    :cond_6
    if-le v9, v7, :cond_b

    if-le v3, v7, :cond_7

    if-lt v3, v9, :cond_9

    :cond_7
    if-ne v3, v7, :cond_8

    if-ge v5, v8, :cond_9

    :cond_8
    if-ne v3, v9, :cond_a

    if-gt v5, v6, :cond_a

    :cond_9
    const/4 v3, 0x1

    goto/16 :goto_1

    :cond_a
    const/4 v3, 0x0

    goto/16 :goto_1

    :cond_b
    if-lt v9, v7, :cond_c

    if-ne v7, v9, :cond_12

    if-le v8, v6, :cond_12

    :cond_c
    if-le v3, v7, :cond_d

    const/16 v10, 0x17

    if-le v3, v10, :cond_10

    :cond_d
    if-ne v3, v7, :cond_e

    if-ge v5, v8, :cond_10

    :cond_e
    if-ne v3, v9, :cond_f

    if-le v5, v6, :cond_10

    :cond_f
    if-lez v3, :cond_11

    if-ge v3, v9, :cond_11

    :cond_10
    const/4 v3, 0x1

    goto/16 :goto_1

    :cond_11
    const/4 v3, 0x0

    goto/16 :goto_1

    :cond_12
    const/4 v3, 0x1

    goto/16 :goto_1

    :cond_13
    invoke-static {}, Lcom/tencent/mm/model/v;->tz()Z

    move-result v3

    invoke-static {}, Lcom/tencent/mm/model/v;->tH()I

    move-result v5

    invoke-static {}, Lcom/tencent/mm/model/v;->tI()I

    move-result v6

    invoke-virtual {v4}, Landroid/text/format/Time;->setToNow()V

    invoke-static/range {p1 .. p1}, Lcom/tencent/mm/model/w;->dc(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_14

    if-eqz v3, :cond_14

    iget v3, v4, Landroid/text/format/Time;->hour:I

    invoke-static {v3, v5, v6}, Lcom/tencent/mm/sdk/platformtools/cj;->q(III)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_14
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/model/b;->sk()Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-static {}, Lcom/tencent/mm/model/v;->tn()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_15
    invoke-static/range {p1 .. p1}, Lcom/tencent/mm/model/w;->cq(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16

    new-instance v2, Lcom/tencent/mm/c/a/da;

    invoke-direct {v2}, Lcom/tencent/mm/c/a/da;-><init>()V

    iget-object v3, v2, Lcom/tencent/mm/c/a/da;->bOb:Lcom/tencent/mm/c/a/db;

    const/4 v4, 0x3

    iput v4, v3, Lcom/tencent/mm/c/a/db;->bOd:I

    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/tencent/mm/sdk/b/f;->f(Lcom/tencent/mm/sdk/b/e;)Z

    iget-object v2, v2, Lcom/tencent/mm/c/a/da;->bOc:Lcom/tencent/mm/c/a/dc;

    iget-boolean v2, v2, Lcom/tencent/mm/c/a/dc;->bMh:Z

    if-nez v2, :cond_2

    new-instance v2, Lcom/tencent/mm/c/a/da;

    invoke-direct {v2}, Lcom/tencent/mm/c/a/da;-><init>()V

    iget-object v3, v2, Lcom/tencent/mm/c/a/da;->bOb:Lcom/tencent/mm/c/a/db;

    const/4 v4, 0x1

    iput v4, v3, Lcom/tencent/mm/c/a/db;->bOd:I

    iget-object v3, v2, Lcom/tencent/mm/c/a/da;->bOb:Lcom/tencent/mm/c/a/db;

    move-object/from16 v0, p1

    iput-object v0, v3, Lcom/tencent/mm/c/a/db;->bOe:Ljava/lang/String;

    iget-object v3, v2, Lcom/tencent/mm/c/a/da;->bOb:Lcom/tencent/mm/c/a/db;

    const/4 v4, 0x3

    iput v4, v3, Lcom/tencent/mm/c/a/db;->bOf:I

    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/tencent/mm/sdk/b/f;->f(Lcom/tencent/mm/sdk/b/e;)Z

    goto/16 :goto_2

    :cond_16
    invoke-static/range {p1 .. p1}, Lcom/tencent/mm/model/w;->dg(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static/range {p1 .. p1}, Lcom/tencent/mm/model/w;->cp(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-static/range {p1 .. p1}, Lcom/tencent/mm/model/w;->df(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_17

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/mm/booter/w;->cad:Lcom/tencent/mm/storage/ak;

    invoke-static {}, Lcom/tencent/mm/model/v;->th()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tencent/mm/storage/ak;->uP(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_17
    :try_start_0
    new-instance v3, Lcom/tencent/mm/c/a/ia;

    invoke-direct {v3}, Lcom/tencent/mm/c/a/ia;-><init>()V

    iget-object v4, v3, Lcom/tencent/mm/c/a/ia;->bRw:Lcom/tencent/mm/c/a/ib;

    const/4 v5, 0x2

    iput v5, v4, Lcom/tencent/mm/c/a/ib;->bNk:I

    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/tencent/mm/sdk/b/f;->f(Lcom/tencent/mm/sdk/b/e;)Z

    iget-object v3, v3, Lcom/tencent/mm/c/a/ia;->bRx:Lcom/tencent/mm/c/a/ic;

    iget-boolean v3, v3, Lcom/tencent/mm/c/a/ic;->bRA:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_18

    const/4 v2, 0x1

    :cond_18
    move v4, v2

    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mm/booter/w;->cab:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/tencent/mm/booter/w;->I(Z)V

    if-nez v4, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mm/booter/w;->context:Landroid/content/Context;

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->azs()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v2, "settings_shake"

    const/4 v3, 0x1

    invoke-interface {v7, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1a

    and-int/lit8 v2, p4, 0x2

    if-eqz v2, :cond_1a

    const/4 v2, 0x1

    move v3, v2

    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mm/booter/w;->context:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/tencent/mm/sdk/platformtools/cj;->a(Landroid/content/Context;Z)V

    const-string v2, "settings_sound"

    const/4 v4, 0x1

    invoke-interface {v7, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1b

    and-int/lit8 v2, p4, 0x2

    if-eqz v2, :cond_1b

    const/4 v2, 0x1

    move v4, v2

    :goto_5
    const/4 v6, 0x1

    const/4 v5, 0x1

    const-string v2, "MicroMsg.MMNotification"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "msgType "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p3

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x32

    move/from16 v0, p3

    if-ne v0, v2, :cond_1e

    invoke-static/range {p2 .. p2}, Lcom/tencent/mm/booter/w;->aS(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_19

    sget-object v2, Lcom/tencent/mm/storage/ak;->ghI:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    :cond_19
    :try_start_1
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v2

    const v8, 0x11e01

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Lcom/tencent/mm/storage/e;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    move/from16 v16, v5

    move v5, v2

    move/from16 v2, v16

    :goto_6
    const-string v6, "MicroMsg.MMNotification"

    const-string v8, "msgType: %d, shakeMode: %s, soundMode:%s, voipSound: %s, voipAudioSound: %s"

    const/4 v9, 0x5

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v9, v10

    const/4 v3, 0x2

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v9, v3

    const/4 v3, 0x3

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v9, v3

    const/4 v3, 0x4

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v9, v3

    invoke-static {v6, v8, v9}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v4, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "keep_chatting_silent"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/mm/sdk/platformtools/am;->sG(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz v5, :cond_2

    if-eqz v2, :cond_2

    const-string v2, "settings.ringtone"

    sget-object v3, Lcom/tencent/mm/ui/setting/SettingsRingtoneUI;->hfS:Ljava/lang/String;

    invoke-interface {v7, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/tencent/mm/booter/w;->aV(Ljava/lang/String;)V

    goto/16 :goto_2

    :catch_0
    move-exception v3

    move v4, v2

    goto/16 :goto_3

    :cond_1a
    const/4 v2, 0x0

    move v3, v2

    goto/16 :goto_4

    :cond_1b
    const/4 v2, 0x0

    move v4, v2

    goto/16 :goto_5

    :catch_1
    move-exception v2

    const-string v8, "MicroMsg.MMNotification"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v5

    move v5, v6

    goto :goto_6

    :cond_1c
    invoke-static/range {p2 .. p2}, Lcom/tencent/mm/booter/w;->aR(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1d

    sget-object v2, Lcom/tencent/mm/storage/ak;->ghH:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    :cond_1d
    :try_start_2
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v2

    const v8, 0x11e02

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Lcom/tencent/mm/storage/e;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v2

    move v5, v6

    goto/16 :goto_6

    :catch_2
    move-exception v2

    const-string v8, "MicroMsg.MMNotification"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1e
    move v2, v5

    move v5, v6

    goto/16 :goto_6

    :cond_1f
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "@chatroom"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_20

    invoke-static/range {p1 .. p1}, Lcom/tencent/mm/model/w;->dg(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_21

    :cond_20
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/n/ac;->wR()Z

    :cond_21
    const-string v3, "MicroMsg.MMNotification"

    const-string v5, "dknotify [%d][%d][%d][%b][%b][%s][%d]"

    const/4 v2, 0x7

    new-array v6, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v2

    const/4 v2, 0x1

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    const/4 v2, 0x2

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    const/4 v2, 0x3

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v2

    const/4 v2, 0x4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v2

    const/4 v2, 0x5

    aput-object p1, v6, v2

    const/4 v7, 0x6

    if-nez p2, :cond_2c

    const/4 v2, -0x1

    :goto_7
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v7

    invoke-static {v3, v5, v6}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct/range {p0 .. p0}, Lcom/tencent/mm/booter/w;->cancel()V

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/tencent/mm/booter/w;->I(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mm/booter/w;->context:Landroid/content/Context;

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->azs()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v12

    const-string v2, "settings_new_msg_notification"

    const/4 v3, 0x1

    invoke-interface {v12, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2b

    const/4 v7, 0x0

    const/4 v9, -0x1

    const/4 v6, 0x0

    invoke-static/range {p1 .. p1}, Lcom/tencent/mm/model/w;->dg(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_22

    invoke-static/range {p1 .. p1}, Lcom/tencent/mm/model/w;->cp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-static/range {p1 .. p1}, Lcom/tencent/mm/model/w;->df(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2d

    :cond_22
    const/4 v2, 0x1

    move v11, v2

    :goto_8
    const/4 v2, 0x1

    if-eqz v11, :cond_48

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/mm/booter/w;->cad:Lcom/tencent/mm/storage/ak;

    invoke-static {}, Lcom/tencent/mm/model/v;->th()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/tencent/mm/storage/ak;->uP(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_48

    const/4 v2, 0x0

    move v5, v2

    :goto_9
    sget-object v2, Lcom/tencent/mm/booter/w;->cap:Ljava/util/Set;

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    const-string v2, "settings_sound"

    const/4 v3, 0x1

    invoke-interface {v12, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2e

    and-int/lit8 v2, p4, 0x2

    if-eqz v2, :cond_2e

    const/4 v2, 0x1

    move v10, v2

    :goto_a
    const/4 v8, 0x1

    const/4 v3, 0x1

    const/16 v2, 0x32

    move/from16 v0, p3

    if-eq v0, v2, :cond_23

    const/16 v2, 0x35

    move/from16 v0, p3

    if-ne v0, v2, :cond_31

    :cond_23
    invoke-static/range {p2 .. p2}, Lcom/tencent/mm/booter/w;->aS(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_24

    sget-object v2, Lcom/tencent/mm/storage/ak;->ghI:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    :cond_24
    :try_start_3
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v2

    const v14, 0x11e01

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v2, v14, v15}, Lcom/tencent/mm/storage/e;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result v2

    const v8, 0x7f020882

    move/from16 v16, v3

    move v3, v8

    move v8, v2

    move/from16 v2, v16

    :goto_b
    if-eqz v10, :cond_46

    if-nez v4, :cond_46

    if-eqz v5, :cond_46

    if-nez v13, :cond_46

    if-eqz v8, :cond_46

    if-eqz v2, :cond_46

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mm/booter/w;->context:Landroid/content/Context;

    const-string v8, "audio"

    invoke-virtual {v2, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    if-eqz v2, :cond_32

    invoke-virtual {v2}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v2

    if-eqz v2, :cond_32

    const/4 v6, 0x1

    move v2, v7

    :goto_c
    const-string v7, "settings_shake"

    const/4 v8, 0x1

    invoke-interface {v12, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_33

    and-int/lit8 v7, p4, 0x2

    if-eqz v7, :cond_33

    const/4 v7, 0x1

    :goto_d
    if-eqz v7, :cond_25

    if-nez v4, :cond_25

    if-eqz v5, :cond_25

    if-nez v13, :cond_25

    or-int/lit8 v2, v2, 0x2

    :cond_25
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/mm/booter/w;->context:Landroid/content/Context;

    move-object/from16 v0, p2

    invoke-static {v4, v0}, Lcom/tencent/mm/ao/a;->aj(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/mm/ao/a;->tj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tencent/mm/booter/w;->context:Landroid/content/Context;

    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-static {v5, v0, v4, v1, v7}, Lcom/tencent/mm/booter/w;->a(ILjava/lang/String;Ljava/lang/String;ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/tencent/mm/booter/w;->cai:I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/tencent/mm/booter/w;->cal:I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/tencent/mm/booter/w;->cam:Z

    sget-object v4, Lcom/tencent/mm/model/w;->chM:Ljava/lang/String;

    invoke-static {v4}, Lcom/tencent/mm/model/x;->dl(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/tencent/mm/booter/w;->cai:I

    const/4 v4, 0x0

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tencent/mm/model/b;->sx()Lcom/tencent/mm/storage/o;

    move-result-object v5

    const-string v8, "floatbottle"

    invoke-virtual {v5, v8}, Lcom/tencent/mm/storage/o;->tZ(Ljava/lang/String;)Lcom/tencent/mm/storage/n;

    move-result-object v5

    if-eqz v5, :cond_26

    invoke-virtual {v5}, Lcom/tencent/mm/storage/n;->rN()I

    move-result v4

    :cond_26
    sget-object v5, Lcom/tencent/mm/model/w;->chM:Ljava/lang/String;

    invoke-static {v5}, Lcom/tencent/mm/model/x;->dk(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/tencent/mm/booter/w;->cal:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/tencent/mm/booter/w;->cai:I

    const/4 v8, 0x1

    if-ne v5, v8, :cond_27

    if-lez v4, :cond_27

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/tencent/mm/booter/w;->cam:Z

    :cond_27
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/mm/booter/w;->cac:Ljava/lang/String;

    const/4 v5, 0x0

    if-lez v4, :cond_45

    invoke-static {}, Lcom/tencent/mm/model/x;->tU()I

    move-result v4

    :goto_e
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/tencent/mm/booter/w;->cam:Z

    if-eqz v5, :cond_34

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tencent/mm/booter/w;->context:Landroid/content/Context;

    const v7, 0x7f0700bd

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tencent/mm/booter/w;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f080002

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v9, v10

    invoke-virtual {v5, v8, v4, v9}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    :goto_f
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v8

    invoke-virtual {v8}, Lcom/tencent/mm/model/b;->sx()Lcom/tencent/mm/storage/o;

    move-result-object v8

    invoke-virtual {v8}, Lcom/tencent/mm/storage/o;->aAR()I

    move-result v8

    if-lez v8, :cond_44

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/tencent/mm/booter/w;->context:Landroid/content/Context;

    const v10, 0x7f0701ac

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget v9, v0, Lcom/tencent/mm/booter/w;->cal:I

    const/4 v10, 0x1

    if-gt v9, v10, :cond_28

    if-nez v11, :cond_37

    :cond_28
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, " "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_10
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget v5, v0, Lcom/tencent/mm/booter/w;->cai:I

    const/4 v8, 0x1

    if-gt v5, v8, :cond_29

    if-eqz v11, :cond_29

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tencent/mm/booter/w;->context:Landroid/content/Context;

    const v7, 0x7f0700bd

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    :cond_29
    :goto_11
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Lcom/tencent/mm/booter/w;->c(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/tencent/mm/booter/w;->caf:Ljava/lang/String;

    invoke-static {v8}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2a

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tencent/mm/booter/w;->caf:Ljava/lang/String;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/tencent/mm/booter/w;->caf:Ljava/lang/String;

    :cond_2a
    move-object v10, v5

    and-int/lit8 v5, p4, 0x1

    if-nez v5, :cond_38

    const-string v2, "MicroMsg.MMNotification"

    const-string v3, "not show textNoify"

    invoke-static {v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2b
    :goto_12
    const/4 v2, 0x0

    const/4 v3, -0x1

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Lcom/tencent/mm/m/c;->a(Ljava/lang/String;ZI)Landroid/graphics/Bitmap;

    goto/16 :goto_2

    :cond_2c
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v2

    goto/16 :goto_7

    :cond_2d
    const/4 v2, 0x0

    move v11, v2

    goto/16 :goto_8

    :cond_2e
    const/4 v2, 0x0

    move v10, v2

    goto/16 :goto_a

    :catch_3
    move-exception v2

    move v2, v3

    move v3, v9

    goto/16 :goto_b

    :cond_2f
    invoke-static/range {p2 .. p2}, Lcom/tencent/mm/booter/w;->aR(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_30

    sget-object v2, Lcom/tencent/mm/storage/ak;->ghH:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_47

    :cond_30
    :try_start_4
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v2

    const v14, 0x11e02

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v2, v14, v15}, Lcom/tencent/mm/storage/e;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-result v2

    const v3, 0x7f020882

    goto/16 :goto_b

    :catch_4
    move-exception v2

    move v2, v3

    move v3, v9

    goto/16 :goto_b

    :cond_31
    const v2, 0x7f0205a4

    move/from16 v16, v3

    move v3, v2

    move/from16 v2, v16

    goto/16 :goto_b

    :cond_32
    const/4 v2, 0x1

    goto/16 :goto_c

    :cond_33
    const/4 v7, 0x0

    goto/16 :goto_d

    :cond_34
    move-object/from16 v0, p0

    iget v5, v0, Lcom/tencent/mm/booter/w;->cal:I

    const/4 v8, 0x1

    if-le v5, v8, :cond_36

    move-object/from16 v0, p0

    iget v5, v0, Lcom/tencent/mm/booter/w;->cai:I

    const/4 v7, 0x1

    if-le v5, v7, :cond_35

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tencent/mm/booter/w;->context:Landroid/content/Context;

    const v7, 0x7f0700bd

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tencent/mm/booter/w;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/high16 v8, 0x7f08

    move-object/from16 v0, p0

    iget v9, v0, Lcom/tencent/mm/booter/w;->cai:I

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/tencent/mm/booter/w;->cai:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v10, v13

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget v14, v0, Lcom/tencent/mm/booter/w;->cal:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v10, v13

    invoke-virtual {v5, v8, v9, v10}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_f

    :cond_35
    invoke-static/range {p1 .. p1}, Lcom/tencent/mm/model/w;->cu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tencent/mm/booter/w;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f080001

    move-object/from16 v0, p0

    iget v9, v0, Lcom/tencent/mm/booter/w;->cal:I

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/tencent/mm/booter/w;->cal:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v10, v13

    invoke-virtual {v5, v8, v9, v10}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_f

    :cond_36
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Lcom/tencent/mm/booter/w;->c(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v16, v7

    move-object v7, v5

    move-object/from16 v5, v16

    goto/16 :goto_f

    :cond_37
    const-string v5, ""

    goto/16 :goto_10

    :cond_38
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tencent/mm/booter/w;->cag:Landroid/content/Intent;

    if-eqz v5, :cond_3e

    const-string v5, "MicroMsg.MMNotification"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v11, "dkplugin uri:"

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/tencent/mm/booter/w;->cag:Landroid/content/Intent;

    const/4 v13, 0x0

    invoke-virtual {v11, v13}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tencent/mm/booter/w;->cag:Landroid/content/Intent;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/tencent/mm/booter/w;->cag:Landroid/content/Intent;

    :goto_13
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/tencent/mm/booter/w;->can:Landroid/graphics/Bitmap;

    if-eqz v8, :cond_39

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/tencent/mm/booter/w;->can:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/tencent/mm/booter/w;->can:Landroid/graphics/Bitmap;

    :cond_39
    move-object/from16 v0, p0

    iget v8, v0, Lcom/tencent/mm/booter/w;->cai:I

    const/4 v11, 0x1

    if-ne v8, v11, :cond_3b

    const/4 v8, 0x1

    if-eq v4, v8, :cond_3a

    if-nez v4, :cond_3b

    :cond_3a
    const/4 v4, 0x0

    const/4 v8, -0x1

    move-object/from16 v0, p1

    invoke-static {v0, v4, v8}, Lcom/tencent/mm/m/c;->a(Ljava/lang/String;ZI)Landroid/graphics/Bitmap;

    move-result-object v4

    if-nez v4, :cond_40

    const/4 v4, 0x0

    :goto_14
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/tencent/mm/booter/w;->can:Landroid/graphics/Bitmap;

    :cond_3b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/mm/booter/w;->context:Landroid/content/Context;

    const/4 v8, 0x0

    const/high16 v11, 0x800

    invoke-static {v4, v8, v5, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    const-string v4, "settings.ringtone"

    sget-object v5, Lcom/tencent/mm/ui/setting/SettingsRingtoneUI;->hfS:Ljava/lang/String;

    invoke-interface {v12, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3c

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3c

    sget-object v5, Lcom/tencent/mm/ui/setting/SettingsRingtoneUI;->hfS:Ljava/lang/String;

    :cond_3c
    sget-object v4, Lcom/tencent/mm/compatible/c/s;->ceN:Lcom/tencent/mm/compatible/c/m;

    iget v4, v4, Lcom/tencent/mm/compatible/c/m;->cej:I

    const/4 v8, 0x2

    if-eq v4, v8, :cond_43

    and-int/lit8 v4, v2, 0x2

    if-lez v4, :cond_42

    and-int/lit8 v4, v2, -0x3

    const-string v2, "MicroMsg.MMNotification"

    const-string v8, "mmnotify shake"

    invoke-static {v2, v8}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mm/booter/w;->context:Landroid/content/Context;

    const/4 v8, 0x1

    invoke-static {v2, v8}, Lcom/tencent/mm/sdk/platformtools/cj;->a(Landroid/content/Context;Z)V

    :goto_15
    and-int/lit8 v2, v4, 0x1

    if-lez v2, :cond_3d

    if-nez v6, :cond_3d

    and-int/lit8 v4, v4, -0x2

    const-string v2, "MicroMsg.MMNotification"

    const-string v8, "mmnotify sound"

    invoke-static {v2, v8}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/tencent/mm/booter/w;->aV(Ljava/lang/String;)V

    :cond_3d
    :goto_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mm/booter/w;->context:Landroid/content/Context;

    invoke-static {v2, v7}, Lcom/tencent/mm/ao/a;->aj(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mm/ao/a;->tj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mm/booter/w;->context:Landroid/content/Context;

    invoke-static {v2, v10}, Lcom/tencent/mm/ao/a;->aj(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mm/ao/a;->tj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mm/booter/w;->context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/tencent/mm/booter/w;->can:Landroid/graphics/Bitmap;

    invoke-static/range {v2 .. v11}, Lcom/tencent/mm/platformtools/af;->a(Landroid/content/Context;IILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/app/PendingIntent;)Landroid/app/Notification;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mm/booter/w;->context:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    const-string v7, "MicroMsg.MMNotification"

    const-string v8, "dknotify before getNotification [%d] [%b] [%s] [%s], isWiredHeadsetOnAndCanPlaySound=[%s]"

    const/4 v3, 0x5

    new-array v10, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v3

    const/4 v11, 0x1

    if-nez v2, :cond_41

    const/4 v3, 0x1

    :goto_17
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v10, v11

    const/4 v3, 0x2

    aput-object p1, v10, v3

    const/4 v3, 0x3

    aput-object v9, v10, v3

    const/4 v3, 0x4

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v10, v3

    invoke-static {v7, v8, v10}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v2, :cond_2b

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    if-eqz v6, :cond_2b

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/tencent/mm/booter/w;->aV(Ljava/lang/String;)V

    goto/16 :goto_12

    :cond_3e
    new-instance v5, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/tencent/mm/booter/w;->context:Landroid/content/Context;

    const-class v13, Lcom/tencent/mm/ui/LauncherUIProxy;

    invoke-direct {v5, v8, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v8, "nofification_type"

    const-string v13, "new_msg_nofification"

    invoke-virtual {v5, v8, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v8, "talkerCount"

    move-object/from16 v0, p0

    iget v13, v0, Lcom/tencent/mm/booter/w;->cai:I

    invoke-virtual {v5, v8, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/tencent/mm/booter/w;->cai:I

    const/4 v13, 0x1

    if-gt v8, v13, :cond_3f

    if-nez v11, :cond_3f

    const-string v8, "Intro_Is_Muti_Talker"

    const/4 v11, 0x0

    invoke-virtual {v5, v8, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v8, "Intro_Bottle_unread_count"

    invoke-virtual {v5, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_18
    const-string v8, "Main_User"

    move-object/from16 v0, p1

    invoke-virtual {v5, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v8, "MainUI_User_Last_Msg_Type"

    move/from16 v0, p3

    invoke-virtual {v5, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_13

    :cond_3f
    const-string v8, "Intro_Is_Muti_Talker"

    const/4 v11, 0x1

    invoke-virtual {v5, v8, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_18

    :cond_40
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    add-int/lit8 v8, v8, -0x6

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    add-int/lit8 v11, v11, -0x6

    const/4 v13, 0x0

    invoke-static {v4, v8, v11, v13}, Lcom/tencent/mm/sdk/platformtools/h;->a(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    goto/16 :goto_14

    :cond_41
    const/4 v3, 0x0

    goto :goto_17

    :cond_42
    move v4, v2

    goto/16 :goto_15

    :cond_43
    move v4, v2

    goto/16 :goto_16

    :cond_44
    move-object v9, v5

    goto/16 :goto_11

    :cond_45
    move v4, v5

    goto/16 :goto_e

    :cond_46
    move v2, v7

    goto/16 :goto_c

    :cond_47
    move v2, v3

    move v3, v9

    goto/16 :goto_b

    :cond_48
    move v5, v2

    goto/16 :goto_9
.end method

.method private static aR(Ljava/lang/String;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 186
    new-instance v1, Lcom/tencent/mm/c/a/ia;

    invoke-direct {v1}, Lcom/tencent/mm/c/a/ia;-><init>()V

    .line 187
    iget-object v2, v1, Lcom/tencent/mm/c/a/ia;->bRw:Lcom/tencent/mm/c/a/ib;

    iput v0, v2, Lcom/tencent/mm/c/a/ib;->bNk:I

    .line 188
    iget-object v2, v1, Lcom/tencent/mm/c/a/ia;->bRw:Lcom/tencent/mm/c/a/ib;

    iput-object p0, v2, Lcom/tencent/mm/c/a/ib;->content:Ljava/lang/String;

    .line 189
    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/tencent/mm/sdk/b/f;->f(Lcom/tencent/mm/sdk/b/e;)Z

    .line 190
    iget-object v1, v1, Lcom/tencent/mm/c/a/ia;->bRx:Lcom/tencent/mm/c/a/ic;

    iget v1, v1, Lcom/tencent/mm/c/a/ic;->type:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static aS(Ljava/lang/String;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 195
    new-instance v1, Lcom/tencent/mm/c/a/ia;

    invoke-direct {v1}, Lcom/tencent/mm/c/a/ia;-><init>()V

    .line 196
    iget-object v2, v1, Lcom/tencent/mm/c/a/ia;->bRw:Lcom/tencent/mm/c/a/ib;

    iput v0, v2, Lcom/tencent/mm/c/a/ib;->bNk:I

    .line 197
    iget-object v2, v1, Lcom/tencent/mm/c/a/ia;->bRw:Lcom/tencent/mm/c/a/ib;

    iput-object p0, v2, Lcom/tencent/mm/c/a/ib;->content:Ljava/lang/String;

    .line 198
    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/tencent/mm/sdk/b/f;->f(Lcom/tencent/mm/sdk/b/e;)Z

    .line 199
    iget-object v1, v1, Lcom/tencent/mm/c/a/ia;->bRx:Lcom/tencent/mm/c/a/ic;

    iget v1, v1, Lcom/tencent/mm/c/a/ic;->type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private aV(Ljava/lang/String;)V
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x2

    .line 781
    iget-object v0, p0, Lcom/tencent/mm/booter/w;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 782
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/booter/w;->context:Landroid/content/Context;

    .line 785
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/booter/w;->context:Landroid/content/Context;

    if-nez v0, :cond_2

    .line 850
    :cond_1
    :goto_0
    return-void

    .line 789
    :cond_2
    invoke-static {p1}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 790
    invoke-static {v1}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v0

    .line 795
    :goto_1
    :try_start_0
    iget-object v1, p0, Lcom/tencent/mm/booter/w;->caq:Landroid/os/Handler;

    const v2, 0x12345678

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 796
    iget-object v1, p0, Lcom/tencent/mm/booter/w;->caq:Landroid/os/Handler;

    const v2, 0x12345678

    const-wide/16 v3, 0x1f40

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 797
    iget-boolean v1, p0, Lcom/tencent/mm/booter/w;->car:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/tencent/mm/booter/w;->tv:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/tencent/mm/booter/w;->tv:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 798
    iget-object v1, p0, Lcom/tencent/mm/booter/w;->tv:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 799
    iget-object v1, p0, Lcom/tencent/mm/booter/w;->tv:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 800
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tencent/mm/booter/w;->car:Z

    .line 802
    :cond_3
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/tencent/mm/booter/w;->tv:Landroid/media/MediaPlayer;

    .line 803
    iget-object v1, p0, Lcom/tencent/mm/booter/w;->tv:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/tencent/mm/booter/w;->context:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 804
    iget-object v0, p0, Lcom/tencent/mm/booter/w;->context:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 806
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    if-eqz v1, :cond_1

    .line 807
    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 808
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    .line 809
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    .line 810
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    .line 811
    if-le v2, v1, :cond_6

    .line 814
    :goto_2
    const/16 v2, 0x8

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 815
    iget-object v2, p0, Lcom/tencent/mm/booter/w;->tv:Landroid/media/MediaPlayer;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 816
    iget-object v2, p0, Lcom/tencent/mm/booter/w;->tv:Landroid/media/MediaPlayer;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 817
    iget-object v2, p0, Lcom/tencent/mm/booter/w;->tv:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepare()V

    .line 818
    iget-object v2, p0, Lcom/tencent/mm/booter/w;->tv:Landroid/media/MediaPlayer;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 819
    iget-object v2, p0, Lcom/tencent/mm/booter/w;->tv:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V

    .line 820
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/tencent/mm/booter/w;->car:Z

    .line 821
    const/16 v2, 0x8

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 822
    const-string v0, "MicroMsg.MMNotification"

    const-string v2, "oldVolume is %d, toneVolume is %d, soundUri = %s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v5

    const/4 v3, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v3

    const/4 v1, 0x2

    aput-object p1, v4, v1

    invoke-static {v0, v2, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    goto/16 :goto_0

    .line 833
    :catch_0
    move-exception v0

    .line 834
    const-string v1, "MicroMsg.MMNotification"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 792
    :cond_4
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto/16 :goto_1

    .line 824
    :cond_5
    :try_start_1
    const-string v1, "MicroMsg.MMNotification"

    const-string v2, "getStreamVolume =  %d, soundUri = %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object p1, v3, v0

    invoke-static {v1, v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 825
    iget-object v0, p0, Lcom/tencent/mm/booter/w;->tv:Landroid/media/MediaPlayer;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 826
    iget-object v0, p0, Lcom/tencent/mm/booter/w;->tv:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 827
    iget-object v0, p0, Lcom/tencent/mm/booter/w;->tv:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 828
    iget-object v0, p0, Lcom/tencent/mm/booter/w;->tv:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 829
    iget-object v0, p0, Lcom/tencent/mm/booter/w;->tv:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 830
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/booter/w;->car:Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    goto/16 :goto_0

    .line 836
    :catch_1
    move-exception v0

    .line 837
    const-string v1, "MicroMsg.MMNotification"

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 839
    :catch_2
    move-exception v0

    .line 840
    const-string v1, "MicroMsg.MMNotification"

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 842
    :catch_3
    move-exception v0

    .line 843
    const-string v1, "MicroMsg.MMNotification"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 845
    :catch_4
    move-exception v0

    .line 846
    const-string v1, "MicroMsg.MMNotification"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    move v1, v2

    goto/16 :goto_2
.end method

.method private static aW(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 1003
    if-eqz p0, :cond_0

    .line 1004
    const-string v0, "%"

    const-string v1, "%%"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1006
    :cond_0
    return-object p0
.end method

.method private static aX(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 1010
    if-eqz p0, :cond_0

    .line 1011
    const-string v0, "%%"

    const-string v1, "%"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1013
    :cond_0
    return-object p0
.end method

.method static synthetic b(Lcom/tencent/mm/booter/w;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/tencent/mm/booter/w;->bNy:Ljava/lang/String;

    return-object v0
.end method

.method public static b(Lcom/tencent/mm/storage/ak;Lcom/tencent/mm/pointers/PString;Lcom/tencent/mm/pointers/PString;Lcom/tencent/mm/pointers/PInt;)Ljava/lang/String;
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 994
    iget-object v0, p0, Lcom/tencent/mm/storage/ak;->field_imgPath:Ljava/lang/String;

    iget v1, p0, Lcom/tencent/mm/storage/ak;->field_isSend:I

    iget-object v2, p0, Lcom/tencent/mm/storage/ak;->field_talker:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/mm/storage/ak;->field_content:Ljava/lang/String;

    iget v4, p0, Lcom/tencent/mm/storage/ak;->field_type:I

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v9, 0x1

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    invoke-static/range {v0 .. v9}, Lcom/tencent/mm/booter/w;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILandroid/content/Context;Lcom/tencent/mm/pointers/PString;Lcom/tencent/mm/pointers/PString;Lcom/tencent/mm/pointers/PInt;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static bt(I)V
    .locals 0
    .parameter

    .prologue
    .line 971
    sput p0, Lcom/tencent/mm/booter/w;->cas:I

    .line 972
    return-void
.end method

.method public static bu(I)V
    .locals 0
    .parameter

    .prologue
    .line 982
    sput p0, Lcom/tencent/mm/booter/w;->cat:I

    .line 983
    return-void
.end method

.method static synthetic c(Lcom/tencent/mm/booter/w;)I
    .locals 1
    .parameter

    .prologue
    .line 80
    iget v0, p0, Lcom/tencent/mm/booter/w;->cae:I

    return v0
.end method

.method private c(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 7
    .parameter
    .parameter

    .prologue
    const v6, 0x7f0700ac

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 853
    invoke-static {p1}, Lcom/tencent/mm/model/w;->cp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 857
    iget-object v0, p0, Lcom/tencent/mm/booter/w;->bNy:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/model/bv;->dy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 858
    if-eqz v0, :cond_0

    .line 859
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/model/w;->cu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 867
    :goto_0
    const-string v1, "@bottle"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 868
    iget-object v0, p0, Lcom/tencent/mm/booter/w;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080002

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 912
    :goto_1
    return-object v0

    .line 861
    :cond_0
    invoke-static {p1}, Lcom/tencent/mm/model/w;->cu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 864
    :cond_1
    invoke-static {p1}, Lcom/tencent/mm/model/w;->cu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 871
    :cond_2
    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p1}, Lcom/tencent/mm/model/w;->cp(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 872
    iget-object v0, p0, Lcom/tencent/mm/booter/w;->context:Landroid/content/Context;

    const v1, 0x7f07022b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 874
    :cond_3
    const-string v1, "MicroMsg.MMNotification"

    const-string v2, "dknotify showname:%s talker:%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v5

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 875
    iget v1, p0, Lcom/tencent/mm/booter/w;->cae:I

    sparse-switch v1, :sswitch_data_0

    .line 905
    invoke-static {p1}, Lcom/tencent/mm/storage/i;->ty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 906
    iget-object v1, p0, Lcom/tencent/mm/booter/w;->context:Landroid/content/Context;

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v5

    invoke-virtual {v1, v6, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 912
    :goto_2
    invoke-static {v0}, Lcom/tencent/mm/ao/a;->ti(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 880
    :sswitch_0
    invoke-static {p1}, Lcom/tencent/mm/storage/i;->ty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 881
    iget-object v1, p0, Lcom/tencent/mm/booter/w;->context:Landroid/content/Context;

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v5

    invoke-virtual {v1, v6, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 883
    :cond_4
    iget-object v1, p0, Lcom/tencent/mm/booter/w;->context:Landroid/content/Context;

    const v2, 0x7f0700a8

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 888
    :sswitch_1
    iget-object v1, p0, Lcom/tencent/mm/booter/w;->context:Landroid/content/Context;

    const v2, 0x7f0700a9

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 892
    :sswitch_2
    iget-object v1, p0, Lcom/tencent/mm/booter/w;->context:Landroid/content/Context;

    const v2, 0x7f0700ab

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 896
    :sswitch_3
    iget-object v1, p0, Lcom/tencent/mm/booter/w;->context:Landroid/content/Context;

    const v2, 0x7f0700aa

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 901
    :sswitch_4
    iget-object v1, p0, Lcom/tencent/mm/booter/w;->context:Landroid/content/Context;

    const v2, 0x7f0700ae

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 908
    :cond_5
    iget-object v1, p0, Lcom/tencent/mm/booter/w;->context:Landroid/content/Context;

    const v2, 0x7f0700a7

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 875
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0xd -> :sswitch_0
        0x17 -> :sswitch_0
        0x21 -> :sswitch_0
        0x22 -> :sswitch_1
        0x23 -> :sswitch_2
        0x2b -> :sswitch_3
        0x2f -> :sswitch_4
        0x100031 -> :sswitch_4
    .end sparse-switch
.end method

.method private cancel()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 370
    iget-object v0, p0, Lcom/tencent/mm/booter/w;->context:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 371
    if-eqz v0, :cond_0

    .line 372
    iput-boolean v2, p0, Lcom/tencent/mm/booter/w;->caj:Z

    .line 373
    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 375
    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/tencent/mm/booter/w;)I
    .locals 1
    .parameter

    .prologue
    .line 80
    iget v0, p0, Lcom/tencent/mm/booter/w;->cah:I

    return v0
.end method

.method private static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1600
    invoke-static {p0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1607
    :cond_0
    :goto_0
    return-object p0

    .line 1603
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1604
    if-ltz v0, :cond_0

    .line 1607
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method static synthetic e(Lcom/tencent/mm/booter/w;)Z
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/tencent/mm/booter/w;->car:Z

    return v0
.end method

.method static synthetic f(Lcom/tencent/mm/booter/w;)Landroid/media/MediaPlayer;
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/tencent/mm/booter/w;->tv:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic g(Lcom/tencent/mm/booter/w;)Z
    .locals 1
    .parameter

    .prologue
    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/booter/w;->car:Z

    return v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v6, 0x23

    const/4 v5, 0x1

    .line 736
    const-string v0, "MicroMsg.MMNotification"

    const-string v1, "showPushContentNotification, pushContent = %s, fromUserName = %s, msgType = %d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    aput-object p2, v2, v5

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 738
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/mm/booter/w;->context:Landroid/content/Context;

    const-class v2, Lcom/tencent/mm/ui/LauncherUIProxy;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 739
    const-string v1, "nofification_type"

    const-string v2, "pushcontent_notification"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 740
    const-string v1, "Intro_Is_Muti_Talker"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 741
    const-string v1, "Main_FromUserName"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 742
    const-string v1, "MainUI_User_Last_Msg_Type"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 744
    iget-object v1, p0, Lcom/tencent/mm/booter/w;->context:Landroid/content/Context;

    const/high16 v2, 0x4000

    invoke-static {v1, v6, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 746
    new-instance v1, Landroid/app/Notification;

    const v2, 0x7f0205a4

    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 747
    iget v2, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v1, Landroid/app/Notification;->flags:I

    .line 748
    iget-object v2, p0, Lcom/tencent/mm/booter/w;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/tencent/mm/booter/w;->context:Landroid/content/Context;

    const v4, 0x7f0709fd

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, p1, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 750
    iget-object v0, p0, Lcom/tencent/mm/booter/w;->context:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 751
    invoke-virtual {v0, v6, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 752
    return-void
.end method

.method public final aQ(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 168
    iput-object p1, p0, Lcom/tencent/mm/booter/w;->cab:Ljava/lang/String;

    .line 169
    return-void
.end method

.method public final aT(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 334
    const-string v1, "MicroMsg.MMNotification"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cancel notification talker:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " last talker:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/booter/w;->cac:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  curChattingTalker:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/booter/w;->cab:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " talker count:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/tencent/mm/booter/w;->cai:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    iget-boolean v1, p0, Lcom/tencent/mm/booter/w;->caj:Z

    if-nez v1, :cond_1

    .line 354
    :cond_0
    :goto_0
    return-void

    .line 338
    :cond_1
    iget-object v1, p0, Lcom/tencent/mm/booter/w;->cac:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/mm/booter/w;->cac:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/mm/booter/w;->cab:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/tencent/mm/booter/w;->cai:I

    if-ne v1, v0, :cond_2

    .line 339
    :goto_1
    if-eqz v0, :cond_3

    .line 340
    invoke-direct {p0}, Lcom/tencent/mm/booter/w;->cancel()V

    goto :goto_0

    .line 338
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 344
    :cond_3
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sx()Lcom/tencent/mm/storage/o;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/mm/storage/o;->tZ(Ljava/lang/String;)Lcom/tencent/mm/storage/n;

    move-result-object v0

    .line 345
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/tencent/mm/storage/n;->rN()I

    move-result v0

    if-eqz v0, :cond_4

    .line 346
    invoke-direct {p0}, Lcom/tencent/mm/booter/w;->cancel()V

    goto :goto_0

    .line 350
    :cond_4
    sget-object v0, Lcom/tencent/mm/model/w;->chM:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/model/x;->dk(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 351
    invoke-direct {p0}, Lcom/tencent/mm/booter/w;->cancel()V

    goto :goto_0
.end method

.method public final aU(Ljava/lang/String;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 465
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    .line 466
    const v0, 0x7f0205a4

    iput v0, v1, Landroid/app/Notification;->icon:I

    .line 468
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/tencent/mm/booter/w;->context:Landroid/content/Context;

    const-class v3, Lcom/tencent/mm/ui/LauncherUIProxy;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 469
    const-string v2, "Intro_Notify"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 470
    const-string v2, "Intro_Notify_User"

    iget-object v3, p0, Lcom/tencent/mm/booter/w;->bNl:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 475
    iget-object v2, p0, Lcom/tencent/mm/booter/w;->context:Landroid/content/Context;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/tencent/mm/booter/w;->context:Landroid/content/Context;

    const/high16 v5, 0x1000

    invoke-static {v4, v6, v0, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v1, v2, p1, v3, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 476
    iget-object v0, p0, Lcom/tencent/mm/booter/w;->context:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 477
    const/16 v2, 0x10

    iput v2, v1, Landroid/app/Notification;->flags:I

    .line 478
    if-eqz v0, :cond_0

    .line 479
    invoke-virtual {v0, v6, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 483
    :goto_0
    return-void

    .line 481
    :cond_0
    const-string v0, "MicroMsg.MMNotification"

    const-string v1, "get NotificationManager failed"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final b(Lcom/tencent/mm/storage/ak;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 405
    iput-object p1, p0, Lcom/tencent/mm/booter/w;->cad:Lcom/tencent/mm/storage/ak;

    .line 406
    invoke-static {p1}, Lcom/tencent/mm/booter/w;->a(Lcom/tencent/mm/storage/ak;)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/booter/w;->cah:I

    .line 407
    invoke-virtual {p1}, Lcom/tencent/mm/storage/ak;->aCl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/booter/w;->bNl:Ljava/lang/String;

    .line 408
    invoke-virtual {p1}, Lcom/tencent/mm/storage/ak;->getContent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/booter/w;->bNy:Ljava/lang/String;

    .line 409
    invoke-virtual {p1}, Lcom/tencent/mm/storage/ak;->getType()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/booter/w;->cae:I

    .line 410
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/booter/w;->caf:Ljava/lang/String;

    .line 411
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/booter/w;->cag:Landroid/content/Intent;

    .line 412
    const-string v0, "MicroMsg.MMNotification"

    const-string v1, "dknotify notifyFirst: %d %d [%s]"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/tencent/mm/storage/ak;->AH()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    const/4 v3, 0x1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/cj;->azV()Lcom/tencent/mm/sdk/platformtools/cm;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 413
    iget-object v0, p0, Lcom/tencent/mm/booter/w;->cao:Landroid/os/Handler;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v6, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 414
    return-void
.end method

.method public final bs(I)V
    .locals 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 713
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/mm/booter/w;->context:Landroid/content/Context;

    const-class v2, Lcom/tencent/mm/ui/LauncherUIProxy;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 718
    const-string v1, "nofification_type"

    const-string v2, "update_nofification"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 720
    const-string v1, "show_update_dialog"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 721
    const-string v1, "update_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 723
    iget-object v1, p0, Lcom/tencent/mm/booter/w;->context:Landroid/content/Context;

    invoke-static {v1, v3, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 725
    new-instance v1, Landroid/app/Notification;

    const v2, 0x7f0205a4

    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 726
    iget v2, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v1, Landroid/app/Notification;->flags:I

    .line 728
    iget-object v2, p0, Lcom/tencent/mm/booter/w;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/tencent/mm/booter/w;->context:Landroid/content/Context;

    const v4, 0x7f0709fb

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/mm/booter/w;->context:Landroid/content/Context;

    const v5, 0x7f0709fc

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 730
    iget-object v0, p0, Lcom/tencent/mm/booter/w;->context:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 731
    const/16 v2, 0x22

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 732
    return-void
.end method

.method public final e(Ljava/util/List;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 436
    const-string v0, "MicroMsg.MMNotification"

    const-string v1, "dknotify notifyOther msgsize:%d %d %d [%s]"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x2

    iget v5, p0, Lcom/tencent/mm/booter/w;->cah:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/cj;->azV()Lcom/tencent/mm/sdk/platformtools/cm;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v1, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 437
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 459
    :cond_0
    :goto_0
    return-void

    .line 442
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/storage/ak;

    .line 443
    invoke-static {v0}, Lcom/tencent/mm/booter/w;->a(Lcom/tencent/mm/storage/ak;)I

    move-result v0

    or-int/2addr v0, v1

    move v1, v0

    .line 444
    goto :goto_1

    .line 445
    :cond_2
    iput v1, p0, Lcom/tencent/mm/booter/w;->cah:I

    .line 447
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/storage/ak;

    .line 448
    if-eqz v0, :cond_0

    .line 452
    const-string v1, "MicroMsg.MMNotification"

    const-string v3, "dknotify notifyOther: %d"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->AH()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v1, v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 453
    const-string v1, ""

    iput-object v1, p0, Lcom/tencent/mm/booter/w;->caf:Ljava/lang/String;

    .line 454
    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->aCl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/mm/booter/w;->bNl:Ljava/lang/String;

    .line 455
    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->getContent()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/mm/booter/w;->bNy:Ljava/lang/String;

    .line 456
    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->getType()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/booter/w;->cae:I

    .line 458
    iget-object v0, p0, Lcom/tencent/mm/booter/w;->cao:Landroid/os/Handler;

    const-wide/16 v3, 0xc8

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public final getLooper()Landroid/os/Looper;
    .locals 1

    .prologue
    .line 431
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public final nJ()V
    .locals 2

    .prologue
    .line 358
    const-string v0, "MicroMsg.MMNotification"

    const-string v1, "force cancelNotification"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    invoke-direct {p0}, Lcom/tencent/mm/booter/w;->cancel()V

    .line 361
    iget-object v0, p0, Lcom/tencent/mm/booter/w;->context:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 362
    if-eqz v0, :cond_0

    .line 363
    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 366
    :cond_0
    return-void
.end method

.method public final oL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/tencent/mm/booter/w;->cab:Ljava/lang/String;

    return-object v0
.end method
