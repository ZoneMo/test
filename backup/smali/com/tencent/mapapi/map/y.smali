.class final Lcom/tencent/mapapi/map/y;
.super Lcom/tencent/mapapi/map/am;
.source "SourceFile"


# instance fields
.field private VW:Lcom/tencent/mapapi/map/ad;

.field public VX:Z

.field private VY:[B


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/tencent/mapapi/map/am;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mapapi/map/y;->VW:Lcom/tencent/mapapi/map/ad;

    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mapapi/map/y;->VX:Z

    .line 23
    const/16 v0, 0x400

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/tencent/mapapi/map/y;->VY:[B

    .line 24
    return-void
.end method

.method private a([BLcom/tencent/mapapi/map/aa;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 228
    if-nez p1, :cond_1

    .line 258
    :cond_0
    :goto_0
    return v0

    .line 231
    :cond_1
    array-length v2, p1

    if-gtz v2, :cond_2

    move v0, v1

    .line 232
    goto :goto_0

    .line 234
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 235
    iget v3, p2, Lcom/tencent/mapapi/map/aa;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 236
    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    iget v3, p2, Lcom/tencent/mapapi/map/aa;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 238
    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    iget v3, p2, Lcom/tencent/mapapi/map/aa;->Uc:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 240
    iget-object v3, p0, Lcom/tencent/mapapi/map/y;->VW:Lcom/tencent/mapapi/map/ad;

    iget-object v3, v3, Lcom/tencent/mapapi/map/ad;->Wd:Lcom/tencent/mapapi/map/an;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, p1, v2}, Lcom/tencent/mapapi/map/an;->b([BLjava/lang/String;)Z

    move-result v2

    .line 242
    if-eqz v2, :cond_0

    .line 247
    iget-object v0, p0, Lcom/tencent/mapapi/map/y;->VW:Lcom/tencent/mapapi/map/ad;

    if-eqz v0, :cond_3

    .line 248
    iget-object v0, p0, Lcom/tencent/mapapi/map/y;->VW:Lcom/tencent/mapapi/map/ad;

    invoke-virtual {v0, p2}, Lcom/tencent/mapapi/map/ad;->a(Lcom/tencent/mapapi/map/aa;)V

    .line 250
    :cond_3
    iget-object v0, p0, Lcom/tencent/mapapi/map/y;->VW:Lcom/tencent/mapapi/map/ad;

    iget-boolean v0, v0, Lcom/tencent/mapapi/map/ad;->WI:Z

    if-ne v0, v1, :cond_4

    .line 252
    iget-object v0, p0, Lcom/tencent/mapapi/map/y;->VW:Lcom/tencent/mapapi/map/ad;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tencent/mapapi/map/y;->VW:Lcom/tencent/mapapi/map/ad;

    iget-object v0, v0, Lcom/tencent/mapapi/map/ad;->We:Lcom/tencent/mapapi/map/bc;

    if-eqz v0, :cond_4

    .line 254
    iget-object v0, p0, Lcom/tencent/mapapi/map/y;->VW:Lcom/tencent/mapapi/map/ad;

    iget-object v0, v0, Lcom/tencent/mapapi/map/ad;->We:Lcom/tencent/mapapi/map/bc;

    iget v2, p2, Lcom/tencent/mapapi/map/aa;->a:I

    iget v3, p2, Lcom/tencent/mapapi/map/aa;->b:I

    iget v4, p2, Lcom/tencent/mapapi/map/aa;->Uc:I

    invoke-virtual {v0, p1, v2, v3, v4}, Lcom/tencent/mapapi/map/bc;->a([BIII)Z

    :cond_4
    move v0, v1

    .line 258
    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/tencent/mapapi/map/ad;)V
    .locals 0
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcom/tencent/mapapi/map/y;->VW:Lcom/tencent/mapapi/map/ad;

    .line 33
    return-void
.end method

.method protected final synthetic f([B)Ljava/lang/Object;
    .locals 10
    .parameter

    .prologue
    const/4 v6, 0x4

    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 15
    iget-object v0, p0, Lcom/tencent/mapapi/map/y;->Wr:Ljava/lang/Object;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    if-eqz p1, :cond_0

    if-nez p1, :cond_2

    move v0, v3

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/tencent/mapapi/map/y;->VX:Z

    if-ne v0, v4, :cond_3

    iget-object v0, p0, Lcom/tencent/mapapi/map/y;->Wr:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mapapi/map/aa;

    invoke-direct {p0, p1, v0}, Lcom/tencent/mapapi/map/y;->a([BLcom/tencent/mapapi/map/aa;)Z

    move-result v0

    goto :goto_1

    :cond_3
    array-length v0, p1

    if-gtz v0, :cond_4

    move v0, v3

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/tencent/mapapi/map/y;->VY:[B

    invoke-static {p1, v3, v0, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/tencent/mapapi/map/y;->VY:[B

    aget-byte v0, v0, v3

    add-int/lit16 v0, v0, 0x100

    rem-int/lit16 v0, v0, 0x100

    iget-object v1, p0, Lcom/tencent/mapapi/map/y;->VY:[B

    aget-byte v1, v1, v4

    add-int/lit16 v1, v1, 0x100

    rem-int/lit16 v1, v1, 0x100

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/tencent/mapapi/map/y;->VY:[B

    const/4 v5, 0x2

    aget-byte v1, v1, v5

    add-int/lit16 v1, v1, 0x100

    rem-int/lit16 v1, v1, 0x100

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/tencent/mapapi/map/y;->VY:[B

    const/4 v5, 0x3

    aget-byte v1, v1, v5

    add-int/lit16 v1, v1, 0x100

    rem-int/lit16 v1, v1, 0x100

    shl-int/lit8 v1, v1, 0x18

    or-int v7, v0, v1

    iget-object v0, p0, Lcom/tencent/mapapi/map/y;->Wr:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eq v7, v0, :cond_5

    move v0, v3

    goto :goto_1

    :cond_5
    new-array v8, v7, [I

    iget-object v0, p0, Lcom/tencent/mapapi/map/y;->VY:[B

    mul-int/lit8 v1, v7, 0x4

    invoke-static {p1, v6, v0, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v0, v3

    :goto_2
    if-ge v0, v7, :cond_6

    mul-int/lit8 v1, v0, 0x4

    add-int/lit8 v1, v1, 0x4

    iget-object v5, p0, Lcom/tencent/mapapi/map/y;->VY:[B

    aget-byte v5, v5, v1

    add-int/lit16 v5, v5, 0x100

    rem-int/lit16 v5, v5, 0x100

    iget-object v6, p0, Lcom/tencent/mapapi/map/y;->VY:[B

    add-int/lit8 v9, v1, 0x1

    aget-byte v6, v6, v9

    add-int/lit16 v6, v6, 0x100

    rem-int/lit16 v6, v6, 0x100

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    iget-object v6, p0, Lcom/tencent/mapapi/map/y;->VY:[B

    add-int/lit8 v9, v1, 0x2

    aget-byte v6, v6, v9

    add-int/lit16 v6, v6, 0x100

    rem-int/lit16 v6, v6, 0x100

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v5, v6

    iget-object v6, p0, Lcom/tencent/mapapi/map/y;->VY:[B

    add-int/lit8 v1, v1, 0x3

    aget-byte v1, v6, v1

    add-int/lit16 v1, v1, 0x100

    rem-int/lit16 v1, v1, 0x100

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v1, v5

    aput v1, v8, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    add-int/lit8 v0, v7, 0x1

    mul-int/lit8 v0, v0, 0x4

    move v5, v3

    move v6, v0

    :goto_3
    if-ge v5, v7, :cond_a

    aget v1, v8, v5

    if-nez p1, :cond_7

    move-object v1, v2

    :goto_4
    aget v0, v8, v5

    add-int/2addr v6, v0

    iget-object v0, p0, Lcom/tencent/mapapi/map/y;->Wr:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mapapi/map/aa;

    invoke-direct {p0, v1, v0}, Lcom/tencent/mapapi/map/y;->a([BLcom/tencent/mapapi/map/aa;)Z

    move-result v0

    if-nez v0, :cond_9

    move v0, v3

    goto/16 :goto_1

    :cond_7
    if-gtz v1, :cond_8

    move-object v1, v2

    goto :goto_4

    :cond_8
    new-array v0, v1, [B

    invoke-static {p1, v6, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v0

    goto :goto_4

    :cond_9
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_3

    :cond_a
    move v0, v4

    goto/16 :goto_1
.end method

.method protected final mj()Ljava/lang/String;
    .locals 5

    .prologue
    .line 209
    iget-object v0, p0, Lcom/tencent/mapapi/map/y;->Wr:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 210
    if-gtz v2, :cond_0

    .line 212
    const/4 v0, 0x0

    .line 222
    :goto_0
    return-object v0

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/tencent/mapapi/map/y;->Wr:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    new-array v3, v0, [I

    .line 215
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_1

    .line 217
    mul-int/lit8 v4, v1, 0x3

    iget-object v0, p0, Lcom/tencent/mapapi/map/y;->Wr:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mapapi/map/aa;

    iget v0, v0, Lcom/tencent/mapapi/map/aa;->a:I

    aput v0, v3, v4

    .line 218
    mul-int/lit8 v0, v1, 0x3

    add-int/lit8 v4, v0, 0x1

    iget-object v0, p0, Lcom/tencent/mapapi/map/y;->Wr:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mapapi/map/aa;

    iget v0, v0, Lcom/tencent/mapapi/map/aa;->b:I

    aput v0, v3, v4

    .line 219
    mul-int/lit8 v0, v1, 0x3

    add-int/lit8 v4, v0, 0x2

    iget-object v0, p0, Lcom/tencent/mapapi/map/y;->Wr:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mapapi/map/aa;

    iget v0, v0, Lcom/tencent/mapapi/map/aa;->Uc:I

    aput v0, v3, v4

    .line 215
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 221
    :cond_1
    iget-object v0, p0, Lcom/tencent/mapapi/map/y;->VW:Lcom/tencent/mapapi/map/ad;

    iget-object v0, v0, Lcom/tencent/mapapi/map/ad;->WN:Lcom/tencent/mapapi/map/ae;

    iget-object v1, p0, Lcom/tencent/mapapi/map/y;->VW:Lcom/tencent/mapapi/map/ad;

    invoke-virtual {v1}, Lcom/tencent/mapapi/map/ad;->mE()I

    move-result v1

    invoke-virtual {v0, v1, v3}, Lcom/tencent/mapapi/map/ae;->a(I[I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
