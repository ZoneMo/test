.class public Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;
.super Lcom/tencent/mm/ui/base/preference/MMPreference;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/sdk/e/al;
.implements Lcom/tencent/mm/sdk/e/ar;
.implements Lcom/tencent/mm/storage/ch;


# instance fields
.field private cIG:Lcom/tencent/mm/ui/base/preference/n;

.field private cQI:Lcom/tencent/mm/storage/i;

.field private dNx:Z

.field private edN:I

.field private gVT:Lcom/tencent/mm/pluginsdk/b/a;

.field private gVU:Z

.field private gVV:[B

.field private gVW:Z

.field private ghP:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/tencent/mm/ui/base/preference/MMPreference;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->gVW:Z

    .line 65
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->ghP:Ljava/lang/String;

    .line 67
    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->wW(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;)Z
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->gVW:Z

    return v0
.end method

.method static synthetic b(Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;)Lcom/tencent/mm/storage/i;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->cQI:Lcom/tencent/mm/storage/i;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;)Z
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->gVU:Z

    return v0
.end method

.method static synthetic d(Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;)Lcom/tencent/mm/pluginsdk/b/a;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->gVT:Lcom/tencent/mm/pluginsdk/b/a;

    return-object v0
.end method

.method static synthetic e(Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;)Lcom/tencent/mm/ui/base/preference/n;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    return-object v0
.end method

