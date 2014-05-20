.class public final Lcom/tencent/mm/plugin/scanner/ui/at;
.super Lcom/tencent/mm/plugin/scanner/ui/ai;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/n/m;
.implements Lcom/tencent/mm/plugin/c/a/i;
.implements Lcom/tencent/mm/plugin/scanner/b/d;
.implements Lcom/tencent/mm/plugin/scanner/ui/al;


# instance fields
.field private bQI:Ljava/lang/String;

.field private ece:I

.field private edF:Lcom/tencent/mm/plugin/scanner/b/a;

.field private edQ:J

.field private final edV:I

.field private final edW:I

.field private eer:Z

.field private ees:Z

.field private eet:Z

.field private eeu:Landroid/widget/TextView;

.field private eev:Z

.field private eew:Z

.field private eex:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Lcom/tencent/mm/plugin/scanner/ui/am;Landroid/graphics/Point;IZ)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v2, 0xf0

    const/4 v4, 0x0

    .line 91
    invoke-direct {p0, p1, p2}, Lcom/tencent/mm/plugin/scanner/ui/ai;-><init>(Lcom/tencent/mm/plugin/scanner/ui/am;Landroid/graphics/Point;)V

    .line 67
    const-wide/16 v0, 0x50

    iput-wide v0, p0, Lcom/tencent/mm/plugin/scanner/ui/at;->edQ:J

    .line 75
    iput v4, p0, Lcom/tencent/mm/plugin/scanner/ui/at;->ece:I

    .line 77
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/at;->bQI:Ljava/lang/String;

    .line 78
    iput-boolean v4, p0, Lcom/tencent/mm/plugin/scanner/ui/at;->eer:Z

    .line 79
    iput-boolean v4, p0, Lcom/tencent/mm/plugin/scanner/ui/at;->ees:Z

    .line 80
    iput-boolean v4, p0, Lcom/tencent/mm/plugin/scanner/ui/at;->eet:Z

    .line 82
    iput v2, p0, Lcom/tencent/mm/plugin/scanner/ui/at;->edV:I

    .line 83
    iput v2, p0, Lcom/tencent/mm/plugin/scanner/ui/at;->edW:I

    .line 86
    iput-boolean v4, p0, Lcom/tencent/mm/plugin/scanner/ui/at;->eev:Z

    .line 117
    new-instance v0, Lcom/tencent/mm/plugin/scanner/ui/au;

    invoke-direct {v0, p0}, Lcom/tencent/mm/plugin/scanner/ui/au;-><init>(Lcom/tencent/mm/plugin/scanner/ui/at;)V

    iput-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/at;->eex:Landroid/view/View$OnClickListener;

    .line 92
    invoke-virtual {p0, v2, v2}, Lcom/tencent/mm/plugin/scanner/ui/at;->at(II)D

    .line 93
    const-string v0, "MicroMsg.scanner.ScanModeQRCode"

    const-string v1, "frameRectWidth = [%s], frameRectHeight = [%s]"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/tencent/mm/plugin/scanner/ui/at;->edG:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x1

    iget v4, p0, Lcom/tencent/mm/plugin/scanner/ui/at;->edH:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    iput p3, p0, Lcom/tencent/mm/plugin/scanner/ui/at;->ece:I

    .line 95
    iput-boolean p4, p0, Lcom/tencent/mm/plugin/scanner/ui/at;->ees:Z

    .line 97
    invoke-interface {p1}, Lcom/tencent/mm/plugin/scanner/ui/am;->aal()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->bD(Landroid/content/Context;)J

    move-result-wide v0

    const-wide/16 v2, 0x64

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 98
    const-string v0, "MicroMsg.scanner.ScanModeQRCode"

    const-string v1, "memory is not much"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-wide/16 v0, 0x118

    iput-wide v0, p0, Lcom/tencent/mm/plugin/scanner/ui/at;->edQ:J

    .line 101
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/tencent/mm/plugin/scanner/ui/am;Landroid/graphics/Point;IZZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 104
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/mm/plugin/scanner/ui/at;-><init>(Lcom/tencent/mm/plugin/scanner/ui/am;Landroid/graphics/Point;IZ)V

    .line 105
    iput-boolean p5, p0, Lcom/tencent/mm/plugin/scanner/ui/at;->eew:Z

    .line 106
    return-void
.end method

.method private a(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 529
    new-instance v0, Lcom/tencent/mm/modelsimple/x;

    const/4 v1, 0x0

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-direct {v0, p2, v1, v2, v3}, Lcom/tencent/mm/modelsimple/x;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    .line 530
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    .line 531
    iput-object p2, p0, Lcom/tencent/mm/plugin/scanner/ui/at;->bQI:Ljava/lang/String;

    .line 533
    sget v1, Lcom/tencent/mm/n;->ber:I

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    sget v1, Lcom/tencent/mm/n;->buj:I

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Lcom/tencent/mm/plugin/scanner/ui/bc;

    invoke-direct {v3, p0, v0}, Lcom/tencent/mm/plugin/scanner/ui/bc;-><init>(Lcom/tencent/mm/plugin/scanner/ui/at;Lcom/tencent/mm/modelsimple/x;)V

    invoke-static {p1, v1, v2, v3}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)Lcom/tencent/mm/ui/base/ch;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/at;->cIr:Landroid/app/ProgressDialog;

    .line 545
    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/plugin/scanner/ui/at;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-static {p2}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/n/ac;->wS()I

    move-result v0

    if-nez v0, :cond_1

    sget v0, Lcom/tencent/mm/n;->bmF:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iput-boolean v1, p0, Lcom/tencent/mm/plugin/scanner/ui/at;->eer:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v0, Lcom/tencent/mm/n;->buc:I

    invoke-static {p1, v0}, Lcom/tencent/mm/sdk/platformtools/bq;->q(Landroid/content/Context;I)V

    const-string v0, ""

    const-string v1, "weixin://qr/"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0xc

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@qr"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const/16 v1, 0x1e

    invoke-virtual {p0, p1, v0, v1}, Lcom/tencent/mm/plugin/scanner/ui/at;->a(Landroid/app/Activity;Ljava/lang/String;I)V

    goto :goto_0

    :cond_3
    const-string v1, "http://weixin.qq.com/r/"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x17

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@qr"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/tencent/mm/plugin/scanner/ui/at;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/tencent/mm/plugin/scanner/ui/at;)Z
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/tencent/mm/plugin/scanner/ui/at;->eew:Z

    return v0
