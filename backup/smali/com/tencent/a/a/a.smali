.class public final Lcom/tencent/a/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;Ljava/lang/String;[B)Lcom/tencent/a/a/c;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 84
    invoke-static {}, Lcom/tencent/a/a/b;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Lcom/tencent/a/a/g;

    invoke-direct {v0}, Lcom/tencent/a/a/g;-><init>()V

    throw v0

    .line 89
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0, p0, p1, p2}, Lcom/tencent/mapapi/a/e;->a(ZLjava/lang/String;Ljava/lang/String;[B)Lcom/tencent/a/a/c;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 90
    :catch_0
    move-exception v0

    throw v0
.end method

.method public static h(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/a/a/c;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 60
    invoke-static {}, Lcom/tencent/a/a/b;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lcom/tencent/a/a/g;

    invoke-direct {v0}, Lcom/tencent/a/a/g;-><init>()V

    throw v0

    .line 65
    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0, p0, p1, v1}, Lcom/tencent/mapapi/a/e;->a(ZLjava/lang/String;Ljava/lang/String;[B)Lcom/tencent/a/a/c;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 66
    :catch_0
    move-exception v0

    throw v0
.end method
