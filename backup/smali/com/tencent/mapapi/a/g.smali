.class public final Lcom/tencent/mapapi/a/g;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static ak(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 16
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
