.class public Lcom/tencent/mm/ui/tools/jsapi/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/m/p;
.implements Lcom/tencent/mm/pluginsdk/ui/applet/f;
.implements Lcom/tencent/mm/ui/br;


# static fields
.field private static hpl:Lcom/tencent/mm/ui/tools/jsapi/p;

.field private static hpq:Landroid/os/Bundle;


# instance fields
.field private bOa:Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;

.field private cIr:Landroid/app/ProgressDialog;

.field private cQI:Lcom/tencent/mm/storage/i;

.field private context:Landroid/content/Context;

.field dgb:Z

.field private feu:Lcom/tencent/mm/plugin/webview/stub/ao;

.field private hpm:Lcom/tencent/mm/ui/tools/jsapi/ao;

.field private hpn:Landroid/app/ProgressDialog;

.field private hpo:Lcom/tencent/mm/ui/base/ce;

.field private hpp:Ljava/util/HashSet;

.field public hpr:Ljava/lang/String;

.field private hps:Lcom/tencent/mm/ui/tools/jsapi/e;

.field private hpt:Ljava/lang/String;

.field private hpu:Lcom/tencent/mm/pluginsdk/m;

.field private hpv:Lcom/tencent/mm/pluginsdk/n;

.field private hpw:Landroid/os/Handler;

.field private map:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/mm/ui/tools/jsapi/p;->hpl:Lcom/tencent/mm/ui/tools/jsapi/p;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    iput-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->cIr:Landroid/app/ProgressDialog;

    .line 227
    iput-boolean v1, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->dgb:Z

    .line 228
    iput-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->hpr:Ljava/lang/String;

    .line 231
    iput-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->hps:Lcom/tencent/mm/ui/tools/jsapi/e;

    .line 2163
    iput-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->hpu:Lcom/tencent/mm/pluginsdk/m;

    .line 2164
    iput-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->hpv:Lcom/tencent/mm/pluginsdk/n;

    .line 236
    iput-boolean v1, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->dgb:Z

    .line 237
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->hpp:Ljava/util/HashSet;

    .line 238
    new-instance v0, Lcom/tencent/mm/ui/tools/jsapi/e;

    invoke-direct {v0}, Lcom/tencent/mm/ui/tools/jsapi/e;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->hps:Lcom/tencent/mm/ui/tools/jsapi/e;

    .line 239
    return-void
.end method

.method public static A(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 223
    sput-object p0, Lcom/tencent/mm/ui/tools/jsapi/p;->hpq:Landroid/os/Bundle;

    .line 224
    return-void
.end method

.method private I(Lcom/tencent/mm/storage/i;)V
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 2460
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/tencent/mm/storage/i;->rj()I

    move-result v0

    if-nez v0, :cond_2

    .line 2461
    :cond_0
    const-string v0, "MicroMsg.MsgHandler"

    const-string v1, "showContact fail, contact does not exist"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2462
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->hpm:Lcom/tencent/mm/ui/tools/jsapi/ao;

    const-string v1, "add_contact:fail"

    invoke-direct {p0, v0, v1, v8}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/ao;Ljava/lang/String;Ljava/util/Map;)V

    .line 2510
    :cond_1
    :goto_0
    return-void

    .line 2466
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->context:Landroid/content/Context;

    sget v1, Lcom/tencent/mm/n;->bIk:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2467
    invoke-virtual {p1}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v0

    const/4 v2, -0x1

    invoke-static {v0, v7, v2}, Lcom/tencent/mm/m/c;->a(Ljava/lang/String;ZI)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 2468
    if-nez v2, :cond_3

    .line 2469
    invoke-static {}, Lcom/tencent/mm/m/af;->vJ()Lcom/tencent/mm/m/m;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/mm/m/m;->a(Lcom/tencent/mm/m/p;)V

    .line 2471
    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {p1}, Lcom/tencent/mm/storage/i;->aAp()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2472
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-static {v2, v7, v0}, Lcom/tencent/mm/sdk/platformtools/h;->a(Landroid/graphics/Bitmap;ZF)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 2474
    :cond_4
    invoke-virtual {p1}, Lcom/tencent/mm/storage/i;->kn()Ljava/lang/String;

    move-result-object v3

    .line 2475
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->context:Landroid/content/Context;

    sget v4, Lcom/tencent/mm/n;->bdq:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 2477
    iput-object v8, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->hpo:Lcom/tencent/mm/ui/base/ce;

    .line 2478
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->context:Landroid/content/Context;

    instance-of v0, v0, Lcom/tencent/mm/ui/MMActivity;

    if-eqz v0, :cond_5

    .line 2479
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->context:Landroid/content/Context;

    check-cast v0, Lcom/tencent/mm/ui/MMActivity;

    sget v5, Lcom/tencent/mm/n;->bhA:I

    invoke-virtual {p1}, Lcom/tencent/mm/storage/i;->aAp()Z

    move-result v6

    new-instance v7, Lcom/tencent/mm/ui/tools/jsapi/ad;

    invoke-direct {v7, p0, p1}, Lcom/tencent/mm/ui/tools/jsapi/ad;-><init>(Lcom/tencent/mm/ui/tools/jsapi/p;Lcom/tencent/mm/storage/i;)V

    invoke-static/range {v0 .. v7}, Lcom/tencent/mm/pluginsdk/ui/applet/i;->a(Lcom/tencent/mm/ui/MMActivity;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;IZLcom/tencent/mm/pluginsdk/ui/applet/r;)Lcom/tencent/mm/ui/base/ce;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->hpo:Lcom/tencent/mm/ui/base/ce;

    .line 2506
    :cond_5
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->hpo:Lcom/tencent/mm/ui/base/ce;

    if-nez v0, :cond_1

    .line 2507
    const-string v0, "MicroMsg.MsgHandler"

    const-string v1, "showContact fail, cannot show dialog"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2508
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->hpm:Lcom/tencent/mm/ui/tools/jsapi/ao;

    const-string v1, "add_contact:fail"

    invoke-direct {p0, v0, v1, v8}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/ao;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/tencent/mm/ui/tools/jsapi/p;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->hpn:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/mm/ui/tools/jsapi/p;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 120
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/mm/ui/tools/jsapi/p;Lcom/tencent/mm/storage/i;)Lcom/tencent/mm/storage/i;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->cQI:Lcom/tencent/mm/storage/i;

    return-object p1
.end method

