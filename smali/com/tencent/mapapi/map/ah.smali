.class final Lcom/tencent/mapapi/map/ah;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private UP:Landroid/os/Handler;

.field private Ub:Ljava/util/List;

.field private final Ud:I

.field private final Um:I

.field private final Un:I

.field private Wm:Lcom/tencent/mapapi/map/bh;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object v0, p0, Lcom/tencent/mapapi/map/ah;->UP:Landroid/os/Handler;

    .line 13
    iput-object v0, p0, Lcom/tencent/mapapi/map/ah;->Ub:Ljava/util/List;

    .line 15
    iput-object v0, p0, Lcom/tencent/mapapi/map/ah;->Wm:Lcom/tencent/mapapi/map/bh;

    .line 16
    const/16 v0, 0x10

    iput v0, p0, Lcom/tencent/mapapi/map/ah;->Ud:I

    .line 17
    const/16 v0, 0xa

    iput v0, p0, Lcom/tencent/mapapi/map/ah;->Um:I

    .line 18
    const/16 v0, 0xf

    iput v0, p0, Lcom/tencent/mapapi/map/ah;->Un:I

    .line 22
    iget-object v0, p0, Lcom/tencent/mapapi/map/ah;->UP:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/tencent/mapapi/map/ah;->UP:Landroid/os/Handler;

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/tencent/mapapi/map/ah;->Ub:Ljava/util/List;

    if-nez v0, :cond_1

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mapapi/map/ah;->Ub:Ljava/util/List;

    .line 30
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/tencent/mapapi/map/ah;)Lcom/tencent/mapapi/map/bh;
    .locals 1
    .parameter

    .prologue
    .line 10
    iget-object v0, p0, Lcom/tencent/mapapi/map/ah;->Wm:Lcom/tencent/mapapi/map/bh;

    return-object v0
.end method

