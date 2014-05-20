.class public Lcom/tencent/mapapi/map/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private TW:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mapapi/map/m;->TW:Z

    .line 31
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;Lcom/tencent/mapapi/map/MapView;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 112
    return-void
.end method

.method public a(Landroid/graphics/Canvas;Lcom/tencent/mapapi/map/MapView;ZJ)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 134
    invoke-virtual {p0, p1, p2, p3}, Lcom/tencent/mapapi/map/m;->a(Landroid/graphics/Canvas;Lcom/tencent/mapapi/map/MapView;Z)V

    .line 135
    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroid/view/MotionEvent;Lcom/tencent/mapapi/map/MapView;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method public a(Lcom/tencent/mapapi/map/GeoPoint;Lcom/tencent/mapapi/map/MapView;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method public b(Lcom/tencent/mapapi/map/GeoPoint;Lcom/tencent/mapapi/map/MapView;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method public final mv()Z
    .locals 1

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/tencent/mapapi/map/m;->TW:Z

    return v0
.end method
