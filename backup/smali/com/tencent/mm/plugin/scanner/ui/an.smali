.class public final Lcom/tencent/mm/plugin/scanner/ui/an;
.super Lcom/tencent/mm/plugin/scanner/ui/ai;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/n/m;
.implements Lcom/tencent/mm/plugin/scanner/b/d;


# static fields
.field private static edP:I


# instance fields
.field private ebb:I

.field private ecf:Landroid/widget/TextView;

.field private ecg:Landroid/view/View;

.field private edQ:J

.field edR:Lcom/tencent/mm/plugin/scanner/a/f;

.field private edS:I

.field private edT:I

.field private edU:J

.field private final edV:I

.field private final edW:I

.field private final edX:I

.field private final edY:I

.field private final edZ:I

.field private final eea:I

.field private final eeb:I

.field private final eec:I

.field private eed:F

.field private final eee:J

.field private eef:J

.field private final eeg:I

.field private eeh:Landroid/view/View$OnTouchListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const/16 v0, 0x12c

    sput v0, Lcom/tencent/mm/plugin/scanner/ui/an;->edP:I

    return-void
.end method

.method public constructor <init>(Lcom/tencent/mm/plugin/scanner/ui/am;Landroid/graphics/Point;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/16 v6, 0x104

    const/16 v3, 0xf0

    const/16 v2, 0xdc

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 76
    invoke-direct {p0, p1, p2}, Lcom/tencent/mm/plugin/scanner/ui/ai;-><init>(Lcom/tencent/mm/plugin/scanner/ui/am;Landroid/graphics/Point;)V

    .line 43
    const-wide/16 v0, 0x82

    iput-wide v0, p0, Lcom/tencent/mm/plugin/scanner/ui/an;->edQ:J

    .line 48
    iput v4, p0, Lcom/tencent/mm/plugin/scanner/ui/an;->edS:I

    .line 49
    iput v5, p0, Lcom/tencent/mm/plugin/scanner/ui/an;->edT:I

    .line 53
    iput v6, p0, Lcom/tencent/mm/plugin/scanner/ui/an;->edV:I

    .line 54
    const/16 v0, 0x12c

    iput v0, p0, Lcom/tencent/mm/plugin/scanner/ui/an;->edW:I

    .line 55
    const/16 v0, 0x186

    iput v0, p0, Lcom/tencent/mm/plugin/scanner/ui/an;->edX:I

    .line 56
    const/16 v0, 0x1c2

    iput v0, p0, Lcom/tencent/mm/plugin/scanner/ui/an;->edY:I

    .line 58
    iput v2, p0, Lcom/tencent/mm/plugin/scanner/ui/an;->edZ:I

    .line 59
    iput v3, p0, Lcom/tencent/mm/plugin/scanner/ui/an;->eea:I

    .line 60
    const/16 v0, 0x14a

    iput v0, p0, Lcom/tencent/mm/plugin/scanner/ui/an;->eeb:I

    .line 61
    const/16 v0, 0x168

    iput v0, p0, Lcom/tencent/mm/plugin/scanner/ui/an;->eec:I

    .line 65
    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lcom/tencent/mm/plugin/scanner/ui/an;->eee:J

    .line 68
    const/16 v0, 0x32

    iput v0, p0, Lcom/tencent/mm/plugin/scanner/ui/an;->eeg:I

    .line 77
    invoke-static {}, Lcom/tencent/mm/compatible/c/d;->pI()Z

    move-result v0

    if-nez v0, :cond_1

    .line 78
    const/16 v0, 0x12c

    invoke-virtual {p0, v6, v0}, Lcom/tencent/mm/plugin/scanner/ui/an;->at(II)D

    .line 79
    const/16 v0, 0x186

    iget v1, p0, Lcom/tencent/mm/plugin/scanner/ui/an;->edG:I

    iget v2, p0, Lcom/tencent/mm/plugin/scanner/ui/an;->edH:I

    invoke-static {v0, v1}, Lcom/tencent/mm/plugin/scanner/b/q;->au(II)F

    move-result v0

    iput v0, p0, Lcom/tencent/mm/plugin/scanner/ui/an;->eed:F

    .line 84
    :goto_0
    const-string v0, "MicroMsg.scanner.ScanModeImage"

    const-string v1, "frameRectWidth = [%s], frameRectHeight = [%s], scaleRate = [%s]"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/tencent/mm/plugin/scanner/ui/an;->edG:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget v3, p0, Lcom/tencent/mm/plugin/scanner/ui/an;->edH:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x2

    iget v4, p0, Lcom/tencent/mm/plugin/scanner/ui/an;->eed:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    invoke-interface {p1}, Lcom/tencent/mm/plugin/scanner/ui/am;->aal()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->bD(Landroid/content/Context;)J

    move-result-wide v0

    const-wide/16 v2, 0x64

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 87
    const-string v0, "MicroMsg.scanner.ScanModeImage"

    const-string v1, "memory is not much"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lcom/tencent/mm/plugin/scanner/ui/an;->edQ:J

    .line 91
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    and-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/tencent/mm/plugin/scanner/ui/an;->ebb:I

    .line 92
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/mm/plugin/scanner/ui/an;->eef:J

    .line 93
    return-void

    .line 81
    :cond_1
    invoke-virtual {p0, v2, v3}, Lcom/tencent/mm/plugin/scanner/ui/an;->at(II)D

    .line 82
    const/16 v0, 0x14a

    iget v1, p0, Lcom/tencent/mm/plugin/scanner/ui/an;->edG:I

    iget v2, p0, Lcom/tencent/mm/plugin/scanner/ui/an;->edH:I

    invoke-static {v0, v1}, Lcom/tencent/mm/plugin/scanner/b/q;->au(II)F

    move-result v0

    iput v0, p0, Lcom/tencent/mm/plugin/scanner/ui/an;->eed:F

    goto :goto_0
.end method

.method static synthetic a(Lcom/tencent/mm/plugin/scanner/ui/an;)J
    .locals 2
    .parameter

    .prologue
    .line 37
    iget-wide v0, p0, Lcom/tencent/mm/plugin/scanner/ui/an;->eef:J

    return-wide v0
.end method

.method static synthetic a(Lcom/tencent/mm/plugin/scanner/ui/an;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 37
    iput-wide p1, p0, Lcom/tencent/mm/plugin/scanner/ui/an;->eef:J

    return-wide p1
.end method

.method static synthetic a(Lcom/tencent/mm/plugin/scanner/ui/an;Landroid/view/View$OnTouchListener;)Landroid/view/View$OnTouchListener;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lcom/tencent/mm/plugin/scanner/ui/an;->eeh:Landroid/view/View$OnTouchListener;

    return-object p1
.end method

.method private aaB()V
    .locals 4

    .prologue
    .line 162
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/an;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    if-nez v0, :cond_1

    .line 163
    const-string v0, "MicroMsg.scanner.ScanModeImage"

    const-string v1, "dealWithNetWork(), scanUICallback == null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 166
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

    .line 168
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/an;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/tencent/mm/plugin/scanner/ui/am;->a(JZ)V

    goto :goto_0
.end method

.method private aaD()V
    .locals 1

    .prologue
    .line 245
    new-instance v0, Lcom/tencent/mm/plugin/scanner/ui/ao;

    invoke-direct {v0, p0}, Lcom/tencent/mm/plugin/scanner/ui/ao;-><init>(Lcom/tencent/mm/plugin/scanner/ui/an;)V

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/an;->i(Ljava/lang/Runnable;)V

    .line 270
    return-void
.end method

.method static synthetic b(Lcom/tencent/mm/plugin/scanner/ui/an;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/an;->ecf:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/mm/plugin/scanner/ui/an;)Landroid/view/View$OnTouchListener;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/an;->eeh:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method static synthetic d(Lcom/tencent/mm/plugin/scanner/ui/an;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/an;->ecg:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public final a(IILjava/lang/String;Lcom/tencent/mm/n/x;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 274
    iput v1, p0, Lcom/tencent/mm/plugin/scanner/ui/an;->edS:I

    .line 275
    iget-object v2, p0, Lcom/tencent/mm/plugin/scanner/ui/an;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    if-eqz v2, :cond_0

    if-nez p4, :cond_3

    .line 276
    :cond_0
    const-string v2, "MicroMsg.scanner.ScanModeImage"

    const-string v3, "onSceneEnd() scene is null [%s]"

    new-array v4, v0, [Ljava/lang/Object;

    if-nez p4, :cond_2

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {v2, v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 312
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v1

    .line 276
    goto :goto_0

    .line 279
    :cond_3
    invoke-virtual {p4}, Lcom/tencent/mm/n/x;->getType()I

    move-result v2

    const/16 v3, 0x189

    if-ne v2, v3, :cond_7

    .line 280
    if-nez p1, :cond_4

    if-eqz p2, :cond_5

    .line 281
    :cond_4
    const-string v2, "MicroMsg.scanner.ScanModeImage"

    const-string v3, "onSceneEnd() errType = [%s], errCode = [%s]"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-static {v2, v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 282
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/an;->djQ:Landroid/widget/TextView;

    sget v1, Lcom/tencent/mm/n;->bxm:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 305
    :goto_2
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/an;->edR:Lcom/tencent/mm/plugin/scanner/a/f;

    if-eqz v0, :cond_1

    .line 306
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/plugin/scanner/ui/an;->edR:Lcom/tencent/mm/plugin/scanner/a/f;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/ac;->c(Lcom/tencent/mm/n/x;)V

    goto :goto_1

    .line 285
    :cond_5
    check-cast p4, Lcom/tencent/mm/plugin/scanner/a/f;

    invoke-virtual {p4}, Lcom/tencent/mm/plugin/scanner/a/f;->ZF()Lcom/tencent/mm/protocal/a/se;

    move-result-object v2

    .line 286
    if-nez v2, :cond_6

    .line 287
    const-string v0, "MicroMsg.scanner.ScanModeImage"

    const-string v1, "onSceneEnd(), getResp() == null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 290
    :cond_6
    const-string v3, "MicroMsg.scanner.ScanModeImage"

    const-string v4, "onSceneEnd() clientScanID = %s, imageType = %s"

    new-array v5, v5, [Ljava/lang/Object;

    iget v6, v2, Lcom/tencent/mm/protocal/a/se;->fRz:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    iget v1, v2, Lcom/tencent/mm/protocal/a/se;->fRB:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v0

    invoke-static {v3, v4, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 292
    iget-object v0, v2, Lcom/tencent/mm/protocal/a/se;->fMA:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, p0, v1}, Lcom/tencent/mm/plugin/scanner/b/m;->a(Ljava/lang/String;Lcom/tencent/mm/plugin/scanner/ui/ai;I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 294
    :pswitch_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/an;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    invoke-interface {v0}, Lcom/tencent/mm/plugin/scanner/ui/am;->aae()V

    .line 295
    new-instance v0, Lcom/tencent/mm/plugin/scanner/ui/aq;

    invoke-direct {v0, p0}, Lcom/tencent/mm/plugin/scanner/ui/aq;-><init>(Lcom/tencent/mm/plugin/scanner/ui/an;)V

    const-wide/16 v1, 0x2bc

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/an;->b(Ljava/lang/Runnable;J)V

    goto :goto_2

    .line 298
    :pswitch_1
    const-string v0, "MicroMsg.scanner.ScanModeImage"

    const-string v1, "onSceneEnd() PROCESS_XML_RETURN_TYPE_SEARCH_CONTACT"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 301
    :pswitch_2
    const-string v0, "MicroMsg.scanner.ScanModeImage"

    const-string v1, "onSceneEnd() PROCESS_XML_RETURN_TYPE_WRONG"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 308
    :cond_7
    invoke-virtual {p4}, Lcom/tencent/mm/n/x;->getType()I

    move-result v0

    const/16 v1, 0x6a

    if-ne v0, v1, :cond_1

    .line 309
    check-cast p4, Lcom/tencent/mm/modelsimple/aj;

    invoke-virtual {p4}, Lcom/tencent/mm/modelsimple/aj;->CB()Lcom/tencent/mm/protocal/a/sj;

    move-result-object v0

    .line 310
    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/scanner/ui/an;->a(Lcom/tencent/mm/protocal/a/sj;)Z

    goto/16 :goto_1

    .line 292
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final a(ILjava/lang/String;[B)V
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v8, 0x708

    const-wide/16 v6, 0x0

    const/4 v5, 0x1

    .line 179
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/an;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    if-nez v0, :cond_0

    .line 180
    const-string v0, "MicroMsg.scanner.ScanModeImage"

    const-string v1, "scanUICallback == null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    :goto_0
    return-void

    .line 183
    :cond_0
    if-eqz p3, :cond_1

    array-length v0, p3

    if-gtz v0, :cond_3

    .line 184
    :cond_1
    const-string v0, "MicroMsg.scanner.ScanModeImage"

    const-string v1, "greyData null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/tencent/mm/plugin/scanner/ui/an;->edU:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/tencent/mm/plugin/scanner/ui/an;->edQ:J

    add-long/2addr v2, v8

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    sget-object v0, Lcom/tencent/mm/plugin/scanner/ui/an;->efV:[Z

    aget-boolean v0, v0, v5

    if-ne v0, v5, :cond_2

    .line 187
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/mm/plugin/scanner/ui/an;->edU:J

    .line 188
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/an;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    invoke-interface {v0, v6, v7, v5}, Lcom/tencent/mm/plugin/scanner/ui/am;->a(JZ)V

    goto :goto_0

    .line 190
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/an;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    iget-wide v1, p0, Lcom/tencent/mm/plugin/scanner/ui/an;->edQ:J

    invoke-interface {v0, v1, v2}, Lcom/tencent/mm/plugin/scanner/ui/am;->aC(J)V

    goto :goto_0

    .line 194
    :cond_3
    invoke-direct {p0}, Lcom/tencent/mm/plugin/scanner/ui/an;->aaD()V

    .line 196
    iget v0, p0, Lcom/tencent/mm/plugin/scanner/ui/an;->edS:I

    iget v1, p0, Lcom/tencent/mm/plugin/scanner/ui/an;->edT:I

    if-lt v0, v1, :cond_5

    .line 197
    const-string v0, "MicroMsg.scanner.ScanModeImage"

    const-string v1, "too quick to send image, return now"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/an;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    iget-wide v1, p0, Lcom/tencent/mm/plugin/scanner/ui/an;->edQ:J

    invoke-interface {v0, v1, v2}, Lcom/tencent/mm/plugin/scanner/ui/am;->aC(J)V

    .line 199
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/tencent/mm/plugin/scanner/ui/an;->edU:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/tencent/mm/plugin/scanner/ui/an;->edQ:J

    add-long/2addr v2, v8

    cmp-long v0, v0, v2

    if-lez v0, :cond_4

    sget-object v0, Lcom/tencent/mm/plugin/scanner/ui/an;->efV:[Z

    aget-boolean v0, v0, v5

    if-ne v0, v5, :cond_4

    .line 201
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/mm/plugin/scanner/ui/an;->edU:J

    .line 202
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/an;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    invoke-interface {v0, v6, v7, v5}, Lcom/tencent/mm/plugin/scanner/ui/am;->a(JZ)V

    goto :goto_0

    .line 204
    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/an;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    iget-wide v1, p0, Lcom/tencent/mm/plugin/scanner/ui/an;->edQ:J

    invoke-interface {v0, v1, v2}, Lcom/tencent/mm/plugin/scanner/ui/am;->aC(J)V

    goto :goto_0

    .line 209
    :cond_5
    new-instance v0, Lcom/tencent/mm/plugin/scanner/a/f;

    array-length v1, p3

    iget v2, p0, Lcom/tencent/mm/plugin/scanner/ui/an;->ebb:I

    invoke-direct {v0, p3, v1, v2}, Lcom/tencent/mm/plugin/scanner/a/f;-><init>([BII)V

    iput-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/an;->edR:Lcom/tencent/mm/plugin/scanner/a/f;

    .line 210
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/plugin/scanner/ui/an;->edR:Lcom/tencent/mm/plugin/scanner/a/f;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    .line 211
    iget v0, p0, Lcom/tencent/mm/plugin/scanner/ui/an;->edS:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/mm/plugin/scanner/ui/an;->edS:I

    .line 213
    iget v0, p0, Lcom/tencent/mm/plugin/scanner/ui/an;->edL:I

    array-length v1, p3

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/mm/plugin/scanner/ui/an;->edL:I

    .line 214
    const-string v0, "MicroMsg.scanner.ScanModeImage"

    const-string v1, "totalNetworkFlow : [%s]"

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/tencent/mm/plugin/scanner/ui/an;->edL:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 216
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/tencent/mm/plugin/scanner/ui/an;->edU:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/tencent/mm/plugin/scanner/ui/an;->edQ:J

    add-long/2addr v2, v8

    cmp-long v0, v0, v2

    if-lez v0, :cond_6

    sget-object v0, Lcom/tencent/mm/plugin/scanner/ui/an;->efV:[Z

    aget-boolean v0, v0, v5

    if-ne v0, v5, :cond_6

    .line 218
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/mm/plugin/scanner/ui/an;->edU:J

    .line 219
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/an;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    invoke-interface {v0, v6, v7, v5}, Lcom/tencent/mm/plugin/scanner/ui/am;->a(JZ)V

    goto/16 :goto_0

    .line 221
    :cond_6
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/an;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    iget-wide v1, p0, Lcom/tencent/mm/plugin/scanner/ui/an;->edQ:J

    invoke-interface {v0, v1, v2}, Lcom/tencent/mm/plugin/scanner/ui/am;->aC(J)V

    goto/16 :goto_0
.end method

.method public final aaA()I
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x2

    return v0
.end method

.method public final aaC()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 227
    const-string v0, "MicroMsg.scanner.ScanModeImage"

    const-string v1, "decodeFail"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/an;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    if-nez v0, :cond_0

    .line 229
    const-string v0, "MicroMsg.scanner.ScanModeImage"

    const-string v1, "scanUICallback == null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    :goto_0
    return-void

    .line 232
    :cond_0
    invoke-direct {p0}, Lcom/tencent/mm/plugin/scanner/ui/an;->aaD()V

    .line 233
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/tencent/mm/plugin/scanner/ui/an;->edU:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x708

    iget-wide v4, p0, Lcom/tencent/mm/plugin/scanner/ui/an;->edQ:J

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    sget-object v0, Lcom/tencent/mm/plugin/scanner/ui/an;->efV:[Z

    aget-boolean v0, v0, v6

    if-ne v0, v6, :cond_1

    .line 235
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/mm/plugin/scanner/ui/an;->edU:J

    .line 236
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/an;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    const-wide/16 v1, 0x0

    invoke-interface {v0, v1, v2, v6}, Lcom/tencent/mm/plugin/scanner/ui/am;->a(JZ)V

    goto :goto_0

    .line 239
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/an;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    iget-wide v1, p0, Lcom/tencent/mm/plugin/scanner/ui/an;->edQ:J

    invoke-interface {v0, v1, v2}, Lcom/tencent/mm/plugin/scanner/ui/am;->aC(J)V

    goto :goto_0
.end method

.method protected final aav()V
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/an;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    if-nez v0, :cond_0

    .line 155
    const-string v0, "MicroMsg.scanner.ScanModeImage"

    const-string v1, "scanUICallback == null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    :goto_0
    return-void

    .line 158
    :cond_0
    invoke-direct {p0}, Lcom/tencent/mm/plugin/scanner/ui/an;->aaB()V

    goto :goto_0
.end method

.method protected final aaw()Lcom/tencent/mm/plugin/scanner/b/a;
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 136
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/an;->edF:Lcom/tencent/mm/plugin/scanner/b/a;

    if-nez v0, :cond_1

    .line 137
    const/16 v2, 0x32

    .line 138
    sget-object v0, Lcom/tencent/mm/compatible/c/s;->ceK:Lcom/tencent/mm/compatible/c/b;

    iget v0, v0, Lcom/tencent/mm/compatible/c/b;->cdH:I

    if-lez v0, :cond_0

    .line 139
    sget-object v0, Lcom/tencent/mm/compatible/c/s;->ceK:Lcom/tencent/mm/compatible/c/b;

    iget v2, v0, Lcom/tencent/mm/compatible/c/b;->cdH:I

    .line 140
    const-string v0, "MicroMsg.scanner.ScanModeImage"

    const-string v1, "ImageQuality=[%s]"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    sget-object v5, Lcom/tencent/mm/compatible/c/s;->ceK:Lcom/tencent/mm/compatible/c/b;

    iget v5, v5, Lcom/tencent/mm/compatible/c/b;->cdH:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v1, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/an;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    invoke-interface {v0}, Lcom/tencent/mm/plugin/scanner/ui/am;->aal()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/ba;->bp(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 144
    new-instance v0, Lcom/tencent/mm/plugin/scanner/b/j;

    add-int/lit8 v2, v2, -0xa

    iget v3, p0, Lcom/tencent/mm/plugin/scanner/ui/an;->eed:F

    iget-object v1, p0, Lcom/tencent/mm/plugin/scanner/ui/an;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    invoke-interface {v1}, Lcom/tencent/mm/plugin/scanner/ui/am;->aam()Z

    move-result v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/tencent/mm/plugin/scanner/b/j;-><init>(Lcom/tencent/mm/plugin/scanner/b/d;IFZZ)V

    iput-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/an;->edF:Lcom/tencent/mm/plugin/scanner/b/a;

    .line 149
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/an;->edF:Lcom/tencent/mm/plugin/scanner/b/a;

    return-object v0

    .line 146
    :cond_2
    new-instance v0, Lcom/tencent/mm/plugin/scanner/b/j;

    iget v3, p0, Lcom/tencent/mm/plugin/scanner/ui/an;->eed:F

    iget-object v1, p0, Lcom/tencent/mm/plugin/scanner/ui/an;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    invoke-interface {v1}, Lcom/tencent/mm/plugin/scanner/ui/am;->aam()Z

    move-result v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/tencent/mm/plugin/scanner/b/j;-><init>(Lcom/tencent/mm/plugin/scanner/b/d;IFZZ)V

    iput-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/an;->edF:Lcom/tencent/mm/plugin/scanner/b/a;

    goto :goto_0
.end method

.method protected final aax()I
    .locals 1

    .prologue
    .line 131
    sget v0, Lcom/tencent/mm/k;->aYO:I

    return v0
.end method

.method protected final aay()I
    .locals 1

    .prologue
    .line 349
    sget v0, Lcom/tencent/mm/plugin/scanner/ui/an;->edP:I

    return v0
.end method

.method protected final aaz()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 124
    invoke-virtual {p0, v3}, Lcom/tencent/mm/plugin/scanner/ui/an;->hG(I)V

    .line 125
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/an;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/tencent/mm/plugin/scanner/ui/am;->a(ILandroid/view/View$OnClickListener;Z)V

    .line 126
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/scanner/ui/an;->onResume()V

    .line 127
    return-void
.end method

.method protected final hG(I)V
    .locals 5
    .parameter

    .prologue
    const/high16 v4, 0x4258

    .line 101
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/an;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    sget v1, Lcom/tencent/mm/i;->aIb:I

    invoke-interface {v0, v1}, Lcom/tencent/mm/plugin/scanner/ui/am;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/an;->ecg:Landroid/view/View;

    .line 102
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/an;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    sget v1, Lcom/tencent/mm/i;->aIc:I

    invoke-interface {v0, v1}, Lcom/tencent/mm/plugin/scanner/ui/am;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/an;->ecf:Landroid/widget/TextView;

    .line 103
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/an;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    sget v1, Lcom/tencent/mm/i;->aIe:I

    invoke-interface {v0, v1}, Lcom/tencent/mm/plugin/scanner/ui/am;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/an;->djQ:Landroid/widget/TextView;

    .line 104
    if-lez p1, :cond_0

    .line 105
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/an;->djQ:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 106
    add-int/lit8 v1, p1, 0x0

    iget-object v2, p0, Lcom/tencent/mm/plugin/scanner/ui/an;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    invoke-interface {v2}, Lcom/tencent/mm/plugin/scanner/ui/am;->aal()Landroid/app/Activity;

    move-result-object v2

    const/high16 v3, 0x4150

    invoke-static {v2, v3}, Lcom/tencent/mm/sdk/platformtools/e;->a(Landroid/content/Context;F)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 107
    iget-object v1, p0, Lcom/tencent/mm/plugin/scanner/ui/an;->djQ:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    :cond_0
    invoke-static {}, Lcom/tencent/mm/compatible/c/d;->pI()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/an;->djQ:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/mm/plugin/scanner/ui/an;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    invoke-interface {v1}, Lcom/tencent/mm/plugin/scanner/ui/am;->aal()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/tencent/mm/sdk/platformtools/e;->a(Landroid/content/Context;F)I

    move-result v1

    iget-object v2, p0, Lcom/tencent/mm/plugin/scanner/ui/an;->djQ:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/tencent/mm/plugin/scanner/ui/an;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    invoke-interface {v3}, Lcom/tencent/mm/plugin/scanner/ui/am;->aal()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v4}, Lcom/tencent/mm/sdk/platformtools/e;->a(Landroid/content/Context;F)I

    move-result v3

    iget-object v4, p0, Lcom/tencent/mm/plugin/scanner/ui/an;->djQ:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/an;->edF:Lcom/tencent/mm/plugin/scanner/b/a;

    if-eqz v0, :cond_2

    .line 116
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/an;->edF:Lcom/tencent/mm/plugin/scanner/b/a;

    check-cast v0, Lcom/tencent/mm/plugin/scanner/b/j;

    iget-object v1, p0, Lcom/tencent/mm/plugin/scanner/ui/an;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    invoke-interface {v1}, Lcom/tencent/mm/plugin/scanner/ui/am;->aam()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/scanner/b/j;->bi(Z)V

    .line 118
    :cond_2
    invoke-direct {p0}, Lcom/tencent/mm/plugin/scanner/ui/an;->aaB()V

    .line 119
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/scanner/ui/an;->bf(Z)V

    .line 120
    return-void
.end method

.method protected final onPause()V
    .locals 2

    .prologue
    .line 342
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/scanner/ui/an;->bf(Z)V

    .line 343
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0x189

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/n/ac;->b(ILcom/tencent/mm/n/m;)V

    .line 344
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0x6a

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/n/ac;->b(ILcom/tencent/mm/n/m;)V

    .line 345
    return-void
.end method

.method protected final onResume()V
    .locals 2

    .prologue
    .line 330
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0x189

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/n/ac;->a(ILcom/tencent/mm/n/m;)V

    .line 331
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0x6a

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/n/ac;->a(ILcom/tencent/mm/n/m;)V

    .line 332
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/an;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    if-nez v0, :cond_0

    .line 333
    const-string v0, "MicroMsg.scanner.ScanModeImage"

    const-string v1, "scanUICallback == null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    :goto_0
    return-void

    .line 336
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mm/plugin/scanner/ui/an;->edS:I

    .line 337
    invoke-direct {p0}, Lcom/tencent/mm/plugin/scanner/ui/an;->aaB()V

    goto :goto_0
.end method
