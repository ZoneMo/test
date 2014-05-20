.class final Landroid/support/v7/internal/view/menu/ad;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field private ko:I

.field private lu:Landroid/support/v7/internal/view/menu/o;

.field final synthetic lv:Landroid/support/v7/internal/view/menu/ac;


# direct methods
.method public constructor <init>(Landroid/support/v7/internal/view/menu/ac;Landroid/support/v7/internal/view/menu/o;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 305
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/ad;->lv:Landroid/support/v7/internal/view/menu/ac;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 303
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/internal/view/menu/ad;->ko:I

    .line 306
    iput-object p2, p0, Landroid/support/v7/internal/view/menu/ad;->lu:Landroid/support/v7/internal/view/menu/o;

    .line 307
    invoke-direct {p0}, Landroid/support/v7/internal/view/menu/ad;->bT()V

    .line 308
    return-void
.end method

.method static synthetic a(Landroid/support/v7/internal/view/menu/ad;)Landroid/support/v7/internal/view/menu/o;
    .locals 1
    .parameter

    .prologue
    .line 300
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ad;->lu:Landroid/support/v7/internal/view/menu/o;

    return-object v0
.end method

.method private bT()V
    .locals 5

    .prologue
    .line 348
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ad;->lv:Landroid/support/v7/internal/view/menu/ac;

    invoke-static {v0}, Landroid/support/v7/internal/view/menu/ac;->c(Landroid/support/v7/internal/view/menu/ac;)Landroid/support/v7/internal/view/menu/o;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/o;->ck()Landroid/support/v7/internal/view/menu/s;

    move-result-object v2

    .line 349
    if-eqz v2, :cond_1

    .line 350
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ad;->lv:Landroid/support/v7/internal/view/menu/ac;

    invoke-static {v0}, Landroid/support/v7/internal/view/menu/ac;->c(Landroid/support/v7/internal/view/menu/ac;)Landroid/support/v7/internal/view/menu/o;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/o;->ce()Ljava/util/ArrayList;

    move-result-object v3

    .line 351
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 352
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_1

    .line 353
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/view/menu/s;

    .line 354
    if-ne v0, v2, :cond_0

    .line 355
    iput v1, p0, Landroid/support/v7/internal/view/menu/ad;->ko:I

    .line 361
    :goto_1
    return-void

    .line 352
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 360
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/internal/view/menu/ad;->ko:I

    goto :goto_1
.end method


# virtual methods
.method public final C(I)Landroid/support/v7/internal/view/menu/s;
    .locals 2
    .parameter

    .prologue
    .line 320
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ad;->lv:Landroid/support/v7/internal/view/menu/ac;

    invoke-static {v0}, Landroid/support/v7/internal/view/menu/ac;->a(Landroid/support/v7/internal/view/menu/ac;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ad;->lu:Landroid/support/v7/internal/view/menu/o;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/o;->ce()Ljava/util/ArrayList;

    move-result-object v0

    .line 322
    :goto_0
    iget v1, p0, Landroid/support/v7/internal/view/menu/ad;->ko:I

    if-ltz v1, :cond_0

    iget v1, p0, Landroid/support/v7/internal/view/menu/ad;->ko:I

    if-lt p1, v1, :cond_0

    .line 323
    add-int/lit8 p1, p1, 0x1

    .line 325
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/view/menu/s;

    return-object v0

    .line 320
    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ad;->lu:Landroid/support/v7/internal/view/menu/o;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/o;->cb()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public final getCount()I
    .locals 2

    .prologue
    .line 311
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ad;->lv:Landroid/support/v7/internal/view/menu/ac;

    invoke-static {v0}, Landroid/support/v7/internal/view/menu/ac;->a(Landroid/support/v7/internal/view/menu/ac;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ad;->lu:Landroid/support/v7/internal/view/menu/o;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/o;->ce()Ljava/util/ArrayList;

    move-result-object v0

    .line 313
    :goto_0
    iget v1, p0, Landroid/support/v7/internal/view/menu/ad;->ko:I

    if-gez v1, :cond_1

    .line 314
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 316
    :goto_1
    return v0

    .line 311
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ad;->lu:Landroid/support/v7/internal/view/menu/o;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/o;->cb()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 316
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method public final synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 300
    invoke-virtual {p0, p1}, Landroid/support/v7/internal/view/menu/ad;->C(I)Landroid/support/v7/internal/view/menu/s;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 331
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 335
    if-nez p2, :cond_1

    .line 336
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ad;->lv:Landroid/support/v7/internal/view/menu/ac;

    invoke-static {v0}, Landroid/support/v7/internal/view/menu/ac;->b(Landroid/support/v7/internal/view/menu/ac;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Landroid/support/v7/internal/view/menu/ac;->lm:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .line 339
    check-cast v0, Landroid/support/v7/internal/view/menu/ah;

    .line 340
    iget-object v2, p0, Landroid/support/v7/internal/view/menu/ad;->lv:Landroid/support/v7/internal/view/menu/ac;

    iget-boolean v2, v2, Landroid/support/v7/internal/view/menu/ac;->kj:Z

    if-eqz v2, :cond_0

    move-object v2, v1

    .line 341
    check-cast v2, Landroid/support/v7/internal/view/menu/ListMenuItemView;

    invoke-virtual {v2}, Landroid/support/v7/internal/view/menu/ListMenuItemView;->bR()V

    .line 343
    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/v7/internal/view/menu/ad;->C(I)Landroid/support/v7/internal/view/menu/s;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/support/v7/internal/view/menu/ah;->a(Landroid/support/v7/internal/view/menu/s;)V

    .line 344
    return-object v1

    :cond_1
    move-object v1, p2

    goto :goto_0
.end method

.method public final notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 365
    invoke-direct {p0}, Landroid/support/v7/internal/view/menu/ad;->bT()V

    .line 366
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 367
    return-void
.end method
