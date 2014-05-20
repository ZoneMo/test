.class final Lcom/tencent/mm/pluginsdk/ui/am;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field final synthetic flM:Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;

.field private flN:Ljava/util/ArrayList;

.field private final flQ:Ljava/lang/String;

.field private flR:Lcom/tencent/mm/sdk/b/g;

.field private flS:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;)V
    .locals 1
    .parameter

    .prologue
    .line 474
    iput-object p1, p0, Lcom/tencent/mm/pluginsdk/ui/am;->flM:Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 467
    const-string v0, "lock_emoji_async"

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/am;->flQ:Ljava/lang/String;

    .line 472
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/am;->flR:Lcom/tencent/mm/sdk/b/g;

    .line 746
    new-instance v0, Lcom/tencent/mm/pluginsdk/ui/an;

    invoke-direct {v0, p0}, Lcom/tencent/mm/pluginsdk/ui/an;-><init>(Lcom/tencent/mm/pluginsdk/ui/am;)V

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/am;->flS:Landroid/os/Handler;

    .line 475
    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/pluginsdk/ui/am;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 466
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/am;->flS:Landroid/os/Handler;

    return-object v0
.end method

.method private kh(I)Lcom/tencent/mm/storage/y;
    .locals 7
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 553
    const-string v1, "lock_emoji_async"

    monitor-enter v1

    .line 555
    :try_start_0
    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/ui/am;->flN:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 556
    const-string v2, "MicroMsg.SmileyGrid"

    const-string v3, "jacks catch cache emoji info list null but request getView!. pass~"

    invoke-static {v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    monitor-exit v1

    .line 565
    :goto_0
    return-object v0

    .line 560
    :cond_0
    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/ui/am;->flN:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt v2, p1, :cond_1

    .line 561
    const-string v2, "MicroMsg.SmileyGrid"

    const-string v3, "jacks catch cache emoji beyond size, size: %d, position: %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/tencent/mm/pluginsdk/ui/am;->flN:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 562
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 566
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 565
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/am;->flN:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/storage/y;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method public final arx()V
    .locals 3

    .prologue
    .line 764
    const-string v0, "repullemojiinfodesc"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "add "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/ui/am;->flM:Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;

    invoke-static {v2}, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->f(Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/am;->flR:Lcom/tencent/mm/sdk/b/g;

    if-nez v0, :cond_0

    .line 766
    new-instance v0, Lcom/tencent/mm/pluginsdk/ui/ao;

    invoke-direct {v0, p0}, Lcom/tencent/mm/pluginsdk/ui/ao;-><init>(Lcom/tencent/mm/pluginsdk/ui/am;)V

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/am;->flR:Lcom/tencent/mm/sdk/b/g;

    .line 780
    :cond_0
    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v0

    const-string v1, "RePullEmojiInfoDesc"

    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/ui/am;->flR:Lcom/tencent/mm/sdk/b/g;

    invoke-interface {v0, v1, v2}, Lcom/tencent/mm/sdk/b/f;->a(Ljava/lang/String;Lcom/tencent/mm/sdk/b/g;)Z

    .line 781
    return-void
.end method

.method public final ary()V
    .locals 3

    .prologue
    .line 784
    const-string v0, "repullemojiinfodesc"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "remove "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/ui/am;->flM:Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;

    invoke-static {v2}, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->f(Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/am;->flR:Lcom/tencent/mm/sdk/b/g;

    if-eqz v0, :cond_0

    .line 786
    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v0

    const-string v1, "RePullEmojiInfoDesc"

    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/ui/am;->flR:Lcom/tencent/mm/sdk/b/g;

    invoke-interface {v0, v1, v2}, Lcom/tencent/mm/sdk/b/f;->b(Ljava/lang/String;Lcom/tencent/mm/sdk/b/g;)Z

    .line 787
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/am;->flR:Lcom/tencent/mm/sdk/b/g;

    .line 789
    :cond_0
    return-void
.end method

.method public final getCount()I
    .locals 3

    .prologue
    .line 518
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/am;->flM:Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;

    invoke-static {v0}, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->a(Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;)I

    move-result v0

    const/16 v1, 0x14

    if-ne v0, v1, :cond_0

    .line 519
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/am;->flM:Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;

    iget v0, v0, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->flC:I

    .line 532
    :goto_0
    return v0

    .line 522
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/am;->flM:Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;

    invoke-static {v0}, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->a(Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;)I

    move-result v0

    const/16 v1, 0x17

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/am;->flM:Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;

    invoke-static {v0}, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->a(Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;)I

    move-result v0

    const/16 v1, 0x19

    if-ne v0, v1, :cond_4

    .line 523
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/am;->flM:Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;

    iget v0, v0, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->dJC:I

    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/am;->flM:Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;

    invoke-static {v1}, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->g(Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_3

    .line 524
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/am;->flM:Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;

    invoke-static {v0}, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->d(Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;)I

    move-result v0

    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/am;->flM:Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;

    iget v1, v1, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->dJC:I

    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/ui/am;->flM:Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;

    iget v2, v2, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->flC:I

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 525
    const/4 v0, 0x0

    goto :goto_0

    .line 527
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/am;->flM:Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;

    invoke-static {v0}, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->d(Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;)I

    move-result v0

    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/am;->flM:Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;

    iget v1, v1, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->dJC:I

    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/ui/am;->flM:Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;

    iget v2, v2, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->flC:I

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    goto :goto_0

    .line 529
    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/am;->flM:Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;

    iget v0, v0, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->flC:I

    goto :goto_0

    .line 532
    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/am;->flM:Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;

    iget v0, v0, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->flC:I

    goto :goto_0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 571
    const-string v1, "lock_emoji_async"

    monitor-enter v1

    .line 573
    :try_start_0
    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/ui/am;->flN:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 574
    monitor-exit v1

    .line 582
    :goto_0
    return-object v0

    .line 577
    :cond_0
    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/ui/am;->flM:Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;

    invoke-static {v2}, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->a(Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;)I

    move-result v2

    const/16 v3, 0x19

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/ui/am;->flM:Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;

    iget v2, v2, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->dJC:I

    iget-object v3, p0, Lcom/tencent/mm/pluginsdk/ui/am;->flM:Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;

    iget v3, v3, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->flC:I

    mul-int/2addr v2, v3

    add-int/2addr v2, p1

    iget-object v3, p0, Lcom/tencent/mm/pluginsdk/ui/am;->flN:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 578
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 581
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    monitor-exit v1

    .line 582
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/am;->flM:Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;

    iget v0, v0, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->dJC:I

    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/am;->flM:Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;

    iget v1, v1, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->flC:I

    mul-int/2addr v0, v1

    add-int/2addr v0, p1

    invoke-direct {p0, v0}, Lcom/tencent/mm/pluginsdk/ui/am;->kh(I)Lcom/tencent/mm/storage/y;

    move-result-object v0

    goto :goto_0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 587
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v2, 0x8

    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 592
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/am;->flM:Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;

    invoke-static {v0}, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->a(Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 593
    :goto_0
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/pluginsdk/ui/ap;

    iget-object v3, p0, Lcom/tencent/mm/pluginsdk/ui/am;->flM:Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;

    invoke-static {v3}, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->a(Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;)I

    move-result v3

    packed-switch v3, :pswitch_data_1

    .line 594
    :cond_0
    :goto_1
    :pswitch_1
    return-object p2

    .line 592
    :pswitch_2
    if-nez p2, :cond_1

    new-instance v3, Lcom/tencent/mm/pluginsdk/ui/ap;

    invoke-direct {v3, p0}, Lcom/tencent/mm/pluginsdk/ui/ap;-><init>(Lcom/tencent/mm/pluginsdk/ui/am;)V

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/am;->flM:Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;

    invoke-static {v0}, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->h(Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;)Landroid/content/Context;

    move-result-object v0

    sget v4, Lcom/tencent/mm/k;->aZD:I

    invoke-static {v0, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    sget v0, Lcom/tencent/mm/i;->aKK:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v3, Lcom/tencent/mm/pluginsdk/ui/ap;->flV:Landroid/view/View;

    sget v0, Lcom/tencent/mm/i;->amE:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v3, Lcom/tencent/mm/pluginsdk/ui/ap;->dZa:Landroid/widget/ImageView;

    sget v0, Lcom/tencent/mm/i;->amG:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v3, Lcom/tencent/mm/pluginsdk/ui/ap;->flU:Landroid/widget/TextView;

    sget v0, Lcom/tencent/mm/i;->amD:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v3, Lcom/tencent/mm/pluginsdk/ui/ap;->flW:Landroid/widget/TextView;

    sget v0, Lcom/tencent/mm/i;->amH:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v3, Lcom/tencent/mm/pluginsdk/ui/ap;->flX:Landroid/widget/TextView;

    sget v0, Lcom/tencent/mm/i;->amF:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v3, Lcom/tencent/mm/pluginsdk/ui/ap;->flY:Landroid/view/View;

    sget v0, Lcom/tencent/mm/i;->aKJ:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v3, Lcom/tencent/mm/pluginsdk/ui/ap;->flZ:Landroid/widget/ImageView;

    sget v0, Lcom/tencent/mm/i;->aKI:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v3, Lcom/tencent/mm/pluginsdk/ui/ap;->fma:Landroid/view/View;

    iget-object v0, v3, Lcom/tencent/mm/pluginsdk/ui/ap;->dZa:Landroid/widget/ImageView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    goto :goto_0

    :pswitch_3
    if-nez p2, :cond_2

    new-instance v3, Lcom/tencent/mm/pluginsdk/ui/ap;

    invoke-direct {v3, p0}, Lcom/tencent/mm/pluginsdk/ui/ap;-><init>(Lcom/tencent/mm/pluginsdk/ui/am;)V

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/am;->flM:Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;

    invoke-static {v0}, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->h(Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;)Landroid/content/Context;

    move-result-object v0

    sget v4, Lcom/tencent/mm/k;->aZE:I

    invoke-static {v0, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    sget v0, Lcom/tencent/mm/i;->amE:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v3, Lcom/tencent/mm/pluginsdk/ui/ap;->dZa:Landroid/widget/ImageView;

    iget-object v0, v3, Lcom/tencent/mm/pluginsdk/ui/ap;->dZa:Landroid/widget/ImageView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    goto/16 :goto_0

    .line 593
    :pswitch_4
    iget-object v3, v0, Lcom/tencent/mm/pluginsdk/ui/ap;->fma:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, v0, Lcom/tencent/mm/pluginsdk/ui/ap;->dZa:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, p0, Lcom/tencent/mm/pluginsdk/ui/am;->flM:Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;

    invoke-static {v3}, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->a(Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;)I

    move-result v3

    const/16 v4, 0x19

    if-ne v3, v4, :cond_3

    if-nez p1, :cond_3

    iget-object v3, p0, Lcom/tencent/mm/pluginsdk/ui/am;->flM:Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;

    iget v3, v3, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->dJC:I

    if-nez v3, :cond_3

    iget-object v2, v0, Lcom/tencent/mm/pluginsdk/ui/ap;->fma:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lcom/tencent/mm/pluginsdk/ui/ap;->flZ:Landroid/widget/ImageView;

    sget v2, Lcom/tencent/mm/h;->aci:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, v0, Lcom/tencent/mm/pluginsdk/ui/ap;->flV:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    :cond_3
    iget-object v3, p0, Lcom/tencent/mm/pluginsdk/ui/am;->flM:Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;

    iget v3, v3, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->dJC:I

    iget-object v4, p0, Lcom/tencent/mm/pluginsdk/ui/am;->flM:Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;

    iget v4, v4, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->flC:I

    mul-int/2addr v3, v4

    add-int/2addr v3, p1

    invoke-direct {p0, v3}, Lcom/tencent/mm/pluginsdk/ui/am;->kh(I)Lcom/tencent/mm/storage/y;

    move-result-object v3

    iget-object v4, v0, Lcom/tencent/mm/pluginsdk/ui/ap;->flV:Landroid/view/View;

    sget v5, Lcom/tencent/mm/h;->aiA:I

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/tencent/mm/storage/y;->getDesc()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_4

    iget-object v4, v0, Lcom/tencent/mm/pluginsdk/ui/ap;->flU:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    iget-object v4, v0, Lcom/tencent/mm/pluginsdk/ui/ap;->flX:Landroid/widget/TextView;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v4, v0, Lcom/tencent/mm/pluginsdk/ui/ap;->flW:Landroid/widget/TextView;

    sget v5, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->flz:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_5

    :goto_3
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-static {}, Lcom/tencent/mm/pluginsdk/h;->apj()Lcom/tencent/mm/pluginsdk/i;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/ui/am;->flM:Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;

    invoke-virtual {v2}, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->getContext()Landroid/content/Context;

    invoke-interface {v1, v3}, Lcom/tencent/mm/pluginsdk/i;->d(Lcom/tencent/mm/storage/y;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_6

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/am;->flM:Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;

    iget-boolean v0, v0, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->flH:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/tencent/mm/pluginsdk/h;->apj()Lcom/tencent/mm/pluginsdk/i;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/am;->flM:Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;

    invoke-static {v1}, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->f(Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tencent/mm/pluginsdk/i;->jf(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/am;->flM:Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->flH:Z

    goto/16 :goto_1

    :cond_4
    iget-object v4, v0, Lcom/tencent/mm/pluginsdk/ui/ap;->flU:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v4, v0, Lcom/tencent/mm/pluginsdk/ui/ap;->flU:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/tencent/mm/storage/y;->getDesc()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_5
    move v1, v2

    goto :goto_3

    :cond_6
    iget-object v0, v0, Lcom/tencent/mm/pluginsdk/ui/ap;->dZa:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_1

    :pswitch_5
    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/ui/am;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_7

    iget-object v0, v0, Lcom/tencent/mm/pluginsdk/ui/ap;->dZa:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/am;->flM:Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;

    invoke-static {v1}, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->h(Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/tencent/mm/h;->adO:I

    invoke-static {v1, v2}, Lcom/tencent/mm/an/a;->k(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    :cond_7
    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/am;->flM:Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;

    iget v1, v1, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->dJC:I

    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/ui/am;->flM:Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;

    invoke-static {v2}, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->g(Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_a

    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/am;->flM:Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;

    invoke-static {v1}, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->d(Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;)I

    move-result v1

    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/ui/am;->flM:Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;

    iget v2, v2, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->flC:I

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lcom/tencent/mm/pluginsdk/ui/am;->flM:Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;

    iget v3, v3, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->dJC:I

    mul-int/2addr v2, v3

    sub-int/2addr v1, v2

    if-ge p1, v1, :cond_9

    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/am;->flM:Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;

    invoke-static {v1}, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->e(Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/am;->flM:Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;

    invoke-static {v1}, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->h(Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/ui/am;->flM:Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;

    iget v2, v2, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->flC:I

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lcom/tencent/mm/pluginsdk/ui/am;->flM:Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;

    iget v3, v3, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->dJC:I

    mul-int/2addr v2, v3

    add-int/2addr v2, p1

    invoke-static {v1, v2}, Lcom/tencent/mm/ao/c;->u(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_4
    iget-object v0, v0, Lcom/tencent/mm/pluginsdk/ui/ap;->dZa:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    :cond_8
    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/am;->flM:Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;

    invoke-static {v1}, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->h(Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/ui/am;->flM:Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;

    iget v2, v2, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->flC:I

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lcom/tencent/mm/pluginsdk/ui/am;->flM:Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;

    iget v3, v3, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->dJC:I

    mul-int/2addr v2, v3

    add-int/2addr v2, p1

    invoke-static {v1, v2}, Lcom/tencent/mm/ao/c;->t(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_4

    :cond_9
    iget-object v0, v0, Lcom/tencent/mm/pluginsdk/ui/ap;->dZa:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    :cond_a
    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/am;->flM:Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;

    invoke-static {v1}, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->e(Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/am;->flM:Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;

    invoke-static {v1}, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->h(Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/ui/am;->flM:Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;

    iget v2, v2, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->flC:I

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lcom/tencent/mm/pluginsdk/ui/am;->flM:Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;

    iget v3, v3, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->dJC:I

    mul-int/2addr v2, v3

    add-int/2addr v2, p1

    invoke-static {v1, v2}, Lcom/tencent/mm/ao/c;->u(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_5
    iget-object v0, v0, Lcom/tencent/mm/pluginsdk/ui/ap;->dZa:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    :cond_b
    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/am;->flM:Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;

    invoke-static {v1}, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->h(Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/ui/am;->flM:Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;

    iget v2, v2, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->flC:I

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lcom/tencent/mm/pluginsdk/ui/am;->flM:Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;

    iget v3, v3, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->dJC:I

    mul-int/2addr v2, v3

    add-int/2addr v2, p1

    invoke-static {v1, v2}, Lcom/tencent/mm/ao/c;->t(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_5

    .line 592
    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 593
    :pswitch_data_1
    .packed-switch 0x14
        :pswitch_5
        :pswitch_1
        :pswitch_1
        :pswitch_4
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method public final update()V
    .locals 6

    .prologue
    .line 478
    const-string v1, "lock_emoji_async"

    monitor-enter v1

    .line 479
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/am;->flM:Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;

    invoke-static {v0}, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->a(Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;)I

    move-result v0

    const/16 v2, 0x17

    if-ne v0, v2, :cond_1

    .line 481
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/am;->flM:Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;

    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/ui/am;->flM:Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;

    invoke-static {v2}, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->f(Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->a(Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/am;->flN:Ljava/util/ArrayList;

    .line 482
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/am;->flN:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 483
    const-string v0, "MicroMsg.SmileyGrid"

    const-string v2, "get emoji list by group id[%s] fail, new one"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/tencent/mm/pluginsdk/ui/am;->flM:Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;

    invoke-static {v5}, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->f(Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 484
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/am;->flN:Ljava/util/ArrayList;

    .line 511
    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 513
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 514
    return-void

    .line 491
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/am;->flM:Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;

    invoke-static {v0}, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->a(Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;)I

    move-result v0

    const/16 v2, 0x19

    if-ne v0, v2, :cond_0

    .line 492
    invoke-static {}, Lcom/tencent/mm/pluginsdk/h;->apj()Lcom/tencent/mm/pluginsdk/i;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/mm/pluginsdk/i;->KZ()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/am;->flN:Ljava/util/ArrayList;

    .line 493
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/am;->flN:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 494
    const-string v0, "MicroMsg.SmileyGrid"

    const-string v2, "get all custom emoji list fail, new one"

    invoke-static {v0, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/am;->flN:Ljava/util/ArrayList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 511
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 497
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/am;->flN:Ljava/util/ArrayList;

    const/4 v2, 0x0

    new-instance v3, Lcom/tencent/mm/storage/y;

    invoke-direct {v3}, Lcom/tencent/mm/storage/y;-><init>()V

    invoke-virtual {v0, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
