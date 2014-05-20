.class final Lcom/tencent/map/location/t;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic UF:Lcom/tencent/map/location/s;


# direct methods
.method constructor <init>(Lcom/tencent/map/location/s;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/map/location/t;->UF:Lcom/tencent/map/location/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/tencent/map/location/t;->UF:Lcom/tencent/map/location/s;

    invoke-static {v2}, Lcom/tencent/map/location/s;->a(Lcom/tencent/map/location/s;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f40

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/map/location/t;->UF:Lcom/tencent/map/location/s;

    invoke-static {v0}, Lcom/tencent/map/location/s;->b(Lcom/tencent/map/location/s;)Lcom/tencent/map/location/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/map/location/g;->lZ()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/map/location/t;->UF:Lcom/tencent/map/location/s;

    invoke-static {v0}, Lcom/tencent/map/location/s;->b(Lcom/tencent/map/location/s;)Lcom/tencent/map/location/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/map/location/g;->mh()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/map/location/t;->UF:Lcom/tencent/map/location/s;

    invoke-static {v0}, Lcom/tencent/map/location/s;->b(Lcom/tencent/map/location/s;)Lcom/tencent/map/location/g;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tencent/map/location/g;->f(J)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tencent/map/location/t;->UF:Lcom/tencent/map/location/s;

    invoke-static {v0}, Lcom/tencent/map/location/s;->c(Lcom/tencent/map/location/s;)V

    goto :goto_0
.end method
