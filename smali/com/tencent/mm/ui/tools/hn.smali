.class final Lcom/tencent/mm/ui/tools/hn;
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
    .line 3626
    iput-object p1, p0, Lcom/tencent/mm/ui/tools/hn;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/mm/ui/tools/WebViewUI;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3626
    invoke-direct {p0, p1}, Lcom/tencent/mm/ui/tools/hn;-><init>(Lcom/tencent/mm/ui/tools/WebViewUI;)V

    return-void
.end method


# virtual methods
.method public final aOe()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3632
    const-string v0, "weixin://webview/close/"

    return-object v0
.end method

.method public final xL(Ljava/lang/String;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 3637
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/hn;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/WebViewUI;->a(Lcom/tencent/mm/ui/tools/WebViewUI;)Lcom/tencent/mm/ui/tools/gb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/ui/tools/gb;->aNQ()Lcom/tencent/mm/protocal/JsapiPermissionWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->awa()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3638
    const-string v0, "MicroMsg.WebViewUI"

    const-string v1, "close window permission fail"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3643
    :goto_0
    return v2

    .line 3642
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/hn;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/tools/WebViewUI;->finish()V

    goto :goto_0
.end method
