.class public final Lcom/tencent/mm/modelsimple/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final cwS:Landroid/content/ContentResolver;

.field cwT:Ljava/util/ArrayList;

.field final synthetic cwU:Lcom/tencent/mm/modelsimple/c;


# direct methods
.method public constructor <init>(Lcom/tencent/mm/modelsimple/c;Landroid/content/ContentResolver;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 234
    iput-object p1, p0, Lcom/tencent/mm/modelsimple/d;->cwU:Lcom/tencent/mm/modelsimple/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    const-string v0, "MicroMsg.BatchOperation"

    iput-object v0, p0, Lcom/tencent/mm/modelsimple/d;->TAG:Ljava/lang/String;

    .line 235
    iput-object p2, p0, Lcom/tencent/mm/modelsimple/d;->cwS:Landroid/content/ContentResolver;

    .line 236
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelsimple/d;->cwT:Ljava/util/ArrayList;

    .line 237
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/ContentProviderOperation;)V
    .locals 1
    .parameter

    .prologue
    .line 244
    iget-object v0, p0, Lcom/tencent/mm/modelsimple/d;->cwT:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    return-void
.end method

.method public final execute()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 248
    iget-object v0, p0, Lcom/tencent/mm/modelsimple/d;->cwT:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 249
    const-string v0, "MicroMsg.BatchOperation"

    const-string v1, "no batch operation"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    :goto_0
    return-void

    .line 254
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/modelsimple/d;->cwS:Landroid/content/ContentResolver;

    const-string v1, "com.android.contacts"

    iget-object v2, p0, Lcom/tencent/mm/modelsimple/d;->cwT:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 262
    :goto_1
    iget-object v0, p0, Lcom/tencent/mm/modelsimple/d;->cwT:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 255
    :catch_0
    move-exception v0

    .line 256
    const-string v1, "MicroMsg.BatchOperation"

    const-string v2, "apply batch operation failed"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/content/OperationApplicationException;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 257
    :catch_1
    move-exception v0

    .line 258
    const-string v1, "MicroMsg.BatchOperation"

    const-string v2, "apply batch operation failed"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 259
    :catch_2
    move-exception v0

    .line 260
    const-string v1, "MicroMsg.BatchOperation"

    const-string v2, "apply batch operation failed"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method
