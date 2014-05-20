.class public final Lcom/tencent/map/location/o;
.super Ljava/lang/Object;


# static fields
.field private static Uu:Landroid/location/LocationManager;

.field private static vJ:F


# instance fields
.field private TW:Z

.field private TZ:J

.field private Uc:I

.field private Ui:[B

.field private Uk:Z

.field private Uv:Lcom/tencent/map/location/p;

.field private Uw:Lcom/tencent/map/location/r;

.field private Ux:Lcom/tencent/map/location/q;

.field private a:I

.field private a:Landroid/content/Context;

.field private b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/map/location/o;->Uu:Landroid/location/LocationManager;

    const/4 v0, 0x0

    sput v0, Lcom/tencent/map/location/o;->vJ:F

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/map/location/o;->a:Landroid/content/Context;

    iput-object v0, p0, Lcom/tencent/map/location/o;->Uv:Lcom/tencent/map/location/p;

    iput-object v0, p0, Lcom/tencent/map/location/o;->Uw:Lcom/tencent/map/location/r;

    iput-object v0, p0, Lcom/tencent/map/location/o;->Ux:Lcom/tencent/map/location/q;

    iput-boolean v2, p0, Lcom/tencent/map/location/o;->TW:Z

    new-array v0, v2, [B

    iput-object v0, p0, Lcom/tencent/map/location/o;->Ui:[B

    const/16 v0, 0x400

    iput v0, p0, Lcom/tencent/map/location/o;->a:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/map/location/o;->TZ:J

    iput-boolean v2, p0, Lcom/tencent/map/location/o;->Uk:Z

    iput v2, p0, Lcom/tencent/map/location/o;->b:I

    iput v2, p0, Lcom/tencent/map/location/o;->Uc:I

    return-void
.end method

.method static synthetic a(Lcom/tencent/map/location/o;I)I
    .locals 1

    iget v0, p0, Lcom/tencent/map/location/o;->a:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/tencent/map/location/o;->a:I

    return v0
.end method

.method static synthetic a(Lcom/tencent/map/location/o;J)J
    .locals 0

    iput-wide p1, p0, Lcom/tencent/map/location/o;->TZ:J

    return-wide p1
.end method

.method static synthetic a(Lcom/tencent/map/location/o;Lcom/tencent/map/location/q;)Lcom/tencent/map/location/q;
    .locals 0

    iput-object p1, p0, Lcom/tencent/map/location/o;->Ux:Lcom/tencent/map/location/q;

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/map/location/o;)V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/map/location/o;->Uc:I

    iput v0, p0, Lcom/tencent/map/location/o;->b:I

    sget-object v0, Lcom/tencent/map/location/o;->Uu:Landroid/location/LocationManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/location/GpsStatus;->getMaxSatellites()I

    move-result v1

    invoke-virtual {v0}, Landroid/location/GpsStatus;->getSatellites()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/tencent/map/location/o;->b:I

    if-gt v0, v1, :cond_1

    iget v0, p0, Lcom/tencent/map/location/o;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/map/location/o;->b:I

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/GpsSatellite;

    invoke-virtual {v0}, Landroid/location/GpsSatellite;->usedInFix()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/tencent/map/location/o;->Uc:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/map/location/o;->Uc:I

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/tencent/map/location/o;)I
    .locals 1

    iget v0, p0, Lcom/tencent/map/location/o;->b:I

    return v0
.end method

.method static synthetic b(Lcom/tencent/map/location/o;I)I
    .locals 0

    iput p1, p0, Lcom/tencent/map/location/o;->b:I

    return p1
.end method

.method static synthetic c(Lcom/tencent/map/location/o;)I
    .locals 1

    iget v0, p0, Lcom/tencent/map/location/o;->Uc:I

    return v0
.end method

.method static synthetic c(Lcom/tencent/map/location/o;I)I
    .locals 0

    iput p1, p0, Lcom/tencent/map/location/o;->a:I

    return p1
.end method

.method static synthetic d(Lcom/tencent/map/location/o;)I
    .locals 1

    iget v0, p0, Lcom/tencent/map/location/o;->a:I

    return v0
.end method

.method static synthetic e(Lcom/tencent/map/location/o;)J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/map/location/o;->TZ:J

    return-wide v0
.end method

.method static synthetic f(Lcom/tencent/map/location/o;)Lcom/tencent/map/location/r;
    .locals 1

    iget-object v0, p0, Lcom/tencent/map/location/o;->Uw:Lcom/tencent/map/location/r;

    return-object v0
.end method

.method static synthetic g(Lcom/tencent/map/location/o;)Lcom/tencent/map/location/q;
    .locals 1

    iget-object v0, p0, Lcom/tencent/map/location/o;->Ux:Lcom/tencent/map/location/q;

    return-object v0
.end method

.method static synthetic h(Lcom/tencent/map/location/o;)I
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/map/location/o;->Uc:I

    return v0
.end method


# virtual methods
.method public final a(Lcom/tencent/map/location/r;Landroid/content/Context;)Z
    .locals 8

    const/4 v0, 0x1

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/tencent/map/location/o;->Ui:[B

    monitor-enter v7

    :try_start_0
    iget-boolean v1, p0, Lcom/tencent/map/location/o;->TW:Z

    if-eqz v1, :cond_0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return v0

    :cond_0
    if-eqz p2, :cond_1

    if-nez p1, :cond_2

    :cond_1
    monitor-exit v7

    move v0, v6

    goto :goto_0

    :cond_2
    :try_start_1
    iput-object p2, p0, Lcom/tencent/map/location/o;->a:Landroid/content/Context;

    iput-object p1, p0, Lcom/tencent/map/location/o;->Uw:Lcom/tencent/map/location/r;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lcom/tencent/map/location/o;->a:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    sput-object v0, Lcom/tencent/map/location/o;->Uu:Landroid/location/LocationManager;

    new-instance v0, Lcom/tencent/map/location/p;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tencent/map/location/p;-><init>(Lcom/tencent/map/location/o;B)V

    iput-object v0, p0, Lcom/tencent/map/location/o;->Uv:Lcom/tencent/map/location/p;

    sget-object v0, Lcom/tencent/map/location/o;->Uu:Landroid/location/LocationManager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/map/location/o;->Uv:Lcom/tencent/map/location/p;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-nez v0, :cond_4

    :cond_3
    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v0, v6

    goto :goto_0

    :catch_0
    move-exception v0

    monitor-exit v7

    move v0, v6

    goto :goto_0

    :cond_4
    :try_start_4
    sget-object v0, Lcom/tencent/map/location/o;->Uu:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/tencent/map/location/o;->Uv:Lcom/tencent/map/location/p;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    sget-object v0, Lcom/tencent/map/location/o;->Uu:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/tencent/map/location/o;->Uv:Lcom/tencent/map/location/p;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z

    sget-object v0, Lcom/tencent/map/location/o;->Uu:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x4

    iput v0, p0, Lcom/tencent/map/location/o;->a:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :goto_1
    const/4 v0, 0x1

    :try_start_5
    iput-boolean v0, p0, Lcom/tencent/map/location/o;->TW:Z

    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    iget-boolean v0, p0, Lcom/tencent/map/location/o;->TW:Z

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    :try_start_6
    iput v0, p0, Lcom/tencent/map/location/o;->a:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_7
    monitor-exit v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move v0, v6

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0
.end method

.method public final lX()V
    .locals 3

    iget-object v1, p0, Lcom/tencent/map/location/o;->Ui:[B

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/map/location/o;->TW:Z

    if-nez v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/tencent/map/location/o;->Uu:Landroid/location/LocationManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/map/location/o;->Uv:Lcom/tencent/map/location/p;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/tencent/map/location/o;->Uu:Landroid/location/LocationManager;

    iget-object v2, p0, Lcom/tencent/map/location/o;->Uv:Lcom/tencent/map/location/p;

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->removeGpsStatusListener(Landroid/location/GpsStatus$Listener;)V

    sget-object v0, Lcom/tencent/map/location/o;->Uu:Landroid/location/LocationManager;

    iget-object v2, p0, Lcom/tencent/map/location/o;->Uv:Lcom/tencent/map/location/p;

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/map/location/o;->TW:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
