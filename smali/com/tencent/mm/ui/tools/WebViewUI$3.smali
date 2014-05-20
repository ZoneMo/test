.class Lcom/tencent/mm/ui/tools/WebViewUI$3;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# instance fields
.field final synthetic hnv:Lcom/tencent/mm/ui/tools/WebViewUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/tools/WebViewUI;)V
    .locals 0
    .parameter

    .prologue
    .line 808
    iput-object p1, p0, Lcom/tencent/mm/ui/tools/WebViewUI$3;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method private a(Landroid/webkit/ValueCallback;)V
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 931
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI$3;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/WebViewUI;->a(Lcom/tencent/mm/ui/tools/WebViewUI;)Lcom/tencent/mm/ui/tools/gb;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI$3;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/WebViewUI;->a(Lcom/tencent/mm/ui/tools/WebViewUI;)Lcom/tencent/mm/ui/tools/gb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/ui/tools/gb;->aNQ()Lcom/tencent/mm/protocal/JsapiPermissionWrapper;

    move-result-object v0

    if-nez v0, :cond_1

    .line 932
    :cond_0
    const-string v0, "MicroMsg.WebViewUI"

    const-string v1, "openFileChooser fail, wvPerm is null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 933
    invoke-interface {p1, v2}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 947
    :goto_0
    return-void

    .line 937
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI$3;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/WebViewUI;->a(Lcom/tencent/mm/ui/tools/WebViewUI;)Lcom/tencent/mm/ui/tools/gb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/ui/tools/gb;->aNQ()Lcom/tencent/mm/protocal/JsapiPermissionWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->awE()Z

    move-result v0

    if-nez v0, :cond_2

    .line 938
    const-string v0, "MicroMsg.WebViewUI"

    const-string v1, "openfi file chooser failed, permission fail"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 939
    invoke-interface {p1, v2}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 942
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI$3;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    invoke-static {v0, p1}, Lcom/tencent/mm/ui/tools/WebViewUI;->a(Lcom/tencent/mm/ui/tools/WebViewUI;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;

    .line 943
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 944
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 945
    const-string v1, "*/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 946
    iget-object v1, p0, Lcom/tencent/mm/ui/tools/WebViewUI$3;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/WebViewUI$3;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    sget v3, Lcom/tencent/mm/n;->bIs:I

    invoke-virtual {v2, v3}, Lcom/tencent/mm/ui/tools/WebViewUI;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/tencent/mm/ui/tools/WebViewUI;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method


# virtual methods
.method public getVideoLoadingProgressView()Landroid/view/View;
    .locals 3

    .prologue
    .line 895
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI$3;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/WebViewUI;->g(Lcom/tencent/mm/ui/tools/WebViewUI;)Landroid/widget/ProgressBar;

    move-result-object v0

    if-nez v0, :cond_0

    .line 896
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI$3;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    new-instance v1, Landroid/widget/ProgressBar;

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/WebViewUI$3;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    invoke-direct {v1, v2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/tools/WebViewUI;->a(Lcom/tencent/mm/ui/tools/WebViewUI;Landroid/widget/ProgressBar;)Landroid/widget/ProgressBar;

    .line 897
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI$3;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/WebViewUI;->g(Lcom/tencent/mm/ui/tools/WebViewUI;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 900
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI$3;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/WebViewUI;->g(Lcom/tencent/mm/ui/tools/WebViewUI;)Landroid/widget/ProgressBar;

    move-result-object v0

    return-object v0
.end method

.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 911
    const-string v0, "MicroMsg.WebViewUI"

    const-string v1, "onGeolocationPermissionsShowPrompt, origin = %s"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 912
    invoke-interface {p2, p1, v4, v3}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    .line 913
    return-void
.end method

.method public onHideCustomView()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 868
    const-string v0, "MicroMsg.WebViewUI"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onHideCustomView, sdk int = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 875
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI$3;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/WebViewUI;->e(Lcom/tencent/mm/ui/tools/WebViewUI;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    .line 891
    :cond_0
    :goto_0
    return-void

    .line 879
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI$3;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    invoke-virtual {v0, v3}, Lcom/tencent/mm/ui/tools/WebViewUI;->mB(I)V

    .line 880
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI$3;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/tools/WebViewUI;->b(Lcom/tencent/mm/ui/tools/WebViewUI;Z)V

    .line 882
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI$3;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    iget-object v0, v0, Lcom/tencent/mm/ui/tools/WebViewUI;->cOj:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 883
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI$3;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    sget v1, Lcom/tencent/mm/i;->aqA:I

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/tools/WebViewUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 884
    if-eqz v0, :cond_2

    .line 885
    iget-object v1, p0, Lcom/tencent/mm/ui/tools/WebViewUI$3;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    invoke-static {v1}, Lcom/tencent/mm/ui/tools/WebViewUI;->e(Lcom/tencent/mm/ui/tools/WebViewUI;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 887
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI$3;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/tools/WebViewUI;->a(Lcom/tencent/mm/ui/tools/WebViewUI;Landroid/view/View;)Landroid/view/View;

    .line 888
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI$3;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/WebViewUI;->f(Lcom/tencent/mm/ui/tools/WebViewUI;)Landroid/webkit/WebChromeClient$CustomViewCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 889
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI$3;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/WebViewUI;->f(Lcom/tencent/mm/ui/tools/WebViewUI;)Landroid/webkit/WebChromeClient$CustomViewCallback;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    goto :goto_0
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/16 v0, 0x64

    .line 812
    if-ge p2, v0, :cond_1

    .line 813
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI$3;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/tools/WebViewUI;->c(Lcom/tencent/mm/ui/tools/WebViewUI;Z)V

    .line 818
    :cond_0
    :goto_0
    return-void

    .line 815
    :cond_1
    if-lt p2, v0, :cond_0

    .line 816
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI$3;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/tools/WebViewUI;->c(Lcom/tencent/mm/ui/tools/WebViewUI;Z)V

    goto :goto_0
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 822
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 824
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI$3;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    iget-boolean v0, v0, Lcom/tencent/mm/ui/tools/WebViewUI;->hmQ:Z

    if-eqz v0, :cond_1

    .line 825
    const-string v0, "MicroMsg.WebViewUI"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "fixed title, ignore received title: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 831
    :cond_0
    :goto_0
    return-void

    .line 828
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI$3;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/WebViewUI;->d(Lcom/tencent/mm/ui/tools/WebViewUI;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 829
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI$3;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    invoke-virtual {v0, p2}, Lcom/tencent/mm/ui/tools/WebViewUI;->vT(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onSelectionStart(Landroid/webkit/WebView;)V
    .locals 0
    .parameter

    .prologue
    .line 907
    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 835
    const-string v0, "MicroMsg.WebViewUI"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onShowCustomView, sdk int = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 851
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI$3;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/WebViewUI;->e(Lcom/tencent/mm/ui/tools/WebViewUI;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 852
    invoke-interface {p2}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 864
    :goto_0
    return-void

    .line 856
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI$3;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/tools/WebViewUI;->mB(I)V

    .line 857
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI$3;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/tools/WebViewUI;->b(Lcom/tencent/mm/ui/tools/WebViewUI;Z)V

    .line 859
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI$3;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    invoke-static {v0, p1}, Lcom/tencent/mm/ui/tools/WebViewUI;->a(Lcom/tencent/mm/ui/tools/WebViewUI;Landroid/view/View;)Landroid/view/View;

    .line 860
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI$3;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    invoke-static {v0, p2}, Lcom/tencent/mm/ui/tools/WebViewUI;->a(Lcom/tencent/mm/ui/tools/WebViewUI;Landroid/webkit/WebChromeClient$CustomViewCallback;)Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 861
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI$3;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    iget-object v0, v0, Lcom/tencent/mm/ui/tools/WebViewUI;->cOj:Landroid/webkit/WebView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 862
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI$3;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    sget v1, Lcom/tencent/mm/i;->aqA:I

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/tools/WebViewUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 863
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;)V
    .locals 0
    .parameter

    .prologue
    .line 917
    invoke-direct {p0, p1}, Lcom/tencent/mm/ui/tools/WebViewUI$3;->a(Landroid/webkit/ValueCallback;)V

    .line 918
    return-void
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 922
    invoke-direct {p0, p1}, Lcom/tencent/mm/ui/tools/WebViewUI$3;->a(Landroid/webkit/ValueCallback;)V

    .line 923
    return-void
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 927
    invoke-direct {p0, p1}, Lcom/tencent/mm/ui/tools/WebViewUI$3;->a(Landroid/webkit/ValueCallback;)V

    .line 928
    return-void
.end method
