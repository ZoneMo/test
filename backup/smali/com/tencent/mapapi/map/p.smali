.class public final Lcom/tencent/mapapi/map/p;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private UL:Ljava/lang/String;

.field private Uo:I

.field private VH:Landroid/content/Context;

.field private VI:Lcom/tencent/mapapi/map/s;

.field private VJ:Lcom/tencent/mapapi/map/MapView;

.field private VK:Lcom/tencent/mapapi/map/br;

.field private VL:I

.field private VM:I

.field VN:Lcom/tencent/mapapi/a/c;

.field private VO:Lcom/tencent/mapapi/map/t;

.field private g:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/mapapi/map/s;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object v0, p0, Lcom/tencent/mapapi/map/p;->VH:Landroid/content/Context;

    .line 69
    iput-object v0, p0, Lcom/tencent/mapapi/map/p;->VJ:Lcom/tencent/mapapi/map/MapView;

    .line 71
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mapapi/map/p;->UL:Ljava/lang/String;

    .line 75
    sget-object v0, Lcom/tencent/mapapi/map/br;->XI:Lcom/tencent/mapapi/map/br;

    iput-object v0, p0, Lcom/tencent/mapapi/map/p;->VK:Lcom/tencent/mapapi/map/br;

    .line 80
    const/16 v0, 0xa

    iput v0, p0, Lcom/tencent/mapapi/map/p;->g:I

    .line 85
    iput v1, p0, Lcom/tencent/mapapi/map/p;->Uo:I

    .line 90
    iput v1, p0, Lcom/tencent/mapapi/map/p;->VL:I

    .line 94
    iput v1, p0, Lcom/tencent/mapapi/map/p;->VM:I

    .line 398
    new-instance v0, Lcom/tencent/mapapi/map/q;

    invoke-direct {v0, p0}, Lcom/tencent/mapapi/map/q;-><init>(Lcom/tencent/mapapi/map/p;)V

    iput-object v0, p0, Lcom/tencent/mapapi/map/p;->VN:Lcom/tencent/mapapi/a/c;

    .line 517
    new-instance v0, Lcom/tencent/mapapi/map/r;

    invoke-direct {v0, p0}, Lcom/tencent/mapapi/map/r;-><init>(Lcom/tencent/mapapi/map/p;)V

    iput-object v0, p0, Lcom/tencent/mapapi/map/p;->VO:Lcom/tencent/mapapi/map/t;

    .line 116
    iput-object p3, p0, Lcom/tencent/mapapi/map/p;->VI:Lcom/tencent/mapapi/map/s;

    .line 117
    iput-object p2, p0, Lcom/tencent/mapapi/map/p;->UL:Ljava/lang/String;

    .line 120
    sget-object v0, Lcom/tencent/mapapi/map/bq;->UK:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/tencent/mapapi/map/bq;->o(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/mapapi/map/bq;->UK:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/tencent/mapapi/map/bq;->d:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/tencent/mapapi/map/bq;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/mapapi/map/bq;->d:Ljava/lang/String;

    :cond_1
    sget-object v0, Lcom/tencent/mapapi/map/bq;->UL:Ljava/lang/String;

    if-nez v0, :cond_2

    invoke-static {p1}, Lcom/tencent/mapapi/map/bu;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/mapapi/map/bq;->UL:Ljava/lang/String;

    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mapapi/map/p;->VH:Landroid/content/Context;

    invoke-static {p1}, Lcom/tencent/mapapi/map/bq;->a(Landroid/content/Context;)V

    sget-object v0, Lcom/tencent/mapapi/map/bq;->UK:Ljava/lang/String;

    if-nez v0, :cond_3

    invoke-static {p1}, Lcom/tencent/mapapi/map/bq;->o(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/mapapi/map/bq;->UK:Ljava/lang/String;

    .line 121
    :cond_3
    return-void
.end method

.method static synthetic a(Lcom/tencent/mapapi/map/p;Lcom/tencent/mapapi/map/br;)Lcom/tencent/mapapi/map/br;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 17
    iput-object p1, p0, Lcom/tencent/mapapi/map/p;->VK:Lcom/tencent/mapapi/map/br;

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/mapapi/map/p;)Lcom/tencent/mapapi/map/s;
    .locals 1
    .parameter

    .prologue
    .line 17
    iget-object v0, p0, Lcom/tencent/mapapi/map/p;->VI:Lcom/tencent/mapapi/map/s;

    return-object v0
.end method

.method static synthetic b(Lcom/tencent/mapapi/map/p;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/tencent/mapapi/map/p;->mj()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/mapapi/map/p;)Lcom/tencent/mapapi/map/MapView;
    .locals 1
    .parameter

    .prologue
    .line 17
    iget-object v0, p0, Lcom/tencent/mapapi/map/p;->VJ:Lcom/tencent/mapapi/map/MapView;

    return-object v0
.end method

.method static synthetic d(Lcom/tencent/mapapi/map/p;)Lcom/tencent/mapapi/map/br;
    .locals 1
    .parameter

    .prologue
    .line 17
    iget-object v0, p0, Lcom/tencent/mapapi/map/p;->VK:Lcom/tencent/mapapi/map/br;

    return-object v0
.end method

.method private mj()Ljava/lang/String;
    .locals 1

    .prologue
    .line 482
    iget-object v0, p0, Lcom/tencent/mapapi/map/p;->VJ:Lcom/tencent/mapapi/map/MapView;

    if-eqz v0, :cond_0

    .line 484
    iget-object v0, p0, Lcom/tencent/mapapi/map/p;->VJ:Lcom/tencent/mapapi/map/MapView;

    invoke-virtual {v0}, Lcom/tencent/mapapi/map/MapView;->mr()Ljava/lang/String;

    move-result-object v0

    .line 486
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mapapi/map/p;->UL:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public final d(Lcom/tencent/mapapi/map/GeoPoint;)Z
    .locals 9
    .parameter

    .prologue
    const-wide v7, 0x412e848000000000L

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 271
    if-nez p1, :cond_0

    .line 273
    iget-object v0, p0, Lcom/tencent/mapapi/map/p;->VI:Lcom/tencent/mapapi/map/s;

    const/4 v2, 0x3

    invoke-interface {v0, v2, v3}, Lcom/tencent/mapapi/map/s;->a(ILcom/tencent/mapapi/b/a;)V

    move v0, v1

    .line 300
    :goto_0
    return v0

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/tencent/mapapi/map/p;->VH:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/mapapi/a/a;->m(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 279
    iget-object v0, p0, Lcom/tencent/mapapi/map/p;->VI:Lcom/tencent/mapapi/map/s;

    invoke-interface {v0, v2, v3}, Lcom/tencent/mapapi/map/s;->a(ILcom/tencent/mapapi/b/a;)V

    move v0, v1

    .line 281
    goto :goto_0

    .line 284
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/mapapi/map/p;->mz()Z

    move-result v0

    if-nez v0, :cond_2

    .line 286
    iget-object v0, p0, Lcom/tencent/mapapi/map/p;->VI:Lcom/tencent/mapapi/map/s;

    const/4 v2, 0x5

    invoke-interface {v0, v2, v3}, Lcom/tencent/mapapi/map/s;->a(ILcom/tencent/mapapi/b/a;)V

    move v0, v1

    .line 287
    goto :goto_0

    .line 290
    :cond_2
    invoke-virtual {p1}, Lcom/tencent/mapapi/map/GeoPoint;->getLongitudeE6()I

    move-result v0

    int-to-double v3, v0

    div-double/2addr v3, v7

    .line 291
    invoke-virtual {p1}, Lcom/tencent/mapapi/map/GeoPoint;->getLatitudeE6()I

    move-result v0

    int-to-double v5, v0

    div-double/2addr v5, v7

    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v7, "http://map.soso.com/loc?&s=2&fm=0&npois=1&px="

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "&py="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 296
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/tencent/mapapi/map/p;->mj()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/tencent/mapapi/map/bq;->UK:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/mapapi/a/b;->mj()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/tencent/mapapi/map/p;->VH:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/mapapi/a/a;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    const-string v0, "0123456789ABCDEF"

    :cond_3
    invoke-static {v0}, Lcom/tencent/mapapi/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "&from=mobapi&pf=android&di="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "&ak="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "&ver="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "&nt="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/tencent/mapapi/map/p;->VH:Landroid/content/Context;

    invoke-static {v4}, Lcom/tencent/mapapi/a/a;->o(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "&an="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 298
    new-instance v3, Lcom/tencent/mapapi/a/b;

    iget-object v4, p0, Lcom/tencent/mapapi/map/p;->VN:Lcom/tencent/mapapi/a/c;

    iget-object v5, p0, Lcom/tencent/mapapi/map/p;->VO:Lcom/tencent/mapapi/map/t;

    invoke-direct {v3, v4, v5}, Lcom/tencent/mapapi/a/b;-><init>(Lcom/tencent/mapapi/a/c;Lcom/tencent/mapapi/map/t;)V

    new-array v4, v2, [Ljava/lang/String;

    aput-object v0, v4, v1

    invoke-virtual {v3, v4}, Lcom/tencent/mapapi/a/b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move v0, v2

    .line 300
    goto/16 :goto_0
.end method

.method public final mz()Z
    .locals 2

    .prologue
    .line 501
    iget-object v0, p0, Lcom/tencent/mapapi/map/p;->VJ:Lcom/tencent/mapapi/map/MapView;

    if-eqz v0, :cond_0

    .line 503
    iget-object v0, p0, Lcom/tencent/mapapi/map/p;->VJ:Lcom/tencent/mapapi/map/MapView;

    invoke-virtual {v0}, Lcom/tencent/mapapi/map/MapView;->mq()Z

    move-result v0

    .line 505
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mapapi/map/p;->VK:Lcom/tencent/mapapi/map/br;

    sget-object v1, Lcom/tencent/mapapi/map/br;->XH:Lcom/tencent/mapapi/map/br;

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