.end method

.method private aaB()V
    .locals 4

    .prologue
    .line 250
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/at;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    if-nez v0, :cond_1

    .line 251
    const-string v0, "MicroMsg.scanner.ScanModeQRCode"

    const-string v1, "dealWithNetWork(), scanUICallback == null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 254
    :cond_1
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/n/ac;->wS()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/n/ac;->wS()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 255
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/at;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/tencent/mm/plugin/scanner/ui/am;->a(JZ)V

    goto :goto_0
.end method

.method private aaE()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 464
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/at;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    if-nez v0, :cond_0

    .line 470
    :goto_0
    return-void

    .line 467
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/at;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    const-wide/16 v1, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/tencent/mm/plugin/scanner/ui/am;->a(JZ)V

    .line 468
    iput-boolean v3, p0, Lcom/tencent/mm/plugin/scanner/ui/at;->eer:Z

    .line 469
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/at;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    invoke-interface {v0, v3}, Lcom/tencent/mm/plugin/scanner/ui/am;->bd(Z)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/tencent/mm/plugin/scanner/ui/at;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 62
    iput-boolean v0, p0, Lcom/tencent/mm/plugin/scanner/ui/at;->eet:Z

    iput-boolean v0, p0, Lcom/tencent/mm/plugin/scanner/ui/at;->eer:Z

    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/at;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    invoke-interface {v0}, Lcom/tencent/mm/plugin/scanner/ui/am;->aak()V

    return-void
.end method

