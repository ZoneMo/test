.class public final Lcom/tencent/mm/ui/tools/gb;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private hmG:Landroid/webkit/WebView;

.field private hmH:Ljava/util/Map;

.field private hmI:Lcom/tencent/mm/protocal/JsapiPermissionWrapper;

.field private hmJ:Lcom/tencent/mm/protocal/GeneralControlWrapper;

.field private final hmK:Lcom/tencent/mm/protocal/JsapiPermissionWrapper;

.field private final hmL:Lcom/tencent/mm/protocal/GeneralControlWrapper;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/webkit/WebView;)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    sget-object v0, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->fxD:Lcom/tencent/mm/protocal/JsapiPermissionWrapper;

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/gb;->hmK:Lcom/tencent/mm/protocal/JsapiPermissionWrapper;

    .line 29
    sget-object v0, Lcom/tencent/mm/protocal/GeneralControlWrapper;->fxA:Lcom/tencent/mm/protocal/GeneralControlWrapper;

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/gb;->hmL:Lcom/tencent/mm/protocal/GeneralControlWrapper;

    .line 32
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "hardcode_jspermission"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/gb;->hmI:Lcom/tencent/mm/protocal/JsapiPermissionWrapper;

    .line 33
    sget-object v0, Lcom/tencent/mm/platformtools/at;->cHF:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/mm/platformtools/at;->cHF:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const-string v0, "MicroMsg.WebViewPermission"

    const-string v1, "setHardcodeJsPermission, Test.jsapiPermission is null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    :goto_0
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "hardcode_general_ctrl"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/GeneralControlWrapper;

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/gb;->hmJ:Lcom/tencent/mm/protocal/GeneralControlWrapper;

    .line 36
    sget-object v0, Lcom/tencent/mm/platformtools/at;->cHG:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/tencent/mm/platformtools/at;->cHG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    :cond_1
    const-string v0, "MicroMsg.WebViewPermission"

    const-string v1, "setHardcodeGeneralCtrl, Test.generalCtrl is null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    :goto_1
    const-string v0, "MicroMsg.WebViewPermission"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "edw <init> hardcodeJsPerm = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/gb;->hmI:Lcom/tencent/mm/protocal/JsapiPermissionWrapper;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", hardcodeGenCtrl = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/gb;->hmJ:Lcom/tencent/mm/protocal/GeneralControlWrapper;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    iput-object p2, p0, Lcom/tencent/mm/ui/tools/gb;->hmG:Landroid/webkit/WebView;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/gb;->hmH:Ljava/util/Map;

    .line 42
    return-void

    .line 33
    :cond_2
    :try_start_0
    sget-object v0, Lcom/tencent/mm/platformtools/at;->cHF:Ljava/lang/String;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "MicroMsg.WebViewPermission"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "setHardcodeJsPermission, permission1 = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/tencent/mm/protocal/a/lz;

    invoke-direct {v2}, Lcom/tencent/mm/protocal/a/lz;-><init>()V

    iput v1, v2, Lcom/tencent/mm/protocal/a/lz;->fJG:I

    array-length v1, v0

    if-le v1, v6, :cond_3

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "MicroMsg.WebViewPermission"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "setHardcodeJsPermission, permission2 = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput v0, v2, Lcom/tencent/mm/protocal/a/lz;->fNd:I

    :cond_3
    new-instance v0, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;

    invoke-direct {v0, v2}, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;-><init>(Lcom/tencent/mm/protocal/a/lz;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/gb;->hmI:Lcom/tencent/mm/protocal/JsapiPermissionWrapper;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    const-string v0, "MicroMsg.WebViewPermission"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setHardcodeJsPermission, hardcodeJsPerm = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/gb;->hmI:Lcom/tencent/mm/protocal/JsapiPermissionWrapper;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MicroMsg.WebViewPermission"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setHardcodeJsPermission, parse jsapi fail, ex = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v8, p0, Lcom/tencent/mm/ui/tools/gb;->hmI:Lcom/tencent/mm/protocal/JsapiPermissionWrapper;

    goto :goto_2

    .line 36
    :cond_4
    :try_start_1
    sget-object v0, Lcom/tencent/mm/platformtools/at;->cHG:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "MicroMsg.WebViewPermission"

    const-string v2, "setHardcodeGeneralCtrl, permission = %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Lcom/tencent/mm/protocal/a/hh;

    invoke-direct {v1}, Lcom/tencent/mm/protocal/a/hh;-><init>()V

    iput v0, v1, Lcom/tencent/mm/protocal/a/hh;->fJG:I

    new-instance v0, Lcom/tencent/mm/protocal/GeneralControlWrapper;

    invoke-direct {v0, v1}, Lcom/tencent/mm/protocal/GeneralControlWrapper;-><init>(Lcom/tencent/mm/protocal/a/hh;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/gb;->hmJ:Lcom/tencent/mm/protocal/GeneralControlWrapper;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    const-string v0, "MicroMsg.WebViewPermission"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setHardcodeGeneralCtrl, hardcodeGenCtrl = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/gb;->hmJ:Lcom/tencent/mm/protocal/GeneralControlWrapper;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :catch_1
    move-exception v0

    const-string v1, "MicroMsg.WebViewPermission"

    const-string v2, "setHardcodeGeneralCtrl fail, ex = %s"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v7

    invoke-static {v1, v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object v8, p0, Lcom/tencent/mm/ui/tools/gb;->hmJ:Lcom/tencent/mm/protocal/GeneralControlWrapper;

    goto :goto_3
.end method

.method private static xA(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 196
    const-string v0, "#"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    .line 201
    :goto_0
    return-object p0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/tencent/mm/protocal/JsapiPermissionWrapper;Lcom/tencent/mm/protocal/GeneralControlWrapper;Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-static {p1}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    const-string v0, "MicroMsg.WebViewPermission"

    const-string v1, "update fail, url is null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    :goto_0
    return-void

    .line 50
    :cond_0
    invoke-static {p1}, Lcom/tencent/mm/ui/tools/gb;->xA(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 52
    if-nez p2, :cond_1

    .line 53
    iget-object p2, p0, Lcom/tencent/mm/ui/tools/gb;->hmK:Lcom/tencent/mm/protocal/JsapiPermissionWrapper;

    .line 55
    :cond_1
    if-nez p3, :cond_2

    .line 56
    iget-object p3, p0, Lcom/tencent/mm/ui/tools/gb;->hmL:Lcom/tencent/mm/protocal/GeneralControlWrapper;

    .line 59
    :cond_2
    const-string v1, "MicroMsg.WebViewPermission"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "edw update, jsPerm = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", genCtrl = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", url = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iget-object v1, p0, Lcom/tencent/mm/ui/tools/gb;->hmH:Ljava/util/Map;

    new-instance v2, Lcom/tencent/mm/ui/tools/gc;

    invoke-direct {v2, p2, p3, p4}, Lcom/tencent/mm/ui/tools/gc;-><init>(Lcom/tencent/mm/protocal/JsapiPermissionWrapper;Lcom/tencent/mm/protocal/GeneralControlWrapper;Ljava/util/ArrayList;)V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final aNQ()Lcom/tencent/mm/protocal/JsapiPermissionWrapper;
    .locals 3

    .prologue
    .line 74
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/gb;->hmI:Lcom/tencent/mm/protocal/JsapiPermissionWrapper;

    if-eqz v0, :cond_0

    .line 75
    const-string v0, "MicroMsg.WebViewPermission"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getJsPerm, return hardcodeJsPerm = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/gb;->hmI:Lcom/tencent/mm/protocal/JsapiPermissionWrapper;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/gb;->hmI:Lcom/tencent/mm/protocal/JsapiPermissionWrapper;

    .line 80
    :goto_0
    return-object v0

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/gb;->hmG:Landroid/webkit/WebView;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 80
    :goto_1
    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/tools/gb;->xz(Ljava/lang/String;)Lcom/tencent/mm/protocal/JsapiPermissionWrapper;

    move-result-object v0

    goto :goto_0

    .line 79
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/gb;->hmG:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public final aNR()Lcom/tencent/mm/protocal/GeneralControlWrapper;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 102
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/gb;->hmJ:Lcom/tencent/mm/protocal/GeneralControlWrapper;

    if-eqz v0, :cond_0

    .line 103
    const-string v0, "MicroMsg.WebViewPermission"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getGenCtrl, return hardcodeGenCtrl = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/gb;->hmJ:Lcom/tencent/mm/protocal/GeneralControlWrapper;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/gb;->hmJ:Lcom/tencent/mm/protocal/GeneralControlWrapper;

    .line 116
    :goto_0
    return-object v0

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/gb;->hmG:Landroid/webkit/WebView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/gb;->hmG:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 109
    :goto_1
    const-string v1, "MicroMsg.WebViewPermission"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getGenCtrl fail, url = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/gb;->hmL:Lcom/tencent/mm/protocal/GeneralControlWrapper;

    goto :goto_0

    .line 113
    :cond_1
    invoke-static {v0}, Lcom/tencent/mm/ui/tools/gb;->xA(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 114
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/gb;->hmH:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/tools/gc;

    .line 115
    const-string v3, "MicroMsg.WebViewPermission"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "edw getGenCtrl, genCtrl = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v0, :cond_2

    :goto_2
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", url = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/gb;->hmL:Lcom/tencent/mm/protocal/GeneralControlWrapper;

    goto :goto_0

    .line 115
    :cond_2
    iget-object v1, v0, Lcom/tencent/mm/ui/tools/gc;->hmN:Lcom/tencent/mm/protocal/GeneralControlWrapper;

    goto :goto_2

    .line 116
    :cond_3
    iget-object v0, v0, Lcom/tencent/mm/ui/tools/gc;->hmN:Lcom/tencent/mm/protocal/GeneralControlWrapper;

    goto :goto_0

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method

.method public final aNS()Ljava/util/ArrayList;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 179
    .line 180
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/gb;->hmG:Landroid/webkit/WebView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/gb;->hmG:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 181
    :goto_0
    const-string v2, "MicroMsg.WebViewPermission"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getScopeList fail, url = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    :cond_0
    :goto_1
    return-object v1

    .line 185
    :cond_1
    invoke-static {v0}, Lcom/tencent/mm/ui/tools/gb;->xA(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 186
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/gb;->hmH:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/tools/gc;

    .line 187
    if-eqz v0, :cond_0

    .line 190
    const-string v3, "MicroMsg.WebViewPermission"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v1, "edw getScopeList, scopeList is null []"

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/tencent/mm/ui/tools/gc;->hmO:Ljava/util/ArrayList;

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_2
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", url = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    iget-object v1, v0, Lcom/tencent/mm/ui/tools/gc;->hmO:Ljava/util/ArrayList;

    goto :goto_1

    .line 190
    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method public final detach()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 120
    const-string v0, "MicroMsg.WebViewPermission"

    const-string v1, "detach"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/gb;->hmH:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 122
    iput-object v2, p0, Lcom/tencent/mm/ui/tools/gb;->hmH:Ljava/util/Map;

    .line 123
    iput-object v2, p0, Lcom/tencent/mm/ui/tools/gb;->hmG:Landroid/webkit/WebView;

    .line 124
    return-void
.end method

.method public final has(Ljava/lang/String;)Z
    .locals 2
    .parameter

    .prologue
    .line 64
    invoke-static {p1}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    const-string v0, "MicroMsg.WebViewPermission"

    const-string v1, "has fail, url is null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const/4 v0, 0x0

    .line 70
    :goto_0
    return v0

    .line 69
    :cond_0
    invoke-static {p1}, Lcom/tencent/mm/ui/tools/gb;->xA(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    iget-object v1, p0, Lcom/tencent/mm/ui/tools/gb;->hmH:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final xz(Ljava/lang/String;)Lcom/tencent/mm/protocal/JsapiPermissionWrapper;
    .locals 5
    .parameter

    .prologue
    .line 84
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/gb;->hmI:Lcom/tencent/mm/protocal/JsapiPermissionWrapper;

    if-eqz v0, :cond_0

    .line 85
    const-string v0, "MicroMsg.WebViewPermission"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getJsPerm, return hardcodeJsPerm = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/gb;->hmI:Lcom/tencent/mm/protocal/JsapiPermissionWrapper;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/gb;->hmI:Lcom/tencent/mm/protocal/JsapiPermissionWrapper;

    .line 98
    :goto_0
    return-object v0

    .line 89
    :cond_0
    invoke-static {p1}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    const-string v0, "MicroMsg.WebViewPermission"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getJsPerm fail, url = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/gb;->hmK:Lcom/tencent/mm/protocal/JsapiPermissionWrapper;

    goto :goto_0

    .line 94
    :cond_1
    invoke-static {p1}, Lcom/tencent/mm/ui/tools/gb;->xA(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 96
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/gb;->hmH:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/tools/gc;

    .line 97
    const-string v3, "MicroMsg.WebViewPermission"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v1, "edw getJsPerm, jsPerm = "

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v0, :cond_2

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", url = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/gb;->hmK:Lcom/tencent/mm/protocal/JsapiPermissionWrapper;

    goto :goto_0

    .line 97
    :cond_2
    iget-object v1, v0, Lcom/tencent/mm/ui/tools/gc;->hmM:Lcom/tencent/mm/protocal/JsapiPermissionWrapper;

    goto :goto_1

    .line 98
    :cond_3
    iget-object v0, v0, Lcom/tencent/mm/ui/tools/gc;->hmM:Lcom/tencent/mm/protocal/JsapiPermissionWrapper;

    goto :goto_0
.end method
