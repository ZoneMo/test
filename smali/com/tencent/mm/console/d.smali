.class final Lcom/tencent/mm/console/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/model/cd;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/network/r;)V
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 237
    if-nez p1, :cond_1

    .line 251
    :cond_0
    return-void

    .line 241
    :cond_1
    invoke-interface {p1, v7}, Lcom/tencent/mm/network/r;->getIPsString(Z)[Ljava/lang/String;

    move-result-object v2

    move v0, v1

    .line 242
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 243
    const-string v3, "MicroMsg.CommandProcessor"

    const-string v4, "dkip long:%d  %s"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    aget-object v6, v2, v0

    aput-object v6, v5, v7

    invoke-static {v3, v4, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 244
    const-string v3, "MicroMsg.CommandProcessor"

    const-string v4, "dkip long:%d %s"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    aget-object v6, v2, v0

    invoke-static {v6}, Lcom/tencent/mm/network/a/f;->hG(Ljava/lang/String;)Lcom/tencent/mm/network/a/f;

    move-result-object v6

    invoke-virtual {v6}, Lcom/tencent/mm/network/a/f;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v3, v4, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 242
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 246
    :cond_2
    invoke-interface {p1, v1}, Lcom/tencent/mm/network/r;->getIPsString(Z)[Ljava/lang/String;

    move-result-object v2

    move v0, v1

    .line 247
    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 248
    const-string v3, "MicroMsg.CommandProcessor"

    const-string v4, "dkip short:%d %s"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    aget-object v6, v2, v0

    aput-object v6, v5, v7

    invoke-static {v3, v4, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 249
    const-string v3, "MicroMsg.CommandProcessor"

    const-string v4, "dkip long:%d %s"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    aget-object v6, v2, v0

    invoke-static {v6}, Lcom/tencent/mm/network/a/f;->hG(Ljava/lang/String;)Lcom/tencent/mm/network/a/f;

    move-result-object v6

    invoke-virtual {v6}, Lcom/tencent/mm/network/a/f;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v3, v4, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 247
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
