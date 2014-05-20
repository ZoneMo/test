.class final Lcom/tencent/mapapi/map/j;
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
    .line 333
    iput-object p1, p0, Lcom/tencent/mapapi/map/j;->Vz:Lcom/tencent/mapapi/map/MapView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 338
    iget-object v0, p0, Lcom/tencent/mapapi/map/j;->Vz:Lcom/tencent/mapapi/map/MapView;

    iget-object v0, v0, Lcom/tencent/mapapi/map/MapView;->Vp:Landroid/widget/ZoomControls;

    invoke-virtual {v0}, Landroid/widget/ZoomControls;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 340
    iget-object v0, p0, Lcom/tencent/mapapi/map/j;->Vz:Lcom/tencent/mapapi/map/MapView;

    iget-object v0, v0, Lcom/tencent/mapapi/map/MapView;->Vp:Landroid/widget/ZoomControls;

    invoke-virtual {v0, v1}, Landroid/widget/ZoomControls;->setVisibility(I)V

    .line 342
    :cond_0
    return-void
.end method
