.class public final Lcom/tencent/mm/plugin/scanner/ui/ar;
.super Lcom/tencent/mm/plugin/scanner/ui/ai;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/n/m;
.implements Lcom/tencent/mm/plugin/scanner/b/d;


# instance fields
.field private ebb:I

.field private ecS:Landroid/widget/TextView;

.field private edS:I

.field private edT:I

.field private edU:J

.field private final edV:I

.field private final edW:I

.field private final edX:I

.field private final edY:I

.field private eed:F

.field private final eeg:I

.field eek:Lcom/tencent/mm/plugin/scanner/a/d;

.field private eel:I

.field private eem:Landroid/widget/TextView;

.field private final een:I

.field private final eeo:I

.field private eep:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/tencent/mm/plugin/scanner/ui/am;Landroid/graphics/Point;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/16 v3, 0x114

    const/16 v2, 0xb8

    const/16 v1, 0x2e

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 78
    invoke-direct {p0, p1, p2, v4}, Lcom/tencent/mm/plugin/scanner/ui/ai;-><init>(Lcom/tencent/mm/plugin/scanner/ui/am;Landroid/graphics/Point;B)V

    .line 42
    iput v4, p0, Lcom/tencent/mm/plugin/scanner/ui/ar;->edS:I

    .line 43
    iput v5, p0, Lcom/tencent/mm/plugin/scanner/ui/ar;->edT:I

    .line 45
    iput v4, p0, Lcom/tencent/mm/plugin/scanner/ui/ar;->eel:I

    .line 49
    iput v2, p0, Lcom/tencent/mm/plugin/scanner/ui/ar;->edV:I

    .line 50
    iput v1, p0, Lcom/tencent/mm/plugin/scanner/ui/ar;->edW:I

    .line 52
    iput v3, p0, Lcom/tencent/mm/plugin/scanner/ui/ar;->edX:I

    .line 53
    const/16 v0, 0x46

    iput v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ar;->edY:I

    .line 56
    const/16 v0, 0x32

    iput v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ar;->eeg:I

    .line 63
    const/16 v0, 0x1388

    iput v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ar;->een:I

    .line 64
    const/16 v0, 0x1f40

    iput v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ar;->eeo:I

    .line 65
    new-instance v0, Lcom/tencent/mm/plugin/scanner/ui/as;

    invoke-direct {v0, p0}, Lcom/tencent/mm/plugin/scanner/ui/as;-><init>(Lcom/tencent/mm/plugin/scanner/ui/ar;)V

    iput-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ar;->eep:Landroid/os/Handler;

    .line 80
    invoke-virtual {p0, v2, v1}, Lcom/tencent/mm/plugin/scanner/ui/ar;->at(II)D

    .line 81
    iget v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ar;->edG:I

    iget v1, p0, Lcom/tencent/mm/plugin/scanner/ui/ar;->edH:I

    invoke-static {v3, v0}, Lcom/tencent/mm/plugin/scanner/b/q;->au(II)F

    move-result v0

    iput v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ar;->eed:F

    .line 82
    const-string v0, "MicroMsg.scanner.ScanModeOCR"

    const-string v1, "frameRectWidth = [%s], frameRectHeight = [%s], scaleRate = [%s]"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/tencent/mm/plugin/scanner/ui/ar;->edG:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x1

    iget v4, p0, Lcom/tencent/mm/plugin/scanner/ui/ar;->edH:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    iget v3, p0, Lcom/tencent/mm/plugin/scanner/ui/ar;->eed:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    and-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ar;->ebb:I

    .line 85
    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/plugin/scanner/ui/ar;)I
    .locals 1
    .parameter

    .prologue
    .line 34
    iget v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ar;->edS:I

    return v0
.end method