.method static synthetic c(Lcom/tencent/mm/plugin/scanner/ui/at;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/tencent/mm/plugin/scanner/ui/at;->aaE()V

    return-void
.end method

.method static synthetic d(Lcom/tencent/mm/plugin/scanner/ui/at;)Z
    .locals 1
    .parameter

    .prologue
    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/plugin/scanner/ui/at;->eer:Z

    return v0
.end method

.method static synthetic e(Lcom/tencent/mm/plugin/scanner/ui/at;)Z
    .locals 1
    .parameter

    .prologue
    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/plugin/scanner/ui/at;->eet:Z

    return v0
.end method

.method static synthetic f(Lcom/tencent/mm/plugin/scanner/ui/at;)Lcom/tencent/mm/plugin/scanner/b/a;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/at;->edF:Lcom/tencent/mm/plugin/scanner/b/a;

    return-object v0
.end method

.method static synthetic g(Lcom/tencent/mm/plugin/scanner/ui/at;)J
    .locals 2
    .parameter

    .prologue
    .line 62
    iget-wide v0, p0, Lcom/tencent/mm/plugin/scanner/ui/at;->edQ:J

    return-wide v0
.end method


# virtual methods
.method public final a(IILjava/lang/String;Lcom/tencent/mm/n/x;)V
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v9, 0x0

    const/4 v8, 0x4

    const/4 v7, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 353
    const-string v0, "MicroMsg.scanner.ScanModeQRCode"

    const-string v3, "onSceneEnd: errType = [%s] errCode = [%s] errMsg = [%s]"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    aput-object p3, v4, v7

    invoke-static {v0, v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 355
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/at;->cIr:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/at;->cIr:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 357
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/at;->cIr:Landroid/app/ProgressDialog;

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/at;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    if-eqz v0, :cond_1

    if-nez p4, :cond_4

    .line 361
    :cond_1
    const-string v3, "MicroMsg.scanner.ScanModeQRCode"

    const-string v4, "onSceneEnd() scene is null [%s]"

    new-array v5, v1, [Ljava/lang/Object;

    if-nez p4, :cond_3

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v5, v2

    invoke-static {v3, v4, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 362
    iput-boolean v2, p0, Lcom/tencent/mm/plugin/scanner/ui/at;->eer:Z

    .line 461
    :cond_2
    :goto_1
    return-void

    :cond_3
    move v0, v2

    .line 361
    goto :goto_0

    .line 366
    :cond_4
    if-ne p1, v8, :cond_5

    const/4 v0, -0x4

    if-ne p2, v0, :cond_5

    .line 367
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/at;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    invoke-interface {v0}, Lcom/tencent/mm/plugin/scanner/ui/am;->aal()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/tencent/mm/n;->bug:I

    sget v2, Lcom/tencent/mm/n;->ber:I

    new-instance v3, Lcom/tencent/mm/plugin/scanner/ui/ba;

    invoke-direct {v3, p0}, Lcom/tencent/mm/plugin/scanner/ui/ba;-><init>(Lcom/tencent/mm/plugin/scanner/ui/at;)V

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;IILandroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/x;

    goto :goto_1

    .line 376
    :cond_5
    packed-switch p1, :pswitch_data_0

    move v0, v2

    :goto_2
    if-eqz v0, :cond_8

    .line 377
    invoke-direct {p0}, Lcom/tencent/mm/plugin/scanner/ui/at;->aaE()V

    goto :goto_1

    .line 376
    :pswitch_0
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/n/ac;->wT()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/at;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    invoke-interface {v0}, Lcom/tencent/mm/plugin/scanner/ui/am;->aal()Landroid/app/Activity;

    move-result-object v0

    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/n/ac;->getNetworkServerIp()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/tencent/mm/pluginsdk/ui/af;->k(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    :goto_3
    move v0, v1

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/at;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    invoke-interface {v0}, Lcom/tencent/mm/plugin/scanner/ui/am;->aal()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/network/bm;->ac(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/at;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    invoke-interface {v0}, Lcom/tencent/mm/plugin/scanner/ui/am;->aal()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/pluginsdk/ui/af;->aZ(Landroid/content/Context;)Z

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/at;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    invoke-interface {v0}, Lcom/tencent/mm/plugin/scanner/ui/am;->aal()Landroid/app/Activity;

    move-result-object v0

    iget-object v3, p0, Lcom/tencent/mm/plugin/scanner/ui/at;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    invoke-interface {v3}, Lcom/tencent/mm/plugin/scanner/ui/am;->aal()Landroid/app/Activity;

    move-result-object v3

    sget v4, Lcom/tencent/mm/n;->bmE:I

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_3

    :pswitch_1
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/at;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    invoke-interface {v0}, Lcom/tencent/mm/plugin/scanner/ui/am;->aal()Landroid/app/Activity;

    move-result-object v0

    iget-object v3, p0, Lcom/tencent/mm/plugin/scanner/ui/at;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    invoke-interface {v3}, Lcom/tencent/mm/plugin/scanner/ui/am;->aal()Landroid/app/Activity;

    move-result-object v3

    sget v4, Lcom/tencent/mm/n;->bmF:I

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v1

    goto/16 :goto_2

    .line 382
    :cond_8
    if-ne p1, v8, :cond_9

    const/16 v0, -0x7d4

    if-ne p2, v0, :cond_9

    .line 383
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/at;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    invoke-interface {v0}, Lcom/tencent/mm/plugin/scanner/ui/am;->aal()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/tencent/mm/n;->bub:I

    sget v2, Lcom/tencent/mm/n;->ber:I

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/ui/base/h;->c(Landroid/content/Context;II)Lcom/tencent/mm/ui/base/x;

    .line 384
    invoke-direct {p0}, Lcom/tencent/mm/plugin/scanner/ui/at;->aaE()V

    goto/16 :goto_1

    .line 388
    :cond_9
    if-nez p1, :cond_a

    if-eqz p2, :cond_b

    .line 389
    :cond_a
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/at;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    invoke-interface {v0}, Lcom/tencent/mm/plugin/scanner/ui/am;->aal()Landroid/app/Activity;

    move-result-object v0

    iget-object v3, p0, Lcom/tencent/mm/plugin/scanner/ui/at;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    invoke-interface {v3}, Lcom/tencent/mm/plugin/scanner/ui/am;->aal()Landroid/app/Activity;

    move-result-object v3

    sget v4, Lcom/tencent/mm/n;->bnk:I

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 390
    invoke-direct {p0}, Lcom/tencent/mm/plugin/scanner/ui/at;->aaE()V

    goto/16 :goto_1

    .line 394
    :cond_b
    invoke-virtual {p4}, Lcom/tencent/mm/n/x;->getType()I

    move-result v0

    const/16 v3, 0xe9

    if-ne v0, v3, :cond_f

    move-object v0, p4

    .line 395
    check-cast v0, Lcom/tencent/mm/modelsimple/x;

    invoke-virtual {v0}, Lcom/tencent/mm/modelsimple/x;->Cl()Ljava/lang/String;

    move-result-object v3

    .line 396
    if-eqz v3, :cond_d

    const-string v0, "http://login.weixin.qq.com"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "https://login.weixin.qq.com"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 397
    :cond_c
    iput v7, p0, Lcom/tencent/mm/plugin/scanner/ui/at;->ece:I

    :cond_d
    move-object v0, p4

    .line 400
    check-cast v0, Lcom/tencent/mm/modelsimple/x;

    new-instance v4, Lcom/tencent/mm/plugin/scanner/ui/bb;

    invoke-direct {v4, p0}, Lcom/tencent/mm/plugin/scanner/ui/bb;-><init>(Lcom/tencent/mm/plugin/scanner/ui/at;)V

    iget v5, p0, Lcom/tencent/mm/plugin/scanner/ui/at;->ece:I

    iget-object v6, p0, Lcom/tencent/mm/plugin/scanner/ui/at;->bQI:Ljava/lang/String;

    invoke-static {p0, v0, v4, v5, v6}, Lcom/tencent/mm/plugin/c/a/d;->a(Lcom/tencent/mm/plugin/c/a/i;Lcom/tencent/mm/modelsimple/x;Landroid/content/DialogInterface$OnClickListener;ILjava/lang/String;)Z

    move-result v0

    .line 407
    if-nez v0, :cond_e

    check-cast p4, Lcom/tencent/mm/modelsimple/x;

    invoke-virtual {p4}, Lcom/tencent/mm/modelsimple/x;->Cn()I

    move-result v4

    if-ne v4, v8, :cond_e

    .line 408
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/at;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    invoke-interface {v0}, Lcom/tencent/mm/plugin/scanner/ui/am;->aal()Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x1e

    invoke-virtual {p0, v0, v3, v1}, Lcom/tencent/mm/plugin/scanner/ui/at;->a(Landroid/app/Activity;Ljava/lang/String;I)V

    .line 409
    invoke-direct {p0}, Lcom/tencent/mm/plugin/scanner/ui/at;->aaE()V

    goto/16 :goto_1

    .line 413
    :cond_e
    const-string v3, "MicroMsg.scanner.ScanModeQRCode"

    const-string v4, "scene geta8key, redirect result = [%s]"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {v3, v4, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 417
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/at;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    invoke-interface {v0, v9, v10, v2}, Lcom/tencent/mm/plugin/scanner/ui/am;->a(JZ)V

    goto/16 :goto_1

    .line 420
    :cond_f
    invoke-virtual {p4}, Lcom/tencent/mm/n/x;->getType()I

    move-result v0

    const/16 v3, 0x6a

    if-ne v0, v3, :cond_11

    .line 421
    check-cast p4, Lcom/tencent/mm/modelsimple/aj;

    invoke-virtual {p4}, Lcom/tencent/mm/modelsimple/aj;->CB()Lcom/tencent/mm/protocal/a/sj;

    move-result-object v0

    .line 422
    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/scanner/ui/at;->a(Lcom/tencent/mm/protocal/a/sj;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 423
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/at;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    invoke-interface {v0}, Lcom/tencent/mm/plugin/scanner/ui/am;->aal()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 424
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/at;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    invoke-interface {v0}, Lcom/tencent/mm/plugin/scanner/ui/am;->aal()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto/16 :goto_1

    .line 427
    :cond_10
    invoke-direct {p0}, Lcom/tencent/mm/plugin/scanner/ui/at;->aaE()V

    goto/16 :goto_1

    .line 431
    :cond_11
    invoke-virtual {p4}, Lcom/tencent/mm/n/x;->getType()I

    move-result v0

    const/16 v3, 0x1a4

    if-ne v0, v3, :cond_2

    .line 432
    check-cast p4, Lcom/tencent/mm/plugin/scanner/a/e;

    invoke-virtual {p4}, Lcom/tencent/mm/plugin/scanner/a/e;->ZE()Lcom/tencent/mm/protocal/a/sc;

    move-result-object v0

    .line 433
    if-nez v0, :cond_12

    .line 434
    const-string v0, "MicroMsg.scanner.ScanModeQRCode"

    const-string v1, "onSceneEnd(), getResp() == null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    invoke-direct {p0}, Lcom/tencent/mm/plugin/scanner/ui/at;->aaE()V

    goto/16 :goto_1

    .line 438
    :cond_12
    const-string v3, "MicroMsg.scanner.ScanModeQRCode"

    const-string v4, "onSceneEnd() ScanBarcode Type = %s"

    new-array v1, v1, [Ljava/lang/Object;

    iget v5, v0, Lcom/tencent/mm/protocal/a/sc;->dGR:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v2

    invoke-static {v3, v4, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 439
    iget-object v1, v0, Lcom/tencent/mm/protocal/a/sc;->fLU:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 440
    invoke-direct {p0}, Lcom/tencent/mm/plugin/scanner/ui/at;->aaE()V

    goto/16 :goto_1

    .line 444
    :cond_13
    iget-object v0, v0, Lcom/tencent/mm/protocal/a/sc;->fLU:Ljava/lang/String;

    invoke-static {v0, p0, v8}, Lcom/tencent/mm/plugin/scanner/b/m;->a(Ljava/lang/String;Lcom/tencent/mm/plugin/scanner/ui/ai;I)I

    move-result v0

    packed-switch v0, :pswitch_data_1

    .line 458
    :goto_4
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/at;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    invoke-interface {v0, v2}, Lcom/tencent/mm/plugin/scanner/ui/am;->bd(Z)V

    goto/16 :goto_1

    .line 446
    :pswitch_2
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/at;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    invoke-interface {v0}, Lcom/tencent/mm/plugin/scanner/ui/am;->aal()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 447
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/at;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    invoke-interface {v0}, Lcom/tencent/mm/plugin/scanner/ui/am;->aal()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto/16 :goto_1

    .line 451
    :pswitch_3
    const-string v0, "MicroMsg.scanner.ScanModeQRCode"

    const-string v1, "onSceneEnd() PROCESS_XML_RETURN_TYPE_SEARCH_CONTACT"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 454
    :pswitch_4
    const-string v0, "MicroMsg.scanner.ScanModeQRCode"

    const-string v1, "onSceneEnd() PROCESS_XML_RETURN_TYPE_WRONG"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/at;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    invoke-interface {v0, v9, v10, v2}, Lcom/tencent/mm/plugin/scanner/ui/am;->a(JZ)V

    goto :goto_4

    .line 376
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 444
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final a(ILjava/lang/String;[B)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v2, 0xc

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 267
    iget-object v4, p0, Lcom/tencent/mm/plugin/scanner/ui/at;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    if-nez v4, :cond_1

    .line 268
    const-string v0, "MicroMsg.scanner.ScanModeQRCode"

    const-string v1, "scanUICallback == null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    :cond_0
    :goto_0
    return-void

    .line 271
    :cond_1
    iget-boolean v4, p0, Lcom/tencent/mm/plugin/scanner/ui/at;->eer:Z

    if-eqz v4, :cond_2

    .line 272
    const-string v0, "MicroMsg.scanner.ScanModeQRCode"

    const-string v1, "is decoding, return"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 275
    :cond_2
    iput-boolean v1, p0, Lcom/tencent/mm/plugin/scanner/ui/at;->eer:Z

    .line 276
    const-string v4, "MicroMsg.scanner.ScanModeQRCode"

    const-string v5, "decode success:%s"

    new-array v6, v1, [Ljava/lang/Object;

    aput-object p2, v6, v3

    invoke-static {v4, v5, v6}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 277
    invoke-static {p2}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 278
    iput-boolean v3, p0, Lcom/tencent/mm/plugin/scanner/ui/at;->eer:Z

    goto :goto_0

    .line 281
    :cond_3
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/mm/n/ac;->wS()I

    move-result v4

    if-nez v4, :cond_4

    .line 282
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/at;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    invoke-interface {v0}, Lcom/tencent/mm/plugin/scanner/ui/am;->aal()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/plugin/scanner/ui/at;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    invoke-interface {v1}, Lcom/tencent/mm/plugin/scanner/ui/am;->aal()Landroid/app/Activity;

    move-result-object v1

    sget v2, Lcom/tencent/mm/n;->bmF:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 283
    iput-boolean v3, p0, Lcom/tencent/mm/plugin/scanner/ui/at;->eer:Z

    goto :goto_0

    .line 290
    :cond_4
    iget-object v4, p0, Lcom/tencent/mm/plugin/scanner/ui/at;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    invoke-interface {v4}, Lcom/tencent/mm/plugin/scanner/ui/am;->aal()Landroid/app/Activity;

    move-result-object v4

    .line 292
    new-instance v5, Lcom/tencent/mm/c/a/ef;

    invoke-direct {v5}, Lcom/tencent/mm/c/a/ef;-><init>()V

    .line 293
    if-ne p1, v1, :cond_5

    .line 294
    iget-object v6, v5, Lcom/tencent/mm/c/a/ef;->bPd:Lcom/tencent/mm/c/a/eg;

    iput v3, v6, Lcom/tencent/mm/c/a/eg;->bPf:I

    .line 299
    :goto_1
    iget-object v6, v5, Lcom/tencent/mm/c/a/ef;->bPd:Lcom/tencent/mm/c/a/eg;

    iput-object p2, v6, Lcom/tencent/mm/c/a/eg;->bPg:Ljava/lang/String;

    .line 300
    iget-boolean v6, p0, Lcom/tencent/mm/plugin/scanner/ui/at;->eev:Z

    if-eqz v6, :cond_6

    .line 301
    const-string v0, "MicroMsg.scanner.ScanModeQRCode"

    const-string v2, "need to finish on decode success"

    invoke-static {v0, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    iget-object v0, v5, Lcom/tencent/mm/c/a/ef;->bPd:Lcom/tencent/mm/c/a/eg;

    iput v1, v0, Lcom/tencent/mm/c/a/eg;->bOY:I

    .line 303
    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v0

    invoke-interface {v0, v5}, Lcom/tencent/mm/sdk/b/f;->f(Lcom/tencent/mm/sdk/b/e;)Z

    .line 304
    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    .line 305
    invoke-virtual {v4, v3, v3}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0

    .line 297
    :cond_5
    iget-object v6, v5, Lcom/tencent/mm/c/a/ef;->bPd:Lcom/tencent/mm/c/a/eg;

    iput v1, v6, Lcom/tencent/mm/c/a/eg;->bPf:I

    goto :goto_1

    .line 308
    :cond_6
    iget-object v6, v5, Lcom/tencent/mm/c/a/ef;->bPd:Lcom/tencent/mm/c/a/eg;

    iput v3, v6, Lcom/tencent/mm/c/a/eg;->bOY:I

    .line 309
    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v6

    invoke-interface {v6, v5}, Lcom/tencent/mm/sdk/b/f;->f(Lcom/tencent/mm/sdk/b/e;)Z

    .line 310
    iget-object v5, v5, Lcom/tencent/mm/c/a/ef;->bPe:Lcom/tencent/mm/c/a/eh;

    iget v5, v5, Lcom/tencent/mm/c/a/eh;->ret:I

    if-ne v5, v1, :cond_7

    .line 311
    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    .line 312
    invoke-virtual {v4, v3, v3}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 317
    :cond_7
    iget-object v4, p0, Lcom/tencent/mm/plugin/scanner/ui/at;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    invoke-interface {v4, v1}, Lcom/tencent/mm/plugin/scanner/ui/am;->bd(Z)V

    .line 318
    if-ne p1, v1, :cond_b

    .line 319
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/at;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    invoke-interface {v0}, Lcom/tencent/mm/plugin/scanner/ui/am;->aae()V

    .line 321
    const-string v0, ""

    .line 322
    const-string v1, "weixin://qr/"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@qr"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 329
    :cond_8
    :goto_2
    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 330
    iget-object v1, p0, Lcom/tencent/mm/plugin/scanner/ui/at;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    invoke-interface {v1}, Lcom/tencent/mm/plugin/scanner/ui/am;->aal()Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0x1e

    invoke-virtual {p0, v1, v0, v2}, Lcom/tencent/mm/plugin/scanner/ui/at;->a(Landroid/app/Activity;Ljava/lang/String;I)V

    .line 331
    iput-boolean v3, p0, Lcom/tencent/mm/plugin/scanner/ui/at;->eer:Z

    goto/16 :goto_0

    .line 325
    :cond_9
    const-string v1, "http://weixin.qq.com/r/"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x17

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@qr"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 334
    :cond_a
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/at;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    invoke-interface {v0}, Lcom/tencent/mm/plugin/scanner/ui/am;->aal()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/tencent/mm/plugin/scanner/ui/at;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 336
    :cond_b
    if-ne p1, v0, :cond_0

    .line 337
    if-eqz p2, :cond_c

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_d

    :cond_c
    const-string v0, "MicroMsg.scanner.ScanModeQRCode"

    const-string v1, "result is null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v3, p0, Lcom/tencent/mm/plugin/scanner/ui/at;->eer:Z

    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/at;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    invoke-interface {v0, v3}, Lcom/tencent/mm/plugin/scanner/ui/am;->bd(Z)V

    goto/16 :goto_0

    :cond_d
    const-string v4, ","

    invoke-virtual {p2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_e

    array-length v5, v4

    if-ge v5, v0, :cond_f

    :cond_e
    const-string v0, "MicroMsg.scanner.ScanModeQRCode"

    const-string v1, "wrong zbar format"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v3, p0, Lcom/tencent/mm/plugin/scanner/ui/at;->eer:Z

    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/at;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    invoke-interface {v0, v3}, Lcom/tencent/mm/plugin/scanner/ui/am;->bd(Z)V

    goto/16 :goto_0

    :cond_f
    new-instance v5, Lcom/tencent/mm/plugin/scanner/a/e;

    aget-object v6, v4, v3

    if-eqz v6, :cond_23

    const-string v7, "EAN-13"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_10

    const-string v7, "EAN_13"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    :cond_10
    const/4 v0, 0x4

    :cond_11
    :goto_3
    aget-object v2, v4, v1

    invoke-direct {v5, v0, v2}, Lcom/tencent/mm/plugin/scanner/a/e;-><init>(ILjava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/at;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    invoke-interface {v0}, Lcom/tencent/mm/plugin/scanner/ui/am;->aae()V

    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/at;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    invoke-interface {v0, v1}, Lcom/tencent/mm/plugin/scanner/ui/am;->bd(Z)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/at;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    invoke-interface {v0}, Lcom/tencent/mm/plugin/scanner/ui/am;->aal()Landroid/app/Activity;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/mm/plugin/scanner/ui/at;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    invoke-interface {v2}, Lcom/tencent/mm/plugin/scanner/ui/am;->aal()Landroid/app/Activity;

    move-result-object v2

    sget v3, Lcom/tencent/mm/n;->ber:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/mm/plugin/scanner/ui/at;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    invoke-interface {v2}, Lcom/tencent/mm/plugin/scanner/ui/am;->aal()Landroid/app/Activity;

    move-result-object v2

    sget v3, Lcom/tencent/mm/n;->buj:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/tencent/mm/plugin/scanner/ui/bd;

    invoke-direct {v3, p0, v5}, Lcom/tencent/mm/plugin/scanner/ui/bd;-><init>(Lcom/tencent/mm/plugin/scanner/ui/at;Lcom/tencent/mm/plugin/scanner/a/e;)V

    invoke-static {v0, v2, v1, v3}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)Lcom/tencent/mm/ui/base/ch;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/at;->cIr:Landroid/app/ProgressDialog;

    goto/16 :goto_0

    :cond_12
    const-string v7, "EAN-8"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_13

    const-string v7, "EAN_8"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14

    :cond_13
    const/4 v0, 0x3

    goto :goto_3

    :cond_14
    const-string v7, "EAN-2"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15

    move v0, v1

    goto :goto_3

    :cond_15
    const-string v7, "EAN-5"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_11

    const-string v0, "UPC-A"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string v0, "UPC_A"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    :cond_16
    const/4 v0, 0x5

    goto :goto_3

    :cond_17
    const-string v0, "UPC-E"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "UPC_E"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    :cond_18
    const/4 v0, 0x6

    goto/16 :goto_3

    :cond_19
    const-string v0, "CODE-39"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "CODE_39"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    :cond_1a
    const/16 v0, 0x9

    goto/16 :goto_3

    :cond_1b
    const-string v0, "CODE-93"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    const-string v0, "CODE_93"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    :cond_1c
    const/16 v0, 0xa

    goto/16 :goto_3

    :cond_1d
    const-string v0, "CODE-128"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    const-string v0, "CODE_128"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    :cond_1e
    const/16 v0, 0xb

    goto/16 :goto_3

    :cond_1f
    const-string v0, "COMPOSITE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    move v0, v2

    goto/16 :goto_3

    :cond_20
    const-string v0, "I/25"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    const/16 v0, 0xd

    goto/16 :goto_3

    :cond_21
    const-string v0, "DATABAR"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const/4 v0, 0x7

    goto/16 :goto_3

    :cond_22
    const-string v0, "DATABAR-EXP"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    const/16 v0, 0x8

    goto/16 :goto_3

    :cond_23
    move v0, v3

    goto/16 :goto_3
.end method

.method public final aT(Z)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 702
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/at;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    if-nez v0, :cond_0

    .line 703
    const-string v0, "MicroMsg.scanner.ScanModeQRCode"

    const-string v1, "continueScan, scanUICallback == null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    :goto_0
    return-void

    .line 706
    :cond_0
    if-eqz p1, :cond_1

    .line 707
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/at;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    const-wide/16 v1, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/tencent/mm/plugin/scanner/ui/am;->a(JZ)V

    .line 708
    iput-boolean v3, p0, Lcom/tencent/mm/plugin/scanner/ui/at;->eer:Z

    .line 709
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/at;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    invoke-interface {v0, v3}, Lcom/tencent/mm/plugin/scanner/ui/am;->bd(Z)V

    goto :goto_0

    .line 711
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/at;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    invoke-interface {v0}, Lcom/tencent/mm/plugin/scanner/ui/am;->aal()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 712
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/at;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    invoke-interface {v0}, Lcom/tencent/mm/plugin/scanner/ui/am;->aal()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0
.end method

.method public final aaA()I
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x1

    return v0
.end method

.method public final aaC()V
    .locals 3

    .prologue
    .line 343
    const-string v0, "MicroMsg.scanner.ScanModeQRCode"

    const-string v1, "decodeFail"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/at;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    if-nez v0, :cond_0

    .line 345
    const-string v0, "MicroMsg.scanner.ScanModeQRCode"

    const-string v1, "scanUICallback == null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    :goto_0
    return-void

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/at;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    iget-wide v1, p0, Lcom/tencent/mm/plugin/scanner/ui/at;->edQ:J

    invoke-interface {v0, v1, v2}, Lcom/tencent/mm/plugin/scanner/ui/am;->aC(J)V

    goto :goto_0
.end method

.method protected final aav()V
    .locals 2

    .prologue
    .line 242
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/at;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    if-nez v0, :cond_0

    .line 243
    const-string v0, "MicroMsg.scanner.ScanModeQRCode"

    const-string v1, "handleNetworkChange(), scanUICallback == null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    :goto_0
    return-void

    .line 246
    :cond_0
    invoke-direct {p0}, Lcom/tencent/mm/plugin/scanner/ui/at;->aaB()V

    goto :goto_0
.end method

.method protected final aaw()Lcom/tencent/mm/plugin/scanner/b/a;
    .locals 3

    .prologue
    .line 233
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/at;->edF:Lcom/tencent/mm/plugin/scanner/b/a;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/at;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    if-eqz v0, :cond_0

    .line 235
    new-instance v0, Lcom/tencent/mm/plugin/scanner/b/f;

    iget-boolean v1, p0, Lcom/tencent/mm/plugin/scanner/ui/at;->ees:Z

    iget-object v2, p0, Lcom/tencent/mm/plugin/scanner/ui/at;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    invoke-interface {v2}, Lcom/tencent/mm/plugin/scanner/ui/am;->aam()Z

    move-result v2

    invoke-direct {v0, p0, v1, v2}, Lcom/tencent/mm/plugin/scanner/b/f;-><init>(Lcom/tencent/mm/plugin/scanner/b/d;ZZ)V

    iput-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/at;->edF:Lcom/tencent/mm/plugin/scanner/b/a;

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/at;->edF:Lcom/tencent/mm/plugin/scanner/b/a;

    return-object v0
.end method

.method protected final aax()I
    .locals 1

    .prologue
    .line 228
    sget v0, Lcom/tencent/mm/k;->aYR:I

    return v0
.end method

.method protected final aay()I
    .locals 1

    .prologue
    .line 525
    const/16 v0, 0xf0

    return v0
.end method

.method protected final aaz()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 178
    invoke-virtual {p0, v3}, Lcom/tencent/mm/plugin/scanner/ui/at;->hG(I)V

    .line 180
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/at;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    new-instance v1, Lcom/tencent/mm/plugin/scanner/ui/ax;

    invoke-direct {v1, p0}, Lcom/tencent/mm/plugin/scanner/ui/ax;-><init>(Lcom/tencent/mm/plugin/scanner/ui/at;)V

    iget-boolean v2, p0, Lcom/tencent/mm/plugin/scanner/ui/at;->eew:Z

    invoke-interface {v0, v3, v1, v2}, Lcom/tencent/mm/plugin/scanner/ui/am;->a(ILandroid/view/View$OnClickListener;Z)V

    .line 216
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/at;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    invoke-interface {v0, p0}, Lcom/tencent/mm/plugin/scanner/ui/am;->a(Lcom/tencent/mm/plugin/scanner/ui/al;)V

    .line 217
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/scanner/ui/at;->onResume()V

    .line 218
    return-void
.end method

.method public final b(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 580
    if-nez p1, :cond_0

    .line 652
    :goto_0
    return-void

    .line 583
    :cond_0
    iput-boolean v3, p0, Lcom/tencent/mm/plugin/scanner/ui/at;->eer:Z

    .line 585
    const/4 v0, -0x1

    if-eq p3, v0, :cond_1

    .line 586
    iput-boolean v4, p0, Lcom/tencent/mm/plugin/scanner/ui/at;->eer:Z

    .line 587
    iput-boolean v4, p0, Lcom/tencent/mm/plugin/scanner/ui/at;->eet:Z

    goto :goto_0

    .line 590
    :cond_1
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 592
    :pswitch_0
    if-nez p4, :cond_2

    .line 593
    const-string v0, "MicroMsg.scanner.ScanModeQRCode"

    const-string v1, "onActivityResult data == null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    iput-boolean v4, p0, Lcom/tencent/mm/plugin/scanner/ui/at;->eer:Z

    .line 595
    iput-boolean v4, p0, Lcom/tencent/mm/plugin/scanner/ui/at;->eet:Z

    goto :goto_0

    .line 599
    :cond_2
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sB()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p4, v0}, Lcom/tencent/mm/ui/tools/h;->b(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 600
    const-string v1, "MicroMsg.scanner.ScanModeQRCode"

    const-string v2, "select: [%s]"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 602
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/tencent/mm/plugin/scanner/ui/be;

    invoke-direct {v2, p0, p1}, Lcom/tencent/mm/plugin/scanner/ui/be;-><init>(Lcom/tencent/mm/plugin/scanner/ui/at;Landroid/app/Activity;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 614
    iget-object v1, p0, Lcom/tencent/mm/plugin/scanner/ui/at;->edF:Lcom/tencent/mm/plugin/scanner/b/a;

    if-eqz v1, :cond_3

    .line 615
    iget-object v1, p0, Lcom/tencent/mm/plugin/scanner/ui/at;->edF:Lcom/tencent/mm/plugin/scanner/b/a;

    invoke-virtual {v1}, Lcom/tencent/mm/plugin/scanner/b/a;->aaF()V

    .line 617
    :cond_3
    new-instance v1, Lcom/tencent/mm/plugin/c/a/a;

    invoke-direct {v1}, Lcom/tencent/mm/plugin/c/a/a;-><init>()V

    new-instance v2, Lcom/tencent/mm/plugin/scanner/ui/bg;

    invoke-direct {v2, p0, p1}, Lcom/tencent/mm/plugin/scanner/ui/bg;-><init>(Lcom/tencent/mm/plugin/scanner/ui/at;Landroid/app/Activity;)V

    invoke-virtual {v1, v0, v2}, Lcom/tencent/mm/plugin/c/a/a;->a(Ljava/lang/String;Lcom/tencent/mm/plugin/c/a/b;)I

    goto :goto_0

    .line 590
    :pswitch_data_0
    .packed-switch 0x1234
        :pswitch_0
    .end packed-switch
.end method

.method public final bh(Z)V
    .locals 0
    .parameter

    .prologue
    .line 109
    iput-boolean p1, p0, Lcom/tencent/mm/plugin/scanner/ui/at;->eev:Z

    .line 110
    return-void
.end method

.method public final getContext()Landroid/content/Context;
    .locals 2

    .prologue
    .line 693
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/at;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    if-nez v0, :cond_0

    .line 694
    const-string v0, "MicroMsg.scanner.ScanModeQRCode"

    const-string v1, "getContext(), scanUICallback == null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    const/4 v0, 0x0

    .line 697
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/at;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    invoke-interface {v0}, Lcom/tencent/mm/plugin/scanner/ui/am;->aal()Landroid/app/Activity;

    move-result-object v0

    goto :goto_0
.end method

.method protected final hG(I)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 150
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/at;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    sget v1, Lcom/tencent/mm/i;->aIh:I

    invoke-interface {v0, v1}, Lcom/tencent/mm/plugin/scanner/ui/am;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/at;->eeu:Landroid/widget/TextView;

    .line 151
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/at;->eeu:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/mm/plugin/scanner/ui/at;->eex:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/at;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    sget v1, Lcom/tencent/mm/i;->aIe:I

    invoke-interface {v0, v1}, Lcom/tencent/mm/plugin/scanner/ui/am;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/at;->djQ:Landroid/widget/TextView;

    .line 153
    if-lez p1, :cond_0

    .line 154
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/at;->eeu:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 155
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/at;->djQ:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 156
    add-int/lit8 v1, p1, 0x0

    iget-object v2, p0, Lcom/tencent/mm/plugin/scanner/ui/at;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    invoke-interface {v2}, Lcom/tencent/mm/plugin/scanner/ui/am;->aal()Landroid/app/Activity;

    move-result-object v2

    const/high16 v3, 0x4150

    invoke-static {v2, v3}, Lcom/tencent/mm/sdk/platformtools/e;->a(Landroid/content/Context;F)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 157
    iget-object v1, p0, Lcom/tencent/mm/plugin/scanner/ui/at;->djQ:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/at;->edF:Lcom/tencent/mm/plugin/scanner/b/a;

    if-eqz v0, :cond_1

    .line 161
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/at;->edF:Lcom/tencent/mm/plugin/scanner/b/a;

    check-cast v0, Lcom/tencent/mm/plugin/scanner/b/f;

    iget-object v1, p0, Lcom/tencent/mm/plugin/scanner/ui/at;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    invoke-interface {v1}, Lcom/tencent/mm/plugin/scanner/ui/am;->aam()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/scanner/b/f;->bi(Z)V

    .line 163
    :cond_1
    invoke-direct {p0}, Lcom/tencent/mm/plugin/scanner/ui/at;->aaB()V

    .line 165
    iget v0, p0, Lcom/tencent/mm/plugin/scanner/ui/at;->ece:I

    if-ne v0, v4, :cond_2

    .line 166
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/at;->djQ:Landroid/widget/TextView;

    sget v1, Lcom/tencent/mm/n;->buk:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 173
    :goto_0
    invoke-virtual {p0, v4}, Lcom/tencent/mm/plugin/scanner/ui/at;->bf(Z)V

    .line 174
    return-void

    .line 168
    :cond_2
    iget v0, p0, Lcom/tencent/mm/plugin/scanner/ui/at;->ece:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 169
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/at;->djQ:Landroid/widget/TextView;

    sget v1, Lcom/tencent/mm/n;->bHH:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 171
    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/at;->djQ:Landroid/widget/TextView;

    sget v1, Lcom/tencent/mm/n;->bul:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method protected final onPause()V
    .locals 2

    .prologue
    .line 517
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/scanner/ui/at;->bf(Z)V

    .line 518
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0xe9

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/n/ac;->b(ILcom/tencent/mm/n/m;)V

    .line 519
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0x6a

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/n/ac;->b(ILcom/tencent/mm/n/m;)V

    .line 520
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0x1a4

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/n/ac;->b(ILcom/tencent/mm/n/m;)V

    .line 521
    return-void
.end method

.method protected final onResume()V
    .locals 2

    .prologue
    .line 501
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0xe9

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/n/ac;->a(ILcom/tencent/mm/n/m;)V

    .line 502
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0x6a

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/n/ac;->a(ILcom/tencent/mm/n/m;)V

    .line 503
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0x1a4

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/n/ac;->a(ILcom/tencent/mm/n/m;)V

    .line 505
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/at;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    if-nez v0, :cond_0

    .line 506
    const-string v0, "MicroMsg.scanner.ScanModeQRCode"

    const-string v1, "scanUICallback == null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    :goto_0
    return-void

    .line 509
    :cond_0
    iget-boolean v0, p0, Lcom/tencent/mm/plugin/scanner/ui/at;->eet:Z

    if-nez v0, :cond_1

    .line 510
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/plugin/scanner/ui/at;->eer:Z

    .line 512
    :cond_1
    invoke-direct {p0}, Lcom/tencent/mm/plugin/scanner/ui/at;->aaB()V

    goto :goto_0
.end method
