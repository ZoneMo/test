.class final Lcom/tencent/mm/ui/tools/gj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/ui/tools/jsapi/d;


# instance fields
.field final synthetic hnv:Lcom/tencent/mm/ui/tools/WebViewUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/tools/WebViewUI;)V
    .locals 0
    .parameter

    .prologue
    .line 1398
    iput-object p1, p0, Lcom/tencent/mm/ui/tools/gj;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final aNS()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 1410
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/gj;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/WebViewUI;->a(Lcom/tencent/mm/ui/tools/WebViewUI;)Lcom/tencent/mm/ui/tools/gb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/ui/tools/gb;->aNS()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public final aOb()Lcom/tencent/mm/protocal/JsapiPermissionWrapper;
    .locals 4

    .prologue
    .line 1402
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/gj;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/WebViewUI;->a(Lcom/tencent/mm/ui/tools/WebViewUI;)Lcom/tencent/mm/ui/tools/gb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/ui/tools/gb;->aNQ()Lcom/tencent/mm/protocal/JsapiPermissionWrapper;

    move-result-object v0

    .line 1403
    const-string v1, "MicroMsg.WebViewUI"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "jsPermission value = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->avD()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1404
    const-string v1, "MicroMsg.WebViewUI"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "jsPermission BitSet2 value = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->avH()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1405
    return-object v0
.end method

.method public final aOc()V
    .locals 1

    .prologue
    .line 1415
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/gj;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/WebViewUI;->k(Lcom/tencent/mm/ui/tools/WebViewUI;)Z

    .line 1416
    return-void
.end method
