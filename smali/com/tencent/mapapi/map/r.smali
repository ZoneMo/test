.class final Lcom/tencent/mapapi/map/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mapapi/map/t;


# instance fields
.field final synthetic VP:Lcom/tencent/mapapi/map/p;


# direct methods
.method constructor <init>(Lcom/tencent/mapapi/map/p;)V
    .locals 0
    .parameter

    .prologue
    .line 517
    iput-object p1, p0, Lcom/tencent/mapapi/map/r;->VP:Lcom/tencent/mapapi/map/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bb(I)V
    .locals 2
    .parameter

    .prologue
    .line 522
    if-nez p1, :cond_0

    .line 524
    iget-object v0, p0, Lcom/tencent/mapapi/map/r;->VP:Lcom/tencent/mapapi/map/p;

    sget-object v1, Lcom/tencent/mapapi/map/br;->XG:Lcom/tencent/mapapi/map/br;

    invoke-static {v0, v1}, Lcom/tencent/mapapi/map/p;->a(Lcom/tencent/mapapi/map/p;Lcom/tencent/mapapi/map/br;)Lcom/tencent/mapapi/map/br;

    .line 530
    :goto_0
    return-void

    .line 528
    :cond_0
    iget-object v0, p0, Lcom/tencent/mapapi/map/r;->VP:Lcom/tencent/mapapi/map/p;

    sget-object v1, Lcom/tencent/mapapi/map/br;->XH:Lcom/tencent/mapapi/map/br;

    invoke-static {v0, v1}, Lcom/tencent/mapapi/map/p;->a(Lcom/tencent/mapapi/map/p;Lcom/tencent/mapapi/map/br;)Lcom/tencent/mapapi/map/br;

    goto :goto_0
.end method

.method public final mA()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 547
    iget-object v1, p0, Lcom/tencent/mapapi/map/r;->VP:Lcom/tencent/mapapi/map/p;

    invoke-static {v1}, Lcom/tencent/mapapi/map/p;->c(Lcom/tencent/mapapi/map/p;)Lcom/tencent/mapapi/map/MapView;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 551
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/tencent/mapapi/map/r;->VP:Lcom/tencent/mapapi/map/p;

    invoke-static {v1}, Lcom/tencent/mapapi/map/p;->d(Lcom/tencent/mapapi/map/p;)Lcom/tencent/mapapi/map/br;

    move-result-object v1

    sget-object v2, Lcom/tencent/mapapi/map/br;->XI:Lcom/tencent/mapapi/map/br;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final mh()Z
    .locals 1

    .prologue
    .line 541
    iget-object v0, p0, Lcom/tencent/mapapi/map/r;->VP:Lcom/tencent/mapapi/map/p;

    invoke-virtual {v0}, Lcom/tencent/mapapi/map/p;->mz()Z

    move-result v0

    return v0
.end method

.method public final mj()Ljava/lang/String;
    .locals 1

    .prologue
    .line 535
    iget-object v0, p0, Lcom/tencent/mapapi/map/r;->VP:Lcom/tencent/mapapi/map/p;

    invoke-static {v0}, Lcom/tencent/mapapi/map/p;->b(Lcom/tencent/mapapi/map/p;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
