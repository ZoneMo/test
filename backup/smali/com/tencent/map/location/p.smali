.class final Lcom/tencent/map/location/p;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/location/GpsStatus$Listener;
.implements Landroid/location/LocationListener;


# instance fields
.field private synthetic Uy:Lcom/tencent/map/location/o;


# direct methods
.method private constructor <init>(Lcom/tencent/map/location/o;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/map/location/p;->Uy:Lcom/tencent/map/location/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/map/location/o;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/map/location/p;-><init>(Lcom/tencent/map/location/o;)V

    return-void
.end method


# virtual methods
.method public final onGpsStatusChanged(I)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    :goto_0
    iget-object v0, p0, Lcom/tencent/map/location/p;->Uy:Lcom/tencent/map/location/o;

    invoke-static {v0}, Lcom/tencent/map/location/o;->a(Lcom/tencent/map/location/o;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/tencent/map/location/p;->Uy:Lcom/tencent/map/location/o;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tencent/map/location/o;->a(Lcom/tencent/map/location/o;I)I

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/tencent/map/location/p;->Uy:Lcom/tencent/map/location/o;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/map/location/o;->a(Lcom/tencent/map/location/o;I)I

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/tencent/map/location/p;->Uy:Lcom/tencent/map/location/o;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/tencent/map/location/o;->a(Lcom/tencent/map/location/o;I)I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final onLocationChanged(Landroid/location/Location;)V
    .locals 9

    const-wide v7, 0x3e45798ee2308c3aL

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    const-wide v5, 0x403dffffe2000000L

    cmpl-double v5, v1, v5

    if-eqz v5, :cond_0

    const-wide v5, 0x4059fffffc800000L

    cmpl-double v5, v3, v5

    if-nez v5, :cond_2

    :cond_0
    :goto_0
    if-nez v0, :cond_3

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    cmpg-double v5, v5, v7

    if-ltz v5, :cond_0

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    cmpg-double v5, v5, v7

    if-ltz v5, :cond_0

    const-wide v5, -0x3fa9800000000000L

    cmpg-double v5, v1, v5

    if-ltz v5, :cond_0

    const-wide v5, 0x4056800000000000L

    cmpl-double v1, v1, v5

    if-gtz v1, :cond_0

    const-wide v1, -0x3f99800000000000L

    cmpg-double v1, v3, v1

    if-ltz v1, :cond_0

    const-wide v1, 0x4066800000000000L

    cmpl-double v1, v3, v1

    if-gtz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/tencent/map/location/p;->Uy:Lcom/tencent/map/location/o;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/tencent/map/location/o;->a(Lcom/tencent/map/location/o;J)J

    iget-object v0, p0, Lcom/tencent/map/location/p;->Uy:Lcom/tencent/map/location/o;

    invoke-static {v0}, Lcom/tencent/map/location/o;->a(Lcom/tencent/map/location/o;)V

    iget-object v0, p0, Lcom/tencent/map/location/p;->Uy:Lcom/tencent/map/location/o;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/tencent/map/location/o;->a(Lcom/tencent/map/location/o;I)I

    iget-object v0, p0, Lcom/tencent/map/location/p;->Uy:Lcom/tencent/map/location/o;

    new-instance v1, Lcom/tencent/map/location/q;

    iget-object v2, p0, Lcom/tencent/map/location/p;->Uy:Lcom/tencent/map/location/o;

    iget-object v2, p0, Lcom/tencent/map/location/p;->Uy:Lcom/tencent/map/location/o;

    invoke-static {v2}, Lcom/tencent/map/location/o;->b(Lcom/tencent/map/location/o;)I

    iget-object v2, p0, Lcom/tencent/map/location/p;->Uy:Lcom/tencent/map/location/o;

    invoke-static {v2}, Lcom/tencent/map/location/o;->c(Lcom/tencent/map/location/o;)I

    move-result v2

    iget-object v3, p0, Lcom/tencent/map/location/p;->Uy:Lcom/tencent/map/location/o;

    invoke-static {v3}, Lcom/tencent/map/location/o;->d(Lcom/tencent/map/location/o;)I

    iget-object v3, p0, Lcom/tencent/map/location/p;->Uy:Lcom/tencent/map/location/o;

    invoke-static {v3}, Lcom/tencent/map/location/o;->e(Lcom/tencent/map/location/o;)J

    move-result-wide v3

    invoke-direct {v1, p1, v2, v3, v4}, Lcom/tencent/map/location/q;-><init>(Landroid/location/Location;IJ)V

    invoke-static {v0, v1}, Lcom/tencent/map/location/o;->a(Lcom/tencent/map/location/o;Lcom/tencent/map/location/q;)Lcom/tencent/map/location/q;

    iget-object v0, p0, Lcom/tencent/map/location/p;->Uy:Lcom/tencent/map/location/o;

    invoke-static {v0}, Lcom/tencent/map/location/o;->f(Lcom/tencent/map/location/o;)Lcom/tencent/map/location/r;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/map/location/p;->Uy:Lcom/tencent/map/location/o;

    invoke-static {v0}, Lcom/tencent/map/location/o;->f(Lcom/tencent/map/location/o;)Lcom/tencent/map/location/r;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/map/location/p;->Uy:Lcom/tencent/map/location/o;

    invoke-static {v1}, Lcom/tencent/map/location/o;->g(Lcom/tencent/map/location/o;)Lcom/tencent/map/location/q;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tencent/map/location/r;->a(Lcom/tencent/map/location/q;)V

    goto/16 :goto_1
.end method

.method public final onProviderDisabled(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    :try_start_0
    const-string v0, "gps"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/map/location/p;->Uy:Lcom/tencent/map/location/o;

    iget-object v1, p0, Lcom/tencent/map/location/p;->Uy:Lcom/tencent/map/location/o;

    invoke-static {v1}, Lcom/tencent/map/location/o;->h(Lcom/tencent/map/location/o;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/tencent/map/location/o;->b(Lcom/tencent/map/location/o;I)I

    iget-object v0, p0, Lcom/tencent/map/location/p;->Uy:Lcom/tencent/map/location/o;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/map/location/o;->c(Lcom/tencent/map/location/o;I)I

    iget-object v0, p0, Lcom/tencent/map/location/p;->Uy:Lcom/tencent/map/location/o;

    invoke-static {v0}, Lcom/tencent/map/location/o;->f(Lcom/tencent/map/location/o;)Lcom/tencent/map/location/r;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/map/location/p;->Uy:Lcom/tencent/map/location/o;

    invoke-static {v0}, Lcom/tencent/map/location/o;->f(Lcom/tencent/map/location/o;)Lcom/tencent/map/location/r;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/map/location/p;->Uy:Lcom/tencent/map/location/o;

    invoke-static {v1}, Lcom/tencent/map/location/o;->d(Lcom/tencent/map/location/o;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/tencent/map/location/r;->bb(I)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final onProviderEnabled(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    :try_start_0
    const-string v0, "gps"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/map/location/p;->Uy:Lcom/tencent/map/location/o;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/tencent/map/location/o;->c(Lcom/tencent/map/location/o;I)I

    iget-object v0, p0, Lcom/tencent/map/location/p;->Uy:Lcom/tencent/map/location/o;

    invoke-static {v0}, Lcom/tencent/map/location/o;->f(Lcom/tencent/map/location/o;)Lcom/tencent/map/location/r;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/map/location/p;->Uy:Lcom/tencent/map/location/o;

    invoke-static {v0}, Lcom/tencent/map/location/o;->f(Lcom/tencent/map/location/o;)Lcom/tencent/map/location/r;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/map/location/p;->Uy:Lcom/tencent/map/location/o;

    invoke-static {v1}, Lcom/tencent/map/location/o;->d(Lcom/tencent/map/location/o;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/tencent/map/location/r;->bb(I)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method
