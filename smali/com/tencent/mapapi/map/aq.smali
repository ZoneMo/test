.class final Lcom/tencent/mapapi/map/aq;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private Uc:I

.field Ui:[B

.field private Wv:Ljava/util/LinkedHashMap;


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .parameter

    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/tencent/mapapi/map/aq;->Ui:[B

    .line 150
    iput p1, p0, Lcom/tencent/mapapi/map/aq;->Uc:I

    .line 151
    int-to-float v0, p1

    const/high16 v1, 0x3f40

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    .line 152
    new-instance v1, Lcom/tencent/mapapi/map/ar;

    invoke-direct {v1, p0, v0}, Lcom/tencent/mapapi/map/ar;-><init>(Lcom/tencent/mapapi/map/aq;I)V

    iput-object v1, p0, Lcom/tencent/mapapi/map/aq;->Wv:Ljava/util/LinkedHashMap;

    .line 159
    return-void
.end method

.method static synthetic a(Lcom/tencent/mapapi/map/aq;)I
    .locals 1
    .parameter

    .prologue
    .line 139
    iget v0, p0, Lcom/tencent/mapapi/map/aq;->Uc:I

    return v0
.end method


# virtual methods
.method public final Q(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter

    .prologue
    .line 163
    iget-object v1, p0, Lcom/tencent/mapapi/map/aq;->Ui:[B

    monitor-enter v1

    .line 165
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mapapi/map/aq;->Wv:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 166
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final R(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter

    .prologue
    .line 177
    iget-object v1, p0, Lcom/tencent/mapapi/map/aq;->Ui:[B

    monitor-enter v1

    .line 179
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mapapi/map/aq;->Wv:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 180
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final e(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 170
    iget-object v1, p0, Lcom/tencent/mapapi/map/aq;->Ui:[B

    monitor-enter v1

    .line 172
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mapapi/map/aq;->Wv:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final lX()V
    .locals 2

    .prologue
    .line 184
    iget-object v1, p0, Lcom/tencent/mapapi/map/aq;->Ui:[B

    monitor-enter v1

    .line 186
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mapapi/map/aq;->Wv:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 187
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
