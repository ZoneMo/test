.class public Lcom/tencent/mm/protocal/p;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private fxN:Ljava/lang/String;

.field private fxO:I

.field private fxP:I

.field private fxQ:Ljava/lang/String;

.field private fxR:Ljava/lang/String;

.field private fxS:I

.field private fxT:Lcom/tencent/mm/protocal/bi;

.field private fxU:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/mm/protocal/p;->fxU:J

    .line 71
    iput v2, p0, Lcom/tencent/mm/protocal/p;->fxO:I

    .line 72
    iput v2, p0, Lcom/tencent/mm/protocal/p;->fxP:I

    .line 73
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/protocal/p;->fxN:Ljava/lang/String;

    .line 74
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/protocal/p;->fxQ:Ljava/lang/String;

    .line 75
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/protocal/p;->fxR:Ljava/lang/String;

    .line 76
    iput v2, p0, Lcom/tencent/mm/protocal/p;->fxS:I

    .line 77
    invoke-static {}, Lcom/tencent/mm/protocal/bi;->awX()Lcom/tencent/mm/protocal/bi;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/protocal/p;->fxT:Lcom/tencent/mm/protocal/bi;

    .line 78
    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/protocal/bi;)V
    .locals 0
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lcom/tencent/mm/protocal/p;->fxT:Lcom/tencent/mm/protocal/bi;

    .line 146
    return-void
.end method

.method public awI()Z
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x0

    return v0
.end method

.method public final awJ()Lcom/tencent/mm/protocal/bi;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/tencent/mm/protocal/p;->fxT:Lcom/tencent/mm/protocal/bi;

    return-object v0
.end method

.method public final bG(J)V
    .locals 0
    .parameter

    .prologue
    .line 158
    iput-wide p1, p0, Lcom/tencent/mm/protocal/p;->fxU:J

    .line 159
    return-void
.end method

.method public bQ(I)V
    .locals 0
    .parameter

    .prologue
    .line 89
    iput p1, p0, Lcom/tencent/mm/protocal/p;->fxO:I

    .line 90
    return-void
.end method

.method public final cQ(I)V
    .locals 0
    .parameter

    .prologue
    .line 97
    iput p1, p0, Lcom/tencent/mm/protocal/p;->fxP:I

    .line 98
    return-void
.end method

.method public final cR(I)V
    .locals 0
    .parameter

    .prologue
    .line 125
    iput p1, p0, Lcom/tencent/mm/protocal/p;->fxS:I

    .line 126
    return-void
.end method

.method public final ev(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    if-eqz p1, :cond_0

    :goto_0
    iput-object p1, p0, Lcom/tencent/mm/protocal/p;->fxN:Ljava/lang/String;

    .line 82
    return-void

    .line 81
    :cond_0
    const-string p1, ""

    goto :goto_0
.end method

.method public final ew(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/tencent/mm/protocal/p;->fxQ:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public final ex(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/tencent/mm/protocal/p;->fxR:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public final getClientVersion()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/tencent/mm/protocal/p;->fxP:I

    return v0
.end method

.method public getCmdId()I
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x0

    return v0
.end method

.method public final getDeviceType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/tencent/mm/protocal/p;->fxQ:Ljava/lang/String;

    return-object v0
.end method

.method public final sd()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/tencent/mm/protocal/p;->fxO:I

    return v0
.end method

.method public final uo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/tencent/mm/protocal/p;->fxN:Ljava/lang/String;

    return-object v0
.end method

.method public final xd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/tencent/mm/protocal/p;->fxR:Ljava/lang/String;

    return-object v0
.end method

.method public final xe()I
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lcom/tencent/mm/protocal/p;->fxS:I

    return v0
.end method

.method public xh()Z
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x1

    return v0
.end method
