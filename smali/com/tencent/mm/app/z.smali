.class final Lcom/tencent/mm/app/z;
.super Lcom/tencent/mm/sdk/b/g;
.source "SourceFile"


# instance fields
.field final synthetic bLu:Lcom/tencent/mm/app/WorkerProfile;


# direct methods
.method constructor <init>(Lcom/tencent/mm/app/WorkerProfile;)V
    .locals 0
    .parameter

    .prologue
    .line 477
    iput-object p1, p0, Lcom/tencent/mm/app/z;->bLu:Lcom/tencent/mm/app/WorkerProfile;

    invoke-direct {p0}, Lcom/tencent/mm/sdk/b/g;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/sdk/b/e;)Z
    .locals 7
    .parameter

    .prologue
    .line 481
    check-cast p1, Lcom/tencent/mm/c/a/fv;

    .line 482
    iget-object v0, p1, Lcom/tencent/mm/c/a/fv;->bQp:Lcom/tencent/mm/c/a/fw;

    iget-object v0, v0, Lcom/tencent/mm/c/a/fw;->bQu:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 483
    iget-object v0, p1, Lcom/tencent/mm/c/a/fv;->bQp:Lcom/tencent/mm/c/a/fw;

    iget-object v0, v0, Lcom/tencent/mm/c/a/fw;->bOa:Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;

    iget-object v1, p1, Lcom/tencent/mm/c/a/fv;->bQp:Lcom/tencent/mm/c/a/fw;

    iget-object v1, v1, Lcom/tencent/mm/c/a/fw;->appId:Ljava/lang/String;

    iget-object v2, p1, Lcom/tencent/mm/c/a/fv;->bQp:Lcom/tencent/mm/c/a/fw;

    iget-object v2, v2, Lcom/tencent/mm/c/a/fw;->appName:Ljava/lang/String;

    iget-object v3, p1, Lcom/tencent/mm/c/a/fv;->bQp:Lcom/tencent/mm/c/a/fw;

    iget-object v3, v3, Lcom/tencent/mm/c/a/fw;->bQq:Ljava/lang/String;

    iget-object v4, p1, Lcom/tencent/mm/c/a/fv;->bQp:Lcom/tencent/mm/c/a/fw;

    iget v4, v4, Lcom/tencent/mm/c/a/fw;->bQr:I

    iget-object v5, p1, Lcom/tencent/mm/c/a/fv;->bQp:Lcom/tencent/mm/c/a/fw;

    iget-object v5, v5, Lcom/tencent/mm/c/a/fw;->bQu:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/tencent/mm/pluginsdk/model/app/s;->a(Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I

    .line 488
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 485
    :cond_0
    iget-object v0, p1, Lcom/tencent/mm/c/a/fv;->bQp:Lcom/tencent/mm/c/a/fw;

    iget-object v0, v0, Lcom/tencent/mm/c/a/fw;->bOa:Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;

    iget-object v1, p1, Lcom/tencent/mm/c/a/fv;->bQp:Lcom/tencent/mm/c/a/fw;

    iget-object v1, v1, Lcom/tencent/mm/c/a/fw;->appId:Ljava/lang/String;

    iget-object v2, p1, Lcom/tencent/mm/c/a/fv;->bQp:Lcom/tencent/mm/c/a/fw;

    iget-object v2, v2, Lcom/tencent/mm/c/a/fw;->appName:Ljava/lang/String;

    iget-object v3, p1, Lcom/tencent/mm/c/a/fv;->bQp:Lcom/tencent/mm/c/a/fw;

    iget-object v3, v3, Lcom/tencent/mm/c/a/fw;->bQq:Ljava/lang/String;

    iget-object v4, p1, Lcom/tencent/mm/c/a/fv;->bQp:Lcom/tencent/mm/c/a/fw;

    iget v4, v4, Lcom/tencent/mm/c/a/fw;->bQr:I

    iget-object v5, p1, Lcom/tencent/mm/c/a/fv;->bQp:Lcom/tencent/mm/c/a/fw;

    iget-object v5, v5, Lcom/tencent/mm/c/a/fw;->bQs:Ljava/lang/String;

    iget-object v6, p1, Lcom/tencent/mm/c/a/fv;->bQp:Lcom/tencent/mm/c/a/fw;

    iget-object v6, v6, Lcom/tencent/mm/c/a/fw;->bQt:Ljava/lang/String;

    invoke-static/range {v0 .. v6}, Lcom/tencent/mm/pluginsdk/model/app/s;->a(Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
