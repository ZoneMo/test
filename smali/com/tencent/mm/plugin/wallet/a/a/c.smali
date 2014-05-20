.class public final Lcom/tencent/mm/plugin/wallet/a/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field dti:I

.field dtj:Ljava/lang/String;


# direct methods
.method private constructor <init>(ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput p1, p0, Lcom/tencent/mm/plugin/wallet/a/a/c;->dti:I

    .line 62
    iput-object p2, p0, Lcom/tencent/mm/plugin/wallet/a/a/c;->dtj:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public static jH(I)Lcom/tencent/mm/plugin/wallet/a/a/c;
    .locals 4
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 75
    sparse-switch p0, :sswitch_data_0

    .line 119
    sget v0, Lcom/tencent/mm/n;->boV:I

    .line 122
    :goto_0
    new-instance v2, Lcom/tencent/mm/plugin/wallet/a/a/c;

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lcom/tencent/mm/plugin/wallet/a/a/c;-><init>(ILjava/lang/String;)V

    return-object v2

    .line 77
    :sswitch_0
    const/4 v1, 0x0

    .line 78
    sget v0, Lcom/tencent/mm/n;->boU:I

    goto :goto_0

    .line 82
    :sswitch_1
    const v1, 0x5f5e100

    .line 83
    sget v0, Lcom/tencent/mm/n;->boW:I

    goto :goto_0

    .line 87
    :sswitch_2
    sget v0, Lcom/tencent/mm/n;->boO:I

    goto :goto_0

    .line 91
    :sswitch_3
    sget v0, Lcom/tencent/mm/n;->boT:I

    goto :goto_0

    .line 95
    :sswitch_4
    const/16 v1, 0x67

    .line 96
    sget v0, Lcom/tencent/mm/n;->boR:I

    goto :goto_0

    .line 100
    :sswitch_5
    sget v0, Lcom/tencent/mm/n;->boS:I

    goto :goto_0

    .line 107
    :sswitch_6
    sget v0, Lcom/tencent/mm/n;->boN:I

    goto :goto_0

    .line 110
    :sswitch_7
    const v1, 0x5f5e104

    .line 111
    sget v0, Lcom/tencent/mm/n;->boP:I

    goto :goto_0

    .line 114
    :sswitch_8
    const v1, 0x3b9aca5d

    .line 115
    sget v0, Lcom/tencent/mm/n;->boQ:I

    goto :goto_0

    .line 75
    nop

    :sswitch_data_0
    .sparse-switch
        -0x7d2 -> :sswitch_8
        -0x7d1 -> :sswitch_7
        -0x3f2 -> :sswitch_6
        -0x3ee -> :sswitch_6
        -0x3ed -> :sswitch_1
        -0x3eb -> :sswitch_6
        -0x3ea -> :sswitch_6
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x7 -> :sswitch_4
        0x8 -> :sswitch_5
        0x67 -> :sswitch_4
    .end sparse-switch
.end method

.method public static jI(I)Lcom/tencent/mm/plugin/wallet/a/a/c;
    .locals 1
    .parameter

    .prologue
    .line 126
    const-string v0, ""

    invoke-static {p0, v0}, Lcom/tencent/mm/plugin/wallet/a/a/c;->o(ILjava/lang/String;)Lcom/tencent/mm/plugin/wallet/a/a/c;

    move-result-object v0

    return-object v0
.end method

.method public static o(ILjava/lang/String;)Lcom/tencent/mm/plugin/wallet/a/a/c;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 139
    sparse-switch p0, :sswitch_data_0

    .line 157
    sget v0, Lcom/tencent/mm/n;->bIw:I

    .line 160
    :goto_0
    new-instance v2, Lcom/tencent/mm/plugin/wallet/a/a/c;

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lcom/tencent/mm/plugin/wallet/a/a/c;-><init>(ILjava/lang/String;)V

    move-object v0, v2

    :goto_1
    return-object v0

    .line 141
    :sswitch_0
    const/4 v1, 0x0

    .line 142
    sget v0, Lcom/tencent/mm/n;->bIv:I

    goto :goto_0

    .line 146
    :sswitch_1
    const v1, 0x5f5e100

    .line 147
    sget v0, Lcom/tencent/mm/n;->bIx:I

    goto :goto_0

    .line 150
    :sswitch_2
    const/16 v1, 0x67

    .line 151
    sget v0, Lcom/tencent/mm/n;->bIu:I

    goto :goto_0

    .line 154
    :sswitch_3
    new-instance v0, Lcom/tencent/mm/plugin/wallet/a/a/c;

    invoke-direct {v0, v1, p1}, Lcom/tencent/mm/plugin/wallet/a/a/c;-><init>(ILjava/lang/String;)V

    goto :goto_1

    .line 139
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x67 -> :sswitch_2
        0x69 -> :sswitch_3
        0x5f5e100 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public final QC()I
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Lcom/tencent/mm/plugin/wallet/a/a/c;->dti:I

    return v0
.end method

.method public final QE()Z
    .locals 2

    .prologue
    .line 176
    iget v0, p0, Lcom/tencent/mm/plugin/wallet/a/a/c;->dti:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/tencent/mm/plugin/wallet/a/a/c;->dti:I

    const/16 v1, 0x67

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/a/a/c;->dtj:Ljava/lang/String;

    return-object v0
.end method

.method public final isFailure()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 180
    iget v2, p0, Lcom/tencent/mm/plugin/wallet/a/a/c;->dti:I

    if-nez v2, :cond_0

    move v2, v0

    :goto_0
    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/a/a/c;->QE()Z

    move-result v2

    if-nez v2, :cond_1

    :goto_1
    return v0

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IabResult: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/a/a/c;->dtj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
