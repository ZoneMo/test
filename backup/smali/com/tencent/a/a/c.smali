.class public final Lcom/tencent/a/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public XZ:Ljava/lang/String;

.field public data:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string v0, "GBK"

    iput-object v0, p0, Lcom/tencent/a/a/c;->XZ:Ljava/lang/String;

    .line 6
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 19
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/a/a/c;->data:[B

    iget-object v2, p0, Lcom/tencent/a/a/c;->XZ:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_0
.end method
