.class public final Lcom/tencent/mm/ui/video/ak;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static htv:I


# instance fields
.field private cdN:Landroid/hardware/Camera;

.field private eNF:Landroid/view/SurfaceHolder;

.field private htt:Z

.field private htu:Lcom/tencent/mm/ui/video/a;

.field htw:Lcom/tencent/mm/compatible/c/f;

.field private htx:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    sput v0, Lcom/tencent/mm/ui/video/ak;->htv:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object v1, p0, Lcom/tencent/mm/ui/video/ak;->cdN:Landroid/hardware/Camera;

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/video/ak;->htt:Z

    .line 34
    iput-object v1, p0, Lcom/tencent/mm/ui/video/ak;->eNF:Landroid/view/SurfaceHolder;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/video/ak;->htx:Ljava/util/List;

    return-void
.end method

.method public static aPj()I
    .locals 1

    .prologue
    .line 37
    sget v0, Lcom/tencent/mm/ui/video/ak;->htv:I

    return v0
.end method

.method private static b(Landroid/hardware/Camera$Parameters;)V
    .locals 15
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    const/4 v14, 0x2

    const v6, 0x7fffffff

    const/4 v13, 0x1

    const/4 v5, 0x0

    .line 61
    sget-object v0, Lcom/tencent/mm/compatible/c/s;->ceK:Lcom/tencent/mm/compatible/c/b;

    iget v0, v0, Lcom/tencent/mm/compatible/c/b;->cdC:I

    if-lez v0, :cond_1

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    .line 67
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v7

    .line 68
    if-eqz v7, :cond_0

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    move v4, v5

    move v1, v6

    move v3, v6

    .line 76
    :goto_1
    if-ge v4, v8, :cond_2

    .line 77
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 78
    if-eqz v0, :cond_3

    array-length v2, v0

    if-le v2, v13, :cond_3

    .line 79
    aget v2, v0, v5

    .line 82
    aget v0, v0, v13

    .line 83
    const-string v9, "MicroMsg.YuvReocrder"

    const-string v10, "dkfps %d:[%d %d]"

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v13

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v14

    invoke-static {v9, v10, v11}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    if-ltz v2, :cond_3

    if-lt v0, v2, :cond_3

    .line 85
    if-ge v2, v3, :cond_3

    if-ge v0, v1, :cond_3

    move v1, v2

    .line 76
    :goto_2
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v3, v1

    move v1, v0

    goto :goto_1

    .line 92
    :cond_2
    const-string v0, "MicroMsg.YuvReocrder"

    const-string v2, "dkfps get fit  [%d %d]"

    new-array v4, v14, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v13

    invoke-static {v0, v2, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    if-eq v3, v6, :cond_0

    if-eq v1, v6, :cond_0

    .line 97
    :try_start_0
    invoke-virtual {p0, v3, v1}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 99
    :catch_0
    move-exception v0

    goto :goto_0

    :cond_3
    move v0, v1

    move v1, v3

    goto :goto_2
.end method

.method private c(Landroid/hardware/Camera$Parameters;)V
    .locals 10
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 138
    .line 141
    invoke-static {p1}, Lcom/tencent/mm/compatible/c/d;->a(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v7

    .line 142
    if-eqz v7, :cond_6

    move v1, v0

    move v2, v0

    move v3, v0

    move v4, v0

    .line 143
    :goto_0
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 144
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    iget v5, v0, Landroid/hardware/Camera$Size;->height:I

    .line 145
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    .line 146
    const-string v6, "MicroMsg.YuvReocrder"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "supp w:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " h:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    mul-int v6, v5, v0

    .line 149
    iget-object v8, p0, Lcom/tencent/mm/ui/video/ak;->htu:Lcom/tencent/mm/ui/video/a;

    iget v8, v8, Lcom/tencent/mm/ui/video/a;->cdK:I

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/tencent/mm/ui/video/ak;->htu:Lcom/tencent/mm/ui/video/a;

    iget v8, v8, Lcom/tencent/mm/ui/video/a;->cdK:I

    const/16 v9, 0xb4

    if-ne v8, v9, :cond_1

    :cond_0
    iget-object v8, p0, Lcom/tencent/mm/ui/video/ak;->htu:Lcom/tencent/mm/ui/video/a;

    iget v8, v8, Lcom/tencent/mm/ui/video/a;->hsq:I

    if-lt v5, v8, :cond_1

    iget-object v8, p0, Lcom/tencent/mm/ui/video/ak;->htu:Lcom/tencent/mm/ui/video/a;

    iget v8, v8, Lcom/tencent/mm/ui/video/a;->hsr:I

    if-ge v0, v8, :cond_3

    :cond_1
    iget-object v8, p0, Lcom/tencent/mm/ui/video/ak;->htu:Lcom/tencent/mm/ui/video/a;

    iget v8, v8, Lcom/tencent/mm/ui/video/a;->cdK:I

    const/16 v9, 0x5a

    if-eq v8, v9, :cond_2

    iget-object v8, p0, Lcom/tencent/mm/ui/video/ak;->htu:Lcom/tencent/mm/ui/video/a;

    iget v8, v8, Lcom/tencent/mm/ui/video/a;->cdK:I

    const/16 v9, 0x10e

    if-ne v8, v9, :cond_4

    :cond_2
    iget-object v8, p0, Lcom/tencent/mm/ui/video/ak;->htu:Lcom/tencent/mm/ui/video/a;

    iget v8, v8, Lcom/tencent/mm/ui/video/a;->hsq:I

    if-lt v0, v8, :cond_4

    iget-object v8, p0, Lcom/tencent/mm/ui/video/ak;->htu:Lcom/tencent/mm/ui/video/a;

    iget v8, v8, Lcom/tencent/mm/ui/video/a;->hsr:I

    if-lt v5, v8, :cond_4

    .line 150
    :cond_3
    if-lt v6, v4, :cond_4

    move v2, v5

    move v3, v0

    move v4, v6

    .line 143
    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 157
    :cond_5
    invoke-virtual {p1, v3, v2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 158
    const-string v0, "MicroMsg.YuvReocrder"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "max w:"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " h:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    :cond_6
    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;Lcom/tencent/mm/ui/video/a;Z)I
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 177
    if-nez p2, :cond_0

    .line 178
    invoke-static {}, Lcom/tencent/mm/compatible/g/j;->qe()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x0

    .line 199
    :goto_0
    return v0

    .line 180
    :cond_0
    iput-object p2, p0, Lcom/tencent/mm/ui/video/ak;->htu:Lcom/tencent/mm/ui/video/a;

    .line 182
    if-nez p3, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/video/ak;->cdN:Landroid/hardware/Camera;

    if-nez v0, :cond_4

    .line 183
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/mm/ui/video/ak;->aPk()V

    .line 184
    if-eqz p3, :cond_2

    .line 185
    sget v0, Lcom/tencent/mm/ui/video/ak;->htv:I

    xor-int/lit8 v0, v0, -0x1

    and-int/lit8 v0, v0, 0x1

    sput v0, Lcom/tencent/mm/ui/video/ak;->htv:I

    .line 187
    :cond_2
    sget v0, Lcom/tencent/mm/ui/video/ak;->htv:I

    invoke-static {p1, v0}, Lcom/tencent/mm/compatible/c/d;->a(Landroid/app/Activity;I)Lcom/tencent/mm/compatible/c/f;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/video/ak;->htw:Lcom/tencent/mm/compatible/c/f;

    .line 188
    iget-object v0, p0, Lcom/tencent/mm/ui/video/ak;->htw:Lcom/tencent/mm/compatible/c/f;

    if-nez v0, :cond_3

    .line 189
    const-string v0, "MicroMsg.YuvReocrder"

    const-string v1, "start camera FAILED!"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    invoke-static {}, Lcom/tencent/mm/compatible/g/j;->qe()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x0

    goto :goto_0

    .line 192
    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/ui/video/ak;->htw:Lcom/tencent/mm/compatible/c/f;

    iget-object v0, v0, Lcom/tencent/mm/compatible/c/f;->cdN:Landroid/hardware/Camera;

    iput-object v0, p0, Lcom/tencent/mm/ui/video/ak;->cdN:Landroid/hardware/Camera;

    .line 193
    iget-object v0, p0, Lcom/tencent/mm/ui/video/ak;->htu:Lcom/tencent/mm/ui/video/a;

    iget-object v1, p0, Lcom/tencent/mm/ui/video/ak;->htw:Lcom/tencent/mm/compatible/c/f;

    iget v1, v1, Lcom/tencent/mm/compatible/c/f;->cdK:I

    iput v1, v0, Lcom/tencent/mm/ui/video/a;->cdK:I

    .line 194
    iget-object v0, p0, Lcom/tencent/mm/ui/video/ak;->cdN:Landroid/hardware/Camera;

    if-nez v0, :cond_4

    .line 195
    const-string v0, "MicroMsg.YuvReocrder"

    const-string v1, "start camera FAILED!"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    invoke-static {}, Lcom/tencent/mm/compatible/g/j;->qe()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x0

    goto :goto_0

    .line 199
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final aPk()V
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/tencent/mm/ui/video/ak;->cdN:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 41
    const-string v0, "MicroMsg.YuvReocrder"

    const-string v1, "release camera"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/tencent/mm/ui/video/ak;->cdN:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 43
    iget-object v0, p0, Lcom/tencent/mm/ui/video/ak;->cdN:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/video/ak;->cdN:Landroid/hardware/Camera;

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/video/ak;->htt:Z

    .line 47
    :cond_0
    return-void
.end method

.method public final aPl()Landroid/hardware/Camera;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/tencent/mm/ui/video/ak;->cdN:Landroid/hardware/Camera;

    return-object v0
.end method

.method public final d(Landroid/view/SurfaceHolder;)I
    .locals 11
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 105
    iget-boolean v0, p0, Lcom/tencent/mm/ui/video/ak;->htt:Z

    if-eqz v0, :cond_0

    move v0, v2

    .line 134
    :goto_0
    return v0

    .line 108
    :cond_0
    if-nez p1, :cond_1

    .line 109
    invoke-static {}, Lcom/tencent/mm/compatible/g/j;->qe()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x0

    goto :goto_0

    .line 114
    :cond_1
    :try_start_0
    iput-object p1, p0, Lcom/tencent/mm/ui/video/ak;->eNF:Landroid/view/SurfaceHolder;

    .line 115
    iget-object v0, p0, Lcom/tencent/mm/ui/video/ak;->cdN:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    .line 116
    iget-object v5, p0, Lcom/tencent/mm/ui/video/ak;->htu:Lcom/tencent/mm/ui/video/a;

    const v1, 0x7fffffff

    invoke-static {v4}, Lcom/tencent/mm/compatible/c/d;->a(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_7

    move v3, v2

    :goto_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_6

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    iget v7, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    iget v8, v0, Landroid/hardware/Camera$Size;->width:I

    const-string v0, "MicroMsg.YuvReocrder"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "supp w:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " h:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    mul-int v0, v7, v8

    iget v9, v5, Lcom/tencent/mm/ui/video/a;->cdK:I

    if-eqz v9, :cond_2

    iget v9, v5, Lcom/tencent/mm/ui/video/a;->cdK:I

    const/16 v10, 0xb4

    if-ne v9, v10, :cond_3

    :cond_2
    iget v9, v5, Lcom/tencent/mm/ui/video/a;->hsq:I

    if-lt v7, v9, :cond_3

    iget v9, v5, Lcom/tencent/mm/ui/video/a;->hsr:I

    if-ge v8, v9, :cond_5

    :cond_3
    iget v9, v5, Lcom/tencent/mm/ui/video/a;->cdK:I

    const/16 v10, 0x5a

    if-eq v9, v10, :cond_4

    iget v9, v5, Lcom/tencent/mm/ui/video/a;->cdK:I

    const/16 v10, 0x10e

    if-ne v9, v10, :cond_8

    :cond_4
    iget v9, v5, Lcom/tencent/mm/ui/video/a;->hsq:I

    if-lt v8, v9, :cond_8

    iget v9, v5, Lcom/tencent/mm/ui/video/a;->hsr:I

    if-lt v7, v9, :cond_8

    :cond_5
    if-ge v0, v1, :cond_8

    iput v8, v5, Lcom/tencent/mm/ui/video/a;->hsp:I

    iput v7, v5, Lcom/tencent/mm/ui/video/a;->hso:I

    :goto_2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_1

    :cond_6
    iget v0, v5, Lcom/tencent/mm/ui/video/a;->hsp:I

    iget v1, v5, Lcom/tencent/mm/ui/video/a;->hso:I

    invoke-virtual {v4, v0, v1}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    :goto_3
    const-string v0, "MicroMsg.YuvReocrder"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, " rotate:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v5, Lcom/tencent/mm/ui/video/a;->cdK:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " w:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v3

    iget v3, v3, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " h:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v3

    iget v3, v3, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-static {v4}, Lcom/tencent/mm/ui/video/ak;->b(Landroid/hardware/Camera$Parameters;)V

    .line 118
    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFrameRates()Ljava/util/List;

    move-result-object v0

    .line 119
    iget-object v1, p0, Lcom/tencent/mm/ui/video/ak;->htx:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 120
    iget-object v1, p0, Lcom/tencent/mm/ui/video/ak;->htx:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 121
    const/16 v0, 0x11

    invoke-virtual {v4, v0}, Landroid/hardware/Camera$Parameters;->setPreviewFormat(I)V

    .line 122
    invoke-direct {p0, v4}, Lcom/tencent/mm/ui/video/ak;->c(Landroid/hardware/Camera$Parameters;)V

    .line 123
    iget-object v0, p0, Lcom/tencent/mm/ui/video/ak;->cdN:Landroid/hardware/Camera;

    invoke-virtual {v0, v4}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 125
    iget-object v0, p0, Lcom/tencent/mm/ui/video/ak;->cdN:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 127
    iget-object v0, p0, Lcom/tencent/mm/ui/video/ak;->cdN:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/ui/video/ak;->htt:Z

    move v0, v2

    .line 134
    goto/16 :goto_0

    .line 116
    :cond_7
    :try_start_1
    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    iget v1, v0, Landroid/hardware/Camera$Size;->height:I

    iput v1, v5, Lcom/tencent/mm/ui/video/a;->hso:I

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    iput v0, v5, Lcom/tencent/mm/ui/video/a;->hsp:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 128
    :catch_0
    move-exception v0

    .line 129
    const-string v1, "MicroMsg.YuvReocrder"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Start preview FAILED :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-static {}, Lcom/tencent/mm/compatible/g/j;->qe()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x0

    goto/16 :goto_0

    :cond_8
    move v0, v1

    goto/16 :goto_2
.end method

.method public final oB(I)I
    .locals 5
    .parameter

    .prologue
    .line 166
    iget-object v0, p0, Lcom/tencent/mm/ui/video/ak;->htx:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/video/ak;->htx:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 167
    iget-object v0, p0, Lcom/tencent/mm/ui/video/ak;->htx:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 168
    const-string v2, "MicroMsg.YuvReocrder"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "get fr "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-le v2, p1, :cond_0

    .line 170
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 174
    :cond_1
    return p1
.end method
