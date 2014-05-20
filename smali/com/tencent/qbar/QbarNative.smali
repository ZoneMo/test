.class public Lcom/tencent/qbar/QbarNative;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static data:[B

.field public static hvD:[B

.field public static hvE:[B

.field public static hvF:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x64

    .line 22
    new-array v0, v1, [B

    sput-object v0, Lcom/tencent/qbar/QbarNative;->hvD:[B

    .line 23
    const/16 v0, 0xbb8

    new-array v0, v0, [B

    sput-object v0, Lcom/tencent/qbar/QbarNative;->data:[B

    .line 24
    new-array v0, v1, [B

    sput-object v0, Lcom/tencent/qbar/QbarNative;->hvE:[B

    .line 25
    const/4 v0, 0x3

    new-array v0, v0, [I

    sput-object v0, Lcom/tencent/qbar/QbarNative;->hvF:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native GetOneResult([B[B[B[I)I
.end method

.method public static native GetVersion()I
.end method

.method public static native Init(IILjava/lang/String;Ljava/lang/String;)I
.end method

.method public static native Release()I
.end method

.method public static native ScanImage([BIII)I
.end method

.method public static native SetReaders([II)I
.end method

.method public static a(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)I
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 28
    sget-object v0, Lcom/tencent/qbar/QbarNative;->hvD:[B

    sget-object v1, Lcom/tencent/qbar/QbarNative;->data:[B

    sget-object v2, Lcom/tencent/qbar/QbarNative;->hvE:[B

    sget-object v3, Lcom/tencent/qbar/QbarNative;->hvF:[I

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/qbar/QbarNative;->GetOneResult([B[B[B[I)I

    move-result v0

    .line 31
    :try_start_0
    new-instance v1, Ljava/lang/String;

    sget-object v2, Lcom/tencent/qbar/QbarNative;->hvE:[B

    const/4 v3, 0x0

    sget-object v4, Lcom/tencent/qbar/QbarNative;->hvF:[I

    const/4 v5, 0x2

    aget v4, v4, v5

    const-string v5, "UTF-8"

    invoke-direct {v1, v2, v3, v4, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 32
    new-instance v2, Ljava/lang/String;

    sget-object v3, Lcom/tencent/qbar/QbarNative;->hvD:[B

    const/4 v4, 0x0

    sget-object v5, Lcom/tencent/qbar/QbarNative;->hvF:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    invoke-direct {v2, v3, v4, v5, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    new-instance v2, Ljava/lang/String;

    sget-object v3, Lcom/tencent/qbar/QbarNative;->data:[B

    const/4 v4, 0x0

    sget-object v5, Lcom/tencent/qbar/QbarNative;->hvF:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    invoke-direct {v2, v3, v4, v5, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    const-string v1, "TAG"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "type:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const-string v1, "TAG"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "data:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    :goto_0
    return v0

    .line 36
    :catch_0
    move-exception v1

    goto :goto_0
.end method
