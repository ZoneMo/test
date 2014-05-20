.class public final Lcom/tencent/mm/w/ae;
.super Lcom/tencent/mm/n/x;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/network/ab;


# instance fields
.field private cjh:Lcom/tencent/mm/n/m;

.field private final cke:Lcom/tencent/mm/n/a;

.field private cug:Lcom/tencent/mm/w/af;


# direct methods
.method public constructor <init>(Lcom/tencent/mm/protocal/a/ye;Lcom/tencent/mm/w/e;Lcom/tencent/mm/modelcdntran/keep_SceneResult;Lcom/tencent/mm/w/af;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 32
    invoke-direct {p0}, Lcom/tencent/mm/n/x;-><init>()V

    .line 33
    new-instance v0, Lcom/tencent/mm/n/b;

    invoke-direct {v0}, Lcom/tencent/mm/n/b;-><init>()V

    .line 34
    new-instance v1, Lcom/tencent/mm/protocal/a/ye;

    invoke-direct {v1}, Lcom/tencent/mm/protocal/a/ye;-><init>()V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/b;->a(Lcom/tencent/mm/am/a;)V

    .line 35
    new-instance v1, Lcom/tencent/mm/protocal/a/yf;

    invoke-direct {v1}, Lcom/tencent/mm/protocal/a/yf;-><init>()V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/b;->b(Lcom/tencent/mm/am/a;)V

    .line 36
    const-string v1, "/cgi-bin/micromsg-bin/uploadmsgimg"

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/b;->es(Ljava/lang/String;)V

    .line 37
    const/16 v1, 0x6e

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/b;->cN(I)V

    .line 38
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/b;->cO(I)V

    .line 39
    const v1, 0x3b9aca09

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/b;->cP(I)V

    .line 40
    invoke-virtual {v0}, Lcom/tencent/mm/n/b;->wx()Lcom/tencent/mm/n/a;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/w/ae;->cke:Lcom/tencent/mm/n/a;

    .line 42
    iput-object p4, p0, Lcom/tencent/mm/w/ae;->cug:Lcom/tencent/mm/w/af;

    .line 43
    iget-object v0, p0, Lcom/tencent/mm/w/ae;->cke:Lcom/tencent/mm/n/a;

    invoke-virtual {v0}, Lcom/tencent/mm/n/a;->wr()Lcom/tencent/mm/am/a;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/a/ye;

    .line 45
    iget-object v1, p1, Lcom/tencent/mm/protocal/a/ye;->fzs:Lcom/tencent/mm/protocal/a/rw;

    iput-object v1, v0, Lcom/tencent/mm/protocal/a/ye;->fzs:Lcom/tencent/mm/protocal/a/rw;

    .line 46
    iget-object v1, p1, Lcom/tencent/mm/protocal/a/ye;->fzt:Lcom/tencent/mm/protocal/a/rw;

    iput-object v1, v0, Lcom/tencent/mm/protocal/a/ye;->fzt:Lcom/tencent/mm/protocal/a/rw;

    .line 47
    iget-object v1, p1, Lcom/tencent/mm/protocal/a/ye;->fYw:Lcom/tencent/mm/protocal/a/rw;

    iput-object v1, v0, Lcom/tencent/mm/protocal/a/ye;->fYw:Lcom/tencent/mm/protocal/a/rw;

    .line 48
    iget v1, p1, Lcom/tencent/mm/protocal/a/ye;->fzu:I

    iput v1, v0, Lcom/tencent/mm/protocal/a/ye;->fzu:I

    .line 50
    invoke-static {}, Lcom/tencent/mm/w/ag;->Ba()Lcom/tencent/mm/w/g;

    move-result-object v1

    invoke-virtual {p2}, Lcom/tencent/mm/w/e;->AJ()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    const-string v5, ""

    invoke-virtual {v1, v3, v4, v5}, Lcom/tencent/mm/w/g;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 51
    invoke-static {v1}, Lcom/tencent/mm/sdk/platformtools/h;->ss(Ljava/lang/String;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v3

    .line 52
    if-eqz v3, :cond_0

    iget v1, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    :goto_0
    iput v1, v0, Lcom/tencent/mm/protocal/a/ye;->fYE:I

    .line 53
    if-eqz v3, :cond_1

    iget v1, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    :goto_1
    iput v1, v0, Lcom/tencent/mm/protocal/a/ye;->fYD:I

    .line 54
    iget-object v1, p3, Lcom/tencent/mm/modelcdntran/keep_SceneResult;->field_fileId:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/mm/protocal/a/ye;->fYB:Ljava/lang/String;

    .line 55
    iget v1, p3, Lcom/tencent/mm/modelcdntran/keep_SceneResult;->field_thumbimgLength:I

    iput v1, v0, Lcom/tencent/mm/protocal/a/ye;->fYC:I

    .line 57
    iget v1, p3, Lcom/tencent/mm/modelcdntran/keep_SceneResult;->field_thumbimgLength:I

    iput v1, v0, Lcom/tencent/mm/protocal/a/ye;->fAL:I

    .line 58
    iput v2, v0, Lcom/tencent/mm/protocal/a/ye;->fEd:I

    .line 59
    iget v1, p3, Lcom/tencent/mm/modelcdntran/keep_SceneResult;->field_thumbimgLength:I

    iput v1, v0, Lcom/tencent/mm/protocal/a/ye;->fAU:I

    .line 60
    new-instance v1, Lcom/tencent/mm/protocal/a/rv;

    invoke-direct {v1}, Lcom/tencent/mm/protocal/a/rv;-><init>()V

    new-array v3, v2, [B

    invoke-virtual {v1, v3}, Lcom/tencent/mm/protocal/a/rv;->bM([B)Lcom/tencent/mm/protocal/a/rv;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/protocal/a/ye;->fAJ:Lcom/tencent/mm/protocal/a/rv;

    .line 62
    iput v6, v0, Lcom/tencent/mm/protocal/a/ye;->fAN:I

    .line 63
    iget-object v1, p3, Lcom/tencent/mm/modelcdntran/keep_SceneResult;->field_aesKey:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/mm/protocal/a/ye;->fGB:Ljava/lang/String;

    .line 64
    iget-object v1, p3, Lcom/tencent/mm/modelcdntran/keep_SceneResult;->field_aesKey:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/mm/protocal/a/ye;->fYF:Ljava/lang/String;

    .line 66
    iget v1, p1, Lcom/tencent/mm/protocal/a/ye;->fLx:I

    iput v1, v0, Lcom/tencent/mm/protocal/a/ye;->fLx:I

    .line 67
    iget v1, p1, Lcom/tencent/mm/protocal/a/ye;->fLx:I

    if-ne v1, v6, :cond_2

    .line 68
    iget v1, p3, Lcom/tencent/mm/modelcdntran/keep_SceneResult;->field_fileLength:I

    iput v1, v0, Lcom/tencent/mm/protocal/a/ye;->fYz:I

    .line 69
    iget v1, p3, Lcom/tencent/mm/modelcdntran/keep_SceneResult;->field_midimgLength:I

    iput v1, v0, Lcom/tencent/mm/protocal/a/ye;->fYA:I

    .line 70
    iget-object v1, p3, Lcom/tencent/mm/modelcdntran/keep_SceneResult;->field_fileId:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/mm/protocal/a/ye;->fYx:Ljava/lang/String;

    .line 71
    iget-object v1, p3, Lcom/tencent/mm/modelcdntran/keep_SceneResult;->field_fileId:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/mm/protocal/a/ye;->fYy:Ljava/lang/String;

    .line 78
    :goto_2
    return-void

    :cond_0
    move v1, v2

    .line 52
    goto :goto_0

    :cond_1
    move v1, v2

    .line 53
    goto :goto_1

    .line 73
    :cond_2
    iput v2, v0, Lcom/tencent/mm/protocal/a/ye;->fYz:I

    .line 74
    iget v1, p3, Lcom/tencent/mm/modelcdntran/keep_SceneResult;->field_fileLength:I

    iput v1, v0, Lcom/tencent/mm/protocal/a/ye;->fYA:I

    .line 75
    const-string v1, ""

    iput-object v1, v0, Lcom/tencent/mm/protocal/a/ye;->fYx:Ljava/lang/String;

    .line 76
    iget-object v1, p3, Lcom/tencent/mm/modelcdntran/keep_SceneResult;->field_fileId:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/mm/protocal/a/ye;->fYy:Ljava/lang/String;

    goto :goto_2
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/network/r;Lcom/tencent/mm/n/m;)I
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 82
    const-string v1, "MicroMsg.NetSceneUploadMsgImgForCdn"

    const-string v2, "cdntra req[%s]"

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/tencent/mm/w/ae;->cke:Lcom/tencent/mm/n/a;

    invoke-virtual {v0}, Lcom/tencent/mm/n/a;->wr()Lcom/tencent/mm/am/a;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/a/ye;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    iput-object p2, p0, Lcom/tencent/mm/w/ae;->cjh:Lcom/tencent/mm/n/m;

    .line 84
    iget-object v0, p0, Lcom/tencent/mm/w/ae;->cke:Lcom/tencent/mm/n/a;

    invoke-virtual {p0, p1, v0, p0}, Lcom/tencent/mm/w/ae;->a(Lcom/tencent/mm/network/r;Lcom/tencent/mm/network/aj;Lcom/tencent/mm/network/ab;)I

    move-result v0

    return v0
.end method

.method public final a(IIILjava/lang/String;Lcom/tencent/mm/network/aj;[B)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 89
    const-string v0, "MicroMsg.NetSceneUploadMsgImgForCdn"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onGYNetEnd errtype:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " errcode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    check-cast p5, Lcom/tencent/mm/n/a;

    invoke-virtual {p5}, Lcom/tencent/mm/n/a;->ws()Lcom/tencent/mm/am/a;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/a/yf;

    .line 92
    const-string v1, "MicroMsg.NetSceneUploadMsgImgForCdn"

    const-string v2, "onGYNetEnd createtime:%d msgId:%d "

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, v0, Lcom/tencent/mm/protocal/a/yf;->fzy:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x1

    iget v5, v0, Lcom/tencent/mm/protocal/a/yf;->fzo:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    iget-object v1, p0, Lcom/tencent/mm/w/ae;->cug:Lcom/tencent/mm/w/af;

    if-eqz v1, :cond_0

    .line 95
    iget-object v1, p0, Lcom/tencent/mm/w/ae;->cug:Lcom/tencent/mm/w/af;

    iget v2, v0, Lcom/tencent/mm/protocal/a/yf;->fzo:I

    iget v0, v0, Lcom/tencent/mm/protocal/a/yf;->fzy:I

    invoke-interface {v1, v2, v0, p2, p3}, Lcom/tencent/mm/w/af;->g(IIII)V

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/w/ae;->cjh:Lcom/tencent/mm/n/m;

    const-string v1, ""

    invoke-interface {v0, v6, v6, v1, p0}, Lcom/tencent/mm/n/m;->a(IILjava/lang/String;Lcom/tencent/mm/n/x;)V

    .line 99
    return-void
.end method

.method public final getType()I
    .locals 1

    .prologue
    .line 103
    const/16 v0, 0x6e

    return v0
.end method
