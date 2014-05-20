.class public final Lcom/tencent/mm/ui/chatting/kz;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/tencent/mm/storage/ak;Ljava/lang/String;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 394
    const/16 v0, 0x200

    invoke-static {p0, p1, p2, v0}, Lcom/tencent/mm/ui/chatting/kz;->a(Lcom/tencent/mm/storage/ak;Ljava/lang/String;Landroid/content/Context;I)V

    .line 395
    return-void
.end method

.method private static a(Lcom/tencent/mm/storage/ak;Ljava/lang/String;Landroid/content/Context;I)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 407
    if-nez p2, :cond_0

    .line 408
    const-string v0, "MicroMsg.LongClickBrandServiceHelper"

    const-string v1, "showAcceptMusicConnector: context is null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    :goto_0
    return-void

    .line 412
    :cond_0
    if-nez p0, :cond_1

    .line 413
    const-string v0, "MicroMsg.LongClickBrandServiceHelper"

    const-string v1, "showAcceptMusicConnector: msg is null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 417
    :cond_1
    const/4 v0, 0x0

    .line 418
    sparse-switch p3, :sswitch_data_0

    .line 427
    :goto_1
    new-instance v1, Lcom/tencent/mm/ui/chatting/lk;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/tencent/mm/ui/chatting/lk;-><init>(Lcom/tencent/mm/storage/ak;Ljava/lang/String;ILandroid/content/Context;)V

    invoke-static {v0, p2, v1}, Lcom/tencent/mm/ui/chatting/kz;->a(Ljava/util/List;Landroid/content/Context;Lcom/tencent/mm/ui/base/cd;)V

    goto :goto_0

    .line 420
    :sswitch_0
    invoke-static {}, Lcom/tencent/mm/p/p;->xV()Ljava/util/List;

    move-result-object v0

    goto :goto_1

    .line 423
    :sswitch_1
    invoke-static {}, Lcom/tencent/mm/p/p;->xT()Ljava/util/List;

    move-result-object v0

    goto :goto_1

    .line 426
    :sswitch_2
    invoke-static {}, Lcom/tencent/mm/p/p;->xX()Ljava/util/List;

    move-result-object v0

    goto :goto_1

    .line 418
    :sswitch_data_0
    .sparse-switch
        0x80 -> :sswitch_1
        0x100 -> :sswitch_0
        0x200 -> :sswitch_2
    .end sparse-switch
.end method

