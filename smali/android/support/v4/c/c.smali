.class public final Landroid/support/v4/c/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final cJ:Ljava/util/LinkedHashMap;

.field private cK:I

.field private cL:I

.field private cM:I

.field private cN:I

.field private cO:I

.field private size:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/16 v0, 0x14

    iput v0, p0, Landroid/support/v4/c/c;->cK:I

    .line 52
    new-instance v0, Ljava/util/LinkedHashMap;

    const/4 v1, 0x0

    const/high16 v2, 0x3f40

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Landroid/support/v4/c/c;->cJ:Ljava/util/LinkedHashMap;

    .line 53
    return-void
.end method

.method private g(I)V
    .locals 3
    .parameter

    .prologue
    .line 149
    :goto_0
    monitor-enter p0

    .line 150
    :try_start_0
    iget v0, p0, Landroid/support/v4/c/c;->size:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/c/c;->cJ:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/support/v4/c/c;->size:I

    if-eqz v0, :cond_1

    .line 151
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".sizeOf() is reporting inconsistent results!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 155
    :cond_1
    :try_start_1
    iget v0, p0, Landroid/support/v4/c/c;->size:I

    if-le v0, p1, :cond_2

    iget-object v0, p0, Landroid/support/v4/c/c;->cJ:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 156
    :cond_2
    monitor-exit p0

    return-void

    .line 159
    :cond_3
    iget-object v0, p0, Landroid/support/v4/c/c;->cJ:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 160
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 161
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 162
    iget-object v0, p0, Landroid/support/v4/c/c;->cJ:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    iget v0, p0, Landroid/support/v4/c/c;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/support/v4/c/c;->size:I

    .line 164
    iget v0, p0, Landroid/support/v4/c/c;->cM:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v4/c/c;->cM:I

    .line 165
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method public final evictAll()V
    .locals 1

    .prologue
    .line 255
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Landroid/support/v4/c/c;->g(I)V

    .line 256
    return-void
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter

    .prologue
    .line 62
    if-nez p1, :cond_0

    .line 63
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "key == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_0
    monitor-enter p0

    .line 68
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/c/c;->cJ:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 69
    if-eqz v0, :cond_1

    .line 70
    iget v1, p0, Landroid/support/v4/c/c;->cN:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/support/v4/c/c;->cN:I

    .line 71
    monitor-exit p0

    .line 83
    :goto_0
    return-object v0

    .line 73
    :cond_1
    iget v0, p0, Landroid/support/v4/c/c;->cO:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v4/c/c;->cO:I

    .line 74
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    const/4 v0, 0x0

    goto :goto_0

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 116
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 117
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "key == null || value == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_1
    monitor-enter p0

    .line 122
    :try_start_0
    iget v0, p0, Landroid/support/v4/c/c;->cL:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v4/c/c;->cL:I

    .line 123
    iget v0, p0, Landroid/support/v4/c/c;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v4/c/c;->size:I

    .line 124
    iget-object v0, p0, Landroid/support/v4/c/c;->cJ:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 125
    if-eqz v0, :cond_2

    .line 126
    iget v1, p0, Landroid/support/v4/c/c;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/support/v4/c/c;->size:I

    .line 128
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    iget v1, p0, Landroid/support/v4/c/c;->cK:I

    invoke-direct {p0, v1}, Landroid/support/v4/c/c;->g(I)V

    .line 135
    return-object v0

    .line 128
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter

    .prologue
    .line 177
    if-nez p1, :cond_0

    .line 178
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "key == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 182
    :cond_0
    monitor-enter p0

    .line 183
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/c/c;->cJ:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 184
    if-eqz v0, :cond_1

    .line 185
    iget v1, p0, Landroid/support/v4/c/c;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/support/v4/c/c;->size:I

    .line 187
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    return-object v0

    .line 187
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized size()I
    .locals 1

    .prologue
    .line 264
    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/support/v4/c/c;->size:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized snapshot()Ljava/util/Map;
    .locals 2

    .prologue
    .line 317
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/LinkedHashMap;

    iget-object v1, p0, Landroid/support/v4/c/c;->cJ:Ljava/util/LinkedHashMap;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 321
    monitor-enter p0

    :try_start_0
    iget v1, p0, Landroid/support/v4/c/c;->cN:I

    iget v2, p0, Landroid/support/v4/c/c;->cO:I

    add-int/2addr v1, v2

    .line 322
    if-eqz v1, :cond_0

    iget v0, p0, Landroid/support/v4/c/c;->cN:I

    mul-int/lit8 v0, v0, 0x64

    div-int/2addr v0, v1

    .line 323
    :cond_0
    const-string v1, "LruCache[maxSize=%d,hits=%d,misses=%d,hitRate=%d%%]"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Landroid/support/v4/c/c;->cK:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Landroid/support/v4/c/c;->cN:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Landroid/support/v4/c/c;->cO:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 321
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
