.class public Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;
.super Landroid/app/Service;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/n/m;


# static fields
.field private static final feI:Ljava/util/Set;


# instance fields
.field private feD:Lcom/tencent/mm/plugin/webview/stub/am;

.field private feE:Ljava/util/List;

.field private feF:I

.field private feG:Lcom/tencent/mm/pluginsdk/model/downloader/n;

.field private feH:Ljava/util/Set;

.field private handler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1084
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1086
    sput-object v0, Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;->feI:Ljava/util/Set;

    const-string v1, "sendAppMessage"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1087
    sget-object v0, Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;->feI:Ljava/util/Set;

    const-string v1, "profile"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1088
    sget-object v0, Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;->feI:Ljava/util/Set;

    const-string v1, "shareWeibo"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1089
    sget-object v0, Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;->feI:Ljava/util/Set;

    const-string v1, "addContact"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1090
    sget-object v0, Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;->feI:Ljava/util/Set;

    const-string v1, "addEmoticon"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1091
    sget-object v0, Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;->feI:Ljava/util/Set;

    const-string v1, "GetBrandWCPayRequest"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1092
    sget-object v0, Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;->feI:Ljava/util/Set;

    const-string v1, "editAddress"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1093
    sget-object v0, Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;->feI:Ljava/util/Set;

    const-string v1, "openSpecificView"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1094
    sget-object v0, Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;->feI:Ljava/util/Set;

    const-string v1, "jumpWCMall"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1095
    sget-object v0, Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;->feI:Ljava/util/Set;

    const-string v1, "getLatestAddress"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1096
    sget-object v0, Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;->feI:Ljava/util/Set;

    const-string v1, "openProductView"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1097
    sget-object v0, Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;->feI:Ljava/util/Set;

    const-string v1, "geoLocation"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1098
    sget-object v0, Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;->feI:Ljava/util/Set;

    const-string v1, "getBrandWCPayBindCardRequest"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1099
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 77
    new-instance v0, Lcom/tencent/mm/plugin/webview/stub/m;

    invoke-direct {v0, p0}, Lcom/tencent/mm/plugin/webview/stub/m;-><init>(Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;)V

    iput-object v0, p0, Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;->feD:Lcom/tencent/mm/plugin/webview/stub/am;

    .line 816
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;->feE:Ljava/util/List;

    .line 817
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;->feF:I

    .line 823
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;->feH:Ljava/util/Set;

    .line 1022
    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;ILandroid/os/Bundle;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;->feE:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;->feE:Ljava/util/List;

    iget-object v1, p0, Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;->feE:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/tools/WebViewStubCallbackWrapper;

    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/tencent/mm/plugin/webview/stub/WebViewStubProxyUI;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const-string v2, "proxyui_action_code_key"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "webview_stub_callbacker_key"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/high16 v0, 0x1000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;Landroid/os/Bundle;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 71
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tencent/mm/plugin/webview/stub/WebViewStubProxyUI;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const-string v1, "proxyui_action_code_key"

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/mm/protocal/JsapiPermissionWrapper;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;->feE:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;->feE:Ljava/util/List;

    iget-object v1, p0, Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;->feE:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/tools/WebViewStubCallbackWrapper;

    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/tencent/mm/plugin/webview/stub/WebViewStubProxyUI;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, p6}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const-string v2, "proxyui_action_code_key"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "proxyui_type_key"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "proxyui_function_key"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "proxyui_callback_key"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "webview_stub_callbacker_key"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "proxyui_perm_key"

    invoke-virtual {v1, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "proxyui_scope_list"

    invoke-virtual {v1, v0, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const/high16 v0, 0x1000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;)Ljava/util/Set;
    .locals 1
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;->feH:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;)I
    .locals 2
    .parameter

    .prologue
    .line 71
    iget v0, p0, Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;->feF:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;->feF:I

    return v0
.end method

.method static synthetic d(Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;)I
    .locals 2
    .parameter

    .prologue
    .line 71
    iget v0, p0, Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;->feF:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;->feF:I

    return v0
.end method

.method static synthetic e(Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;)I
    .locals 1
    .parameter

    .prologue
    .line 71
    iget v0, p0, Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;->feF:I

    return v0
