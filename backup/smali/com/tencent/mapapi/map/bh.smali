.class final Lcom/tencent/mapapi/map/bh;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public WV:Lcom/tencent/mapapi/map/bn;

.field public WW:Lcom/tencent/mapapi/map/bm;

.field public WX:Lcom/tencent/mapapi/map/bi;

.field public WY:Lcom/tencent/mapapi/map/bl;

.field public WZ:Lcom/tencent/mapapi/map/bo;

.field public Xa:Lcom/tencent/mapapi/map/k;

.field private g:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tencent/mapapi/map/MapView;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object v0, p0, Lcom/tencent/mapapi/map/bh;->WZ:Lcom/tencent/mapapi/map/bo;

    .line 45
    iput-object v0, p0, Lcom/tencent/mapapi/map/bh;->Xa:Lcom/tencent/mapapi/map/k;

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mapapi/map/bh;->g:I

    .line 50
    invoke-static {p1}, Lcom/tencent/mapapi/map/bq;->p(Landroid/content/Context;)V

    .line 51
    sget-object v0, Lcom/tencent/mapapi/map/bq;->UK:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 53
    invoke-static {p1}, Lcom/tencent/mapapi/map/bq;->o(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/mapapi/map/bq;->UK:Ljava/lang/String;

    .line 55
    :cond_0
    sget-object v0, Lcom/tencent/mapapi/map/bq;->d:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 57
    invoke-static {p1}, Lcom/tencent/mapapi/map/bq;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/mapapi/map/bq;->d:Ljava/lang/String;

    .line 59
    :cond_1
    sget-object v0, Lcom/tencent/mapapi/map/bq;->UL:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 61
    invoke-static {p1}, Lcom/tencent/mapapi/map/bu;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/mapapi/map/bq;->UL:Ljava/lang/String;

    .line 63
    :cond_2
    new-instance v0, Lcom/tencent/mapapi/map/bm;

    invoke-direct {v0, p0, p2}, Lcom/tencent/mapapi/map/bm;-><init>(Lcom/tencent/mapapi/map/bh;Lcom/tencent/mapapi/map/MapView;)V

    iput-object v0, p0, Lcom/tencent/mapapi/map/bh;->WW:Lcom/tencent/mapapi/map/bm;

    .line 64
    iget-object v0, p0, Lcom/tencent/mapapi/map/bh;->WW:Lcom/tencent/mapapi/map/bm;

    iput-object v0, p0, Lcom/tencent/mapapi/map/bh;->Xa:Lcom/tencent/mapapi/map/k;

    .line 65
    new-instance v0, Lcom/tencent/mapapi/map/bo;

    iget-object v1, p0, Lcom/tencent/mapapi/map/bh;->WW:Lcom/tencent/mapapi/map/bm;

    invoke-direct {v0, v1}, Lcom/tencent/mapapi/map/bo;-><init>(Lcom/tencent/mapapi/map/bm;)V

    iput-object v0, p0, Lcom/tencent/mapapi/map/bh;->WZ:Lcom/tencent/mapapi/map/bo;

    .line 66
    iget-object v0, p0, Lcom/tencent/mapapi/map/bh;->WZ:Lcom/tencent/mapapi/map/bo;

    invoke-virtual {v0}, Lcom/tencent/mapapi/map/bo;->lX()V

    .line 68
    new-instance v0, Lcom/tencent/mapapi/map/bl;

    invoke-direct {v0, p0, p1, p3}, Lcom/tencent/mapapi/map/bl;-><init>(Lcom/tencent/mapapi/map/bh;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/mapapi/map/bh;->WY:Lcom/tencent/mapapi/map/bl;

    .line 69
    new-instance v0, Lcom/tencent/mapapi/map/bi;

    invoke-direct {v0, p0, p1}, Lcom/tencent/mapapi/map/bi;-><init>(Lcom/tencent/mapapi/map/bh;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/mapapi/map/bh;->WX:Lcom/tencent/mapapi/map/bi;

    .line 70
    new-instance v0, Lcom/tencent/mapapi/map/bn;

    invoke-direct {v0, p0}, Lcom/tencent/mapapi/map/bn;-><init>(Lcom/tencent/mapapi/map/bh;)V

    iput-object v0, p0, Lcom/tencent/mapapi/map/bh;->WV:Lcom/tencent/mapapi/map/bn;

    .line 71
    const-string v0, "logo"

    invoke-static {v0}, Lcom/tencent/mapapi/map/bq;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mapapi/map/bh;->WY:Lcom/tencent/mapapi/map/bl;

    invoke-virtual {v1}, Lcom/tencent/mapapi/map/bl;->mQ()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/tencent/mapapi/map/bq;->e(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Lcom/tencent/mapapi/map/bd;

    invoke-direct {v1, p0, v0}, Lcom/tencent/mapapi/map/bd;-><init>(Lcom/tencent/mapapi/map/bh;Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/tencent/mapapi/map/bh;->WX:Lcom/tencent/mapapi/map/bi;

    invoke-virtual {v0, v1}, Lcom/tencent/mapapi/map/bi;->a(Lcom/tencent/mapapi/map/az;)V

    .line 73
    const-string v0, "marker_small.png"

    .line 75
    sget v1, Lcom/tencent/mapapi/map/bq;->a:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    .line 77
    const-string v0, "marker_big.png"

    .line 83
    :cond_3
    :goto_0
    invoke-static {p1, v0}, Lcom/tencent/mapapi/map/bq;->e(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/tencent/mapapi/map/bq;->WE:Landroid/graphics/Bitmap;

    .line 84
    return-void

    .line 79
    :cond_4
    sget v1, Lcom/tencent/mapapi/map/bq;->a:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 81
    const-string v0, "marker_big.png"

    goto :goto_0
.end method

.method static synthetic b(Lcom/tencent/mapapi/map/bh;)I
    .locals 2
    .parameter

    .prologue
    .line 32
    iget v0, p0, Lcom/tencent/mapapi/map/bh;->g:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/tencent/mapapi/map/bh;->g:I

    return v0
.end method

.method static synthetic c(Lcom/tencent/mapapi/map/bh;)I
    .locals 1
    .parameter

    .prologue
    .line 32
    iget v0, p0, Lcom/tencent/mapapi/map/bh;->g:I

    return v0
.end method

.method static synthetic d(Lcom/tencent/mapapi/map/bh;)I
    .locals 1
    .parameter

    .prologue
    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mapapi/map/bh;->g:I

    return v0
.end method
