.class public Lcom/tencent/imageboost/ImgProcessScan;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native FocusInit(IIZII)I
.end method

.method public static native FocusPro([BZ[Z)Z
.end method

.method public static native FocusRelease()I
.end method

.method public static Release()I
    .locals 1

    .prologue
    .line 204
    invoke-static {}, Lcom/tencent/imageboost/ImgProcessScan;->nativeRelease()I

    move-result v0

    return v0
.end method

.method public static a(IIZI)I
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 244
    if-lez p0, :cond_0

    if-gtz p1, :cond_1

    .line 245
    :cond_0
    const/4 v0, -0x1

    .line 260
    :goto_0
    return v0

    .line 247
    :cond_1
    const/4 v0, 0x1

    if-ne p3, v0, :cond_2

    .line 248
    const/4 v0, 0x6

    const/16 v1, 0x8c

    invoke-static {p0, p1, p2, v0, v1}, Lcom/tencent/imageboost/ImgProcessScan;->FocusInit(IIZII)I

    move-result v0

    goto :goto_0

    .line 250
    :cond_2
    const/4 v0, 0x2

    if-ne p3, v0, :cond_3

    .line 251
    const/16 v0, 0x8

    const/16 v1, 0x78

    invoke-static {p0, p1, p2, v0, v1}, Lcom/tencent/imageboost/ImgProcessScan;->FocusInit(IIZII)I

    move-result v0

    goto :goto_0

    .line 253
    :cond_3
    const/4 v0, 0x4

    if-ne p3, v0, :cond_4

    .line 254
    const/16 v0, 0xd

    const/16 v1, 0x50

    invoke-static {p0, p1, p2, v0, v1}, Lcom/tencent/imageboost/ImgProcessScan;->FocusInit(IIZII)I

    move-result v0

    goto :goto_0

    .line 256
    :cond_4
    const/4 v0, 0x5

    if-ne p3, v0, :cond_5

    .line 257
    const/16 v0, 0xf

    const/16 v1, 0x41

    invoke-static {p0, p1, p2, v0, v1}, Lcom/tencent/imageboost/ImgProcessScan;->FocusInit(IIZII)I

    move-result v0

    goto :goto_0

    .line 260
    :cond_5
    const/16 v0, 0xa

    const/16 v1, 0x64

    invoke-static {p0, p1, p2, v0, v1}, Lcom/tencent/imageboost/ImgProcessScan;->FocusInit(IIZII)I

    move-result v0

    goto :goto_0
.end method

.method public static a([B[BIII)I
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 189
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 195
    :cond_0
    :goto_0
    return v0

    .line 192
    :cond_1
    array-length v1, p0

    array-length v2, p1

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    if-ne v1, v2, :cond_0

    .line 195
    invoke-static {p0, p1, p2, p3, p4}, Lcom/tencent/imageboost/ImgProcessScan;->nativeCropGray2([B[BIII)I

    move-result v0

    goto :goto_0
.end method

.method public static a([B[BIIIIIII)I
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 61
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 62
    :cond_0
    const/4 v0, -0x3

    .line 71
    :goto_0
    return v0

    .line 64
    :cond_1
    array-length v0, p1

    mul-int v1, p3, p2

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    if-eq v0, v1, :cond_2

    .line 65
    const/4 v0, -0x3

    goto :goto_0

    .line 67
    :cond_2
    array-length v0, p0

    sub-int v1, p5, p4

    add-int/lit8 v1, v1, 0x1

    sub-int v2, p7, p6

    add-int/lit8 v2, v2, 0x1

    mul-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    if-eq v0, v1, :cond_3

    .line 69
    const/4 v0, -0x3

    goto :goto_0

    .line 71
    :cond_3
    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-static/range {v0 .. v9}, Lcom/tencent/imageboost/ImgProcessScan;->nativeGrayRotateCropSub([B[BIIIIIIII)I

    move-result v0

    goto :goto_0
.end method

.method public static a([B[IIIIIII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 209
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 212
    :cond_1
    invoke-static/range {p0 .. p7}, Lcom/tencent/imageboost/ImgProcessScan;->nativeYuvToCropIntArray([B[IIIIIII)V

    goto :goto_0
.end method

.method public static aY(I)I
    .locals 1
    .parameter

    .prologue
    .line 265
    if-lez p0, :cond_0

    const/4 v0, 0x5

    if-le p0, v0, :cond_1

    .line 266
    :cond_0
    const/4 p0, 0x3

    .line 268
    :cond_1
    return p0
.end method

.method private static native nativeArrayConvert(II[B[I)I
.end method

.method private static native nativeCropGray2([B[BIII)I
.end method

.method private static native nativeGrayRotateCropSub([B[BIIIIIIII)I
.end method

.method private static native nativeRelease()I
.end method

.method private static native nativeTransPixels([I[BII)I
.end method

.method private static native nativeYUVrotate([B[BII)I
.end method

.method private static native nativeYUVrotateLess([BII)I
.end method

.method private static native nativeYuvToCropIntArray([B[IIIIIII)V
.end method
