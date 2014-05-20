.class public final Lcom/tencent/mm/p/r;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private bPx:Ljava/lang/String;

.field private cnY:Lcom/tencent/mm/sdk/platformtools/LBSManager;

.field private cnZ:I

.field private coa:I

.field private cob:I

.field private coc:Lcom/tencent/mm/sdk/e/ar;


# direct methods
.method protected constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/p/r;->bPx:Ljava/lang/String;

    .line 32
    iput v4, p0, Lcom/tencent/mm/p/r;->cnZ:I

    .line 34
    const/4 v0, 0x2

    iput v0, p0, Lcom/tencent/mm/p/r;->coa:I

    .line 35
    const/16 v0, 0xa

    iput v0, p0, Lcom/tencent/mm/p/r;->cob:I

    .line 37
    new-instance v0, Lcom/tencent/mm/p/s;

    invoke-direct {v0, p0}, Lcom/tencent/mm/p/s;-><init>(Lcom/tencent/mm/p/r;)V

    iput-object v0, p0, Lcom/tencent/mm/p/r;->coc:Lcom/tencent/mm/sdk/e/ar;

    .line 71
    invoke-static {}, Lcom/tencent/mm/e/d;->qB()Lcom/tencent/mm/e/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/e/a;->qp()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/p/r;->cob:I

    .line 72
    iget v0, p0, Lcom/tencent/mm/p/r;->cob:I

    iget v1, p0, Lcom/tencent/mm/p/r;->coa:I

    if-ge v0, v1, :cond_0

    .line 73
    iget v0, p0, Lcom/tencent/mm/p/r;->coa:I

    iput v0, p0, Lcom/tencent/mm/p/r;->cob:I

    .line 75
    :cond_0
    const-string v0, "MicroMsg.ReportLocation"

    const-string v1, "reportLocation interval %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/tencent/mm/p/r;->cob:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/p/r;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 18
    iget-object v0, p0, Lcom/tencent/mm/p/r;->bPx:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Ljava/lang/String;FFI)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 18
    const/16 v1, 0xb

    const/4 v2, 0x0

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/tencent/mm/p/r;->a(Ljava/lang/String;IIFFI)V

    return-void
.end method

.method private static a(Ljava/lang/String;IIFFI)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 152
    if-ne p2, v6, :cond_0

    .line 153
    const-string v0, "<event></event>"

    .line 157
    :goto_0
    const-string v1, "MicroMsg.ReportLocation"

    const-string v2, "doScene, info: %s"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 160
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/p/z;

    invoke-direct {v2, p0, p1, v0}, Lcom/tencent/mm/p/z;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    .line 161
    return-void

    .line 155
    :cond_0
    const-string v0, "<event><location><errcode>%d</errcode><data><latitude>%f</latitude><longitude>%f</longitude><precision>%d</precision></data></location></event>"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v5

    const/4 v2, 0x2

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/tencent/mm/p/r;)I
    .locals 1
    .parameter

    .prologue
    .line 18
    iget v0, p0, Lcom/tencent/mm/p/r;->cnZ:I

    return v0
.end method

.method static synthetic c(Lcom/tencent/mm/p/r;)Lcom/tencent/mm/sdk/e/ar;
    .locals 1
    .parameter

    .prologue
    .line 18
    iget-object v0, p0, Lcom/tencent/mm/p/r;->coc:Lcom/tencent/mm/sdk/e/ar;

    return-object v0
.end method

.method static synthetic d(Lcom/tencent/mm/p/r;)Lcom/tencent/mm/sdk/platformtools/LBSManager;
    .locals 1
    .parameter

    .prologue
    .line 18
    iget-object v0, p0, Lcom/tencent/mm/p/r;->cnY:Lcom/tencent/mm/sdk/platformtools/LBSManager;

    return-object v0
.end method

.method static synthetic e(Lcom/tencent/mm/p/r;)I
    .locals 1
    .parameter

    .prologue
    .line 18
    iget v0, p0, Lcom/tencent/mm/p/r;->cob:I

    return v0
.end method

.method public static eK(Ljava/lang/String;)V
    .locals 6
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 85
    const/16 v1, 0xa

    move-object v0, p0

    move v4, v3

    move v5, v2

    invoke-static/range {v0 .. v5}, Lcom/tencent/mm/p/r;->a(Ljava/lang/String;IIFFI)V

    .line 86
    return-void
.end method

.method public static eL(Ljava/lang/String;)V
    .locals 6
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 89
    const/16 v1, 0xc

    move-object v0, p0

    move v4, v3

    move v5, v2

    invoke-static/range {v0 .. v5}, Lcom/tencent/mm/p/r;->a(Ljava/lang/String;IIFFI)V

    .line 90
    return-void
.end method


