.class public final Lcom/google/android/gms/internal/ai;
.super Ljava/lang/Object;


# direct methods
.method private static aV(I)Z
    .locals 1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static iB()Z
    .locals 1

    const/16 v0, 0xb

    invoke-static {v0}, Lcom/google/android/gms/internal/ai;->aV(I)Z

    move-result v0

    return v0
.end method

.method public static iC()Z
    .locals 1

    const/16 v0, 0x11

    invoke-static {v0}, Lcom/google/android/gms/internal/ai;->aV(I)Z

    move-result v0

    return v0
.end method