.method static synthetic f(Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->ghP:Ljava/lang/String;

    return-object v0
.end method

.method private wW(Ljava/lang/String;)V
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    const v2, 0x7f0702a8

    .line 364
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v1}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/model/w;->cy(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 365
    const-string v0, "qqmail"

    invoke-static {p0, v0}, Lcom/tencent/mm/ak/a;->C(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/mm/pluginsdk/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->gVT:Lcom/tencent/mm/pluginsdk/b/a;

    .line 461
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->gVT:Lcom/tencent/mm/pluginsdk/b/a;

    if-eqz v0, :cond_1

    .line 462
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->gVT:Lcom/tencent/mm/pluginsdk/b/a;

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->cQI:Lcom/tencent/mm/storage/i;

    iget-boolean v3, p0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->dNx:Z

    iget v4, p0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->edN:I

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/tencent/mm/pluginsdk/b/a;->a(Lcom/tencent/mm/ui/base/preference/n;Lcom/tencent/mm/storage/i;ZI)Z

    .line 465
    :cond_1
    return-void

    .line 367
    :cond_2
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v1}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/model/w;->cz(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 368
    new-instance v0, Lcom/tencent/mm/ui/contact/profile/w;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/contact/profile/w;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->gVT:Lcom/tencent/mm/pluginsdk/b/a;

    .line 369
    invoke-virtual {p0, v2}, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->mn(I)V

    goto :goto_0

    .line 371
    :cond_3
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v1}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/model/w;->cB(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 372
    const-string v0, "bottle"

    invoke-static {p0, v0}, Lcom/tencent/mm/ak/a;->C(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/mm/pluginsdk/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->gVT:Lcom/tencent/mm/pluginsdk/b/a;

    .line 373
    invoke-virtual {p0, v2}, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->mn(I)V

    goto :goto_0

    .line 375
    :cond_4
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v1}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/model/w;->cA(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 377
    const-string v0, "tmessage"

    invoke-static {p0, v0}, Lcom/tencent/mm/ak/a;->C(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/mm/pluginsdk/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->gVT:Lcom/tencent/mm/pluginsdk/b/a;

    .line 378
    invoke-virtual {p0, v2}, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->mn(I)V

    goto :goto_0

    .line 380
    :cond_5
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v1}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/model/w;->cC(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 382
    const-string v0, "qmessage"

    const-string v1, "widget_type_plugin"

    invoke-static {p0, v0, v1}, Lcom/tencent/mm/ak/a;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mm/pluginsdk/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->gVT:Lcom/tencent/mm/pluginsdk/b/a;

    .line 383
    invoke-virtual {p0, v2}, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->mn(I)V

    goto :goto_0

    .line 385
    :cond_6
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v1}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/storage/i;->tA(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 387
    const-string v0, "qmessage"

    const-string v1, "widget_type_contact"

    invoke-static {p0, v0, v1}, Lcom/tencent/mm/ak/a;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mm/pluginsdk/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->gVT:Lcom/tencent/mm/pluginsdk/b/a;

    goto/16 :goto_0

    .line 389
    :cond_7
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v1}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/model/w;->cr(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 390
    new-instance v0, Lcom/tencent/mm/ui/contact/profile/al;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/contact/profile/al;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->gVT:Lcom/tencent/mm/pluginsdk/b/a;

    goto/16 :goto_0

    .line 391
    :cond_8
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v1}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/model/w;->cG(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 392
    const-string v0, "qqsync"

    invoke-static {p0, v0}, Lcom/tencent/mm/ak/a;->C(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/mm/pluginsdk/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->gVT:Lcom/tencent/mm/pluginsdk/b/a;

    goto/16 :goto_0

    .line 394
    :cond_9
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v1}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/storage/i;->tC(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 395
    new-instance v0, Lcom/tencent/mm/ui/contact/profile/v;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/contact/profile/v;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->gVT:Lcom/tencent/mm/pluginsdk/b/a;

    goto/16 :goto_0

    .line 397
    :cond_a
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v1}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/model/w;->cI(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 398
    const-string v0, "nearby"

    invoke-static {p0, v0}, Lcom/tencent/mm/ak/a;->C(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/mm/pluginsdk/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->gVT:Lcom/tencent/mm/pluginsdk/b/a;

    goto/16 :goto_0

    .line 400
    :cond_b
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v1}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/model/w;->cJ(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 401
    const-string v0, "shake"

    invoke-static {p0, v0}, Lcom/tencent/mm/ak/a;->C(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/mm/pluginsdk/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->gVT:Lcom/tencent/mm/pluginsdk/b/a;

    goto/16 :goto_0

    .line 403
    :cond_c
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v1}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/model/w;->cK(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 404
    new-instance v0, Lcom/tencent/mm/ui/contact/profile/aq;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/contact/profile/aq;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->gVT:Lcom/tencent/mm/pluginsdk/b/a;

    goto/16 :goto_0

    .line 406
    :cond_d
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v1}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/model/w;->cL(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 407
    const-string v0, "readerapp"

    const-string v1, "widget_type_news"

    invoke-static {p0, v0, v1}, Lcom/tencent/mm/ak/a;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mm/pluginsdk/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->gVT:Lcom/tencent/mm/pluginsdk/b/a;

    goto/16 :goto_0

    .line 410
    :cond_e
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v1}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/model/w;->cS(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 411
    const-string v0, "readerapp"

    const-string v1, "widget_type_weibo"

    invoke-static {p0, v0, v1}, Lcom/tencent/mm/ak/a;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mm/pluginsdk/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->gVT:Lcom/tencent/mm/pluginsdk/b/a;

    goto/16 :goto_0

    .line 414
    :cond_f
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v1}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/model/w;->cM(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 415
    new-instance v0, Lcom/tencent/mm/ui/contact/profile/bn;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/contact/profile/bn;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->gVT:Lcom/tencent/mm/pluginsdk/b/a;

    goto/16 :goto_0

    .line 417
    :cond_10
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v1}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/model/w;->cD(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 418
    new-instance v0, Lcom/tencent/mm/ui/contact/profile/aa;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/contact/profile/aa;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->gVT:Lcom/tencent/mm/pluginsdk/b/a;

    goto/16 :goto_0

    .line 420
    :cond_11
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v1}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/model/w;->cV(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 421
    new-instance v0, Lcom/tencent/mm/ui/contact/profile/be;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/contact/profile/be;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->gVT:Lcom/tencent/mm/pluginsdk/b/a;

    goto/16 :goto_0

    .line 422
    :cond_12
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v1}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/model/w;->cW(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 423
    new-instance v0, Lcom/tencent/mm/ui/contact/profile/ag;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/contact/profile/ag;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->gVT:Lcom/tencent/mm/pluginsdk/b/a;

    .line 424
    invoke-static {p0}, Lcom/tencent/mm/modelfriend/ab;->O(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 425
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.tencent.mm.gms.CHECK_GP_SERVICES"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x3ed

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 427
    :cond_13
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v1}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/model/w;->cE(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 428
    const-string v0, "masssend"

    invoke-static {p0, v0}, Lcom/tencent/mm/ak/a;->C(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/mm/pluginsdk/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->gVT:Lcom/tencent/mm/pluginsdk/b/a;

    goto/16 :goto_0

    .line 430
    :cond_14
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v1}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/model/w;->cF(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 431
    new-instance v0, Lcom/tencent/mm/ui/contact/profile/ae;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/contact/profile/ae;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->gVT:Lcom/tencent/mm/pluginsdk/b/a;

    goto/16 :goto_0

    .line 433
    :cond_15
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v1}, Lcom/tencent/mm/storage/i;->aAp()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 436
    :try_start_0
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->gVV:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_16

    .line 438
    :goto_1
    new-instance v1, Lcom/tencent/mm/ui/contact/profile/e;

    invoke-direct {v1, p0, p1, v0}, Lcom/tencent/mm/ui/contact/profile/e;-><init>(Lcom/tencent/mm/ui/MMActivity;Ljava/lang/String;Lcom/tencent/mm/protocal/a/dl;)V

    iput-object v1, p0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->gVT:Lcom/tencent/mm/pluginsdk/b/a;

    goto/16 :goto_0

    .line 436
    :cond_16
    :try_start_1
    new-instance v1, Lcom/tencent/mm/protocal/a/dl;

    invoke-direct {v1}, Lcom/tencent/mm/protocal/a/dl;-><init>()V

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->gVV:[B

    invoke-virtual {v1, v2}, Lcom/tencent/mm/protocal/a/dl;->aM([B)Lcom/tencent/mm/protocal/a/dl;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_1

    .line 443
    :cond_17
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/model/w;->cN(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 444
    new-instance v0, Lcom/tencent/mm/ui/contact/profile/br;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/contact/profile/br;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->gVT:Lcom/tencent/mm/pluginsdk/b/a;

    goto/16 :goto_0

    .line 446
    :cond_18
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/model/w;->cO(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 447
    new-instance v0, Lcom/tencent/mm/ui/contact/profile/bj;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/contact/profile/bj;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->gVT:Lcom/tencent/mm/pluginsdk/b/a;

    goto/16 :goto_0

    .line 450
    :cond_19
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/model/w;->cP(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 451
    new-instance v0, Lcom/tencent/mm/ui/contact/profile/an;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/contact/profile/an;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->gVT:Lcom/tencent/mm/pluginsdk/b/a;

    goto/16 :goto_0

    .line 458
    :cond_1a
    new-instance v0, Lcom/tencent/mm/ui/contact/profile/ay;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/contact/profile/ay;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->gVT:Lcom/tencent/mm/pluginsdk/b/a;

    goto/16 :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method protected final FR()V
    .locals 25

    .prologue
    .line 128
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->aIj()Lcom/tencent/mm/ui/base/preference/n;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    .line 129
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    invoke-interface {v2}, Lcom/tencent/mm/ui/base/preference/n;->removeAll()V

    .line 131
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "Contact_Scene"

    const/16 v4, 0x9

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->edN:I

    .line 133
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "Chat_Readonly"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->dNx:Z

    .line 134
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "User_Verify"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->gVU:Z

    .line 138
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "Contact_User"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mm/platformtools/au;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 139
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v4, "Contact_Alias"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mm/platformtools/au;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 140
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v5, "Contact_Encryptusername"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mm/platformtools/au;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 142
    const-string v5, "@stranger"

    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v2, v3

    .line 145
    :cond_0
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/tencent/mm/storage/k;->tO(Ljava/lang/String;)Lcom/tencent/mm/storage/i;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->cQI:Lcom/tencent/mm/storage/i;

    .line 146
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->cQI:Lcom/tencent/mm/storage/i;

    invoke-static {v5}, Lcom/tencent/mm/z/n;->r(Lcom/tencent/mm/storage/i;)Z

    .line 148
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "Contact_Nick"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 149
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "Contact_Sex"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 150
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "Contact_Province"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 151
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "Contact_City"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 152
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string v10, "Contact_Signature"

    invoke-virtual {v9, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 153
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v11, "Contact_VUser_Info_Flag"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 154
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->getIntent()Landroid/content/Intent;

    move-result-object v11

    const-string v12, "Contact_VUser_Info"

    invoke-virtual {v11, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 155
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->getIntent()Landroid/content/Intent;

    move-result-object v12

    const-string v13, "Contact_Distance"

    invoke-virtual {v12, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 156
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->getIntent()Landroid/content/Intent;

    move-result-object v13

    const-string v14, "Contact_KWeibo_flag"

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 157
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->getIntent()Landroid/content/Intent;

    move-result-object v14

    const-string v15, "Contact_KWeibo"

    invoke-virtual {v14, v15}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 158
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->getIntent()Landroid/content/Intent;

    move-result-object v15

    const-string v16, "Contact_KWeiboNick"

    invoke-virtual/range {v15 .. v16}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 159
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->getIntent()Landroid/content/Intent;

    move-result-object v16

    const-string v17, "Contact_KFacebookName"

    invoke-virtual/range {v16 .. v17}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 160
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->getIntent()Landroid/content/Intent;

    move-result-object v17

    const-string v18, "Contact_KFacebookId"

    const-wide/16 v19, 0x0

    invoke-virtual/range {v17 .. v20}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v17

    .line 161
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->getIntent()Landroid/content/Intent;

    move-result-object v19

    const-string v20, "Contact_BrandIconURL"

    invoke-virtual/range {v19 .. v20}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->ghP:Ljava/lang/String;

    .line 162
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->getIntent()Landroid/content/Intent;

    move-result-object v19

    const-string v20, "Contact_RegionCode"

    invoke-virtual/range {v19 .. v20}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 163
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->getIntent()Landroid/content/Intent;

    move-result-object v20

    const-string v21, "Contact_customInfo"

    invoke-virtual/range {v20 .. v21}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->gVV:[B

    .line 165
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->getIntent()Landroid/content/Intent;

    move-result-object v20

    const-string v21, "force_get_contact"

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v20

    .line 166
    if-eqz v20, :cond_1

    .line 167
    const-string v20, "MicroMsg.ContactInfoUI"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "initView, forceAddContact, user = "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-static {}, Lcom/tencent/mm/model/ar;->tZ()Lcom/tencent/mm/model/at;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Lcom/tencent/mm/model/at;->do(Ljava/lang/String;)V

    .line 171
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->cQI:Lcom/tencent/mm/storage/i;

    move-object/from16 v20, v0

    if-eqz v20, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->cQI:Lcom/tencent/mm/storage/i;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/tencent/mm/storage/i;->rj()I

    move-result v20

    if-lez v20, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->cQI:Lcom/tencent/mm/storage/i;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/tencent/mm/model/w;->dc(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->cQI:Lcom/tencent/mm/storage/i;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/tencent/mm/storage/i;->tA(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->cQI:Lcom/tencent/mm/storage/i;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/tencent/mm/model/w;->cs(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_4

    .line 174
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->cQI:Lcom/tencent/mm/storage/i;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/tencent/mm/p/p;->eI(Ljava/lang/String;)Lcom/tencent/mm/p/a;

    move-result-object v20

    .line 175
    if-eqz v20, :cond_3

    invoke-virtual/range {v20 .. v20}, Lcom/tencent/mm/p/a;->xA()Z

    move-result v21

    if-eqz v21, :cond_f

    .line 176
    :cond_3
    const-string v20, "MicroMsg.ContactInfoUI"

    const-string v21, "update contact, verifyFlag %d."

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-static/range {v20 .. v22}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 177
    invoke-static {}, Lcom/tencent/mm/model/ar;->tZ()Lcom/tencent/mm/model/at;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->cQI:Lcom/tencent/mm/storage/i;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Lcom/tencent/mm/model/at;->do(Ljava/lang/String;)V

    .line 178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->cQI:Lcom/tencent/mm/storage/i;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/tencent/mm/m/c;->dX(Ljava/lang/String;)V

    .line 190
    :cond_4
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->getIntent()Landroid/content/Intent;

    move-result-object v20

    const-string v21, "Contact_verify_Scene"

    const/16 v22, 0x9

    invoke-virtual/range {v20 .. v22}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v20

    .line 191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->cQI:Lcom/tencent/mm/storage/i;

    move-object/from16 v21, v0

    if-eqz v21, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->cQI:Lcom/tencent/mm/storage/i;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/tencent/mm/storage/i;->rj()I

    move-result v21

    if-eqz v21, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->cQI:Lcom/tencent/mm/storage/i;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/tencent/mm/platformtools/au;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v21

    if-gtz v21, :cond_11

    .line 192
    :cond_5
    new-instance v21, Lcom/tencent/mm/storage/i;

    invoke-direct/range {v21 .. v21}, Lcom/tencent/mm/storage/i;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->cQI:Lcom/tencent/mm/storage/i;

    .line 193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->cQI:Lcom/tencent/mm/storage/i;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lcom/tencent/mm/storage/i;->setUsername(Ljava/lang/String;)V

    .line 194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->cQI:Lcom/tencent/mm/storage/i;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lcom/tencent/mm/storage/i;->bx(Ljava/lang/String;)V

    .line 195
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v4, v5}, Lcom/tencent/mm/storage/i;->bt(Ljava/lang/String;)V

    .line 196
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v21, "Contact_PyInitial"

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/tencent/mm/storage/i;->bv(Ljava/lang/String;)V

    .line 197
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v21, "Contact_QuanPin"

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/tencent/mm/storage/i;->bw(Ljava/lang/String;)V

    .line 198
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v4, v6}, Lcom/tencent/mm/storage/i;->bL(I)V

    .line 201
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v4, v7}, Lcom/tencent/mm/storage/i;->bA(Ljava/lang/String;)V

    .line 202
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v4, v8}, Lcom/tencent/mm/storage/i;->bB(Ljava/lang/String;)V

    .line 204
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v4, v9}, Lcom/tencent/mm/storage/i;->bz(Ljava/lang/String;)V

    .line 205
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v4, v10}, Lcom/tencent/mm/storage/i;->bV(I)V

    .line 206
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v4, v11}, Lcom/tencent/mm/storage/i;->bN(Ljava/lang/String;)V

    .line 207
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v4, v12}, Lcom/tencent/mm/storage/i;->bC(Ljava/lang/String;)V

    .line 208
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->cQI:Lcom/tencent/mm/storage/i;

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Lcom/tencent/mm/storage/i;->bO(I)V

    .line 209
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v4, v14}, Lcom/tencent/mm/storage/i;->bD(Ljava/lang/String;)V

    .line 210
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v4, v13}, Lcom/tencent/mm/storage/i;->bP(I)V

    .line 211
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v4, v15}, Lcom/tencent/mm/storage/i;->bE(Ljava/lang/String;)V

    .line 212
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->cQI:Lcom/tencent/mm/storage/i;

    move-wide/from16 v0, v17

    invoke-virtual {v4, v0, v1}, Lcom/tencent/mm/storage/i;->n(J)V

    .line 213
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->cQI:Lcom/tencent/mm/storage/i;

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Lcom/tencent/mm/storage/i;->bu(Ljava/lang/String;)V

    .line 214
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->cQI:Lcom/tencent/mm/storage/i;

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/tencent/mm/storage/i;->bO(Ljava/lang/String;)V

    .line 249
    :goto_1
    invoke-static {v2}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 250
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v4, v2}, Lcom/tencent/mm/storage/i;->tF(Ljava/lang/String;)V

    .line 252
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->cQI:Lcom/tencent/mm/storage/i;

    if-nez v4, :cond_1a

    const-string v2, "MicroMsg.ContactInfoUI"

    const-string v3, "contact = null"

    invoke-static {v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    :cond_7
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "Contact_User"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v4}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 256
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v2}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/tencent/mm/model/v;->th()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 257
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v2

    const v3, 0x10121

    invoke-virtual {v2, v3}, Lcom/tencent/mm/storage/e;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/tencent/mm/platformtools/au;->hY(Ljava/lang/String;)J

    move-result-wide v2

    .line 258
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_8

    .line 259
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v4, v2, v3}, Lcom/tencent/mm/storage/i;->n(J)V

    .line 260
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->cQI:Lcom/tencent/mm/storage/i;

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v2

    const v4, 0x10122

    invoke-virtual {v2, v4}, Lcom/tencent/mm/storage/e;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/tencent/mm/storage/i;->bu(Ljava/lang/String;)V

    .line 262
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->cQI:Lcom/tencent/mm/storage/i;

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v2

    const v4, 0x46001

    invoke-virtual {v2, v4}, Lcom/tencent/mm/storage/e;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v3, Lcom/tencent/mm/storage/i;->bUl:Ljava/lang/String;

    .line 263
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->cQI:Lcom/tencent/mm/storage/i;

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v2

    const v4, 0x46002

    invoke-virtual {v2, v4}, Lcom/tencent/mm/storage/e;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v3, Lcom/tencent/mm/storage/i;->bUm:Ljava/lang/String;

    .line 264
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->cQI:Lcom/tencent/mm/storage/i;

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v2

    const v4, 0x46003

    invoke-virtual {v2, v4}, Lcom/tencent/mm/storage/e;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v3, Lcom/tencent/mm/storage/i;->bUn:Ljava/lang/String;

    .line 268
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v2}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/tencent/mm/model/v;->th()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/mm/storage/i;->tE(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 270
    invoke-static {}, Lcom/tencent/mm/model/co;->vw()Lcom/tencent/mm/model/co;

    move-result-object v2

    .line 272
    invoke-virtual {v2}, Lcom/tencent/mm/model/co;->rC()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/mm/platformtools/au;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 273
    invoke-virtual {v2}, Lcom/tencent/mm/model/co;->rD()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/mm/platformtools/au;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 275
    invoke-static {v3}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 276
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v5, v3}, Lcom/tencent/mm/storage/i;->bA(Ljava/lang/String;)V

    .line 279
    :cond_a
    invoke-static {v4}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 280
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v3, v4}, Lcom/tencent/mm/storage/i;->bB(Ljava/lang/String;)V

    .line 283
    :cond_b
    invoke-virtual {v2}, Lcom/tencent/mm/model/co;->getCountryCode()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 284
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v2}, Lcom/tencent/mm/model/co;->getCountryCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/tencent/mm/model/co;->vA()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/tencent/mm/model/co;->vz()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/tencent/mm/storage/RegionCodeDecoder;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tencent/mm/storage/i;->bO(Ljava/lang/String;)V

    .line 287
    :cond_c
    invoke-virtual {v2}, Lcom/tencent/mm/model/co;->rk()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/tencent/mm/platformtools/au;->a(Ljava/lang/Integer;I)I

    move-result v3

    .line 288
    invoke-virtual {v2}, Lcom/tencent/mm/model/co;->rB()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mm/platformtools/au;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 289
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v4, v3}, Lcom/tencent/mm/storage/i;->bL(I)V

    .line 290
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v3, v2}, Lcom/tencent/mm/storage/i;->bz(Ljava/lang/String;)V

    .line 293
    :cond_d
    const-string v3, "initView: contact username is null"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v2}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mm/platformtools/au;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1c

    const/4 v2, 0x1

    :goto_3
    invoke-static {v3, v2}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    .line 295
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v2}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mm/model/w;->db(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    const v2, 0x7f0702a8

    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->mn(I)V

    .line 297
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v2}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mm/model/w;->cp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 298
    const v2, 0x7f070417

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->mn(I)V

    .line 300
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->ghP:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->wW(Ljava/lang/String;)V

    .line 302
    new-instance v2, Lcom/tencent/mm/ui/contact/profile/b;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/tencent/mm/ui/contact/profile/b;-><init>(Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)V

    .line 343
    invoke-static {}, Lcom/tencent/mm/m/af;->wo()Lcom/tencent/mm/m/e;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v3}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/mm/m/e;->dZ(Ljava/lang/String;)V

    .line 345
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v2}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mm/model/w;->cK(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-static {}, Lcom/tencent/mm/model/v;->tx()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 347
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->gVW:Z

    .line 361
    :goto_5
    return-void

    .line 180
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->cQI:Lcom/tencent/mm/storage/i;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/tencent/mm/storage/i;->aAl()Z

    move-result v21

    if-eqz v21, :cond_10

    .line 181
    const-string v20, "MicroMsg.ContactInfoUI"

    const-string v21, "update contact, last check time=%d"

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->cQI:Lcom/tencent/mm/storage/i;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/tencent/mm/storage/i;->rM()I

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-static/range {v20 .. v22}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 182
    invoke-static {}, Lcom/tencent/mm/model/ar;->tZ()Lcom/tencent/mm/model/at;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->cQI:Lcom/tencent/mm/storage/i;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Lcom/tencent/mm/model/at;->do(Ljava/lang/String;)V

    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->cQI:Lcom/tencent/mm/storage/i;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/tencent/mm/m/c;->dX(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 185
    :cond_10
    if-eqz v20, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->cQI:Lcom/tencent/mm/storage/i;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/tencent/mm/storage/i;->rb()Z

    move-result v21

    if-eqz v21, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->cQI:Lcom/tencent/mm/storage/i;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/tencent/mm/storage/i;->aAp()Z

    move-result v21

    if-nez v21, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->cQI:Lcom/tencent/mm/storage/i;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/tencent/mm/model/w;->cZ(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_4

    invoke-virtual/range {v20 .. v20}, Lcom/tencent/mm/p/a;->xw()Z

    move-result v20

    if-eqz v20, :cond_4

    .line 186
    invoke-static {}, Lcom/tencent/mm/p/ab;->yg()Lcom/tencent/mm/p/x;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->cQI:Lcom/tencent/mm/storage/i;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/tencent/mm/p/x;->eQ(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 218
    :cond_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v4}, Lcom/tencent/mm/storage/i;->rk()I

    move-result v4

    if-nez v4, :cond_12

    .line 219
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v4, v6}, Lcom/tencent/mm/storage/i;->bL(I)V

    .line 221
    :cond_12
    if-eqz v7, :cond_13

    const-string v4, ""

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    .line 222
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v4, v7}, Lcom/tencent/mm/storage/i;->bA(Ljava/lang/String;)V

    .line 224
    :cond_13
    if-eqz v8, :cond_14

    const-string v4, ""

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14

    .line 225
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v4, v8}, Lcom/tencent/mm/storage/i;->bB(Ljava/lang/String;)V

    .line 227
    :cond_14
    if-eqz v19, :cond_15

    const-string v4, ""

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15

    .line 228
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->cQI:Lcom/tencent/mm/storage/i;

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/tencent/mm/storage/i;->bO(Ljava/lang/String;)V

    .line 230
    :cond_15
    if-eqz v9, :cond_16

    const-string v4, ""

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_16

    .line 231
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v4, v9}, Lcom/tencent/mm/storage/i;->bz(Ljava/lang/String;)V

    .line 233
    :cond_16
    if-eqz v10, :cond_17

    .line 234
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v4, v10}, Lcom/tencent/mm/storage/i;->bV(I)V

    .line 236
    :cond_17
    if-eqz v11, :cond_18

    const-string v4, ""

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_18

    .line 237
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v4, v11}, Lcom/tencent/mm/storage/i;->bN(Ljava/lang/String;)V

    .line 239
    :cond_18
    if-eqz v5, :cond_19

    const-string v4, ""

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_19

    .line 240
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v4, v5}, Lcom/tencent/mm/storage/i;->bt(Ljava/lang/String;)V

    .line 243
    :cond_19
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v4, v12}, Lcom/tencent/mm/storage/i;->bC(Ljava/lang/String;)V

    .line 244
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->cQI:Lcom/tencent/mm/storage/i;

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Lcom/tencent/mm/storage/i;->bO(I)V

    .line 246
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->cQI:Lcom/tencent/mm/storage/i;

    move-wide/from16 v0, v17

    invoke-virtual {v4, v0, v1}, Lcom/tencent/mm/storage/i;->n(J)V

    .line 247
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->cQI:Lcom/tencent/mm/storage/i;

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Lcom/tencent/mm/storage/i;->bu(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 252
    :cond_1a
    invoke-static {v2}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1b

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/mm/model/b;->sv()Lcom/tencent/mm/storage/cf;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/tencent/mm/storage/cf;->vF(Ljava/lang/String;)Lcom/tencent/mm/storage/ce;

    move-result-object v2

    if-eqz v2, :cond_1b

    invoke-virtual {v2}, Lcom/tencent/mm/storage/ce;->aAs()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v2}, Lcom/tencent/mm/storage/ce;->ru()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/tencent/mm/storage/i;->bH(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_1b
    invoke-static {v3}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/b;->sv()Lcom/tencent/mm/storage/cf;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/tencent/mm/storage/cf;->vF(Ljava/lang/String;)Lcom/tencent/mm/storage/ce;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lcom/tencent/mm/storage/ce;->aAs()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v2}, Lcom/tencent/mm/storage/ce;->ru()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/tencent/mm/storage/i;->bH(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 293
    :cond_1c
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 295
    :cond_1d
    const v2, 0x7f070415

    goto/16 :goto_4

    .line 348
    :cond_1e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v2}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mm/model/w;->cC(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-static {}, Lcom/tencent/mm/model/v;->tt()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 350
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->gVW:Z

    goto/16 :goto_5

    .line 351
    :cond_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v2}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mm/model/w;->cE(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-static {}, Lcom/tencent/mm/model/v;->tD()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 353
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->gVW:Z

    goto/16 :goto_5

    .line 354
    :cond_20
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v2}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mm/model/w;->cy(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-static {}, Lcom/tencent/mm/model/v;->tF()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 356
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->gVW:Z

    goto/16 :goto_5

    .line 358
    :cond_21
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->gVW:Z

    goto/16 :goto_5
.end method

.method public final Gc()I
    .locals 1

    .prologue
    .line 76
    const v0, 0x7f050023

    return v0
.end method

.method public final a(ILcom/tencent/mm/sdk/e/ao;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 490
    check-cast p3, Ljava/lang/String;

    invoke-virtual {p0, p3}, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->ca(Ljava/lang/String;)V

    .line 491
    return-void
.end method

.method public final a(Lcom/tencent/mm/storage/ce;)V
    .locals 2
    .parameter

    .prologue
    .line 512
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/tencent/mm/ui/contact/profile/d;

    invoke-direct {v1, p0, p1}, Lcom/tencent/mm/ui/contact/profile/d;-><init>(Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;Lcom/tencent/mm/storage/ce;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 522
    return-void
.end method

.method public final a(Lcom/tencent/mm/ui/base/preference/n;Lcom/tencent/mm/ui/base/preference/Preference;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 478
    invoke-virtual {p2}, Lcom/tencent/mm/ui/base/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 479
    const-string v1, "MicroMsg.ContactInfoUI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " item has been clicked!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->gVT:Lcom/tencent/mm/pluginsdk/b/a;

    if-eqz v1, :cond_0

    .line 482
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->gVT:Lcom/tencent/mm/pluginsdk/b/a;

    invoke-interface {v1, v0}, Lcom/tencent/mm/pluginsdk/b/a;->iO(Ljava/lang/String;)Z

    .line 485
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected final aEZ()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->aAp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    const-string v0, "_bizContact"

    .line 121
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public final ca(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 495
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/tencent/mm/ui/contact/profile/c;

    invoke-direct {v1, p0, p1}, Lcom/tencent/mm/ui/contact/profile/c;-><init>(Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 508
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 469
    invoke-super {p0, p1, p2, p3}, Lcom/tencent/mm/ui/base/preference/MMPreference;->onActivityResult(IILandroid/content/Intent;)V

    .line 471
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->gVT:Lcom/tencent/mm/pluginsdk/b/a;

    if-eqz v0, :cond_0

    .line 472
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->gVT:Lcom/tencent/mm/pluginsdk/b/a;

    invoke-interface {v0, p1, p2, p3}, Lcom/tencent/mm/pluginsdk/b/a;->onActivityResult(IILandroid/content/Intent;)V

    .line 474
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 81
    invoke-super {p0, p1}, Lcom/tencent/mm/ui/base/preference/MMPreference;->onCreate(Landroid/os/Bundle;)V

    .line 83
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/mm/storage/k;->a(Lcom/tencent/mm/sdk/e/ar;)V

    .line 85
    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->FR()V

    .line 86
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 91
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/mm/storage/k;->b(Lcom/tencent/mm/sdk/e/ar;)V

    .line 93
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->gVT:Lcom/tencent/mm/pluginsdk/b/a;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->gVT:Lcom/tencent/mm/pluginsdk/b/a;

    invoke-interface {v0}, Lcom/tencent/mm/pluginsdk/b/a;->Ji()Z

    .line 96
    :cond_0
    invoke-static {}, Lcom/tencent/mm/pluginsdk/aq;->apy()Lcom/tencent/mm/pluginsdk/w;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 97
    invoke-static {}, Lcom/tencent/mm/pluginsdk/aq;->apy()Lcom/tencent/mm/pluginsdk/w;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/tencent/mm/pluginsdk/w;->i(Landroid/app/Activity;)V

    .line 99
    :cond_1
    invoke-super {p0}, Lcom/tencent/mm/ui/base/preference/MMPreference;->onDestroy()V

    .line 100
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 111
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sv()Lcom/tencent/mm/storage/cf;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/mm/storage/cf;->b(Lcom/tencent/mm/storage/ch;)V

    .line 112
    invoke-static {}, Lcom/tencent/mm/p/ab;->ye()Lcom/tencent/mm/p/k;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/mm/p/k;->f(Lcom/tencent/mm/sdk/e/al;)V

    .line 113
    invoke-super {p0}, Lcom/tencent/mm/ui/base/preference/MMPreference;->onPause()V

    .line 114
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 104
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sv()Lcom/tencent/mm/storage/cf;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/mm/storage/cf;->a(Lcom/tencent/mm/storage/ch;)V

    .line 105
    invoke-static {}, Lcom/tencent/mm/p/ab;->ye()Lcom/tencent/mm/p/k;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/mm/p/k;->e(Lcom/tencent/mm/sdk/e/al;)V

    .line 106
    invoke-super {p0}, Lcom/tencent/mm/ui/base/preference/MMPreference;->onResume()V

    .line 107
    return-void
.end method
