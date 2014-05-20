.class final Lcom/tencent/mapapi/map/bg;
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
    .line 86
    iput-object p1, p0, Lcom/tencent/mapapi/map/bg;->WU:Lcom/tencent/mapapi/map/be;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final lX()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 90
    iget-object v0, p0, Lcom/tencent/mapapi/map/bg;->WU:Lcom/tencent/mapapi/map/be;

    invoke-static {v0}, Lcom/tencent/mapapi/map/be;->a(Lcom/tencent/mapapi/map/be;)Lcom/tencent/mapapi/map/bh;

    move-result-object v0

    if-nez v0, :cond_1

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/tencent/mapapi/map/bg;->WU:Lcom/tencent/mapapi/map/be;

    invoke-static {v0}, Lcom/tencent/mapapi/map/be;->a(Lcom/tencent/mapapi/map/be;)Lcom/tencent/mapapi/map/bh;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mapapi/map/bh;->WX:Lcom/tencent/mapapi/map/bi;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/tencent/mapapi/map/bg;->WU:Lcom/tencent/mapapi/map/be;

    invoke-static {v0}, Lcom/tencent/mapapi/map/be;->a(Lcom/tencent/mapapi/map/be;)Lcom/tencent/mapapi/map/bh;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mapapi/map/bh;->WX:Lcom/tencent/mapapi/map/bi;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bi;->Ua:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/tencent/mapapi/map/bg;->WU:Lcom/tencent/mapapi/map/be;

    invoke-static {v0}, Lcom/tencent/mapapi/map/be;->a(Lcom/tencent/mapapi/map/be;)Lcom/tencent/mapapi/map/bh;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mapapi/map/bh;->WX:Lcom/tencent/mapapi/map/bi;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bi;->Ub:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 104
    const/4 v0, 0x0

    .line 105
    iget-object v2, p0, Lcom/tencent/mapapi/map/bg;->WU:Lcom/tencent/mapapi/map/be;

    invoke-static {v2}, Lcom/tencent/mapapi/map/be;->a(Lcom/tencent/mapapi/map/be;)Lcom/tencent/mapapi/map/bh;

    move-result-object v2

    iget-object v2, v2, Lcom/tencent/mapapi/map/bh;->WX:Lcom/tencent/mapapi/map/bi;

    iget-object v3, v2, Lcom/tencent/mapapi/map/bi;->Xe:[B

    monitor-enter v3

    .line 107
    :try_start_0
    iget-object v2, p0, Lcom/tencent/mapapi/map/bg;->WU:Lcom/tencent/mapapi/map/be;

    invoke-static {v2}, Lcom/tencent/mapapi/map/be;->a(Lcom/tencent/mapapi/map/be;)Lcom/tencent/mapapi/map/bh;

    move-result-object v2

    iget-object v2, v2, Lcom/tencent/mapapi/map/bh;->WX:Lcom/tencent/mapapi/map/bi;

    iget-object v2, v2, Lcom/tencent/mapapi/map/bi;->Ub:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 108
    if-lez v2, :cond_8

    .line 110
    iget-object v0, p0, Lcom/tencent/mapapi/map/bg;->WU:Lcom/tencent/mapapi/map/be;

    invoke-static {v0}, Lcom/tencent/mapapi/map/be;->a(Lcom/tencent/mapapi/map/be;)Lcom/tencent/mapapi/map/bh;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mapapi/map/bh;->WX:Lcom/tencent/mapapi/map/bi;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bi;->Ub:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mapapi/map/av;

    move-object v2, v0

    .line 112
    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 113
    if-eqz v2, :cond_3

    sget-object v0, Lcom/tencent/mapapi/map/bq;->VK:Lcom/tencent/mapapi/map/br;

    sget-object v3, Lcom/tencent/mapapi/map/br;->XG:Lcom/tencent/mapapi/map/br;

    if-eq v0, v3, :cond_3

    .line 115
    invoke-interface {v2}, Lcom/tencent/mapapi/map/av;->mJ()Ljava/lang/Boolean;

    move-result-object v0

    .line 116
    if-nez v0, :cond_2

    .line 118
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 120
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4

    .line 122
    iget-object v0, p0, Lcom/tencent/mapapi/map/bg;->WU:Lcom/tencent/mapapi/map/be;

    invoke-static {v0}, Lcom/tencent/mapapi/map/be;->a(Lcom/tencent/mapapi/map/be;)Lcom/tencent/mapapi/map/bh;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mapapi/map/bh;->WX:Lcom/tencent/mapapi/map/bi;

    iget-object v3, v0, Lcom/tencent/mapapi/map/bi;->Xe:[B

    monitor-enter v3

    .line 124
    :try_start_1
    iget-object v0, p0, Lcom/tencent/mapapi/map/bg;->WU:Lcom/tencent/mapapi/map/be;

    invoke-static {v0}, Lcom/tencent/mapapi/map/be;->a(Lcom/tencent/mapapi/map/be;)Lcom/tencent/mapapi/map/bh;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mapapi/map/bh;->WX:Lcom/tencent/mapapi/map/bi;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bi;->Ub:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    iget-object v0, p0, Lcom/tencent/mapapi/map/bg;->WU:Lcom/tencent/mapapi/map/be;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/tencent/mapapi/map/be;->bb(I)V

    .line 127
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 139
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/tencent/mapapi/map/bg;->WU:Lcom/tencent/mapapi/map/be;

    invoke-static {v0}, Lcom/tencent/mapapi/map/be;->a(Lcom/tencent/mapapi/map/be;)Lcom/tencent/mapapi/map/bh;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mapapi/map/bh;->WX:Lcom/tencent/mapapi/map/bi;

    iget-object v2, v0, Lcom/tencent/mapapi/map/bi;->Xd:[B

    monitor-enter v2

    .line 141
    :try_start_2
    iget-object v0, p0, Lcom/tencent/mapapi/map/bg;->WU:Lcom/tencent/mapapi/map/be;

    invoke-static {v0}, Lcom/tencent/mapapi/map/be;->a(Lcom/tencent/mapapi/map/be;)Lcom/tencent/mapapi/map/bh;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mapapi/map/bh;->WX:Lcom/tencent/mapapi/map/bi;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bi;->Ua:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 142
    if-gtz v3, :cond_5

    .line 143
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 145
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 112
    :catchall_1
    move-exception v0

    monitor-exit v3

    throw v0

    .line 127
    :catchall_2
    move-exception v0

    monitor-exit v3

    throw v0

    .line 131
    :cond_4
    invoke-interface {v2}, Lcom/tencent/mapapi/map/av;->me()V

    goto :goto_2

    .line 145
    :cond_5
    monitor-exit v2

    .line 147
    :goto_3
    if-ge v1, v3, :cond_0

    .line 150
    iget-object v0, p0, Lcom/tencent/mapapi/map/bg;->WU:Lcom/tencent/mapapi/map/be;

    invoke-static {v0}, Lcom/tencent/mapapi/map/be;->a(Lcom/tencent/mapapi/map/be;)Lcom/tencent/mapapi/map/bh;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mapapi/map/bh;->WX:Lcom/tencent/mapapi/map/bi;

    iget-object v2, v0, Lcom/tencent/mapapi/map/bi;->Xd:[B

    monitor-enter v2

    .line 152
    :try_start_3
    iget-object v0, p0, Lcom/tencent/mapapi/map/bg;->WU:Lcom/tencent/mapapi/map/be;

    invoke-static {v0}, Lcom/tencent/mapapi/map/be;->a(Lcom/tencent/mapapi/map/be;)Lcom/tencent/mapapi/map/bh;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mapapi/map/bh;->WX:Lcom/tencent/mapapi/map/bi;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bi;->Ua:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 153
    if-eq v0, v3, :cond_6

    .line 156
    iget-object v0, p0, Lcom/tencent/mapapi/map/bg;->WU:Lcom/tencent/mapapi/map/be;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/mapapi/map/be;->bb(I)V

    .line 157
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto/16 :goto_0

    .line 160
    :catchall_3
    move-exception v0

    monitor-exit v2

    throw v0

    .line 159
    :cond_6
    :try_start_4
    iget-object v0, p0, Lcom/tencent/mapapi/map/bg;->WU:Lcom/tencent/mapapi/map/be;

    invoke-static {v0}, Lcom/tencent/mapapi/map/be;->a(Lcom/tencent/mapapi/map/be;)Lcom/tencent/mapapi/map/bh;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mapapi/map/bh;->WX:Lcom/tencent/mapapi/map/bi;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bi;->Ua:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mapapi/map/ba;

    .line 160
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 161
    if-eqz v0, :cond_7

    .line 162
    invoke-virtual {v0}, Lcom/tencent/mapapi/map/ba;->kY()V

    .line 149
    :cond_7
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_8
    move-object v2, v0

    goto/16 :goto_1
.end method