.end method

.method static synthetic f(Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;->feE:Ljava/util/List;

    return-object v0
.end method

.method static synthetic pV(Ljava/lang/String;)Z
    .locals 2
    .parameter

    .prologue
    .line 71
    sget-object v0, Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;->feI:Ljava/util/Set;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(IILjava/lang/String;Lcom/tencent/mm/n/x;)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v7, 0x6a

    const/4 v9, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 900
    invoke-virtual {p4}, Lcom/tencent/mm/n/x;->getType()I

    move-result v0

    .line 902
    const-string v3, "MicroMsg.WebViewStubService"

    const-string v4, "onSceneEnd :[%d]"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v3, v4, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 904
    new-instance v3, Lcom/tencent/mm/plugin/webview/stub/ak;

    invoke-direct {v3, v1}, Lcom/tencent/mm/plugin/webview/stub/ak;-><init>(B)V

    .line 905
    iput v0, v3, Lcom/tencent/mm/plugin/webview/stub/ak;->type:I

    .line 906
    iput p1, v3, Lcom/tencent/mm/plugin/webview/stub/ak;->bLI:I

    .line 907
    iput p2, v3, Lcom/tencent/mm/plugin/webview/stub/ak;->bLJ:I

    .line 908
    iput-object p3, v3, Lcom/tencent/mm/plugin/webview/stub/ak;->bOM:Ljava/lang/String;

    .line 910
    if-ne v0, v7, :cond_5

    .line 912
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    invoke-virtual {v0, v7, p0}, Lcom/tencent/mm/n/ac;->b(ILcom/tencent/mm/n/m;)V

    .line 914
    if-nez p1, :cond_0

    if-eqz p2, :cond_2

    .line 915
    :cond_0
    const-string v0, "MicroMsg.WebViewStubService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSceneEnd, sendcard errType = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", errCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 988
    :cond_1
    :goto_0
    return-void

    .line 919
    :cond_2
    check-cast p4, Lcom/tencent/mm/modelsimple/aj;

    invoke-virtual {p4}, Lcom/tencent/mm/modelsimple/aj;->CB()Lcom/tencent/mm/protocal/a/sj;

    move-result-object v0

    .line 920
    iget-object v1, v0, Lcom/tencent/mm/protocal/a/sj;->fEI:Lcom/tencent/mm/protocal/a/rw;

    invoke-static {v1}, Lcom/tencent/mm/platformtools/an;->a(Lcom/tencent/mm/protocal/a/rw;)Ljava/lang/String;

    move-result-object v1

    .line 921
    invoke-static {}, Lcom/tencent/mm/m/af;->vJ()Lcom/tencent/mm/m/m;

    move-result-object v4

    iget-object v5, v0, Lcom/tencent/mm/protocal/a/sj;->fzx:Lcom/tencent/mm/protocal/a/rv;

    invoke-static {v5}, Lcom/tencent/mm/platformtools/an;->a(Lcom/tencent/mm/protocal/a/rv;)[B

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Lcom/tencent/mm/m/m;->c(Ljava/lang/String;[B)Z

    .line 923
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 924
    const/16 v5, 0x1e

    invoke-static {v4, v0, v5}, Lcom/tencent/mm/pluginsdk/ui/tools/c;->a(Landroid/content/Intent;Lcom/tencent/mm/protocal/a/sj;I)V

    .line 926
    invoke-static {v1}, Lcom/tencent/mm/sdk/platformtools/cj;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 928
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/tencent/mm/storage/k;->tO(Ljava/lang/String;)Lcom/tencent/mm/storage/i;

    move-result-object v5

    .line 929
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lcom/tencent/mm/storage/i;->rb()Z

    move-result v5

    if-nez v5, :cond_3

    .line 931
    const-string v5, "Contact_IsLBSFriend"

    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 933
    :cond_3
    iget v0, v0, Lcom/tencent/mm/protocal/a/sj;->fNp:I

    and-int/lit8 v0, v0, 0x8

    if-lez v0, :cond_4

    .line 934
    sget-object v0, Lcom/tencent/mm/plugin/d/c/m;->dZN:Lcom/tencent/mm/plugin/d/c/m;

    const/16 v2, 0x283a

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",30"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Lcom/tencent/mm/plugin/d/c/m;->j(ILjava/lang/String;)V

    .line 936
    :cond_4
    const/high16 v0, 0x1000

    invoke-virtual {v4, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 937
    sget-object v0, Lcom/tencent/mm/plugin/webview/a/a;->cHS:Lcom/tencent/mm/pluginsdk/e;

    invoke-interface {v0, v4, p0}, Lcom/tencent/mm/pluginsdk/e;->c(Landroid/content/Intent;Landroid/content/Context;)V

    .line 939
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 940
    const-string v2, "search_contact_result_user"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 941
    iput-object v0, v3, Lcom/tencent/mm/plugin/webview/stub/ak;->diG:Landroid/os/Bundle;

    .line 943
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;->feE:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/tools/WebViewStubCallbackWrapper;

    .line 944
    invoke-virtual {v0}, Lcom/tencent/mm/ui/tools/WebViewStubCallbackWrapper;->aNT()Lcom/tencent/mm/plugin/webview/stub/ao;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/tencent/mm/plugin/webview/stub/ao;->b(Lcom/tencent/mm/plugin/webview/stub/d;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 946
    :catch_0
    move-exception v0

    .line 947
    const-string v1, "MicroMsg.WebViewStubService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onSceneEnd searchcontact fail, ex = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 951
    :cond_5
    const/16 v4, 0xe9

    if-ne v0, v4, :cond_1

    .line 953
    check-cast p4, Lcom/tencent/mm/modelsimple/x;

    .line 955
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 957
    invoke-virtual {p4}, Lcom/tencent/mm/modelsimple/x;->Co()Lcom/tencent/mm/protocal/a/lz;

    move-result-object v5

    .line 958
    const-string v6, "geta8key_result_jsapi_perm_b1"

    if-nez v5, :cond_6

    move v0, v1

    :goto_2
    invoke-virtual {v4, v6, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 959
    const-string v6, "geta8key_result_jsapi_perm_b2"

    if-nez v5, :cond_7

    move v0, v1

    :goto_3
    invoke-virtual {v4, v6, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 961
    invoke-virtual {p4}, Lcom/tencent/mm/modelsimple/x;->Cp()Lcom/tencent/mm/protocal/a/hh;

    move-result-object v0

    .line 962
    const-string v5, "geta8key_result_general_ctrl_b1"

    if-nez v0, :cond_8

    move v0, v1

    :goto_4
    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 964
    const-string v0, "geta8key_result_reason"

    invoke-virtual {p4}, Lcom/tencent/mm/modelsimple/x;->Ck()I

    move-result v5

    invoke-virtual {v4, v0, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 965
    const-string v0, "geta8key_result_req_url"

    invoke-virtual {p4}, Lcom/tencent/mm/modelsimple/x;->Cm()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 966
    const-string v0, "geta8key_result_full_url"

    invoke-virtual {p4}, Lcom/tencent/mm/modelsimple/x;->Cl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 967
    const-string v0, "geta8key_result_title"

    invoke-virtual {p4}, Lcom/tencent/mm/modelsimple/x;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 968
    const-string v0, "geta8key_result_action_code"

    invoke-virtual {p4}, Lcom/tencent/mm/modelsimple/x;->Cn()I

    move-result v5

    invoke-virtual {v4, v0, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 969
    const-string v0, "geta8key_result_content"

    invoke-virtual {p4}, Lcom/tencent/mm/modelsimple/x;->getContent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 970
    invoke-virtual {p4}, Lcom/tencent/mm/modelsimple/x;->Cr()Ljava/util/ArrayList;

    move-result-object v0

    .line 971
    const-string v5, "geta8key_result_scope_list"

    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 973
    const-string v5, "MicroMsg.WebViewStubService"

    const-string v6, "geta8key onscened: share url:[%s], full url:[%s], req url:[%s], has scopeList:[%s]"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {p4}, Lcom/tencent/mm/modelsimple/x;->Cq()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-virtual {p4}, Lcom/tencent/mm/modelsimple/x;->Cl()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-virtual {p4}, Lcom/tencent/mm/modelsimple/x;->Cm()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    const/4 v8, 0x3

    if-eqz v0, :cond_9

    move v0, v2

    :goto_5
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v7, v8

    invoke-static {v5, v6, v7}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 974
    invoke-virtual {p4}, Lcom/tencent/mm/modelsimple/x;->Cq()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 975
    invoke-virtual {p4}, Lcom/tencent/mm/modelsimple/x;->Cl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4}, Lcom/tencent/mm/modelsimple/x;->Cq()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/plugin/webview/b/e;->aE(Ljava/lang/String;Ljava/lang/String;)V

    .line 979
    :goto_6
    iput-object v4, v3, Lcom/tencent/mm/plugin/webview/stub/ak;->diG:Landroid/os/Bundle;

    .line 981
    :try_start_1
    iget-object v0, p0, Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;->feE:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/tools/WebViewStubCallbackWrapper;

    .line 982
    invoke-virtual {v0}, Lcom/tencent/mm/ui/tools/WebViewStubCallbackWrapper;->aNT()Lcom/tencent/mm/plugin/webview/stub/ao;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/tencent/mm/plugin/webview/stub/ao;->b(Lcom/tencent/mm/plugin/webview/stub/d;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_7

    .line 984
    :catch_1
    move-exception v0

    .line 985
    const-string v1, "MicroMsg.WebViewStubService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onSceneEnd geta8key fail, ex = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 958
    :cond_6
    iget v0, v5, Lcom/tencent/mm/protocal/a/lz;->fJG:I

    goto/16 :goto_2

    .line 959
    :cond_7
    iget v0, v5, Lcom/tencent/mm/protocal/a/lz;->fNd:I

    goto/16 :goto_3

    .line 962
    :cond_8
    iget v0, v0, Lcom/tencent/mm/protocal/a/hh;->fJG:I

    goto/16 :goto_4

    :cond_9
    move v0, v1

    .line 973
    goto :goto_5

    .line 977
    :cond_a
    const-string v0, "MicroMsg.WebViewStubService"

    const-string v5, "null shareUrl, full url:[%s], req url:[%s]"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-virtual {p4}, Lcom/tencent/mm/modelsimple/x;->Cl()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-virtual {p4}, Lcom/tencent/mm/modelsimple/x;->Cm()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v2

    invoke-static {v0, v5, v6}, Lcom/tencent/mm/sdk/platformtools/aa;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_6
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter

    .prologue
    .line 886
    const-string v0, "jsapiargs"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/jsapi/p;->A(Landroid/os/Bundle;)V

    .line 887
    iget-object v0, p0, Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;->feD:Lcom/tencent/mm/plugin/webview/stub/am;

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 827
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 828
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;->handler:Landroid/os/Handler;

    .line 830
    new-instance v0, Lcom/tencent/mm/plugin/webview/stub/ai;

    invoke-direct {v0, p0}, Lcom/tencent/mm/plugin/webview/stub/ai;-><init>(Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;)V

    iput-object v0, p0, Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;->feG:Lcom/tencent/mm/pluginsdk/model/downloader/n;

    .line 879
    iget-object v0, p0, Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;->feG:Lcom/tencent/mm/pluginsdk/model/downloader/n;

    invoke-static {v0}, Lcom/tencent/mm/pluginsdk/model/downloader/FileDownloadManger;->a(Lcom/tencent/mm/pluginsdk/model/downloader/n;)V

    .line 880
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 892
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 893
    iget-object v0, p0, Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;->feG:Lcom/tencent/mm/pluginsdk/model/downloader/n;

    invoke-static {v0}, Lcom/tencent/mm/pluginsdk/model/downloader/FileDownloadManger;->b(Lcom/tencent/mm/pluginsdk/model/downloader/n;)V

    .line 894
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;->feG:Lcom/tencent/mm/pluginsdk/model/downloader/n;

    .line 895
    iget-object v0, p0, Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;->feE:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 896
    return-void
.end method
