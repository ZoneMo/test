.class final Lcom/tencent/mapapi/map/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic Vz:Lcom/tencent/mapapi/map/MapView;


# direct methods
.method constructor <init>(Lcom/tencent/mapapi/map/MapView;)V
    .locals 0
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Lcom/tencent/mapapi/map/g;->Vz:Lcom/tencent/mapapi/map/MapView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 111
    iget-object v0, p0, Lcom/tencent/mapapi/map/g;->Vz:Lcom/tencent/mapapi/map/MapView;

    invoke-virtual {v0}, Lcom/tencent/mapapi/map/MapView;->mt()V

    .line 112
    iget-object v0, p0, Lcom/tencent/mapapi/map/g;->Vz:Lcom/tencent/mapapi/map/MapView;

    invoke-static {v0}, Lcom/tencent/mapapi/map/MapView;->a(Lcom/tencent/mapapi/map/MapView;)Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/tencent/mapapi/map/g;->Vz:Lcom/tencent/mapapi/map/MapView;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-static {v0, v1}, Lcom/tencent/mapapi/map/MapView;->a(Lcom/tencent/mapapi/map/MapView;Landroid/os/Handler;)Landroid/os/Handler;

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/tencent/mapapi/map/g;->Vz:Lcom/tencent/mapapi/map/MapView;

    invoke-static {v0}, Lcom/tencent/mapapi/map/MapView;->a(Lcom/tencent/mapapi/map/MapView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mapapi/map/g;->Vz:Lcom/tencent/mapapi/map/MapView;

    invoke-static {v1}, Lcom/tencent/mapapi/map/MapView;->b(Lcom/tencent/mapapi/map/MapView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 116
    iget-object v0, p0, Lcom/tencent/mapapi/map/g;->Vz:Lcom/tencent/mapapi/map/MapView;

    invoke-static {v0}, Lcom/tencent/mapapi/map/MapView;->a(Lcom/tencent/mapapi/map/MapView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mapapi/map/g;->Vz:Lcom/tencent/mapapi/map/MapView;

    invoke-static {v1}, Lcom/tencent/mapapi/map/MapView;->b(Lcom/tencent/mapapi/map/MapView;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mapapi/map/g;->Vz:Lcom/tencent/mapapi/map/MapView;

    invoke-static {v2}, Lcom/tencent/mapapi/map/MapView;->c(Lcom/tencent/mapapi/map/MapView;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 117
    return-void
.end method
