.class public final Lcom/tencent/mm/ui/voicetranstext/c;
.super Lcom/tencent/mm/n/x;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/network/ab;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private htS:Lcom/tencent/mm/n/a;

.field private htT:Lcom/tencent/mm/n/m;

.field private htU:Ljava/lang/String;

.field private htW:Lcom/tencent/mm/protocal/a/zi;

.field private huc:Lcom/tencent/mm/protocal/a/yi;

.field private mFileName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/tencent/mm/ui/voicetranstext/c;)V
    .locals 1
    .parameter

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/tencent/mm/n/x;-><init>()V

    .line 32
    const-string v0, "MicroMsg.NetSceneUploadVoiceForTrans"

    iput-object v0, p0, Lcom/tencent/mm/ui/voicetranstext/c;->TAG:Ljava/lang/String;

    .line 44
    iget-object v0, p1, Lcom/tencent/mm/ui/voicetranstext/c;->htU:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/mm/ui/voicetranstext/c;->htU:Ljava/lang/String;

    .line 45
    iget-object v0, p1, Lcom/tencent/mm/ui/voicetranstext/c;->htW:Lcom/tencent/mm/protocal/a/zi;

    iput-object v0, p0, Lcom/tencent/mm/ui/voicetranstext/c;->htW:Lcom/tencent/mm/protocal/a/zi;

    .line 46
    iget-object v0, p1, Lcom/tencent/mm/ui/voicetranstext/c;->huc:Lcom/tencent/mm/protocal/a/yi;

    iput-object v0, p0, Lcom/tencent/mm/ui/voicetranstext/c;->huc:Lcom/tencent/mm/protocal/a/yi;

    .line 47
    iget-object v0, p1, Lcom/tencent/mm/ui/voicetranstext/c;->mFileName:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/mm/ui/voicetranstext/c;->mFileName:Ljava/lang/String;

    .line 49
    invoke-direct {p0}, Lcom/tencent/mm/ui/voicetranstext/c;->aPs()V

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/tencent/mm/protocal/a/yi;ILjava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/tencent/mm/n/x;-><init>()V

    .line 32
    const-string v0, "MicroMsg.NetSceneUploadVoiceForTrans"

    iput-object v0, p0, Lcom/tencent/mm/ui/voicetranstext/c;->TAG:Ljava/lang/String;

    .line 53
    if-eqz p4, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 55
    iput-object p1, p0, Lcom/tencent/mm/ui/voicetranstext/c;->htU:Ljava/lang/String;

    .line 56
    iput-object p2, p0, Lcom/tencent/mm/ui/voicetranstext/c;->huc:Lcom/tencent/mm/protocal/a/yi;

    .line 58
    invoke-static {p3}, Lcom/tencent/mm/ui/voicetranstext/d;->oF(I)Lcom/tencent/mm/protocal/a/zi;

    move-result-object v0

    .line 60
    iput-object v0, p0, Lcom/tencent/mm/ui/voicetranstext/c;->htW:Lcom/tencent/mm/protocal/a/zi;

    .line 61
    iput-object p4, p0, Lcom/tencent/mm/ui/voicetranstext/c;->mFileName:Ljava/lang/String;

    .line 63
    invoke-direct {p0}, Lcom/tencent/mm/ui/voicetranstext/c;->aPs()V

    .line 65
    return-void

    .line 53
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private aPs()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 112
    new-instance v0, Lcom/tencent/mm/n/b;

    invoke-direct {v0}, Lcom/tencent/mm/n/b;-><init>()V

    .line 113
    new-instance v1, Lcom/tencent/mm/protocal/a/yj;

    invoke-direct {v1}, Lcom/tencent/mm/protocal/a/yj;-><init>()V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/b;->a(Lcom/tencent/mm/am/a;)V

    .line 114
    new-instance v1, Lcom/tencent/mm/protocal/a/yk;

    invoke-direct {v1}, Lcom/tencent/mm/protocal/a/yk;-><init>()V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/b;->b(Lcom/tencent/mm/am/a;)V

    .line 115
    const-string v1, "/cgi-bin/micromsg-bin/uploadvoicefortrans"

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/b;->es(Ljava/lang/String;)V

    .line 116
    const/16 v1, 0x223

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/b;->cN(I)V

    .line 117
    invoke-virtual {v0, v2}, Lcom/tencent/mm/n/b;->cO(I)V

    .line 118
    invoke-virtual {v0, v2}, Lcom/tencent/mm/n/b;->cP(I)V

    .line 119
    invoke-virtual {v0}, Lcom/tencent/mm/n/b;->wx()Lcom/tencent/mm/n/a;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/voicetranstext/c;->htS:Lcom/tencent/mm/n/a;

    .line 120
    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/network/r;Lcom/tencent/mm/n/m;)I
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 74
    iput-object p2, p0, Lcom/tencent/mm/ui/voicetranstext/c;->htT:Lcom/tencent/mm/n/m;

    .line 76
    iget-object v0, p0, Lcom/tencent/mm/ui/voicetranstext/c;->mFileName:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/voicetranstext/c;->htU:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/voicetranstext/c;->huc:Lcom/tencent/mm/protocal/a/yi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/voicetranstext/c;->htW:Lcom/tencent/mm/protocal/a/zi;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    .line 77
    const-string v0, "MicroMsg.NetSceneUploadVoiceForTrans"

    const-string v1, "doScene: Value not Valid, so, do nothing."

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const/4 v0, -0x1

    .line 83
    :goto_1
    return v0

    .line 76
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/voicetranstext/c;->htS:Lcom/tencent/mm/n/a;

    invoke-virtual {v0}, Lcom/tencent/mm/n/a;->wr()Lcom/tencent/mm/am/a;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/a/yj;

    iget-object v1, p0, Lcom/tencent/mm/ui/voicetranstext/c;->htU:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/mm/protocal/a/yj;->fDC:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/mm/ui/voicetranstext/c;->htW:Lcom/tencent/mm/protocal/a/zi;

    iput-object v1, v0, Lcom/tencent/mm/protocal/a/yj;->fDD:Lcom/tencent/mm/protocal/a/zi;

    iget-object v1, p0, Lcom/tencent/mm/ui/voicetranstext/c;->huc:Lcom/tencent/mm/protocal/a/yi;

    iput-object v1, v0, Lcom/tencent/mm/protocal/a/yj;->fDF:Lcom/tencent/mm/protocal/a/yi;

    iget-object v1, p0, Lcom/tencent/mm/ui/voicetranstext/c;->mFileName:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/mm/ui/voicetranstext/c;->huc:Lcom/tencent/mm/protocal/a/yi;

    iget v2, v2, Lcom/tencent/mm/protocal/a/yi;->fEd:I

    iget-object v3, p0, Lcom/tencent/mm/ui/voicetranstext/c;->huc:Lcom/tencent/mm/protocal/a/yi;

    iget v3, v3, Lcom/tencent/mm/protocal/a/yi;->fAU:I

    invoke-static {v1}, Lcom/tencent/mm/modelvoice/bi;->hq(Ljava/lang/String;)Lcom/tencent/mm/modelvoice/b;

    move-result-object v1

    invoke-interface {v1, v2, v3}, Lcom/tencent/mm/modelvoice/b;->O(II)Lcom/tencent/mm/modelvoice/u;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/mm/modelvoice/u;->buf:[B

    invoke-static {v1}, Lcom/tencent/mm/platformtools/an;->y([B)Lcom/tencent/mm/protocal/a/rv;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/protocal/a/yj;->fAJ:Lcom/tencent/mm/protocal/a/rv;

    .line 83
    iget-object v0, p0, Lcom/tencent/mm/ui/voicetranstext/c;->htS:Lcom/tencent/mm/n/a;

    invoke-virtual {p0, p1, v0, p0}, Lcom/tencent/mm/ui/voicetranstext/c;->a(Lcom/tencent/mm/network/r;Lcom/tencent/mm/network/aj;Lcom/tencent/mm/network/ab;)I

    move-result v0

    goto :goto_1
.end method

.method public final a(IIILjava/lang/String;Lcom/tencent/mm/network/aj;[B)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 89
    invoke-virtual {p0}, Lcom/tencent/mm/ui/voicetranstext/c;->aPt()Z

    .line 93
    if-nez p2, :cond_1

    if-nez p3, :cond_1

    .line 94
    iget-object v0, p0, Lcom/tencent/mm/ui/voicetranstext/c;->htS:Lcom/tencent/mm/n/a;

    invoke-virtual {v0}, Lcom/tencent/mm/n/a;->ws()Lcom/tencent/mm/am/a;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/a/yk;

    .line 96
    iget-object v0, v0, Lcom/tencent/mm/protocal/a/yk;->fDF:Lcom/tencent/mm/protocal/a/yi;

    iput-object v0, p0, Lcom/tencent/mm/ui/voicetranstext/c;->huc:Lcom/tencent/mm/protocal/a/yi;

    .line 102
    :goto_0
    iget-object v0, p0, Lcom/tencent/mm/ui/voicetranstext/c;->htT:Lcom/tencent/mm/n/m;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/n/m;->a(IILjava/lang/String;Lcom/tencent/mm/n/x;)V

    .line 104
    invoke-virtual {p0}, Lcom/tencent/mm/ui/voicetranstext/c;->aPt()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    const-string v3, "MicroMsg.NetSceneUploadVoiceForTrans"

    const-string v4, "succeeed finish: %B"

    new-array v5, v1, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/mm/ui/voicetranstext/c;->huc:Lcom/tencent/mm/protocal/a/yi;

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v5, v2

    invoke-static {v3, v4, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 109
    :cond_0
    return-void

    .line 99
    :cond_1
    const-string v0, "MicroMsg.NetSceneUploadVoiceForTrans"

    const-string v3, "error upload: errType:%d, errCode:%d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v0, v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 105
    goto :goto_1
.end method

.method public final aPo()Lcom/tencent/mm/protocal/a/yi;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/tencent/mm/ui/voicetranstext/c;->huc:Lcom/tencent/mm/protocal/a/yi;

    return-object v0
.end method

.method public final aPt()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 180
    iget-object v1, p0, Lcom/tencent/mm/ui/voicetranstext/c;->huc:Lcom/tencent/mm/protocal/a/yi;

    if-eqz v1, :cond_0

    .line 181
    iget-object v1, p0, Lcom/tencent/mm/ui/voicetranstext/c;->huc:Lcom/tencent/mm/protocal/a/yi;

    iget v1, v1, Lcom/tencent/mm/protocal/a/yi;->fAU:I

    if-gtz v1, :cond_1

    .line 183
    :cond_0
    :goto_0
    return v0

    .line 181
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getType()I
    .locals 1

    .prologue
    .line 69
    const/16 v0, 0x223

    return v0
.end method
