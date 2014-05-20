.class public final Lcom/tencent/mm/pluginsdk/ui/applet/ak;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private bOk:Z

.field private cWL:Lcom/tencent/mm/storage/b;

.field private dxK:Ljava/util/List;

.field private eMK:Ljava/util/LinkedList;

.field private fnZ:Ljava/util/ArrayList;

.field private foa:Z

.field private fob:Ljava/util/List;

.field private foc:Ljava/util/Set;

.field private fod:I

.field private foe:I

.field public fog:Z

.field public foh:Z

.field private foi:Z

.field private foj:Z

.field private fok:I

.field private fol:Z

.field private fon:Ljava/lang/String;

.field private fos:Z

.field private fot:Z

.field private mContext:Landroid/content/Context;

.field private username:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 74
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ak;->dxK:Ljava/util/List;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ak;->fnZ:Ljava/util/ArrayList;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ak;->fob:Ljava/util/List;

    .line 53
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ak;->foc:Ljava/util/Set;

    .line 55
    iput v1, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ak;->fod:I

    .line 56
    iput v1, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ak;->foe:I

    .line 58
    iput-boolean v1, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ak;->fog:Z

    .line 59
    iput-boolean v1, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ak;->foh:Z

    .line 63
    iput-boolean v2, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ak;->foi:Z

    .line 65
    iput-boolean v1, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ak;->foj:Z

    .line 66
    const/16 v0, 0xc

    iput v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ak;->fok:I

    .line 68
    iput-boolean v1, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ak;->fol:Z

    .line 124
    iput-boolean v1, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ak;->fos:Z

    iput-boolean v2, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ak;->fot:Z

    .line 76
    iput-object p1, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ak;->mContext:Landroid/content/Context;

    .line 77
    iput-boolean v1, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ak;->foa:Z

    .line 78
    return-void
.end method

