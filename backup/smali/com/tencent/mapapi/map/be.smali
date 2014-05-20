.class final Lcom/tencent/mapapi/map/be;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mapapi/map/bp;


# instance fields
.field private WP:Lcom/tencent/mapapi/map/v;

.field private WQ:Lcom/tencent/mapapi/map/v;

.field private WR:Lcom/tencent/mapapi/map/bh;

.field WS:Lcom/tencent/mapapi/map/x;

.field WT:Lcom/tencent/mapapi/map/x;


# direct methods
.method public constructor <init>(Lcom/tencent/mapapi/map/bh;)V
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object v0, p0, Lcom/tencent/mapapi/map/be;->WP:Lcom/tencent/mapapi/map/v;

    .line 25
    iput-object v0, p0, Lcom/tencent/mapapi/map/be;->WQ:Lcom/tencent/mapapi/map/v;

    .line 29
    new-instance v0, Lcom/tencent/mapapi/map/bf;

    invoke-direct {v0, p0}, Lcom/tencent/mapapi/map/bf;-><init>(Lcom/tencent/mapapi/map/be;)V

    iput-object v0, p0, Lcom/tencent/mapapi/map/be;->WS:Lcom/tencent/mapapi/map/x;

    .line 86
    new-instance v0, Lcom/tencent/mapapi/map/bg;

    invoke-direct {v0, p0}, Lcom/tencent/mapapi/map/bg;-><init>(Lcom/tencent/mapapi/map/be;)V

    iput-object v0, p0, Lcom/tencent/mapapi/map/be;->WT:Lcom/tencent/mapapi/map/x;

    .line 170
    iput-object p1, p0, Lcom/tencent/mapapi/map/be;->WR:Lcom/tencent/mapapi/map/bh;

    .line 171
    new-instance v0, Lcom/tencent/mapapi/map/v;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/tencent/mapapi/map/be;->WS:Lcom/tencent/mapapi/map/x;

    invoke-direct {v0, v1, v2}, Lcom/tencent/mapapi/map/v;-><init>(ILcom/tencent/mapapi/map/x;)V

    iput-object v0, p0, Lcom/tencent/mapapi/map/be;->WP:Lcom/tencent/mapapi/map/v;

    .line 172
    new-instance v0, Lcom/tencent/mapapi/map/v;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/tencent/mapapi/map/be;->WT:Lcom/tencent/mapapi/map/x;

    invoke-direct {v0, v1, v2}, Lcom/tencent/mapapi/map/v;-><init>(ILcom/tencent/mapapi/map/x;)V

    iput-object v0, p0, Lcom/tencent/mapapi/map/be;->WQ:Lcom/tencent/mapapi/map/v;

    .line 173
    iget-object v0, p0, Lcom/tencent/mapapi/map/be;->WP:Lcom/tencent/mapapi/map/v;

    invoke-virtual {v0}, Lcom/tencent/mapapi/map/v;->lX()V

    .line 174
    iget-object v0, p0, Lcom/tencent/mapapi/map/be;->WQ:Lcom/tencent/mapapi/map/v;

    invoke-virtual {v0}, Lcom/tencent/mapapi/map/v;->lX()V

    .line 175
    iget-object v0, p0, Lcom/tencent/mapapi/map/be;->WR:Lcom/tencent/mapapi/map/bh;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bh;->WW:Lcom/tencent/mapapi/map/bm;

    invoke-virtual {v0, p0}, Lcom/tencent/mapapi/map/bm;->a(Lcom/tencent/mapapi/map/bp;)V

    .line 176
    return-void
.end method

.method static synthetic a(Lcom/tencent/mapapi/map/be;)Lcom/tencent/mapapi/map/bh;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/tencent/mapapi/map/be;->WR:Lcom/tencent/mapapi/map/bh;

    return-object v0
.end method


