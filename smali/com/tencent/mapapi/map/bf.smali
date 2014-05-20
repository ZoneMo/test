.class final Lcom/tencent/mapapi/map/bf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mapapi/map/x;


# instance fields
.field final synthetic WU:Lcom/tencent/mapapi/map/be;


# direct methods
.method constructor <init>(Lcom/tencent/mapapi/map/be;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    iput-object p1, p0, Lcom/tencent/mapapi/map/bf;->WU:Lcom/tencent/mapapi/map/be;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final lX()V
    .locals 4

    .prologue
    .line 33
    iget-object v0, p0, Lcom/tencent/mapapi/map/bf;->WU:Lcom/tencent/mapapi/map/be;

    invoke-static {v0}, Lcom/tencent/mapapi/map/be;->a(Lcom/tencent/mapapi/map/be;)Lcom/tencent/mapapi/map/bh;

    move-result-object v0

    if-nez v0, :cond_1

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 37
    :cond_1
    iget-object v0, p0, Lcom/tencent/mapapi/map/bf;->WU:Lcom/tencent/mapapi/map/be;

    invoke-static {v0}, Lcom/tencent/mapapi/map/be;->a(Lcom/tencent/mapapi/map/be;)Lcom/tencent/mapapi/map/bh;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mapapi/map/bh;->WX:Lcom/tencent/mapapi/map/bi;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/tencent/mapapi/map/bf;->WU:Lcom/tencent/mapapi/map/be;

    invoke-static {v0}, Lcom/tencent/mapapi/map/be;->a(Lcom/tencent/mapapi/map/be;)Lcom/tencent/mapapi/map/bh;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mapapi/map/bh;->WX:Lcom/tencent/mapapi/map/bi;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bi;->Ua:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/tencent/mapapi/map/bf;->WU:Lcom/tencent/mapapi/map/be;

    invoke-static {v0}, Lcom/tencent/mapapi/map/be;->a(Lcom/tencent/mapapi/map/be;)Lcom/tencent/mapapi/map/bh;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mapapi/map/bh;->WX:Lcom/tencent/mapapi/map/bi;

    iget-object v1, v0, Lcom/tencent/mapapi/map/bi;->Xd:[B

    monitor-enter v1

    .line 48
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mapapi/map/bf;->WU:Lcom/tencent/mapapi/map/be;

    invoke-static {v0}, Lcom/tencent/mapapi/map/be;->a(Lcom/tencent/mapapi/map/be;)Lcom/tencent/mapapi/map/bh;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mapapi/map/bh;->WX:Lcom/tencent/mapapi/map/bi;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bi;->Ua:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 49
    if-gtz v2, :cond_2

    .line 50
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_2
    monitor-exit v1

    .line 53
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_0

    .line 57
    iget-object v0, p0, Lcom/tencent/mapapi/map/bf;->WU:Lcom/tencent/mapapi/map/be;

    invoke-static {v0}, Lcom/tencent/mapapi/map/be;->a(Lcom/tencent/mapapi/map/be;)Lcom/tencent/mapapi/map/bh;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mapapi/map/bf;->WU:Lcom/tencent/mapapi/map/be;

    invoke-static {v0}, Lcom/tencent/mapapi/map/be;->a(Lcom/tencent/mapapi/map/be;)Lcom/tencent/mapapi/map/bh;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mapapi/map/bh;->WX:Lcom/tencent/mapapi/map/bi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mapapi/map/bf;->WU:Lcom/tencent/mapapi/map/be;

    invoke-static {v0}, Lcom/tencent/mapapi/map/be;->a(Lcom/tencent/mapapi/map/be;)Lcom/tencent/mapapi/map/bh;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mapapi/map/bh;->WX:Lcom/tencent/mapapi/map/bi;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bi;->Ua:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/tencent/mapapi/map/bf;->WU:Lcom/tencent/mapapi/map/be;

    invoke-static {v0}, Lcom/tencent/mapapi/map/be;->a(Lcom/tencent/mapapi/map/be;)Lcom/tencent/mapapi/map/bh;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mapapi/map/bh;->WX:Lcom/tencent/mapapi/map/bi;

    iget-object v3, v0, Lcom/tencent/mapapi/map/bi;->Xd:[B

    monitor-enter v3

    .line 63
    :try_start_1
    iget-object v0, p0, Lcom/tencent/mapapi/map/bf;->WU:Lcom/tencent/mapapi/map/be;

    invoke-static {v0}, Lcom/tencent/mapapi/map/be;->a(Lcom/tencent/mapapi/map/be;)Lcom/tencent/mapapi/map/bh;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mapapi/map/bh;->WX:Lcom/tencent/mapapi/map/bi;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bi;->Ua:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 64
    if-eq v0, v2, :cond_3

    .line 67
    iget-object v0, p0, Lcom/tencent/mapapi/map/bf;->WU:Lcom/tencent/mapapi/map/be;

    invoke-virtual {v0}, Lcom/tencent/mapapi/map/be;->mN()V

    .line 68
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 71
    :catchall_1
    move-exception v0

    monitor-exit v3

    throw v0

    .line 70
    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/tencent/mapapi/map/bf;->WU:Lcom/tencent/mapapi/map/be;

    invoke-static {v0}, Lcom/tencent/mapapi/map/be;->a(Lcom/tencent/mapapi/map/be;)Lcom/tencent/mapapi/map/bh;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mapapi/map/bh;->WX:Lcom/tencent/mapapi/map/bi;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bi;->Ua:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mapapi/map/ba;

    .line 71
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 73
    if-eqz v0, :cond_4

    .line 74
    iget-boolean v3, v0, Lcom/tencent/mapapi/map/ba;->WI:Z

    if-eqz v3, :cond_4

    .line 77
    invoke-virtual {v0}, Lcom/tencent/mapapi/map/ba;->me()V

    .line 55
    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method