.method private a(Landroid/view/View;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 529
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ak;->eMK:Ljava/util/LinkedList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ak;->eMK:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 530
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ak;->eMK:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/a/wq;

    .line 531
    iget-object v0, v0, Lcom/tencent/mm/protocal/a/wq;->eBo:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 532
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 547
    :goto_0
    return-void

    .line 538
    :cond_1
    iget-boolean v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ak;->fol:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ak;->fon:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ak;->fon:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 539
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ak;->fon:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 540
    sget v0, Lcom/tencent/mm/h;->adC:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 541
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 546
    :cond_2
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private arZ()V
    .locals 5

    .prologue
    .line 336
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ak;->fnZ:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 353
    :goto_0
    return-void

    .line 340
    :cond_0
    const-string v0, "MicroMsg.RoomInfoAdapter"

    const-string v1, "initData memberContactList.size %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ak;->fnZ:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 341
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ak;->foc:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 342
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ak;->fob:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 344
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ak;->fnZ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 345
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ak;->fnZ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 346
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 347
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/storage/i;

    .line 348
    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ak;->fob:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 349
    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ak;->foc:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 352
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ak;->fob:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ak;->foe:I

    goto :goto_0
.end method


# virtual methods
.method public final asa()Z
    .locals 1

    .prologue
    .line 389
    iget-boolean v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ak;->foa:Z

    return v0
.end method

.method public final asc()Z
    .locals 2

    .prologue
    .line 652
    iget v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ak;->fod:I

    iget v1, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ak;->fok:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getCount()I
    .locals 2

    .prologue
    .line 602
    iget-boolean v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ak;->foj:Z

    if-eqz v0, :cond_0

    .line 603
    iget v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ak;->fok:I

    iget v1, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ak;->fod:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 605
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ak;->fod:I

    goto :goto_0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 611
    iget v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ak;->foe:I

    if-ge p1, v0, :cond_0

    .line 612
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ak;->fob:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 614
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 620
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .parameter
    .parameter
    .parameter

    .prologue
    .line 412
    const-string v0, "MicroMsg.RoomInfoAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "postiion "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 415
    const/4 v1, 0x2

    .line 416
    const/4 v0, 0x0

    .line 418
    iget v2, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ak;->foe:I

    if-ge p1, v2, :cond_2

    .line 419
    const/4 v1, 0x0

    .line 420
    invoke-virtual {p0, p1}, Lcom/tencent/mm/pluginsdk/ui/applet/ak;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/storage/i;

    move v2, v1

    move-object v1, v0

    .line 427
    :goto_0
    const-string v0, "MicroMsg.RoomInfoAdapter"

    const-string v3, "getView position %s, convertView %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object p2, v6, v7

    invoke-static {v0, v3, v6}, Lcom/tencent/mm/sdk/platformtools/aa;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 428
    if-nez p2, :cond_4

    .line 429
    new-instance v3, Lcom/tencent/mm/pluginsdk/ui/applet/al;

    invoke-direct {v3, p0}, Lcom/tencent/mm/pluginsdk/ui/applet/al;-><init>(Lcom/tencent/mm/pluginsdk/ui/applet/ak;)V

    .line 430
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ak;->mContext:Landroid/content/Context;

    sget v6, Lcom/tencent/mm/k;->aYJ:I

    const/4 v7, 0x0

    invoke-static {v0, v6, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 431
    sget v0, Lcom/tencent/mm/i;->aHJ:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v3, Lcom/tencent/mm/pluginsdk/ui/applet/al;->cMS:Landroid/widget/ImageView;

    .line 432
    sget v0, Lcom/tencent/mm/i;->aHD:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v3, Lcom/tencent/mm/pluginsdk/ui/applet/al;->fou:Landroid/widget/ImageView;

    .line 433
    sget v0, Lcom/tencent/mm/i;->aHF:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/base/NoMeasuredTextView;

    iput-object v0, v3, Lcom/tencent/mm/pluginsdk/ui/applet/al;->foP:Lcom/tencent/mm/ui/base/NoMeasuredTextView;

    .line 434
    sget v0, Lcom/tencent/mm/i;->aHE:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v3, Lcom/tencent/mm/pluginsdk/ui/applet/al;->foQ:Landroid/widget/ImageView;

    .line 436
    iget-object v0, v3, Lcom/tencent/mm/pluginsdk/ui/applet/al;->cMS:Landroid/widget/ImageView;

    sget-object v6, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 437
    iget-object v0, v3, Lcom/tencent/mm/pluginsdk/ui/applet/al;->cMS:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setDrawingCacheEnabled(Z)V

    .line 439
    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v3

    .line 444
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    .line 445
    const-string v3, "MicroMsg.RoomInfoAdapter"

    const-string v8, "getView position %s, viewType %s, spent3 %s"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v9, v10

    invoke-static {v3, v8, v9}, Lcom/tencent/mm/sdk/platformtools/aa;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 447
    if-nez v2, :cond_a

    .line 448
    iget-object v3, v0, Lcom/tencent/mm/pluginsdk/ui/applet/al;->cMS:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 449
    iget-object v3, v0, Lcom/tencent/mm/pluginsdk/ui/applet/al;->foP:Lcom/tencent/mm/ui/base/NoMeasuredTextView;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->setVisibility(I)V

    .line 450
    iget-boolean v3, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ak;->bOk:Z

    if-eqz v3, :cond_8

    .line 452
    invoke-virtual {v1}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ak;->username:Ljava/lang/String;

    iget-object v6, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ak;->cWL:Lcom/tencent/mm/storage/b;

    if-nez v6, :cond_5

    const/4 v3, 0x0

    .line 453
    :goto_2
    invoke-static {v3}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 454
    invoke-virtual {v1}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v6

    invoke-virtual {v6}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/tencent/mm/storage/k;->tO(Ljava/lang/String;)Lcom/tencent/mm/storage/i;

    move-result-object v6

    if-nez v3, :cond_7

    .line 456
    :cond_0
    :goto_3
    iget-object v6, v0, Lcom/tencent/mm/pluginsdk/ui/applet/al;->foP:Lcom/tencent/mm/ui/base/NoMeasuredTextView;

    iget-object v7, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ak;->mContext:Landroid/content/Context;

    iget-object v8, v0, Lcom/tencent/mm/pluginsdk/ui/applet/al;->foP:Lcom/tencent/mm/ui/base/NoMeasuredTextView;

    invoke-virtual {v8}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->getTextSize()F

    move-result v8

    float-to-int v8, v8

    invoke-static {v7, v3, v8}, Lcom/tencent/mm/ao/b;->g(Landroid/content/Context;Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->setText(Ljava/lang/CharSequence;)V

    .line 460
    :goto_4
    iget-object v3, v0, Lcom/tencent/mm/pluginsdk/ui/applet/al;->cMS:Landroid/widget/ImageView;

    sget v6, Lcom/tencent/mm/h;->adJ:I

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 461
    iget-object v3, v0, Lcom/tencent/mm/pluginsdk/ui/applet/al;->cMS:Landroid/widget/ImageView;

    invoke-virtual {v1}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/tencent/mm/pluginsdk/ui/c;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 463
    iget-boolean v3, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ak;->foa:Z

    if-eqz v3, :cond_9

    .line 464
    iget-object v3, v0, Lcom/tencent/mm/pluginsdk/ui/applet/al;->fou:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 502
    :cond_1
    :goto_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    .line 503
    const-string v3, "MicroMsg.RoomInfoAdapter"

    const-string v8, "getView position %s, spent2 %s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v9, v10

    invoke-static {v3, v8, v9}, Lcom/tencent/mm/sdk/platformtools/aa;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 505
    if-eqz v1, :cond_10

    .line 506
    iget-object v3, v0, Lcom/tencent/mm/pluginsdk/ui/applet/al;->foQ:Landroid/widget/ImageView;

    invoke-virtual {v1}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v3, v1}, Lcom/tencent/mm/pluginsdk/ui/applet/ak;->a(Landroid/view/View;Ljava/lang/String;)V

    .line 510
    :goto_6
    iput v2, v0, Lcom/tencent/mm/pluginsdk/ui/applet/al;->dws:I

    .line 511
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v4

    .line 512
    const-string v2, "MicroMsg.RoomInfoAdapter"

    const-string v3, "getView position %s, spent %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 513
    return-object p2

    .line 421
    :cond_2
    iget v2, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ak;->foe:I

    if-ne p1, v2, :cond_3

    iget-boolean v2, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ak;->foh:Z

    if-eqz v2, :cond_3

    .line 422
    const/4 v1, 0x3

    move v2, v1

    move-object v1, v0

    goto/16 :goto_0

    .line 423
    :cond_3
    iget v2, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ak;->foe:I

    add-int/lit8 v2, v2, 0x1

    if-ne p1, v2, :cond_11

    iget-boolean v2, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ak;->fog:Z

    if-eqz v2, :cond_11

    .line 424
    const/4 v1, 0x4

    move v2, v1

    move-object v1, v0

    goto/16 :goto_0

    .line 441
    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/pluginsdk/ui/applet/al;

    goto/16 :goto_1

    .line 452
    :cond_5
    iget-object v6, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ak;->cWL:Lcom/tencent/mm/storage/b;

    invoke-virtual {v6}, Lcom/tencent/mm/storage/b;->aAk()Z

    move-result v6

    if-nez v6, :cond_6

    const/4 v3, 0x0

    goto/16 :goto_2

    :cond_6
    iget-object v6, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ak;->cWL:Lcom/tencent/mm/storage/b;

    invoke-virtual {v6, v3}, Lcom/tencent/mm/storage/b;->cu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2

    .line 454
    :cond_7
    invoke-virtual {v6}, Lcom/tencent/mm/storage/i;->rr()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_3

    .line 458
    :cond_8
    iget-object v3, v0, Lcom/tencent/mm/pluginsdk/ui/applet/al;->foP:Lcom/tencent/mm/ui/base/NoMeasuredTextView;

    iget-object v6, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ak;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/tencent/mm/storage/i;->rr()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v0, Lcom/tencent/mm/pluginsdk/ui/applet/al;->foP:Lcom/tencent/mm/ui/base/NoMeasuredTextView;

    invoke-virtual {v8}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->getTextSize()F

    move-result v8

    float-to-int v8, v8

    invoke-static {v6, v7, v8}, Lcom/tencent/mm/ao/b;->g(Landroid/content/Context;Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 466
    :cond_9
    iget-object v3, v0, Lcom/tencent/mm/pluginsdk/ui/applet/al;->fou:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_5

    .line 469
    :cond_a
    const/4 v3, 0x3

    if-ne v2, v3, :cond_c

    .line 470
    iget-object v3, v0, Lcom/tencent/mm/pluginsdk/ui/applet/al;->foP:Lcom/tencent/mm/ui/base/NoMeasuredTextView;

    const/4 v6, 0x4

    invoke-virtual {v3, v6}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->setVisibility(I)V

    .line 471
    iget-object v3, v0, Lcom/tencent/mm/pluginsdk/ui/applet/al;->fou:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 472
    iget-boolean v3, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ak;->foa:Z

    if-eqz v3, :cond_b

    .line 473
    iget-object v3, v0, Lcom/tencent/mm/pluginsdk/ui/applet/al;->cMS:Landroid/widget/ImageView;

    sget v6, Lcom/tencent/mm/h;->afS:I

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 474
    iget-object v3, v0, Lcom/tencent/mm/pluginsdk/ui/applet/al;->cMS:Landroid/widget/ImageView;

    sget v6, Lcom/tencent/mm/h;->afS:I

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_5

    .line 476
    :cond_b
    iget-object v3, v0, Lcom/tencent/mm/pluginsdk/ui/applet/al;->cMS:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 478
    iget-object v3, v0, Lcom/tencent/mm/pluginsdk/ui/applet/al;->cMS:Landroid/widget/ImageView;

    sget v6, Lcom/tencent/mm/h;->acr:I

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 479
    iget-object v3, v0, Lcom/tencent/mm/pluginsdk/ui/applet/al;->cMS:Landroid/widget/ImageView;

    sget v6, Lcom/tencent/mm/h;->afS:I

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_5

    .line 481
    :cond_c
    const/4 v3, 0x4

    if-ne v2, v3, :cond_f

    .line 482
    iget-object v3, v0, Lcom/tencent/mm/pluginsdk/ui/applet/al;->foP:Lcom/tencent/mm/ui/base/NoMeasuredTextView;

    const/4 v6, 0x4

    invoke-virtual {v3, v6}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->setVisibility(I)V

    .line 483
    iget-object v3, v0, Lcom/tencent/mm/pluginsdk/ui/applet/al;->fou:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 484
    iget-boolean v3, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ak;->foa:Z

    if-nez v3, :cond_d

    iget v3, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ak;->foe:I

    if-nez v3, :cond_e

    .line 485
    :cond_d
    iget-object v3, v0, Lcom/tencent/mm/pluginsdk/ui/applet/al;->cMS:Landroid/widget/ImageView;

    sget v6, Lcom/tencent/mm/h;->afS:I

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 486
    iget-object v3, v0, Lcom/tencent/mm/pluginsdk/ui/applet/al;->cMS:Landroid/widget/ImageView;

    sget v6, Lcom/tencent/mm/h;->afS:I

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_5

    .line 488
    :cond_e
    iget-object v3, v0, Lcom/tencent/mm/pluginsdk/ui/applet/al;->cMS:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 490
    iget-object v3, v0, Lcom/tencent/mm/pluginsdk/ui/applet/al;->cMS:Landroid/widget/ImageView;

    sget v6, Lcom/tencent/mm/h;->acs:I

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 491
    iget-object v3, v0, Lcom/tencent/mm/pluginsdk/ui/applet/al;->cMS:Landroid/widget/ImageView;

    sget v6, Lcom/tencent/mm/h;->afS:I

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_5

    .line 494
    :cond_f
    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 495
    iget-object v3, v0, Lcom/tencent/mm/pluginsdk/ui/applet/al;->foP:Lcom/tencent/mm/ui/base/NoMeasuredTextView;

    const/4 v6, 0x4

    invoke-virtual {v3, v6}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->setVisibility(I)V

    .line 496
    iget-object v3, v0, Lcom/tencent/mm/pluginsdk/ui/applet/al;->fou:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 497
    iget-object v3, v0, Lcom/tencent/mm/pluginsdk/ui/applet/al;->cMS:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 498
    iget-object v3, v0, Lcom/tencent/mm/pluginsdk/ui/applet/al;->cMS:Landroid/widget/ImageView;

    sget v6, Lcom/tencent/mm/h;->afS:I

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 499
    iget-object v3, v0, Lcom/tencent/mm/pluginsdk/ui/applet/al;->cMS:Landroid/widget/ImageView;

    sget v6, Lcom/tencent/mm/h;->afS:I

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_5

    .line 508
    :cond_10
    iget-object v1, v0, Lcom/tencent/mm/pluginsdk/ui/applet/al;->foQ:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_6

    :cond_11
    move v2, v1

    move-object v1, v0

    goto/16 :goto_0
.end method

.method public final km(I)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 370
    iget-boolean v1, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ak;->foa:Z

    if-nez v1, :cond_1

    .line 371
    iget v1, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ak;->foe:I

    if-ge p1, v1, :cond_0

    iput-boolean v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ak;->foa:Z

    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/ui/applet/ak;->notifyDataSetChanged()V

    .line 374
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final kn(I)Z
    .locals 1
    .parameter

    .prologue
    .line 393
    iget-boolean v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ak;->foa:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ak;->foe:I

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final ko(I)Z
    .locals 1
    .parameter

    .prologue
    .line 397
    iget-boolean v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ak;->foa:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ak;->foe:I

    add-int/lit8 v0, v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final kp(I)Z
    .locals 1
    .parameter

    .prologue
    .line 578
    iget v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ak;->foe:I

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final notifyChanged()V
    .locals 10

    .prologue
    const/4 v1, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 582
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ak;->dxK:Ljava/util/List;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ak;->fnZ:Ljava/util/ArrayList;

    if-eqz v0, :cond_17

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ak;->username:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/tencent/mm/pluginsdk/h;->apl()Lcom/tencent/mm/pluginsdk/aj;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/tencent/mm/pluginsdk/h;->apl()Lcom/tencent/mm/pluginsdk/aj;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ak;->username:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/tencent/mm/pluginsdk/aj;->pa(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ak;->eMK:Ljava/util/LinkedList;

    :cond_1
    iget-boolean v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ak;->foi:Z

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ak;->dxK:Ljava/util/List;

    if-eqz v0, :cond_15

    const-string v0, "MicroMsg.RoomInfoAdapter"

    const-string v2, "initData memberList.size %d"

    new-array v5, v3, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ak;->dxK:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-static {v0, v2, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ak;->foc:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ak;->fob:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ak;->dxK:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_14

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ak;->dxK:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/tencent/mm/storage/k;->tO(Ljava/lang/String;)Lcom/tencent/mm/storage/i;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v5}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ak;->fob:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ak;->foc:Ljava/util/Set;

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ak;->foc:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ak;->dxK:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_5

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ak;->dxK:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v5, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ak;->foc:Ljava/util/Set;

    invoke-interface {v5, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ak;->fob:Ljava/util/List;

    new-instance v6, Lcom/tencent/mm/storage/i;

    invoke-direct {v6, v0}, Lcom/tencent/mm/storage/i;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ak;->foc:Ljava/util/Set;

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    iget-boolean v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ak;->fos:Z

    if-eqz v0, :cond_14

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/e;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, ""

    invoke-static {v0, v2}, Lcom/tencent/mm/sdk/platformtools/cj;->R(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ak;->dxK:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ak;->foc:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ak;->fob:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/storage/i;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v5, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ak;->fob:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move v0, v4

    :goto_2
    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ak;->dxK:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v5, 0x7

    if-ne v0, v5, :cond_7

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ak;->dxK:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ak;->foc:Ljava/util/Set;

    iget-object v5, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ak;->dxK:Ljava/util/List;

    iget-object v6, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ak;->dxK:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v5, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ak;->dxK:Ljava/util/List;

    iget-object v5, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ak;->dxK:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v0, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ak;->fob:Ljava/util/List;

    iget-object v5, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ak;->fob:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v0, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_7
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/tencent/mm/storage/k;->tO(Ljava/lang/String;)Lcom/tencent/mm/storage/i;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_9

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ak;->fob:Ljava/util/List;

    invoke-interface {v5, v3, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :goto_3
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ak;->foc:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ak;->fot:Z

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ak;->fob:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x3

    if-lt v0, v2, :cond_14

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ak;->fob:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    move v2, v4

    :goto_4
    if-ge v2, v5, :cond_11

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ak;->fob:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/storage/i;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->rl()I

    move-result v7

    if-lez v7, :cond_a

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->rl()I

    move-result v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_8
    :goto_5
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_4

    :cond_9
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ak;->fob:Ljava/util/List;

    new-instance v5, Lcom/tencent/mm/storage/i;

    invoke-direct {v5, v2}, Lcom/tencent/mm/storage/i;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v3, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_3

    :cond_a
    iget-object v7, v0, Lcom/tencent/mm/storage/i;->field_conRemark:Ljava/lang/String;

    invoke-static {v7}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_b

    iget-object v0, v0, Lcom/tencent/mm/storage/i;->field_conRemark:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_b
    iget-object v7, v0, Lcom/tencent/mm/storage/i;->field_conRemarkPYShort:Ljava/lang/String;

    invoke-static {v7}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_c

    iget-object v0, v0, Lcom/tencent/mm/storage/i;->field_conRemarkPYShort:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_c
    iget-object v7, v0, Lcom/tencent/mm/storage/i;->field_conRemarkPYFull:Ljava/lang/String;

    invoke-static {v7}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_d

    iget-object v0, v0, Lcom/tencent/mm/storage/i;->field_conRemarkPYFull:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_d
    iget-object v7, v0, Lcom/tencent/mm/storage/i;->field_pyInitial:Ljava/lang/String;

    invoke-static {v7}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_e

    iget-object v0, v0, Lcom/tencent/mm/storage/i;->field_pyInitial:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_e
    iget-object v7, v0, Lcom/tencent/mm/storage/i;->field_quanPin:Ljava/lang/String;

    invoke-static {v7}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_f

    iget-object v0, v0, Lcom/tencent/mm/storage/i;->field_quanPin:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_f
    iget-object v7, v0, Lcom/tencent/mm/storage/i;->field_nickname:Ljava/lang/String;

    invoke-static {v7}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_10

    iget-object v0, v0, Lcom/tencent/mm/storage/i;->field_nickname:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_10
    iget-object v7, v0, Lcom/tencent/mm/storage/i;->field_username:Ljava/lang/String;

    invoke-static {v7}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_8

    iget-object v0, v0, Lcom/tencent/mm/storage/i;->field_username:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_11
    const-string v0, "MicroMsg.RoomInfoAdapter"

    const-string v2, "klem, order list:%s"

    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/util/LinkedList;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v4

    invoke-static {v0, v2, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ak;->fob:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ak;->fob:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v6, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ak;->fob:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    move v4, v1

    :goto_6
    if-ge v4, v8, :cond_13

    invoke-virtual {v6, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    move v2, v3

    :goto_7
    if-ge v2, v9, :cond_12

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_12

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_7

    :cond_12
    invoke-interface {v7, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ak;->fob:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v5, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_6

    :cond_13
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ak;->fob:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iput-object v5, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ak;->fob:Ljava/util/List;

    :cond_14
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ak;->fob:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ak;->foe:I

    :cond_15
    :goto_8
    iget v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ak;->foe:I

    if-nez v0, :cond_19

    const/4 v0, 0x4

    iput v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ak;->fod:I

    :cond_16
    :goto_9
    const-string v0, "MicroMsg.RoomInfoAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Number Size  contactSize :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ak;->foe:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " realySize : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ak;->fod:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 583
    :cond_17
    return-void

    .line 582
    :cond_18
    invoke-direct {p0}, Lcom/tencent/mm/pluginsdk/ui/applet/ak;->arZ()V

    goto :goto_8

    :cond_19
    iget-boolean v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ak;->foh:Z

    if-eqz v0, :cond_1a

    iget-boolean v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ak;->fog:Z

    if-eqz v0, :cond_1a

    iget v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ak;->foe:I

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ak;->fod:I

    goto :goto_9

    :cond_1a
    iget-boolean v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ak;->foh:Z

    if-eqz v0, :cond_1b

    iget-boolean v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ak;->fog:Z

    if-eqz v0, :cond_1c

    :cond_1b
    iget-boolean v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ak;->foh:Z

    if-nez v0, :cond_1d

    iget-boolean v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ak;->fog:Z

    if-eqz v0, :cond_1d

    :cond_1c
    iget v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ak;->foe:I

    div-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ak;->fod:I

    goto :goto_9

    :cond_1d
    iget-boolean v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ak;->foh:Z

    if-nez v0, :cond_16

    iget-boolean v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ak;->fog:Z

    if-nez v0, :cond_16

    iget v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ak;->foe:I

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ak;->fod:I

    goto :goto_9

    :cond_1e
    move v0, v3

    goto/16 :goto_2
.end method