# virtual methods
.method public final G(Z)V
    .locals 4
    .parameter

    .prologue
    .line 199
    iget-object v0, p0, Lcom/tencent/mapapi/map/be;->WR:Lcom/tencent/mapapi/map/bh;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mapapi/map/be;->WR:Lcom/tencent/mapapi/map/bh;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bh;->WX:Lcom/tencent/mapapi/map/bi;

    if-nez v0, :cond_1

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 202
    :cond_1
    iget-object v0, p0, Lcom/tencent/mapapi/map/be;->WR:Lcom/tencent/mapapi/map/bh;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bh;->WZ:Lcom/tencent/mapapi/map/bo;

    invoke-virtual {v0}, Lcom/tencent/mapapi/map/bo;->mO()V

    .line 204
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 205
    iget-object v0, p0, Lcom/tencent/mapapi/map/be;->WR:Lcom/tencent/mapapi/map/bh;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bh;->WX:Lcom/tencent/mapapi/map/bi;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bi;->Ua:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 208
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_3

    .line 209
    iget-object v0, p0, Lcom/tencent/mapapi/map/be;->WR:Lcom/tencent/mapapi/map/bh;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bh;->WX:Lcom/tencent/mapapi/map/bi;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bi;->Ua:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mapapi/map/ba;

    .line 210
    if-eqz v0, :cond_2

    .line 211
    invoke-virtual {v0, v2, p1}, Lcom/tencent/mapapi/map/ba;->a(Ljava/util/ArrayList;Z)V

    .line 214
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 216
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 217
    iget-object v0, p0, Lcom/tencent/mapapi/map/be;->WR:Lcom/tencent/mapapi/map/bh;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bh;->WW:Lcom/tencent/mapapi/map/bm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mapapi/map/be;->WR:Lcom/tencent/mapapi/map/bh;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bh;->WW:Lcom/tencent/mapapi/map/bm;

    invoke-virtual {v0}, Lcom/tencent/mapapi/map/bm;->mX()Lcom/tencent/mapapi/map/MapView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/tencent/mapapi/map/be;->WR:Lcom/tencent/mapapi/map/bh;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bh;->WW:Lcom/tencent/mapapi/map/bm;

    invoke-virtual {v0}, Lcom/tencent/mapapi/map/bm;->mX()Lcom/tencent/mapapi/map/MapView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mapapi/map/MapView;->postInvalidate()V

    .line 222
    iget-object v0, p0, Lcom/tencent/mapapi/map/be;->WR:Lcom/tencent/mapapi/map/bh;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bh;->Xa:Lcom/tencent/mapapi/map/k;

    invoke-interface {v0}, Lcom/tencent/mapapi/map/k;->mu()V

    goto :goto_0
.end method

.method public final bb(I)V
    .locals 2
    .parameter

    .prologue
    .line 180
    iget-object v0, p0, Lcom/tencent/mapapi/map/be;->WR:Lcom/tencent/mapapi/map/bh;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bh;->WW:Lcom/tencent/mapapi/map/bm;

    iget-boolean v0, v0, Lcom/tencent/mapapi/map/bm;->UN:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 185
    :goto_0
    return-void

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/tencent/mapapi/map/be;->WQ:Lcom/tencent/mapapi/map/v;

    invoke-virtual {v0, p1}, Lcom/tencent/mapapi/map/v;->bb(I)V

    goto :goto_0
.end method

.method public final lX()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 227
    iget-object v0, p0, Lcom/tencent/mapapi/map/be;->WR:Lcom/tencent/mapapi/map/bh;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bh;->WW:Lcom/tencent/mapapi/map/bm;

    invoke-virtual {v0, p0}, Lcom/tencent/mapapi/map/bm;->b(Lcom/tencent/mapapi/map/bp;)V

    .line 228
    iget-object v0, p0, Lcom/tencent/mapapi/map/be;->WQ:Lcom/tencent/mapapi/map/v;

    invoke-virtual {v0}, Lcom/tencent/mapapi/map/v;->md()V

    .line 229
    iget-object v0, p0, Lcom/tencent/mapapi/map/be;->WP:Lcom/tencent/mapapi/map/v;

    invoke-virtual {v0}, Lcom/tencent/mapapi/map/v;->me()V

    .line 233
    iput-object v1, p0, Lcom/tencent/mapapi/map/be;->WT:Lcom/tencent/mapapi/map/x;

    .line 234
    iput-object v1, p0, Lcom/tencent/mapapi/map/be;->WS:Lcom/tencent/mapapi/map/x;

    .line 235
    return-void
.end method

.method public final mB()V
    .locals 3

    .prologue
    .line 250
    iget-object v0, p0, Lcom/tencent/mapapi/map/be;->WR:Lcom/tencent/mapapi/map/bh;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bh;->WX:Lcom/tencent/mapapi/map/bi;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bi;->Ua:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 252
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 254
    iget-object v0, p0, Lcom/tencent/mapapi/map/be;->WR:Lcom/tencent/mapapi/map/bh;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bh;->WX:Lcom/tencent/mapapi/map/bi;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bi;->Ua:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mapapi/map/ba;

    .line 255
    if-eqz v0, :cond_0

    .line 257
    invoke-virtual {v0}, Lcom/tencent/mapapi/map/ba;->lX()V

    .line 252
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 261
    :cond_1
    return-void
.end method

.method public final mN()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 189
    iget-object v0, p0, Lcom/tencent/mapapi/map/be;->WR:Lcom/tencent/mapapi/map/bh;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bh;->WW:Lcom/tencent/mapapi/map/bm;

    iget-boolean v0, v0, Lcom/tencent/mapapi/map/bm;->UN:Z

    if-ne v0, v1, :cond_0

    .line 194
    :goto_0
    return-void

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/tencent/mapapi/map/be;->WP:Lcom/tencent/mapapi/map/v;

    invoke-virtual {v0, v1}, Lcom/tencent/mapapi/map/v;->bb(I)V

    goto :goto_0
.end method

.method public final ms()V
    .locals 2

    .prologue
    .line 245
    iget-object v0, p0, Lcom/tencent/mapapi/map/be;->WR:Lcom/tencent/mapapi/map/bh;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bh;->WW:Lcom/tencent/mapapi/map/bm;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/mapapi/map/bm;->G(Z)V

    .line 246
    return-void
.end method
