.class public final Lcom/tencent/map/a/a/a;
.super Ljava/lang/Object;


# static fields
.field private static Tb:Lcom/tencent/map/location/s;

.field private static Tc:Lcom/tencent/map/a/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/tencent/map/location/s;->mb()Lcom/tencent/map/location/s;

    move-result-object v0

    sput-object v0, Lcom/tencent/map/a/a/a;->Tb:Lcom/tencent/map/location/s;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/tencent/map/a/a/b;)Z
    .locals 1

    sget-object v0, Lcom/tencent/map/a/a/a;->Tb:Lcom/tencent/map/location/s;

    invoke-virtual {v0, p0, p1}, Lcom/tencent/map/location/s;->b(Landroid/content/Context;Lcom/tencent/map/a/a/b;)Z

    move-result v0

    return v0
.end method

.method public static g(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/tencent/map/a/a/a;->Tb:Lcom/tencent/map/location/s;

    invoke-virtual {v0, p0, p1}, Lcom/tencent/map/location/s;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static declared-synchronized lO()Lcom/tencent/map/a/a/a;
    .locals 2

    const-class v1, Lcom/tencent/map/a/a/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/map/a/a/a;->Tc:Lcom/tencent/map/a/a/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/map/a/a/a;

    invoke-direct {v0}, Lcom/tencent/map/a/a/a;-><init>()V

    sput-object v0, Lcom/tencent/map/a/a/a;->Tc:Lcom/tencent/map/a/a/a;

    :cond_0
    sget-object v0, Lcom/tencent/map/a/a/a;->Tc:Lcom/tencent/map/a/a/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static lP()V
    .locals 1

    sget-object v0, Lcom/tencent/map/a/a/a;->Tb:Lcom/tencent/map/location/s;

    invoke-virtual {v0}, Lcom/tencent/map/location/s;->lX()V

    return-void
.end method

.method public static lQ()V
    .locals 1

    sget-object v0, Lcom/tencent/map/a/a/a;->Tb:Lcom/tencent/map/location/s;

    invoke-virtual {v0}, Lcom/tencent/map/location/s;->mc()V

    return-void
.end method