.method private static a(Ljava/util/List;Landroid/content/Context;Lcom/tencent/mm/ui/base/cd;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 512
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 513
    :cond_0
    const-string v0, "MicroMsg.LongClickBrandServiceHelper"

    const-string v1, "tryShowConnectorDialog: careList is null or empty"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    :goto_0
    return-void

    .line 517
    :cond_1
    new-instance v0, Lcom/tencent/mm/ui/tools/dl;

    invoke-direct {v0, p1}, Lcom/tencent/mm/ui/tools/dl;-><init>(Landroid/content/Context;)V

    .line 518
    new-instance v1, Lcom/tencent/mm/ui/chatting/ll;

    invoke-direct {v1}, Lcom/tencent/mm/ui/chatting/ll;-><init>()V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/tools/dl;->a(Lcom/tencent/mm/ui/base/ca;)V

    .line 525
    new-instance v1, Lcom/tencent/mm/ui/chatting/lb;

    invoke-direct {v1, p1}, Lcom/tencent/mm/ui/chatting/lb;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/tools/dl;->a(Lcom/tencent/mm/ui/base/cb;)V

    .line 540
    new-instance v1, Lcom/tencent/mm/ui/chatting/lc;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/chatting/lc;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/tools/dl;->a(Lcom/tencent/mm/ui/base/cc;)V

    .line 550
    invoke-virtual {v0, p2}, Lcom/tencent/mm/ui/tools/dl;->b(Lcom/tencent/mm/ui/base/cd;)V

    .line 551
    invoke-virtual {v0}, Lcom/tencent/mm/ui/tools/dl;->cB()Z

    goto :goto_0
.end method

.method public static b(Lcom/tencent/mm/storage/ak;Landroid/content/Context;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 100
    if-nez p1, :cond_0

    .line 101
    const-string v0, "MicroMsg.LongClickBrandServiceHelper"

    const-string v1, "showAcceptVoiceConnector: context is null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    :goto_0
    return-void

    .line 105
    :cond_0
    if-nez p0, :cond_1

    .line 106
    const-string v0, "MicroMsg.LongClickBrandServiceHelper"

    const-string v1, "showAcceptVoiceConnector: msg is null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 110
    :cond_1
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->isSDCardAvailable()Z

    move-result v0

    if-nez v0, :cond_2

    .line 111
    invoke-static {p1}, Lcom/tencent/mm/ui/base/dn;->bW(Landroid/content/Context;)V

    .line 112
    const-string v0, "MicroMsg.LongClickBrandServiceHelper"

    const-string v1, "showAcceptVoiceConnector: sd card not available"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 116
    :cond_2
    invoke-static {}, Lcom/tencent/mm/p/ab;->ye()Lcom/tencent/mm/p/k;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/tencent/mm/p/k;->cT(I)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/ui/chatting/ld;

    invoke-direct {v1, p0, p1}, Lcom/tencent/mm/ui/chatting/ld;-><init>(Lcom/tencent/mm/storage/ak;Landroid/content/Context;)V

    invoke-static {v0, p1, v1}, Lcom/tencent/mm/ui/chatting/kz;->a(Ljava/util/List;Landroid/content/Context;Lcom/tencent/mm/ui/base/cd;)V

    goto :goto_0
.end method

.method public static b(Lcom/tencent/mm/storage/ak;Ljava/lang/String;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 398
    const/16 v0, 0x100

    invoke-static {p0, p1, p2, v0}, Lcom/tencent/mm/ui/chatting/kz;->a(Lcom/tencent/mm/storage/ak;Ljava/lang/String;Landroid/content/Context;I)V

    .line 399
    return-void
.end method

.method public static c(Lcom/tencent/mm/storage/ak;Landroid/content/Context;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 145
    if-nez p1, :cond_0

    .line 146
    const-string v0, "MicroMsg.LongClickBrandServiceHelper"

    const-string v1, "showAcceptImgConnector: context is null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    :goto_0
    return-void

    .line 150
    :cond_0
    if-nez p0, :cond_1

    .line 151
    const-string v0, "MicroMsg.LongClickBrandServiceHelper"

    const-string v1, "showAcceptImgConnector: msg is null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 155
    :cond_1
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->isSDCardAvailable()Z

    move-result v0

    if-nez v0, :cond_2

    .line 156
    invoke-static {p1}, Lcom/tencent/mm/ui/base/dn;->bW(Landroid/content/Context;)V

    .line 157
    const-string v0, "MicroMsg.LongClickBrandServiceHelper"

    const-string v1, "showAcceptImgConnector: sd card is not available"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 161
    :cond_2
    invoke-static {}, Lcom/tencent/mm/p/ab;->ye()Lcom/tencent/mm/p/k;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/tencent/mm/p/k;->cT(I)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/ui/chatting/le;

    invoke-direct {v1, p0, p1}, Lcom/tencent/mm/ui/chatting/le;-><init>(Lcom/tencent/mm/storage/ak;Landroid/content/Context;)V

    invoke-static {v0, p1, v1}, Lcom/tencent/mm/ui/chatting/kz;->a(Ljava/util/List;Landroid/content/Context;Lcom/tencent/mm/ui/base/cd;)V

    goto :goto_0
.end method

.method public static c(Lcom/tencent/mm/storage/ak;Ljava/lang/String;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 402
    const/16 v0, 0x80

    invoke-static {p0, p1, p2, v0}, Lcom/tencent/mm/ui/chatting/kz;->a(Lcom/tencent/mm/storage/ak;Ljava/lang/String;Landroid/content/Context;I)V

    .line 403
    return-void
.end method

.method public static d(Lcom/tencent/mm/storage/ak;Landroid/content/Context;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 233
    if-nez p1, :cond_0

    .line 234
    const-string v0, "MicroMsg.LongClickBrandServiceHelper"

    const-string v1, "showAcceptVideoConnector: context is null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    :goto_0
    return-void

    .line 238
    :cond_0
    if-nez p0, :cond_1

    .line 239
    const-string v0, "MicroMsg.LongClickBrandServiceHelper"

    const-string v1, "showAcceptVideoConnector: msg is null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 243
    :cond_1
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->isSDCardAvailable()Z

    move-result v0

    if-nez v0, :cond_2

    .line 244
    invoke-static {p1}, Lcom/tencent/mm/ui/base/dn;->bW(Landroid/content/Context;)V

    .line 245
    const-string v0, "MicroMsg.LongClickBrandServiceHelper"

    const-string v1, "showAcceptVideoConnector: sd card is not available"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 249
    :cond_2
    invoke-static {}, Lcom/tencent/mm/p/p;->xL()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/ui/chatting/lf;

    invoke-direct {v1, p0, p1}, Lcom/tencent/mm/ui/chatting/lf;-><init>(Lcom/tencent/mm/storage/ak;Landroid/content/Context;)V

    invoke-static {v0, p1, v1}, Lcom/tencent/mm/ui/chatting/kz;->a(Ljava/util/List;Landroid/content/Context;Lcom/tencent/mm/ui/base/cd;)V

    goto :goto_0
.end method

.method public static e(Lcom/tencent/mm/storage/ak;Landroid/content/Context;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 343
    if-nez p1, :cond_0

    .line 344
    const-string v0, "MicroMsg.LongClickBrandServiceHelper"

    const-string v1, "showAcceptEmojiConnector: context is null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    :goto_0
    return-void

    .line 348
    :cond_0
    if-nez p0, :cond_1

    .line 349
    const-string v0, "MicroMsg.LongClickBrandServiceHelper"

    const-string v1, "showAcceptEmojiConnector: msg is null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 353
    :cond_1
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->isSDCardAvailable()Z

    move-result v0

    if-nez v0, :cond_2

    .line 354
    invoke-static {p1}, Lcom/tencent/mm/ui/base/dn;->bW(Landroid/content/Context;)V

    .line 355
    const-string v0, "MicroMsg.LongClickBrandServiceHelper"

    const-string v1, "showAcceptEmojiConnector: sd card is not available"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 359
    :cond_2
    invoke-static {}, Lcom/tencent/mm/p/p;->xR()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/ui/chatting/lj;

    invoke-direct {v1, p0, p1}, Lcom/tencent/mm/ui/chatting/lj;-><init>(Lcom/tencent/mm/storage/ak;Landroid/content/Context;)V

    invoke-static {v0, p1, v1}, Lcom/tencent/mm/ui/chatting/kz;->a(Ljava/util/List;Landroid/content/Context;Lcom/tencent/mm/ui/base/cd;)V

    goto :goto_0
.end method

.method public static h(Ljava/lang/String;Landroid/content/Context;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 68
    if-nez p1, :cond_0

    .line 69
    const-string v0, "MicroMsg.LongClickBrandServiceHelper"

    const-string v1, "showAcceptTextConnector: context is null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    :goto_0
    return-void

    .line 73
    :cond_0
    invoke-static {p0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    const-string v0, "MicroMsg.LongClickBrandServiceHelper"

    const-string v1, "showAcceptTextConnector: content is null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 78
    :cond_1
    invoke-static {}, Lcom/tencent/mm/p/ab;->ye()Lcom/tencent/mm/p/k;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/p/k;->cT(I)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/ui/chatting/la;

    invoke-direct {v1, p0, p1}, Lcom/tencent/mm/ui/chatting/la;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-static {v0, p1, v1}, Lcom/tencent/mm/ui/chatting/kz;->a(Ljava/util/List;Landroid/content/Context;Lcom/tencent/mm/ui/base/cd;)V

    goto :goto_0
.end method

.method public static i(Ljava/lang/String;Landroid/content/Context;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 279
    if-nez p1, :cond_0

    .line 280
    const-string v0, "MicroMsg.LongClickBrandServiceHelper"

    const-string v1, "showAcceptLocationConnector: context is null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    :goto_0
    return-void

    .line 284
    :cond_0
    invoke-static {p0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 285
    const-string v0, "MicroMsg.LongClickBrandServiceHelper"

    const-string v1, "showAcceptLocationConnector: locationXML is null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 289
    :cond_1
    invoke-static {}, Lcom/tencent/mm/p/p;->xN()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/ui/chatting/lh;

    invoke-direct {v1, p0, p1}, Lcom/tencent/mm/ui/chatting/lh;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-static {v0, p1, v1}, Lcom/tencent/mm/ui/chatting/kz;->a(Ljava/util/List;Landroid/content/Context;Lcom/tencent/mm/ui/base/cd;)V

    goto :goto_0
.end method

.method public static j(Ljava/lang/String;Landroid/content/Context;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 311
    if-nez p1, :cond_0

    .line 312
    const-string v0, "MicroMsg.LongClickBrandServiceHelper"

    const-string v1, "showAcceptPersonalCardConnector: context is null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    :goto_0
    return-void

    .line 316
    :cond_0
    invoke-static {p0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 317
    const-string v0, "MicroMsg.LongClickBrandServiceHelper"

    const-string v1, "showAcceptPersonalCardConnector: locationXML is null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 321
    :cond_1
    invoke-static {}, Lcom/tencent/mm/p/p;->xP()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/ui/chatting/li;

    invoke-direct {v1, p0, p1}, Lcom/tencent/mm/ui/chatting/li;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-static {v0, p1, v1}, Lcom/tencent/mm/ui/chatting/kz;->a(Ljava/util/List;Landroid/content/Context;Lcom/tencent/mm/ui/base/cd;)V

    goto :goto_0
.end method
