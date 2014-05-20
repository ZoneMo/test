.class final Lcom/tencent/mm/ui/tools/ia;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/ui/tools/ib;


# instance fields
.field final synthetic hnv:Lcom/tencent/mm/ui/tools/WebViewUI;


# direct methods
.method private constructor <init>(Lcom/tencent/mm/ui/tools/WebViewUI;)V
    .locals 0
    .parameter

    .prologue
    .line 3651
    iput-object p1, p0, Lcom/tencent/mm/ui/tools/ia;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/mm/ui/tools/WebViewUI;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3651
    invoke-direct {p0, p1}, Lcom/tencent/mm/ui/tools/ia;-><init>(Lcom/tencent/mm/ui/tools/WebViewUI;)V

    return-void
.end method


# virtual methods
.method public final aOe()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3658
    const-string v0, "weixin://private/setresult/"

    return-object v0
.end method

.method public final xL(Ljava/lang/String;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3663
    const/16 v0, 0x1b

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 3664
    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3665
    const-string v0, "MicroMsg.WebViewUI"

    const-string v2, "SetResultHandler handleUrl fail, value is null"

    invoke-static {v0, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 3680
    :goto_0
    return v0

    .line 3669
    :cond_0
    const-string v3, "&"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 3670
    if-gtz v3, :cond_1

    .line 3671
    const-string v0, "MicroMsg.WebViewUI"

    const-string v4, "SetResultHandler, handleUrl fail, invalid splitorIdx = %d"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v4, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 3672
    goto :goto_0

    .line 3675
    :cond_1
    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 3676
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/a/a;->decode(Ljava/lang/String;)[B

    move-result-object v3

    .line 3677
    if-nez v3, :cond_2

    const/4 v0, 0x0

    .line 3678
    :goto_1
    const-string v3, "MicroMsg.WebViewUI"

    const-string v5, "SetResultHandler, scene = %s, result = %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v4, v6, v1

    aput-object v0, v6, v2

    invoke-static {v3, v5, v6}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3679
    iget-object v1, p0, Lcom/tencent/mm/ui/tools/ia;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    iget-object v1, v1, Lcom/tencent/mm/ui/tools/WebViewUI;->hnc:Lcom/tencent/mm/ui/tools/jsapi/j;

    invoke-virtual {v1, v4, v0}, Lcom/tencent/mm/ui/tools/jsapi/j;->keep_setReturnValue(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 3680
    goto :goto_0

    .line 3677
    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    goto :goto_1
.end method
