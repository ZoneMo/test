.class public final Lcom/tencent/mm/pluginsdk/ui/tools/a/q;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static v(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 62
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 63
    sget-object v1, Lcom/tencent/mm/pluginsdk/ui/tools/a/g;->fvS:Lcom/tencent/mm/pluginsdk/ui/tools/a/g;

    const-string v3, "utf-8"

    invoke-virtual {v0, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    :try_start_0
    new-instance v1, Lcom/tencent/mm/pluginsdk/ui/tools/a/r;

    invoke-direct {v1}, Lcom/tencent/mm/pluginsdk/ui/tools/a/r;-><init>()V

    sget-object v1, Lcom/tencent/mm/pluginsdk/ui/tools/a/a;->fuZ:Lcom/tencent/mm/pluginsdk/ui/tools/a/a;

    invoke-static {p0, v1, p1, p2, v0}, Lcom/tencent/mm/pluginsdk/ui/tools/a/r;->a(Ljava/lang/String;Lcom/tencent/mm/pluginsdk/ui/tools/a/a;IILjava/util/Map;)Lcom/tencent/mm/pluginsdk/ui/tools/a/c;

    move-result-object v4

    .line 68
    mul-int v0, p1, p2

    new-array v1, v0, [I

    move v3, v2

    .line 71
    :goto_0
    if-ge v3, p2, :cond_2

    move v0, v2

    .line 73
    :goto_1
    if-ge v0, p1, :cond_1

    .line 75
    invoke-virtual {v4, v0, v3}, Lcom/tencent/mm/pluginsdk/ui/tools/a/c;->aQ(II)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 77
    mul-int v5, v3, p1

    add-int/2addr v5, v0

    const/high16 v6, -0x100

    aput v6, v1, v5

    .line 73
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 81
    :cond_0
    mul-int v5, v3, p1

    add-int/2addr v5, v0

    const/4 v6, -0x1

    aput v6, v1, v5

    goto :goto_2

    .line 90
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :goto_3
    return-object v0

    .line 71
    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 86
    :cond_2
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 87
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v3, p1

    move v6, p1

    move v7, p2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V
    :try_end_0
    .catch Lcom/tencent/mm/pluginsdk/ui/tools/a/w; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3
.end method