.method private bj(I)V
    .locals 9
    .parameter

    .prologue
    const/4 v0, 0x0

    const/16 v8, 0x10

    .line 34
    new-array v6, v8, [D

    .line 37
    const-wide/high16 v1, 0x4000

    int-to-double v3, p1

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    .line 38
    const/4 v3, 0x1

    move v5, v3

    :goto_0
    if-ge v5, v8, :cond_0

    .line 39
    mul-int/lit8 v3, v5, 0xa

    int-to-long v3, v3

    invoke-static {v1, v2, v3, v4}, Lcom/tencent/mapapi/map/bq;->a(DJ)D

    move-result-wide v3

    .line 41
    div-double/2addr v1, v3

    .line 43
    rsub-int/lit8 v7, v5, 0x10

    aput-wide v1, v6, v7

    .line 38
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    move-wide v1, v3

    goto :goto_0

    .line 45
    :cond_0
    aput-wide v1, v6, v0

    .line 47
    :goto_1
    if-ge v0, v8, :cond_1

    .line 48
    new-instance v1, Lcom/tencent/mapapi/map/aj;

    invoke-direct {v1, p0}, Lcom/tencent/mapapi/map/aj;-><init>(Lcom/tencent/mapapi/map/ah;)V

    .line 49
    aget-wide v2, v6, v0

    invoke-static {v1, v2, v3}, Lcom/tencent/mapapi/map/aj;->a(Lcom/tencent/mapapi/map/aj;D)D

    .line 50
    iget-object v2, p0, Lcom/tencent/mapapi/map/ah;->Ub:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 52
    :cond_1
    return-void
.end method


# virtual methods
.method public final F(Z)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 241
    iget-object v0, p0, Lcom/tencent/mapapi/map/ah;->Ub:Ljava/util/List;

    if-nez v0, :cond_1

    .line 265
    :cond_0
    :goto_0
    return-void

    .line 245
    :cond_1
    iget-object v0, p0, Lcom/tencent/mapapi/map/ah;->Ub:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 247
    if-gtz v0, :cond_2

    .line 249
    iget-object v0, p0, Lcom/tencent/mapapi/map/ah;->Wm:Lcom/tencent/mapapi/map/bh;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bh;->WW:Lcom/tencent/mapapi/map/bm;

    invoke-virtual {v0, v1}, Lcom/tencent/mapapi/map/bm;->G(Z)V

    goto :goto_0

    .line 252
    :cond_2
    iget-object v0, p0, Lcom/tencent/mapapi/map/ah;->Ub:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mapapi/map/ag;

    .line 253
    if-eqz v0, :cond_0

    .line 255
    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    .line 257
    iget-object v1, p0, Lcom/tencent/mapapi/map/ah;->UP:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 261
    :cond_3
    iget-object v1, p0, Lcom/tencent/mapapi/map/ah;->UP:Landroid/os/Handler;

    const-wide/16 v2, 0xa

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public final a(Lcom/tencent/mapapi/map/bh;)V
    .locals 0
    .parameter

    .prologue
    .line 236
    iput-object p1, p0, Lcom/tencent/mapapi/map/ah;->Wm:Lcom/tencent/mapapi/map/bh;

    .line 237
    return-void
.end method

.method public final bk(I)Z
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 77
    iget-object v2, p0, Lcom/tencent/mapapi/map/ah;->Ub:Ljava/util/List;

    if-nez v2, :cond_1

    .line 89
    :cond_0
    :goto_0
    return v0

    .line 81
    :cond_1
    iget-object v2, p0, Lcom/tencent/mapapi/map/ah;->Wm:Lcom/tencent/mapapi/map/bh;

    iget-object v2, v2, Lcom/tencent/mapapi/map/bh;->WW:Lcom/tencent/mapapi/map/bm;

    invoke-virtual {v2}, Lcom/tencent/mapapi/map/bm;->mV()I

    move-result v2

    .line 82
    iget-object v3, p0, Lcom/tencent/mapapi/map/ah;->Wm:Lcom/tencent/mapapi/map/bh;

    iget-object v3, v3, Lcom/tencent/mapapi/map/bh;->WW:Lcom/tencent/mapapi/map/bm;

    invoke-virtual {v3}, Lcom/tencent/mapapi/map/bm;->mS()I

    move-result v3

    .line 83
    if-eq v3, v2, :cond_0

    .line 87
    invoke-direct {p0, p1}, Lcom/tencent/mapapi/map/ah;->bj(I)V

    .line 88
    invoke-virtual {p0, v1}, Lcom/tencent/mapapi/map/ah;->F(Z)V

    move v0, v1

    .line 89
    goto :goto_0
.end method

.method public final bl(I)Z
    .locals 10
    .parameter

    .prologue
    const/16 v9, 0x10

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 150
    iget-object v2, p0, Lcom/tencent/mapapi/map/ah;->Ub:Ljava/util/List;

    if-nez v2, :cond_1

    .line 162
    :cond_0
    :goto_0
    return v0

    .line 154
    :cond_1
    iget-object v2, p0, Lcom/tencent/mapapi/map/ah;->Wm:Lcom/tencent/mapapi/map/bh;

    iget-object v2, v2, Lcom/tencent/mapapi/map/bh;->WW:Lcom/tencent/mapapi/map/bm;

    invoke-virtual {v2}, Lcom/tencent/mapapi/map/bm;->mV()I

    move-result v2

    .line 155
    iget-object v3, p0, Lcom/tencent/mapapi/map/ah;->Wm:Lcom/tencent/mapapi/map/bh;

    iget-object v3, v3, Lcom/tencent/mapapi/map/bh;->WW:Lcom/tencent/mapapi/map/bm;

    invoke-virtual {v3}, Lcom/tencent/mapapi/map/bm;->mT()I

    move-result v3

    .line 156
    if-eq v3, v2, :cond_0

    .line 160
    new-array v7, v9, [D

    const-wide/high16 v2, 0x3fe0

    int-to-double v4, p1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    move v6, v1

    :goto_1
    if-ge v6, v9, :cond_2

    mul-int/lit8 v4, v6, 0xa

    int-to-long v4, v4

    invoke-static {v2, v3, v4, v5}, Lcom/tencent/mapapi/map/bq;->a(DJ)D

    move-result-wide v4

    div-double/2addr v2, v4

    rsub-int/lit8 v8, v6, 0x10

    aput-wide v2, v7, v8

    add-int/lit8 v2, v6, 0x1

    move v6, v2

    move-wide v2, v4

    goto :goto_1

    :cond_2
    aput-wide v2, v7, v0

    :goto_2
    if-ge v0, v9, :cond_3

    new-instance v2, Lcom/tencent/mapapi/map/aj;

    invoke-direct {v2, p0}, Lcom/tencent/mapapi/map/aj;-><init>(Lcom/tencent/mapapi/map/ah;)V

    aget-wide v3, v7, v0

    invoke-static {v2, v3, v4}, Lcom/tencent/mapapi/map/aj;->a(Lcom/tencent/mapapi/map/aj;D)D

    iget-object v3, p0, Lcom/tencent/mapapi/map/ah;->Ub:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 161
    :cond_3
    invoke-virtual {p0, v1}, Lcom/tencent/mapapi/map/ah;->F(Z)V

    move v0, v1

    .line 162
    goto :goto_0
.end method

.method public final e(Lcom/tencent/mapapi/map/GeoPoint;)V
    .locals 9
    .parameter

    .prologue
    const/4 v4, 0x0

    const/16 v1, 0x10

    const/4 v2, 0x1

    .line 167
    iget-object v0, p0, Lcom/tencent/mapapi/map/ah;->Ub:Ljava/util/List;

    if-nez v0, :cond_1

    .line 232
    :cond_0
    :goto_0
    return-void

    .line 171
    :cond_1
    if-eqz p1, :cond_0

    .line 175
    iget-object v0, p0, Lcom/tencent/mapapi/map/ah;->Ub:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 176
    if-lez v0, :cond_2

    .line 178
    iget-object v0, p0, Lcom/tencent/mapapi/map/ah;->Ub:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 180
    :cond_2
    iget-object v0, p0, Lcom/tencent/mapapi/map/ah;->UP:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 181
    iget-object v0, p0, Lcom/tencent/mapapi/map/ah;->Wm:Lcom/tencent/mapapi/map/bh;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bh;->WW:Lcom/tencent/mapapi/map/bm;

    invoke-virtual {v0}, Lcom/tencent/mapapi/map/bm;->mW()Lcom/tencent/mapapi/map/GeoPoint;

    move-result-object v3

    .line 182
    iget-object v0, p0, Lcom/tencent/mapapi/map/ah;->Wm:Lcom/tencent/mapapi/map/bh;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bh;->WW:Lcom/tencent/mapapi/map/bm;

    invoke-virtual {v0}, Lcom/tencent/mapapi/map/bm;->mX()Lcom/tencent/mapapi/map/MapView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mapapi/map/MapView;->mp()Lcom/tencent/mapapi/map/o;

    move-result-object v0

    invoke-interface {v0, p1, v4}, Lcom/tencent/mapapi/map/o;->a(Lcom/tencent/mapapi/map/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    .line 183
    iget-object v4, p0, Lcom/tencent/mapapi/map/ah;->Wm:Lcom/tencent/mapapi/map/bh;

    iget-object v4, v4, Lcom/tencent/mapapi/map/bh;->WZ:Lcom/tencent/mapapi/map/bo;

    invoke-virtual {v4}, Lcom/tencent/mapapi/map/bo;->mY()Landroid/graphics/Point;

    move-result-object v4

    .line 185
    iget v5, v0, Landroid/graphics/Point;->x:I

    iget v6, v4, Landroid/graphics/Point;->x:I

    sub-int/2addr v5, v6

    .line 186
    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v4, v4, Landroid/graphics/Point;->y:I

    sub-int/2addr v0, v4

    .line 188
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 189
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 191
    if-le v4, v0, :cond_4

    int-to-float v0, v4

    .line 192
    :goto_1
    const/high16 v4, 0x4170

    div-float/2addr v0, v4

    .line 193
    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v0, v4

    .line 195
    if-le v0, v1, :cond_3

    move v0, v1

    .line 200
    :cond_3
    invoke-virtual {p1}, Lcom/tencent/mapapi/map/GeoPoint;->getLatitudeE6()I

    move-result v1

    invoke-virtual {v3}, Lcom/tencent/mapapi/map/GeoPoint;->getLatitudeE6()I

    move-result v4

    sub-int/2addr v1, v4

    int-to-float v1, v1

    .line 201
    invoke-virtual {p1}, Lcom/tencent/mapapi/map/GeoPoint;->getLongitudeE6()I

    move-result v4

    invoke-virtual {v3}, Lcom/tencent/mapapi/map/GeoPoint;->getLongitudeE6()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    .line 203
    int-to-float v5, v0

    div-float/2addr v1, v5

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 204
    int-to-float v1, v0

    div-float v1, v4, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v4

    move v1, v2

    .line 209
    :goto_2
    if-ge v1, v0, :cond_5

    .line 211
    invoke-virtual {v3}, Lcom/tencent/mapapi/map/GeoPoint;->getLatitudeE6()I

    move-result v6

    mul-int v7, v5, v1

    add-int/2addr v6, v7

    .line 212
    invoke-virtual {v3}, Lcom/tencent/mapapi/map/GeoPoint;->getLongitudeE6()I

    move-result v7

    mul-int v8, v4, v1

    add-int/2addr v7, v8

    .line 213
    new-instance v8, Lcom/tencent/mapapi/map/ai;

    invoke-direct {v8, p0}, Lcom/tencent/mapapi/map/ai;-><init>(Lcom/tencent/mapapi/map/ah;)V

    .line 214
    invoke-virtual {v8, v6, v7}, Lcom/tencent/mapapi/map/ai;->u(II)V

    .line 216
    iget-object v6, p0, Lcom/tencent/mapapi/map/ah;->Ub:Ljava/util/List;

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 191
    :cond_4
    int-to-float v0, v0

    goto :goto_1

    .line 219
    :cond_5
    new-instance v0, Lcom/tencent/mapapi/map/ai;

    invoke-direct {v0, p0}, Lcom/tencent/mapapi/map/ai;-><init>(Lcom/tencent/mapapi/map/ah;)V

    .line 220
    invoke-virtual {p1}, Lcom/tencent/mapapi/map/GeoPoint;->getLatitudeE6()I

    move-result v1

    invoke-virtual {p1}, Lcom/tencent/mapapi/map/GeoPoint;->getLongitudeE6()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Lcom/tencent/mapapi/map/ai;->u(II)V

    .line 221
    iget-object v1, p0, Lcom/tencent/mapapi/map/ah;->Ub:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    invoke-virtual {p0, v2}, Lcom/tencent/mapapi/map/ah;->F(Z)V

    goto/16 :goto_0
.end method

.method public final md()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 289
    iget-object v0, p0, Lcom/tencent/mapapi/map/ah;->Ub:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mapapi/map/ah;->UP:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/tencent/mapapi/map/ah;->Ub:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_1

    iget-object v0, p0, Lcom/tencent/mapapi/map/ah;->Ub:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mapapi/map/ag;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/mapapi/map/ag;->md()V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 290
    :cond_1
    iput-object v4, p0, Lcom/tencent/mapapi/map/ah;->Ub:Ljava/util/List;

    .line 291
    iput-object v4, p0, Lcom/tencent/mapapi/map/ah;->UP:Landroid/os/Handler;

    .line 292
    iput-object v4, p0, Lcom/tencent/mapapi/map/ah;->Wm:Lcom/tencent/mapapi/map/bh;

    .line 293
    return-void
.end method

.method public final t(II)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 94
    iget-object v2, p0, Lcom/tencent/mapapi/map/ah;->Ub:Ljava/util/List;

    if-nez v2, :cond_1

    .line 117
    :cond_0
    :goto_0
    return v0

    .line 98
    :cond_1
    iget-object v2, p0, Lcom/tencent/mapapi/map/ah;->Wm:Lcom/tencent/mapapi/map/bh;

    iget-object v2, v2, Lcom/tencent/mapapi/map/bh;->WW:Lcom/tencent/mapapi/map/bm;

    invoke-virtual {v2}, Lcom/tencent/mapapi/map/bm;->mV()I

    move-result v2

    .line 99
    iget-object v3, p0, Lcom/tencent/mapapi/map/ah;->Wm:Lcom/tencent/mapapi/map/bh;

    iget-object v3, v3, Lcom/tencent/mapapi/map/bh;->WW:Lcom/tencent/mapapi/map/bm;

    invoke-virtual {v3}, Lcom/tencent/mapapi/map/bm;->mS()I

    move-result v3

    .line 100
    if-eq v3, v2, :cond_0

    .line 104
    new-instance v0, Lcom/tencent/mapapi/map/ak;

    invoke-direct {v0, p0}, Lcom/tencent/mapapi/map/ak;-><init>(Lcom/tencent/mapapi/map/ah;)V

    .line 105
    invoke-virtual {v0, p1, p2}, Lcom/tencent/mapapi/map/ak;->u(II)V

    .line 106
    iget-object v2, p0, Lcom/tencent/mapapi/map/ah;->Ub:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    invoke-direct {p0, v1}, Lcom/tencent/mapapi/map/ah;->bj(I)V

    .line 110
    iget-object v0, p0, Lcom/tencent/mapapi/map/ah;->Wm:Lcom/tencent/mapapi/map/bh;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bh;->WW:Lcom/tencent/mapapi/map/bm;

    invoke-virtual {v0}, Lcom/tencent/mapapi/map/bm;->mU()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 111
    iget-object v2, p0, Lcom/tencent/mapapi/map/ah;->Wm:Lcom/tencent/mapapi/map/bh;

    iget-object v2, v2, Lcom/tencent/mapapi/map/bh;->WW:Lcom/tencent/mapapi/map/bm;

    invoke-virtual {v2}, Lcom/tencent/mapapi/map/bm;->mE()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    .line 112
    new-instance v3, Lcom/tencent/mapapi/map/ak;

    invoke-direct {v3, p0}, Lcom/tencent/mapapi/map/ak;-><init>(Lcom/tencent/mapapi/map/ah;)V

    .line 113
    invoke-virtual {v3, v0, v2}, Lcom/tencent/mapapi/map/ak;->u(II)V

    .line 114
    iget-object v0, p0, Lcom/tencent/mapapi/map/ah;->Ub:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    invoke-virtual {p0, v1}, Lcom/tencent/mapapi/map/ah;->F(Z)V

    move v0, v1

    .line 117
    goto :goto_0
.end method
