.class final Lcom/tencent/map/location/u;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private synthetic UF:Lcom/tencent/map/location/s;


# direct methods
.method constructor <init>(Lcom/tencent/map/location/s;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/map/location/u;->UF:Lcom/tencent/map/location/s;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "noConnectivity"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/map/location/u;->UF:Lcom/tencent/map/location/s;

    invoke-static {v0}, Lcom/tencent/map/location/s;->d(Lcom/tencent/map/location/s;)Lcom/tencent/map/location/x;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/map/location/u;->UF:Lcom/tencent/map/location/s;

    invoke-static {v0}, Lcom/tencent/map/location/s;->d(Lcom/tencent/map/location/s;)Lcom/tencent/map/location/x;

    move-result-object v0

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Lcom/tencent/map/location/x;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method
