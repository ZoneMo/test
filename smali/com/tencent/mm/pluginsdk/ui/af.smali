.class public final Lcom/tencent/mm/pluginsdk/ui/af;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static aZ(Landroid/content/Context;)Z
    .locals 4
    .parameter

    .prologue
    .line 63
    const-string v0, "network_doctor_shown"

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/am;->sE(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    const/4 v0, 0x0

    .line 76
    :goto_0
    return v0

    .line 67
    :cond_0
    sget v0, Lcom/tencent/mm/n;->bsp:I

    sget v1, Lcom/tencent/mm/n;->ber:I

    new-instance v2, Lcom/tencent/mm/pluginsdk/ui/ah;

    invoke-direct {v2, p0}, Lcom/tencent/mm/pluginsdk/ui/ah;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v2, v3}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;IILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/x;

    .line 76
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static k(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 22
    const-string v0, "wap_reporter_shown"

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/am;->sE(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 23
    const/4 v0, 0x0

    .line 35
    :goto_0
    return v0

    .line 26
    :cond_0
    sget v0, Lcom/tencent/mm/n;->bwi:I

    sget v1, Lcom/tencent/mm/n;->ber:I

    new-instance v2, Lcom/tencent/mm/pluginsdk/ui/ag;

    invoke-direct {v2, p0, p1, p2}, Lcom/tencent/mm/pluginsdk/ui/ag;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v2, v3}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;IILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/x;

    .line 35
    const/4 v0, 0x1

    goto :goto_0
.end method