# virtual methods
.method public final eM(Ljava/lang/String;)V
    .locals 8
    .parameter

    .prologue
    const/16 v1, 0xb

    const/4 v2, 0x2

    const/4 v7, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 93
    const-string v0, "MicroMsg.ReportLocation"

    const-string v4, "Start report"

    invoke-static {v0, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iput-object p1, p0, Lcom/tencent/mm/p/r;->bPx:Ljava/lang/String;

    .line 97
    invoke-static {p1}, Lcom/tencent/mm/p/p;->eI(Ljava/lang/String;)Lcom/tencent/mm/p/a;

    move-result-object v0

    .line 98
    if-nez v0, :cond_1

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    iget v4, p0, Lcom/tencent/mm/p/r;->cnZ:I

    if-eqz v4, :cond_2

    .line 103
    invoke-virtual {p0}, Lcom/tencent/mm/p/r;->xZ()V

    .line 106
    :cond_2
    iput v5, p0, Lcom/tencent/mm/p/r;->cnZ:I

    .line 107
    invoke-virtual {v0}, Lcom/tencent/mm/p/a;->xA()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 108
    const-string v0, "MicroMsg.ReportLocation"

    const-string v1, "need update contact %s"

    new-array v2, v7, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 109
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/p/r;->coc:Lcom/tencent/mm/sdk/e/ar;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/k;->a(Lcom/tencent/mm/sdk/e/ar;)V

    .line 111
    iput v7, p0, Lcom/tencent/mm/p/r;->cnZ:I

    .line 112
    invoke-static {}, Lcom/tencent/mm/model/ar;->tZ()Lcom/tencent/mm/model/at;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/tencent/mm/model/at;->do(Ljava/lang/String;)V

    .line 113
    invoke-static {p1}, Lcom/tencent/mm/m/c;->dX(Ljava/lang/String;)V

    goto :goto_0

    .line 117
    :cond_3
    invoke-virtual {v0}, Lcom/tencent/mm/p/a;->xu()Lcom/tencent/mm/p/f;

    move-result-object v4

    .line 118
    if-eqz v4, :cond_0

    .line 122
    iget-boolean v6, v4, Lcom/tencent/mm/p/f;->cns:Z

    if-eqz v6, :cond_7

    invoke-virtual {v0}, Lcom/tencent/mm/p/a;->xz()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 123
    new-instance v4, Lcom/tencent/mm/sdk/platformtools/LBSManager;

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->getContext()Landroid/content/Context;

    move-result-object v6

    new-instance v7, Lcom/tencent/mm/p/t;

    invoke-direct {v7, p0, v5}, Lcom/tencent/mm/p/t;-><init>(Lcom/tencent/mm/p/r;B)V

    invoke-direct {v4, v6, v7}, Lcom/tencent/mm/sdk/platformtools/LBSManager;-><init>(Landroid/content/Context;Lcom/tencent/mm/sdk/platformtools/x;)V

    iput-object v4, p0, Lcom/tencent/mm/p/r;->cnY:Lcom/tencent/mm/sdk/platformtools/LBSManager;

    .line 124
    invoke-virtual {v0}, Lcom/tencent/mm/p/a;->xu()Lcom/tencent/mm/p/f;

    move-result-object v0

    iget-boolean v0, v0, Lcom/tencent/mm/p/f;->cnt:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x3

    :goto_1
    iput v0, p0, Lcom/tencent/mm/p/r;->cnZ:I

    .line 125
    iget-object v0, p0, Lcom/tencent/mm/p/r;->cnY:Lcom/tencent/mm/sdk/platformtools/LBSManager;

    invoke-virtual {v0}, Lcom/tencent/mm/sdk/platformtools/LBSManager;->ayX()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/tencent/mm/p/r;->cnY:Lcom/tencent/mm/sdk/platformtools/LBSManager;

    invoke-virtual {v0}, Lcom/tencent/mm/sdk/platformtools/LBSManager;->ayY()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 126
    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/p/r;->cnY:Lcom/tencent/mm/sdk/platformtools/LBSManager;

    iget v1, p0, Lcom/tencent/mm/p/r;->cob:I

    mul-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/tencent/mm/sdk/platformtools/LBSManager;->lE(I)V

    goto :goto_0

    :cond_5
    move v0, v2

    .line 124
    goto :goto_1

    :cond_6
    move-object v0, p1

    move v4, v3

    .line 129
    invoke-static/range {v0 .. v5}, Lcom/tencent/mm/p/r;->a(Ljava/lang/String;IIFFI)V

    goto/16 :goto_0

    .line 132
    :cond_7
    iget-boolean v2, v4, Lcom/tencent/mm/p/f;->cns:Z

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/tencent/mm/p/a;->xz()Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p1

    move v2, v7

    move v4, v3

    .line 133
    invoke-static/range {v0 .. v5}, Lcom/tencent/mm/p/r;->a(Ljava/lang/String;IIFFI)V

    goto/16 :goto_0
.end method

.method public final xZ()V
    .locals 2

    .prologue
    .line 138
    const-string v0, "MicroMsg.ReportLocation"

    const-string v1, "Stop report"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mm/p/r;->cnZ:I

    .line 140
    iget-object v0, p0, Lcom/tencent/mm/p/r;->cnY:Lcom/tencent/mm/sdk/platformtools/LBSManager;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/tencent/mm/p/r;->cnY:Lcom/tencent/mm/sdk/platformtools/LBSManager;

    invoke-virtual {v0}, Lcom/tencent/mm/sdk/platformtools/LBSManager;->ayZ()V

    .line 142
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/p/r;->cnY:Lcom/tencent/mm/sdk/platformtools/LBSManager;

    .line 145
    :cond_0
    invoke-static {}, Lcom/tencent/mm/model/be;->se()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/p/r;->coc:Lcom/tencent/mm/sdk/e/ar;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/k;->b(Lcom/tencent/mm/sdk/e/ar;)V

    .line 148
    :cond_1
    return-void
.end method
