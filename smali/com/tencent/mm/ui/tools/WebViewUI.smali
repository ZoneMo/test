.class public Lcom/tencent/mm/ui/tools/WebViewUI;
.super Lcom/tencent/mm/ui/MMActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# static fields
.field private static hni:Landroid/webkit/WebSettings$RenderPriority;

.field private static final hnt:Ljava/util/Set;


# instance fields
.field private bMD:I

.field private bMS:J

.field public bQI:Ljava/lang/String;

.field protected cOg:Lcom/tencent/mm/plugin/webview/stub/al;

.field protected cOj:Landroid/webkit/WebView;

.field protected cOl:Z

.field private eCL:Z

.field private eMy:Landroid/content/ServiceConnection;

.field private fes:Ljava/lang/String;

.field private feu:Lcom/tencent/mm/plugin/webview/stub/ao;

.field private fox:Landroid/view/View;

.field private gVb:Lcom/tencent/mm/ui/base/ce;

.field private handler:Landroid/os/Handler;

.field protected hmQ:Z

.field private hmR:Landroid/widget/ImageButton;

.field private hmS:Landroid/widget/ImageButton;

.field private hmT:Landroid/view/View;

.field private hmU:Z

.field private hmV:Z

.field private hmW:Z

.field private hmX:Z

.field private hmY:Z

.field private hmZ:Ljava/lang/String;

.field private hna:I

.field private hnb:Ljava/lang/String;

.field protected hnc:Lcom/tencent/mm/ui/tools/jsapi/j;

.field private hnd:Ljava/util/List;

.field private hne:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private hnf:Landroid/webkit/WebChromeClient;

.field private hng:Landroid/widget/ProgressBar;

.field private hnh:Z

.field private hnj:Lcom/tencent/mm/ui/tools/gb;

.field private hnk:Lcom/tencent/mm/ui/tools/ht;

.field protected hnl:Lcom/tencent/mm/ui/tools/hu;

.field private hnm:Z

.field private hnn:Lcom/tencent/mm/sdk/platformtools/af;

.field private hno:Ljava/util/HashMap;

.field private hnp:Lcom/tencent/mm/ui/tools/ie;

.field private hnq:Landroid/webkit/ValueCallback;

.field private final hnr:Lcom/tencent/mm/sdk/platformtools/ay;

.field private hns:Ljava/lang/String;