.method private a(Lcom/tencent/mm/pluginsdk/model/app/k;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 2401
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->bOa:Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;

    if-nez v0, :cond_1

    .line 2402
    const-string v0, "MicroMsg.MsgHandler"

    const-string v1, "doSendAppMsg: but appmsg is null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2441
    :cond_0
    :goto_0
    return-void

    .line 2406
    :cond_1
    invoke-static {}, Lcom/tencent/mm/w/ag;->AZ()Lcom/tencent/mm/w/a;

    invoke-static {p4}, Lcom/tencent/mm/w/a;->fP(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2407
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2408
    const-string v1, "MicroMsg.MsgHandler"

    const-string v2, "thumb image is not null"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2409
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2410
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 2411
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->bOa:Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->thumbData:[B

    .line 2414
    :cond_2
    new-instance v1, Lcom/tencent/mm/c/a/fv;

    invoke-direct {v1}, Lcom/tencent/mm/c/a/fv;-><init>()V

    .line 2415
    iget-object v0, v1, Lcom/tencent/mm/c/a/fv;->bQp:Lcom/tencent/mm/c/a/fw;

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->bOa:Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;

    iput-object v2, v0, Lcom/tencent/mm/c/a/fw;->bOa:Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;

    .line 2416
    iget-object v0, v1, Lcom/tencent/mm/c/a/fv;->bQp:Lcom/tencent/mm/c/a/fw;

    iput-object p2, v0, Lcom/tencent/mm/c/a/fw;->appId:Ljava/lang/String;

    .line 2417
    iget-object v2, v1, Lcom/tencent/mm/c/a/fv;->bQp:Lcom/tencent/mm/c/a/fw;

    if-nez p1, :cond_4

    const-string v0, ""

    :goto_1
    iput-object v0, v2, Lcom/tencent/mm/c/a/fw;->appName:Ljava/lang/String;

    .line 2418
    iget-object v0, v1, Lcom/tencent/mm/c/a/fv;->bQp:Lcom/tencent/mm/c/a/fw;

    iput-object p3, v0, Lcom/tencent/mm/c/a/fw;->bQq:Ljava/lang/String;

    .line 2419
    iget-object v0, v1, Lcom/tencent/mm/c/a/fv;->bQp:Lcom/tencent/mm/c/a/fw;

    iput v5, v0, Lcom/tencent/mm/c/a/fw;->bQr:I

    .line 2421
    invoke-static {p5}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2422
    iget-object v0, v1, Lcom/tencent/mm/c/a/fv;->bQp:Lcom/tencent/mm/c/a/fw;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/tencent/mm/c/a/fw;->bQu:Ljava/lang/String;

    .line 2427
    :goto_2
    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/tencent/mm/sdk/b/f;->f(Lcom/tencent/mm/sdk/b/e;)Z

    .line 2429
    invoke-static {p7}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2430
    new-instance v0, Lcom/tencent/mm/c/a/fx;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/fx;-><init>()V

    .line 2431
    iget-object v1, v0, Lcom/tencent/mm/c/a/fx;->bQv:Lcom/tencent/mm/c/a/fy;

    iput-object p3, v1, Lcom/tencent/mm/c/a/fy;->bQw:Ljava/lang/String;

    .line 2432
    iget-object v1, v0, Lcom/tencent/mm/c/a/fx;->bQv:Lcom/tencent/mm/c/a/fy;

    iput-object p7, v1, Lcom/tencent/mm/c/a/fy;->content:Ljava/lang/String;

    .line 2433
    iget-object v1, v0, Lcom/tencent/mm/c/a/fx;->bQv:Lcom/tencent/mm/c/a/fy;

    invoke-static {p3}, Lcom/tencent/mm/model/w;->dd(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/tencent/mm/c/a/fy;->type:I

    .line 2434
    iget-object v1, v0, Lcom/tencent/mm/c/a/fx;->bQv:Lcom/tencent/mm/c/a/fy;

    iput v4, v1, Lcom/tencent/mm/c/a/fy;->flags:I

    .line 2435
    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/tencent/mm/sdk/b/f;->f(Lcom/tencent/mm/sdk/b/e;)Z

    .line 2438
    :cond_3
    invoke-static {p8}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2439
    sget-object v0, Lcom/tencent/mm/plugin/d/c/m;->dZN:Lcom/tencent/mm/plugin/d/c/m;

    const/16 v1, 0x28b8

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/16 v3, 0x31

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x1

    const/16 v4, 0x80

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    aput-object p8, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/plugin/d/c/m;->d(I[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 2417
    :cond_4
    iget-object v0, p1, Lcom/tencent/mm/pluginsdk/model/app/k;->field_appName:Ljava/lang/String;

    goto :goto_1

    .line 2424
    :cond_5
    iget-object v0, v1, Lcom/tencent/mm/c/a/fv;->bQp:Lcom/tencent/mm/c/a/fw;

    iput-object p5, v0, Lcom/tencent/mm/c/a/fw;->bQs:Ljava/lang/String;

    .line 2425
    iget-object v0, v1, Lcom/tencent/mm/c/a/fv;->bQp:Lcom/tencent/mm/c/a/fw;

    iput-object p6, v0, Lcom/tencent/mm/c/a/fw;->bQt:Ljava/lang/String;

    goto :goto_2
.end method

.method private a(Lcom/tencent/mm/ui/tools/jsapi/ao;Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2551
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->dgb:Z

    .line 2553
    :try_start_0
    iget-object v1, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->feu:Lcom/tencent/mm/plugin/webview/stub/ao;

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {p3}, Lcom/tencent/mm/ui/tools/jsapi/ao;->r(Ljava/util/Map;)Landroid/os/Bundle;

    move-result-object v2

    invoke-interface {v1, v0, p2, v2}, Lcom/tencent/mm/plugin/webview/stub/ao;->b(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 2557
    :goto_1
    return-void

    .line 2553
    :cond_0
    iget-object v0, p1, Lcom/tencent/mm/ui/tools/jsapi/ao;->hpK:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2554
    :catch_0
    move-exception v0

    .line 2555
    const-string v1, "MicroMsg.MsgHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onHandleEnd, ex = "

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

.method static synthetic a(Lcom/tencent/mm/ui/tools/jsapi/p;Lcom/tencent/mm/pluginsdk/model/app/k;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 120
    invoke-direct/range {p0 .. p8}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/pluginsdk/model/app/k;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/tools/jsapi/p;Lcom/tencent/mm/ui/tools/jsapi/ao;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 120
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/ao;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/tools/jsapi/p;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 120
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->hpm:Lcom/tencent/mm/ui/tools/jsapi/ao;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "fail"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/ao;Ljava/lang/String;Ljava/util/Map;)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/tencent/mm/c/a/er;

    invoke-direct {v1}, Lcom/tencent/mm/c/a/er;-><init>()V

    iget-object v2, v1, Lcom/tencent/mm/c/a/er;->bPs:Lcom/tencent/mm/c/a/es;

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->hpm:Lcom/tencent/mm/ui/tools/jsapi/ao;

    iget-object v0, v0, Lcom/tencent/mm/ui/tools/jsapi/ao;->dOk:Ljava/util/Map;

    const-string v3, "appId"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v2, Lcom/tencent/mm/c/a/es;->appId:Ljava/lang/String;

    iget-object v0, v1, Lcom/tencent/mm/c/a/er;->bPs:Lcom/tencent/mm/c/a/es;

    iput-object p2, v0, Lcom/tencent/mm/c/a/es;->url:Ljava/lang/String;

    iget-object v0, v1, Lcom/tencent/mm/c/a/er;->bPt:Lcom/tencent/mm/c/a/et;

    const/16 v2, -0x77

    iput v2, v0, Lcom/tencent/mm/c/a/et;->bLJ:I

    new-instance v0, Lcom/tencent/mm/ui/tools/jsapi/af;

    invoke-direct {v0, p0, v1, p1}, Lcom/tencent/mm/ui/tools/jsapi/af;-><init>(Lcom/tencent/mm/ui/tools/jsapi/p;Lcom/tencent/mm/c/a/er;Ljava/lang/String;)V

    iput-object v0, v1, Lcom/tencent/mm/c/a/er;->gbX:Ljava/lang/Runnable;

    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/tencent/mm/sdk/b/f;->a(Lcom/tencent/mm/sdk/b/e;Landroid/os/Looper;)V

    goto :goto_0
.end method

.method private a(Lcom/tencent/mm/ui/tools/jsapi/ao;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 1341
    iget-object v0, p1, Lcom/tencent/mm/ui/tools/jsapi/ao;->dOk:Ljava/util/Map;

    const-string v1, "fontSize"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1342
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 1343
    :cond_0
    const-string v0, "MicroMsg.MsgHandler"

    const-string v1, "doSetFontSizeCb, fontSize is null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1344
    iput-boolean v4, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->dgb:Z

    .line 1358
    :goto_0
    return v4

    .line 1348
    :cond_1
    const-string v1, "MicroMsg.MsgHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "doSetFontSizeCb, fontSize = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1351
    :try_start_0
    iget-object v1, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->feu:Lcom/tencent/mm/plugin/webview/stub/ao;

    invoke-interface {v1, v0}, Lcom/tencent/mm/plugin/webview/stub/ao;->pU(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1357
    :goto_1
    iput-boolean v4, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->dgb:Z

    goto :goto_0

    .line 1352
    :catch_0
    move-exception v0

    .line 1353
    const-string v1, "MicroMsg.MsgHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setFontSizeCb, ex = "

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

.method private a(Lcom/tencent/mm/ui/tools/jsapi/ao;Lcom/tencent/mm/protocal/JsapiPermissionWrapper;)Z
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/16 v1, 0x28

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 671
    invoke-virtual {p2}, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->avN()Z

    move-result v0

    if-nez v0, :cond_1

    .line 672
    const-string v0, "MicroMsg.MsgHandler"

    const-string v1, "doWeibo permission fail"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    const-string v0, "system:access_denied"

    invoke-direct {p0, p1, v0, v7}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/ao;Ljava/lang/String;Ljava/util/Map;)V

    .line 755
    :cond_0
    :goto_0
    return v6

    .line 677
    :cond_1
    invoke-static {}, Lcom/tencent/mm/model/v;->tK()Z

    move-result v0

    if-nez v0, :cond_2

    .line 678
    const-string v0, "MicroMsg.MsgHandler"

    const-string v1, "doWeibo fail, qq not binded"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->context:Landroid/content/Context;

    sget v1, Lcom/tencent/mm/n;->bIe:I

    sget v2, Lcom/tencent/mm/n;->ber:I

    new-instance v3, Lcom/tencent/mm/ui/tools/jsapi/ah;

    invoke-direct {v3, p0}, Lcom/tencent/mm/ui/tools/jsapi/ah;-><init>(Lcom/tencent/mm/ui/tools/jsapi/p;)V

    invoke-static {v0, v1, v2, v3, v7}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;IILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/x;

    move-result-object v0

    .line 687
    invoke-virtual {v0, v4}, Lcom/tencent/mm/ui/base/x;->setCancelable(Z)V

    .line 688
    new-instance v1, Lcom/tencent/mm/ui/tools/jsapi/ai;

    invoke-direct {v1, p0, p1}, Lcom/tencent/mm/ui/tools/jsapi/ai;-><init>(Lcom/tencent/mm/ui/tools/jsapi/p;Lcom/tencent/mm/ui/tools/jsapi/ao;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/x;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    .line 699
    :cond_2
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sz()Lcom/tencent/mm/storage/cc;

    move-result-object v0

    const-string v2, "@t.qq.com"

    invoke-virtual {v0, v2}, Lcom/tencent/mm/storage/cc;->vB(Ljava/lang/String;)Lcom/tencent/mm/storage/ca;

    move-result-object v0

    .line 700
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/tencent/mm/storage/ca;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    .line 701
    :cond_3
    const-string v0, "MicroMsg.MsgHandler"

    const-string v1, "doWeibo fail, no weibo"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->context:Landroid/content/Context;

    sget v1, Lcom/tencent/mm/n;->bIc:I

    sget v2, Lcom/tencent/mm/n;->ber:I

    new-instance v3, Lcom/tencent/mm/ui/tools/jsapi/aj;

    invoke-direct {v3, p0}, Lcom/tencent/mm/ui/tools/jsapi/aj;-><init>(Lcom/tencent/mm/ui/tools/jsapi/p;)V

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;IILandroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/x;

    move-result-object v0

    .line 708
    invoke-virtual {v0, v4}, Lcom/tencent/mm/ui/base/x;->setCancelable(Z)V

    .line 709
    new-instance v1, Lcom/tencent/mm/ui/tools/jsapi/ak;

    invoke-direct {v1, p0, p1}, Lcom/tencent/mm/ui/tools/jsapi/ak;-><init>(Lcom/tencent/mm/ui/tools/jsapi/p;Lcom/tencent/mm/ui/tools/jsapi/ao;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/x;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    .line 720
    :cond_4
    iget-object v0, p1, Lcom/tencent/mm/ui/tools/jsapi/ao;->dOk:Ljava/util/Map;

    const-string v2, "type"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "40"

    invoke-static {v0, v2}, Lcom/tencent/mm/sdk/platformtools/cj;->R(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 723
    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_a

    .line 725
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 731
    :goto_1
    const/16 v2, 0xb

    if-eq v0, v2, :cond_9

    const/16 v2, 0x14

    if-eq v0, v2, :cond_9

    move v2, v1

    .line 735
    :goto_2
    iget-object v0, p1, Lcom/tencent/mm/ui/tools/jsapi/ao;->dOk:Ljava/util/Map;

    const-string v1, "content"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 736
    iget-object v1, p1, Lcom/tencent/mm/ui/tools/jsapi/ao;->dOk:Ljava/util/Map;

    const-string v3, "url"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 737
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_6

    .line 738
    :cond_5
    const-string v0, ""

    .line 739
    :cond_6
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_8

    .line 740
    :cond_7
    const-string v2, "MicroMsg.MsgHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "doWeibo fail, invalid argument, content = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", url = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    const-string v0, "share_weibo:fail_-2"

    invoke-direct {p0, p1, v0, v7}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/ao;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 727
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_1

    .line 745
    :cond_8
    iget-object v3, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->feu:Lcom/tencent/mm/plugin/webview/stub/ao;

    const-string v4, "shareWeibo"

    const-string v5, "shareWeibo"

    invoke-direct {p0, v5}, Lcom/tencent/mm/ui/tools/jsapi/p;->xS(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v3, v4, v5, v7}, Lcom/tencent/mm/ui/tools/jsapi/at;->a(Lcom/tencent/mm/plugin/webview/stub/ao;Ljava/lang/String;ZLjava/lang/String;)V

    .line 747
    invoke-static {v1}, Lcom/tencent/mm/plugin/webview/b/e;->pT(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 748
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->context:Landroid/content/Context;

    const-class v5, Lcom/tencent/mm/ui/tools/jsapi/ShareToQQWeiboUI;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 749
    const-string v4, "type"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 750
    const-string v2, "shortUrl"

    invoke-virtual {v3, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 751
    const-string v1, "content"

    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 752
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->context:Landroid/content/Context;

    instance-of v0, v0, Lcom/tencent/mm/ui/MMActivity;

    if-eqz v0, :cond_0

    .line 753
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->context:Landroid/content/Context;

    check-cast v0, Lcom/tencent/mm/ui/MMActivity;

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v3, v1}, Lcom/tencent/mm/ui/MMActivity;->a(Lcom/tencent/mm/ui/br;Landroid/content/Intent;I)V

    goto/16 :goto_0

    :cond_9
    move v2, v0

    goto/16 :goto_2

    :cond_a
    move v0, v1

    goto/16 :goto_1
.end method

.method private a(Ljava/lang/Integer;ILandroid/content/Intent;)Z
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1505
    const-string v0, "key_product_scene"

    invoke-virtual {p3, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1506
    const-string v0, "MicroMsg.MsgHandler"

    const-string v1, "doOpenProductView, productType = %d"

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1507
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->context:Landroid/content/Context;

    instance-of v0, v0, Lcom/tencent/mm/ui/MMActivity;

    if-eqz v0, :cond_0

    .line 1508
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->context:Landroid/content/Context;

    check-cast v0, Lcom/tencent/mm/ui/MMActivity;

    invoke-virtual {v0, p0}, Lcom/tencent/mm/ui/MMActivity;->a(Lcom/tencent/mm/ui/br;)V

    .line 1509
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1522
    const-string v0, "MicroMsg.MsgHandler"

    const-string v1, "doOpenProductView fail, productType = %d"

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1523
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->hpm:Lcom/tencent/mm/ui/tools/jsapi/ao;

    const-string v1, "open_product_view:fail"

    invoke-direct {p0, v0, v1, v4}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/ao;Ljava/lang/String;Ljava/util/Map;)V

    .line 1529
    :goto_0
    return v3

    .line 1511
    :pswitch_0
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->context:Landroid/content/Context;

    const-string v1, "mall"

    const-string v2, ".product.ui.MallProductUI"

    invoke-static {v0, v1, v2, p3}, Lcom/tencent/mm/ak/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    .line 1512
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->hpm:Lcom/tencent/mm/ui/tools/jsapi/ao;

    const-string v1, "open_product_view:ok"

    invoke-direct {p0, v0, v1, v4}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/ao;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 1517
    :pswitch_1
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->context:Landroid/content/Context;

    const-string v1, "card"

    const-string v2, ".ui.CardProductUI"

    invoke-static {v0, v1, v2, p3}, Lcom/tencent/mm/ak/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    .line 1518
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->hpm:Lcom/tencent/mm/ui/tools/jsapi/ao;

    const-string v1, "open_product_view:ok"

    invoke-direct {p0, v0, v1, v4}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/ao;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 1509
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private a(ZLcom/tencent/mm/protocal/JsapiPermissionWrapper;)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 1165
    if-eqz p1, :cond_0

    .line 1167
    invoke-virtual {p2}, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->avY()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1168
    const-string v1, "MicroMsg.MsgHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "doShareBtnVisible permission fail, visible = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1169
    iget-object v1, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->hpm:Lcom/tencent/mm/ui/tools/jsapi/ao;

    const-string v2, "system:access_denied"

    invoke-direct {p0, v1, v2, v5}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/ao;Ljava/lang/String;Ljava/util/Map;)V

    .line 1196
    :goto_0
    return v0

    .line 1173
    :cond_0
    invoke-virtual {p2}, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->avX()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1174
    const-string v1, "MicroMsg.MsgHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "doShareBtnVisible permission fail, visible = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1175
    iget-object v1, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->hpm:Lcom/tencent/mm/ui/tools/jsapi/ao;

    const-string v2, "system:access_denied"

    invoke-direct {p0, v1, v2, v5}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/ao;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 1181
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->feu:Lcom/tencent/mm/plugin/webview/stub/ao;

    invoke-interface {v0, p1}, Lcom/tencent/mm/plugin/webview/stub/ao;->cb(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1192
    :goto_1
    iget-object v2, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->feu:Lcom/tencent/mm/plugin/webview/stub/ao;

    if-eqz p1, :cond_2

    const-string v0, "showOptionMenu"

    :goto_2
    invoke-static {v2, v0, v1, v5}, Lcom/tencent/mm/ui/tools/jsapi/at;->a(Lcom/tencent/mm/plugin/webview/stub/ao;Ljava/lang/String;ZLjava/lang/String;)V

    .line 1195
    iput-boolean v1, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->dgb:Z

    move v0, v1

    .line 1196
    goto :goto_0

    .line 1182
    :catch_0
    move-exception v0

    .line 1183
    const-string v2, "MicroMsg.MsgHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "setShareBtnVisible, ex = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1192
    :cond_2
    const-string v0, "hideOptionMenu"

    goto :goto_2
.end method

.method public static aOA()Lcom/tencent/mm/ui/tools/jsapi/p;
    .locals 2

    .prologue
    .line 125
    sget-object v0, Lcom/tencent/mm/ui/tools/jsapi/p;->hpl:Lcom/tencent/mm/ui/tools/jsapi/p;

    if-eqz v0, :cond_0

    .line 126
    sget-object v0, Lcom/tencent/mm/ui/tools/jsapi/p;->hpl:Lcom/tencent/mm/ui/tools/jsapi/p;

    .line 135
    :goto_0
    return-object v0

    .line 129
    :cond_0
    const-class v1, Lcom/tencent/mm/ui/tools/jsapi/p;

    monitor-enter v1

    .line 130
    :try_start_0
    sget-object v0, Lcom/tencent/mm/ui/tools/jsapi/p;->hpl:Lcom/tencent/mm/ui/tools/jsapi/p;

    if-nez v0, :cond_1

    .line 131
    new-instance v0, Lcom/tencent/mm/ui/tools/jsapi/p;

    invoke-direct {v0}, Lcom/tencent/mm/ui/tools/jsapi/p;-><init>()V

    sput-object v0, Lcom/tencent/mm/ui/tools/jsapi/p;->hpl:Lcom/tencent/mm/ui/tools/jsapi/p;

    .line 133
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    sget-object v0, Lcom/tencent/mm/ui/tools/jsapi/p;->hpl:Lcom/tencent/mm/ui/tools/jsapi/p;

    goto :goto_0

    .line 133
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic aOB()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 120
    sget-object v0, Lcom/tencent/mm/ui/tools/jsapi/p;->hpq:Landroid/os/Bundle;

    return-object v0
.end method

.method public static aoZ()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 254
    sget-object v0, Lcom/tencent/mm/ui/tools/jsapi/p;->hpq:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 255
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sput-object v0, Lcom/tencent/mm/ui/tools/jsapi/p;->hpq:Landroid/os/Bundle;

    .line 257
    :cond_0
    sget-object v0, Lcom/tencent/mm/ui/tools/jsapi/p;->hpq:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic b(Lcom/tencent/mm/ui/tools/jsapi/p;)Lcom/tencent/mm/ui/tools/jsapi/ao;
    .locals 1
    .parameter

    .prologue
    .line 120
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->hpm:Lcom/tencent/mm/ui/tools/jsapi/ao;

    return-object v0
.end method

.method static synthetic b(Lcom/tencent/mm/ui/tools/jsapi/p;Lcom/tencent/mm/storage/i;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/tencent/mm/ui/tools/jsapi/p;->I(Lcom/tencent/mm/storage/i;)V

    return-void
.end method

.method private b(Lcom/tencent/mm/ui/tools/jsapi/ao;Lcom/tencent/mm/protocal/JsapiPermissionWrapper;)Z
    .locals 13
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 759
    invoke-virtual {p2}, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->avO()Z

    move-result v0

    if-nez v0, :cond_0

    .line 760
    const-string v0, "MicroMsg.MsgHandler"

    const-string v1, "doTimeline permission fail"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    const-string v0, "system:access_denied"

    invoke-direct {p0, p1, v0, v2}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/ao;Ljava/lang/String;Ljava/util/Map;)V

    .line 826
    :goto_0
    return v9

    .line 765
    :cond_0
    iget-object v0, p1, Lcom/tencent/mm/ui/tools/jsapi/ao;->dOk:Ljava/util/Map;

    const-string v1, "link"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 766
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 767
    :cond_1
    const-string v0, "MicroMsg.MsgHandler"

    const-string v1, "doTimeline fail, link is null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 768
    const-string v0, "share_timeline:fail"

    invoke-direct {p0, p1, v0, v2}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/ao;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 772
    :cond_2
    iget-object v1, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->feu:Lcom/tencent/mm/plugin/webview/stub/ao;

    const-string v2, "shareTimeline"

    const-string v3, "shareTimeline"

    invoke-direct {p0, v3}, Lcom/tencent/mm/ui/tools/jsapi/p;->xS(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v1, v2, v3, v0}, Lcom/tencent/mm/ui/tools/jsapi/at;->a(Lcom/tencent/mm/plugin/webview/stub/ao;Ljava/lang/String;ZLjava/lang/String;)V

    .line 774
    iget-object v0, p1, Lcom/tencent/mm/ui/tools/jsapi/ao;->dOk:Ljava/util/Map;

    const-string v1, "desc"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 776
    :cond_3
    :goto_1
    const-string v1, "MicroMsg.MsgHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "doTimeline, img_url = "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/tencent/mm/ui/tools/jsapi/ao;->dOk:Ljava/util/Map;

    const-string v3, "img_url"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", title = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p1, Lcom/tencent/mm/ui/tools/jsapi/ao;->dOk:Ljava/util/Map;

    const-string v3, "title"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", desc = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p1, Lcom/tencent/mm/ui/tools/jsapi/ao;->dOk:Ljava/util/Map;

    const-string v3, "desc"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 780
    const-string v0, ""

    .line 781
    sget-object v1, Lcom/tencent/mm/ui/tools/jsapi/p;->hpq:Landroid/os/Bundle;

    if-eqz v1, :cond_8

    .line 782
    sget-object v0, Lcom/tencent/mm/ui/tools/jsapi/p;->hpq:Landroid/os/Bundle;

    const-string v1, "snsWebSource"

    invoke-virtual {v0, v1, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 783
    sget-object v0, Lcom/tencent/mm/ui/tools/jsapi/p;->hpq:Landroid/os/Bundle;

    const-string v2, "jsapi_args_appid"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    move v8, v1

    .line 785
    :goto_2
    iget-object v0, p1, Lcom/tencent/mm/ui/tools/jsapi/ao;->dOk:Ljava/util/Map;

    const-string v1, "img_width"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 786
    iget-object v1, p1, Lcom/tencent/mm/ui/tools/jsapi/ao;->dOk:Ljava/util/Map;

    const-string v2, "img_height"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 787
    iget-object v2, p1, Lcom/tencent/mm/ui/tools/jsapi/ao;->dOk:Ljava/util/Map;

    const-string v3, "link"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 788
    invoke-static {v2}, Lcom/tencent/mm/plugin/webview/b/e;->pT(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 789
    const-string v3, "MicroMsg.MsgHandler"

    const-string v4, "doTimeline, rawUrl:[%s], shareUrl:[%s]"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v10

    aput-object v12, v5, v9

    invoke-static {v3, v4, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 790
    iget-object v2, p1, Lcom/tencent/mm/ui/tools/jsapi/ao;->dOk:Ljava/util/Map;

    const-string v3, "type"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 791
    iget-object v3, p1, Lcom/tencent/mm/ui/tools/jsapi/ao;->dOk:Ljava/util/Map;

    const-string v4, "desc"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 792
    iget-object v3, p1, Lcom/tencent/mm/ui/tools/jsapi/ao;->dOk:Ljava/util/Map;

    const-string v4, "title"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 793
    iget-object v4, p1, Lcom/tencent/mm/ui/tools/jsapi/ao;->dOk:Ljava/util/Map;

    const-string v5, "img_url"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 794
    iget-object v5, p1, Lcom/tencent/mm/ui/tools/jsapi/ao;->dOk:Ljava/util/Map;

    const-string v6, "src_username"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 795
    iget-object v6, p1, Lcom/tencent/mm/ui/tools/jsapi/ao;->dOk:Ljava/util/Map;

    const-string v11, "src_displayname"

    invoke-interface {v6, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 796
    const/4 v11, -0x1

    .line 798
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 799
    :try_start_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 804
    :goto_3
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 805
    const-string v11, "Ksnsupload_width"

    invoke-virtual {v1, v11, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 806
    const-string v11, "Ksnsupload_height"

    invoke-virtual {v1, v11, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 807
    const-string v0, "Ksnsupload_link"

    invoke-virtual {v1, v0, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 808
    const-string v0, "Ksnsupload_title"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 809
    const-string v0, "Ksnsupload_imgurl"

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 810
    const-string v0, "src_username"

    invoke-virtual {v1, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 811
    const-string v0, "src_displayname"

    invoke-virtual {v1, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 812
    const-string v0, "Ksnsupload_source"

    invoke-virtual {v1, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 813
    const-string v0, "Ksnsupload_type"

    invoke-virtual {v1, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 814
    invoke-static {v2}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "music"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 815
    const-string v0, "ksnsis_music"

    invoke-virtual {v1, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 817
    :cond_4
    invoke-static {v2}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "video"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 818
    const-string v0, "ksnsis_video"

    invoke-virtual {v1, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 820
    :cond_5
    if-eqz v7, :cond_6

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_6

    .line 821
    const-string v0, "Ksnsupload_appid"

    invoke-virtual {v1, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 824
    :cond_6
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->context:Landroid/content/Context;

    const-string v2, "sns"

    const-string v3, ".ui.SnsUploadUI"

    invoke-static {v0, v2, v3, v1, v10}, Lcom/tencent/mm/ak/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Z)V

    .line 825
    iput-boolean v10, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->dgb:Z

    move v9, v10

    .line 826
    goto/16 :goto_0

    .line 774
    :cond_7
    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    goto/16 :goto_1

    :catch_0
    move-exception v0

    move v0, v11

    goto/16 :goto_3

    :catch_1
    move-exception v1

    goto/16 :goto_3

    :cond_8
    move-object v7, v0

    move v8, v9

    goto/16 :goto_2
.end method

.method private b(Lcom/tencent/mm/ui/tools/jsapi/ao;Lcom/tencent/mm/protocal/JsapiPermissionWrapper;Ljava/util/ArrayList;)Z
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x1

    .line 1533
    invoke-virtual {p2}, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->awl()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1534
    const-string v0, "MicroMsg.MsgHandler"

    const-string v1, "doEditAddress permission fail"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1535
    const-string v0, "system:access_denied"

    invoke-direct {p0, p1, v0, v3}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/ao;Ljava/lang/String;Ljava/util/Map;)V

    .line 1573
    :goto_0
    return v6

    .line 1539
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->feu:Lcom/tencent/mm/plugin/webview/stub/ao;

    const-string v1, "editAddress"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/mm/ui/tools/jsapi/at;->a(Lcom/tencent/mm/plugin/webview/stub/ao;Ljava/lang/String;ZLjava/lang/String;)V

    .line 1540
    const-string v0, "MicroMsg.MsgHandler"

    const-string v1, "doEditAddress JSOAUTH"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1542
    const-string v1, ""

    .line 1544
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->feu:Lcom/tencent/mm/plugin/webview/stub/ao;

    invoke-interface {v0}, Lcom/tencent/mm/plugin/webview/stub/ao;->aoR()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1549
    :goto_1
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->hps:Lcom/tencent/mm/ui/tools/jsapi/e;

    const-string v2, "editAddress"

    new-instance v5, Lcom/tencent/mm/ui/tools/jsapi/t;

    invoke-direct {v5, p0, p1}, Lcom/tencent/mm/ui/tools/jsapi/t;-><init>(Lcom/tencent/mm/ui/tools/jsapi/p;Lcom/tencent/mm/ui/tools/jsapi/ao;)V

    move-object v3, p1

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/mm/ui/tools/jsapi/e;->a(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/mm/ui/tools/jsapi/ao;Ljava/util/ArrayList;Lcom/tencent/mm/ui/tools/jsapi/h;)V

    goto :goto_0

    .line 1545
    :catch_0
    move-exception v0

    .line 1546
    const-string v2, "MicroMsg.MsgHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "JSOAUTH exception in get currentUrl"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private b(ZLcom/tencent/mm/protocal/JsapiPermissionWrapper;)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 1200
    if-eqz p1, :cond_0

    .line 1202
    invoke-virtual {p2}, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->avW()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1203
    const-string v1, "MicroMsg.MsgHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "doFooterBarVisible permission fail, visible = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1204
    iget-object v1, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->hpm:Lcom/tencent/mm/ui/tools/jsapi/ao;

    const-string v2, "system:access_denied"

    invoke-direct {p0, v1, v2, v5}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/ao;Ljava/lang/String;Ljava/util/Map;)V

    .line 1231
    :goto_0
    return v0

    .line 1208
    :cond_0
    invoke-virtual {p2}, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->avV()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1209
    const-string v1, "MicroMsg.MsgHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "doFooterBarVisible permission fail, visible = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1210
    iget-object v1, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->hpm:Lcom/tencent/mm/ui/tools/jsapi/ao;

    const-string v2, "system:access_denied"

    invoke-direct {p0, v1, v2, v5}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/ao;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 1216
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->feu:Lcom/tencent/mm/plugin/webview/stub/ao;

    invoke-interface {v0, p1}, Lcom/tencent/mm/plugin/webview/stub/ao;->cc(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1227
    :goto_1
    iget-object v2, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->feu:Lcom/tencent/mm/plugin/webview/stub/ao;

    if-eqz p1, :cond_2

    const-string v0, "showToolbar"

    :goto_2
    invoke-static {v2, v0, v1, v5}, Lcom/tencent/mm/ui/tools/jsapi/at;->a(Lcom/tencent/mm/plugin/webview/stub/ao;Ljava/lang/String;ZLjava/lang/String;)V

    .line 1230
    iput-boolean v1, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->dgb:Z

    move v0, v1

    .line 1231
    goto :goto_0

    .line 1217
    :catch_0
    move-exception v0

    .line 1218
    const-string v2, "MicroMsg.MsgHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "setFooterBarVisible, ex = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1227
    :cond_2
    const-string v0, "hideToolbar"

    goto :goto_2
.end method

.method static synthetic c(Lcom/tencent/mm/ui/tools/jsapi/p;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 120
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->cIr:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private c(Lcom/tencent/mm/ui/tools/jsapi/ao;Lcom/tencent/mm/protocal/JsapiPermissionWrapper;)Z
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 849
    invoke-virtual {p2}, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->avP()Z

    move-result v0

    if-nez v0, :cond_1

    .line 850
    const-string v0, "MicroMsg.MsgHandler"

    const-string v1, "doAddContact permission fail"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 851
    const-string v0, "system:access_denied"

    invoke-direct {p0, p1, v0, v6}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/ao;Ljava/lang/String;Ljava/util/Map;)V

    .line 921
    :cond_0
    :goto_0
    return v5

    .line 855
    :cond_1
    iget-object v0, p1, Lcom/tencent/mm/ui/tools/jsapi/ao;->dOk:Ljava/util/Map;

    const-string v1, "webtype"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 856
    iget-object v1, p1, Lcom/tencent/mm/ui/tools/jsapi/ao;->dOk:Ljava/util/Map;

    const-string v2, "username"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 857
    iget-object v2, p1, Lcom/tencent/mm/ui/tools/jsapi/ao;->dOk:Ljava/util/Map;

    const-string v3, "scene"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 859
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3

    .line 860
    :cond_2
    const-string v2, "MicroMsg.MsgHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "doAddContact fail, invalid arguments, webType = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", username = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 861
    const-string v0, "add_contact:fail"

    invoke-direct {p0, p1, v0, v6}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/ao;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 864
    :cond_3
    invoke-static {v2}, Lcom/tencent/mm/ui/tools/jsapi/p;->xR(Ljava/lang/String;)V

    .line 866
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 875
    iget-object v2, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->feu:Lcom/tencent/mm/plugin/webview/stub/ao;

    const-string v3, "addContact"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, v1}, Lcom/tencent/mm/ui/tools/jsapi/at;->a(Lcom/tencent/mm/plugin/webview/stub/ao;Ljava/lang/String;ZLjava/lang/String;)V

    .line 877
    packed-switch v0, :pswitch_data_0

    .line 916
    const-string v1, "MicroMsg.MsgHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unknown addScene = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    const-string v0, "add_contact:fail"

    invoke-direct {p0, p1, v0, v6}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/ao;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 870
    :catch_0
    move-exception v1

    const-string v1, "MicroMsg.MsgHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "doAddContact fail, parseInt fail, str = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 871
    const-string v0, "add_contact:fail"

    invoke-direct {p0, p1, v0, v6}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/ao;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 879
    :pswitch_0
    iput-object v1, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->hpt:Ljava/lang/String;

    .line 880
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/k;->tO(Ljava/lang/String;)Lcom/tencent/mm/storage/i;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->cQI:Lcom/tencent/mm/storage/i;

    .line 882
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->cQI:Lcom/tencent/mm/storage/i;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->rj()I

    move-result v0

    if-lez v0, :cond_8

    .line 883
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->cQI:Lcom/tencent/mm/storage/i;

    if-nez v0, :cond_4

    const-string v0, "MicroMsg.MsgHandler"

    const-string v1, "dealAddContact fail, contact is null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->hpm:Lcom/tencent/mm/ui/tools/jsapi/ao;

    const-string v1, "add_contact:fail"

    invoke-direct {p0, v0, v1, v6}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/ao;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v1}, Lcom/tencent/mm/storage/i;->aAp()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {}, Lcom/tencent/mm/p/ab;->ye()Lcom/tencent/mm/p/k;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/p/k;->eG(Ljava/lang/String;)Lcom/tencent/mm/p/a;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/tencent/mm/p/a;->xA()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->context:Landroid/content/Context;

    sget v3, Lcom/tencent/mm/n;->ber:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->context:Landroid/content/Context;

    sget v3, Lcom/tencent/mm/n;->bIl:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5, v6}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)Lcom/tencent/mm/ui/base/ch;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->hpn:Landroid/app/ProgressDialog;

    invoke-static {}, Lcom/tencent/mm/model/ar;->tZ()Lcom/tencent/mm/model/at;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/ui/tools/jsapi/am;

    invoke-direct {v2, p0}, Lcom/tencent/mm/ui/tools/jsapi/am;-><init>(Lcom/tencent/mm/ui/tools/jsapi/p;)V

    invoke-interface {v1, v0, v2}, Lcom/tencent/mm/model/at;->a(Ljava/lang/String;Lcom/tencent/mm/model/au;)V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/tencent/mm/h;->adA:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->context:Landroid/content/Context;

    instance-of v0, v0, Lcom/tencent/mm/ui/MMActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->context:Landroid/content/Context;

    check-cast v0, Lcom/tencent/mm/ui/MMActivity;

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/tencent/mm/n;->bIo:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/tencent/mm/ui/tools/jsapi/an;

    invoke-direct {v3, p0}, Lcom/tencent/mm/ui/tools/jsapi/an;-><init>(Lcom/tencent/mm/ui/tools/jsapi/p;)V

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/mm/pluginsdk/ui/applet/i;->a(Landroid/app/Activity;Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/tencent/mm/pluginsdk/ui/applet/r;)Lcom/tencent/mm/ui/base/ce;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "MicroMsg.MsgHandler"

    const-string v1, "dealAddContact fail, connot show dialog"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->hpm:Lcom/tencent/mm/ui/tools/jsapi/ao;

    const-string v1, "add_contact:fail"

    invoke-direct {p0, v0, v1, v6}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/ao;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->rb()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/tencent/mm/n;->bIm:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/base/h;->an(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->hpm:Lcom/tencent/mm/ui/tools/jsapi/ao;

    const-string v1, "add_contact:added"

    invoke-direct {p0, v0, v1, v6}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/ao;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->cQI:Lcom/tencent/mm/storage/i;

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/tools/jsapi/p;->I(Lcom/tencent/mm/storage/i;)V

    goto/16 :goto_0

    .line 885
    :cond_8
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->context:Landroid/content/Context;

    sget v3, Lcom/tencent/mm/n;->ber:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->context:Landroid/content/Context;

    sget v3, Lcom/tencent/mm/n;->bIl:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v5, v6}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)Lcom/tencent/mm/ui/base/ch;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->hpn:Landroid/app/ProgressDialog;

    .line 886
    invoke-static {}, Lcom/tencent/mm/model/ar;->tZ()Lcom/tencent/mm/model/at;

    move-result-object v0

    new-instance v2, Lcom/tencent/mm/ui/tools/jsapi/al;

    invoke-direct {v2, p0, p1}, Lcom/tencent/mm/ui/tools/jsapi/al;-><init>(Lcom/tencent/mm/ui/tools/jsapi/p;Lcom/tencent/mm/ui/tools/jsapi/ao;)V

    invoke-interface {v0, v1, v2}, Lcom/tencent/mm/model/at;->a(Ljava/lang/String;Lcom/tencent/mm/model/au;)V

    goto/16 :goto_0

    .line 877
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private c(Lcom/tencent/mm/ui/tools/jsapi/ao;Lcom/tencent/mm/protocal/JsapiPermissionWrapper;Ljava/util/ArrayList;)Z
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 1615
    invoke-virtual {p2}, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->awm()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1616
    const-string v0, "MicroMsg.MsgHandler"

    const-string v1, "doGetLatestAddress permission fail"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1617
    const-string v0, "system:access_denied"

    invoke-direct {p0, p1, v0, v2}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/ao;Ljava/lang/String;Ljava/util/Map;)V

    .line 1649
    :goto_0
    return v6

    .line 1620
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->feu:Lcom/tencent/mm/plugin/webview/stub/ao;

    const-string v1, "getLatestAddress"

    invoke-static {v0, v1, v5, v2}, Lcom/tencent/mm/ui/tools/jsapi/at;->a(Lcom/tencent/mm/plugin/webview/stub/ao;Ljava/lang/String;ZLjava/lang/String;)V

    .line 1621
    const-string v0, "MicroMsg.MsgHandler"

    const-string v1, "doGetLatestAddress JSOAUTH"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1623
    const-string v1, ""

    .line 1625
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->feu:Lcom/tencent/mm/plugin/webview/stub/ao;

    invoke-interface {v0}, Lcom/tencent/mm/plugin/webview/stub/ao;->aoR()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1631
    :goto_1
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->hps:Lcom/tencent/mm/ui/tools/jsapi/e;

    const-string v2, "getLatestAddress"

    new-instance v5, Lcom/tencent/mm/ui/tools/jsapi/u;

    invoke-direct {v5, p0, v1, p1}, Lcom/tencent/mm/ui/tools/jsapi/u;-><init>(Lcom/tencent/mm/ui/tools/jsapi/p;Ljava/lang/String;Lcom/tencent/mm/ui/tools/jsapi/ao;)V

    move-object v3, p1

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/mm/ui/tools/jsapi/e;->a(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/mm/ui/tools/jsapi/ao;Ljava/util/ArrayList;Lcom/tencent/mm/ui/tools/jsapi/h;)V

    goto :goto_0

    .line 1626
    :catch_0
    move-exception v0

    .line 1627
    const-string v2, "MicroMsg.MsgHandler"

    const-string v3, "JSOAUTH exception in get currentUrl %s"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method static synthetic d(Lcom/tencent/mm/ui/tools/jsapi/p;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 120
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->hpt:Ljava/lang/String;

    return-object v0
.end method

.method private d(Lcom/tencent/mm/ui/tools/jsapi/ao;Lcom/tencent/mm/protocal/JsapiPermissionWrapper;)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1270
    invoke-virtual {p2}, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->awa()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1271
    const-string v0, "MicroMsg.MsgHandler"

    const-string v1, "doCloseWindow permission fail"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1272
    const-string v0, "system:access_denied"

    invoke-direct {p0, p1, v0, v4}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/ao;Ljava/lang/String;Ljava/util/Map;)V

    .line 1297
    :goto_0
    return v5

    .line 1284
    :cond_0
    :try_start_0
    iget-object v0, p1, Lcom/tencent/mm/ui/tools/jsapi/ao;->dOk:Ljava/util/Map;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/jsapi/ao;->r(Ljava/util/Map;)Landroid/os/Bundle;

    move-result-object v0

    .line 1285
    iget-object v1, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->feu:Lcom/tencent/mm/plugin/webview/stub/ao;

    invoke-interface {v1}, Lcom/tencent/mm/plugin/webview/stub/ao;->aoX()V

    .line 1286
    iget-object v1, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->feu:Lcom/tencent/mm/plugin/webview/stub/ao;

    invoke-interface {v1, v0}, Lcom/tencent/mm/plugin/webview/stub/ao;->n(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1291
    :goto_1
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->feu:Lcom/tencent/mm/plugin/webview/stub/ao;

    const-string v1, "closeWindow"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v4}, Lcom/tencent/mm/ui/tools/jsapi/at;->a(Lcom/tencent/mm/plugin/webview/stub/ao;Ljava/lang/String;ZLjava/lang/String;)V

    .line 1295
    const-string v0, "close_window:ok"

    invoke-direct {p0, p1, v0, v4}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/ao;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 1287
    :catch_0
    move-exception v0

    .line 1288
    const-string v1, "MicroMsg.MsgHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "doCloseWindow, ex = "

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

.method private d(Lcom/tencent/mm/ui/tools/jsapi/ao;Lcom/tencent/mm/protocal/JsapiPermissionWrapper;Ljava/util/ArrayList;)Z
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x1

    .line 2118
    invoke-virtual {p2}, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->awG()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2119
    const-string v0, "MicroMsg.MsgHandler"

    const-string v1, "doGeoLocation permission fail"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2120
    const-string v0, "system:access_denied"

    invoke-direct {p0, p1, v0, v3}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/ao;Ljava/lang/String;Ljava/util/Map;)V

    .line 2159
    :goto_0
    return v6

    .line 2123
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->feu:Lcom/tencent/mm/plugin/webview/stub/ao;

    const-string v1, "geoLocation"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/mm/ui/tools/jsapi/at;->a(Lcom/tencent/mm/plugin/webview/stub/ao;Ljava/lang/String;ZLjava/lang/String;)V

    .line 2125
    invoke-static {}, Lcom/tencent/mm/pluginsdk/h;->apt()Lcom/tencent/mm/pluginsdk/m;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->hpu:Lcom/tencent/mm/pluginsdk/m;

    .line 2126
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->hpu:Lcom/tencent/mm/pluginsdk/m;

    if-nez v0, :cond_1

    .line 2127
    const-string v0, "MicroMsg.MsgHandler"

    const-string v1, "doGeoLocation fail, iGetLocation is null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2128
    const-string v0, "geo_location:fail"

    invoke-direct {p0, p1, v0, v3}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/ao;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 2132
    :cond_1
    const-string v1, ""

    .line 2134
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->feu:Lcom/tencent/mm/plugin/webview/stub/ao;

    invoke-interface {v0}, Lcom/tencent/mm/plugin/webview/stub/ao;->aoR()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2139
    :goto_1
    const-string v0, "MicroMsg.MsgHandler"

    const-string v2, "doGeoLocation JSOAuth"

    invoke-static {v0, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2141
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->hps:Lcom/tencent/mm/ui/tools/jsapi/e;

    const-string v2, "geoLocation"

    new-instance v5, Lcom/tencent/mm/ui/tools/jsapi/w;

    invoke-direct {v5, p0, p1}, Lcom/tencent/mm/ui/tools/jsapi/w;-><init>(Lcom/tencent/mm/ui/tools/jsapi/p;Lcom/tencent/mm/ui/tools/jsapi/ao;)V

    move-object v3, p1

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/mm/ui/tools/jsapi/e;->a(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/mm/ui/tools/jsapi/ao;Ljava/util/ArrayList;Lcom/tencent/mm/ui/tools/jsapi/h;)V

    goto :goto_0

    .line 2135
    :catch_0
    move-exception v0

    .line 2136
    const-string v2, "MicroMsg.MsgHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "JSOAUTH exception in get currentUrl"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic e(Lcom/tencent/mm/ui/tools/jsapi/p;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 120
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->hpn:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private e(Lcom/tencent/mm/ui/tools/jsapi/ao;Lcom/tencent/mm/protocal/JsapiPermissionWrapper;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1457
    invoke-virtual {p2}, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->avL()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1458
    const-string v0, "MicroMsg.MsgHandler"

    const-string v1, "doOpenProductView permission fail"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1459
    const-string v0, "system:access_denied"

    invoke-direct {p0, p1, v0, v2}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/ao;Ljava/lang/String;Ljava/util/Map;)V

    .line 1460
    const/4 v0, 0x1

    .line 1481
    :goto_0
    return v0

    .line 1463
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->feu:Lcom/tencent/mm/plugin/webview/stub/ao;

    const-string v1, "openProductView"

    invoke-static {v0, v1, v3, v2}, Lcom/tencent/mm/ui/tools/jsapi/at;->a(Lcom/tencent/mm/plugin/webview/stub/ao;Ljava/lang/String;ZLjava/lang/String;)V

    .line 1464
    const-string v0, "MicroMsg.MsgHandler"

    const-string v1, "doOpenProductView"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1466
    iget-object v0, p1, Lcom/tencent/mm/ui/tools/jsapi/ao;->dOk:Ljava/util/Map;

    const-string v1, "productInfo"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1467
    iget-object v1, p1, Lcom/tencent/mm/ui/tools/jsapi/ao;->dOk:Ljava/util/Map;

    const-string v2, "url"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1468
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1470
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1472
    const-string v4, "product_type"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1474
    :goto_1
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1478
    const-string v4, "key_product_info"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1479
    const-string v0, "key_source_url"

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1481
    const/4 v0, 0x3

    invoke-direct {p0, v2, v0, v3}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Ljava/lang/Integer;ILandroid/content/Intent;)Z

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method static synthetic f(Lcom/tencent/mm/ui/tools/jsapi/p;)Lcom/tencent/mm/storage/i;
    .locals 1
    .parameter

    .prologue
    .line 120
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->cQI:Lcom/tencent/mm/storage/i;

    return-object v0
.end method

.method private f(Lcom/tencent/mm/ui/tools/jsapi/ao;Lcom/tencent/mm/protocal/JsapiPermissionWrapper;)Z
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x2

    const/4 v2, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1913
    invoke-virtual {p2}, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->awA()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1914
    const-string v0, "MicroMsg.MsgHandler"

    const-string v1, "doLaunch3RdApp permission fail"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1915
    const-string v0, "system:access_denied"

    invoke-direct {p0, p1, v0, v7}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/ao;Ljava/lang/String;Ljava/util/Map;)V

    .line 2008
    :goto_0
    return v6

    .line 1919
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->feu:Lcom/tencent/mm/plugin/webview/stub/ao;

    const-string v1, "launch3rdApp"

    invoke-static {v0, v1, v2, v7}, Lcom/tencent/mm/ui/tools/jsapi/at;->a(Lcom/tencent/mm/plugin/webview/stub/ao;Ljava/lang/String;ZLjava/lang/String;)V

    .line 1921
    iget-object v0, p1, Lcom/tencent/mm/ui/tools/jsapi/ao;->dOk:Ljava/util/Map;

    const-string v1, "type"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1924
    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1926
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1931
    :goto_1
    const-string v3, "MicroMsg.MsgHandler"

    const-string v4, "doLaunch3RdApp launchType = %s"

    new-array v5, v6, [Ljava/lang/Object;

    aput-object v0, v5, v2

    invoke-static {v3, v4, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1932
    if-nez v1, :cond_4

    .line 1933
    iget-object v0, p1, Lcom/tencent/mm/ui/tools/jsapi/ao;->dOk:Ljava/util/Map;

    const-string v1, "appID"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1934
    iget-object v1, p1, Lcom/tencent/mm/ui/tools/jsapi/ao;->dOk:Ljava/util/Map;

    const-string v3, "extInfo"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1936
    const-string v3, "MicroMsg.MsgHandler"

    const-string v4, "doLaunch3RdApp, appid:[%s], extinfo:[%s]"

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v0, v5, v2

    aput-object v1, v5, v6

    invoke-static {v3, v4, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1938
    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1939
    const-string v0, "MicroMsg.MsgHandler"

    const-string v1, "appid is null or nil"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1940
    const-string v0, "launch_3rdApp:fail"

    invoke-direct {p0, p1, v0, v7}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/ao;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 1927
    :catch_0
    move-exception v1

    .line 1928
    const-string v3, "MicroMsg.MsgHandler"

    const-string v4, "invalid type"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v2

    invoke-static {v3, v4, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    move v1, v2

    goto :goto_1

    .line 1944
    :cond_2
    sget-object v3, Lcom/tencent/mm/plugin/webview/a/a;->cHT:Lcom/tencent/mm/pluginsdk/d;

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Lcom/tencent/mm/pluginsdk/d;->g(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1945
    const-string v1, "MicroMsg.MsgHandler"

    const-string v3, "app is not installed, appid:[%s]"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v0, v4, v2

    invoke-static {v1, v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1946
    const-string v0, "launch_3rdApp:fail"

    invoke-direct {p0, p1, v0, v7}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/ao;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 1950
    :cond_3
    new-instance v2, Lcom/tencent/mm/sdk/modelmsg/WXAppExtendObject;

    invoke-direct {v2}, Lcom/tencent/mm/sdk/modelmsg/WXAppExtendObject;-><init>()V

    .line 1951
    iput-object v1, v2, Lcom/tencent/mm/sdk/modelmsg/WXAppExtendObject;->extInfo:Ljava/lang/String;

    .line 1953
    new-instance v1, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;

    invoke-direct {v1, v2}, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;-><init>(Lcom/tencent/mm/sdk/modelmsg/p;)V

    .line 1954
    const v2, 0x22010003

    iput v2, v1, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->sdkVer:I

    .line 1956
    new-instance v2, Lcom/tencent/mm/c/a/cy;

    invoke-direct {v2}, Lcom/tencent/mm/c/a/cy;-><init>()V

    .line 1957
    iget-object v3, v2, Lcom/tencent/mm/c/a/cy;->bNZ:Lcom/tencent/mm/c/a/cz;

    iput-object v1, v3, Lcom/tencent/mm/c/a/cz;->bOa:Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;

    .line 1958
    iget-object v1, v2, Lcom/tencent/mm/c/a/cy;->bNZ:Lcom/tencent/mm/c/a/cz;

    iput-object v0, v1, Lcom/tencent/mm/c/a/cz;->appId:Ljava/lang/String;

    .line 1960
    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/tencent/mm/sdk/b/f;->f(Lcom/tencent/mm/sdk/b/e;)Z

    .line 1961
    const-string v0, "launch_3rdApp:ok"

    invoke-direct {p0, p1, v0, v7}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/ao;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 1964
    :cond_4
    if-ne v1, v6, :cond_a

    .line 1965
    iget-object v0, p1, Lcom/tencent/mm/ui/tools/jsapi/ao;->dOk:Ljava/util/Map;

    const-string v1, "signature"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1966
    iget-object v1, p1, Lcom/tencent/mm/ui/tools/jsapi/ao;->dOk:Ljava/util/Map;

    const-string v3, "packageName"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1968
    const-string v3, "MicroMsg.MsgHandler"

    const-string v4, "doLaunch3RdApp, signature:[%s], packageName:[%s]"

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v0, v5, v2

    aput-object v1, v5, v6

    invoke-static {v3, v4, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1970
    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-static {v1}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1971
    :cond_5
    const-string v0, "MicroMsg.MsgHandler"

    const-string v1, "doLaunch3RdApp invalid_args"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1972
    const-string v0, "launch_3rdApp:fail_invalid_args"

    invoke-direct {p0, p1, v0, v7}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/ao;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 1975
    :cond_6
    iget-object v3, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->context:Landroid/content/Context;

    invoke-static {v3, v1}, Lcom/tencent/mm/pluginsdk/model/app/u;->g(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 1976
    const-string v0, "MicroMsg.MsgHandler"

    const-string v1, "doLaunch3RdApp not_install"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1977
    const-string v0, "launch_3rdApp:fail_not_install"

    invoke-direct {p0, p1, v0, v7}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/ao;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 1980
    :cond_7
    iget-object v3, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->context:Landroid/content/Context;

    invoke-static {v3, v1}, Lcom/tencent/mm/pluginsdk/model/app/u;->af(Landroid/content/Context;Ljava/lang/String;)[Landroid/content/pm/Signature;

    move-result-object v3

    .line 1981
    if-eqz v3, :cond_9

    aget-object v4, v3, v2

    if-eqz v4, :cond_9

    .line 1982
    aget-object v3, v3, v2

    invoke-virtual {v3}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/mm/a/f;->h([B)Ljava/lang/String;

    move-result-object v3

    .line 1983
    if-eqz v3, :cond_9

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1986
    :try_start_1
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1987
    if-eqz v0, :cond_8

    .line 1988
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1989
    invoke-static {v1}, Lcom/tencent/mm/pluginsdk/model/app/u;->t(Landroid/os/Bundle;)V

    .line 1990
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1991
    iget-object v1, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1993
    const-string v0, "launch_3rdApp:ok"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/ao;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 1996
    :catch_1
    move-exception v0

    .line 1997
    const-string v1, "MicroMsg.MsgHandler"

    const-string v3, "doLaunch3RdApp getLaunchIntentForPackage, %s"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    invoke-static {v1, v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1999
    :cond_8
    const-string v0, "launch_3rdApp:fail"

    invoke-direct {p0, p1, v0, v7}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/ao;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 2003
    :cond_9
    const-string v0, "MicroMsg.MsgHandler"

    const-string v1, "doLaunch3RdApp signature_mismatch"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2004
    const-string v0, "launch_3rdApp:fail_signature_mismatch"

    invoke-direct {p0, p1, v0, v7}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/ao;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 2007
    :cond_a
    const-string v0, "launch_3rdApp:fail_invalid_type"

    invoke-direct {p0, p1, v0, v7}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/ao;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0
.end method

.method static synthetic g(Lcom/tencent/mm/ui/tools/jsapi/p;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 120
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->map:Ljava/util/Map;

    return-object v0
.end method

.method private g(Lcom/tencent/mm/ui/tools/jsapi/ao;Lcom/tencent/mm/protocal/JsapiPermissionWrapper;)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2089
    invoke-virtual {p2}, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->awD()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2090
    const-string v0, "MicroMsg.MsgHandler"

    const-string v1, "doOpenUrlByExtBrowser permission fail"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2091
    const-string v0, "system:access_denied"

    invoke-direct {p0, p1, v0, v4}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/ao;Ljava/lang/String;Ljava/util/Map;)V

    .line 2114
    :goto_0
    return v5

    .line 2094
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->feu:Lcom/tencent/mm/plugin/webview/stub/ao;

    const-string v1, "openUrlByExtBrowser"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v4}, Lcom/tencent/mm/ui/tools/jsapi/at;->a(Lcom/tencent/mm/plugin/webview/stub/ao;Ljava/lang/String;ZLjava/lang/String;)V

    .line 2096
    iget-object v0, p1, Lcom/tencent/mm/ui/tools/jsapi/ao;->dOk:Ljava/util/Map;

    const-string v1, "url"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2097
    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2098
    const-string v0, "MicroMsg.MsgHandler"

    const-string v1, "doOpenUrlByExtBrowser fail, url is null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2099
    const-string v0, "open_url_by_ext_browser:fail"

    invoke-direct {p0, p1, v0, v4}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/ao;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 2103
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2104
    const/high16 v0, 0x1000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2107
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2108
    const-string v0, "open_url_by_ext_browser:ok"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/ao;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2109
    :catch_0
    move-exception v0

    .line 2110
    const-string v1, "MicroMsg.MsgHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "doOpenUrlByExtBrowser fail, e = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2111
    const-string v0, "open_url_by_ext_browser:fail"

    invoke-direct {p0, p1, v0, v4}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/ao;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method static synthetic h(Lcom/tencent/mm/ui/tools/jsapi/p;)V
    .locals 4
    .parameter

    .prologue
    .line 120
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->hpv:Lcom/tencent/mm/pluginsdk/n;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/mm/ui/tools/jsapi/x;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/tools/jsapi/x;-><init>(Lcom/tencent/mm/ui/tools/jsapi/p;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->hpv:Lcom/tencent/mm/pluginsdk/n;

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->hpw:Landroid/os/Handler;

    if-nez v0, :cond_1

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->hpw:Landroid/os/Handler;

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->hpw:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/mm/ui/tools/jsapi/y;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/tools/jsapi/y;-><init>(Lcom/tencent/mm/ui/tools/jsapi/p;)V

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->hpu:Lcom/tencent/mm/pluginsdk/m;

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->hpv:Lcom/tencent/mm/pluginsdk/n;

    invoke-interface {v0, v1}, Lcom/tencent/mm/pluginsdk/m;->a(Lcom/tencent/mm/pluginsdk/n;)V

    return-void
.end method

.method static synthetic i(Lcom/tencent/mm/ui/tools/jsapi/p;)Lcom/tencent/mm/pluginsdk/m;
    .locals 1
    .parameter

    .prologue
    .line 120
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->hpu:Lcom/tencent/mm/pluginsdk/m;

    return-object v0
.end method

.method static synthetic j(Lcom/tencent/mm/ui/tools/jsapi/p;)Lcom/tencent/mm/pluginsdk/n;
    .locals 1
    .parameter

    .prologue
    .line 120
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->hpv:Lcom/tencent/mm/pluginsdk/n;

    return-object v0
.end method

.method static synthetic k(Lcom/tencent/mm/ui/tools/jsapi/p;)Lcom/tencent/mm/pluginsdk/n;
    .locals 1
    .parameter

    .prologue
    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->hpv:Lcom/tencent/mm/pluginsdk/n;

    return-object v0
.end method

.method static synthetic l(Lcom/tencent/mm/ui/tools/jsapi/p;)Lcom/tencent/mm/ui/base/ce;
    .locals 1
    .parameter

    .prologue
    .line 120
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->hpo:Lcom/tencent/mm/ui/base/ce;

    return-object v0
.end method

.method private static xR(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 273
    sget-object v0, Lcom/tencent/mm/ui/tools/jsapi/p;->hpq:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 274
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sput-object v0, Lcom/tencent/mm/ui/tools/jsapi/p;->hpq:Landroid/os/Bundle;

    .line 276
    :cond_0
    const/16 v0, 0x21

    invoke-static {p0, v0}, Lcom/tencent/mm/sdk/platformtools/cj;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 277
    sget-object v1, Lcom/tencent/mm/ui/tools/jsapi/p;->hpq:Landroid/os/Bundle;

    const-string v2, "Contact_Scene"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 278
    return-void
.end method

.method private xS(Ljava/lang/String;)Z
    .locals 3
    .parameter

    .prologue
    .line 290
    const-string v0, "MicroMsg.MsgHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getFromMenu, functionName = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->hpp:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->hpp:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 294
    const/4 v0, 0x1

    .line 296
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/tencent/mm/plugin/webview/stub/ao;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 242
    iput-object p1, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->context:Landroid/content/Context;

    .line 243
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->hps:Lcom/tencent/mm/ui/tools/jsapi/e;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->hps:Lcom/tencent/mm/ui/tools/jsapi/e;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/ui/tools/jsapi/e;->setContext(Landroid/content/Context;)V

    .line 246
    :cond_0
    iput-object p2, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->feu:Lcom/tencent/mm/plugin/webview/stub/ao;

    .line 247
    return-void
.end method

.method public final a(ZZLjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 2445
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->hpn:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 2446
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->hpn:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 2449
    :cond_0
    if-eqz p1, :cond_1

    .line 2450
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->qI()V

    .line 2451
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v1}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/storage/k;->a(Ljava/lang/String;Lcom/tencent/mm/storage/i;)I

    .line 2452
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/tencent/mm/n;->bIm:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/base/h;->an(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    .line 2453
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->hpm:Lcom/tencent/mm/ui/tools/jsapi/ao;

    const-string v1, "add_contact:ok"

    invoke-direct {p0, v0, v1, v3}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/ao;Ljava/lang/String;Ljava/util/Map;)V

    .line 2457
    :goto_0
    return-void

    .line 2455
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->hpm:Lcom/tencent/mm/ui/tools/jsapi/ao;

    const-string v1, "add_contact:fail"

    invoke-direct {p0, v0, v1, v3}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/ao;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public final a(Lcom/tencent/mm/ui/tools/jsapi/ao;Lcom/tencent/mm/protocal/JsapiPermissionWrapper;Ljava/util/ArrayList;)Z
    .locals 15
    .parameter
    .parameter
    .parameter

    .prologue
    .line 306
    iget-boolean v1, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->dgb:Z

    if-eqz v1, :cond_0

    .line 307
    const-string v1, "MicroMsg.MsgHandler"

    const-string v2, "handleMsg, MsgHandler is busy, old msg will be overrided"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    :cond_0
    const-string v2, "MicroMsg.MsgHandler"

    const-string v3, "handleMsg, msg function = %s, scopeList size = %d"

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/tencent/mm/ui/tools/jsapi/ao;->function:Ljava/lang/String;

    aput-object v5, v4, v1

    const/4 v5, 0x1

    if-nez p3, :cond_2

    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-static {v2, v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 311
    move-object/from16 v0, p1

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->hpm:Lcom/tencent/mm/ui/tools/jsapi/ao;

    .line 312
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->dgb:Z

    .line 314
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/tencent/mm/ui/tools/jsapi/ao;->type:Ljava/lang/String;

    const-string v2, "call"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_77

    .line 315
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/tencent/mm/ui/tools/jsapi/ao;->function:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->hpr:Ljava/lang/String;

    .line 317
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/tencent/mm/ui/tools/jsapi/ao;->function:Ljava/lang/String;

    const-string v2, "sendAppMessage"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 318
    invoke-virtual/range {p2 .. p2}, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->avQ()Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "MicroMsg.MsgHandler"

    const-string v2, "doSendAppMessage permission fail"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "system:access_denied"

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v1, v2}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/ao;Ljava/lang/String;Ljava/util/Map;)V

    :cond_1
    :goto_1
    const/4 v1, 0x1

    .line 444
    :goto_2
    return v1

    .line 310
    :cond_2
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    goto :goto_0

    .line 318
    :cond_3
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/tencent/mm/ui/tools/jsapi/ao;->dOk:Ljava/util/Map;

    const-string v2, "link"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_5

    :cond_4
    const-string v1, "MicroMsg.MsgHandler"

    const-string v2, "convert fail, link is null"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_3
    iput-object v1, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->bOa:Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->bOa:Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;

    if-nez v1, :cond_6

    const-string v1, "MicroMsg.MsgHandler"

    const-string v2, "doSendAppMsg fail, appmsg is null"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "send_app_msg:fail"

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v1, v2}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/ao;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1

    :cond_5
    invoke-static {v1}, Lcom/tencent/mm/plugin/webview/b/e;->pT(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "MicroMsg.MsgHandler"

    const-string v4, "rawurl:[%s], shareurl:[%s]"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v1, 0x1

    aput-object v2, v5, v1

    invoke-static {v3, v4, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Lcom/tencent/mm/sdk/modelmsg/WXWebpageObject;

    invoke-direct {v1}, Lcom/tencent/mm/sdk/modelmsg/WXWebpageObject;-><init>()V

    iput-object v2, v1, Lcom/tencent/mm/sdk/modelmsg/WXWebpageObject;->webpageUrl:Ljava/lang/String;

    new-instance v2, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;

    invoke-direct {v2}, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;-><init>()V

    iput-object v1, v2, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->mediaObject:Lcom/tencent/mm/sdk/modelmsg/p;

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/tencent/mm/ui/tools/jsapi/ao;->dOk:Ljava/util/Map;

    const-string v3, "title"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v2, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->title:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/tencent/mm/ui/tools/jsapi/ao;->dOk:Ljava/util/Map;

    const-string v3, "desc"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v2, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->description:Ljava/lang/String;

    move-object v1, v2

    goto :goto_3

    :cond_6
    iget-object v1, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->feu:Lcom/tencent/mm/plugin/webview/stub/ao;

    const-string v2, "sendAppMessage"

    const-string v3, "sendAppMessage"

    invoke-direct {p0, v3}, Lcom/tencent/mm/ui/tools/jsapi/p;->xS(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/tencent/mm/ui/tools/jsapi/at;->a(Lcom/tencent/mm/plugin/webview/stub/ao;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/ui/tools/jsapi/p;->aoZ()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "scene"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/tencent/mm/ui/tools/jsapi/p;->aoZ()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "scene"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v2, "MicroMsg.MsgHandler"

    const-string v3, "send appmsg scene is \'%s\'"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v2, v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v2, "connector"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {}, Lcom/tencent/mm/ui/tools/jsapi/p;->aoZ()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "connector_local_send"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/tencent/mm/ui/tools/jsapi/p;->aoZ()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "connector_local_send"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/ui/tools/jsapi/p;->aoZ()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "connector_local_report"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "MicroMsg.MsgHandler"

    const-string v3, "directly send to %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v2, v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x1

    const/4 v3, -0x1

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string v5, "Select_Conv_User"

    invoke-virtual {v4, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v2, v3, v1}, Lcom/tencent/mm/ui/tools/jsapi/p;->b(IILandroid/content/Intent;)V

    goto/16 :goto_1

    :cond_7
    const-string v2, "favorite"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const-string v1, "MicroMsg.MsgHandler"

    const-string v2, "favorite url"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/tencent/mm/c/a/x;

    invoke-direct {v2}, Lcom/tencent/mm/c/a/x;-><init>()V

    new-instance v3, Lcom/tencent/mm/plugin/webview/b/b;

    invoke-direct {v3}, Lcom/tencent/mm/plugin/webview/b/b;-><init>()V

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->hpm:Lcom/tencent/mm/ui/tools/jsapi/ao;

    iget-object v1, v1, Lcom/tencent/mm/ui/tools/jsapi/ao;->dOk:Ljava/util/Map;

    const-string v4, "link"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/mm/plugin/webview/b/e;->pT(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "MicroMsg.MsgHandler"

    const-string v6, "rawurl:[%s], shareurl:[%s]"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    const/4 v1, 0x1

    aput-object v4, v7, v1

    invoke-static {v5, v6, v7}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object v4, v3, Lcom/tencent/mm/plugin/webview/b/b;->url:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->hpm:Lcom/tencent/mm/ui/tools/jsapi/ao;

    iget-object v1, v1, Lcom/tencent/mm/ui/tools/jsapi/ao;->dOk:Ljava/util/Map;

    const-string v4, "img_url"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v3, Lcom/tencent/mm/plugin/webview/b/b;->dqp:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->hpm:Lcom/tencent/mm/ui/tools/jsapi/ao;

    iget-object v1, v1, Lcom/tencent/mm/ui/tools/jsapi/ao;->dOk:Ljava/util/Map;

    const-string v4, "title"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v3, Lcom/tencent/mm/plugin/webview/b/b;->title:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->hpm:Lcom/tencent/mm/ui/tools/jsapi/ao;

    iget-object v1, v1, Lcom/tencent/mm/ui/tools/jsapi/ao;->dOk:Ljava/util/Map;

    const-string v4, "desc"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v3, Lcom/tencent/mm/plugin/webview/b/b;->desc:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->hpm:Lcom/tencent/mm/ui/tools/jsapi/ao;

    iget-object v1, v1, Lcom/tencent/mm/ui/tools/jsapi/ao;->dOk:Ljava/util/Map;

    const-string v4, "appid"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v3, Lcom/tencent/mm/plugin/webview/b/b;->bNG:Ljava/lang/String;

    iget-object v1, v3, Lcom/tencent/mm/plugin/webview/b/b;->url:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    const/4 v1, 0x1

    :goto_4
    if-nez v1, :cond_9

    const-string v1, "MicroMsg.GetFavDataSource"

    const-string v3, "fill favorite event fail, event is null or wrapper is invalid"

    invoke-static {v1, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v2, Lcom/tencent/mm/c/a/x;->bMl:Lcom/tencent/mm/c/a/y;

    sget v3, Lcom/tencent/mm/n;->bkG:I

    iput v3, v1, Lcom/tencent/mm/c/a/y;->type:I

    const/4 v1, 0x0

    :goto_5
    if-eqz v1, :cond_b

    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/tencent/mm/sdk/b/f;->f(Lcom/tencent/mm/sdk/b/e;)Z

    iget-object v1, v2, Lcom/tencent/mm/c/a/x;->bMm:Lcom/tencent/mm/c/a/z;

    iget v1, v1, Lcom/tencent/mm/c/a/z;->ret:I

    if-nez v1, :cond_a

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->context:Landroid/content/Context;

    sget v3, Lcom/tencent/mm/n;->bli:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/ui/base/h;->an(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    const-string v1, "send_app_msg:ok"

    :goto_6
    iget-object v2, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->hpm:Lcom/tencent/mm/ui/tools/jsapi/ao;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v1, v3}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/ao;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_1

    :cond_8
    const/4 v1, 0x0

    goto :goto_4

    :cond_9
    new-instance v1, Lcom/tencent/mm/protocal/a/fx;

    invoke-direct {v1}, Lcom/tencent/mm/protocal/a/fx;-><init>()V

    new-instance v4, Lcom/tencent/mm/protocal/a/fy;

    invoke-direct {v4}, Lcom/tencent/mm/protocal/a/fy;-><init>()V

    new-instance v5, Lcom/tencent/mm/protocal/a/ft;

    invoke-direct {v5}, Lcom/tencent/mm/protocal/a/ft;-><init>()V

    iget-object v6, v3, Lcom/tencent/mm/plugin/webview/b/b;->url:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/tencent/mm/protocal/a/ft;->rD(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/ft;

    iget-object v6, v3, Lcom/tencent/mm/plugin/webview/b/b;->title:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/tencent/mm/protocal/a/ft;->rx(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/ft;

    iget-object v6, v3, Lcom/tencent/mm/plugin/webview/b/b;->desc:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/tencent/mm/protocal/a/ft;->ry(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/ft;

    iget-object v6, v3, Lcom/tencent/mm/plugin/webview/b/b;->dqp:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/tencent/mm/protocal/a/ft;->rG(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/ft;

    invoke-virtual {v5}, Lcom/tencent/mm/protocal/a/ft;->axy()Lcom/tencent/mm/protocal/a/ft;

    invoke-virtual {v5}, Lcom/tencent/mm/protocal/a/ft;->axA()Lcom/tencent/mm/protocal/a/ft;

    invoke-static {}, Lcom/tencent/mm/model/v;->th()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/tencent/mm/protocal/a/fy;->sa(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/fy;

    invoke-static {}, Lcom/tencent/mm/model/v;->th()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/tencent/mm/protocal/a/fy;->sb(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/fy;

    const/4 v6, 0x3

    invoke-virtual {v4, v6}, Lcom/tencent/mm/protocal/a/fy;->ls(I)Lcom/tencent/mm/protocal/a/fy;

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/cj;->FD()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/tencent/mm/protocal/a/fy;->bM(J)Lcom/tencent/mm/protocal/a/fy;

    iget-object v6, v3, Lcom/tencent/mm/plugin/webview/b/b;->bNG:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/tencent/mm/protocal/a/fy;->sg(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/fy;

    iget-object v3, v3, Lcom/tencent/mm/plugin/webview/b/b;->url:Ljava/lang/String;

    invoke-virtual {v4, v3}, Lcom/tencent/mm/protocal/a/fy;->sh(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/fy;

    iget-object v3, v2, Lcom/tencent/mm/c/a/x;->bMl:Lcom/tencent/mm/c/a/y;

    invoke-virtual {v5}, Lcom/tencent/mm/protocal/a/ft;->getTitle()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/tencent/mm/c/a/y;->title:Ljava/lang/String;

    iget-object v3, v2, Lcom/tencent/mm/c/a/x;->bMl:Lcom/tencent/mm/c/a/y;

    iput-object v1, v3, Lcom/tencent/mm/c/a/y;->bMn:Lcom/tencent/mm/protocal/a/fx;

    iget-object v3, v2, Lcom/tencent/mm/c/a/x;->bMl:Lcom/tencent/mm/c/a/y;

    const/4 v6, 0x5

    iput v6, v3, Lcom/tencent/mm/c/a/y;->type:I

    invoke-virtual {v1, v4}, Lcom/tencent/mm/protocal/a/fx;->a(Lcom/tencent/mm/protocal/a/fy;)Lcom/tencent/mm/protocal/a/fx;

    iget-object v1, v1, Lcom/tencent/mm/protocal/a/fx;->fHP:Ljava/util/LinkedList;

    invoke-virtual {v1, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    goto/16 :goto_5

    :cond_a
    iget-object v1, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->context:Landroid/content/Context;

    sget v2, Lcom/tencent/mm/n;->bkN:I

    sget v3, Lcom/tencent/mm/n;->bkF:I

    invoke-static {v1, v2, v3}, Lcom/tencent/mm/ui/base/h;->c(Landroid/content/Context;II)Lcom/tencent/mm/ui/base/x;

    const-string v1, "send_app_msg:fail"

    goto :goto_6

    :cond_b
    iget-object v1, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->context:Landroid/content/Context;

    sget v2, Lcom/tencent/mm/n;->bkN:I

    sget v3, Lcom/tencent/mm/n;->bkF:I

    invoke-static {v1, v2, v3}, Lcom/tencent/mm/ui/base/h;->c(Landroid/content/Context;II)Lcom/tencent/mm/ui/base/x;

    const-string v1, "send_app_msg:fail"

    goto/16 :goto_6

    :cond_c
    const-string v1, "MicroMsg.MsgHandler"

    const-string v2, "select user to send"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v1, "Select_Conv_Type"

    const/4 v3, 0x3

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->context:Landroid/content/Context;

    instance-of v1, v1, Lcom/tencent/mm/ui/MMActivity;

    if-eqz v1, :cond_1

    sget-object v3, Lcom/tencent/mm/plugin/webview/a/a;->cHS:Lcom/tencent/mm/pluginsdk/e;

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->context:Landroid/content/Context;

    check-cast v1, Lcom/tencent/mm/ui/MMActivity;

    invoke-interface {v3, v2, p0, v1}, Lcom/tencent/mm/pluginsdk/e;->a(Landroid/content/Intent;Lcom/tencent/mm/ui/br;Lcom/tencent/mm/ui/MMActivity;)V

    goto/16 :goto_1

    .line 320
    :cond_d
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/tencent/mm/ui/tools/jsapi/ao;->function:Ljava/lang/String;

    const-string v2, "profile"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 321
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/tencent/mm/ui/tools/jsapi/ao;->dOk:Ljava/util/Map;

    const-string v2, "username"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/tencent/mm/ui/tools/jsapi/ao;->dOk:Ljava/util/Map;

    const-string v3, "scene"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/tencent/mm/ui/tools/jsapi/p;->xR(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {p0, v1, v0}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Ljava/lang/String;Lcom/tencent/mm/protocal/JsapiPermissionWrapper;)Z

    move-result v1

    goto/16 :goto_2

    .line 323
    :cond_e
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/tencent/mm/ui/tools/jsapi/ao;->function:Ljava/lang/String;

    const-string v2, "shareWeibo"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 324
    invoke-direct/range {p0 .. p2}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/ao;Lcom/tencent/mm/protocal/JsapiPermissionWrapper;)Z

    move-result v1

    goto/16 :goto_2

    .line 326
    :cond_f
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/tencent/mm/ui/tools/jsapi/ao;->function:Ljava/lang/String;

    const-string v2, "shareTimeline"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 327
    invoke-direct/range {p0 .. p2}, Lcom/tencent/mm/ui/tools/jsapi/p;->b(Lcom/tencent/mm/ui/tools/jsapi/ao;Lcom/tencent/mm/protocal/JsapiPermissionWrapper;)Z

    move-result v1

    goto/16 :goto_2

    .line 329
    :cond_10
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/tencent/mm/ui/tools/jsapi/ao;->function:Ljava/lang/String;

    const-string v2, "addContact"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 330
    invoke-direct/range {p0 .. p2}, Lcom/tencent/mm/ui/tools/jsapi/p;->c(Lcom/tencent/mm/ui/tools/jsapi/ao;Lcom/tencent/mm/protocal/JsapiPermissionWrapper;)Z

    move-result v1

    goto/16 :goto_2

    .line 332
    :cond_11
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/tencent/mm/ui/tools/jsapi/ao;->function:Ljava/lang/String;

    const-string v2, "imagePreview"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 333
    invoke-virtual/range {p2 .. p2}, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->avJ()Z

    move-result v1

    if-nez v1, :cond_12

    const-string v1, "MicroMsg.MsgHandler"

    const-string v2, "doImgPreview permission fail"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "system:access_denied"

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v1, v2}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/ao;Ljava/lang/String;Ljava/util/Map;)V

    const/4 v1, 0x1

    goto/16 :goto_2

    :cond_12
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/tencent/mm/ui/tools/jsapi/ao;->dOk:Ljava/util/Map;

    const-string v2, "current"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/tencent/mm/ui/tools/jsapi/ao;->dOk:Ljava/util/Map;

    const-string v3, "urls"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    if-eqz v2, :cond_13

    array-length v3, v2

    if-nez v3, :cond_14

    :cond_13
    const-string v1, "MicroMsg.MsgHandler"

    const-string v2, "doImgPreview fail, urls is null"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->dgb:Z

    const/4 v1, 0x0

    goto/16 :goto_2

    :cond_14
    iget-object v3, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->feu:Lcom/tencent/mm/plugin/webview/stub/ao;

    const-string v4, "imagePreview"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Lcom/tencent/mm/ui/tools/jsapi/at;->a(Lcom/tencent/mm/plugin/webview/stub/ao;Ljava/lang/String;ZLjava/lang/String;)V

    if-eqz v1, :cond_15

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_16

    :cond_15
    const/4 v1, 0x0

    aget-object v1, v2, v1

    :cond_16
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "nowUrl"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "urlList"

    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "type"

    const/16 v2, -0xff

    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->context:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Service;

    if-eqz v1, :cond_17

    const/high16 v1, 0x1000

    invoke-virtual {v3, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_17
    sget-object v1, Lcom/tencent/mm/plugin/webview/a/a;->cHS:Lcom/tencent/mm/pluginsdk/e;

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->context:Landroid/content/Context;

    invoke-interface {v1, v3, v2}, Lcom/tencent/mm/pluginsdk/e;->p(Landroid/content/Intent;Landroid/content/Context;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->dgb:Z

    const/4 v1, 0x0

    goto/16 :goto_2

    .line 335
    :cond_18
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/tencent/mm/ui/tools/jsapi/ao;->function:Ljava/lang/String;

    const-string v2, "log"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 336
    invoke-virtual/range {p2 .. p2}, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->avI()Z

    move-result v1

    if-nez v1, :cond_19

    const-string v1, "MicroMsg.MsgHandler"

    const-string v2, "doLog permission fail"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "system:access_denied"

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v1, v2}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/ao;Ljava/lang/String;Ljava/util/Map;)V

    const/4 v1, 0x1

    goto/16 :goto_2

    :cond_19
    iget-object v1, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->feu:Lcom/tencent/mm/plugin/webview/stub/ao;

    const-string v2, "log"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/tencent/mm/ui/tools/jsapi/at;->a(Lcom/tencent/mm/plugin/webview/stub/ao;Ljava/lang/String;ZLjava/lang/String;)V

    const-string v1, "MicroMsg.MsgHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "jslog : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/tencent/mm/ui/tools/jsapi/ao;->dOk:Ljava/util/Map;

    const-string v4, "msg"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->dgb:Z

    const/4 v1, 0x0

    goto/16 :goto_2

    .line 338
    :cond_1a
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/tencent/mm/ui/tools/jsapi/ao;->function:Ljava/lang/String;

    const-string v2, "addEmoticon"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 339
    invoke-virtual/range {p2 .. p2}, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->avS()Z

    move-result v1

    if-nez v1, :cond_1b

    const-string v1, "MicroMsg.MsgHandler"

    const-string v2, "doAddEmoticon permission fail"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "system:access_denied"

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v1, v2}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/ao;Ljava/lang/String;Ljava/util/Map;)V

    const/4 v1, 0x1

    goto/16 :goto_2

    :cond_1b
    invoke-static {}, Lcom/tencent/mm/pluginsdk/h;->apj()Lcom/tencent/mm/pluginsdk/i;

    move-result-object v1

    invoke-interface {v1}, Lcom/tencent/mm/pluginsdk/i;->KS()Z

    move-result v1

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->context:Landroid/content/Context;

    sget v3, Lcom/tencent/mm/n;->bjU:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/x;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/ui/tools/jsapi/r;

    move-object/from16 v0, p1

    invoke-direct {v2, p0, v0}, Lcom/tencent/mm/ui/tools/jsapi/r;-><init>(Lcom/tencent/mm/ui/tools/jsapi/p;Lcom/tencent/mm/ui/tools/jsapi/ao;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    const/4 v1, 0x1

    goto/16 :goto_2

    :cond_1c
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/tencent/mm/ui/tools/jsapi/ao;->dOk:Ljava/util/Map;

    const-string v2, "url"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/tencent/mm/ui/tools/jsapi/ao;->dOk:Ljava/util/Map;

    const-string v2, "thumb_url"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/tencent/mm/ui/tools/jsapi/ao;->dOk:Ljava/util/Map;

    const-string v2, "appid"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v4}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1d

    invoke-static {v5}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    :cond_1d
    const-string v1, "MicroMsg.MsgHandler"

    const-string v2, "doAddEmotIcon fail,invalid arguments,no EmotUrl or thumb_url"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "add_emoticon:no_url"

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v1, v2}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/ao;Ljava/lang/String;Ljava/util/Map;)V

    const/4 v1, 0x1

    goto/16 :goto_2

    :cond_1e
    iget-object v1, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->map:Ljava/util/Map;

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->map:Ljava/util/Map;

    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    const-string v1, "MicroMsg.MsgHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "doAddEmotIcon ing,wait emotUrl : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->dgb:Z

    const/4 v1, 0x0

    goto/16 :goto_2

    :cond_1f
    const-string v1, "MicroMsg.MsgHandler"

    const-string v2, "doAddEmotIcon begin"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->map:Ljava/util/Map;

    if-nez v1, :cond_20

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->map:Ljava/util/Map;

    :cond_20
    iget-object v1, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->feu:Lcom/tencent/mm/plugin/webview/stub/ao;

    const-string v2, "addEmoticon"

    const/4 v3, 0x0

    const/4 v7, 0x0

    invoke-static {v1, v2, v3, v7}, Lcom/tencent/mm/ui/tools/jsapi/at;->a(Lcom/tencent/mm/plugin/webview/stub/ao;Ljava/lang/String;ZLjava/lang/String;)V

    new-instance v1, Lcom/tencent/mm/ui/tools/jsapi/b;

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->feu:Lcom/tencent/mm/plugin/webview/stub/ao;

    move-object/from16 v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/tencent/mm/ui/tools/jsapi/b;-><init>(Lcom/tencent/mm/plugin/webview/stub/ao;Lcom/tencent/mm/ui/tools/jsapi/ao;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/tencent/mm/ui/tools/jsapi/s;

    invoke-direct {v2, p0, v4}, Lcom/tencent/mm/ui/tools/jsapi/s;-><init>(Lcom/tencent/mm/ui/tools/jsapi/p;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/tencent/mm/ui/tools/jsapi/b;->a(Lcom/tencent/mm/ui/tools/jsapi/c;)V

    invoke-virtual {v1}, Lcom/tencent/mm/ui/tools/jsapi/b;->start()V

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->map:Ljava/util/Map;

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    goto/16 :goto_2

    .line 341
    :cond_21
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/tencent/mm/ui/tools/jsapi/ao;->function:Ljava/lang/String;

    const-string v2, "hasEmoticon"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 342
    invoke-virtual/range {p2 .. p2}, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->avT()Z

    move-result v1

    if-nez v1, :cond_22

    const-string v1, "MicroMsg.MsgHandler"

    const-string v2, "doHasEmoticon permission fail"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "system:access_denied"

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v1, v2}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/ao;Ljava/lang/String;Ljava/util/Map;)V

    const/4 v1, 0x1

    goto/16 :goto_2

    :cond_22
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/tencent/mm/ui/tools/jsapi/ao;->dOk:Ljava/util/Map;

    const-string v2, "url"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_23

    const-string v2, "MicroMsg.MsgHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "doHasEmotIcon fail,invalid arguments,EmotUrl ="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->dgb:Z

    const/4 v1, 0x0

    goto/16 :goto_2

    :cond_23
    iget-object v2, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->feu:Lcom/tencent/mm/plugin/webview/stub/ao;

    const-string v3, "hasEmoticon"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Lcom/tencent/mm/ui/tools/jsapi/at;->a(Lcom/tencent/mm/plugin/webview/stub/ao;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/pluginsdk/h;->apj()Lcom/tencent/mm/pluginsdk/i;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/tencent/mm/pluginsdk/i;->jc(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_24

    const-string v2, "MicroMsg.MsgHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "has_emoticon:yes url : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "has_emoticon:yes"

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v1, v2}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/ao;Ljava/lang/String;Ljava/util/Map;)V

    const/4 v1, 0x1

    goto/16 :goto_2

    :cond_24
    const-string v2, "MicroMsg.MsgHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "has_emoticon:no url : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "has_emoticon:no"

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v1, v2}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/ao;Ljava/lang/String;Ljava/util/Map;)V

    const/4 v1, 0x1

    goto/16 :goto_2

    .line 344
    :cond_25
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/tencent/mm/ui/tools/jsapi/ao;->function:Ljava/lang/String;

    const-string v2, "cancelAddEmoticon"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 345
    invoke-virtual/range {p2 .. p2}, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->avU()Z

    move-result v1

    if-nez v1, :cond_26

    const-string v1, "MicroMsg.MsgHandler"

    const-string v2, "doCancelAddEmoticon permission fail"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "system:access_denied"

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v1, v2}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/ao;Ljava/lang/String;Ljava/util/Map;)V

    const/4 v1, 0x1

    goto/16 :goto_2

    :cond_26
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/tencent/mm/ui/tools/jsapi/ao;->dOk:Ljava/util/Map;

    const-string v2, "url"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_27

    const-string v2, "MicroMsg.MsgHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "doCancelEmoticon fail,invalid arguments,EmotUrl ="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "cancel_add_emoticon:no_url"

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v1, v2}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/ao;Ljava/lang/String;Ljava/util/Map;)V

    const/4 v1, 0x1

    goto/16 :goto_2

    :cond_27
    iget-object v2, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->feu:Lcom/tencent/mm/plugin/webview/stub/ao;

    const-string v3, "cancelAddEmoticon"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Lcom/tencent/mm/ui/tools/jsapi/at;->a(Lcom/tencent/mm/plugin/webview/stub/ao;Ljava/lang/String;ZLjava/lang/String;)V

    const-string v2, "MicroMsg.MsgHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "cancel_add_emoticon:try...emotUrl is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/pluginsdk/h;->apj()Lcom/tencent/mm/pluginsdk/i;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/tencent/mm/pluginsdk/i;->jc(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_28

    const-string v1, "MicroMsg.MsgHandler"

    const-string v2, "cancel_add_emoticon:added"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "cancel_add_emoticon:added"

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v1, v2}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/ao;Ljava/lang/String;Ljava/util/Map;)V

    const/4 v1, 0x1

    goto/16 :goto_2

    :cond_28
    iget-object v2, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->map:Ljava/util/Map;

    if-eqz v2, :cond_29

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->map:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a

    :cond_29
    const-string v1, "MicroMsg.MsgHandler"

    const-string v2, "cancel_add_emoticon:fail"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "cancel_add_emoticon:fail"

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v1, v2}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/ao;Ljava/lang/String;Ljava/util/Map;)V

    const/4 v1, 0x1

    goto/16 :goto_2

    :cond_2a
    iget-object v2, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->map:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/ui/tools/jsapi/b;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/tools/jsapi/b;->interrupt()V

    const/4 v1, 0x1

    goto/16 :goto_2

    .line 347
    :cond_2b
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/tencent/mm/ui/tools/jsapi/ao;->function:Ljava/lang/String;

    const-string v2, "hideOptionMenu"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 348
    const/4 v1, 0x0

    move-object/from16 v0, p2

    invoke-direct {p0, v1, v0}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(ZLcom/tencent/mm/protocal/JsapiPermissionWrapper;)Z

    move-result v1

    goto/16 :goto_2

    .line 350
    :cond_2c
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/tencent/mm/ui/tools/jsapi/ao;->function:Ljava/lang/String;

    const-string v2, "showOptionMenu"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 351
    const/4 v1, 0x1

    move-object/from16 v0, p2

    invoke-direct {p0, v1, v0}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(ZLcom/tencent/mm/protocal/JsapiPermissionWrapper;)Z

    move-result v1

    goto/16 :goto_2

    .line 353
    :cond_2d
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/tencent/mm/ui/tools/jsapi/ao;->function:Ljava/lang/String;

    const-string v2, "hideToolbar"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 354
    const/4 v1, 0x0

    move-object/from16 v0, p2

    invoke-direct {p0, v1, v0}, Lcom/tencent/mm/ui/tools/jsapi/p;->b(ZLcom/tencent/mm/protocal/JsapiPermissionWrapper;)Z

    move-result v1

    goto/16 :goto_2

    .line 356
    :cond_2e
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/tencent/mm/ui/tools/jsapi/ao;->function:Ljava/lang/String;

    const-string v2, "showToolbar"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 357
    const/4 v1, 0x1

    move-object/from16 v0, p2

    invoke-direct {p0, v1, v0}, Lcom/tencent/mm/ui/tools/jsapi/p;->b(ZLcom/tencent/mm/protocal/JsapiPermissionWrapper;)Z

    move-result v1

    goto/16 :goto_2

    .line 359
    :cond_2f
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/tencent/mm/ui/tools/jsapi/ao;->function:Ljava/lang/String;

    const-string v2, "getNetworkType"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 360
    invoke-virtual/range {p2 .. p2}, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->avZ()Z

    move-result v1

    if-nez v1, :cond_30

    const-string v1, "MicroMsg.MsgHandler"

    const-string v2, "doGetNetworkType permission fail"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "system:access_denied"

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v1, v2}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/ao;Ljava/lang/String;Ljava/util/Map;)V

    const/4 v1, 0x1

    goto/16 :goto_2

    :cond_30
    iget-object v1, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/mm/sdk/platformtools/ba;->bk(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_31

    const-string v1, "MicroMsg.MsgHandler"

    const-string v2, "getNetworkType, not connected"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "network_type:fail"

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v1, v2}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/ao;Ljava/lang/String;Ljava/util/Map;)V

    const/4 v1, 0x1

    goto/16 :goto_2

    :cond_31
    iget-object v1, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->feu:Lcom/tencent/mm/plugin/webview/stub/ao;

    const-string v2, "getNetworkType"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/tencent/mm/ui/tools/jsapi/at;->a(Lcom/tencent/mm/plugin/webview/stub/ao;Ljava/lang/String;ZLjava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/mm/sdk/platformtools/ba;->aK(Landroid/content/Context;)I

    move-result v1

    const-string v2, "MicroMsg.MsgHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getNetworkType, type = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/mm/sdk/platformtools/ba;->bp(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_32

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/mm/sdk/platformtools/ba;->bs(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_33

    :cond_32
    const-string v1, "MicroMsg.MsgHandler"

    const-string v2, "getNetworkType, 2g or 3g"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "network_type:wwan"

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v1, v2}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/ao;Ljava/lang/String;Ljava/util/Map;)V

    const/4 v1, 0x1

    goto/16 :goto_2

    :cond_33
    iget-object v1, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/mm/sdk/platformtools/ba;->bt(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_34

    const-string v1, "MicroMsg.MsgHandler"

    const-string v2, "getNetworkType, wifi"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "network_type:wifi"

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v1, v2}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/ao;Ljava/lang/String;Ljava/util/Map;)V

    const/4 v1, 0x1

    goto/16 :goto_2

    :cond_34
    const-string v1, "MicroMsg.MsgHandler"

    const-string v2, "getNetworkType, unknown"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "network_type:fail"

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v1, v2}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/ao;Ljava/lang/String;Ljava/util/Map;)V

    const/4 v1, 0x1

    goto/16 :goto_2

    .line 362
    :cond_35
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/tencent/mm/ui/tools/jsapi/ao;->function:Ljava/lang/String;

    const-string v2, "closeWindow"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 363
    invoke-direct/range {p0 .. p2}, Lcom/tencent/mm/ui/tools/jsapi/p;->d(Lcom/tencent/mm/ui/tools/jsapi/ao;Lcom/tencent/mm/protocal/JsapiPermissionWrapper;)Z

    move-result v1

    goto/16 :goto_2

    .line 365
    :cond_36
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/tencent/mm/ui/tools/jsapi/ao;->function:Ljava/lang/String;

    const-string v2, "getInstallState"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 366
    invoke-virtual/range {p2 .. p2}, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->awi()Z

    move-result v1

    if-nez v1, :cond_37

    const-string v1, "MicroMsg.MsgHandler"

    const-string v2, "doGetInstallState permission fail"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "system:access_denied"

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v1, v2}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/ao;Ljava/lang/String;Ljava/util/Map;)V

    :goto_7
    const/4 v1, 0x1

    goto/16 :goto_2

    :cond_37
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/tencent/mm/ui/tools/jsapi/ao;->dOk:Ljava/util/Map;

    const-string v2, "packageName"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->context:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/tencent/mm/pluginsdk/model/app/u;->ad(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->feu:Lcom/tencent/mm/plugin/webview/stub/ao;

    const-string v4, "getInstallState"

    const/4 v5, 0x0

    invoke-static {v2, v4, v5, v1}, Lcom/tencent/mm/ui/tools/jsapi/at;->a(Lcom/tencent/mm/plugin/webview/stub/ao;Ljava/lang/String;ZLjava/lang/String;)V

    if-nez v3, :cond_38

    const/4 v2, 0x0

    :goto_8
    const-string v4, "MicroMsg.MsgHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "doGetInstallState, packageName = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", packageInfo = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", version = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v3, :cond_39

    const-string v1, "get_install_state:no"

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v1, v2}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/ao;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_7

    :cond_38
    iget v2, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    goto :goto_8

    :cond_39
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "get_install_state:yes_"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v1, v2}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/ao;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_7

    .line 368
    :cond_3a
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/tencent/mm/ui/tools/jsapi/ao;->function:Ljava/lang/String;

    const-string v2, "scanQRCode"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 369
    invoke-virtual/range {p2 .. p2}, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->avR()Z

    move-result v1

    if-nez v1, :cond_3b

    const-string v1, "MicroMsg.MsgHandler"

    const-string v2, "doScanQRCode permission fail"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "system:access_denied"

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v1, v2}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/ao;Ljava/lang/String;Ljava/util/Map;)V

    const/4 v1, 0x1

    goto/16 :goto_2

    :cond_3b
    iget-object v1, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->feu:Lcom/tencent/mm/plugin/webview/stub/ao;

    const-string v2, "scanQRCode"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/tencent/mm/ui/tools/jsapi/at;->a(Lcom/tencent/mm/plugin/webview/stub/ao;Ljava/lang/String;ZLjava/lang/String;)V

    const-string v1, "MicroMsg.MsgHandler"

    const-string v2, "doScanQRCode, startActivity to GetFriendQRCodeUI"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "BaseScanUI_select_scan_mode"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->context:Landroid/content/Context;

    const-string v3, "scanner"

    const-string v4, ".ui.BaseScanUI"

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v1, v5}, Lcom/tencent/mm/ak/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Z)V

    const-string v1, "scan_qrcode:ok"

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v1, v2}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/ao;Ljava/lang/String;Ljava/util/Map;)V

    const/4 v1, 0x1

    goto/16 :goto_2

    .line 371
    :cond_3c
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/tencent/mm/ui/tools/jsapi/ao;->function:Ljava/lang/String;

    const-string v2, "setFontSizeCallback"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 372
    invoke-direct/range {p0 .. p1}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/ao;)Z

    move-result v1

    goto/16 :goto_2

    .line 374
    :cond_3d
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/tencent/mm/ui/tools/jsapi/ao;->function:Ljava/lang/String;

    const-string v2, "jumpToInstallUrl"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 375
    invoke-virtual/range {p2 .. p2}, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->awj()Z

    move-result v1

    if-nez v1, :cond_3e

    const-string v1, "MicroMsg.MsgHandler"

    const-string v2, "doJumpToInstallUrl permission fail"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "system:access_denied"

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v1, v2}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/ao;Ljava/lang/String;Ljava/util/Map;)V

    const/4 v1, 0x1

    goto/16 :goto_2

    :cond_3e
    iget-object v1, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->feu:Lcom/tencent/mm/plugin/webview/stub/ao;

    const-string v2, "jumpToInstallUrl"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/tencent/mm/ui/tools/jsapi/at;->a(Lcom/tencent/mm/plugin/webview/stub/ao;Ljava/lang/String;ZLjava/lang/String;)V

    const-string v1, "MicroMsg.MsgHandler"

    const-string v2, "doJumpToInstallUrl"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/tencent/mm/ui/tools/jsapi/ao;->dOk:Ljava/util/Map;

    const-string v2, "url"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_40

    const-string v1, "MicroMsg.MsgHandler"

    const-string v2, "jumpurl is null or nil"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3f
    :goto_9
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->dgb:Z

    const/4 v1, 0x0

    goto/16 :goto_2

    :cond_40
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x1000

    invoke-virtual {v2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->context:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/cj;->i(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_3f

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_9

    .line 377
    :cond_41
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/tencent/mm/ui/tools/jsapi/ao;->function:Ljava/lang/String;

    const-string v2, "GetBrandWCPayRequest"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 378
    invoke-virtual/range {p2 .. p2}, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->awk()Z

    move-result v1

    if-nez v1, :cond_42

    const-string v1, "MicroMsg.MsgHandler"

    const-string v2, "doPay permission fail"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "system:access_denied"

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v1, v2}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/ao;Ljava/lang/String;Ljava/util/Map;)V

    const/4 v1, 0x1

    goto/16 :goto_2

    :cond_42
    iget-object v1, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->feu:Lcom/tencent/mm/plugin/webview/stub/ao;

    const-string v2, "GetBrandWCPayRequest"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/tencent/mm/ui/tools/jsapi/at;->a(Lcom/tencent/mm/plugin/webview/stub/ao;Ljava/lang/String;ZLjava/lang/String;)V

    const-string v1, "MicroMsg.MsgHandler"

    const-string v2, "doPay"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/tencent/mm/ui/tools/jsapi/ao;->dOk:Ljava/util/Map;

    const-string v2, "appId"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/tencent/mm/ui/tools/jsapi/ao;->dOk:Ljava/util/Map;

    const-string v2, "partnerId"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/tencent/mm/ui/tools/jsapi/ao;->dOk:Ljava/util/Map;

    const-string v3, "signType"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/tencent/mm/ui/tools/jsapi/ao;->dOk:Ljava/util/Map;

    const-string v4, "nonceStr"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/tencent/mm/ui/tools/jsapi/ao;->dOk:Ljava/util/Map;

    const-string v5, "timeStamp"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/tencent/mm/ui/tools/jsapi/ao;->dOk:Ljava/util/Map;

    const-string v6, "package"

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/tencent/mm/ui/tools/jsapi/ao;->dOk:Ljava/util/Map;

    const-string v8, "paySign"

    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/tencent/mm/ui/tools/jsapi/ao;->dOk:Ljava/util/Map;

    const-string v9, "url"

    invoke-interface {v4, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v9, v4

    check-cast v9, Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/tencent/mm/ui/tools/jsapi/ao;->dOk:Ljava/util/Map;

    const-string v10, "src_username"

    invoke-interface {v4, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/tencent/mm/ui/tools/jsapi/ao;->dOk:Ljava/util/Map;

    const-string v11, "message_id"

    invoke-interface {v4, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v11, 0x0

    invoke-static {v4, v11}, Lcom/tencent/mm/sdk/platformtools/cj;->getInt(Ljava/lang/String;I)I

    move-result v11

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/tencent/mm/ui/tools/jsapi/ao;->dOk:Ljava/util/Map;

    const-string v12, "message_index"

    invoke-interface {v4, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v12, 0x0

    invoke-static {v4, v12}, Lcom/tencent/mm/sdk/platformtools/cj;->getInt(Ljava/lang/String;I)I

    move-result v12

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/tencent/mm/ui/tools/jsapi/ao;->dOk:Ljava/util/Map;

    const-string v13, "scene"

    invoke-interface {v4, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v13, 0x0

    invoke-static {v4, v13}, Lcom/tencent/mm/sdk/platformtools/cj;->getInt(Ljava/lang/String;I)I

    move-result v13

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string v14, "appId"

    invoke-virtual {v4, v14, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v14, "partnerId"

    invoke-virtual {v4, v14, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "signtype"

    invoke-virtual {v4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "nonceStr"

    invoke-virtual {v4, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "timeStamp"

    invoke-virtual {v4, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "packageExt"

    invoke-virtual {v4, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "paySignature"

    invoke-virtual {v4, v1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "bizUsername"

    invoke-virtual {v4, v1, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "url"

    invoke-virtual {v4, v1, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "pay_channel"

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/tencent/mm/ui/tools/jsapi/ao;->dOk:Ljava/util/Map;

    const-string v3, "pay_channel"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/tencent/mm/sdk/platformtools/cj;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v4, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->context:Landroid/content/Context;

    instance-of v1, v1, Lcom/tencent/mm/ui/MMActivity;

    if-eqz v1, :cond_43

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->context:Landroid/content/Context;

    check-cast v1, Lcom/tencent/mm/ui/MMActivity;

    invoke-virtual {v1, p0}, Lcom/tencent/mm/ui/MMActivity;->a(Lcom/tencent/mm/ui/br;)V

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->context:Landroid/content/Context;

    const-string v2, "wallet"

    const-string v3, ".pay.ui.WalletBrandUI"

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/tencent/mm/ak/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;IZ)V

    :cond_43
    sget-object v1, Lcom/tencent/mm/plugin/d/c/m;->dZN:Lcom/tencent/mm/plugin/d/c/m;

    const/16 v2, 0x2961

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v10, v3, v4

    const/4 v4, 0x1

    aput-object v7, v3, v4

    const/4 v4, 0x2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    aput-object v9, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mm/plugin/d/c/m;->d(I[Ljava/lang/Object;)V

    const/4 v1, 0x1

    goto/16 :goto_2

    .line 380
    :cond_44
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/tencent/mm/ui/tools/jsapi/ao;->function:Ljava/lang/String;

    const-string v2, "editAddress"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 381
    invoke-direct/range {p0 .. p3}, Lcom/tencent/mm/ui/tools/jsapi/p;->b(Lcom/tencent/mm/ui/tools/jsapi/ao;Lcom/tencent/mm/protocal/JsapiPermissionWrapper;Ljava/util/ArrayList;)Z

    move-result v1

    goto/16 :goto_2

    .line 383
    :cond_45
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/tencent/mm/ui/tools/jsapi/ao;->function:Ljava/lang/String;

    const-string v2, "getLatestAddress"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 384
    invoke-direct/range {p0 .. p3}, Lcom/tencent/mm/ui/tools/jsapi/p;->c(Lcom/tencent/mm/ui/tools/jsapi/ao;Lcom/tencent/mm/protocal/JsapiPermissionWrapper;Ljava/util/ArrayList;)Z

    move-result v1

    goto/16 :goto_2

    .line 386
    :cond_46
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/tencent/mm/ui/tools/jsapi/ao;->function:Ljava/lang/String;

    const-string v2, "getHeadingAndPitch"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 387
    invoke-virtual/range {p2 .. p2}, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->awn()Z

    move-result v1

    if-nez v1, :cond_47

    const-string v1, "MicroMsg.MsgHandler"

    const-string v2, "doGetHeadingAndPitch permission fail"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "system:access_denied"

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v1, v2}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/ao;Ljava/lang/String;Ljava/util/Map;)V

    const/4 v1, 0x1

    goto/16 :goto_2

    :cond_47
    iget-object v1, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->feu:Lcom/tencent/mm/plugin/webview/stub/ao;

    const-string v2, "getHeadingAndPitch"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/tencent/mm/ui/tools/jsapi/at;->a(Lcom/tencent/mm/plugin/webview/stub/ao;Ljava/lang/String;ZLjava/lang/String;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sget-object v2, Lcom/tencent/mm/pluginsdk/ui/tools/n;->fuv:Lcom/tencent/mm/pluginsdk/ui/tools/n;

    if-nez v2, :cond_48

    const-string v2, "MicroMsg.MsgHandler"

    const-string v3, "HeadingPitchSensorMgr.instance == null, init here"

    invoke-static {v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/tencent/mm/pluginsdk/ui/tools/n;

    invoke-direct {v2}, Lcom/tencent/mm/pluginsdk/ui/tools/n;-><init>()V

    invoke-static {v2}, Lcom/tencent/mm/pluginsdk/ui/tools/y;->a(Lcom/tencent/mm/pluginsdk/ui/tools/z;)V

    sput-object v2, Lcom/tencent/mm/pluginsdk/ui/tools/n;->fuv:Lcom/tencent/mm/pluginsdk/ui/tools/n;

    iget-object v3, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->context:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/tencent/mm/pluginsdk/ui/tools/n;->ba(Landroid/content/Context;)V

    :cond_48
    const-string v2, "heading"

    sget-object v3, Lcom/tencent/mm/pluginsdk/ui/tools/n;->fuv:Lcom/tencent/mm/pluginsdk/ui/tools/n;

    invoke-virtual {v3}, Lcom/tencent/mm/pluginsdk/ui/tools/n;->auO()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "pitch"

    sget-object v3, Lcom/tencent/mm/pluginsdk/ui/tools/n;->fuv:Lcom/tencent/mm/pluginsdk/ui/tools/n;

    invoke-virtual {v3}, Lcom/tencent/mm/pluginsdk/ui/tools/n;->getPitch()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "MicroMsg.MsgHandler"

    const-string v3, "doGetHeadingAndPitch, heading=[%s], pitch=[%s]"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-object v6, Lcom/tencent/mm/pluginsdk/ui/tools/n;->fuv:Lcom/tencent/mm/pluginsdk/ui/tools/n;

    invoke-virtual {v6}, Lcom/tencent/mm/pluginsdk/ui/tools/n;->auO()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Lcom/tencent/mm/pluginsdk/ui/tools/n;->fuv:Lcom/tencent/mm/pluginsdk/ui/tools/n;

    invoke-virtual {v6}, Lcom/tencent/mm/pluginsdk/ui/tools/n;->getPitch()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v2, "get_heading_and_pitch:ok"

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v2, v1}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/ao;Ljava/lang/String;Ljava/util/Map;)V

    const/4 v1, 0x1

    goto/16 :goto_2

    .line 389
    :cond_49
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/tencent/mm/ui/tools/jsapi/ao;->function:Ljava/lang/String;

    const-string v2, "sendEmail"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 390
    invoke-virtual/range {p2 .. p2}, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->awo()Z

    move-result v1

    if-nez v1, :cond_4a

    const-string v1, "MicroMsg.MsgHandler"

    const-string v2, "doSendMail permission fail"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "system:access_denied"

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v1, v2}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/ao;Ljava/lang/String;Ljava/util/Map;)V

    const/4 v1, 0x1

    goto/16 :goto_2

    :cond_4a
    iget-object v1, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->feu:Lcom/tencent/mm/plugin/webview/stub/ao;

    const-string v2, "sendEmail"

    const-string v3, "sendEmail"

    invoke-direct {p0, v3}, Lcom/tencent/mm/ui/tools/jsapi/p;->xS(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/tencent/mm/ui/tools/jsapi/at;->a(Lcom/tencent/mm/plugin/webview/stub/ao;Ljava/lang/String;ZLjava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/tencent/mm/ui/tools/jsapi/ao;->dOk:Ljava/util/Map;

    const-string v2, "title"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/tencent/mm/ui/tools/jsapi/ao;->dOk:Ljava/util/Map;

    const-string v3, "content"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "composeType"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "subject"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "mail_content"

    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->context:Landroid/content/Context;

    const-string v2, "qqmail"

    const-string v4, ".ui.ComposeUI"

    const/4 v5, 0x0

    invoke-static {v1, v2, v4, v3, v5}, Lcom/tencent/mm/ak/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Z)V

    const-string v1, "send_email:ok"

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v1, v2}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/ao;Ljava/lang/String;Ljava/util/Map;)V

    const/4 v1, 0x1

    goto/16 :goto_2

    .line 392
    :cond_4b
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/tencent/mm/ui/tools/jsapi/ao;->function:Ljava/lang/String;

    const-string v2, "addDownloadTask"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_53

    .line 393
    invoke-virtual/range {p2 .. p2}, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->awq()Z

    move-result v1

    if-nez v1, :cond_4c

    const-string v1, "MicroMsg.MsgHandler"

    const-string v2, "doAddDownloadTask permission fail"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "system:access_denied"

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v1, v2}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/ao;Ljava/lang/String;Ljava/util/Map;)V

    :goto_a
    const/4 v1, 0x1

    goto/16 :goto_2

    :cond_4c
    iget-object v1, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->feu:Lcom/tencent/mm/plugin/webview/stub/ao;

    const-string v2, "addDownloadTask"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/tencent/mm/ui/tools/jsapi/at;->a(Lcom/tencent/mm/plugin/webview/stub/ao;Ljava/lang/String;ZLjava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/tencent/mm/ui/tools/jsapi/ao;->dOk:Ljava/util/Map;

    const-string v2, "task_name"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/tencent/mm/ui/tools/jsapi/ao;->dOk:Ljava/util/Map;

    const-string v3, "task_url"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/tencent/mm/ui/tools/jsapi/ao;->dOk:Ljava/util/Map;

    const-string v4, "file_md5"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "MicroMsg.MsgHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "doAddDownloadTask, md5 = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", url = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_4d

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_4e

    :cond_4d
    const-string v1, "MicroMsg.MsgHandler"

    const-string v2, "doAddDownloadTask fail, md5 is null"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "add_download_task:fail_invalid_md5"

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v1, v2}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/ao;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_a

    :cond_4e
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/mm/model/b;->isSDCardAvailable()Z

    move-result v4

    if-nez v4, :cond_4f

    const-string v1, "add_download_task:fail_sdcard_not_ready"

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v1, v2}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/ao;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_a

    :cond_4f
    invoke-static {}, Lcom/tencent/mm/model/be;->se()Z

    move-result v4

    if-eqz v4, :cond_50

    invoke-static {}, Lcom/tencent/mm/model/be;->uG()Z

    move-result v4

    if-eqz v4, :cond_51

    :cond_50
    iget-object v4, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->context:Landroid/content/Context;

    invoke-static {v4, v2, v1, v3}, Lcom/tencent/mm/pluginsdk/model/downloader/FileDownloadManger;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v1

    :goto_b
    const-string v3, "MicroMsg.MsgHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "doAddDownloadTask, downloadId = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gtz v3, :cond_52

    const-string v3, "MicroMsg.MsgHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "doAddDownloadTask fail, downloadId = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "add_download_task:fail"

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v1, v2}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/ao;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_a

    :cond_51
    iget-object v4, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->context:Landroid/content/Context;

    invoke-static {v2, v1, v3}, Lcom/tencent/mm/pluginsdk/model/downloader/FileDownloadManger;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v1

    goto :goto_b

    :cond_52
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "download_id"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "add_download_task:ok"

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v1, v3}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/ao;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_a

    .line 395
    :cond_53
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/tencent/mm/ui/tools/jsapi/ao;->function:Ljava/lang/String;

    const-string v2, "cancelDownloadTask"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_58

    .line 396
    invoke-virtual/range {p2 .. p2}, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->awr()Z

    move-result v1

    if-nez v1, :cond_54

    const-string v1, "MicroMsg.MsgHandler"

    const-string v2, "doCancelDownloadTask permission fail"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "system:access_denied"

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v1, v2}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/ao;Ljava/lang/String;Ljava/util/Map;)V

    :goto_c
    const/4 v1, 0x1

    goto/16 :goto_2

    :cond_54
    iget-object v1, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->feu:Lcom/tencent/mm/plugin/webview/stub/ao;

    const-string v2, "cancelDownloadTask"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/tencent/mm/ui/tools/jsapi/at;->a(Lcom/tencent/mm/plugin/webview/stub/ao;Ljava/lang/String;ZLjava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/tencent/mm/ui/tools/jsapi/ao;->dOk:Ljava/util/Map;

    const-string v2, "download_id"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-wide/16 v2, -0x1

    invoke-static {v1, v2, v3}, Lcom/tencent/mm/sdk/platformtools/cj;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    const-string v3, "MicroMsg.MsgHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "doCancelDownloadTask, downloadId = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gtz v3, :cond_55

    const-string v3, "MicroMsg.MsgHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "doCancelDownloadTask fail, invalid downloadId = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "cancel_download_task:fail"

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v1, v2}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/ao;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_c

    :cond_55
    invoke-static {v1, v2}, Lcom/tencent/mm/pluginsdk/model/downloader/FileDownloadManger;->bA(J)I

    move-result v1

    const-string v2, "MicroMsg.MsgHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "doCancelDownloadTask, ret = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, -0x1

    if-ne v1, v2, :cond_56

    const-string v1, "cancel_download_task:fail_apilevel_too_low"

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v1, v2}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/ao;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_c

    :cond_56
    if-gtz v1, :cond_57

    const-string v1, "cancel_download_task:fail"

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v1, v2}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/ao;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_c

    :cond_57
    const-string v1, "cancel_download_task:ok"

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v1, v2}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/ao;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_c

    .line 398
    :cond_58
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/tencent/mm/ui/tools/jsapi/ao;->function:Ljava/lang/String;

    const-string v2, "queryDownloadTask"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 399
    invoke-virtual/range {p2 .. p2}, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->aws()Z

    move-result v1

    if-nez v1, :cond_59

    const-string v1, "MicroMsg.MsgHandler"

    const-string v2, "doQueryDownloadTask permission fail"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "system:access_denied"

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v1, v2}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/ao;Ljava/lang/String;Ljava/util/Map;)V

    const/4 v1, 0x1

    goto/16 :goto_2

    :cond_59
    iget-object v1, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->feu:Lcom/tencent/mm/plugin/webview/stub/ao;

    const-string v2, "queryDownloadTask"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/tencent/mm/ui/tools/jsapi/at;->a(Lcom/tencent/mm/plugin/webview/stub/ao;Ljava/lang/String;ZLjava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/tencent/mm/ui/tools/jsapi/ao;->dOk:Ljava/util/Map;

    const-string v2, "download_id"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-wide/16 v2, -0x1

    invoke-static {v1, v2, v3}, Lcom/tencent/mm/sdk/platformtools/cj;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    const-string v3, "MicroMsg.MsgHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "doQueryDownloadTask, downloadId = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gtz v3, :cond_5a

    const-string v3, "MicroMsg.MsgHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "doQueryDownloadTask fail, invalid downloadId = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "query_download_task:fail"

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v1, v2}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/ao;Ljava/lang/String;Ljava/util/Map;)V

    const/4 v1, 0x1

    goto/16 :goto_2

    :cond_5a
    iget-object v3, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->context:Landroid/content/Context;

    invoke-static {v3, v1, v2}, Lcom/tencent/mm/pluginsdk/model/downloader/FileDownloadManger;->g(Landroid/content/Context;J)Lcom/tencent/mm/pluginsdk/model/downloader/e;

    move-result-object v3

    iget v3, v3, Lcom/tencent/mm/pluginsdk/model/downloader/e;->status:I

    sparse-switch v3, :sswitch_data_0

    const-string v1, "default"

    :goto_d
    const-string v2, "MicroMsg.MsgHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "doQueryDownloadTask, state = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "state"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "query_download_task:ok"

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v1, v2}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/ao;Ljava/lang/String;Ljava/util/Map;)V

    const/4 v1, 0x1

    goto/16 :goto_2

    :sswitch_0
    const-string v1, "MicroMsg.MsgHandler"

    const-string v2, "doQueryDownloadTask fail, api not support"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "query_download_task:fail_apilevel_too_low"

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v1, v2}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/ao;Ljava/lang/String;Ljava/util/Map;)V

    const/4 v1, 0x1

    goto/16 :goto_2

    :sswitch_1
    const-string v1, "downloading"

    goto :goto_d

    :sswitch_2
    invoke-static {v1, v2}, Lcom/tencent/mm/pluginsdk/model/downloader/FileDownloadManger;->bw(J)Z

    move-result v1

    if-eqz v1, :cond_5b

    const-string v1, "download_succ"

    goto :goto_d

    :cond_5b
    const-string v1, "default"

    goto :goto_d

    :sswitch_3
    const-string v1, "download_fail"

    goto :goto_d

    .line 401
    :cond_5c
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/tencent/mm/ui/tools/jsapi/ao;->function:Ljava/lang/String;

    const-string v2, "installDownloadTask"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_61

    .line 402
    invoke-virtual/range {p2 .. p2}, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->awt()Z

    move-result v1

    if-nez v1, :cond_5d

    const-string v1, "MicroMsg.MsgHandler"

    const-string v2, "doInstallDownloadTask permission fail"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "system:access_denied"

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v1, v2}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/ao;Ljava/lang/String;Ljava/util/Map;)V

    const/4 v1, 0x1

    goto/16 :goto_2

    :cond_5d
    iget-object v1, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->feu:Lcom/tencent/mm/plugin/webview/stub/ao;

    const-string v2, "installDownloadTask"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/tencent/mm/ui/tools/jsapi/at;->a(Lcom/tencent/mm/plugin/webview/stub/ao;Ljava/lang/String;ZLjava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/tencent/mm/ui/tools/jsapi/ao;->dOk:Ljava/util/Map;

    const-string v2, "download_id"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-wide/16 v2, -0x1

    invoke-static {v1, v2, v3}, Lcom/tencent/mm/sdk/platformtools/cj;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    const-string v3, "MicroMsg.MsgHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "doInstallDownloadTask, downloadId = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gtz v3, :cond_5e

    const-string v3, "MicroMsg.MsgHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "doInstallDownloadTask fail, invalid downloadId = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "install_download_task:fail"

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v1, v2}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/ao;Ljava/lang/String;Ljava/util/Map;)V

    const/4 v1, 0x1

    goto/16 :goto_2

    :cond_5e
    iget-object v3, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->context:Landroid/content/Context;

    invoke-static {v3, v1, v2}, Lcom/tencent/mm/pluginsdk/model/downloader/FileDownloadManger;->g(Landroid/content/Context;J)Lcom/tencent/mm/pluginsdk/model/downloader/e;

    move-result-object v3

    iget v4, v3, Lcom/tencent/mm/pluginsdk/model/downloader/e;->status:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_5f

    const-string v1, "MicroMsg.MsgHandler"

    const-string v2, "doInstallDownloadTask fail, apilevel not supported"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "install_download_task:fail_apilevel_too_low"

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v1, v2}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/ao;Ljava/lang/String;Ljava/util/Map;)V

    const/4 v1, 0x1

    goto/16 :goto_2

    :cond_5f
    iget v4, v3, Lcom/tencent/mm/pluginsdk/model/downloader/e;->status:I

    const/16 v5, 0x8

    if-eq v4, v5, :cond_60

    const-string v1, "MicroMsg.MsgHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "doInstallDownloadTask fail, invalid status = "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v3, Lcom/tencent/mm/pluginsdk/model/downloader/e;->status:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "install_download_task:fail"

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v1, v2}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/ao;Ljava/lang/String;Ljava/util/Map;)V

    const/4 v1, 0x1

    goto/16 :goto_2

    :cond_60
    new-instance v4, Lcom/tencent/mm/ui/tools/jsapi/v;

    move-object/from16 v0, p1

    invoke-direct {v4, p0, v0, v3}, Lcom/tencent/mm/ui/tools/jsapi/v;-><init>(Lcom/tencent/mm/ui/tools/jsapi/p;Lcom/tencent/mm/ui/tools/jsapi/ao;Lcom/tencent/mm/pluginsdk/model/downloader/e;)V

    invoke-static {v1, v2, v4}, Lcom/tencent/mm/pluginsdk/model/downloader/FileDownloadManger;->a(JLcom/tencent/mm/pluginsdk/model/downloader/c;)V

    const/4 v1, 0x1

    goto/16 :goto_2

    .line 404
    :cond_61
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/tencent/mm/ui/tools/jsapi/ao;->function:Ljava/lang/String;

    const-string v2, "openSpecificView"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_65

    .line 405
    invoke-virtual/range {p2 .. p2}, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->awz()Z

    move-result v1

    if-nez v1, :cond_62

    const-string v1, "MicroMsg.MsgHandler"

    const-string v2, "doOpenSpecificView permission fail"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "system:access_denied"

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v1, v2}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/ao;Ljava/lang/String;Ljava/util/Map;)V

    :goto_e
    const/4 v1, 0x1

    goto/16 :goto_2

    :cond_62
    iget-object v1, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->feu:Lcom/tencent/mm/plugin/webview/stub/ao;

    const-string v2, "openSpecificView"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/tencent/mm/ui/tools/jsapi/at;->a(Lcom/tencent/mm/plugin/webview/stub/ao;Ljava/lang/String;ZLjava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/tencent/mm/ui/tools/jsapi/ao;->dOk:Ljava/util/Map;

    const-string v2, "specificview"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_63

    const-string v1, "MicroMsg.MsgHandler"

    const-string v2, "doOpenSpecificView fail, invalid specificview"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "specific_view:fail"

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v1, v2}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/ao;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_e

    :cond_63
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const/high16 v3, 0x1000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    sget-object v2, Lcom/tencent/mm/plugin/webview/a/a;->cHS:Lcom/tencent/mm/pluginsdk/e;

    iget-object v3, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->context:Landroid/content/Context;

    invoke-interface {v2, v3, v1}, Lcom/tencent/mm/pluginsdk/e;->j(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    const-string v3, "MicroMsg.MsgHandler"

    const-string v4, "doOpenSpecificView, targetView = %s, ret = %b"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v1, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v3, v4, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v2, :cond_64

    const-string v1, "specific_view:ok"

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v1, v2}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/ao;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_e

    :cond_64
    const-string v1, "MicroMsg.MsgHandler"

    const-string v2, "doOpenSpecificView, targetView not supported in current wechat version"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "specific_view:not_supported"

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v1, v2}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/ao;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_e

    .line 407
    :cond_65
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/tencent/mm/ui/tools/jsapi/ao;->function:Ljava/lang/String;

    const-string v2, "launch3rdApp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_66

    .line 408
    invoke-direct/range {p0 .. p2}, Lcom/tencent/mm/ui/tools/jsapi/p;->f(Lcom/tencent/mm/ui/tools/jsapi/ao;Lcom/tencent/mm/protocal/JsapiPermissionWrapper;)Z

    move-result v1

    goto/16 :goto_2

    .line 413
    :cond_66
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/tencent/mm/ui/tools/jsapi/ao;->function:Ljava/lang/String;

    const-string v2, "jumpWCMall"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_69

    .line 414
    invoke-virtual/range {p2 .. p2}, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->awC()Z

    move-result v1

    if-nez v1, :cond_68

    const-string v1, "MicroMsg.MsgHandler"

    const-string v2, "doJumpToMall permission fail"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "system:access_denied"

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v1, v2}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/ao;Ljava/lang/String;Ljava/util/Map;)V

    :cond_67
    :goto_f
    const/4 v1, 0x1

    goto/16 :goto_2

    :cond_68
    iget-object v1, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->feu:Lcom/tencent/mm/plugin/webview/stub/ao;

    const-string v2, "jumpWCMall"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/tencent/mm/ui/tools/jsapi/at;->a(Lcom/tencent/mm/plugin/webview/stub/ao;Ljava/lang/String;ZLjava/lang/String;)V

    const-string v1, "MicroMsg.MsgHandler"

    const-string v2, "doJumpToMall"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/tencent/mm/ui/tools/jsapi/ao;->dOk:Ljava/util/Map;

    const-string v2, "appId"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/tencent/mm/ui/tools/jsapi/ao;->dOk:Ljava/util/Map;

    const-string v3, "funcId"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/tencent/mm/ui/tools/jsapi/ao;->dOk:Ljava/util/Map;

    const-string v4, "url"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string v5, "key_app_id"

    invoke-virtual {v4, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "key_func_id"

    invoke-virtual {v4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "key_url"

    invoke-virtual {v4, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->context:Landroid/content/Context;

    instance-of v1, v1, Lcom/tencent/mm/ui/MMActivity;

    if-eqz v1, :cond_67

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->context:Landroid/content/Context;

    check-cast v1, Lcom/tencent/mm/ui/MMActivity;

    invoke-virtual {v1, p0}, Lcom/tencent/mm/ui/MMActivity;->a(Lcom/tencent/mm/ui/br;)V

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->context:Landroid/content/Context;

    const-string v2, "mall"

    const-string v3, ".ui.MallIndexUI"

    const/4 v5, 0x5

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/tencent/mm/ak/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;IZ)V

    goto :goto_f

    .line 416
    :cond_69
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/tencent/mm/ui/tools/jsapi/ao;->function:Ljava/lang/String;

    const-string v2, "writeCommData"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 417
    invoke-virtual/range {p2 .. p2}, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->awB()Z

    move-result v1

    if-nez v1, :cond_6a

    const-string v1, "MicroMsg.MsgHandler"

    const-string v2, "doWriteCommData permission fail"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "system:access_denied"

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v1, v2}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/ao;Ljava/lang/String;Ljava/util/Map;)V

    :goto_10
    const/4 v1, 0x1

    goto/16 :goto_2

    :cond_6a
    iget-object v1, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->feu:Lcom/tencent/mm/plugin/webview/stub/ao;

    const-string v2, "writeCommData"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/tencent/mm/ui/tools/jsapi/at;->a(Lcom/tencent/mm/plugin/webview/stub/ao;Ljava/lang/String;ZLjava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/tencent/mm/ui/tools/jsapi/ao;->dOk:Ljava/util/Map;

    const-string v2, "packageName"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6c

    const-string v1, "MicroMsg.MsgHandler"

    const-string v2, "doWriteCommData fail, packageName is null"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6b
    const-string v1, "write_comm_data:fail"

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v1, v2}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/ao;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_10

    :cond_6c
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/tencent/mm/ui/tools/jsapi/ao;->dOk:Ljava/util/Map;

    const-string v3, "data"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->context:Landroid/content/Context;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_comm_preferences"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v3

    const-string v4, "MicroMsg.MsgHandler"

    const-string v5, "doWriteCommData, ret = %b, packageName = %s, data length = %d"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v1, v6, v7

    const/4 v7, 0x2

    if-nez v2, :cond_6d

    const/4 v1, 0x0

    :goto_11
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v7

    invoke-static {v4, v5, v6}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v3, :cond_6b

    const-string v1, "write_comm_data:ok"

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v1, v2}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/ao;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_10

    :cond_6d
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_11

    .line 419
    :cond_6e
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/tencent/mm/ui/tools/jsapi/ao;->function:Ljava/lang/String;

    const-string v2, "openUrlByExtBrowser"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 420
    invoke-direct/range {p0 .. p2}, Lcom/tencent/mm/ui/tools/jsapi/p;->g(Lcom/tencent/mm/ui/tools/jsapi/ao;Lcom/tencent/mm/protocal/JsapiPermissionWrapper;)Z

    move-result v1

    goto/16 :goto_2

    .line 422
    :cond_6f
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/tencent/mm/ui/tools/jsapi/ao;->function:Ljava/lang/String;

    const-string v2, "openProductView"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_70

    .line 423
    invoke-direct/range {p0 .. p2}, Lcom/tencent/mm/ui/tools/jsapi/p;->e(Lcom/tencent/mm/ui/tools/jsapi/ao;Lcom/tencent/mm/protocal/JsapiPermissionWrapper;)Z

    move-result v1

    goto/16 :goto_2

    .line 425
    :cond_70
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/tencent/mm/ui/tools/jsapi/ao;->function:Ljava/lang/String;

    const-string v2, "openProductViewWithPid"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_72

    .line 426
    invoke-virtual/range {p2 .. p2}, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->avM()Z

    move-result v1

    if-nez v1, :cond_71

    const-string v1, "MicroMsg.MsgHandler"

    const-string v2, "doOpenProductViewWithPid permission fail"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "system:access_denied"

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v1, v2}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/ao;Ljava/lang/String;Ljava/util/Map;)V

    const/4 v1, 0x1

    goto/16 :goto_2

    :cond_71
    iget-object v1, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->feu:Lcom/tencent/mm/plugin/webview/stub/ao;

    const-string v2, "openProductViewWithPid"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/tencent/mm/ui/tools/jsapi/at;->a(Lcom/tencent/mm/plugin/webview/stub/ao;Ljava/lang/String;ZLjava/lang/String;)V

    const-string v1, "MicroMsg.MsgHandler"

    const-string v2, "doOpenProductViewWithPid"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/tencent/mm/ui/tools/jsapi/ao;->dOk:Ljava/util/Map;

    const-string v2, "pid"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/tencent/mm/ui/tools/jsapi/ao;->dOk:Ljava/util/Map;

    const-string v3, "url"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/tencent/mm/ui/tools/jsapi/ao;->dOk:Ljava/util/Map;

    const-string v4, "type"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/tencent/mm/sdk/platformtools/cj;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string v5, "key_product_id"

    invoke-virtual {v4, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "key_source_url"

    invoke-virtual {v4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x8

    invoke-direct {p0, v3, v1, v4}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Ljava/lang/Integer;ILandroid/content/Intent;)Z

    move-result v1

    goto/16 :goto_2

    .line 429
    :cond_72
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/tencent/mm/ui/tools/jsapi/ao;->function:Ljava/lang/String;

    const-string v2, "getBrandWCPayBindCardRequest"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_75

    .line 430
    invoke-virtual/range {p2 .. p2}, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->awF()Z

    move-result v1

    if-nez v1, :cond_74

    const-string v1, "MicroMsg.MsgHandler"

    const-string v2, "dogetBrandWCPayBindCardRequest permission fail"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "system:access_denied"

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v1, v2}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/ao;Ljava/lang/String;Ljava/util/Map;)V

    :cond_73
    :goto_12
    const/4 v1, 0x1

    goto/16 :goto_2

    :cond_74
    iget-object v1, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->feu:Lcom/tencent/mm/plugin/webview/stub/ao;

    const-string v2, "getBrandWCPayBindCardRequest"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/tencent/mm/ui/tools/jsapi/at;->a(Lcom/tencent/mm/plugin/webview/stub/ao;Ljava/lang/String;ZLjava/lang/String;)V

    const-string v1, "MicroMsg.MsgHandler"

    const-string v2, "dogetBrandWCPayBindCardRequest JSOAUTH"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/tencent/mm/ui/tools/jsapi/ao;->dOk:Ljava/util/Map;

    const-string v2, "appId"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/tencent/mm/ui/tools/jsapi/ao;->dOk:Ljava/util/Map;

    const-string v3, "timeStamp"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/tencent/mm/ui/tools/jsapi/ao;->dOk:Ljava/util/Map;

    const-string v4, "nonceStr"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/tencent/mm/ui/tools/jsapi/ao;->dOk:Ljava/util/Map;

    const-string v5, "package"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/tencent/mm/ui/tools/jsapi/ao;->dOk:Ljava/util/Map;

    const-string v6, "signType"

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/tencent/mm/ui/tools/jsapi/ao;->dOk:Ljava/util/Map;

    const-string v7, "paySign"

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/tencent/mm/ui/tools/jsapi/ao;->dOk:Ljava/util/Map;

    const-string v8, "url"

    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Ljava/lang/String;

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string v9, "appId"

    invoke-virtual {v4, v9, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "timeStamp"

    invoke-virtual {v4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "nonceStr"

    invoke-virtual {v4, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "packageExt"

    invoke-virtual {v4, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "signtype"

    invoke-virtual {v4, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "paySignature"

    invoke-virtual {v4, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "url"

    invoke-virtual {v4, v1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "intent_bind_scene"

    const/4 v2, 0x4

    invoke-virtual {v4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->context:Landroid/content/Context;

    instance-of v1, v1, Lcom/tencent/mm/ui/MMActivity;

    if-eqz v1, :cond_73

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->context:Landroid/content/Context;

    check-cast v1, Lcom/tencent/mm/ui/MMActivity;

    invoke-virtual {v1, p0}, Lcom/tencent/mm/ui/MMActivity;->a(Lcom/tencent/mm/ui/br;)V

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->context:Landroid/content/Context;

    const-string v2, "wallet"

    const-string v3, ".bind.ui.WalletBindUI"

    const/4 v5, 0x7

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/tencent/mm/ak/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;IZ)V

    goto/16 :goto_12

    .line 433
    :cond_75
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/tencent/mm/ui/tools/jsapi/ao;->function:Ljava/lang/String;

    const-string v2, "geoLocation"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_76

    .line 434
    invoke-direct/range {p0 .. p3}, Lcom/tencent/mm/ui/tools/jsapi/p;->d(Lcom/tencent/mm/ui/tools/jsapi/ao;Lcom/tencent/mm/protocal/JsapiPermissionWrapper;Ljava/util/ArrayList;)Z

    move-result v1

    goto/16 :goto_2

    .line 437
    :cond_76
    const-string v1, "MicroMsg.MsgHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unknown function = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/tencent/mm/ui/tools/jsapi/ao;->function:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    const-string v1, "system:function_not_exist"

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v1, v2}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/ao;Ljava/lang/String;Ljava/util/Map;)V

    .line 439
    const/4 v1, 0x1

    goto/16 :goto_2

    .line 442
    :cond_77
    const-string v1, "MicroMsg.MsgHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unknown type = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/tencent/mm/ui/tools/jsapi/ao;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->dgb:Z

    .line 444
    const/4 v1, 0x0

    goto/16 :goto_2

    .line 399
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_1
        0x8 -> :sswitch_2
        0x10 -> :sswitch_3
    .end sparse-switch
.end method

.method public final a(Ljava/lang/String;Lcom/tencent/mm/protocal/JsapiPermissionWrapper;)Z
    .locals 8
    .parameter
    .parameter

    .prologue
    const/16 v0, 0x2a

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 567
    invoke-virtual {p2}, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->avK()Z

    move-result v3

    if-nez v3, :cond_0

    .line 568
    const-string v0, "MicroMsg.MsgHandler"

    const-string v2, "doProfile permission fail"

    invoke-static {v0, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->hpm:Lcom/tencent/mm/ui/tools/jsapi/ao;

    const-string v2, "system:access_denied"

    const/4 v3, 0x0

    invoke-direct {p0, v0, v2, v3}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/ao;Ljava/lang/String;Ljava/util/Map;)V

    move v0, v1

    .line 667
    :goto_0
    return v0

    .line 573
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 574
    :cond_1
    const-string v0, "MicroMsg.MsgHandler"

    const-string v1, "doProfile fail, username is null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    iput-boolean v2, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->dgb:Z

    move v0, v2

    .line 576
    goto :goto_0

    .line 579
    :cond_2
    invoke-static {p1}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 580
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->context:Landroid/content/Context;

    sget v4, Lcom/tencent/mm/n;->bnm:I

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 582
    iput-boolean v2, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->dgb:Z

    move v0, v2

    .line 583
    goto :goto_0

    .line 586
    :cond_3
    iget-object v3, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->feu:Lcom/tencent/mm/plugin/webview/stub/ao;

    const-string v4, "profile"

    const-string v5, "profile"

    invoke-direct {p0, v5}, Lcom/tencent/mm/ui/tools/jsapi/p;->xS(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v3, v4, v5, p1}, Lcom/tencent/mm/ui/tools/jsapi/at;->a(Lcom/tencent/mm/plugin/webview/stub/ao;Ljava/lang/String;ZLjava/lang/String;)V

    .line 588
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/tencent/mm/storage/k;->tO(Ljava/lang/String;)Lcom/tencent/mm/storage/i;

    move-result-object v3

    .line 589
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/tencent/mm/storage/i;->rj()I

    move-result v4

    if-gtz v4, :cond_5

    .line 590
    :cond_4
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/tencent/mm/storage/k;->tL(Ljava/lang/String;)Lcom/tencent/mm/storage/i;

    move-result-object v3

    .line 592
    :cond_5
    if-eqz v3, :cond_9

    invoke-virtual {v3}, Lcom/tencent/mm/storage/i;->rj()I

    move-result v4

    if-lez v4, :cond_9

    .line 593
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 594
    const/high16 v4, 0x1000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 595
    const-string v4, "Contact_User"

    invoke-virtual {v3}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 599
    invoke-virtual {v3}, Lcom/tencent/mm/storage/i;->aAp()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 600
    sget-object v4, Lcom/tencent/mm/ui/tools/jsapi/p;->hpq:Landroid/os/Bundle;

    if-nez v4, :cond_8

    .line 602
    :goto_1
    sget-object v4, Lcom/tencent/mm/plugin/d/c/m;->dZN:Lcom/tencent/mm/plugin/d/c/m;

    const/16 v5, 0x283a

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/tencent/mm/plugin/d/c/m;->j(ILjava/lang/String;)V

    .line 603
    const-string v4, "Contact_Scene"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 605
    :cond_6
    invoke-virtual {v3}, Lcom/tencent/mm/storage/i;->rb()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 606
    new-instance v0, Lcom/tencent/mm/c/a/fz;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/fz;-><init>()V

    .line 607
    iget-object v4, v0, Lcom/tencent/mm/c/a/fz;->bQx:Lcom/tencent/mm/c/a/ga;

    iput-object v1, v4, Lcom/tencent/mm/c/a/ga;->intent:Landroid/content/Intent;

    .line 608
    iget-object v4, v0, Lcom/tencent/mm/c/a/fz;->bQx:Lcom/tencent/mm/c/a/ga;

    invoke-virtual {v3}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/tencent/mm/c/a/ga;->username:Ljava/lang/String;

    .line 609
    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/tencent/mm/sdk/b/f;->f(Lcom/tencent/mm/sdk/b/e;)Z

    .line 611
    :cond_7
    sget-object v0, Lcom/tencent/mm/plugin/webview/a/a;->cHS:Lcom/tencent/mm/pluginsdk/e;

    iget-object v3, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->context:Landroid/content/Context;

    invoke-interface {v0, v1, v3}, Lcom/tencent/mm/pluginsdk/e;->c(Landroid/content/Intent;Landroid/content/Context;)V

    .line 612
    iput-boolean v2, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->dgb:Z

    move v0, v2

    .line 613
    goto/16 :goto_0

    .line 600
    :cond_8
    sget-object v4, Lcom/tencent/mm/ui/tools/jsapi/p;->hpq:Landroid/os/Bundle;

    const-string v5, "Contact_Scene"

    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_1

    .line 616
    :cond_9
    invoke-static {}, Lcom/tencent/mm/model/ar;->tZ()Lcom/tencent/mm/model/at;

    move-result-object v0

    new-instance v2, Lcom/tencent/mm/ui/tools/jsapi/q;

    invoke-direct {v2, p0}, Lcom/tencent/mm/ui/tools/jsapi/q;-><init>(Lcom/tencent/mm/ui/tools/jsapi/p;)V

    invoke-interface {v0, p1, v2}, Lcom/tencent/mm/model/at;->a(Ljava/lang/String;Lcom/tencent/mm/model/au;)V

    .line 659
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->context:Landroid/content/Context;

    sget v3, Lcom/tencent/mm/n;->ber:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->context:Landroid/content/Context;

    sget v3, Lcom/tencent/mm/n;->beu:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/tencent/mm/ui/tools/jsapi/ab;

    invoke-direct {v3, p0, p1}, Lcom/tencent/mm/ui/tools/jsapi/ab;-><init>(Lcom/tencent/mm/ui/tools/jsapi/p;Ljava/lang/String;)V

    invoke-static {v0, v2, v1, v3}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)Lcom/tencent/mm/ui/base/ch;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->cIr:Landroid/app/ProgressDialog;

    move v0, v1

    .line 667
    goto/16 :goto_0
.end method

.method public final b(IILandroid/content/Intent;)V
    .locals 20
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2223
    const-string v1, "MicroMsg.MsgHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mmOnActivityResult, requestCode = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", resultCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2225
    const/4 v1, 0x1

    move/from16 v0, p1

    if-ne v0, v1, :cond_8

    .line 2227
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/mm/ui/tools/jsapi/p;->bOa:Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;

    if-nez v1, :cond_1

    .line 2228
    const-string v1, "MicroMsg.MsgHandler"

    const-string v2, "mmOnActivityResult fail, appmsg is null"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2229
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/mm/ui/tools/jsapi/p;->hpm:Lcom/tencent/mm/ui/tools/jsapi/ao;

    const-string v2, "send_app_msg:fail"

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/ao;Ljava/lang/String;Ljava/util/Map;)V

    .line 2397
    :cond_0
    :goto_0
    return-void

    .line 2233
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/mm/ui/tools/jsapi/p;->hpm:Lcom/tencent/mm/ui/tools/jsapi/ao;

    iget-object v1, v1, Lcom/tencent/mm/ui/tools/jsapi/ao;->dOk:Ljava/util/Map;

    const-string v2, "appid"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2240
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 2246
    :pswitch_0
    const/4 v1, 0x1

    invoke-static {v4, v1}, Lcom/tencent/mm/pluginsdk/model/app/l;->F(Ljava/lang/String;Z)Lcom/tencent/mm/pluginsdk/model/app/k;

    move-result-object v3

    .line 2247
    if-nez p3, :cond_3

    const/4 v5, 0x0

    .line 2248
    :goto_1
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_4

    .line 2249
    :cond_2
    const-string v1, "MicroMsg.MsgHandler"

    const-string v2, "mmOnActivityResult fail, toUser is null"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2250
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/mm/ui/tools/jsapi/p;->hpm:Lcom/tencent/mm/ui/tools/jsapi/ao;

    const-string v2, "send_app_msg:fail"

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/ao;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 2242
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/mm/ui/tools/jsapi/p;->hpm:Lcom/tencent/mm/ui/tools/jsapi/ao;

    const-string v2, "send_app_msg:cancel"

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/ao;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 2247
    :cond_3
    const-string v1, "Select_Conv_User"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 2254
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/mm/ui/tools/jsapi/p;->hpm:Lcom/tencent/mm/ui/tools/jsapi/ao;

    iget-object v1, v1, Lcom/tencent/mm/ui/tools/jsapi/ao;->dOk:Ljava/util/Map;

    const-string v2, "img_url"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2255
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/mm/ui/tools/jsapi/p;->hpm:Lcom/tencent/mm/ui/tools/jsapi/ao;

    iget-object v1, v1, Lcom/tencent/mm/ui/tools/jsapi/ao;->dOk:Ljava/util/Map;

    const-string v2, "desc"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Ljava/lang/String;

    .line 2256
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/mm/ui/tools/jsapi/p;->hpm:Lcom/tencent/mm/ui/tools/jsapi/ao;

    iget-object v1, v1, Lcom/tencent/mm/ui/tools/jsapi/ao;->dOk:Ljava/util/Map;

    const-string v2, "src_username"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 2257
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/mm/ui/tools/jsapi/p;->hpm:Lcom/tencent/mm/ui/tools/jsapi/ao;

    iget-object v1, v1, Lcom/tencent/mm/ui/tools/jsapi/ao;->dOk:Ljava/util/Map;

    const-string v2, "src_displayname"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 2258
    invoke-static {}, Lcom/tencent/mm/ui/tools/jsapi/p;->aoZ()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "connector_local_report"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Lcom/tencent/mm/ui/tools/jsapi/p;->aoZ()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "connector_local_report"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 2259
    invoke-static {v9}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2260
    const/4 v1, 0x0

    .line 2262
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mm/ui/tools/jsapi/p;->context:Landroid/content/Context;

    instance-of v2, v2, Lcom/tencent/mm/ui/MMActivity;

    if-eqz v2, :cond_5

    .line 2263
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/mm/ui/tools/jsapi/p;->context:Landroid/content/Context;

    move-object v11, v1

    check-cast v11, Lcom/tencent/mm/ui/MMActivity;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/mm/ui/tools/jsapi/p;->bOa:Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;

    iget-object v12, v1, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->title:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/mm/ui/tools/jsapi/p;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/tencent/mm/n;->bel:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    new-instance v1, Lcom/tencent/mm/ui/tools/jsapi/z;

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v9}, Lcom/tencent/mm/ui/tools/jsapi/z;-><init>(Lcom/tencent/mm/ui/tools/jsapi/p;Lcom/tencent/mm/pluginsdk/model/app/k;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v11

    move-object v5, v12

    move-object v7, v10

    move-object v8, v13

    move-object v9, v1

    invoke-static/range {v4 .. v9}, Lcom/tencent/mm/pluginsdk/ui/applet/i;->a(Lcom/tencent/mm/ui/MMActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/mm/pluginsdk/ui/applet/r;)Lcom/tencent/mm/ui/base/ce;

    move-result-object v1

    .line 2279
    :cond_5
    if-nez v1, :cond_0

    .line 2280
    const-string v1, "MicroMsg.MsgHandler"

    const-string v2, "mmOnActivityResult fail, cannot show dialog"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2281
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/mm/ui/tools/jsapi/p;->hpm:Lcom/tencent/mm/ui/tools/jsapi/ao;

    const-string v2, "send_app_msg:fail"

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/ao;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 2285
    :cond_6
    invoke-static {v6}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2286
    const/16 v17, 0x0

    move-object/from16 v10, p0

    move-object v11, v3

    move-object v12, v4

    move-object v13, v5

    move-object v14, v6

    move-object v15, v7

    move-object/from16 v16, v8

    move-object/from16 v18, v9

    invoke-direct/range {v10 .. v18}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/pluginsdk/model/app/k;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2287
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/mm/ui/tools/jsapi/p;->context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mm/ui/tools/jsapi/p;->context:Landroid/content/Context;

    sget v3, Lcom/tencent/mm/n;->bej:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/ui/base/h;->an(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    .line 2288
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/mm/ui/tools/jsapi/p;->hpm:Lcom/tencent/mm/ui/tools/jsapi/ao;

    const-string v2, "send_app_msg:ok"

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/ao;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 2293
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/mm/ui/tools/jsapi/p;->context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mm/ui/tools/jsapi/p;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v10, Lcom/tencent/mm/n;->bem:I

    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v10, 0x1

    new-instance v11, Lcom/tencent/mm/ui/tools/jsapi/aa;

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v6}, Lcom/tencent/mm/ui/tools/jsapi/aa;-><init>(Lcom/tencent/mm/ui/tools/jsapi/p;Ljava/lang/String;)V

    invoke-static {v1, v2, v10, v11}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)Lcom/tencent/mm/ui/base/ch;

    move-result-object v12

    .line 2303
    invoke-static {}, Lcom/tencent/mm/w/ag;->AZ()Lcom/tencent/mm/w/a;

    move-result-object v1

    new-instance v10, Lcom/tencent/mm/ui/tools/jsapi/ac;

    move-object/from16 v11, p0

    move-object v13, v3

    move-object v14, v4

    move-object v15, v5

    move-object/from16 v16, v6

    move-object/from16 v17, v7

    move-object/from16 v18, v8

    move-object/from16 v19, v9

    invoke-direct/range {v10 .. v19}, Lcom/tencent/mm/ui/tools/jsapi/ac;-><init>(Lcom/tencent/mm/ui/tools/jsapi/p;Landroid/app/ProgressDialog;Lcom/tencent/mm/pluginsdk/model/app/k;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v6, v10}, Lcom/tencent/mm/w/a;->a(Ljava/lang/String;Lcom/tencent/mm/w/d;)V

    goto/16 :goto_0

    .line 2318
    :cond_8
    const/4 v1, 0x2

    move/from16 v0, p1

    if-ne v0, v1, :cond_9

    .line 2319
    packed-switch p2, :pswitch_data_1

    .line 2331
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/mm/ui/tools/jsapi/p;->hpm:Lcom/tencent/mm/ui/tools/jsapi/ao;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "share_weibo:fail_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "err_code"

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/ao;Ljava/lang/String;Ljava/util/Map;)V

    .line 2332
    const-string v1, "MicroMsg.MsgHandler"

    const-string v2, "unknown resultCode"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2321
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/mm/ui/tools/jsapi/p;->context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mm/ui/tools/jsapi/p;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/tencent/mm/n;->beq:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/ui/base/h;->an(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    .line 2322
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/mm/ui/tools/jsapi/p;->hpm:Lcom/tencent/mm/ui/tools/jsapi/ao;

    const-string v2, "share_weibo:ok"

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/ao;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 2325
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/mm/ui/tools/jsapi/p;->hpm:Lcom/tencent/mm/ui/tools/jsapi/ao;

    const-string v2, "share_weibo:cancel"

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/ao;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 2328
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/mm/ui/tools/jsapi/p;->hpm:Lcom/tencent/mm/ui/tools/jsapi/ao;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "share_weibo:fail_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "err_code"

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/ao;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 2335
    :cond_9
    const/4 v1, 0x3

    move/from16 v0, p1

    if-ne v0, v1, :cond_b

    .line 2337
    const-string v1, "MicroMsg.MsgHandler"

    const-string v2, "get callback address"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2338
    const/4 v1, -0x1

    move/from16 v0, p2

    if-ne v0, v1, :cond_a

    if-eqz p3, :cond_a

    .line 2339
    const-string v1, "nationalCode"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/cj;->R(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2340
    const-string v2, "userName"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-static {v2, v3}, Lcom/tencent/mm/sdk/platformtools/cj;->R(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2341
    const-string v3, "telNumber"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-static {v3, v4}, Lcom/tencent/mm/sdk/platformtools/cj;->R(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2342
    const-string v4, "addressPostalCode"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-static {v4, v5}, Lcom/tencent/mm/sdk/platformtools/cj;->R(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2343
    const-string v5, "proviceFirstStageName"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-static {v5, v6}, Lcom/tencent/mm/sdk/platformtools/cj;->R(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2344
    const-string v6, "addressCitySecondStageName"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-static {v6, v7}, Lcom/tencent/mm/sdk/platformtools/cj;->R(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2345
    const-string v7, "addressCountiesThirdStageName"

    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-static {v7, v8}, Lcom/tencent/mm/sdk/platformtools/cj;->R(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2346
    const-string v8, "addressDetailInfo"

    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-static {v8, v9}, Lcom/tencent/mm/sdk/platformtools/cj;->R(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2347
    const-string v9, "MicroMsg.MsgHandler"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "first =  "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ; detail ="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "; second = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ; tel = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "; third = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2348
    invoke-static {v2}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_a

    .line 2349
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 2350
    const-string v10, "nationalCode"

    invoke-interface {v9, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2351
    const-string v1, "userName"

    invoke-interface {v9, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2352
    const-string v1, "telNumber"

    invoke-interface {v9, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2353
    const-string v1, "addressPostalCode"

    invoke-interface {v9, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2354
    const-string v1, "proviceFirstStageName"

    invoke-interface {v9, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2355
    const-string v1, "addressCitySecondStageName"

    invoke-interface {v9, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2356
    const-string v1, "addressCountiesThirdStageName"

    invoke-interface {v9, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2357
    const-string v1, "addressDetailInfo"

    invoke-interface {v9, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2358
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/mm/ui/tools/jsapi/p;->hpm:Lcom/tencent/mm/ui/tools/jsapi/ao;

    const-string v2, "edit_address:ok"

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v9}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/ao;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 2362
    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/mm/ui/tools/jsapi/p;->hpm:Lcom/tencent/mm/ui/tools/jsapi/ao;

    const-string v2, "edit_address:fail"

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/ao;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 2364
    :cond_b
    const/4 v1, 0x4

    move/from16 v0, p1

    if-ne v0, v1, :cond_d

    .line 2366
    const-string v1, "MicroMsg.MsgHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "request pay, resultCode = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2368
    const/4 v1, -0x1

    move/from16 v0, p2

    if-ne v0, v1, :cond_c

    .line 2369
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/mm/ui/tools/jsapi/p;->hpm:Lcom/tencent/mm/ui/tools/jsapi/ao;

    const-string v2, "get_brand_wcpay_request:ok"

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/ao;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 2371
    :cond_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/mm/ui/tools/jsapi/p;->hpm:Lcom/tencent/mm/ui/tools/jsapi/ao;

    const-string v2, "get_brand_wcpay_request:cancel"

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/ao;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 2373
    :cond_d
    const/4 v1, 0x5

    move/from16 v0, p1

    if-ne v0, v1, :cond_f

    .line 2374
    const-string v1, "MicroMsg.MsgHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "request jump to mall, resultCode = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2376
    const/4 v1, -0x1

    move/from16 v0, p2

    if-ne v0, v1, :cond_e

    .line 2377
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/mm/ui/tools/jsapi/p;->hpm:Lcom/tencent/mm/ui/tools/jsapi/ao;

    const-string v2, "jump_wcmall:ok"

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/ao;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 2379
    :cond_e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/mm/ui/tools/jsapi/p;->hpm:Lcom/tencent/mm/ui/tools/jsapi/ao;

    const-string v2, "jump_wcmall:fail"

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/ao;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 2381
    :cond_f
    const/4 v1, 0x6

    move/from16 v0, p1

    if-ne v0, v1, :cond_11

    .line 2382
    const-string v1, "MicroMsg.MsgHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "request jump to product view, resultCode = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2383
    const/4 v1, -0x1

    move/from16 v0, p2

    if-ne v0, v1, :cond_10

    .line 2384
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/mm/ui/tools/jsapi/p;->hpm:Lcom/tencent/mm/ui/tools/jsapi/ao;

    const-string v2, "open_product_view:ok"

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/ao;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 2386
    :cond_10
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/mm/ui/tools/jsapi/p;->hpm:Lcom/tencent/mm/ui/tools/jsapi/ao;

    const-string v2, "open_product_view:fail"

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/ao;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 2388
    :cond_11
    const/4 v1, 0x7

    move/from16 v0, p1

    if-ne v0, v1, :cond_0

    .line 2389
    const-string v1, "MicroMsg.MsgHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "request bind card, resultCode = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2390
    const/4 v1, -0x1

    move/from16 v0, p2

    if-ne v0, v1, :cond_12

    .line 2391
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/mm/ui/tools/jsapi/p;->hpm:Lcom/tencent/mm/ui/tools/jsapi/ao;

    const-string v2, "get_brand_WCPay_bind_card_request:ok"

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/ao;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 2393
    :cond_12
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/mm/ui/tools/jsapi/p;->hpm:Lcom/tencent/mm/ui/tools/jsapi/ao;

    const-string v2, "get_brand_WCPay_bind_card_request:fail"

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/ao;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 2240
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 2319
    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final detach()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 261
    iput-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->context:Landroid/content/Context;

    .line 263
    iput-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->feu:Lcom/tencent/mm/plugin/webview/stub/ao;

    .line 267
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->hps:Lcom/tencent/mm/ui/tools/jsapi/e;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->hps:Lcom/tencent/mm/ui/tools/jsapi/e;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/tools/jsapi/e;->detach()V

    .line 270
    :cond_0
    return-void
.end method

.method public final ei(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2514
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->cQI:Lcom/tencent/mm/storage/i;

    if-eqz v0, :cond_3

    .line 2515
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 2516
    :goto_0
    iget-object v3, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v3}, Lcom/tencent/mm/storage/i;->rp()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v3}, Lcom/tencent/mm/storage/i;->rp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2518
    :goto_1
    if-nez v0, :cond_4

    if-nez v1, :cond_4

    .line 2548
    :cond_0
    :goto_2
    return-void

    :cond_1
    move v0, v2

    .line 2515
    goto :goto_0

    :cond_2
    move v1, v2

    .line 2516
    goto :goto_1

    .line 2522
    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->hpt:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->hpt:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2527
    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->hpo:Lcom/tencent/mm/ui/base/ce;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->hpo:Lcom/tencent/mm/ui/base/ce;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/ce;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2531
    new-instance v0, Lcom/tencent/mm/ui/tools/jsapi/ae;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/tools/jsapi/ae;-><init>(Lcom/tencent/mm/ui/tools/jsapi/p;)V

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/an;->i(Ljava/lang/Runnable;)V

    goto :goto_2
.end method

.method public final isBusy()Z
    .locals 1

    .prologue
    .line 250
    iget-boolean v0, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->dgb:Z

    return v0
.end method

.method public final pZ(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 281
    const-string v0, "MicroMsg.MsgHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setFromMenu, functionName = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", clear isBusy state"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->dgb:Z

    .line 284
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->hpp:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/p;->hpp:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 287
    :cond_0
    return-void
.end method
