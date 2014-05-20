.class final Landroid/support/v7/internal/view/menu/n;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field private ko:I

.field final synthetic kp:Landroid/support/v7/internal/view/menu/m;


# direct methods
.method public constructor <init>(Landroid/support/v7/internal/view/menu/m;)V
    .locals 1
    .parameter

    .prologue
    .line 234
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/n;->kp:Landroid/support/v7/internal/view/menu/m;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 232
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/internal/view/menu/n;->ko:I

    .line 235
    invoke-direct {p0}, Landroid/support/v7/internal/view/menu/n;->bT()V

    .line 236
    return-void
.end method

.method private bT()V
    .locals 5

    .prologue
    .line 273
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/n;->kp:Landroid/support/v7/internal/view/menu/m;

    iget-object v0, v0, Landroid/support/v7/internal/view/menu/m;->hh:Landroid/support/v7/internal/view/menu/o;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/o;->ck()Landroid/support/v7/internal/view/menu/s;

    move-result-object v2

    .line 274
    if-eqz v2, :cond_1

    .line 275
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/n;->kp:Landroid/support/v7/internal/view/menu/m;

    iget-object v0, v0, Landroid/support/v7/internal/view/menu/m;->hh:Landroid/support/v7/internal/view/menu/o;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/o;->ce()Ljava/util/ArrayList;

    move-result-object v3

    .line 276
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 277
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_1

    .line 278
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/view/menu/s;

    .line 279
    if-ne v0, v2, :cond_0

    .line 280
    iput v1, p0, Landroid/support/v7/internal/view/menu/n;->ko:I

    .line 286
    :goto_1
    return-void

    .line 277
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 285
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/internal/view/menu/n;->ko:I

    goto :goto_1
.end method


# virtual methods
.method public final C(I)Landroid/support/v7/internal/view/menu/s;
    .locals 3
    .parameter

    .prologue
    .line 248
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/n;->kp:Landroid/support/v7/internal/view/menu/m;

    iget-object v0, v0, Landroid/support/v7/internal/view/menu/m;->hh:Landroid/support/v7/internal/view/menu/o;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/o;->ce()Ljava/util/ArrayList;

    move-result-object v1

    .line 249
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/n;->kp:Landroid/support/v7/internal/view/menu/m;

    invoke-static {v0}, Landroid/support/v7/internal/view/menu/m;->a(Landroid/support/v7/internal/view/menu/m;)I

    move-result v0

    add-int/2addr v0, p1

    .line 250
    iget v2, p0, Landroid/support/v7/internal/view/menu/n;->ko:I

    if-ltz v2, :cond_0

    iget v2, p0, Landroid/support/v7/internal/view/menu/n;->ko:I

    if-lt v0, v2, :cond_0

    .line 251
    add-int/lit8 v0, v0, 0x1

    .line 253
    :cond_0
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/view/menu/s;

    return-object v0
.end method

.method public final getCount()I
    .locals 2

    .prologue
    .line 239
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/n;->kp:Landroid/support/v7/internal/view/menu/m;

    iget-object v0, v0, Landroid/support/v7/internal/view/menu/m;->hh:Landroid/support/v7/internal/view/menu/o;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/o;->ce()Ljava/util/ArrayList;

    move-result-object v0

    .line 240
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/n;->kp:Landroid/support/v7/internal/view/menu/m;

    invoke-static {v1}, Landroid/support/v7/internal/view/menu/m;->a(Landroid/support/v7/internal/view/menu/m;)I

    move-result v1

    sub-int/2addr v0, v1

    .line 241
    iget v1, p0, Landroid/support/v7/internal/view/menu/n;->ko:I

    if-gez v1, :cond_0

    .line 244
    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public final synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 231
    invoke-virtual {p0, p1}, Landroid/support/v7/internal/view/menu/n;->C(I)Landroid/support/v7/internal/view/menu/s;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 259
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 263
    if-nez p2, :cond_0

    .line 264
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/n;->kp:Landroid/support/v7/internal/view/menu/m;

    iget-object v0, v0, Landroid/support/v7/internal/view/menu/m;->ge:Landroid/view/LayoutInflater;

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/n;->kp:Landroid/support/v7/internal/view/menu/m;

    iget v1, v1, Landroid/support/v7/internal/view/menu/m;->jU:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .line 267
    check-cast v0, Landroid/support/v7/internal/view/menu/ah;

    .line 268
    invoke-virtual {p0, p1}, Landroid/support/v7/internal/view/menu/n;->C(I)Landroid/support/v7/internal/view/menu/s;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/support/v7/internal/view/menu/ah;->a(Landroid/support/v7/internal/view/menu/s;)V

    .line 269
    return-object v1

    :cond_0
    move-object v1, p2

    goto :goto_0
.end method

.method public final notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 290
    invoke-direct {p0}, Landroid/support/v7/internal/view/menu/n;->bT()V

    .line 291
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 292
    return-void
.end method