.field private hnu:[Ljava/lang/String;

.field private mode:I

.field private versionCode:I

.field private versionName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 211
    sget-object v0, Landroid/webkit/WebSettings$RenderPriority;->NORMAL:Landroid/webkit/WebSettings$RenderPriority;

    sput-object v0, Lcom/tencent/mm/ui/tools/WebViewUI;->hni:Landroid/webkit/WebSettings$RenderPriority;

    .line 3779
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 3781
    sput-object v0, Lcom/tencent/mm/ui/tools/WebViewUI;->hnt:Ljava/util/Set;

    const-string v1, "file:///android_asset/"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3782
    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 144
    invoke-direct {p0}, Lcom/tencent/mm/ui/MMActivity;-><init>()V

    .line 165
    iput-boolean v2, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hmQ:Z

    .line 166
    iput-boolean v4, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->cOl:Z

    .line 174
    iput-object v3, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->bQI:Ljava/lang/String;

    .line 182
    iput-boolean v4, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hmU:Z

    .line 183
    iput-boolean v4, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->eCL:Z

    .line 184
    iput v2, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->mode:I

    .line 185
    iput-boolean v2, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hmV:Z

    .line 186
    iput-boolean v2, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hmW:Z

    .line 187
    iput-boolean v4, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hmX:Z

    .line 188
    iput-boolean v2, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hmY:Z

    .line 190
    iput-object v3, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hmZ:Ljava/lang/String;

    .line 192
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->bMS:J

    .line 193
    iput v2, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->bMD:I

    .line 194
    iput v2, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hna:I

    .line 195
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hnb:Ljava/lang/String;

    .line 197
    iput-object v3, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hnc:Lcom/tencent/mm/ui/tools/jsapi/j;

    .line 201
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hnd:Ljava/util/List;

    .line 209
    iput-boolean v2, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hnh:Z

    .line 213
    iput-object v3, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hnj:Lcom/tencent/mm/ui/tools/gb;

    .line 215
    new-instance v0, Lcom/tencent/mm/ui/tools/ht;

    invoke-direct {v0, v3}, Lcom/tencent/mm/ui/tools/ht;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hnk:Lcom/tencent/mm/ui/tools/ht;

    .line 216
    new-instance v0, Lcom/tencent/mm/ui/tools/hu;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/tools/hu;-><init>(Lcom/tencent/mm/ui/tools/WebViewUI;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hnl:Lcom/tencent/mm/ui/tools/hu;

    .line 218
    iput-boolean v2, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hnm:Z

    .line 220
    new-instance v0, Lcom/tencent/mm/sdk/platformtools/af;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lcom/tencent/mm/sdk/platformtools/af;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hnn:Lcom/tencent/mm/sdk/platformtools/af;

    .line 221
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hno:Ljava/util/HashMap;

    .line 223
    iput-object v3, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->cOg:Lcom/tencent/mm/plugin/webview/stub/al;

    .line 225
    new-instance v0, Lcom/tencent/mm/ui/tools/ge;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/tools/ge;-><init>(Lcom/tencent/mm/ui/tools/WebViewUI;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->feu:Lcom/tencent/mm/plugin/webview/stub/ao;

    .line 376
    new-instance v0, Lcom/tencent/mm/ui/tools/gt;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/tools/gt;-><init>(Lcom/tencent/mm/ui/tools/WebViewUI;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->eMy:Landroid/content/ServiceConnection;

    .line 2278
    new-instance v0, Lcom/tencent/mm/sdk/platformtools/ay;

    new-instance v1, Lcom/tencent/mm/ui/tools/ha;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/tools/ha;-><init>(Lcom/tencent/mm/ui/tools/WebViewUI;)V

    invoke-direct {v0, v1, v4}, Lcom/tencent/mm/sdk/platformtools/ay;-><init>(Lcom/tencent/mm/sdk/platformtools/az;Z)V

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hnr:Lcom/tencent/mm/sdk/platformtools/ay;

    .line 2347
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hns:Ljava/lang/String;

    .line 3808
    iput-object v3, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hnu:[Ljava/lang/String;

    return-void
.end method

.method static synthetic A(Lcom/tencent/mm/ui/tools/WebViewUI;)V
    .locals 4
    .parameter

    .prologue
    .line 144
    const-string v0, "jsapi/wxjs.js"

    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/WebViewUI;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->b(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-nez v0, :cond_0

    const-string v0, "MicroMsg.WebViewUI"

    const-string v1, "loadJavaScript fail, jsContent is null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->cOj:Landroid/webkit/WebView;

    if-nez v1, :cond_1

    const-string v0, "MicroMsg.WebViewUI"

    const-string v1, "loadJavaScript, viewWV is null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->cOj:Landroid/webkit/WebView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "javascript:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const-string v0, "MicroMsg.WebViewUI"

    const-string v1, "loadJavaScript success, type = 1"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MicroMsg.WebViewUI"

    const-string v1, "jsapi init start"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hnc:Lcom/tencent/mm/ui/tools/jsapi/j;

    if-nez v0, :cond_2

    const-string v0, "MicroMsg.WebViewUI"

    const-string v1, "loadJavaScript, jspai is null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hnc:Lcom/tencent/mm/ui/tools/jsapi/j;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/tools/jsapi/j;->init()V

    const-string v0, "MicroMsg.WebViewUI"

    const-string v1, "jsapi init done"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic B(Lcom/tencent/mm/ui/tools/WebViewUI;)I
    .locals 1
    .parameter

    .prologue
    .line 144
    iget v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->mode:I

    return v0
.end method

.method static synthetic C(Lcom/tencent/mm/ui/tools/WebViewUI;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 144
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hns:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic D(Lcom/tencent/mm/ui/tools/WebViewUI;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 144
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hnd:Ljava/util/List;

    return-object v0
.end method

.method static synthetic E(Lcom/tencent/mm/ui/tools/WebViewUI;)Lcom/tencent/mm/ui/tools/ht;
    .locals 1
    .parameter

    .prologue
    .line 144
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hnk:Lcom/tencent/mm/ui/tools/ht;

    return-object v0
.end method

.method static synthetic F(Lcom/tencent/mm/ui/tools/WebViewUI;)Z
    .locals 1
    .parameter

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hmV:Z

    return v0
.end method

.method static synthetic G(Lcom/tencent/mm/ui/tools/WebViewUI;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 144
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hmZ:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic H(Lcom/tencent/mm/ui/tools/WebViewUI;)V
    .locals 0
    .parameter

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/tencent/mm/ui/tools/WebViewUI;->aNY()V

    return-void
.end method

.method static synthetic I(Lcom/tencent/mm/ui/tools/WebViewUI;)V
    .locals 0
    .parameter

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/tencent/mm/ui/tools/WebViewUI;->aOa()V

    return-void
.end method

.method static synthetic J(Lcom/tencent/mm/ui/tools/WebViewUI;)V
    .locals 3
    .parameter

    .prologue
    .line 144
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hnr:Lcom/tencent/mm/sdk/platformtools/ay;

    invoke-virtual {v0}, Lcom/tencent/mm/sdk/platformtools/ay;->azG()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hnr:Lcom/tencent/mm/sdk/platformtools/ay;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/ay;->bO(J)V

    const-string v0, "MicroMsg.WebViewUI"

    const-string v1, "tryStartTimer success"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic K(Lcom/tencent/mm/ui/tools/WebViewUI;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 144
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->fes:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic L(Lcom/tencent/mm/ui/tools/WebViewUI;)V
    .locals 1
    .parameter

    .prologue
    .line 144
    const/16 v0, 0xe9

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/tools/WebViewUI;->ok(I)V

    return-void
.end method

.method static synthetic M(Lcom/tencent/mm/ui/tools/WebViewUI;)V
    .locals 0
    .parameter

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/tencent/mm/ui/tools/WebViewUI;->aNV()V

    return-void
.end method

.method private T(Ljava/lang/String;Z)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v7, 0x0

    .line 2617
    iget-boolean v1, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hmV:Z

    if-eqz v1, :cond_0

    .line 2618
    const-string v0, "MicroMsg.WebViewUI"

    const-string v1, "edw startGetA8Key, nevergeta8key"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2619
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hnj:Lcom/tencent/mm/ui/tools/gb;

    invoke-virtual {v0, p1, v7, v7, v7}, Lcom/tencent/mm/ui/tools/gb;->a(Ljava/lang/String;Lcom/tencent/mm/protocal/JsapiPermissionWrapper;Lcom/tencent/mm/protocal/GeneralControlWrapper;Ljava/util/ArrayList;)V

    .line 2657
    :goto_0
    return-void

    .line 2623
    :cond_0
    iget-object v1, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hnj:Lcom/tencent/mm/ui/tools/gb;

    invoke-virtual {v1, p1}, Lcom/tencent/mm/ui/tools/gb;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez p2, :cond_1

    .line 2624
    const-string v0, "MicroMsg.WebViewUI"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "edw startGetA8Key no need, wvPerm already has value, url = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2628
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/WebViewUI;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "geta8key_username"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2629
    invoke-direct {p0, v1}, Lcom/tencent/mm/ui/tools/WebViewUI;->xF(Ljava/lang/String;)I

    move-result v2

    .line 2631
    iget-object v3, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hnk:Lcom/tencent/mm/ui/tools/ht;

    invoke-virtual {v3, p1}, Lcom/tencent/mm/ui/tools/ht;->xM(Ljava/lang/String;)I

    move-result v3

    .line 2633
    const-string v4, "MicroMsg.WebViewUI"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "edw startGetA8Key, url = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", scene = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", username = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", reason = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", force = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2635
    invoke-virtual {p0, v0, v0}, Lcom/tencent/mm/ui/tools/WebViewUI;->s(ZZ)V

    .line 2637
    const-string v4, "MicroMsg.WebViewUI"

    const-string v5, "edw startGetA8Key, begin, set a default permission"

    invoke-static {v4, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2638
    iget-object v4, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hnj:Lcom/tencent/mm/ui/tools/gb;

    invoke-virtual {v4, p1, v7, v7, v7}, Lcom/tencent/mm/ui/tools/gb;->a(Ljava/lang/String;Lcom/tencent/mm/protocal/JsapiPermissionWrapper;Lcom/tencent/mm/protocal/GeneralControlWrapper;Ljava/util/ArrayList;)V

    .line 2640
    iget-object v4, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hnl:Lcom/tencent/mm/ui/tools/hu;

    invoke-virtual {v4}, Lcom/tencent/mm/ui/tools/hu;->aOf()V

    .line 2642
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 2643
    const-string v5, "geta8key_data_req_url"

    invoke-virtual {v4, v5, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2644
    const-string v5, "geta8key_data_username"

    invoke-virtual {v4, v5, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2645
    const-string v1, "geta8key_data_scene"

    invoke-virtual {v4, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2646
    const-string v1, "geta8key_data_reason"

    invoke-virtual {v4, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2648
    iput-object p1, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hmZ:Ljava/lang/String;

    .line 2652
    :try_start_0
    iget-object v1, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->cOg:Lcom/tencent/mm/plugin/webview/stub/al;

    const/16 v2, 0xe9

    invoke-interface {v1, v2, v4}, Lcom/tencent/mm/plugin/webview/stub/al;->c(ILandroid/os/Bundle;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2656
    :goto_1
    const-string v1, "MicroMsg.WebViewUI"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "startGetA8Key, doScene ret = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2653
    :catch_0
    move-exception v1

    .line 2654
    const-string v2, "MicroMsg.WebViewUI"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "startGetA8Key, ex = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/tencent/mm/ui/tools/WebViewUI;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 144
    iput-object p1, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->fox:Landroid/view/View;

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/mm/ui/tools/WebViewUI;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 144
    iput-object p1, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hnq:Landroid/webkit/ValueCallback;

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/mm/ui/tools/WebViewUI;Landroid/webkit/WebChromeClient$CustomViewCallback;)Landroid/webkit/WebChromeClient$CustomViewCallback;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 144
    iput-object p1, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hne:Landroid/webkit/WebChromeClient$CustomViewCallback;

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/mm/ui/tools/WebViewUI;Landroid/widget/ProgressBar;)Landroid/widget/ProgressBar;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 144
    iput-object p1, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hng:Landroid/widget/ProgressBar;

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/mm/ui/tools/WebViewUI;Lcom/tencent/mm/ui/base/ce;)Lcom/tencent/mm/ui/base/ce;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 144
    iput-object p1, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->gVb:Lcom/tencent/mm/ui/base/ce;

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/mm/ui/tools/WebViewUI;)Lcom/tencent/mm/ui/tools/gb;
    .locals 1
    .parameter

    .prologue
    .line 144
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hnj:Lcom/tencent/mm/ui/tools/gb;

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/mm/ui/tools/WebViewUI;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lcom/tencent/mm/ui/tools/WebViewUI;->on(I)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/tools/WebViewUI;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 144
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hnj:Lcom/tencent/mm/ui/tools/gb;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/tools/gb;->aNQ()Lcom/tencent/mm/protocal/JsapiPermissionWrapper;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->fxH:I

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hnc:Lcom/tencent/mm/ui/tools/jsapi/j;

    const-string v1, "shareWeibo"

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/tools/jsapi/j;->pZ(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hnc:Lcom/tencent/mm/ui/tools/jsapi/j;

    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/mm/ui/tools/jsapi/j;->e(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/tools/WebViewUI;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 144
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget v2, Lcom/tencent/mm/n;->bue:I

    invoke-static {p0, v2}, Lcom/tencent/mm/an/a;->m(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget v2, Lcom/tencent/mm/n;->bud:I

    invoke-static {p0, v2}, Lcom/tencent/mm/an/a;->m(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, ""

    new-instance v2, Lcom/tencent/mm/ui/tools/hk;

    invoke-direct {v2, p0, p1}, Lcom/tencent/mm/ui/tools/hk;-><init>(Lcom/tencent/mm/ui/tools/WebViewUI;Ljava/lang/String;)V

    invoke-static {p0, p1, v0, v1, v2}, Lcom/tencent/mm/ui/base/h;->b(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/tencent/mm/ui/base/v;)Lcom/tencent/mm/ui/base/ar;

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/tools/WebViewUI;Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 144
    invoke-direct {p0, p1, p2}, Lcom/tencent/mm/ui/tools/WebViewUI;->T(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/tools/WebViewUI;Ljava/util/List;)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 144
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hnn:Lcom/tencent/mm/sdk/platformtools/af;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/sdk/platformtools/af;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v1, "MicroMsg.WebViewUI"

    const-string v2, "find %s icon from cache ok"

    new-array v4, v8, [Ljava/lang/Object;

    aput-object v0, v4, v7

    invoke-static {v1, v2, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hno:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "MicroMsg.WebViewUI"

    const-string v2, "find %s nick from cache ok"

    new-array v4, v8, [Ljava/lang/Object;

    aput-object v0, v4, v7

    invoke-static {v1, v2, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    const-string v1, "MicroMsg.WebViewUI"

    const-string v2, "not found %s icon from cache, try to load"

    new-array v4, v8, [Ljava/lang/Object;

    aput-object v0, v4, v7

    invoke-static {v1, v2, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    iget-object v1, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->cOg:Lcom/tencent/mm/plugin/webview/stub/al;

    invoke-interface {v1, v0}, Lcom/tencent/mm/plugin/webview/stub/al;->pW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v1}, Lcom/tencent/mm/ui/tools/en;->nb(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, "MicroMsg.WebViewUI"

    const-string v4, "load ok, and cache it"

    invoke-static {v2, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hnn:Lcom/tencent/mm/sdk/platformtools/af;

    invoke-virtual {v2, v0, v1}, Lcom/tencent/mm/sdk/platformtools/af;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "MicroMsg.WebViewUI"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getheadimg, ex = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v1, "MicroMsg.WebViewUI"

    const-string v2, "not found %s nick from cache, try to load"

    new-array v4, v8, [Ljava/lang/Object;

    aput-object v0, v4, v7

    invoke-static {v1, v2, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->cOg:Lcom/tencent/mm/plugin/webview/stub/al;

    invoke-interface {v1, v0}, Lcom/tencent/mm/plugin/webview/stub/al;->cu(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    :try_start_2
    const-string v2, "MicroMsg.WebViewUI"

    const-string v4, "load nick ok"

    invoke-static {v2, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    iget-object v2, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hno:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :catch_1
    move-exception v1

    move-object v9, v1

    move-object v1, v2

    move-object v2, v9

    :goto_3
    const-string v4, "MicroMsg.WebViewUI"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "onAttach, ex = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catch_2
    move-exception v2

    goto :goto_3
.end method

.method static synthetic a(Lcom/tencent/mm/ui/tools/WebViewUI;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lcom/tencent/mm/ui/tools/WebViewUI;->eu(Z)V

    return-void
.end method

.method private aNV()V
    .locals 4

    .prologue
    .line 614
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 615
    const-string v1, "scene_end_type"

    const/16 v2, 0xe9

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 616
    const-string v1, "scene_end_listener_hash_code"

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 617
    iget-object v1, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->cOg:Lcom/tencent/mm/plugin/webview/stub/al;

    const/4 v2, 0x6

    invoke-interface {v1, v2, v0}, Lcom/tencent/mm/plugin/webview/stub/al;->b(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 621
    :goto_0
    return-void

    .line 618
    :catch_0
    move-exception v0

    .line 619
    const-string v1, "MicroMsg.WebViewUI"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "removeSceneEnd, ex = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private aNW()V
    .locals 5

    .prologue
    .line 706
    :try_start_0
    sget v0, Lcom/tencent/mm/i;->aqA:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/tools/WebViewUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 707
    if-eqz v0, :cond_0

    .line 708
    iget-object v1, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->cOj:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 710
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->cOj:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 711
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->cOj:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->removeAllViews()V

    .line 712
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->cOj:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearView()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 718
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->cOj:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 722
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->cOj:Landroid/webkit/WebView;

    .line 723
    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/WebViewUI;->finish()V

    .line 724
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 725
    return-void

    .line 713
    :catch_0
    move-exception v0

    .line 714
    const-string v1, "MicroMsg.WebViewUI"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "forceQuit, ex = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 719
    :catch_1
    move-exception v0

    .line 720
    const-string v1, "MicroMsg.WebViewUI"

    const-string v2, "forceQuit, viewWV destroy, ex = %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private aNX()Z
    .locals 2

    .prologue
    .line 1488
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->cOg:Lcom/tencent/mm/plugin/webview/stub/al;

    const-string v1, "favorite"

    invoke-interface {v0, v1}, Lcom/tencent/mm/plugin/webview/stub/al;->qc(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1490
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private aNY()V
    .locals 2

    .prologue
    .line 2302
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hnr:Lcom/tencent/mm/sdk/platformtools/ay;

    invoke-virtual {v0}, Lcom/tencent/mm/sdk/platformtools/ay;->azG()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2303
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hnr:Lcom/tencent/mm/sdk/platformtools/ay;

    invoke-virtual {v0}, Lcom/tencent/mm/sdk/platformtools/ay;->azn()V

    .line 2304
    const-string v0, "MicroMsg.WebViewUI"

    const-string v1, "tryStopTimer success"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2306
    :cond_0
    return-void
.end method

.method private aOa()V
    .locals 10
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3812
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-ge v0, v3, :cond_1

    move v0, v2

    :goto_0
    if-eqz v0, :cond_2

    .line 3813
    const-string v0, "MicroMsg.WebViewUI"

    const-string v1, "removeConfigJsInterface, api level too low"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3847
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 3812
    goto :goto_0

    .line 3818
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->cOj:Landroid/webkit/WebView;

    const-string v3, "searchBoxJavaBridge_"

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3823
    :goto_2
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hnu:[Ljava/lang/String;

    if-nez v0, :cond_3

    .line 3825
    :try_start_1
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->cOg:Lcom/tencent/mm/plugin/webview/stub/al;

    invoke-interface {v0}, Lcom/tencent/mm/plugin/webview/stub/al;->HB()Z

    move-result v0

    .line 3826
    if-eqz v0, :cond_3

    .line 3827
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->cOg:Lcom/tencent/mm/plugin/webview/stub/al;

    invoke-interface {v0}, Lcom/tencent/mm/plugin/webview/stub/al;->qu()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hnu:[Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 3833
    :cond_3
    :goto_3
    const-string v3, "MicroMsg.WebViewUI"

    const-string v4, "removeConfigJsInterface, to remove list size = %d"

    new-array v5, v2, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hnu:[Ljava/lang/String;

    if-nez v0, :cond_4

    move v0, v1

    :goto_4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v1

    invoke-static {v3, v4, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3835
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hnu:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hnu:[Ljava/lang/String;

    array-length v0, v0

    if-eqz v0, :cond_0

    .line 3840
    :try_start_2
    iget-object v3, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hnu:[Ljava/lang/String;

    array-length v4, v3

    move v0, v1

    :goto_5
    if-ge v0, v4, :cond_0

    aget-object v5, v3, v0

    .line 3841
    const-string v6, "MicroMsg.WebViewUI"

    const-string v7, "removeConfigJsInterface, js interface name = %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v5, v8, v9

    invoke-static {v6, v7, v8}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3842
    iget-object v6, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->cOj:Landroid/webkit/WebView;

    invoke-virtual {v6, v5}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 3840
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 3819
    :catch_0
    move-exception v0

    .line 3820
    const-string v3, "MicroMsg.WebViewUI"

    const-string v4, "removeConfigJsInterface, ex = %s"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    invoke-static {v3, v4, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 3829
    :catch_1
    move-exception v0

    .line 3830
    const-string v3, "MicroMsg.WebViewUI"

    const-string v4, "getRemoveJsInterfaceList, ex = %s"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    invoke-static {v3, v4, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 3833
    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hnu:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_4

    .line 3844
    :catch_2
    move-exception v0

    .line 3845
    const-string v3, "MicroMsg.WebViewUI"

    const-string v4, "removeConfigJsInterface, ex = %s"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    invoke-static {v3, v4, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1
.end method

.method static synthetic b(Lcom/tencent/mm/ui/tools/WebViewUI;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 144
    iput p1, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->mode:I

    return p1
.end method

.method static synthetic b(Lcom/tencent/mm/ui/tools/WebViewUI;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 144
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic b(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic b(Lcom/tencent/mm/ui/tools/WebViewUI;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 144
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hnc:Lcom/tencent/mm/ui/tools/jsapi/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hnc:Lcom/tencent/mm/ui/tools/jsapi/j;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/tools/jsapi/j;->aoZ()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x2b

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/tencent/mm/ui/tools/WebViewUI;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lcom/tencent/mm/ui/tools/WebViewUI;->ev(Z)V

    return-void
.end method

.method static synthetic c(Lcom/tencent/mm/ui/tools/WebViewUI;)Lcom/tencent/mm/plugin/webview/stub/ao;
    .locals 1
    .parameter

    .prologue
    .line 144
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->feu:Lcom/tencent/mm/plugin/webview/stub/ao;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/mm/ui/tools/WebViewUI;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lcom/tencent/mm/ui/tools/WebViewUI;->om(I)V

    return-void
.end method

.method static synthetic c(Lcom/tencent/mm/ui/tools/WebViewUI;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 144
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hnj:Lcom/tencent/mm/ui/tools/gb;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/tools/gb;->aNQ()Lcom/tencent/mm/protocal/JsapiPermissionWrapper;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->fxF:I

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hnc:Lcom/tencent/mm/ui/tools/jsapi/j;

    const-string v1, "profile"

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/tools/jsapi/j;->pZ(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hnc:Lcom/tencent/mm/ui/tools/jsapi/j;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/ui/tools/jsapi/j;->xQ(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/tencent/mm/ui/tools/WebViewUI;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lcom/tencent/mm/ui/tools/WebViewUI;->ew(Z)V

    return-void
.end method

.method static synthetic d(Lcom/tencent/mm/ui/tools/WebViewUI;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 144
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "update_type_key"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :try_start_0
    iget-object v1, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->cOg:Lcom/tencent/mm/plugin/webview/stub/al;

    const/4 v2, 0x1

    invoke-interface {v1, v2, v0}, Lcom/tencent/mm/plugin/webview/stub/al;->b(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "MicroMsg.WebViewUI"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "doUpdate fail, ex = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/tencent/mm/ui/tools/WebViewUI;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 144
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hnj:Lcom/tencent/mm/ui/tools/gb;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/tools/gb;->aNQ()Lcom/tencent/mm/protocal/JsapiPermissionWrapper;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->fxG:I

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hnc:Lcom/tencent/mm/ui/tools/jsapi/j;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/ui/tools/jsapi/j;->xO(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic d(Lcom/tencent/mm/ui/tools/WebViewUI;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lcom/tencent/mm/ui/tools/WebViewUI;->ex(Z)V

    return-void
.end method

.method static synthetic d(Lcom/tencent/mm/ui/tools/WebViewUI;)Z
    .locals 1
    .parameter

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->eCL:Z

    return v0
.end method

.method static synthetic e(Lcom/tencent/mm/ui/tools/WebViewUI;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 144
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->fox:Landroid/view/View;

    return-object v0
.end method

.method static synthetic e(Lcom/tencent/mm/ui/tools/WebViewUI;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lcom/tencent/mm/ui/tools/WebViewUI;->xH(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private eu(Z)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1983
    invoke-virtual {p0, p1}, Lcom/tencent/mm/ui/tools/WebViewUI;->dh(Z)V

    .line 1985
    if-nez p1, :cond_0

    .line 1986
    const-string v0, "MicroMsg.WebViewUI"

    const-string v1, "initShareBtn fail, share btn is invisible"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2015
    :goto_0
    return-void

    .line 1990
    :cond_0
    iget v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->mode:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1992
    :pswitch_0
    sget v0, Lcom/tencent/mm/h;->afQ:I

    new-instance v1, Lcom/tencent/mm/ui/tools/gs;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/tools/gs;-><init>(Lcom/tencent/mm/ui/tools/WebViewUI;)V

    invoke-virtual {p0, v2, v0, v1}, Lcom/tencent/mm/ui/tools/WebViewUI;->a(IILandroid/view/MenuItem$OnMenuItemClickListener;)V

    goto :goto_0

    .line 2003
    :pswitch_1
    sget v0, Lcom/tencent/mm/h;->afQ:I

    new-instance v1, Lcom/tencent/mm/ui/tools/gu;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/tools/gu;-><init>(Lcom/tencent/mm/ui/tools/WebViewUI;)V

    invoke-virtual {p0, v2, v0, v1}, Lcom/tencent/mm/ui/tools/WebViewUI;->a(IILandroid/view/MenuItem$OnMenuItemClickListener;)V

    goto :goto_0

    .line 1990
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private ev(Z)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2221
    sget v0, Lcom/tencent/mm/i;->aQZ:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/tools/WebViewUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2268
    :goto_0
    return-void

    .line 2225
    :cond_0
    sget v0, Lcom/tencent/mm/i;->aQZ:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/tools/WebViewUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    .line 2226
    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    if-eq v0, p1, :cond_1

    .line 2227
    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/WebViewUI;->aal()Landroid/app/Activity;

    move-result-object v3

    if-eqz p1, :cond_3

    sget v0, Lcom/tencent/mm/b;->Yv:I

    :goto_2
    invoke-static {v3, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 2228
    sget v3, Lcom/tencent/mm/i;->aQZ:I

    invoke-virtual {p0, v3}, Lcom/tencent/mm/ui/tools/WebViewUI;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2231
    :cond_1
    if-nez p1, :cond_4

    .line 2232
    sget v0, Lcom/tencent/mm/i;->aQZ:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/tools/WebViewUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 2226
    goto :goto_1

    .line 2227
    :cond_3
    sget v0, Lcom/tencent/mm/b;->Yw:I

    goto :goto_2

    .line 2236
    :cond_4
    sget v0, Lcom/tencent/mm/i;->aQZ:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/tools/WebViewUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2237
    sget v0, Lcom/tencent/mm/i;->aQY:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/tools/WebViewUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hmR:Landroid/widget/ImageButton;

    .line 2238
    iget-object v3, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hmR:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->cOj:Landroid/webkit/WebView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->cOj:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 2239
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hmR:Landroid/widget/ImageButton;

    new-instance v1, Lcom/tencent/mm/ui/tools/gy;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/tools/gy;-><init>(Lcom/tencent/mm/ui/tools/WebViewUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2258
    sget v0, Lcom/tencent/mm/i;->aRa:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/tools/WebViewUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hmS:Landroid/widget/ImageButton;

    .line 2259
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hmS:Landroid/widget/ImageButton;

    new-instance v1, Lcom/tencent/mm/ui/tools/gz;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/tools/gz;-><init>(Lcom/tencent/mm/ui/tools/WebViewUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_5
    move v0, v2

    .line 2238
    goto :goto_3
.end method

.method private ew(Z)V
    .locals 1
    .parameter

    .prologue
    .line 2271
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hmS:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 2273
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hmS:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 2275
    :cond_0
    return-void
.end method

.method private ex(Z)V
    .locals 4
    .parameter

    .prologue
    .line 2906
    if-eqz p1, :cond_2

    .line 2907
    sget v0, Lcom/tencent/mm/n;->bHI:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/tools/WebViewUI;->mC(I)V

    .line 2911
    iget-boolean v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hmY:Z

    if-nez v0, :cond_1

    .line 2912
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->azt()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "enter_web_pay_over_time"

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->azt()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "enter_web_pay_over_time"

    add-int/lit8 v3, v0, -0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 2913
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hmY:Z

    .line 2921
    :cond_1
    :goto_1
    return-void

    .line 2912
    :pswitch_0
    sget v0, Lcom/tencent/mm/k;->bbW:I

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/tools/WebViewUI;->ol(I)V

    goto :goto_0

    :pswitch_1
    sget v0, Lcom/tencent/mm/k;->bbV:I

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/tools/WebViewUI;->ol(I)V

    goto :goto_0

    .line 2916
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/tools/WebViewUI;->vU(Ljava/lang/String;)V

    goto :goto_1

    .line 2912
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic f(Lcom/tencent/mm/ui/tools/WebViewUI;)Landroid/webkit/WebChromeClient$CustomViewCallback;
    .locals 1
    .parameter

    .prologue
    .line 144
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hne:Landroid/webkit/WebChromeClient$CustomViewCallback;

    return-object v0
.end method

.method static synthetic f(Lcom/tencent/mm/ui/tools/WebViewUI;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 144
    iput-object p1, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hns:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic g(Lcom/tencent/mm/ui/tools/WebViewUI;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter

    .prologue
    .line 144
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hng:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic g(Lcom/tencent/mm/ui/tools/WebViewUI;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 144
    iput-object p1, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->fes:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic h(Lcom/tencent/mm/ui/tools/WebViewUI;Ljava/lang/String;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lcom/tencent/mm/ui/tools/WebViewUI;->xF(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic h(Lcom/tencent/mm/ui/tools/WebViewUI;)Z
    .locals 1
    .parameter

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hnm:Z

    return v0
.end method

.method static synthetic i(Lcom/tencent/mm/ui/tools/WebViewUI;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 144
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hmT:Landroid/view/View;

    return-object v0
.end method

.method static synthetic j(Lcom/tencent/mm/ui/tools/WebViewUI;)V
    .locals 0
    .parameter

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/tencent/mm/ui/tools/WebViewUI;->aNW()V

    return-void
.end method

.method static synthetic k(Lcom/tencent/mm/ui/tools/WebViewUI;)Z
    .locals 1
    .parameter

    .prologue
    .line 144
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hmW:Z

    return v0
.end method

.method static synthetic l(Lcom/tencent/mm/ui/tools/WebViewUI;)Lcom/tencent/mm/sdk/platformtools/af;
    .locals 1
    .parameter

    .prologue
    .line 144
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hnn:Lcom/tencent/mm/sdk/platformtools/af;

    return-object v0
.end method

.method static synthetic m(Lcom/tencent/mm/ui/tools/WebViewUI;)Ljava/util/HashMap;
    .locals 1
    .parameter

    .prologue
    .line 144
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hno:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic n(Lcom/tencent/mm/ui/tools/WebViewUI;)V
    .locals 2
    .parameter

    .prologue
    .line 144
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hnj:Lcom/tencent/mm/ui/tools/gb;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/tools/gb;->aNQ()Lcom/tencent/mm/protocal/JsapiPermissionWrapper;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->fxG:I

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hnc:Lcom/tencent/mm/ui/tools/jsapi/j;

    const-string v1, "sendAppMessage"

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/tools/jsapi/j;->pZ(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hnc:Lcom/tencent/mm/ui/tools/jsapi/j;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/tools/jsapi/j;->aOx()V

    return-void
.end method

.method static synthetic o(Lcom/tencent/mm/ui/tools/WebViewUI;)V
    .locals 2
    .parameter

    .prologue
    .line 144
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hnj:Lcom/tencent/mm/ui/tools/gb;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/tools/gb;->aNQ()Lcom/tencent/mm/protocal/JsapiPermissionWrapper;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->fxI:I

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hnc:Lcom/tencent/mm/ui/tools/jsapi/j;

    const-string v1, "shareTimeline"

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/tools/jsapi/j;->pZ(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hnc:Lcom/tencent/mm/ui/tools/jsapi/j;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/tools/jsapi/j;->aOw()V

    return-void
.end method

.method private ok(I)V
    .locals 4
    .parameter

    .prologue
    .line 603
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 604
    const-string v1, "scene_end_type"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 605
    const-string v1, "scene_end_listener_hash_code"

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 606
    iget-object v1, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->cOg:Lcom/tencent/mm/plugin/webview/stub/al;

    const/4 v2, 0x5

    invoke-interface {v1, v2, v0}, Lcom/tencent/mm/plugin/webview/stub/al;->b(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 610
    :goto_0
    return-void

    .line 607
    :catch_0
    move-exception v0

    .line 608
    const-string v1, "MicroMsg.WebViewUI"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "addSceneEnd, ex = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private ol(I)V
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 2945
    new-instance v2, Lcom/tencent/mm/ui/base/ar;

    sget v0, Lcom/tencent/mm/o;->bIO:I

    invoke-direct {v2, p0, v0}, Lcom/tencent/mm/ui/base/ar;-><init>(Landroid/content/Context;I)V

    .line 2946
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/tools/WebViewUI;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 2947
    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 2948
    sget v1, Lcom/tencent/mm/k;->bbV:I

    if-ne p1, v1, :cond_0

    .line 2949
    sget v1, Lcom/tencent/mm/i;->avT:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 2961
    :try_start_0
    iget-object v3, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->cOg:Lcom/tencent/mm/plugin/webview/stub/al;

    iget-object v4, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->cOg:Lcom/tencent/mm/plugin/webview/stub/al;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Lcom/tencent/mm/plugin/webview/stub/al;->q(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/tencent/mm/plugin/webview/stub/al;->pW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2962
    invoke-static {v3}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2963
    invoke-static {v3}, Lcom/tencent/mm/ui/tools/en;->nb(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    const/4 v4, 0x0

    const/high16 v5, 0x3f80

    invoke-static {v3, v4, v5}, Lcom/tencent/mm/sdk/platformtools/h;->a(Landroid/graphics/Bitmap;ZF)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 2964
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2971
    :cond_0
    :goto_0
    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setMinimumWidth(I)V

    .line 2973
    sget v1, Lcom/tencent/mm/i;->aBn:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 2974
    invoke-virtual {v2}, Lcom/tencent/mm/ui/base/ar;->getWindow()Landroid/view/Window;

    .line 2975
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/tencent/mm/ui/base/ar;->setCanceledOnTouchOutside(Z)V

    .line 2976
    new-instance v3, Lcom/tencent/mm/ui/tools/hb;

    invoke-direct {v3, p0}, Lcom/tencent/mm/ui/tools/hb;-><init>(Lcom/tencent/mm/ui/tools/WebViewUI;)V

    invoke-virtual {v2, v3}, Lcom/tencent/mm/ui/base/ar;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2982
    new-instance v3, Lcom/tencent/mm/ui/tools/hc;

    invoke-direct {v3, p0}, Lcom/tencent/mm/ui/tools/hc;-><init>(Lcom/tencent/mm/ui/tools/WebViewUI;)V

    invoke-virtual {v2, v3}, Lcom/tencent/mm/ui/base/ar;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 2989
    new-instance v3, Lcom/tencent/mm/ui/tools/hd;

    invoke-direct {v3, p0, v2}, Lcom/tencent/mm/ui/tools/hd;-><init>(Lcom/tencent/mm/ui/tools/WebViewUI;Lcom/tencent/mm/ui/base/ar;)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2996
    invoke-virtual {v2, v0}, Lcom/tencent/mm/ui/base/ar;->setContentView(Landroid/view/View;)V

    .line 2997
    invoke-virtual {v2}, Lcom/tencent/mm/ui/base/ar;->show()V

    .line 2998
    return-void

    .line 2966
    :catch_0
    move-exception v1

    .line 2967
    const-string v3, "MicroMsg.WebViewUI"

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private om(I)V
    .locals 1
    .parameter

    .prologue
    .line 3206
    if-lez p1, :cond_0

    const/4 v0, 0x4

    if-le p1, v0, :cond_1

    .line 3207
    :cond_0
    const/4 p1, 0x2

    .line 3210
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hnc:Lcom/tencent/mm/ui/tools/jsapi/j;

    if-eqz v0, :cond_2

    .line 3211
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hnc:Lcom/tencent/mm/ui/tools/jsapi/j;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/ui/tools/jsapi/j;->oA(I)V

    .line 3213
    :cond_2
    return-void
.end method

.method private on(I)V
    .locals 3
    .parameter

    .prologue
    .line 3217
    const-string v0, "MicroMsg.WebViewUI"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "localSetFontSize, fontSize = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3218
    packed-switch p1, :pswitch_data_0

    .line 3229
    :pswitch_0
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->cOj:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebSettings$TextSize;->NORMAL:Landroid/webkit/WebSettings$TextSize;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setTextSize(Landroid/webkit/WebSettings$TextSize;)V

    .line 3232
    :goto_0
    return-void

    .line 3220
    :pswitch_1
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->cOj:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebSettings$TextSize;->SMALLER:Landroid/webkit/WebSettings$TextSize;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setTextSize(Landroid/webkit/WebSettings$TextSize;)V

    goto :goto_0

    .line 3223
    :pswitch_2
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->cOj:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebSettings$TextSize;->LARGER:Landroid/webkit/WebSettings$TextSize;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setTextSize(Landroid/webkit/WebSettings$TextSize;)V

    goto :goto_0

    .line 3226
    :pswitch_3
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->cOj:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebSettings$TextSize;->LARGEST:Landroid/webkit/WebSettings$TextSize;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setTextSize(Landroid/webkit/WebSettings$TextSize;)V

    goto :goto_0

    .line 3218
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic p(Lcom/tencent/mm/ui/tools/WebViewUI;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 144
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "msg_id"

    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/WebViewUI;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "msg_id"

    const-wide/high16 v4, -0x8000

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "sns_local_id"

    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/WebViewUI;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "sns_local_id"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "news_svr_id"

    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/WebViewUI;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "news_svr_id"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "news_svr_tweetid"

    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/WebViewUI;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "news_svr_tweetid"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "message_index"

    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/WebViewUI;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "message_index"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "rawUrl"

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->bQI:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->cOg:Lcom/tencent/mm/plugin/webview/stub/al;

    invoke-interface {v1, v0}, Lcom/tencent/mm/plugin/webview/stub/al;->o(Landroid/os/Bundle;)Lcom/tencent/mm/plugin/webview/stub/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/mm/plugin/webview/stub/a;->aoS()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hnj:Lcom/tencent/mm/ui/tools/gb;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/tools/gb;->aNQ()Lcom/tencent/mm/protocal/JsapiPermissionWrapper;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->fxG:I

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hnc:Lcom/tencent/mm/ui/tools/jsapi/j;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/tools/jsapi/j;->aOy()V

    const-string v0, "MicroMsg.WebViewUI"

    const-string v1, "on favorite simple url"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-interface {v0}, Lcom/tencent/mm/plugin/webview/stub/a;->getResult()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Lcom/tencent/mm/plugin/webview/stub/a;->getRet()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/WebViewUI;->aal()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/tencent/mm/n;->bli:I

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/tools/WebViewUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/base/h;->an(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MicroMsg.WebViewUI"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "edw, favoriteUrl fail, ex = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/WebViewUI;->aal()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/tencent/mm/n;->bkN:I

    sget v2, Lcom/tencent/mm/n;->bkF:I

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/ui/base/h;->c(Landroid/content/Context;II)Lcom/tencent/mm/ui/base/x;

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Lcom/tencent/mm/plugin/webview/stub/a;->getType()I

    move-result v0

    if-nez v0, :cond_3

    sget v0, Lcom/tencent/mm/n;->bkK:I

    :cond_3
    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/WebViewUI;->aal()Landroid/app/Activity;

    move-result-object v1

    sget v2, Lcom/tencent/mm/n;->bkF:I

    invoke-static {v1, v0, v2}, Lcom/tencent/mm/ui/base/h;->c(Landroid/content/Context;II)Lcom/tencent/mm/ui/base/x;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method static synthetic q(Lcom/tencent/mm/ui/tools/WebViewUI;)V
    .locals 2
    .parameter

    .prologue
    .line 144
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->cOj:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const-string v0, "MicroMsg.WebViewUI"

    const-string v1, "copyLink fail, url is null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->cOg:Lcom/tencent/mm/plugin/webview/stub/al;

    invoke-interface {v1, v0}, Lcom/tencent/mm/plugin/webview/stub/al;->pT(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v1, v0

    :goto_1
    const-string v0, "clipboard"

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/tools/WebViewUI;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    invoke-virtual {v0, v1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/tencent/mm/n;->bHZ:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/tools/WebViewUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v1, v0

    goto :goto_1
.end method

.method static synthetic r(Lcom/tencent/mm/ui/tools/WebViewUI;)V
    .locals 6
    .parameter

    .prologue
    .line 144
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->cOj:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const-string v0, "MicroMsg.WebViewUI"

    const-string v1, "open in browser fail, url is null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->cOg:Lcom/tencent/mm/plugin/webview/stub/al;

    invoke-interface {v1, v0}, Lcom/tencent/mm/plugin/webview/stub/al;->pT(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/WebViewUI;->aal()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/WebViewUI;->aal()Landroid/app/Activity;

    move-result-object v4

    const-class v5, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v4, "com.tencent.mm.extra.INTENT"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "com.tencent.mm.extra.URL"

    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v2, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method static synthetic s(Lcom/tencent/mm/ui/tools/WebViewUI;)V
    .locals 2
    .parameter

    .prologue
    .line 144
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hnj:Lcom/tencent/mm/ui/tools/gb;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/tools/gb;->aNQ()Lcom/tencent/mm/protocal/JsapiPermissionWrapper;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->fxJ:I

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hnc:Lcom/tencent/mm/ui/tools/jsapi/j;

    const-string v1, "sendEmail"

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/tools/jsapi/j;->pZ(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hnc:Lcom/tencent/mm/ui/tools/jsapi/j;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/tools/jsapi/j;->aOz()V

    return-void
.end method

.method static synthetic t(Lcom/tencent/mm/ui/tools/WebViewUI;)V
    .locals 6
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 144
    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/WebViewUI;->aal()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/WebViewUI;->aal()Landroid/app/Activity;

    move-result-object v1

    sget v3, Lcom/tencent/mm/n;->bdy:I

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/WebViewUI;->aal()Landroid/app/Activity;

    move-result-object v3

    sget v4, Lcom/tencent/mm/n;->bdx:I

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/tencent/mm/ui/tools/gx;

    invoke-direct {v5, p0}, Lcom/tencent/mm/ui/tools/gx;-><init>(Lcom/tencent/mm/ui/tools/WebViewUI;)V

    move-object v3, v2

    invoke-static/range {v0 .. v5}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/tencent/mm/ui/base/w;)Lcom/tencent/mm/ui/base/ar;

    return-void
.end method

.method static synthetic u(Lcom/tencent/mm/ui/tools/WebViewUI;)V
    .locals 5
    .parameter

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/WebViewUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "geta8key_username"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/tools/WebViewUI;->xF(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "k_expose_url"

    iget-object v4, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->bQI:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "k_username"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "k_expose_web_scene"

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "k_expose_scene"

    const/16 v1, 0x22

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->cOg:Lcom/tencent/mm/plugin/webview/stub/al;

    const/16 v1, 0x9

    invoke-interface {v0, v1, v2}, Lcom/tencent/mm/plugin/webview/stub/al;->b(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "MicroMsg.WebViewUI"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "AddFriendHandler, ex = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic v(Lcom/tencent/mm/ui/tools/WebViewUI;)Z
    .locals 1
    .parameter

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hmX:Z

    return v0
.end method

.method static synthetic w(Lcom/tencent/mm/ui/tools/WebViewUI;)Z
    .locals 1
    .parameter

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/tencent/mm/ui/tools/WebViewUI;->aNX()Z

    move-result v0

    return v0
.end method

.method static synthetic x(Lcom/tencent/mm/ui/tools/WebViewUI;)V
    .locals 2
    .parameter

    .prologue
    .line 144
    new-instance v0, Lcom/tencent/mm/ui/tools/dl;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/WebViewUI;->aal()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/mm/ui/tools/dl;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/tencent/mm/ui/tools/gk;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/tools/gk;-><init>(Lcom/tencent/mm/ui/tools/WebViewUI;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/tools/dl;->a(Lcom/tencent/mm/ui/base/ca;)V

    new-instance v1, Lcom/tencent/mm/ui/tools/gl;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/tools/gl;-><init>(Lcom/tencent/mm/ui/tools/WebViewUI;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/tools/dl;->a(Lcom/tencent/mm/ui/base/cb;)V

    new-instance v1, Lcom/tencent/mm/ui/tools/gm;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/tools/gm;-><init>(Lcom/tencent/mm/ui/tools/WebViewUI;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/tools/dl;->b(Lcom/tencent/mm/ui/base/cd;)V

    new-instance v1, Lcom/tencent/mm/ui/tools/gn;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/tools/gn;-><init>(Lcom/tencent/mm/ui/tools/WebViewUI;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/tools/dl;->a(Lcom/tencent/mm/ui/base/cc;)V

    invoke-virtual {v0}, Lcom/tencent/mm/ui/tools/dl;->cB()Z

    return-void
.end method

.method private xB(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 413
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->cOj:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 415
    :try_start_0
    const-class v0, Landroid/webkit/WebView;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v0, p1, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 416
    iget-object v1, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->cOj:Landroid/webkit/WebView;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 427
    :cond_0
    :goto_0
    return-void

    .line 417
    :catch_0
    move-exception v0

    .line 418
    const-string v1, "MicroMsg.WebViewUI"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "No such method: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 419
    :catch_1
    move-exception v0

    .line 420
    const-string v1, "MicroMsg.WebViewUI"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Illegal Access: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 421
    :catch_2
    move-exception v0

    .line 422
    const-string v1, "MicroMsg.WebViewUI"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invocation Target Exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 423
    :catch_3
    move-exception v0

    .line 424
    const-string v1, "MicroMsg.WebViewUI"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private xC(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 477
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hnc:Lcom/tencent/mm/ui/tools/jsapi/j;

    if-eqz v0, :cond_0

    .line 478
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hnc:Lcom/tencent/mm/ui/tools/jsapi/j;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/ui/tools/jsapi/j;->xP(Ljava/lang/String;)V

    .line 480
    :cond_0
    return-void
.end method

.method private xD(Ljava/lang/String;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 1254
    .line 1256
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->cOg:Lcom/tencent/mm/plugin/webview/stub/al;

    invoke-interface {v0}, Lcom/tencent/mm/plugin/webview/stub/al;->Dj()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1261
    :goto_0
    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1262
    const-string v0, "MicroMsg.WebViewUI"

    const-string v1, "dealLoadUrlFromCache fail, toolsPath is empty"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 1304
    :goto_1
    return v0

    .line 1257
    :catch_0
    move-exception v0

    .line 1258
    const-string v4, "MicroMsg.WebViewUI"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "dealLoadUrlFromCache fail, ex = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    .line 1266
    :cond_0
    iget-object v4, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->cOj:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    const-wide/32 v5, 0x1400000

    invoke-virtual {v4, v5, v6}, Landroid/webkit/WebSettings;->setAppCacheMaxSize(J)V

    .line 1267
    iget-object v4, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->cOj:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    .line 1268
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->cOj:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 1269
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->cOj:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 1270
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->cOj:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 1272
    invoke-static {p1}, Lcom/tencent/mm/ui/tools/ht;->xN(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1273
    const-string v0, "MicroMsg.WebViewUI"

    const-string v1, "dealLocalUrlFromCache, contains wechat redirect, no means to loadfromcache"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 1274
    goto :goto_1

    .line 1277
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->cOg:Lcom/tencent/mm/plugin/webview/stub/al;

    invoke-static {p1, v0}, Lcom/tencent/mm/ui/tools/fz;->c(Ljava/lang/String;Lcom/tencent/mm/plugin/webview/stub/al;)Z

    move-result v0

    .line 1278
    const-string v4, "MicroMsg.WebViewUI"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "dealLocalUrlFromCache, url = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", hasCache = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1280
    if-eqz v0, :cond_9

    .line 1281
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1282
    if-nez v0, :cond_2

    .line 1283
    const-string v0, "MicroMsg.WebViewUI"

    const-string v1, "dealLoadUrlFromCache fail, uri is null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 1284
    goto/16 :goto_1

    .line 1287
    :cond_2
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 1288
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "http://"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1291
    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->cOg:Lcom/tencent/mm/plugin/webview/stub/al;

    invoke-static {p1, v0}, Lcom/tencent/mm/ui/tools/fz;->b(Ljava/lang/String;Lcom/tencent/mm/plugin/webview/stub/al;)Lcom/tencent/mm/ui/tools/ga;

    move-result-object v4

    .line 1292
    const-string v2, "MicroMsg.WebViewUI"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v0, "dealLoadUrlFromCache, cache jsPerm = "

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v4, :cond_4

    move-object v0, v1

    :goto_2
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", cache genCtrl = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez v4, :cond_5

    move-object v0, v1

    :goto_3
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1293
    iget-object v5, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hnj:Lcom/tencent/mm/ui/tools/gb;

    iget-object v6, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->bQI:Ljava/lang/String;

    if-nez v4, :cond_6

    move-object v2, v1

    :goto_4
    if-nez v4, :cond_7

    move-object v0, v1

    :goto_5
    invoke-virtual {v5, v6, v2, v0, v1}, Lcom/tencent/mm/ui/tools/gb;->a(Ljava/lang/String;Lcom/tencent/mm/protocal/JsapiPermissionWrapper;Lcom/tencent/mm/protocal/GeneralControlWrapper;Ljava/util/ArrayList;)V

    .line 1295
    invoke-static {p1}, Lcom/tencent/mm/ui/tools/WebViewUI;->xI(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1296
    const-string v0, "MicroMsg.WebViewUI"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "dealLoadUrlFromCache, canLoadUrl fail, url = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->aM(Ljava/lang/String;Ljava/lang/String;)V

    .line 1297
    invoke-direct {p0}, Lcom/tencent/mm/ui/tools/WebViewUI;->aNW()V

    move v0, v3

    .line 1298
    goto/16 :goto_1

    .line 1292
    :cond_4
    iget-object v0, v4, Lcom/tencent/mm/ui/tools/ga;->hmE:Lcom/tencent/mm/protocal/JsapiPermissionWrapper;

    goto :goto_2

    :cond_5
    iget-object v0, v4, Lcom/tencent/mm/ui/tools/ga;->hmF:Lcom/tencent/mm/protocal/GeneralControlWrapper;

    goto :goto_3

    .line 1293
    :cond_6
    iget-object v0, v4, Lcom/tencent/mm/ui/tools/ga;->hmE:Lcom/tencent/mm/protocal/JsapiPermissionWrapper;

    move-object v2, v0

    goto :goto_4

    :cond_7
    iget-object v0, v4, Lcom/tencent/mm/ui/tools/ga;->hmF:Lcom/tencent/mm/protocal/GeneralControlWrapper;

    goto :goto_5

    .line 1300
    :cond_8
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->cOj:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    move v0, v3

    .line 1301
    goto/16 :goto_1

    :cond_9
    move v0, v2

    .line 1304
    goto/16 :goto_1
.end method

.method private static xE(Ljava/lang/String;)I
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 2599
    const-string v1, "#wechat_webview_type"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 2600
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 2601
    const-string v1, "MicroMsg.WebViewUI"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getWebViewType fail, no key word, url = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2613
    :goto_0
    return v0

    .line 2605
    :cond_0
    add-int/lit8 v1, v1, 0x14

    add-int/lit8 v1, v1, 0x1

    .line 2606
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v2, v1, :cond_1

    .line 2607
    const-string v1, "MicroMsg.WebViewUI"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getWebViewType fail, url is too short, url = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2611
    :cond_1
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2612
    const-string v1, "MicroMsg.WebViewUI"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getWebViewType result = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", url = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private xF(Ljava/lang/String;)I
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2660
    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/WebViewUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "geta8key_scene"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 2661
    if-nez v0, :cond_0

    .line 2663
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 2666
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->cOg:Lcom/tencent/mm/plugin/webview/stub/al;

    invoke-interface {v0, p1}, Lcom/tencent/mm/plugin/webview/stub/al;->db(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    .line 2667
    const/16 v0, 0x8

    .line 2680
    :cond_0
    :goto_0
    const-string v3, "MicroMsg.WebViewUI"

    const-string v4, "KGetA8KeyScene = %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v2

    invoke-static {v3, v4, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2681
    return v0

    .line 2668
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->cOg:Lcom/tencent/mm/plugin/webview/stub/al;

    invoke-interface {v0, p1}, Lcom/tencent/mm/plugin/webview/stub/al;->cw(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    if-eqz v0, :cond_2

    .line 2669
    const/4 v0, 0x7

    goto :goto_0

    :cond_2
    move v0, v1

    .line 2677
    goto :goto_0

    .line 2674
    :catch_0
    move-exception v0

    .line 2675
    const-string v3, "MicroMsg.WebViewUI"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getScene fail, ex = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 2676
    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method private xG(Ljava/lang/String;)Z
    .locals 4
    .parameter

    .prologue
    const/16 v1, 0x6a

    .line 2685
    invoke-static {p1}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2686
    const-string v0, "MicroMsg.WebViewUI"

    const-string v1, "search contact err: null or nill url"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2687
    const/4 v0, 0x0

    .line 2701
    :goto_0
    return v0

    .line 2690
    :cond_0
    invoke-direct {p0, v1}, Lcom/tencent/mm/ui/tools/WebViewUI;->ok(I)V

    .line 2692
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2693
    const-string v1, "search_contact_data_url"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2695
    :try_start_0
    iget-object v1, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->cOg:Lcom/tencent/mm/plugin/webview/stub/al;

    const/16 v2, 0x6a

    invoke-interface {v1, v2, v0}, Lcom/tencent/mm/plugin/webview/stub/al;->c(ILandroid/os/Bundle;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2701
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 2696
    :catch_0
    move-exception v0

    .line 2697
    const-string v1, "MicroMsg.WebViewUI"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "startSearchContact, ex = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private xH(Ljava/lang/String;)Z
    .locals 7
    .parameter

    .prologue
    const/high16 v6, 0x1000

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 2705
    const-string v2, "MicroMsg.WebViewUI"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "dealCustomScheme, url = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2707
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move v0, v1

    .line 2762
    :goto_0
    return v0

    .line 2713
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->cOg:Lcom/tencent/mm/plugin/webview/stub/al;

    invoke-interface {v2, p1}, Lcom/tencent/mm/plugin/webview/stub/al;->aH(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2714
    const-string v2, "MicroMsg.WebViewUI"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "dealCustomScheme, url is handled by QRCodeSpanUtil, url = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2715
    iget-object v2, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->cOg:Lcom/tencent/mm/plugin/webview/stub/al;

    invoke-interface {v2, p1}, Lcom/tencent/mm/plugin/webview/stub/al;->pY(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2718
    :catch_0
    move-exception v2

    .line 2719
    const-string v3, "MicroMsg.WebViewUI"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "dealCustomScheme, tryHandleEvents, ex = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2731
    :cond_2
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 2732
    if-eqz v2, :cond_5

    const-string v3, "weixin://"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "http"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 2733
    const-string v3, "tel:"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2734
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.DIAL"

    invoke-direct {v3, v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2735
    invoke-virtual {v3, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2737
    :try_start_1
    invoke-virtual {p0, v3}, Lcom/tencent/mm/ui/tools/WebViewUI;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 2738
    :catch_1
    move-exception v2

    .line 2739
    const-string v3, "MicroMsg.WebViewUI"

    const-string v4, "start dial app failed:[%s]"

    new-array v5, v0, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    invoke-static {v3, v4, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 2745
    :cond_3
    :try_start_2
    iget-object v3, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hnj:Lcom/tencent/mm/ui/tools/gb;

    invoke-virtual {v3}, Lcom/tencent/mm/ui/tools/gb;->aNR()Lcom/tencent/mm/protocal/GeneralControlWrapper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/protocal/GeneralControlWrapper;->avF()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->cOg:Lcom/tencent/mm/plugin/webview/stub/al;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->cOg:Lcom/tencent/mm/plugin/webview/stub/al;

    invoke-interface {v3}, Lcom/tencent/mm/plugin/webview/stub/al;->HB()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2746
    const-string v3, "MicroMsg.WebViewUI"

    const-string v4, "dealCustomScheme, not allow outer open url"

    invoke-static {v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v3

    .line 2751
    :cond_4
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v3, v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2755
    invoke-virtual {v3, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2756
    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/WebViewUI;->aal()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/tencent/mm/sdk/platformtools/cj;->i(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2757
    invoke-virtual {p0, v3}, Lcom/tencent/mm/ui/tools/WebViewUI;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_5
    move v0, v1

    .line 2762
    goto/16 :goto_0
.end method

.method private static final xI(Ljava/lang/String;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 3785
    sget-boolean v0, Lcom/tencent/mm/platformtools/at;->cHH:Z

    if-eqz v0, :cond_0

    .line 3786
    const-string v0, "MicroMsg.WebViewUI"

    const-string v2, "skipLoadUrlCheck"

    invoke-static {v0, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 3805
    :goto_0
    return v0

    .line 3790
    :cond_0
    invoke-static {p0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 3791
    goto :goto_0

    .line 3794
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 3795
    const-string v0, "file://"

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 3796
    goto :goto_0

    .line 3799
    :cond_2
    sget-object v0, Lcom/tencent/mm/ui/tools/WebViewUI;->hnt:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3800
    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 3801
    goto :goto_0

    .line 3805
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic xJ(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 144
    invoke-static {p0}, Lcom/tencent/mm/ui/tools/WebViewUI;->xI(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic xK(Ljava/lang/String;)I
    .locals 1
    .parameter

    .prologue
    .line 144
    invoke-static {p0}, Lcom/tencent/mm/ui/tools/WebViewUI;->xE(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic y(Lcom/tencent/mm/ui/tools/WebViewUI;)V
    .locals 2
    .parameter

    .prologue
    .line 144
    new-instance v0, Lcom/tencent/mm/ui/tools/dl;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/WebViewUI;->aal()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/mm/ui/tools/dl;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/tencent/mm/ui/tools/go;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/tools/go;-><init>(Lcom/tencent/mm/ui/tools/WebViewUI;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/tools/dl;->a(Lcom/tencent/mm/ui/base/ca;)V

    new-instance v1, Lcom/tencent/mm/ui/tools/gp;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/tools/gp;-><init>(Lcom/tencent/mm/ui/tools/WebViewUI;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/tools/dl;->a(Lcom/tencent/mm/ui/base/cb;)V

    new-instance v1, Lcom/tencent/mm/ui/tools/gq;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/tools/gq;-><init>(Lcom/tencent/mm/ui/tools/WebViewUI;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/tools/dl;->b(Lcom/tencent/mm/ui/base/cd;)V

    new-instance v1, Lcom/tencent/mm/ui/tools/gr;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/tools/gr;-><init>(Lcom/tencent/mm/ui/tools/WebViewUI;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/tools/dl;->a(Lcom/tencent/mm/ui/base/cc;)V

    invoke-virtual {v0}, Lcom/tencent/mm/ui/tools/dl;->cB()Z

    return-void
.end method

.method static synthetic z(Lcom/tencent/mm/ui/tools/WebViewUI;)Lcom/tencent/mm/ui/base/ce;
    .locals 1
    .parameter

    .prologue
    .line 144
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->gVb:Lcom/tencent/mm/ui/base/ce;

    return-object v0
.end method

.method private z(Landroid/os/Bundle;)Z
    .locals 9
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3001
    const-string v2, "geta8key_result_action_code"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 3002
    const-string v3, "geta8key_result_title"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3003
    const-string v4, "geta8key_result_full_url"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3004
    const-string v5, "geta8key_result_content"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3005
    const-string v6, "MicroMsg.WebViewUI"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "processGetA8Key, actionCode = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", title = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", fullUrl = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", content = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3007
    packed-switch v2, :pswitch_data_0

    .line 3099
    :pswitch_0
    const-string v0, "MicroMsg.WebViewUI"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "qrcode-getA8key-not_catch: action code = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 3103
    :goto_0
    return v0

    .line 3010
    :pswitch_1
    const-string v2, "MicroMsg.WebViewUI"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getA8key-text: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3012
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 3013
    :cond_0
    const-string v0, "MicroMsg.WebViewUI"

    const-string v2, "getA8key-text fail, invalid content"

    invoke-static {v0, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 3014
    goto :goto_0

    .line 3017
    :cond_1
    iget-object v1, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->cOj:Landroid/webkit/WebView;

    const-string v2, "text/html"

    const-string v3, "utf-8"

    invoke-virtual {v1, v5, v2, v3}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3022
    :pswitch_2
    const-string v2, "MicroMsg.WebViewUI"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getA8key-webview: title = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", fullUrl = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3024
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    .line 3025
    :cond_2
    const-string v0, "MicroMsg.WebViewUI"

    const-string v2, "getA8key-webview fail, invalid fullUrl"

    invoke-static {v0, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 3026
    goto :goto_0

    .line 3029
    :cond_3
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    .line 3030
    invoke-virtual {p0, v3}, Lcom/tencent/mm/ui/tools/WebViewUI;->vT(Ljava/lang/String;)V

    .line 3034
    :cond_4
    invoke-static {v4}, Lcom/tencent/mm/ui/tools/WebViewUI;->xI(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 3035
    const-string v1, "MicroMsg.WebViewUI"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "processGetA8Key qrcode, canLoadUrl fail, url = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->aM(Ljava/lang/String;Ljava/lang/String;)V

    .line 3036
    invoke-direct {p0}, Lcom/tencent/mm/ui/tools/WebViewUI;->aNW()V

    goto/16 :goto_0

    .line 3039
    :cond_5
    iget-object v1, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->cOj:Landroid/webkit/WebView;

    invoke-virtual {v1, v4}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3044
    :pswitch_3
    const-string v2, "MicroMsg.WebViewUI"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getA8key-webview_no_notice: title = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", fullUrl = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3046
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_7

    .line 3047
    :cond_6
    const-string v0, "MicroMsg.WebViewUI"

    const-string v2, "getA8key-webview_no_notice fail, invalid fullUrl"

    invoke-static {v0, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 3048
    goto/16 :goto_0

    .line 3051
    :cond_7
    if-eqz v3, :cond_8

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_8

    .line 3052
    invoke-virtual {p0, v3}, Lcom/tencent/mm/ui/tools/WebViewUI;->vT(Ljava/lang/String;)V

    .line 3055
    :cond_8
    invoke-static {v4}, Lcom/tencent/mm/ui/tools/WebViewUI;->xI(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 3056
    const-string v1, "MicroMsg.WebViewUI"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "processGetA8Key qrcode no notice, canLoadUrl fail, url = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->aM(Ljava/lang/String;Ljava/lang/String;)V

    .line 3057
    invoke-direct {p0}, Lcom/tencent/mm/ui/tools/WebViewUI;->aNW()V

    goto/16 :goto_0

    .line 3061
    :cond_9
    iget-object v1, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->cOj:Landroid/webkit/WebView;

    invoke-virtual {v1, v4}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3066
    :pswitch_4
    const-string v2, "MicroMsg.WebViewUI"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "getA8key-special_webview: fullUrl = "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3068
    if-eqz v4, :cond_a

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_b

    .line 3069
    :cond_a
    const-string v0, "MicroMsg.WebViewUI"

    const-string v2, "getA8key-special_webview fail, invalid fullUrl"

    invoke-static {v0, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 3070
    goto/16 :goto_0

    .line 3073
    :cond_b
    invoke-static {v4}, Lcom/tencent/mm/ui/tools/WebViewUI;->xI(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 3074
    const-string v1, "MicroMsg.WebViewUI"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "processGetA8Key special, canLoadUrl fail, url = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->aM(Ljava/lang/String;Ljava/lang/String;)V

    .line 3075
    invoke-direct {p0}, Lcom/tencent/mm/ui/tools/WebViewUI;->aNW()V

    goto/16 :goto_0

    .line 3079
    :cond_c
    iget-object v2, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->cOj:Landroid/webkit/WebView;

    invoke-virtual {v2, v4}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 3080
    invoke-direct {p0, v1}, Lcom/tencent/mm/ui/tools/WebViewUI;->eu(Z)V

    goto/16 :goto_0

    .line 3085
    :pswitch_5
    const-string v0, "MicroMsg.WebViewUI"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getA8key-app: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3087
    if-eqz v4, :cond_d

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_e

    .line 3088
    :cond_d
    const-string v0, "MicroMsg.WebViewUI"

    const-string v2, "getA8key-app, fullUrl is null"

    invoke-static {v0, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 3089
    goto/16 :goto_0

    .line 3092
    :cond_e
    invoke-direct {p0, v4}, Lcom/tencent/mm/ui/tools/WebViewUI;->xH(Ljava/lang/String;)Z

    move-result v0

    goto/16 :goto_0

    .line 3096
    :pswitch_6
    invoke-direct {p0, v4}, Lcom/tencent/mm/ui/tools/WebViewUI;->xG(Ljava/lang/String;)Z

    move-result v0

    goto/16 :goto_0

    .line 3007
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method protected FR()V
    .locals 9

    .prologue
    const v8, 0x106000d

    const/4 v7, -0x1

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 749
    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/WebViewUI;->aMw()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->bQI:Ljava/lang/String;

    .line 750
    const-string v0, "MicroMsg.WebViewUI"

    const-string v1, "initView , rawUrl = %s "

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->bQI:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 752
    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/WebViewUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "vertical_scroll"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 754
    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/WebViewUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "is_favorite_item"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hmX:Z

    .line 755
    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/WebViewUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "show_bottom"

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hmU:Z

    .line 756
    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/WebViewUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "isWebwx"

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->eCL:Z

    .line 757
    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/WebViewUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "version_name"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->versionName:Ljava/lang/String;

    .line 758
    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/WebViewUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "version_code"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->versionCode:I

    .line 759
    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/WebViewUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "neverGetA8Key"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hmV:Z

    .line 761
    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/WebViewUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "msg_id"

    const-wide/high16 v3, -0x8000

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->bMS:J

    .line 762
    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/WebViewUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "sns_local_id"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->bMD:I

    .line 763
    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/WebViewUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "news_svr_id"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hna:I

    .line 764
    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/WebViewUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "news_svr_tweetid"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hnb:Ljava/lang/String;

    .line 766
    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/WebViewUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "mode"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->mode:I

    .line 767
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->bQI:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->bQI:Ljava/lang/String;

    const-string v2, "#wechat_webview_type"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 768
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->bQI:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/WebViewUI;->xE(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->mode:I

    .line 771
    :cond_0
    iget-boolean v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->eCL:Z

    if-eqz v0, :cond_4

    .line 772
    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/WebViewUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "title"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 773
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 774
    iput-boolean v6, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hmQ:Z

    .line 776
    :cond_1
    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/tools/WebViewUI;->vT(Ljava/lang/String;)V

    .line 781
    :goto_0
    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/WebViewUI;->aNU()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/tools/WebViewUI;->ev(Z)V

    .line 783
    invoke-direct {p0, v5}, Lcom/tencent/mm/ui/tools/WebViewUI;->ew(Z)V

    .line 785
    sget-object v0, Lcom/tencent/mm/ui/tools/WebViewUI;->hni:Landroid/webkit/WebSettings$RenderPriority;

    sget-object v2, Landroid/webkit/WebSettings$RenderPriority;->NORMAL:Landroid/webkit/WebSettings$RenderPriority;

    if-ne v0, v2, :cond_2

    .line 786
    const-string v0, "MicroMsg.WebViewUI"

    const-string v2, "initView, set render priority to HIGH"

    invoke-static {v0, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->cOj:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v2, Landroid/webkit/WebSettings$RenderPriority;->HIGH:Landroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    .line 788
    sget-object v0, Landroid/webkit/WebSettings$RenderPriority;->HIGH:Landroid/webkit/WebSettings$RenderPriority;

    sput-object v0, Lcom/tencent/mm/ui/tools/WebViewUI;->hni:Landroid/webkit/WebSettings$RenderPriority;

    .line 791
    :cond_2
    sget v0, Lcom/tencent/mm/i;->aqA:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/tools/WebViewUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 792
    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/WebViewUI;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "webview_bg_color_rsID"

    invoke-virtual {v2, v3, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 793
    if-eq v2, v7, :cond_5

    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/WebViewUI;->getContentView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 794
    invoke-virtual {p0, v2}, Lcom/tencent/mm/ui/tools/WebViewUI;->mA(I)V

    .line 795
    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/WebViewUI;->getContentView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 796
    iget-object v2, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->cOj:Landroid/webkit/WebView;

    invoke-virtual {v2, v8}, Landroid/webkit/WebView;->setBackgroundResource(I)V

    .line 797
    sget v2, Lcom/tencent/mm/i;->aRe:I

    invoke-virtual {p0, v2}, Lcom/tencent/mm/ui/tools/WebViewUI;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/view/View;->setBackgroundResource(I)V

    .line 801
    :goto_1
    iget-object v2, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->cOj:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 804
    if-nez v1, :cond_3

    .line 805
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->cOj:Landroid/webkit/WebView;

    invoke-virtual {v0, v5}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 808
    :cond_3
    new-instance v0, Lcom/tencent/mm/ui/tools/WebViewUI$3;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/tools/WebViewUI$3;-><init>(Lcom/tencent/mm/ui/tools/WebViewUI;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hnf:Landroid/webkit/WebChromeClient;

    .line 949
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->cOj:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hnf:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 951
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->cOj:Landroid/webkit/WebView;

    new-instance v1, Lcom/tencent/mm/ui/tools/hq;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/tools/hq;-><init>(Lcom/tencent/mm/ui/tools/WebViewUI;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 953
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->cOj:Landroid/webkit/WebView;

    new-instance v1, Lcom/tencent/mm/ui/tools/hf;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/tools/hf;-><init>(Lcom/tencent/mm/ui/tools/WebViewUI;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 980
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->cOj:Landroid/webkit/WebView;

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->requestFocus(I)Z

    .line 981
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->cOj:Landroid/webkit/WebView;

    new-instance v1, Lcom/tencent/mm/ui/tools/hg;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/tools/hg;-><init>(Lcom/tencent/mm/ui/tools/WebViewUI;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1023
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->cOj:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/tencent/mm/pluginsdk/ui/tools/aa;->ah(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1024
    iget-object v1, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->cOj:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 1027
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->cOj:Landroid/webkit/WebView;

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cn;->b(Landroid/webkit/WebView;)V

    .line 1029
    new-instance v0, Lcom/tencent/mm/ui/tools/dg;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/WebViewUI;->aal()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/mm/ui/tools/dg;-><init>(Landroid/content/Context;)V

    .line 1030
    iget-object v1, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->cOj:Landroid/webkit/WebView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Lcom/tencent/mm/ui/tools/dg;->a(Landroid/view/View;Landroid/view/View$OnCreateContextMenuListener;Lcom/tencent/mm/ui/base/cd;)V

    .line 1032
    new-instance v0, Lcom/tencent/mm/ui/tools/hh;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/tools/hh;-><init>(Lcom/tencent/mm/ui/tools/WebViewUI;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/tools/WebViewUI;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)V

    .line 1042
    sget v0, Lcom/tencent/mm/i;->aRe:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/tools/WebViewUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/KeyboardLinearLayout;

    new-instance v1, Lcom/tencent/mm/ui/tools/gv;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/tools/gv;-><init>(Lcom/tencent/mm/ui/tools/WebViewUI;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/KeyboardLinearLayout;->a(Lcom/tencent/mm/ui/ad;)V

    .line 1043
    return-void

    .line 778
    :cond_4
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/tools/WebViewUI;->vT(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 799
    :cond_5
    iget-object v2, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->cOj:Landroid/webkit/WebView;

    sget v3, Lcom/tencent/mm/f;->aak:I

    invoke-static {p0, v3}, Lcom/tencent/mm/an/a;->k(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1
.end method

.method protected Iw()I
    .locals 1

    .prologue
    .line 473
    sget v0, Lcom/tencent/mm/k;->aXn:I

    return v0
.end method

.method protected Ix()V
    .locals 14

    .prologue
    const/4 v7, 0x0

    const/4 v13, 0x4

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 1073
    const-string v0, "MicroMsg.WebViewUI"

    const-string v1, "edw postBinded"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1075
    invoke-direct {p0}, Lcom/tencent/mm/ui/tools/WebViewUI;->aOa()V

    .line 1078
    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/WebViewUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "geta8key_username"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1079
    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/WebViewUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "srcUsername"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1080
    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/WebViewUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "message_id"

    invoke-virtual {v0, v1, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 1081
    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/WebViewUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "message_index"

    invoke-virtual {v0, v1, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 1082
    new-instance v0, Lcom/tencent/mm/ui/tools/ie;

    iget-object v3, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->bQI:Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/tencent/mm/ui/tools/ie;-><init>(Lcom/tencent/mm/ui/tools/WebViewUI;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hnp:Lcom/tencent/mm/ui/tools/ie;

    .line 1084
    new-instance v1, Lcom/tencent/mm/ui/tools/jsapi/j;

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->cOj:Landroid/webkit/WebView;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "webview_type"

    iget v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->mode:I

    if-nez v0, :cond_4

    const-string v0, "0"

    :goto_0
    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "init_url"

    iget-object v4, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->bQI:Ljava/lang/String;

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "init_font_size"

    const-string v4, "1"

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "short_url"

    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/WebViewUI;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "shortUrl"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/mm/sdk/platformtools/cj;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/tencent/mm/ui/tools/gj;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/tools/gj;-><init>(Lcom/tencent/mm/ui/tools/WebViewUI;)V

    iget-object v4, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->cOg:Lcom/tencent/mm/plugin/webview/stub/al;

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/tencent/mm/ui/tools/jsapi/j;-><init>(Landroid/webkit/WebView;Ljava/util/Map;Lcom/tencent/mm/ui/tools/jsapi/d;Lcom/tencent/mm/plugin/webview/stub/al;)V

    iput-object v1, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hnc:Lcom/tencent/mm/ui/tools/jsapi/j;

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hnc:Lcom/tencent/mm/ui/tools/jsapi/j;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/WebViewUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "geta8key_username"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/WebViewUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "srcUsername"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v3, "srcUsername"

    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/WebViewUI;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "srcUsername"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "srcDisplayname"

    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/WebViewUI;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "srcDisplayname"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    const-string v3, "message_id"

    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/WebViewUI;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "message_id"

    invoke-virtual {v4, v5, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "message_index"

    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/WebViewUI;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "message_index"

    invoke-virtual {v4, v5, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "scene"

    invoke-direct {p0, v2}, Lcom/tencent/mm/ui/tools/WebViewUI;->xF(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "pay_channel"

    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/WebViewUI;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "pay_channel"

    invoke-virtual {v3, v4, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/tools/jsapi/j;->q(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hnd:Ljava/util/List;

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hnc:Lcom/tencent/mm/ui/tools/jsapi/j;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hnd:Ljava/util/List;

    new-instance v1, Lcom/tencent/mm/ui/tools/hv;

    invoke-direct {v1, p0, v10}, Lcom/tencent/mm/ui/tools/hv;-><init>(Lcom/tencent/mm/ui/tools/WebViewUI;B)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hnd:Ljava/util/List;

    new-instance v1, Lcom/tencent/mm/ui/tools/hp;

    invoke-direct {v1, p0, v10}, Lcom/tencent/mm/ui/tools/hp;-><init>(Lcom/tencent/mm/ui/tools/WebViewUI;B)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hnd:Ljava/util/List;

    new-instance v1, Lcom/tencent/mm/ui/tools/hw;

    invoke-direct {v1, p0, v10}, Lcom/tencent/mm/ui/tools/hw;-><init>(Lcom/tencent/mm/ui/tools/WebViewUI;B)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hnd:Ljava/util/List;

    new-instance v1, Lcom/tencent/mm/ui/tools/hz;

    invoke-direct {v1, p0, v10}, Lcom/tencent/mm/ui/tools/hz;-><init>(Lcom/tencent/mm/ui/tools/WebViewUI;B)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hnd:Ljava/util/List;

    new-instance v1, Lcom/tencent/mm/ui/tools/hl;

    invoke-direct {v1, p0, v10}, Lcom/tencent/mm/ui/tools/hl;-><init>(Lcom/tencent/mm/ui/tools/WebViewUI;B)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hnd:Ljava/util/List;

    new-instance v1, Lcom/tencent/mm/ui/tools/id;

    invoke-direct {v1, p0, v10}, Lcom/tencent/mm/ui/tools/id;-><init>(Lcom/tencent/mm/ui/tools/WebViewUI;B)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hnd:Ljava/util/List;

    new-instance v1, Lcom/tencent/mm/ui/tools/hx;

    invoke-direct {v1, p0, v10}, Lcom/tencent/mm/ui/tools/hx;-><init>(Lcom/tencent/mm/ui/tools/WebViewUI;B)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hnd:Ljava/util/List;

    new-instance v1, Lcom/tencent/mm/ui/tools/hr;

    invoke-direct {v1, p0, v10}, Lcom/tencent/mm/ui/tools/hr;-><init>(Lcom/tencent/mm/ui/tools/WebViewUI;B)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hnd:Ljava/util/List;

    new-instance v1, Lcom/tencent/mm/ui/tools/hm;

    invoke-direct {v1, p0, v10}, Lcom/tencent/mm/ui/tools/hm;-><init>(Lcom/tencent/mm/ui/tools/WebViewUI;B)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hnd:Ljava/util/List;

    new-instance v1, Lcom/tencent/mm/ui/tools/ho;

    invoke-direct {v1, p0, v10}, Lcom/tencent/mm/ui/tools/ho;-><init>(Lcom/tencent/mm/ui/tools/WebViewUI;B)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hnd:Ljava/util/List;

    new-instance v1, Lcom/tencent/mm/ui/tools/hn;

    invoke-direct {v1, p0, v10}, Lcom/tencent/mm/ui/tools/hn;-><init>(Lcom/tencent/mm/ui/tools/WebViewUI;B)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hnd:Ljava/util/List;

    new-instance v1, Lcom/tencent/mm/ui/tools/ia;

    invoke-direct {v1, p0, v10}, Lcom/tencent/mm/ui/tools/ia;-><init>(Lcom/tencent/mm/ui/tools/WebViewUI;B)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hnd:Ljava/util/List;

    new-instance v1, Lcom/tencent/mm/ui/tools/ic;

    invoke-direct {v1, p0, v10}, Lcom/tencent/mm/ui/tools/ic;-><init>(Lcom/tencent/mm/ui/tools/WebViewUI;B)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1089
    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/WebViewUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "showShare"

    invoke-virtual {v0, v1, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 1090
    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/tools/WebViewUI;->eu(Z)V

    .line 1091
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/tencent/mm/k;->aYf:I

    invoke-virtual {v0, v1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hmT:Landroid/view/View;

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hmT:Landroid/view/View;

    sget v1, Lcom/tencent/mm/i;->aGb:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hmT:Landroid/view/View;

    sget v1, Lcom/tencent/mm/i;->aFY:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hmT:Landroid/view/View;

    sget v1, Lcom/tencent/mm/i;->aFZ:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hmT:Landroid/view/View;

    sget v1, Lcom/tencent/mm/i;->aGa:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RadioButton;

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hmT:Landroid/view/View;

    sget v1, Lcom/tencent/mm/i;->aGc:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/ImageButton;

    new-instance v0, Lcom/tencent/mm/ui/tools/hs;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/tencent/mm/ui/tools/hs;-><init>(Lcom/tencent/mm/ui/tools/WebViewUI;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;)V

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {v3, v0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {v4, v0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {v5, v0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    new-instance v0, Lcom/tencent/mm/ui/tools/he;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/tools/he;-><init>(Lcom/tencent/mm/ui/tools/WebViewUI;)V

    invoke-virtual {v6, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/tencent/mm/i;->aqA:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/tools/WebViewUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v11, -0x2

    const/16 v12, 0x50

    invoke-direct {v1, v6, v11, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iget-object v6, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hmT:Landroid/view/View;

    invoke-virtual {v6, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hmT:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hmT:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->cOg:Lcom/tencent/mm/plugin/webview/stub/al;

    invoke-interface {v0}, Lcom/tencent/mm/plugin/webview/stub/al;->HB()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->cOg:Lcom/tencent/mm/plugin/webview/stub/al;

    const/16 v1, 0x4000

    const/4 v6, 0x0

    invoke-interface {v0, v1, v6}, Lcom/tencent/mm/plugin/webview/stub/al;->aJ(II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_3
    if-lez v0, :cond_0

    if-le v0, v13, :cond_1

    :cond_0
    move v0, v8

    :cond_1
    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/tools/WebViewUI;->om(I)V

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/tools/WebViewUI;->on(I)V

    if-ne v0, v9, :cond_8

    move v1, v9

    :goto_4
    invoke-virtual {v2, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    if-ne v0, v8, :cond_9

    move v1, v9

    :goto_5
    invoke-virtual {v3, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    const/4 v1, 0x3

    if-ne v0, v1, :cond_a

    move v1, v9

    :goto_6
    invoke-virtual {v4, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    if-ne v0, v13, :cond_b

    :goto_7
    invoke-virtual {v5, v9}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1102
    :try_start_1
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->cOg:Lcom/tencent/mm/plugin/webview/stub/al;

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->bQI:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/tencent/mm/plugin/webview/stub/al;->C(Ljava/lang/String;Z)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1108
    :goto_8
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hnd:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/tools/ib;

    .line 1109
    invoke-interface {v0}, Lcom/tencent/mm/ui/tools/ib;->aOe()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 1110
    iget-object v3, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->bQI:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->bQI:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1111
    iget-object v1, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->bQI:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/tools/ib;->xL(Ljava/lang/String;)Z

    move-result v0

    .line 1112
    const-string v1, "MicroMsg.WebViewUI"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "initView, url handled, result = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", url = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->bQI:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1249
    :cond_3
    :goto_9
    return-void

    .line 1084
    :cond_4
    const-string v0, "1"

    goto/16 :goto_0

    :cond_5
    invoke-static {v2}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v3, "srcUsername"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_6
    move-object v0, v7

    goto/16 :goto_2

    .line 1091
    :catch_0
    move-exception v0

    const-string v1, "MicroMsg.WebViewUI"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v11, "initFontChooserView, ex = "

    invoke-direct {v6, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    move v0, v8

    goto/16 :goto_3

    :cond_8
    move v1, v10

    goto/16 :goto_4

    :cond_9
    move v1, v10

    goto/16 :goto_5

    :cond_a
    move v1, v10

    goto/16 :goto_6

    :cond_b
    move v9, v10

    goto/16 :goto_7

    .line 1103
    :catch_1
    move-exception v0

    .line 1104
    const-string v1, "MicroMsg.WebViewUI"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "postBinded, jumpToActivity, ex = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 1117
    :cond_c
    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/WebViewUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "webview_load_url_from_cache"

    invoke-virtual {v0, v1, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hnh:Z

    .line 1118
    const-string v0, "MicroMsg.WebViewUI"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "initView, loadUrlFromCache = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hnh:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1120
    iget-boolean v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hnh:Z

    if-eqz v0, :cond_d

    .line 1121
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->bQI:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/tools/WebViewUI;->xD(Ljava/lang/String;)Z

    move-result v0

    .line 1122
    const-string v1, "MicroMsg.WebViewUI"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "initView, localCacheSucc = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1124
    if-nez v0, :cond_3

    .line 1129
    :cond_d
    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/WebViewUI;->Iz()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1130
    const-string v0, "MicroMsg.WebViewUI"

    const-string v1, "needDelayLoadUrl is true, do nothing"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 1134
    :cond_e
    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/WebViewUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1135
    if-eqz v2, :cond_10

    .line 1136
    const-string v0, "MicroMsg.WebViewUI"

    invoke-static {v0, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1146
    :try_start_2
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->cOg:Lcom/tencent/mm/plugin/webview/stub/al;

    invoke-interface {v0, v2}, Lcom/tencent/mm/plugin/webview/stub/al;->pX(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v2

    .line 1151
    :goto_a
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->cOj:Landroid/webkit/WebView;

    new-instance v1, Lcom/tencent/mm/ui/tools/hi;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/tools/hi;-><init>(Lcom/tencent/mm/ui/tools/WebViewUI;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1193
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->cOj:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 1194
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->cOj:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 1195
    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/WebViewUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "baseurl"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1196
    invoke-static {v1}, Lcom/tencent/mm/ui/tools/WebViewUI;->xI(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 1197
    const-string v0, "MicroMsg.WebViewUI"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "postBinded baseUrl, canLoadUrl fail, url = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->aM(Ljava/lang/String;Ljava/lang/String;)V

    .line 1198
    invoke-direct {p0}, Lcom/tencent/mm/ui/tools/WebViewUI;->aNW()V

    goto/16 :goto_9

    .line 1147
    :catch_2
    move-exception v0

    .line 1148
    const-string v1, "MicroMsg.WebViewUI"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "postBinded, formatQRString, ex = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 1202
    :cond_f
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->cOj:Landroid/webkit/WebView;

    const-string v3, "text/html"

    const-string v4, "utf-8"

    move-object v5, v7

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1203
    const-string v0, "MicroMsg.WebViewUI"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "loadDataWithBaseUrl, data = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 1205
    :cond_10
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->bQI:Ljava/lang/String;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->bQI:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_12

    .line 1206
    :cond_11
    const-string v0, "MicroMsg.WebViewUI"

    const-string v1, "initView, rawUrl is null, no data or getStringExtra(\"data\") is null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 1210
    :cond_12
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->bQI:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1211
    if-nez v0, :cond_13

    .line 1212
    const-string v0, "MicroMsg.WebViewUI"

    const-string v1, "initView uri is null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 1216
    :cond_13
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_16

    .line 1217
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->bQI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->bQI:Ljava/lang/String;

    .line 1232
    :cond_14
    new-instance v0, Lcom/tencent/mm/ui/tools/ht;

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->bQI:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/tencent/mm/ui/tools/ht;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hnk:Lcom/tencent/mm/ui/tools/ht;

    .line 1234
    iget-boolean v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hmV:Z

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hnj:Lcom/tencent/mm/ui/tools/gb;

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->bQI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/tools/gb;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1235
    :cond_15
    const-string v0, "MicroMsg.WebViewUI"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "initView, no need to geta8key, loadUrl directly, neverGetA8Key = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hmV:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1236
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->bQI:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/WebViewUI;->xI(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 1237
    const-string v0, "MicroMsg.WebViewUI"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "postBinded 2, canLoadUrl fail, url = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->bQI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->aM(Ljava/lang/String;Ljava/lang/String;)V

    .line 1238
    invoke-direct {p0}, Lcom/tencent/mm/ui/tools/WebViewUI;->aNW()V

    goto/16 :goto_9

    .line 1220
    :cond_16
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 1221
    const-string v1, "MicroMsg.WebViewUI"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "uri scheme not startwith http, scheme = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1222
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->bQI:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/WebViewUI;->xI(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 1223
    const-string v0, "MicroMsg.WebViewUI"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "postBinded, canLoadUrl fail, url = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->bQI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->aM(Ljava/lang/String;Ljava/lang/String;)V

    .line 1224
    invoke-direct {p0}, Lcom/tencent/mm/ui/tools/WebViewUI;->aNW()V

    goto/16 :goto_9

    .line 1227
    :cond_17
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->cOj:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->bQI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 1242
    :cond_18
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->cOj:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->bQI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 1245
    :cond_19
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->bQI:Ljava/lang/String;

    invoke-direct {p0, v0, v10}, Lcom/tencent/mm/ui/tools/WebViewUI;->T(Ljava/lang/String;Z)V

    .line 1246
    const-string v0, "MicroMsg.WebViewUI"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "before geta8key, rawUrl = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->bQI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9
.end method

.method protected Iz()Z
    .locals 1

    .prologue
    .line 487
    const/4 v0, 0x0

    return v0
.end method

.method public a(Lcom/tencent/mm/plugin/webview/stub/d;)V
    .locals 11
    .parameter

    .prologue
    .line 2769
    const-string v0, "MicroMsg.WebViewUI"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSceneEnd, instance hashcode = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2771
    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/WebViewUI;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2772
    const-string v0, "MicroMsg.WebViewUI"

    const-string v1, "onSceneEnd, isFinishing, do nothing"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2888
    :cond_0
    :goto_0
    return-void

    .line 2776
    :cond_1
    const/4 v3, 0x0

    .line 2777
    const/4 v2, -0x1

    .line 2778
    const/4 v4, -0x1

    .line 2779
    const/4 v0, 0x0

    .line 2782
    :try_start_0
    invoke-interface {p1}, Lcom/tencent/mm/plugin/webview/stub/d;->getType()I

    move-result v3

    .line 2783
    invoke-interface {p1}, Lcom/tencent/mm/plugin/webview/stub/d;->aoT()I

    move-result v2

    .line 2784
    invoke-interface {p1}, Lcom/tencent/mm/plugin/webview/stub/d;->aoU()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2785
    :try_start_1
    invoke-interface {p1}, Lcom/tencent/mm/plugin/webview/stub/d;->xl()Ljava/lang/String;

    .line 2786
    invoke-interface {p1}, Lcom/tencent/mm/plugin/webview/stub/d;->getData()Landroid/os/Bundle;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 2791
    :goto_1
    const-string v4, "MicroMsg.WebViewUI"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "edw onSceneEnd, type = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", errCode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", errType = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2793
    const/16 v4, 0xe9

    if-eq v3, v4, :cond_2

    const/16 v4, 0x83

    if-eq v3, v4, :cond_2

    const/16 v4, 0x6a

    if-ne v3, v4, :cond_0

    .line 2797
    :cond_2
    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    .line 2799
    :sswitch_0
    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/WebViewUI;->finish()V

    goto :goto_0

    .line 2787
    :catch_0
    move-exception v1

    move-object v10, v1

    move v1, v4

    move-object v4, v10

    .line 2788
    :goto_2
    const-string v5, "MicroMsg.WebViewUI"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "onSceneEnd, ex = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2804
    :sswitch_1
    iget-object v3, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hnl:Lcom/tencent/mm/ui/tools/hu;

    invoke-virtual {v3}, Lcom/tencent/mm/ui/tools/hu;->aOg()V

    .line 2811
    if-nez v0, :cond_9

    .line 2812
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v3, v0

    .line 2814
    :goto_3
    const/4 v4, 0x0

    .line 2815
    const-string v0, "geta8key_result_scope_list"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    .line 2816
    if-eqz v0, :cond_8

    .line 2817
    check-cast v0, Ljava/util/ArrayList;

    .line 2820
    :goto_4
    new-instance v5, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;

    const-string v4, "geta8key_result_jsapi_perm_b1"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v6, "geta8key_result_jsapi_perm_b2"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v5, v4, v6}, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;-><init>(II)V

    .line 2821
    new-instance v6, Lcom/tencent/mm/protocal/GeneralControlWrapper;

    const-string v4, "geta8key_result_general_ctrl_b1"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v6, v4}, Lcom/tencent/mm/protocal/GeneralControlWrapper;-><init>(I)V

    .line 2823
    const-string v4, "geta8key_result_reason"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 2824
    const-string v4, "MicroMsg.WebViewUI"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "edw geta8key onSceneEnd, req reason = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2826
    const/4 v4, 0x0

    .line 2828
    packed-switch v7, :pswitch_data_0

    :goto_5
    move-object v0, v4

    .line 2871
    :goto_6
    iget-object v1, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hnj:Lcom/tencent/mm/ui/tools/gb;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/tools/gb;->xz(Ljava/lang/String;)Lcom/tencent/mm/protocal/JsapiPermissionWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->awy()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/tools/WebViewUI;->ex(Z)V

    .line 2879
    iget-boolean v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hnh:Z

    if-eqz v0, :cond_0

    .line 2880
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->bQI:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->cOg:Lcom/tencent/mm/plugin/webview/stub/al;

    invoke-static {v0, v5, v6, v1}, Lcom/tencent/mm/ui/tools/fz;->a(Ljava/lang/String;Lcom/tencent/mm/protocal/JsapiPermissionWrapper;Lcom/tencent/mm/protocal/GeneralControlWrapper;Lcom/tencent/mm/plugin/webview/stub/al;)Z

    .line 2881
    const-string v0, "MicroMsg.WebViewUI"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "edw onSceneEnd, geta8key succ, update cache, jsapiPerm = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", generalCtrl = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2831
    :pswitch_0
    if-nez v2, :cond_3

    if-eqz v1, :cond_4

    :cond_3
    const/4 v7, 0x4

    if-ne v2, v7, :cond_5

    const/16 v2, -0x7d5

    if-ne v1, v2, :cond_5

    .line 2835
    :cond_4
    const-string v1, "geta8key_result_full_url"

    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2841
    iget-object v2, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hnj:Lcom/tencent/mm/ui/tools/gb;

    invoke-virtual {v2, v1, v5, v6, v0}, Lcom/tencent/mm/ui/tools/gb;->a(Ljava/lang/String;Lcom/tencent/mm/protocal/JsapiPermissionWrapper;Lcom/tencent/mm/protocal/GeneralControlWrapper;Ljava/util/ArrayList;)V

    .line 2842
    invoke-direct {p0, v3}, Lcom/tencent/mm/ui/tools/WebViewUI;->z(Landroid/os/Bundle;)Z

    .line 2844
    invoke-virtual {v5}, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->awh()Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hnm:Z

    move-object v0, v1

    goto :goto_6

    .line 2846
    :cond_5
    const/4 v0, 0x1

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/ui/tools/WebViewUI;->s(ZZ)V

    move-object v0, v4

    .line 2848
    goto :goto_6

    .line 2851
    :pswitch_1
    if-nez v2, :cond_6

    if-nez v1, :cond_6

    .line 2852
    const-string v1, "geta8key_result_req_url"

    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2855
    iget-object v2, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hnj:Lcom/tencent/mm/ui/tools/gb;

    invoke-virtual {v2, v1, v5, v6, v0}, Lcom/tencent/mm/ui/tools/gb;->a(Ljava/lang/String;Lcom/tencent/mm/protocal/JsapiPermissionWrapper;Lcom/tencent/mm/protocal/GeneralControlWrapper;Ljava/util/ArrayList;)V

    .line 2857
    invoke-virtual {v5}, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->awh()Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hnm:Z

    move-object v0, v1

    goto :goto_6

    .line 2858
    :cond_6
    const/4 v7, 0x4

    if-ne v2, v7, :cond_7

    const/16 v2, -0x7d5

    if-ne v1, v2, :cond_7

    .line 2859
    iget-object v1, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->cOj:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->stopLoading()V

    .line 2860
    const-string v1, "geta8key_result_full_url"

    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2866
    iget-object v2, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hnj:Lcom/tencent/mm/ui/tools/gb;

    invoke-virtual {v2, v1, v5, v6, v0}, Lcom/tencent/mm/ui/tools/gb;->a(Ljava/lang/String;Lcom/tencent/mm/protocal/JsapiPermissionWrapper;Lcom/tencent/mm/protocal/GeneralControlWrapper;Ljava/util/ArrayList;)V

    .line 2867
    invoke-direct {p0, v3}, Lcom/tencent/mm/ui/tools/WebViewUI;->z(Landroid/os/Bundle;)Z

    move-object v0, v1

    goto/16 :goto_6

    .line 2869
    :cond_7
    const/4 v0, 0x1

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/ui/tools/WebViewUI;->s(ZZ)V

    goto/16 :goto_5

    .line 2787
    :catch_1
    move-exception v4

    goto/16 :goto_2

    :cond_8
    move-object v0, v4

    goto/16 :goto_4

    :cond_9
    move-object v3, v0

    goto/16 :goto_3

    .line 2797
    nop

    :sswitch_data_0
    .sparse-switch
        0x6a -> :sswitch_0
        0xe9 -> :sswitch_1
    .end sparse-switch

    .line 2828
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected final aEM()V
    .locals 1

    .prologue
    .line 504
    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/WebViewUI;->aX()Z

    .line 505
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/tools/WebViewUI;->setProgressBarIndeterminateVisibility(Z)V

    .line 506
    return-void
.end method

.method public final aEW()Z
    .locals 1

    .prologue
    .line 1309
    const/4 v0, 0x0

    return v0
.end method

.method protected aMw()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1384
    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/WebViewUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "rawUrl"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1385
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 1393
    :goto_0
    return-object v0

    .line 1389
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/WebViewUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 1390
    if-nez v0, :cond_1

    .line 1391
    const-string v0, ""

    goto :goto_0

    .line 1393
    :cond_1
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected final aNU()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 483
    iget-boolean v1, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hmU:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->mode:I

    if-eq v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final aNZ()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x2

    .line 2309
    .line 2312
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->cOg:Lcom/tencent/mm/plugin/webview/stub/al;

    invoke-interface {v0}, Lcom/tencent/mm/plugin/webview/stub/al;->HB()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2316
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->cOg:Lcom/tencent/mm/plugin/webview/stub/al;

    const/16 v2, 0x4000

    const/4 v3, 0x2

    invoke-interface {v0, v2, v3}, Lcom/tencent/mm/plugin/webview/stub/al;->aJ(II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2322
    :goto_0
    if-lez v0, :cond_0

    const/4 v2, 0x4

    if-le v0, v2, :cond_2

    .line 2325
    :cond_0
    :goto_1
    invoke-direct {p0, v1}, Lcom/tencent/mm/ui/tools/WebViewUI;->om(I)V

    .line 2327
    invoke-virtual {p0, v5, v5}, Lcom/tencent/mm/ui/tools/WebViewUI;->s(ZZ)V

    .line 2328
    return-void

    .line 2318
    :catch_0
    move-exception v0

    .line 2319
    const-string v2, "MicroMsg.WebViewUI"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onLoadJsApiFinished, ex = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v1, v0

    goto :goto_1
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 460
    iget-boolean v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hmW:Z

    if-eqz v0, :cond_0

    .line 461
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/tools/WebViewUI;->setResult(I)V

    .line 463
    :cond_0
    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->finish()V

    .line 464
    return-void
.end method

.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 468
    sget v0, Lcom/tencent/mm/k;->aRd:I

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v6, 0x1

    .line 1050
    invoke-super {p0, p1, p2, p3}, Lcom/tencent/mm/ui/MMActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1051
    if-ne p1, v6, :cond_0

    .line 1052
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hnq:Landroid/webkit/ValueCallback;

    if-nez v0, :cond_1

    .line 1070
    :cond_0
    :goto_0
    return-void

    .line 1054
    :cond_1
    if-nez p3, :cond_3

    move-object v0, v1

    .line 1055
    :goto_1
    invoke-static {p0, v0}, Lcom/tencent/mm/sdk/platformtools/cj;->c(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 1056
    const-string v3, "MicroMsg.WebViewUI"

    const-string v4, "get file path:[%s]"

    new-array v5, v6, [Ljava/lang/Object;

    aput-object v2, v5, v7

    invoke-static {v3, v4, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1057
    invoke-static {v2}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1058
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 1059
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1060
    const-string v0, "MicroMsg.WebViewUI"

    const-string v3, "select a file not on sdcard :[%s]"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v2, v4, v7

    invoke-static {v0, v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1061
    sget v0, Lcom/tencent/mm/n;->bIt:I

    invoke-static {p0, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move-object v0, v1

    .line 1067
    :cond_2
    :goto_2
    iget-object v2, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hnq:Landroid/webkit/ValueCallback;

    invoke-interface {v2, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 1068
    iput-object v1, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hnq:Landroid/webkit/ValueCallback;

    goto :goto_0

    .line 1054
    :cond_3
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    goto :goto_1

    :cond_4
    move-object v0, v1

    .line 1065
    goto :goto_2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/high16 v2, 0x100

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 511
    invoke-super {p0, p1}, Lcom/tencent/mm/ui/MMActivity;->onCreate(Landroid/os/Bundle;)V

    .line 512
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->handler:Landroid/os/Handler;

    .line 515
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 516
    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/WebViewUI;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 520
    :cond_0
    invoke-static {}, Lcom/tencent/mm/pluginsdk/ui/tools/y;->Au()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/pluginsdk/ui/tools/z;

    .line 521
    const-string v2, "MicroMsg.WebViewUI"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onCreate, start plugin, plugin name = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/tencent/mm/pluginsdk/ui/tools/z;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    invoke-interface {v0}, Lcom/tencent/mm/pluginsdk/ui/tools/z;->auP()V

    goto :goto_0

    .line 525
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/WebViewUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "usePlugin"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/WebViewUI;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "zoom"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/WebViewUI;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "useJs"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    new-instance v3, Landroid/webkit/WebView;

    invoke-direct {v3, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->cOj:Landroid/webkit/WebView;

    iget-object v3, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->cOj:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->cOj:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/webkit/WebSettings;->setPluginsEnabled(Z)V

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->cOj:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->cOj:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->cOj:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->cOj:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->cOj:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->cOj:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->cOj:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->cOj:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/WebViewUI;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    :try_start_0
    const-class v1, Landroid/webkit/WebView;

    const-string v2, "mWebViewCore"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "mBrowserFrame"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "sConfigCallback"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-nez v2, :cond_2

    :goto_1
    invoke-direct {p0}, Lcom/tencent/mm/ui/tools/WebViewUI;->aOa()V

    .line 526
    const-string v0, "MicroMsg.WebViewUI"

    const-string v1, "edw tryBindService"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "jsapiargs"

    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/WebViewUI;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "jsapiargs"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->eMy:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0, v1, v5}, Lcom/tencent/mm/ui/tools/WebViewUI;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 527
    new-instance v0, Lcom/tencent/mm/ui/tools/gb;

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->cOj:Landroid/webkit/WebView;

    invoke-direct {v0, p0, v1}, Lcom/tencent/mm/ui/tools/gb;-><init>(Landroid/app/Activity;Landroid/webkit/WebView;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hnj:Lcom/tencent/mm/ui/tools/gb;

    .line 528
    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/WebViewUI;->FR()V

    .line 529
    const-string v0, "onCreate"

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/tools/WebViewUI;->xC(Ljava/lang/String;)V

    .line 530
    return-void

    .line 525
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    const-string v3, "mWindowManager"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v1, v2, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1314
    invoke-super {p0, p1, p2, p3}, Lcom/tencent/mm/ui/MMActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 1315
    instance-of v0, p2, Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 1316
    check-cast p2, Landroid/webkit/WebView;

    invoke-virtual {p2}, Landroid/webkit/WebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object v2

    .line 1317
    if-nez v2, :cond_1

    .line 1351
    :cond_0
    :goto_0
    return-void

    .line 1321
    :cond_1
    invoke-virtual {v2}, Landroid/webkit/WebView$HitTestResult;->getType()I

    move-result v0

    const/4 v3, 0x5

    if-eq v0, v3, :cond_2

    invoke-virtual {v2}, Landroid/webkit/WebView$HitTestResult;->getType()I

    move-result v0

    const/16 v3, 0x8

    if-ne v0, v3, :cond_0

    .line 1324
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->cOg:Lcom/tencent/mm/plugin/webview/stub/al;

    invoke-interface {v0}, Lcom/tencent/mm/plugin/webview/stub/al;->isSDCardAvailable()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1329
    :goto_1
    if-eqz v0, :cond_0

    .line 1332
    sget v0, Lcom/tencent/mm/n;->bIn:I

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    .line 1333
    sget v0, Lcom/tencent/mm/n;->bwX:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/tools/WebViewUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v1, v1, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/ui/tools/hj;

    invoke-direct {v1, p0, v2}, Lcom/tencent/mm/ui/tools/hj;-><init>(Lcom/tencent/mm/ui/tools/WebViewUI;Landroid/webkit/WebView$HitTestResult;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_0

    .line 1325
    :catch_0
    move-exception v0

    .line 1326
    const-string v3, "MicroMsg.WebViewUI"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "onCreateContextMenu fail, ex = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 634
    const-string v0, "onDestroy"

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/tools/WebViewUI;->xC(Ljava/lang/String;)V

    .line 635
    invoke-direct {p0}, Lcom/tencent/mm/ui/tools/WebViewUI;->aNV()V

    .line 636
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->cOg:Lcom/tencent/mm/plugin/webview/stub/al;

    const/16 v1, 0xa

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/tencent/mm/plugin/webview/stub/al;->b(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 643
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->cOg:Lcom/tencent/mm/plugin/webview/stub/al;

    invoke-interface {v0}, Lcom/tencent/mm/plugin/webview/stub/al;->aoY()V

    .line 644
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->cOg:Lcom/tencent/mm/plugin/webview/stub/al;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/tencent/mm/plugin/webview/stub/al;->jT(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 649
    :goto_1
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->eMy:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 650
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->eMy:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/tools/WebViewUI;->unbindService(Landroid/content/ServiceConnection;)V

    .line 654
    :cond_0
    invoke-static {}, Lcom/tencent/mm/pluginsdk/ui/tools/y;->Au()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/pluginsdk/ui/tools/z;

    .line 655
    const-string v2, "MicroMsg.WebViewUI"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onDestroy, stop plugin, plugin name = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/tencent/mm/pluginsdk/ui/tools/z;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    invoke-interface {v0}, Lcom/tencent/mm/pluginsdk/ui/tools/z;->auQ()V

    goto :goto_2

    .line 636
    :catch_0
    move-exception v0

    const-string v1, "MicroMsg.WebViewUI"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "removeshareurl cache failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 645
    :catch_1
    move-exception v0

    .line 646
    const-string v1, "MicroMsg.WebViewUI"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onDestroy, ex = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 658
    :cond_1
    invoke-static {}, Lcom/tencent/mm/pluginsdk/ui/tools/y;->clear()V

    .line 661
    :try_start_2
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hnd:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    .line 667
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hnd:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 672
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_3

    .line 673
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->cOj:Landroid/webkit/WebView;

    const-string v1, "MicroMsg"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 674
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->cOj:Landroid/webkit/WebView;

    const-string v1, "JsApi"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 677
    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hnj:Lcom/tencent/mm/ui/tools/gb;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/tools/gb;->detach()V

    .line 678
    iput-object v5, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hnj:Lcom/tencent/mm/ui/tools/gb;

    .line 680
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->cOj:Landroid/webkit/WebView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 684
    :try_start_3
    sget v0, Lcom/tencent/mm/i;->aqA:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/tools/WebViewUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 685
    if-eqz v0, :cond_4

    .line 686
    iget-object v1, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->cOj:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 688
    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->cOj:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->removeAllViews()V

    .line 689
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->cOj:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearView()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 695
    :goto_4
    :try_start_4
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->cOj:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 699
    :goto_5
    iput-object v5, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->cOj:Landroid/webkit/WebView;

    .line 700
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 701
    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onDestroy()V

    .line 702
    return-void

    .line 690
    :catch_3
    move-exception v0

    .line 691
    const-string v1, "MicroMsg.WebViewUI"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onDestory, ex = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 696
    :catch_4
    move-exception v0

    .line 697
    const-string v1, "MicroMsg.WebViewUI"

    const-string v2, "onDestroy, viewWV destroy, ex = %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x4

    const/4 v0, 0x1

    .line 729
    if-ne p1, v2, :cond_0

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->fox:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hne:Landroid/webkit/WebChromeClient$CustomViewCallback;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hnf:Landroid/webkit/WebChromeClient;

    if-eqz v1, :cond_0

    .line 730
    iget-object v1, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hnf:Landroid/webkit/WebChromeClient;

    invoke-virtual {v1}, Landroid/webkit/WebChromeClient;->onHideCustomView()V

    .line 744
    :goto_0
    return v0

    .line 739
    :cond_0
    if-ne p1, v2, :cond_1

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->cOj:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 740
    iget-object v1, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->cOj:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0

    .line 744
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/tencent/mm/ui/MMActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 5

    .prologue
    .line 445
    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onPause()V

    .line 446
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->gVb:Lcom/tencent/mm/ui/base/ce;

    if-eqz v0, :cond_0

    .line 447
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->gVb:Lcom/tencent/mm/ui/base/ce;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/ce;->dismiss()V

    .line 450
    :cond_0
    const-string v0, "onPause"

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/tools/WebViewUI;->xB(Ljava/lang/String;)V

    .line 451
    invoke-static {}, Lcom/tencent/mm/pluginsdk/ui/tools/y;->Au()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/pluginsdk/ui/tools/z;

    .line 452
    const-string v2, "MicroMsg.WebViewUI"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onCreate, start plugin, plugin name = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/tencent/mm/pluginsdk/ui/tools/z;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    invoke-interface {v0}, Lcom/tencent/mm/pluginsdk/ui/tools/z;->auR()V

    goto :goto_0

    .line 455
    :cond_1
    const-string v0, "onPause"

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/tools/WebViewUI;->xC(Ljava/lang/String;)V

    .line 456
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    .line 431
    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onResume()V

    .line 433
    const-string v0, "onResume"

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/tools/WebViewUI;->xB(Ljava/lang/String;)V

    .line 435
    invoke-static {}, Lcom/tencent/mm/pluginsdk/ui/tools/y;->Au()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/pluginsdk/ui/tools/z;

    .line 436
    const-string v2, "MicroMsg.WebViewUI"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onCreate, start plugin, plugin name = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/tencent/mm/pluginsdk/ui/tools/z;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    invoke-interface {v0, p0}, Lcom/tencent/mm/pluginsdk/ui/tools/z;->bb(Landroid/content/Context;)V

    goto :goto_0

    .line 440
    :cond_0
    const-string v0, "onResume"

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/tools/WebViewUI;->xC(Ljava/lang/String;)V

    .line 441
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 581
    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onStart()V

    .line 582
    const-string v0, "MicroMsg.WebViewUI"

    const-string v1, "edw onStart"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    return-void
.end method

.method protected onStop()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 587
    const-string v0, "MicroMsg.WebViewUI"

    const-string v1, "edw onStop"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hnp:Lcom/tencent/mm/ui/tools/ie;

    if-eqz v0, :cond_0

    .line 589
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hnp:Lcom/tencent/mm/ui/tools/ie;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/tools/ie;->oS()V

    .line 590
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->hnp:Lcom/tencent/mm/ui/tools/ie;

    .line 595
    :cond_0
    invoke-direct {p0}, Lcom/tencent/mm/ui/tools/WebViewUI;->aNY()V

    .line 597
    invoke-virtual {p0, v2, v2}, Lcom/tencent/mm/ui/tools/WebViewUI;->s(ZZ)V

    .line 598
    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onStop()V

    .line 599
    return-void
.end method

.method protected final s(ZZ)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2333
    invoke-virtual {p0, p1}, Lcom/tencent/mm/ui/tools/WebViewUI;->dg(Z)V

    .line 2335
    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/tools/WebViewUI;->setProgressBarIndeterminateVisibility(Z)V

    .line 2336
    return-void

    .line 2335
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
