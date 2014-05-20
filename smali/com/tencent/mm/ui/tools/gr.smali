.class final Lcom/tencent/mm/ui/tools/gr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/ui/base/cc;


# instance fields
.field final synthetic hnv:Lcom/tencent/mm/ui/tools/WebViewUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/tools/WebViewUI;)V
    .locals 0
    .parameter

    .prologue
    .line 1870
    iput-object p1, p0, Lcom/tencent/mm/ui/tools/gr;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/ui/base/bx;)V
    .locals 6
    .parameter

    .prologue
    .line 1875
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/gr;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/WebViewUI;->a(Lcom/tencent/mm/ui/tools/WebViewUI;)Lcom/tencent/mm/ui/tools/gb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/ui/tools/gb;->aNQ()Lcom/tencent/mm/protocal/JsapiPermissionWrapper;

    move-result-object v2

    .line 1877
    invoke-virtual {v2}, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->awe()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1878
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/gr;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    sget v3, Lcom/tencent/mm/n;->buy:I

    invoke-virtual {v1, v3}, Lcom/tencent/mm/ui/tools/WebViewUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v3, Lcom/tencent/mm/h;->agK:I

    invoke-virtual {p1, v0, v1, v3}, Lcom/tencent/mm/ui/base/bx;->a(ILjava/lang/CharSequence;I)Landroid/view/MenuItem;

    .line 1881
    :cond_0
    invoke-virtual {v2}, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->awg()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1882
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/gr;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    sget v3, Lcom/tencent/mm/n;->buz:I

    invoke-virtual {v1, v3}, Lcom/tencent/mm/ui/tools/WebViewUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v3, Lcom/tencent/mm/h;->agF:I

    invoke-virtual {p1, v0, v1, v3}, Lcom/tencent/mm/ui/base/bx;->a(ILjava/lang/CharSequence;I)Landroid/view/MenuItem;

    .line 1885
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/gr;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/WebViewUI;->v(Lcom/tencent/mm/ui/tools/WebViewUI;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/gr;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/WebViewUI;->w(Lcom/tencent/mm/ui/tools/WebViewUI;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1886
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/gr;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    sget v3, Lcom/tencent/mm/n;->bsu:I

    invoke-virtual {v1, v3}, Lcom/tencent/mm/ui/tools/WebViewUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v3, Lcom/tencent/mm/h;->agu:I

    invoke-virtual {p1, v0, v1, v3}, Lcom/tencent/mm/ui/base/bx;->a(ILjava/lang/CharSequence;I)Landroid/view/MenuItem;

    .line 1889
    :cond_2
    invoke-virtual {v2}, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->awf()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1890
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/gr;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    sget v3, Lcom/tencent/mm/n;->buA:I

    invoke-virtual {v1, v3}, Lcom/tencent/mm/ui/tools/WebViewUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v3, Lcom/tencent/mm/h;->agM:I

    invoke-virtual {p1, v0, v1, v3}, Lcom/tencent/mm/ui/base/bx;->a(ILjava/lang/CharSequence;I)Landroid/view/MenuItem;

    .line 1893
    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/gr;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/tools/WebViewUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "srcUsername"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1894
    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1895
    const/4 v1, 0x0

    .line 1897
    :try_start_0
    iget-object v3, p0, Lcom/tencent/mm/ui/tools/gr;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    iget-object v3, v3, Lcom/tencent/mm/ui/tools/WebViewUI;->cOg:Lcom/tencent/mm/plugin/webview/stub/al;

    invoke-interface {v3, v0}, Lcom/tencent/mm/plugin/webview/stub/al;->cv(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    move v1, v0

    .line 1903
    :goto_0
    if-eqz v1, :cond_c

    .line 1904
    invoke-virtual {v2}, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->awc()Z

    move-result v0

    .line 1909
    :goto_1
    if-eqz v0, :cond_4

    .line 1910
    if-eqz v1, :cond_d

    sget v0, Lcom/tencent/mm/n;->bIj:I

    .line 1911
    :goto_2
    const/4 v1, 0x5

    iget-object v3, p0, Lcom/tencent/mm/ui/tools/gr;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    invoke-virtual {v3, v0}, Lcom/tencent/mm/ui/tools/WebViewUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v3, Lcom/tencent/mm/h;->agI:I

    invoke-virtual {p1, v1, v0, v3}, Lcom/tencent/mm/ui/base/bx;->a(ILjava/lang/CharSequence;I)Landroid/view/MenuItem;

    .line 1915
    :cond_4
    invoke-virtual {v2}, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->awb()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1916
    const/16 v0, 0xb

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/gr;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    sget v3, Lcom/tencent/mm/n;->bux:I

    invoke-virtual {v1, v3}, Lcom/tencent/mm/ui/tools/WebViewUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v3, Lcom/tencent/mm/h;->agy:I

    invoke-virtual {p1, v0, v1, v3}, Lcom/tencent/mm/ui/base/bx;->a(ILjava/lang/CharSequence;I)Landroid/view/MenuItem;

    .line 1919
    :cond_5
    invoke-virtual {v2}, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->aww()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1920
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/gr;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    sget v3, Lcom/tencent/mm/n;->bHY:I

    invoke-virtual {v1, v3}, Lcom/tencent/mm/ui/tools/WebViewUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v3, Lcom/tencent/mm/h;->agG:I

    invoke-virtual {p1, v0, v1, v3}, Lcom/tencent/mm/ui/base/bx;->a(ILjava/lang/CharSequence;I)Landroid/view/MenuItem;

    .line 1923
    :cond_6
    invoke-virtual {v2}, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->awx()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1924
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/gr;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    sget v3, Lcom/tencent/mm/n;->bId:I

    invoke-virtual {v1, v3}, Lcom/tencent/mm/ui/tools/WebViewUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v3, Lcom/tencent/mm/h;->agt:I

    invoke-virtual {p1, v0, v1, v3}, Lcom/tencent/mm/ui/base/bx;->a(ILjava/lang/CharSequence;I)Landroid/view/MenuItem;

    .line 1927
    :cond_7
    invoke-virtual {v2}, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->awp()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1928
    const/4 v0, 0x0

    .line 1930
    :try_start_1
    iget-object v1, p0, Lcom/tencent/mm/ui/tools/gr;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    iget-object v1, v1, Lcom/tencent/mm/ui/tools/WebViewUI;->cOg:Lcom/tencent/mm/plugin/webview/stub/al;

    invoke-interface {v1}, Lcom/tencent/mm/plugin/webview/stub/al;->apb()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    .line 1933
    :goto_3
    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 1934
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/gr;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    sget v3, Lcom/tencent/mm/n;->bIf:I

    invoke-virtual {v1, v3}, Lcom/tencent/mm/ui/tools/WebViewUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v3, Lcom/tencent/mm/h;->agC:I

    invoke-virtual {p1, v0, v1, v3}, Lcom/tencent/mm/ui/base/bx;->a(ILjava/lang/CharSequence;I)Landroid/view/MenuItem;

    .line 1940
    :cond_8
    :goto_4
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/gr;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/WebViewUI;->v(Lcom/tencent/mm/ui/tools/WebViewUI;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/gr;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/WebViewUI;->w(Lcom/tencent/mm/ui/tools/WebViewUI;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1941
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/gr;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    sget v3, Lcom/tencent/mm/n;->bdx:I

    invoke-virtual {v1, v3}, Lcom/tencent/mm/ui/tools/WebViewUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v3, Lcom/tencent/mm/h;->agv:I

    invoke-virtual {p1, v0, v1, v3}, Lcom/tencent/mm/ui/base/bx;->a(ILjava/lang/CharSequence;I)Landroid/view/MenuItem;

    .line 1952
    :cond_9
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/gr;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/WebViewUI;->a(Lcom/tencent/mm/ui/tools/WebViewUI;)Lcom/tencent/mm/ui/tools/gb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/ui/tools/gb;->aNR()Lcom/tencent/mm/protocal/GeneralControlWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/GeneralControlWrapper;->avG()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1953
    const/16 v0, 0xa

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/gr;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    sget v3, Lcom/tencent/mm/n;->bfY:I

    invoke-virtual {v1, v3}, Lcom/tencent/mm/ui/tools/WebViewUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v3, Lcom/tencent/mm/h;->agJ:I

    invoke-virtual {p1, v0, v1, v3}, Lcom/tencent/mm/ui/base/bx;->a(ILjava/lang/CharSequence;I)Landroid/view/MenuItem;

    .line 1958
    :cond_a
    :try_start_2
    invoke-virtual {v2}, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->awv()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/gr;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    iget-object v0, v0, Lcom/tencent/mm/ui/tools/WebViewUI;->cOg:Lcom/tencent/mm/plugin/webview/stub/al;

    invoke-interface {v0}, Lcom/tencent/mm/plugin/webview/stub/al;->xU()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1959
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/gr;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    iget-object v0, v0, Lcom/tencent/mm/ui/tools/WebViewUI;->cOg:Lcom/tencent/mm/plugin/webview/stub/al;

    invoke-interface {v0}, Lcom/tencent/mm/plugin/webview/stub/al;->xT()Ljava/util/List;

    move-result-object v1

    .line 1960
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1961
    invoke-virtual {p1, v0}, Lcom/tencent/mm/ui/base/bx;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    .line 1965
    :catch_0
    move-exception v0

    .line 1966
    const-string v1, "MicroMsg.WebViewUI"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "builder add, ex = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1968
    :cond_b
    :goto_6
    return-void

    .line 1898
    :catch_1
    move-exception v0

    .line 1899
    const-string v3, "MicroMsg.WebViewUI"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "sharebtn click fail, ex = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1906
    :cond_c
    invoke-virtual {v2}, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->awd()Z

    move-result v0

    goto/16 :goto_1

    .line 1910
    :cond_d
    sget v0, Lcom/tencent/mm/n;->bIa:I

    goto/16 :goto_2

    .line 1936
    :cond_e
    const-string v0, "MicroMsg.WebViewUI"

    const-string v1, "get mail session key is null or nil, should not show send mail menu"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1963
    :cond_f
    :try_start_3
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/gr;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/tools/WebViewUI;->a(Lcom/tencent/mm/ui/tools/WebViewUI;Ljava/util/List;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_6

    :catch_2
    move-exception v1

    goto/16 :goto_3
.end method
