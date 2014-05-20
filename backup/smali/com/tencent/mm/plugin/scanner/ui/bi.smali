.class public final Lcom/tencent/mm/plugin/scanner/ui/bi;
.super Lcom/tencent/mm/plugin/scanner/ui/ai;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/n/m;
.implements Lcom/tencent/mm/plugin/scanner/b/d;


# static fields
.field private static edP:I


# instance fields
.field private cnY:Lcom/tencent/mm/sdk/platformtools/LBSManager;

.field private ecV:Z

.field private ecf:Landroid/widget/TextView;

.field private final edV:I

.field private final edW:I

.field private final edZ:I

.field private eeG:F

.field private eeH:F

.field private eeI:I

.field private eeJ:I

.field private eeK:Ljava/lang/String;

.field private eeL:Ljava/lang/String;

.field private eeM:Z

.field private eeN:F

.field private eeO:Z

.field private eeP:Z

.field protected eeQ:Landroid/os/Handler;

.field private final eea:I

.field private pitch:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/16 v0, 0x12c

    sput v0, Lcom/tencent/mm/plugin/scanner/ui/bi;->edP:I

    return-void
.end method

.method public constructor <init>(Lcom/tencent/mm/plugin/scanner/ui/am;Landroid/graphics/Point;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/16 v5, 0x104

    const/16 v4, 0xf0

    const/16 v3, 0xdc

    const v2, -0x39e3c000

    const/4 v1, 0x0

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/tencent/mm/plugin/scanner/ui/ai;-><init>(Lcom/tencent/mm/plugin/scanner/ui/am;Landroid/graphics/Point;)V

    .line 43
    iput v5, p0, Lcom/tencent/mm/plugin/scanner/ui/bi;->edV:I

    .line 44
    const/16 v0, 0x12c

    iput v0, p0, Lcom/tencent/mm/plugin/scanner/ui/bi;->edW:I

    .line 46
    iput v3, p0, Lcom/tencent/mm/plugin/scanner/ui/bi;->edZ:I

    .line 47
    iput v4, p0, Lcom/tencent/mm/plugin/scanner/ui/bi;->eea:I

    .line 59
    iput-boolean v1, p0, Lcom/tencent/mm/plugin/scanner/ui/bi;->eeM:Z

    .line 60
    iput v2, p0, Lcom/tencent/mm/plugin/scanner/ui/bi;->eeN:F

    .line 61
    iput v2, p0, Lcom/tencent/mm/plugin/scanner/ui/bi;->pitch:F

    .line 63
    iput-boolean v1, p0, Lcom/tencent/mm/plugin/scanner/ui/bi;->eeO:Z

    .line 64
    iput-boolean v1, p0, Lcom/tencent/mm/plugin/scanner/ui/bi;->eeP:Z

    .line 65
    iput-boolean v1, p0, Lcom/tencent/mm/plugin/scanner/ui/bi;->ecV:Z

    .line 295
    new-instance v0, Lcom/tencent/mm/plugin/scanner/ui/bl;

    invoke-direct {v0, p0}, Lcom/tencent/mm/plugin/scanner/ui/bl;-><init>(Lcom/tencent/mm/plugin/scanner/ui/bi;)V

    iput-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/bi;->eeQ:Landroid/os/Handler;

    .line 69
    invoke-static {}, Lcom/tencent/mm/compatible/c/d;->pI()Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    const/16 v0, 0x12c

    invoke-virtual {p0, v5, v0}, Lcom/tencent/mm/plugin/scanner/ui/bi;->at(II)D

    .line 74
    :goto_0
    return-void

    .line 72
    :cond_0
    invoke-virtual {p0, v3, v4}, Lcom/tencent/mm/plugin/scanner/ui/bi;->at(II)D

    goto :goto_0
.end method

.method static synthetic a(Lcom/tencent/mm/plugin/scanner/ui/bi;F)F
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 39
    iput p1, p0, Lcom/tencent/mm/plugin/scanner/ui/bi;->eeG:F

    return p1
.end method

.method static synthetic a(Lcom/tencent/mm/plugin/scanner/ui/bi;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 39
    iput p1, p0, Lcom/tencent/mm/plugin/scanner/ui/bi;->eeJ:I

    return p1
.end method

.method static synthetic a(Lcom/tencent/mm/plugin/scanner/ui/bi;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/tencent/mm/plugin/scanner/ui/bi;->eeK:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/mm/plugin/scanner/ui/bi;)Z
    .locals 1
    .parameter

    .prologue
    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/plugin/scanner/ui/bi;->eeM:Z

    return v0
.end method

.method private aaB()V
    .locals 6

    .prologue
    const/high16 v5, -0x3b86

    const/4 v4, 0x1

    .line 197
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/bi;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    if-nez v0, :cond_1

    .line 198
    const-string v0, "MicroMsg.scanner.ScanModeStreetView"

    const-string v1, "dealWithNetWork(), scanUICallback == null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 201
    :cond_1
    iget-boolean v0, p0, Lcom/tencent/mm/plugin/scanner/ui/bi;->eeP:Z

    if-eqz v0, :cond_2

    .line 202
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/bi;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    invoke-interface {v0, v4}, Lcom/tencent/mm/plugin/scanner/ui/am;->bd(Z)V

    goto :goto_0

    .line 204
    :cond_2
    invoke-static {}, Lcom/tencent/mm/model/be;->se()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/n/ac;->wS()I

    move-result v0

    if-eq v0, v4, :cond_3

    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/n/ac;->wS()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 207
    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/bi;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/tencent/mm/plugin/scanner/ui/am;->a(JZ)V

    .line 208
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/bi;->cnY:Lcom/tencent/mm/sdk/platformtools/LBSManager;

    if-nez v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/bi;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    if-nez v0, :cond_4

    const-string v0, "MicroMsg.scanner.ScanModeStreetView"

    const-string v1, "initLBS(), scanUICallback == null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/bi;->cnY:Lcom/tencent/mm/sdk/platformtools/LBSManager;

    if-nez v0, :cond_5

    new-instance v0, Lcom/tencent/mm/sdk/platformtools/LBSManager;

    iget-object v1, p0, Lcom/tencent/mm/plugin/scanner/ui/bi;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    invoke-interface {v1}, Lcom/tencent/mm/plugin/scanner/ui/am;->aal()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/plugin/scanner/ui/bj;

    invoke-direct {v2, p0}, Lcom/tencent/mm/plugin/scanner/ui/bj;-><init>(Lcom/tencent/mm/plugin/scanner/ui/bi;)V

    invoke-direct {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/LBSManager;-><init>(Landroid/content/Context;Lcom/tencent/mm/sdk/platformtools/x;)V

    iput-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/bi;->cnY:Lcom/tencent/mm/sdk/platformtools/LBSManager;

    :cond_5
    iput v5, p0, Lcom/tencent/mm/plugin/scanner/ui/bi;->eeG:F

    iput v5, p0, Lcom/tencent/mm/plugin/scanner/ui/bi;->eeH:F

    const/16 v0, -0x3e8

    iput v0, p0, Lcom/tencent/mm/plugin/scanner/ui/bi;->eeJ:I

    iput v4, p0, Lcom/tencent/mm/plugin/scanner/ui/bi;->eeI:I

    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/bi;->cnY:Lcom/tencent/mm/sdk/platformtools/LBSManager;

    invoke-virtual {v0}, Lcom/tencent/mm/sdk/platformtools/LBSManager;->aze()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/bi;->eeK:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/bi;->cnY:Lcom/tencent/mm/sdk/platformtools/LBSManager;

    invoke-virtual {v0}, Lcom/tencent/mm/sdk/platformtools/LBSManager;->azd()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/bi;->eeL:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/bi;->cnY:Lcom/tencent/mm/sdk/platformtools/LBSManager;

    invoke-virtual {v0}, Lcom/tencent/mm/sdk/platformtools/LBSManager;->start()V

    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/bi;->cnY:Lcom/tencent/mm/sdk/platformtools/LBSManager;

    invoke-virtual {v0}, Lcom/tencent/mm/sdk/platformtools/LBSManager;->aza()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/tencent/mm/plugin/scanner/ui/bi;F)F
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 39
    iput p1, p0, Lcom/tencent/mm/plugin/scanner/ui/bi;->eeH:F

    return p1
.end method

.method static synthetic b(Lcom/tencent/mm/plugin/scanner/ui/bi;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 39
    iput p1, p0, Lcom/tencent/mm/plugin/scanner/ui/bi;->eeI:I

    return p1
.end method

.method static synthetic b(Lcom/tencent/mm/plugin/scanner/ui/bi;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/tencent/mm/plugin/scanner/ui/bi;->eeL:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/tencent/mm/plugin/scanner/ui/bi;)V
    .locals 4
    .parameter

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/tencent/mm/plugin/scanner/ui/bi;->eeM:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/mm/plugin/scanner/ui/bi;->eeO:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/mm/plugin/scanner/ui/bi;->ecV:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/plugin/scanner/ui/bi;->ecV:Z

    new-instance v0, Lcom/tencent/mm/protocal/a/qg;

    invoke-direct {v0}, Lcom/tencent/mm/protocal/a/qg;-><init>()V

    iget-object v1, p0, Lcom/tencent/mm/plugin/scanner/ui/bi;->eeL:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/mm/protocal/a/qg;->fNB:Ljava/lang/String;

    iget v1, p0, Lcom/tencent/mm/plugin/scanner/ui/bi;->eeI:I

    iput v1, v0, Lcom/tencent/mm/protocal/a/qg;->fNC:I

    iget v1, p0, Lcom/tencent/mm/plugin/scanner/ui/bi;->eeG:F

    iput v1, v0, Lcom/tencent/mm/protocal/a/qg;->fNy:F

    iget v1, p0, Lcom/tencent/mm/plugin/scanner/ui/bi;->eeH:F

    iput v1, v0, Lcom/tencent/mm/protocal/a/qg;->fNx:F

    iget-object v1, p0, Lcom/tencent/mm/plugin/scanner/ui/bi;->eeK:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/mm/protocal/a/qg;->fNA:Ljava/lang/String;

    iget v1, p0, Lcom/tencent/mm/plugin/scanner/ui/bi;->eeJ:I

    iput v1, v0, Lcom/tencent/mm/protocal/a/qg;->fNz:I

    invoke-static {}, Lcom/tencent/mm/model/be;->se()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/tencent/mm/modelsimple/ag;

    iget v2, p0, Lcom/tencent/mm/plugin/scanner/ui/bi;->eeN:F

    iget v3, p0, Lcom/tencent/mm/plugin/scanner/ui/bi;->pitch:F

    invoke-direct {v1, v0, v2, v3}, Lcom/tencent/mm/modelsimple/ag;-><init>(Lcom/tencent/mm/protocal/a/qg;FF)V

    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    goto :goto_0
.end method

.method static synthetic c(Lcom/tencent/mm/plugin/scanner/ui/bi;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/bi;->ecf:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic d(Lcom/tencent/mm/plugin/scanner/ui/bi;)Z
    .locals 1
    .parameter

    .prologue
    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/plugin/scanner/ui/bi;->eeP:Z

    return v0
.end method

.method static synthetic e(Lcom/tencent/mm/plugin/scanner/ui/bi;)Z
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/tencent/mm/plugin/scanner/ui/bi;->eeO:Z

    return v0
.end method


# virtual methods
.method public final a(IILjava/lang/String;Lcom/tencent/mm/n/x;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 231
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/bi;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    if-nez v0, :cond_1

    .line 232
    const-string v0, "MicroMsg.scanner.ScanModeStreetView"

    const-string v1, "onSceneEnd(), scanUICallback == null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    :cond_0
    :goto_0
    return-void

    .line 235
    :cond_1
    iput-boolean v5, p0, Lcom/tencent/mm/plugin/scanner/ui/bi;->ecV:Z

    .line 237
    invoke-virtual {p4}, Lcom/tencent/mm/n/x;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 240
    :pswitch_0
    if-nez p1, :cond_2

    if-eqz p2, :cond_3

    .line 241
    :cond_2
    const-string v0, "MicroMsg.scanner.ScanModeStreetView"

    const-string v1, "onSceneEnd() errType = [%s], errCode = [%s]"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 245
    :cond_3
    check-cast p4, Lcom/tencent/mm/modelsimple/ag;

    invoke-virtual {p4}, Lcom/tencent/mm/modelsimple/ag;->CA()Lcom/tencent/mm/protocal/a/sg;

    move-result-object v0

    .line 246
    if-eqz v0, :cond_4

    iget-object v1, v0, Lcom/tencent/mm/protocal/a/sg;->fMA:Ljava/lang/String;

    if-nez v1, :cond_5

    .line 247
    :cond_4
    const-string v0, "MicroMsg.scanner.ScanModeStreetView"

    const-string v1, "resp null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 250
    :cond_5
    const-string v1, "MicroMsg.scanner.ScanModeStreetView"

    const-string v2, "onSceneEnd() errType = [%s], errCode = [%s], resp.Type=[%s]"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    iget v4, v0, Lcom/tencent/mm/protocal/a/sg;->dGR:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v1, v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 251
    iget v1, v0, Lcom/tencent/mm/protocal/a/sg;->dGR:I

    if-nez v1, :cond_7

    .line 252
    iget-object v0, v0, Lcom/tencent/mm/protocal/a/sg;->fMA:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/modelsimple/ag;->gs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 253
    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 254
    const-string v0, "MicroMsg.scanner.ScanModeStreetView"

    const-string v1, "SCAN_STREET_VIEW_TYPE_STREETVIEW url is null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 257
    :cond_6
    new-instance v1, Lcom/tencent/mm/plugin/scanner/ui/bk;

    invoke-direct {v1, p0, v0}, Lcom/tencent/mm/plugin/scanner/ui/bk;-><init>(Lcom/tencent/mm/plugin/scanner/ui/bi;Ljava/lang/String;)V

    const-wide/16 v2, 0x320

    invoke-static {v1, v2, v3}, Lcom/tencent/mm/sdk/platformtools/an;->b(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 281
    :cond_7
    iget v1, v0, Lcom/tencent/mm/protocal/a/sg;->dGR:I

    if-ne v1, v7, :cond_8

    .line 282
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/bi;->eeQ:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/mm/plugin/scanner/ui/bi;->eeO:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/bi;->eeQ:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/bi;->eeQ:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v5, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 283
    :cond_8
    iget v1, v0, Lcom/tencent/mm/protocal/a/sg;->dGR:I

    if-ne v1, v6, :cond_0

    .line 285
    :try_start_0
    iget-object v0, v0, Lcom/tencent/mm/protocal/a/sg;->fMA:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/modelsimple/ai;->gt(Ljava/lang/String;)Lcom/tencent/mm/modelsimple/ai;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 286
    :catch_0
    move-exception v0

    .line 287
    const-string v1, "MicroMsg.scanner.ScanModeStreetView"

    const-string v2, "MM_SCAN_STREET_VIEW_TYPE_RECOMMEND\uff0c [%s]"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-static {v1, v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 237
    nop

    :pswitch_data_0
    .packed-switch 0x1a8
        :pswitch_0
    .end packed-switch
.end method

.method public final a(ILjava/lang/String;[B)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 223
    return-void
.end method

.method public final aaA()I
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x5

    return v0
.end method

.method public final aaC()V
    .locals 0

    .prologue
    .line 227
    return-void
.end method

.method protected final aav()V
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/bi;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    if-nez v0, :cond_0

    .line 190
    const-string v0, "MicroMsg.scanner.ScanModeStreetView"

    const-string v1, "handleNetworkChange(), scanUICallback == null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    :goto_0
    return-void

    .line 193
    :cond_0
    invoke-direct {p0}, Lcom/tencent/mm/plugin/scanner/ui/bi;->aaB()V

    goto :goto_0
.end method

.method protected final aaw()Lcom/tencent/mm/plugin/scanner/b/a;
    .locals 1

    .prologue
    .line 184
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final aax()I
    .locals 1

    .prologue
    .line 179
    sget v0, Lcom/tencent/mm/k;->aYS:I

    return v0
.end method

.method protected final aay()I
    .locals 1

    .prologue
    .line 349
    sget v0, Lcom/tencent/mm/plugin/scanner/ui/bi;->edP:I

    return v0
.end method

.method protected final aaz()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 172
    invoke-virtual {p0, v3}, Lcom/tencent/mm/plugin/scanner/ui/bi;->hG(I)V

    .line 173
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/bi;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/tencent/mm/plugin/scanner/ui/am;->a(ILandroid/view/View$OnClickListener;Z)V

    .line 174
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/scanner/ui/bi;->onResume()V

    .line 175
    return-void
.end method

.method protected final hG(I)V
    .locals 5
    .parameter

    .prologue
    const/high16 v4, 0x4258

    .line 151
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/bi;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    sget v1, Lcom/tencent/mm/i;->aIc:I

    invoke-interface {v0, v1}, Lcom/tencent/mm/plugin/scanner/ui/am;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/bi;->ecf:Landroid/widget/TextView;

    .line 152
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/bi;->ecf:Landroid/widget/TextView;

    sget v1, Lcom/tencent/mm/n;->bxq:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 153
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/bi;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    sget v1, Lcom/tencent/mm/i;->aIe:I

    invoke-interface {v0, v1}, Lcom/tencent/mm/plugin/scanner/ui/am;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/bi;->djQ:Landroid/widget/TextView;

    .line 154
    if-lez p1, :cond_0

    .line 155
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/bi;->djQ:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 156
    add-int/lit8 v1, p1, 0x0

    iget-object v2, p0, Lcom/tencent/mm/plugin/scanner/ui/bi;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    invoke-interface {v2}, Lcom/tencent/mm/plugin/scanner/ui/am;->aal()Landroid/app/Activity;

    move-result-object v2

    const/high16 v3, 0x4150

    invoke-static {v2, v3}, Lcom/tencent/mm/sdk/platformtools/e;->a(Landroid/content/Context;F)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 157
    iget-object v1, p0, Lcom/tencent/mm/plugin/scanner/ui/bi;->djQ:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 159
    :cond_0
    invoke-static {}, Lcom/tencent/mm/compatible/c/d;->pI()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 160
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/bi;->djQ:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/mm/plugin/scanner/ui/bi;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    invoke-interface {v1}, Lcom/tencent/mm/plugin/scanner/ui/am;->aal()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/tencent/mm/sdk/platformtools/e;->a(Landroid/content/Context;F)I

    move-result v1

    iget-object v2, p0, Lcom/tencent/mm/plugin/scanner/ui/bi;->djQ:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/tencent/mm/plugin/scanner/ui/bi;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    invoke-interface {v3}, Lcom/tencent/mm/plugin/scanner/ui/am;->aal()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v4}, Lcom/tencent/mm/sdk/platformtools/e;->a(Landroid/content/Context;F)I

    move-result v3

    iget-object v4, p0, Lcom/tencent/mm/plugin/scanner/ui/bi;->djQ:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 165
    :cond_1
    invoke-direct {p0}, Lcom/tencent/mm/plugin/scanner/ui/bi;->aaB()V

    .line 166
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/scanner/ui/bi;->bf(Z)V

    .line 167
    return-void
.end method

.method protected final onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 328
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/plugin/scanner/ui/bi;->eeO:Z

    .line 329
    invoke-virtual {p0, v2}, Lcom/tencent/mm/plugin/scanner/ui/bi;->bf(Z)V

    .line 330
    invoke-static {}, Lcom/tencent/mm/model/be;->se()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 331
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0x1a8

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/n/ac;->b(ILcom/tencent/mm/n/m;)V

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/bi;->cnY:Lcom/tencent/mm/sdk/platformtools/LBSManager;

    if-eqz v0, :cond_1

    .line 334
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/bi;->cnY:Lcom/tencent/mm/sdk/platformtools/LBSManager;

    invoke-virtual {v0}, Lcom/tencent/mm/sdk/platformtools/LBSManager;->ayZ()V

    .line 335
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/bi;->cnY:Lcom/tencent/mm/sdk/platformtools/LBSManager;

    invoke-virtual {v0}, Lcom/tencent/mm/sdk/platformtools/LBSManager;->IR()V

    .line 336
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/bi;->cnY:Lcom/tencent/mm/sdk/platformtools/LBSManager;

    .line 338
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/bi;->eeQ:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 339
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/bi;->eeQ:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 341
    :cond_2
    return-void
.end method

.method protected final onResume()V
    .locals 2

    .prologue
    .line 316
    invoke-static {}, Lcom/tencent/mm/model/be;->se()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0x1a8

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/n/ac;->a(ILcom/tencent/mm/n/m;)V

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/bi;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    if-nez v0, :cond_1

    .line 320
    const-string v0, "MicroMsg.scanner.ScanModeStreetView"

    const-string v1, "scanUICallback == null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    :goto_0
    return-void

    .line 323
    :cond_1
    invoke-direct {p0}, Lcom/tencent/mm/plugin/scanner/ui/bi;->aaB()V

    goto :goto_0
.end method