.method private aaB()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 164
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ar;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    if-nez v0, :cond_0

    .line 165
    const-string v0, "MicroMsg.scanner.ScanModeOCR"

    const-string v1, "dealWithNetWork(), scanUICallback == null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    :goto_0
    return-void

    .line 168
    :cond_0
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/n/ac;->wS()I

    move-result v0

    if-eq v0, v3, :cond_1

    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/n/ac;->wS()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 170
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ar;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    const-wide/16 v1, 0x708

    invoke-interface {v0, v1, v2, v3}, Lcom/tencent/mm/plugin/scanner/ui/am;->a(JZ)V

    goto :goto_0

    .line 172
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ar;->ecS:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ar;->eem:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ar;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    invoke-interface {v0, v3}, Lcom/tencent/mm/plugin/scanner/ui/am;->bd(Z)V

    goto :goto_0
.end method

.method private aj(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 311
    invoke-static {p1}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ar;->djQ:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 313
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ar;->ecS:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 314
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ar;->ecS:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 318
    :goto_0
    invoke-static {p2}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 319
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ar;->djQ:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 320
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ar;->eem:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 321
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ar;->eem:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 325
    :goto_1
    return-void

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ar;->ecS:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 323
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ar;->eem:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method static synthetic b(Lcom/tencent/mm/plugin/scanner/ui/ar;)I
    .locals 1
    .parameter

    .prologue
    .line 34
    iget v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ar;->edT:I

    return v0
.end method

.method static synthetic c(Lcom/tencent/mm/plugin/scanner/ui/ar;)I
    .locals 1
    .parameter

    .prologue
    .line 34
    iget v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ar;->edS:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ar;->edS:I

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

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 272
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ar;->eep:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 273
    invoke-virtual {p4}, Lcom/tencent/mm/n/x;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 308
    :cond_0
    :goto_0
    return-void

    .line 275
    :pswitch_0
    iget v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ar;->edS:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ar;->edS:I

    .line 277
    if-nez p1, :cond_1

    if-eqz p2, :cond_2

    .line 278
    :cond_1
    const-string v0, "MicroMsg.scanner.ScanModeOCR"

    const-string v1, "onSceneEnd() errType = [%s], errCode = [%s]"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 279
    iget-wide v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ar;->edU:J

    const-wide/16 v2, 0x12c

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ar;->edU:J

    .line 280
    invoke-direct {p0, v4, v4}, Lcom/tencent/mm/plugin/scanner/ui/ar;->aj(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 283
    :cond_2
    const-string v0, "MicroMsg.scanner.ScanModeOCR"

    const-string v1, "onSceneEnd() errType = [%s], errCode = [%s]"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 290
    check-cast p4, Lcom/tencent/mm/plugin/scanner/a/d;

    invoke-virtual {p4}, Lcom/tencent/mm/plugin/scanner/a/d;->ZD()Lcom/tencent/mm/protocal/a/pg;

    move-result-object v0

    .line 291
    if-nez v0, :cond_3

    .line 292
    const-string v0, "MicroMsg.scanner.ScanModeOCR"

    const-string v1, "onSceneEnd(), getResp() == null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    invoke-direct {p0, v4, v4}, Lcom/tencent/mm/plugin/scanner/ui/ar;->aj(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 296
    :cond_3
    const-string v1, "MicroMsg.scanner.ScanModeOCR"

    const-string v2, "onSceneEnd() clientScanID = %s, imageType = %s, source = %s, translate = %s"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, v0, Lcom/tencent/mm/protocal/a/pg;->fRz:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    iget v4, v0, Lcom/tencent/mm/protocal/a/pg;->fRB:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    iget-object v4, v0, Lcom/tencent/mm/protocal/a/pg;->fRF:Ljava/lang/String;

    aput-object v4, v3, v7

    const/4 v4, 0x3

    iget-object v5, v0, Lcom/tencent/mm/protocal/a/pg;->fRG:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 298
    iget-object v1, v0, Lcom/tencent/mm/protocal/a/pg;->fRG:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 301
    iget-object v1, v0, Lcom/tencent/mm/protocal/a/pg;->fRF:Ljava/lang/String;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/pg;->fRG:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/tencent/mm/plugin/scanner/ui/ar;->aj(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ar;->eek:Lcom/tencent/mm/plugin/scanner/a/d;

    if-eqz v0, :cond_0

    .line 304
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/plugin/scanner/ui/ar;->eek:Lcom/tencent/mm/plugin/scanner/a/d;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/ac;->c(Lcom/tencent/mm/n/x;)V

    goto/16 :goto_0

    .line 273
    :pswitch_data_0
    .packed-switch 0x188
        :pswitch_0
    .end packed-switch
.end method

.method public final a(ILjava/lang/String;[B)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 185
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ar;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    if-nez v0, :cond_0

    .line 186
    const-string v0, "MicroMsg.scanner.ScanModeOCR"

    const-string v1, "scanUICallback == null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    :goto_0
    return-void

    .line 190
    :cond_0
    if-eqz p3, :cond_1

    array-length v0, p3

    if-gtz v0, :cond_4

    .line 191
    :cond_1
    const-string v1, "MicroMsg.scanner.ScanModeOCR"

    const-string v2, "greyData null:[%s]"

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    if-nez p3, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 192
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/tencent/mm/plugin/scanner/ui/ar;->edU:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x730

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    sget-object v0, Lcom/tencent/mm/plugin/scanner/ui/ar;->efV:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 194
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ar;->edU:J

    .line 195
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ar;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/tencent/mm/plugin/scanner/ui/am;->a(JZ)V

    .line 200
    :goto_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ar;->eel:I

    goto :goto_0

    .line 191
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 198
    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ar;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    const-wide/16 v1, 0x28

    invoke-interface {v0, v1, v2}, Lcom/tencent/mm/plugin/scanner/ui/am;->aC(J)V

    goto :goto_2

    .line 204
    :cond_4
    iget v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ar;->edS:I

    iget v1, p0, Lcom/tencent/mm/plugin/scanner/ui/ar;->edT:I

    if-lt v0, v1, :cond_6

    .line 205
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/tencent/mm/plugin/scanner/ui/ar;->edU:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x730

    cmp-long v0, v0, v2

    if-lez v0, :cond_5

    sget-object v0, Lcom/tencent/mm/plugin/scanner/ui/ar;->efV:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 207
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ar;->edU:J

    .line 208
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ar;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/tencent/mm/plugin/scanner/ui/am;->a(JZ)V

    .line 213
    :goto_3
    const-string v0, "MicroMsg.scanner.ScanModeOCR"

    const-string v1, "hasDoSceneCount[%s], maxDoSceneCount[%s]"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/tencent/mm/plugin/scanner/ui/ar;->edS:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/tencent/mm/plugin/scanner/ui/ar;->edT:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 211
    :cond_5
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ar;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    const-wide/16 v1, 0x28

    invoke-interface {v0, v1, v2}, Lcom/tencent/mm/plugin/scanner/ui/am;->aC(J)V

    goto :goto_3

    .line 218
    :cond_6
    new-instance v0, Lcom/tencent/mm/plugin/scanner/a/d;

    const-string v1, "en"

    const-string v2, "zh_CN"

    iget v3, p0, Lcom/tencent/mm/plugin/scanner/ui/ar;->ebb:I

    invoke-direct {v0, p3, v1, v2, v3}, Lcom/tencent/mm/plugin/scanner/a/d;-><init>([BLjava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ar;->eek:Lcom/tencent/mm/plugin/scanner/a/d;

    .line 219
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/plugin/scanner/ui/ar;->eek:Lcom/tencent/mm/plugin/scanner/a/d;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    .line 220
    iget v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ar;->edS:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ar;->edS:I

    .line 221
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ar;->eep:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 222
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ar;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    invoke-interface {v0}, Lcom/tencent/mm/plugin/scanner/ui/am;->aal()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/ba;->bp(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 223
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ar;->eep:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x1f40

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 228
    :goto_4
    iget v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ar;->edL:I

    array-length v1, p3

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ar;->edL:I

    .line 229
    const-string v0, "MicroMsg.scanner.ScanModeOCR"

    const-string v1, "totalNetworkFlow[%s], hasTakePicNum[%s], maxDoSceneCount[%s]"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/tencent/mm/plugin/scanner/ui/ar;->edL:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/tencent/mm/plugin/scanner/ui/ar;->eel:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Lcom/tencent/mm/plugin/scanner/ui/ar;->edT:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 232
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/tencent/mm/plugin/scanner/ui/ar;->edU:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x730

    cmp-long v0, v0, v2

    if-lez v0, :cond_8

    sget-object v0, Lcom/tencent/mm/plugin/scanner/ui/ar;->efV:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 234
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ar;->edU:J

    .line 235
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ar;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/tencent/mm/plugin/scanner/ui/am;->a(JZ)V

    .line 240
    :goto_5
    const-string v0, "MicroMsg.scanner.ScanModeOCR"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onDecodeFinished:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/tencent/mm/plugin/scanner/ui/ar;->edS:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tencent/mm/plugin/scanner/ui/ar;->eel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 225
    :cond_7
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ar;->eep:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_4

    .line 238
    :cond_8
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ar;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    const-wide/16 v1, 0x28

    invoke-interface {v0, v1, v2}, Lcom/tencent/mm/plugin/scanner/ui/am;->aC(J)V

    goto :goto_5
.end method

.method public final aaA()I
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x3

    return v0
.end method

.method public final aaC()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 245
    const-string v0, "MicroMsg.scanner.ScanModeOCR"

    const-string v1, "decodeFail"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ar;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    if-nez v0, :cond_0

    .line 247
    const-string v0, "MicroMsg.scanner.ScanModeOCR"

    const-string v1, "scanUICallback == null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    :goto_0
    return-void

    .line 250
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/tencent/mm/plugin/scanner/ui/ar;->edU:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x730

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    sget-object v0, Lcom/tencent/mm/plugin/scanner/ui/ar;->efV:[Z

    aget-boolean v0, v0, v4

    if-ne v0, v4, :cond_1

    .line 252
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ar;->edU:J

    .line 253
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ar;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    const-wide/16 v1, 0x0

    invoke-interface {v0, v1, v2, v4}, Lcom/tencent/mm/plugin/scanner/ui/am;->a(JZ)V

    goto :goto_0

    .line 256
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ar;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    const-wide/16 v1, 0x28

    invoke-interface {v0, v1, v2}, Lcom/tencent/mm/plugin/scanner/ui/am;->aC(J)V

    goto :goto_0
.end method

.method protected final aav()V
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ar;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    if-nez v0, :cond_0

    .line 157
    const-string v0, "MicroMsg.scanner.ScanModeOCR"

    const-string v1, "scanUICallback == null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    :goto_0
    return-void

    .line 160
    :cond_0
    invoke-direct {p0}, Lcom/tencent/mm/plugin/scanner/ui/ar;->aaB()V

    goto :goto_0
.end method

.method protected final aaw()Lcom/tencent/mm/plugin/scanner/b/a;
    .locals 7

    .prologue
    const/4 v4, 0x1

    .line 139
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ar;->edF:Lcom/tencent/mm/plugin/scanner/b/a;

    if-nez v0, :cond_1

    .line 140
    const/16 v2, 0x32

    .line 141
    sget-object v0, Lcom/tencent/mm/compatible/c/s;->ceK:Lcom/tencent/mm/compatible/c/b;

    iget v0, v0, Lcom/tencent/mm/compatible/c/b;->cdH:I

    if-lez v0, :cond_0

    .line 142
    sget-object v0, Lcom/tencent/mm/compatible/c/s;->ceK:Lcom/tencent/mm/compatible/c/b;

    iget v2, v0, Lcom/tencent/mm/compatible/c/b;->cdH:I

    .line 143
    const-string v0, "MicroMsg.scanner.ScanModeOCR"

    const-string v1, "ImageQuality=[%s]"

    new-array v3, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-object v6, Lcom/tencent/mm/compatible/c/s;->ceK:Lcom/tencent/mm/compatible/c/b;

    iget v6, v6, Lcom/tencent/mm/compatible/c/b;->cdH:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-static {v0, v1, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ar;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    invoke-interface {v0}, Lcom/tencent/mm/plugin/scanner/ui/am;->aal()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/ba;->bp(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 146
    new-instance v0, Lcom/tencent/mm/plugin/scanner/b/j;

    add-int/lit8 v2, v2, -0xa

    iget v3, p0, Lcom/tencent/mm/plugin/scanner/ui/ar;->eed:F

    iget-object v1, p0, Lcom/tencent/mm/plugin/scanner/ui/ar;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    invoke-interface {v1}, Lcom/tencent/mm/plugin/scanner/ui/am;->aam()Z

    move-result v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/tencent/mm/plugin/scanner/b/j;-><init>(Lcom/tencent/mm/plugin/scanner/b/d;IFZZ)V

    iput-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ar;->edF:Lcom/tencent/mm/plugin/scanner/b/a;

    .line 151
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ar;->edF:Lcom/tencent/mm/plugin/scanner/b/a;

    return-object v0

    .line 148
    :cond_2
    new-instance v0, Lcom/tencent/mm/plugin/scanner/b/j;

    iget v3, p0, Lcom/tencent/mm/plugin/scanner/ui/ar;->eed:F

    iget-object v1, p0, Lcom/tencent/mm/plugin/scanner/ui/ar;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    invoke-interface {v1}, Lcom/tencent/mm/plugin/scanner/ui/am;->aam()Z

    move-result v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/tencent/mm/plugin/scanner/b/j;-><init>(Lcom/tencent/mm/plugin/scanner/b/d;IFZZ)V

    iput-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ar;->edF:Lcom/tencent/mm/plugin/scanner/b/a;

    goto :goto_0
.end method

.method protected final aax()I
    .locals 1

    .prologue
    .line 134
    sget v0, Lcom/tencent/mm/k;->aYP:I

    return v0
.end method

.method protected final aay()I
    .locals 1

    .prologue
    .line 345
    const/4 v0, 0x0

    return v0
.end method

.method protected final aaz()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 126
    invoke-virtual {p0, v3}, Lcom/tencent/mm/plugin/scanner/ui/ar;->hG(I)V

    .line 127
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ar;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/tencent/mm/plugin/scanner/ui/am;->a(ILandroid/view/View$OnClickListener;Z)V

    .line 128
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ar;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    const-wide/16 v1, 0x708

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/tencent/mm/plugin/scanner/ui/am;->a(JZ)V

    .line 129
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/scanner/ui/ar;->onResume()V

    .line 130
    return-void
.end method

.method protected final hG(I)V
    .locals 6
    .parameter

    .prologue
    const/high16 v3, 0x4150

    const/high16 v5, 0x4258

    .line 93
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ar;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    sget v1, Lcom/tencent/mm/i;->aIe:I

    invoke-interface {v0, v1}, Lcom/tencent/mm/plugin/scanner/ui/am;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ar;->djQ:Landroid/widget/TextView;

    .line 94
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ar;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    sget v1, Lcom/tencent/mm/i;->aCZ:I

    invoke-interface {v0, v1}, Lcom/tencent/mm/plugin/scanner/ui/am;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ar;->eem:Landroid/widget/TextView;

    .line 95
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ar;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    sget v1, Lcom/tencent/mm/i;->aDa:I

    invoke-interface {v0, v1}, Lcom/tencent/mm/plugin/scanner/ui/am;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ar;->ecS:Landroid/widget/TextView;

    .line 96
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ar;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    sget v1, Lcom/tencent/mm/i;->aIe:I

    invoke-interface {v0, v1}, Lcom/tencent/mm/plugin/scanner/ui/am;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ar;->djQ:Landroid/widget/TextView;

    .line 97
    if-lez p1, :cond_0

    .line 98
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ar;->djQ:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 99
    add-int/lit8 v1, p1, 0x0

    iget-object v2, p0, Lcom/tencent/mm/plugin/scanner/ui/ar;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    invoke-interface {v2}, Lcom/tencent/mm/plugin/scanner/ui/am;->aal()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/tencent/mm/sdk/platformtools/e;->a(Landroid/content/Context;F)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 100
    iget-object v1, p0, Lcom/tencent/mm/plugin/scanner/ui/ar;->djQ:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 102
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ar;->ecS:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 103
    add-int/lit8 v1, p1, 0x0

    iget-object v2, p0, Lcom/tencent/mm/plugin/scanner/ui/ar;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    invoke-interface {v2}, Lcom/tencent/mm/plugin/scanner/ui/am;->aal()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/tencent/mm/sdk/platformtools/e;->a(Landroid/content/Context;F)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 104
    iget-object v1, p0, Lcom/tencent/mm/plugin/scanner/ui/ar;->ecS:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ar;->ecS:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 107
    :cond_0
    invoke-static {}, Lcom/tencent/mm/compatible/c/d;->pI()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ar;->djQ:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/mm/plugin/scanner/ui/ar;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    invoke-interface {v1}, Lcom/tencent/mm/plugin/scanner/ui/am;->aal()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v5}, Lcom/tencent/mm/sdk/platformtools/e;->a(Landroid/content/Context;F)I

    move-result v1

    iget-object v2, p0, Lcom/tencent/mm/plugin/scanner/ui/ar;->djQ:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/tencent/mm/plugin/scanner/ui/ar;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    invoke-interface {v3}, Lcom/tencent/mm/plugin/scanner/ui/am;->aal()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v5}, Lcom/tencent/mm/sdk/platformtools/e;->a(Landroid/content/Context;F)I

    move-result v3

    iget-object v4, p0, Lcom/tencent/mm/plugin/scanner/ui/ar;->djQ:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 112
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ar;->ecS:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/mm/plugin/scanner/ui/ar;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    invoke-interface {v1}, Lcom/tencent/mm/plugin/scanner/ui/am;->aal()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v5}, Lcom/tencent/mm/sdk/platformtools/e;->a(Landroid/content/Context;F)I

    move-result v1

    iget-object v2, p0, Lcom/tencent/mm/plugin/scanner/ui/ar;->ecS:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/tencent/mm/plugin/scanner/ui/ar;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    invoke-interface {v3}, Lcom/tencent/mm/plugin/scanner/ui/am;->aal()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v5}, Lcom/tencent/mm/sdk/platformtools/e;->a(Landroid/content/Context;F)I

    move-result v3

    iget-object v4, p0, Lcom/tencent/mm/plugin/scanner/ui/ar;->ecS:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ar;->edF:Lcom/tencent/mm/plugin/scanner/b/a;

    if-eqz v0, :cond_2

    .line 118
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ar;->edF:Lcom/tencent/mm/plugin/scanner/b/a;

    check-cast v0, Lcom/tencent/mm/plugin/scanner/b/j;

    iget-object v1, p0, Lcom/tencent/mm/plugin/scanner/ui/ar;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    invoke-interface {v1}, Lcom/tencent/mm/plugin/scanner/ui/am;->aam()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/scanner/b/j;->bi(Z)V

    .line 120
    :cond_2
    invoke-direct {p0}, Lcom/tencent/mm/plugin/scanner/ui/ar;->aaB()V

    .line 121
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/scanner/ui/ar;->bf(Z)V

    .line 122
    return-void
.end method

.method protected final onPause()V
    .locals 2

    .prologue
    .line 339
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/scanner/ui/ar;->bf(Z)V

    .line 340
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0x188

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/n/ac;->b(ILcom/tencent/mm/n/m;)V

    .line 341
    return-void
.end method

.method protected final onResume()V
    .locals 2

    .prologue
    .line 329
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0x188

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/n/ac;->a(ILcom/tencent/mm/n/m;)V

    .line 330
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ar;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    if-nez v0, :cond_0

    .line 331
    const-string v0, "MicroMsg.scanner.ScanModeOCR"

    const-string v1, "scanUICallback == null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    :goto_0
    return-void

    .line 334
    :cond_0
    invoke-direct {p0}, Lcom/tencent/mm/plugin/scanner/ui/ar;->aaB()V

    goto :goto_0
.end method
