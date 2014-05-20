.class public final Lcom/tencent/mm/compatible/c/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ccY:Z

.field public ccZ:I

.field public cda:I

.field public cdb:I

.field public cdc:I

.field public cdd:I

.field public cde:I

.field public cdf:I

.field public cdg:I

.field public cdh:I

.field public cdi:I

.field public cdj:I

.field public cdk:I

.field public cdl:I

.field public cdm:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/compatible/c/a;->ccY:Z

    .line 34
    invoke-virtual {p0}, Lcom/tencent/mm/compatible/c/a;->reset()V

    .line 35
    return-void
.end method


# virtual methods
.method public final dump()V
    .locals 3

    .prologue
    .line 159
    const-string v0, "VoipAudioInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "streamtype "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/tencent/mm/compatible/c/a;->ccZ:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const-string v0, "VoipAudioInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "smode "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/tencent/mm/compatible/c/a;->cda:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const-string v0, "VoipAudioInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "omode "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/tencent/mm/compatible/c/a;->cdb:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const-string v0, "VoipAudioInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ospeaker "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/tencent/mm/compatible/c/a;->cdc:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string v0, "VoipAudioInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "operating"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/tencent/mm/compatible/c/a;->cdd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const-string v0, "VoipAudioInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "moperating"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/tencent/mm/compatible/c/a;->cde:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const-string v0, "VoipAudioInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mstreamtype"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/tencent/mm/compatible/c/a;->cdf:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string v0, "VoipAudioInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mVoiceRecordMode"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/tencent/mm/compatible/c/a;->cdg:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const-string v0, "VoipAudioInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "agcMode :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/tencent/mm/compatible/c/a;->cdi:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const-string v0, "VoipAudioInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "nsMode:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/tencent/mm/compatible/c/a;->cdk:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const-string v0, "VoipAudioInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "aecMode:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/tencent/mm/compatible/c/a;->cdj:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const-string v0, "VoipAudioInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "volumMode:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/tencent/mm/compatible/c/a;->cdl:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const-string v0, "VoipAudioInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "micMode:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/tencent/mm/compatible/c/a;->cdm:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    return-void
.end method

.method public final pC()Z
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/tencent/mm/compatible/c/a;->cdd:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final pD()Z
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/tencent/mm/compatible/c/a;->cde:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final pE()I
    .locals 5

    .prologue
    const/4 v0, -0x1

    .line 75
    invoke-virtual {p0}, Lcom/tencent/mm/compatible/c/a;->pC()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    iget v1, p0, Lcom/tencent/mm/compatible/c/a;->cdd:I

    and-int/lit16 v1, v1, 0xe0

    shr-int/lit8 v1, v1, 0x5

    .line 77
    const-string v2, "VoipAudioInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getEnableMode "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const/4 v2, 0x7

    if-ne v1, v2, :cond_1

    .line 83
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 81
    goto :goto_0
.end method

.method public final pF()I
    .locals 5

    .prologue
    const/4 v0, -0x1

    .line 96
    invoke-virtual {p0}, Lcom/tencent/mm/compatible/c/a;->pC()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    iget v1, p0, Lcom/tencent/mm/compatible/c/a;->cdd:I

    and-int/lit8 v1, v1, 0xe

    shr-int/lit8 v1, v1, 0x1

    .line 98
    const-string v2, "VoipAudioInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getDisableMode "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const/4 v2, 0x7

    if-ne v1, v2, :cond_1

    .line 104
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 102
    goto :goto_0
.end method

.method public final pG()I
    .locals 5

    .prologue
    const/4 v0, -0x1

    .line 117
    invoke-virtual {p0}, Lcom/tencent/mm/compatible/c/a;->pD()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    iget v1, p0, Lcom/tencent/mm/compatible/c/a;->cde:I

    and-int/lit16 v1, v1, 0xe0

    shr-int/lit8 v1, v1, 0x5

    .line 119
    const-string v2, "VoipAudioInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getEnableMode "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const/4 v2, 0x7

    if-ne v1, v2, :cond_1

    .line 125
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 123
    goto :goto_0
.end method

.method public final pH()I
    .locals 5

    .prologue
    const/4 v0, -0x1

    .line 138
    invoke-virtual {p0}, Lcom/tencent/mm/compatible/c/a;->pD()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 139
    iget v1, p0, Lcom/tencent/mm/compatible/c/a;->cde:I

    and-int/lit8 v1, v1, 0xe

    shr-int/lit8 v1, v1, 0x1

    .line 140
    const-string v2, "VoipAudioInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getDisableMode "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const/4 v2, 0x7

    if-ne v1, v2, :cond_1

    .line 146
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 144
    goto :goto_0
.end method

.method public final reset()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/compatible/c/a;->ccY:Z

    .line 39
    iput v1, p0, Lcom/tencent/mm/compatible/c/a;->ccZ:I

    .line 40
    iput v1, p0, Lcom/tencent/mm/compatible/c/a;->cda:I

    .line 41
    iput v1, p0, Lcom/tencent/mm/compatible/c/a;->cdb:I

    .line 42
    iput v1, p0, Lcom/tencent/mm/compatible/c/a;->cdc:I

    .line 43
    iput v1, p0, Lcom/tencent/mm/compatible/c/a;->cdd:I

    .line 44
    iput v1, p0, Lcom/tencent/mm/compatible/c/a;->cde:I

    .line 45
    iput v1, p0, Lcom/tencent/mm/compatible/c/a;->cdf:I

    .line 47
    iput v1, p0, Lcom/tencent/mm/compatible/c/a;->cdh:I

    .line 49
    iput v1, p0, Lcom/tencent/mm/compatible/c/a;->cdg:I

    .line 51
    iput v1, p0, Lcom/tencent/mm/compatible/c/a;->cdi:I

    .line 52
    iput v1, p0, Lcom/tencent/mm/compatible/c/a;->cdj:I

    .line 53
    iput v1, p0, Lcom/tencent/mm/compatible/c/a;->cdk:I

    .line 54
    iput v1, p0, Lcom/tencent/mm/compatible/c/a;->cdl:I

    .line 55
    iput v1, p0, Lcom/tencent/mm/compatible/c/a;->cdm:I

    .line 57
    return-void
.end method
