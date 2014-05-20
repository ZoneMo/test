.class public final Lcom/tencent/mm/ui/tools/ee;
.super Lcom/tencent/mm/ui/tools/a/l;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/tencent/mm/storage/ak;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MsgInfo"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/tencent/mm/ui/tools/a/l;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    return-void
.end method


# virtual methods
.method public final aNz()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/ee;->aOG()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/storage/ak;

    .line 22
    invoke-static {v0}, Lcom/tencent/mm/ui/tools/bs;->S(Lcom/tencent/mm/storage/ak;)Lcom/tencent/mm/w/e;

    move-result-object v1

    .line 23
    invoke-static {v0, v1}, Lcom/tencent/mm/ui/tools/bs;->c(Lcom/tencent/mm/storage/ak;Lcom/tencent/mm/w/e;)Ljava/lang/String;

    move-result-object v0

    .line 25
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 26
    :cond_0
    const-string v0, "android.resource://com.tencent.mm/2130838946"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 28
    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method
