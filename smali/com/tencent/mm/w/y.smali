.class public final Lcom/tencent/mm/w/y;
.super Lcom/tencent/mm/n/x;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/network/ab;


# instance fields
.field private TAG:Ljava/lang/String;

.field private bLP:Lcom/tencent/mm/storage/ak;

.field private cjh:Lcom/tencent/mm/n/m;

.field private final cke:Lcom/tencent/mm/n/a;

.field private cpL:J

.field private cpM:J

.field private final ctM:Lcom/tencent/mm/n/n;

.field private ctN:J

.field private ctP:I

.field private ctQ:Lcom/tencent/mm/modelstat/c;

.field private ctR:Ljava/lang/String;

.field private ctS:I

.field private ctV:Lcom/tencent/mm/modelcdntran/n;

.field private cub:I

.field private cuc:Lcom/tencent/mm/w/ad;

.field private cud:Ljava/lang/String;

.field private startOffset:I

.field private startTime:J


# direct methods
.method public constructor <init>(II)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const/16 v9, 0x6e

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v8, 0x0

    .line 208
    invoke-direct {p0}, Lcom/tencent/mm/n/x;-><init>()V

    .line 50
    const-string v0, "MicroMsg.NetSceneUploadMsgImg"

    iput-object v0, p0, Lcom/tencent/mm/w/y;->TAG:Ljava/lang/String;

    .line 73
    const/16 v0, 0x4000

    iput v0, p0, Lcom/tencent/mm/w/y;->cub:I

    .line 74
    iput v2, p0, Lcom/tencent/mm/w/y;->ctP:I

    .line 75
    iput-object v8, p0, Lcom/tencent/mm/w/y;->bLP:Lcom/tencent/mm/storage/ak;

    .line 77
    iput-object v8, p0, Lcom/tencent/mm/w/y;->ctQ:Lcom/tencent/mm/modelstat/c;

    .line 78
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/w/y;->ctR:Ljava/lang/String;

    .line 79
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/mm/w/y;->startTime:J

    .line 80
    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/mm/w/y;->startOffset:I

    .line 81
    iput v2, p0, Lcom/tencent/mm/w/y;->ctS:I

    .line 82
    iput-object v8, p0, Lcom/tencent/mm/w/y;->cuc:Lcom/tencent/mm/w/ad;

    .line 390
    new-instance v0, Lcom/tencent/mm/w/aa;

    invoke-direct {v0, p0}, Lcom/tencent/mm/w/aa;-><init>(Lcom/tencent/mm/w/y;)V

    iput-object v0, p0, Lcom/tencent/mm/w/y;->ctV:Lcom/tencent/mm/modelcdntran/n;

    .line 210
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/tencent/mm/w/y;->ctN:J

    .line 211
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/tencent/mm/w/y;->cpL:J

    .line 212
    iput p2, p0, Lcom/tencent/mm/w/y;->ctP:I

    .line 213
    new-instance v0, Lcom/tencent/mm/n/b;

    invoke-direct {v0}, Lcom/tencent/mm/n/b;-><init>()V

    .line 214
    new-instance v1, Lcom/tencent/mm/protocal/a/ye;

    invoke-direct {v1}, Lcom/tencent/mm/protocal/a/ye;-><init>()V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/b;->a(Lcom/tencent/mm/am/a;)V

    .line 215
    new-instance v1, Lcom/tencent/mm/protocal/a/yf;

    invoke-direct {v1}, Lcom/tencent/mm/protocal/a/yf;-><init>()V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/b;->b(Lcom/tencent/mm/am/a;)V

    .line 216
    const-string v1, "/cgi-bin/micromsg-bin/uploadmsgimg"

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/b;->es(Ljava/lang/String;)V

    .line 217
    invoke-virtual {v0, v9}, Lcom/tencent/mm/n/b;->cN(I)V

    .line 218
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/b;->cO(I)V

    .line 219
    const v1, 0x3b9aca09

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/b;->cP(I)V

    .line 220
    invoke-virtual {v0}, Lcom/tencent/mm/n/b;->wx()Lcom/tencent/mm/n/a;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/w/y;->cke:Lcom/tencent/mm/n/a;

    .line 221
    iput-object v8, p0, Lcom/tencent/mm/w/y;->ctM:Lcom/tencent/mm/n/n;

    .line 223
    iget-object v0, p0, Lcom/tencent/mm/w/y;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FROM B SERVICE:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/tencent/mm/w/y;->ctN:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    iget-wide v0, p0, Lcom/tencent/mm/w/y;->ctN:J

    long-to-int v0, v0

    invoke-static {v0}, Lcom/tencent/mm/w/o;->dI(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 225
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/tencent/mm/w/y;->ctN:J

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 229
    :cond_1
    invoke-static {}, Lcom/tencent/mm/w/ag;->Ba()Lcom/tencent/mm/w/g;

    move-result-object v0

    iget-wide v1, p0, Lcom/tencent/mm/w/y;->ctN:J

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/w/g;->E(J)Lcom/tencent/mm/w/e;

    move-result-object v0

    .line 230
    invoke-virtual {v0}, Lcom/tencent/mm/w/e;->AF()I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/tencent/mm/w/y;->cpM:J

    .line 232
    if-eqz v0, :cond_0

    .line 233
    if-ne p2, v3, :cond_5

    .line 234
    invoke-virtual {v0}, Lcom/tencent/mm/w/e;->AK()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/tencent/mm/w/y;->cpL:J

    .line 235
    invoke-static {}, Lcom/tencent/mm/w/ag;->Ba()Lcom/tencent/mm/w/g;

    move-result-object v0

    iget-wide v1, p0, Lcom/tencent/mm/w/y;->cpL:J

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/w/g;->E(J)Lcom/tencent/mm/w/e;

    move-result-object v0

    move-object v1, v0

    .line 238
    :goto_1
    invoke-static {}, Lcom/tencent/mm/w/ag;->Ba()Lcom/tencent/mm/w/g;

    move-result-object v0

    invoke-virtual {v1}, Lcom/tencent/mm/w/e;->AG()J

    move-result-wide v4

    long-to-int v2, v4

    invoke-virtual {v0, v2}, Lcom/tencent/mm/w/g;->dH(I)Lcom/tencent/mm/w/e;

    move-result-object v0

    .line 239
    if-eqz v0, :cond_2

    .line 240
    invoke-virtual {v0}, Lcom/tencent/mm/w/e;->AF()I

    move-result v0

    int-to-long v4, v0

    iput-wide v4, p0, Lcom/tencent/mm/w/y;->cpM:J

    .line 242
    :cond_2
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sw()Lcom/tencent/mm/storage/ap;

    move-result-object v0

    iget-wide v4, p0, Lcom/tencent/mm/w/y;->cpM:J

    invoke-virtual {v0, v4, v5}, Lcom/tencent/mm/storage/ap;->bU(J)Lcom/tencent/mm/storage/ak;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/w/y;->bLP:Lcom/tencent/mm/storage/ak;

    .line 243
    iget-object v0, p0, Lcom/tencent/mm/w/y;->bLP:Lcom/tencent/mm/storage/ak;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/w/y;->bLP:Lcom/tencent/mm/storage/ak;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->Bo()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/tencent/mm/w/y;->cpM:J

    cmp-long v0, v4, v6

    if-eqz v0, :cond_3

    .line 244
    iput-object v8, p0, Lcom/tencent/mm/w/y;->bLP:Lcom/tencent/mm/storage/ak;

    goto :goto_0

    .line 247
    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/w/y;->bLP:Lcom/tencent/mm/storage/ak;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/tencent/mm/w/y;->cke:Lcom/tencent/mm/n/a;

    invoke-virtual {v0}, Lcom/tencent/mm/n/a;->wr()Lcom/tencent/mm/am/a;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/a/ye;

    .line 249
    new-instance v2, Lcom/tencent/mm/protocal/a/rw;

    invoke-direct {v2}, Lcom/tencent/mm/protocal/a/rw;-><init>()V

    invoke-static {}, Lcom/tencent/mm/model/v;->th()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/tencent/mm/protocal/a/rw;->sn(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/rw;

    move-result-object v2

    iput-object v2, v0, Lcom/tencent/mm/protocal/a/ye;->fzs:Lcom/tencent/mm/protocal/a/rw;

    .line 250
    new-instance v2, Lcom/tencent/mm/protocal/a/rw;

    invoke-direct {v2}, Lcom/tencent/mm/protocal/a/rw;-><init>()V

    iget-object v4, p0, Lcom/tencent/mm/w/y;->bLP:Lcom/tencent/mm/storage/ak;

    invoke-virtual {v4}, Lcom/tencent/mm/storage/ak;->aCl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/tencent/mm/protocal/a/rw;->sn(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/rw;

    move-result-object v2

    iput-object v2, v0, Lcom/tencent/mm/protocal/a/ye;->fzt:Lcom/tencent/mm/protocal/a/rw;

    .line 251
    invoke-virtual {v1}, Lcom/tencent/mm/w/e;->getOffset()I

    move-result v2

    iput v2, v0, Lcom/tencent/mm/protocal/a/ye;->fEd:I

    .line 252
    invoke-virtual {v1}, Lcom/tencent/mm/w/e;->vR()I

    move-result v2

    iput v2, v0, Lcom/tencent/mm/protocal/a/ye;->fAL:I

    .line 253
    iget-object v2, p0, Lcom/tencent/mm/w/y;->bLP:Lcom/tencent/mm/storage/ak;

    invoke-virtual {v2}, Lcom/tencent/mm/storage/ak;->getType()I

    move-result v2

    iput v2, v0, Lcom/tencent/mm/protocal/a/ye;->fzu:I

    .line 254
    iput p2, v0, Lcom/tencent/mm/protocal/a/ye;->fLx:I

    .line 255
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mm/network/bm;->ac(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v3

    :goto_2
    iput v2, v0, Lcom/tencent/mm/protocal/a/ye;->fUN:I

    .line 256
    invoke-virtual {v1}, Lcom/tencent/mm/w/e;->getSource()I

    move-result v2

    iput v2, v0, Lcom/tencent/mm/protocal/a/ye;->fWg:I

    .line 257
    invoke-virtual {v1}, Lcom/tencent/mm/w/e;->getOffset()I

    move-result v0

    if-nez v0, :cond_0

    .line 258
    new-instance v0, Lcom/tencent/mm/modelstat/c;

    invoke-virtual {v1}, Lcom/tencent/mm/w/e;->vR()I

    move-result v1

    int-to-long v1, v1

    invoke-direct {v0, v9, v3, v1, v2}, Lcom/tencent/mm/modelstat/c;-><init>(IZJ)V

    iput-object v0, p0, Lcom/tencent/mm/w/y;->ctQ:Lcom/tencent/mm/modelstat/c;

    goto/16 :goto_0

    .line 255
    :cond_4
    const/4 v2, 0x2

    goto :goto_2

    :cond_5
    move-object v1, v0

    goto/16 :goto_1
.end method

.method public constructor <init>(IIB)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v7, 0x6e

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 264
    invoke-direct {p0}, Lcom/tencent/mm/n/x;-><init>()V

    .line 50
    const-string v0, "MicroMsg.NetSceneUploadMsgImg"

    iput-object v0, p0, Lcom/tencent/mm/w/y;->TAG:Ljava/lang/String;

    .line 73
    const/16 v0, 0x4000

    iput v0, p0, Lcom/tencent/mm/w/y;->cub:I

    .line 74
    iput v6, p0, Lcom/tencent/mm/w/y;->ctP:I

    .line 75
    iput-object v2, p0, Lcom/tencent/mm/w/y;->bLP:Lcom/tencent/mm/storage/ak;

    .line 77
    iput-object v2, p0, Lcom/tencent/mm/w/y;->ctQ:Lcom/tencent/mm/modelstat/c;

    .line 78
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/w/y;->ctR:Ljava/lang/String;

    .line 79
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/mm/w/y;->startTime:J

    .line 80
    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/mm/w/y;->startOffset:I

    .line 81
    iput v6, p0, Lcom/tencent/mm/w/y;->ctS:I

    .line 82
    iput-object v2, p0, Lcom/tencent/mm/w/y;->cuc:Lcom/tencent/mm/w/ad;

    .line 390
    new-instance v0, Lcom/tencent/mm/w/aa;

    invoke-direct {v0, p0}, Lcom/tencent/mm/w/aa;-><init>(Lcom/tencent/mm/w/y;)V

    iput-object v0, p0, Lcom/tencent/mm/w/y;->ctV:Lcom/tencent/mm/modelcdntran/n;

    .line 266
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/tencent/mm/w/y;->ctN:J

    .line 267
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/tencent/mm/w/y;->cpL:J

    .line 268
    iput p2, p0, Lcom/tencent/mm/w/y;->ctP:I

    .line 269
    new-instance v0, Lcom/tencent/mm/n/b;

    invoke-direct {v0}, Lcom/tencent/mm/n/b;-><init>()V

    .line 270
    new-instance v1, Lcom/tencent/mm/protocal/a/ye;

    invoke-direct {v1}, Lcom/tencent/mm/protocal/a/ye;-><init>()V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/b;->a(Lcom/tencent/mm/am/a;)V

    .line 271
    new-instance v1, Lcom/tencent/mm/protocal/a/yf;

    invoke-direct {v1}, Lcom/tencent/mm/protocal/a/yf;-><init>()V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/b;->b(Lcom/tencent/mm/am/a;)V

    .line 272
    const-string v1, "/cgi-bin/micromsg-bin/uploadmsgimg"

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/b;->es(Ljava/lang/String;)V

    .line 273
    invoke-virtual {v0, v7}, Lcom/tencent/mm/n/b;->cN(I)V

    .line 274
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/b;->cO(I)V

    .line 275
    const v1, 0x3b9aca09

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/b;->cP(I)V

    .line 276
    invoke-virtual {v0}, Lcom/tencent/mm/n/b;->wx()Lcom/tencent/mm/n/a;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/w/y;->cke:Lcom/tencent/mm/n/a;

    .line 277
    iput-object v2, p0, Lcom/tencent/mm/w/y;->ctM:Lcom/tencent/mm/n/n;

    .line 279
    iget-object v0, p0, Lcom/tencent/mm/w/y;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FROM C SERVICE:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/tencent/mm/w/y;->ctN:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    iget-wide v0, p0, Lcom/tencent/mm/w/y;->ctN:J

    long-to-int v0, v0

    invoke-static {v0}, Lcom/tencent/mm/w/o;->dI(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 281
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/tencent/mm/w/y;->ctN:J

    .line 324
    :cond_0
    :goto_0
    return-void

    .line 285
    :cond_1
    invoke-static {}, Lcom/tencent/mm/w/ag;->Ba()Lcom/tencent/mm/w/g;

    move-result-object v0

    iget-wide v1, p0, Lcom/tencent/mm/w/y;->ctN:J

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/w/g;->E(J)Lcom/tencent/mm/w/e;

    move-result-object v0

    .line 286
    invoke-virtual {v0}, Lcom/tencent/mm/w/e;->AF()I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/tencent/mm/w/y;->cpM:J

    .line 287
    invoke-virtual {v0, v6}, Lcom/tencent/mm/w/e;->setStatus(I)V

    .line 288
    invoke-virtual {v0, v6}, Lcom/tencent/mm/w/e;->dA(I)V

    .line 289
    invoke-virtual {v0, v6}, Lcom/tencent/mm/w/e;->setOffset(I)V

    .line 290
    invoke-static {}, Lcom/tencent/mm/w/ag;->Ba()Lcom/tencent/mm/w/g;

    move-result-object v1

    iget-wide v4, p0, Lcom/tencent/mm/w/y;->cpL:J

    long-to-int v2, v4

    int-to-long v4, v2

    invoke-virtual {v1, v4, v5, v0}, Lcom/tencent/mm/w/g;->a(JLcom/tencent/mm/w/e;)I

    .line 292
    if-eqz v0, :cond_0

    .line 293
    if-ne p2, v3, :cond_4

    .line 294
    invoke-virtual {v0}, Lcom/tencent/mm/w/e;->AK()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/tencent/mm/w/y;->cpL:J

    .line 295
    invoke-static {}, Lcom/tencent/mm/w/ag;->Ba()Lcom/tencent/mm/w/g;

    move-result-object v0

    iget-wide v1, p0, Lcom/tencent/mm/w/y;->cpL:J

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/w/g;->E(J)Lcom/tencent/mm/w/e;

    move-result-object v0

    move-object v1, v0

    .line 298
    :goto_1
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sw()Lcom/tencent/mm/storage/ap;

    move-result-object v0

    iget-wide v4, p0, Lcom/tencent/mm/w/y;->cpM:J

    invoke-virtual {v0, v4, v5}, Lcom/tencent/mm/storage/ap;->bU(J)Lcom/tencent/mm/storage/ak;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/w/y;->bLP:Lcom/tencent/mm/storage/ak;

    .line 299
    iget-object v0, p0, Lcom/tencent/mm/w/y;->bLP:Lcom/tencent/mm/storage/ak;

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/tencent/mm/w/y;->bLP:Lcom/tencent/mm/storage/ak;

    invoke-virtual {v0, v3}, Lcom/tencent/mm/storage/ak;->setStatus(I)V

    .line 302
    invoke-virtual {v1}, Lcom/tencent/mm/w/e;->AJ()Ljava/lang/String;

    move-result-object v0

    .line 303
    if-eqz v0, :cond_2

    const-string v2, "THUMBNAIL_DIRPATH://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 304
    iget-object v2, p0, Lcom/tencent/mm/w/y;->bLP:Lcom/tencent/mm/storage/ak;

    invoke-virtual {v2, v0}, Lcom/tencent/mm/storage/ak;->uN(Ljava/lang/String;)V

    .line 309
    :goto_2
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sw()Lcom/tencent/mm/storage/ap;

    move-result-object v0

    iget-wide v4, p0, Lcom/tencent/mm/w/y;->cpM:J

    iget-object v2, p0, Lcom/tencent/mm/w/y;->bLP:Lcom/tencent/mm/storage/ak;

    invoke-virtual {v0, v4, v5, v2}, Lcom/tencent/mm/storage/ap;->a(JLcom/tencent/mm/storage/ak;)V

    .line 310
    iget-object v0, p0, Lcom/tencent/mm/w/y;->cke:Lcom/tencent/mm/n/a;

    invoke-virtual {v0}, Lcom/tencent/mm/n/a;->wr()Lcom/tencent/mm/am/a;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/a/ye;

    .line 311
    new-instance v2, Lcom/tencent/mm/protocal/a/rw;

    invoke-direct {v2}, Lcom/tencent/mm/protocal/a/rw;-><init>()V

    invoke-static {}, Lcom/tencent/mm/model/v;->th()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/tencent/mm/protocal/a/rw;->sn(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/rw;

    move-result-object v2

    iput-object v2, v0, Lcom/tencent/mm/protocal/a/ye;->fzs:Lcom/tencent/mm/protocal/a/rw;

    .line 312
    new-instance v2, Lcom/tencent/mm/protocal/a/rw;

    invoke-direct {v2}, Lcom/tencent/mm/protocal/a/rw;-><init>()V

    iget-object v4, p0, Lcom/tencent/mm/w/y;->bLP:Lcom/tencent/mm/storage/ak;

    invoke-virtual {v4}, Lcom/tencent/mm/storage/ak;->aCl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/tencent/mm/protocal/a/rw;->sn(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/rw;

    move-result-object v2

    iput-object v2, v0, Lcom/tencent/mm/protocal/a/ye;->fzt:Lcom/tencent/mm/protocal/a/rw;

    .line 313
    invoke-virtual {v1}, Lcom/tencent/mm/w/e;->getOffset()I

    move-result v2

    iput v2, v0, Lcom/tencent/mm/protocal/a/ye;->fEd:I

    .line 314
    invoke-virtual {v1}, Lcom/tencent/mm/w/e;->vR()I

    move-result v2

    iput v2, v0, Lcom/tencent/mm/protocal/a/ye;->fAL:I

    .line 315
    iget-object v2, p0, Lcom/tencent/mm/w/y;->bLP:Lcom/tencent/mm/storage/ak;

    invoke-virtual {v2}, Lcom/tencent/mm/storage/ak;->getType()I

    move-result v2

    iput v2, v0, Lcom/tencent/mm/protocal/a/ye;->fzu:I

    .line 316
    iput p2, v0, Lcom/tencent/mm/protocal/a/ye;->fLx:I

    .line 317
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mm/network/bm;->ac(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v3

    :goto_3
    iput v2, v0, Lcom/tencent/mm/protocal/a/ye;->fUN:I

    .line 318
    invoke-virtual {v1}, Lcom/tencent/mm/w/e;->getSource()I

    move-result v2

    iput v2, v0, Lcom/tencent/mm/protocal/a/ye;->fWg:I

    .line 319
    invoke-virtual {v1}, Lcom/tencent/mm/w/e;->getOffset()I

    move-result v0

    if-nez v0, :cond_0

    .line 320
    new-instance v0, Lcom/tencent/mm/modelstat/c;

    invoke-virtual {v1}, Lcom/tencent/mm/w/e;->vR()I

    move-result v1

    int-to-long v1, v1

    invoke-direct {v0, v7, v3, v1, v2}, Lcom/tencent/mm/modelstat/c;-><init>(IZJ)V

    iput-object v0, p0, Lcom/tencent/mm/w/y;->ctQ:Lcom/tencent/mm/modelstat/c;

    goto/16 :goto_0

    .line 306
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/w/y;->bLP:Lcom/tencent/mm/storage/ak;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "THUMBNAIL://"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/tencent/mm/w/e;->AG()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/mm/storage/ak;->uN(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 317
    :cond_3
    const/4 v2, 0x2

    goto :goto_3

    :cond_4
    move-object v1, v0

    goto/16 :goto_1
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/tencent/mm/w/ad;)V
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 112
    const/4 v7, 0x0

    const-string v9, ""

    const-string v10, ""

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move/from16 v6, p5

    move/from16 v8, p6

    invoke-direct/range {v1 .. v10}, Lcom/tencent/mm/w/y;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/tencent/mm/n/n;ILjava/lang/String;Ljava/lang/String;)V

    .line 113
    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/tencent/mm/w/y;->cuc:Lcom/tencent/mm/w/ad;

    .line 114
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/tencent/mm/n/n;)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 107
    const/4 v7, 0x0

    const-string v8, ""

    const-string v9, ""

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v9}, Lcom/tencent/mm/w/y;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/tencent/mm/n/n;ILjava/lang/String;Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/tencent/mm/n/n;ILjava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/tencent/mm/n/x;-><init>()V

    .line 50
    const-string v1, "MicroMsg.NetSceneUploadMsgImg"

    iput-object v1, p0, Lcom/tencent/mm/w/y;->TAG:Ljava/lang/String;

    .line 73
    const/16 v1, 0x4000

    iput v1, p0, Lcom/tencent/mm/w/y;->cub:I

    .line 74
    const/4 v1, 0x0

    iput v1, p0, Lcom/tencent/mm/w/y;->ctP:I

    .line 75
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tencent/mm/w/y;->bLP:Lcom/tencent/mm/storage/ak;

    .line 77
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tencent/mm/w/y;->ctQ:Lcom/tencent/mm/modelstat/c;

    .line 78
    const-string v1, ""

    iput-object v1, p0, Lcom/tencent/mm/w/y;->ctR:Ljava/lang/String;

    .line 79
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/tencent/mm/w/y;->startTime:J

    .line 80
    const/4 v1, -0x1

    iput v1, p0, Lcom/tencent/mm/w/y;->startOffset:I

    .line 81
    const/4 v1, 0x0

    iput v1, p0, Lcom/tencent/mm/w/y;->ctS:I

    .line 82
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tencent/mm/w/y;->cuc:Lcom/tencent/mm/w/ad;

    .line 390
    new-instance v1, Lcom/tencent/mm/w/aa;

    invoke-direct {v1, p0}, Lcom/tencent/mm/w/aa;-><init>(Lcom/tencent/mm/w/y;)V

    iput-object v1, p0, Lcom/tencent/mm/w/y;->ctV:Lcom/tencent/mm/modelcdntran/n;

    .line 118
    iput-object p6, p0, Lcom/tencent/mm/w/y;->ctM:Lcom/tencent/mm/n/n;

    .line 119
    iput p5, p0, Lcom/tencent/mm/w/y;->ctP:I

    .line 121
    new-instance v6, Lcom/tencent/mm/pointers/PString;

    invoke-direct {v6}, Lcom/tencent/mm/pointers/PString;-><init>()V

    .line 122
    new-instance v7, Lcom/tencent/mm/pointers/PInt;

    invoke-direct {v7}, Lcom/tencent/mm/pointers/PInt;-><init>()V

    .line 123
    new-instance v8, Lcom/tencent/mm/pointers/PInt;

    invoke-direct {v8}, Lcom/tencent/mm/pointers/PInt;-><init>()V

    .line 125
    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/tencent/mm/w/y;->cud:Ljava/lang/String;

    .line 126
    move-object/from16 v0, p9

    iput-object v0, v6, Lcom/tencent/mm/pointers/PString;->value:Ljava/lang/String;

    .line 128
    invoke-static {}, Lcom/tencent/mm/w/ag;->Ba()Lcom/tencent/mm/w/g;

    move-result-object v1

    move-object v2, p4

    move v3, p5

    move v4, p1

    move/from16 v5, p7

    invoke-virtual/range {v1 .. v8}, Lcom/tencent/mm/w/g;->a(Ljava/lang/String;IIILcom/tencent/mm/pointers/PString;Lcom/tencent/mm/pointers/PInt;Lcom/tencent/mm/pointers/PInt;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/tencent/mm/w/y;->ctN:J

    .line 129
    iget-wide v1, p0, Lcom/tencent/mm/w/y;->ctN:J

    iput-wide v1, p0, Lcom/tencent/mm/w/y;->cpL:J

    .line 131
    iget-object v1, p0, Lcom/tencent/mm/w/y;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "FROM A UI :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/tencent/mm/w/y;->ctN:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iget-wide v1, p0, Lcom/tencent/mm/w/y;->ctN:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    iget-wide v1, p0, Lcom/tencent/mm/w/y;->ctN:J

    long-to-int v1, v1

    invoke-static {v1}, Lcom/tencent/mm/w/o;->dI(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 133
    :cond_0
    iget-object v1, p0, Lcom/tencent/mm/w/y;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "insert to img storage failed id:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/tencent/mm/w/y;->ctN:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/tencent/mm/w/y;->cpM:J

    .line 135
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tencent/mm/w/y;->cke:Lcom/tencent/mm/n/a;

    .line 206
    :cond_1
    :goto_0
    return-void

    .line 139
    :cond_2
    iget-wide v1, p0, Lcom/tencent/mm/w/y;->ctN:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-ltz v1, :cond_4

    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 141
    new-instance v1, Lcom/tencent/mm/n/b;

    invoke-direct {v1}, Lcom/tencent/mm/n/b;-><init>()V

    .line 142
    new-instance v2, Lcom/tencent/mm/protocal/a/ye;

    invoke-direct {v2}, Lcom/tencent/mm/protocal/a/ye;-><init>()V

    invoke-virtual {v1, v2}, Lcom/tencent/mm/n/b;->a(Lcom/tencent/mm/am/a;)V

    .line 143
    new-instance v2, Lcom/tencent/mm/protocal/a/yf;

    invoke-direct {v2}, Lcom/tencent/mm/protocal/a/yf;-><init>()V

    invoke-virtual {v1, v2}, Lcom/tencent/mm/n/b;->b(Lcom/tencent/mm/am/a;)V

    .line 144
    const-string v2, "/cgi-bin/micromsg-bin/uploadmsgimg"

    invoke-virtual {v1, v2}, Lcom/tencent/mm/n/b;->es(Ljava/lang/String;)V

    .line 145
    const/16 v2, 0x6e

    invoke-virtual {v1, v2}, Lcom/tencent/mm/n/b;->cN(I)V

    .line 146
    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Lcom/tencent/mm/n/b;->cO(I)V

    .line 147
    const v2, 0x3b9aca09

    invoke-virtual {v1, v2}, Lcom/tencent/mm/n/b;->cP(I)V

    .line 148
    invoke-virtual {v1}, Lcom/tencent/mm/n/b;->wx()Lcom/tencent/mm/n/a;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/mm/w/y;->cke:Lcom/tencent/mm/n/a;

    .line 150
    new-instance v1, Lcom/tencent/mm/storage/ak;

    invoke-direct {v1}, Lcom/tencent/mm/storage/ak;-><init>()V

    iput-object v1, p0, Lcom/tencent/mm/w/y;->bLP:Lcom/tencent/mm/storage/ak;

    .line 151
    iget-object v1, p0, Lcom/tencent/mm/w/y;->bLP:Lcom/tencent/mm/storage/ak;

    invoke-static {p3}, Lcom/tencent/mm/model/w;->de(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/storage/ak;->setType(I)V

    .line 152
    iget-object v1, p0, Lcom/tencent/mm/w/y;->bLP:Lcom/tencent/mm/storage/ak;

    invoke-virtual {v1, p3}, Lcom/tencent/mm/storage/ak;->uK(Ljava/lang/String;)V

    .line 153
    iget-object v1, p0, Lcom/tencent/mm/w/y;->bLP:Lcom/tencent/mm/storage/ak;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/tencent/mm/storage/ak;->bZ(I)V

    .line 154
    iget-object v1, p0, Lcom/tencent/mm/w/y;->bLP:Lcom/tencent/mm/storage/ak;

    iget-object v2, v6, Lcom/tencent/mm/pointers/PString;->value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/tencent/mm/storage/ak;->uN(Ljava/lang/String;)V

    .line 155
    iget-object v1, p0, Lcom/tencent/mm/w/y;->bLP:Lcom/tencent/mm/storage/ak;

    iget v2, v7, Lcom/tencent/mm/pointers/PInt;->value:I

    iput v2, v1, Lcom/tencent/mm/storage/ak;->bXI:I

    .line 156
    iget-object v1, p0, Lcom/tencent/mm/w/y;->bLP:Lcom/tencent/mm/storage/ak;

    iget v2, v8, Lcom/tencent/mm/pointers/PInt;->value:I

    iput v2, v1, Lcom/tencent/mm/storage/ak;->bXJ:I

    .line 157
    iget-object v1, p0, Lcom/tencent/mm/w/y;->bLP:Lcom/tencent/mm/storage/ak;

    iget-object v2, p0, Lcom/tencent/mm/w/y;->bLP:Lcom/tencent/mm/storage/ak;

    invoke-virtual {v2}, Lcom/tencent/mm/storage/ak;->aCl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mm/model/bv;->dA(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mm/storage/ak;->G(J)V

    .line 160
    invoke-static {}, Lcom/tencent/mm/w/ag;->Ba()Lcom/tencent/mm/w/g;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/w/y;->bLP:Lcom/tencent/mm/storage/ak;

    invoke-virtual {v2}, Lcom/tencent/mm/storage/ak;->ot()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/mm/an/a;->getDensity(Landroid/content/Context;)F

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mm/w/g;->b(Ljava/lang/String;F)Landroid/graphics/Bitmap;

    .line 162
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->sw()Lcom/tencent/mm/storage/ap;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/w/y;->bLP:Lcom/tencent/mm/storage/ak;

    invoke-virtual {v1, v2}, Lcom/tencent/mm/storage/ap;->v(Lcom/tencent/mm/storage/ak;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/tencent/mm/w/y;->cpM:J

    .line 163
    iget-wide v1, p0, Lcom/tencent/mm/w/y;->cpM:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-ltz v1, :cond_5

    const/4 v1, 0x1

    :goto_2
    invoke-static {v1}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 164
    iget-object v1, p0, Lcom/tencent/mm/w/y;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "NetSceneUploadMsgImg: local msgId = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/tencent/mm/w/y;->cpM:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-static {}, Lcom/tencent/mm/w/ag;->Ba()Lcom/tencent/mm/w/g;

    move-result-object v1

    iget-wide v2, p0, Lcom/tencent/mm/w/y;->ctN:J

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mm/w/g;->E(J)Lcom/tencent/mm/w/e;

    move-result-object v1

    .line 167
    iget-wide v2, p0, Lcom/tencent/mm/w/y;->cpM:J

    long-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/w/e;->dy(I)V

    .line 168
    invoke-static {}, Lcom/tencent/mm/w/ag;->Ba()Lcom/tencent/mm/w/g;

    move-result-object v2

    iget-wide v3, p0, Lcom/tencent/mm/w/y;->ctN:J

    invoke-virtual {v2, v3, v4, v1}, Lcom/tencent/mm/w/g;->a(JLcom/tencent/mm/w/e;)I

    .line 170
    const/4 v2, 0x1

    if-ne p5, v2, :cond_7

    .line 171
    invoke-virtual {v1}, Lcom/tencent/mm/w/e;->AK()I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/tencent/mm/w/y;->cpL:J

    .line 172
    invoke-static {}, Lcom/tencent/mm/w/ag;->Ba()Lcom/tencent/mm/w/g;

    move-result-object v1

    iget-wide v2, p0, Lcom/tencent/mm/w/y;->cpL:J

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mm/w/g;->E(J)Lcom/tencent/mm/w/e;

    move-result-object v1

    move-object v2, v1

    .line 175
    :goto_3
    invoke-static {}, Lcom/tencent/mm/w/ag;->Ba()Lcom/tencent/mm/w/g;

    move-result-object v1

    invoke-virtual {v2}, Lcom/tencent/mm/w/e;->AI()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    const-string v5, ""

    invoke-virtual {v1, v3, v4, v5}, Lcom/tencent/mm/w/g;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/a/c;->ar(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/tencent/mm/w/e;->cJ(I)V

    .line 176
    invoke-static {}, Lcom/tencent/mm/w/ag;->Ba()Lcom/tencent/mm/w/g;

    move-result-object v1

    iget-wide v3, p0, Lcom/tencent/mm/w/y;->cpL:J

    invoke-virtual {v1, v3, v4, v2}, Lcom/tencent/mm/w/g;->a(JLcom/tencent/mm/w/e;)I

    .line 178
    iget-object v1, p0, Lcom/tencent/mm/w/y;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "NetSceneUploadMsgImg: local imgId = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/tencent/mm/w/y;->cpL:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " img len = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/tencent/mm/w/e;->vR()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    iget-object v1, p0, Lcom/tencent/mm/w/y;->cke:Lcom/tencent/mm/n/a;

    invoke-virtual {v1}, Lcom/tencent/mm/n/a;->wr()Lcom/tencent/mm/am/a;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/protocal/a/ye;

    .line 181
    new-instance v3, Lcom/tencent/mm/protocal/a/rw;

    invoke-direct {v3}, Lcom/tencent/mm/protocal/a/rw;-><init>()V

    invoke-virtual {v3, p2}, Lcom/tencent/mm/protocal/a/rw;->sn(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/rw;

    move-result-object v3

    iput-object v3, v1, Lcom/tencent/mm/protocal/a/ye;->fzs:Lcom/tencent/mm/protocal/a/rw;

    .line 182
    new-instance v3, Lcom/tencent/mm/protocal/a/rw;

    invoke-direct {v3}, Lcom/tencent/mm/protocal/a/rw;-><init>()V

    invoke-virtual {v3, p3}, Lcom/tencent/mm/protocal/a/rw;->sn(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/rw;

    move-result-object v3

    iput-object v3, v1, Lcom/tencent/mm/protocal/a/ye;->fzt:Lcom/tencent/mm/protocal/a/rw;

    .line 183
    invoke-virtual {v2}, Lcom/tencent/mm/w/e;->getOffset()I

    move-result v3

    iput v3, v1, Lcom/tencent/mm/protocal/a/ye;->fEd:I

    .line 184
    invoke-virtual {v2}, Lcom/tencent/mm/w/e;->vR()I

    move-result v3

    iput v3, v1, Lcom/tencent/mm/protocal/a/ye;->fAL:I

    .line 185
    iget-object v3, p0, Lcom/tencent/mm/w/y;->bLP:Lcom/tencent/mm/storage/ak;

    invoke-virtual {v3}, Lcom/tencent/mm/storage/ak;->getType()I

    move-result v3

    iput v3, v1, Lcom/tencent/mm/protocal/a/ye;->fzu:I

    .line 186
    iput p5, v1, Lcom/tencent/mm/protocal/a/ye;->fLx:I

    .line 187
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/mm/network/bm;->ac(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x1

    :goto_4
    iput v3, v1, Lcom/tencent/mm/protocal/a/ye;->fUN:I

    .line 188
    invoke-virtual {v2}, Lcom/tencent/mm/w/e;->getSource()I

    move-result v3

    iput v3, v1, Lcom/tencent/mm/protocal/a/ye;->fWg:I

    .line 189
    iget-object v1, p0, Lcom/tencent/mm/w/y;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "dkimgsource :"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/tencent/mm/w/e;->getSource()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    invoke-virtual {v2}, Lcom/tencent/mm/w/e;->getOffset()I

    move-result v1

    if-nez v1, :cond_3

    .line 191
    new-instance v1, Lcom/tencent/mm/modelstat/c;

    const/16 v3, 0x6e

    const/4 v4, 0x1

    invoke-virtual {v2}, Lcom/tencent/mm/w/e;->vR()I

    move-result v5

    int-to-long v5, v5

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/tencent/mm/modelstat/c;-><init>(IZJ)V

    iput-object v1, p0, Lcom/tencent/mm/w/y;->ctQ:Lcom/tencent/mm/modelstat/c;

    .line 194
    :cond_3
    if-eqz p6, :cond_1

    .line 195
    invoke-virtual {v2}, Lcom/tencent/mm/w/e;->getOffset()I

    move-result v1

    .line 196
    invoke-virtual {v2}, Lcom/tencent/mm/w/e;->vR()I

    move-result v2

    .line 197
    new-instance v3, Lcom/tencent/mm/w/z;

    invoke-direct {v3, p0, p6, v1, v2}, Lcom/tencent/mm/w/z;-><init>(Lcom/tencent/mm/w/y;Lcom/tencent/mm/n/n;II)V

    invoke-static {v3}, Lcom/tencent/mm/sdk/platformtools/an;->i(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 139
    :cond_4
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 163
    :cond_5
    const/4 v1, 0x0

    goto/16 :goto_2

    .line 187
    :cond_6
    const/4 v3, 0x2

    goto :goto_4

    :cond_7
    move-object v2, v1

    goto/16 :goto_3
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 103
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lcom/tencent/mm/w/y;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/tencent/mm/n/n;ILjava/lang/String;Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/w/y;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/tencent/mm/w/y;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private a(Lcom/tencent/mm/w/e;III)Z
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 671
    iget-object v2, p0, Lcom/tencent/mm/w/y;->TAG:Ljava/lang/String;

    const-string v3, "cdntra clientid:%s start:%d svrid:%d createtime:%d"

    new-array v4, v9, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/tencent/mm/w/y;->ctR:Ljava/lang/String;

    aput-object v5, v4, v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v2, v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 673
    iget-object v2, p0, Lcom/tencent/mm/w/y;->TAG:Ljava/lang/String;

    const-string v3, "dkmsgid  set svrmsgid %d -> %d"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    sget v5, Lcom/tencent/mm/platformtools/at;->cHK:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v2, v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 674
    const/16 v2, 0x2717

    sget v3, Lcom/tencent/mm/platformtools/at;->cHJ:I

    if-ne v2, v3, :cond_0

    sget v2, Lcom/tencent/mm/platformtools/at;->cHK:I

    if-eqz v2, :cond_0

    .line 675
    sget p3, Lcom/tencent/mm/platformtools/at;->cHK:I

    .line 676
    sput v0, Lcom/tencent/mm/platformtools/at;->cHK:I

    .line 679
    :cond_0
    invoke-virtual {p1, p2}, Lcom/tencent/mm/w/e;->setOffset(I)V

    .line 680
    invoke-static {p1}, Lcom/tencent/mm/w/f;->b(Lcom/tencent/mm/w/e;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 681
    invoke-static {}, Lcom/tencent/mm/w/ag;->Ba()Lcom/tencent/mm/w/g;

    move-result-object v2

    iget-wide v3, p0, Lcom/tencent/mm/w/y;->ctN:J

    invoke-virtual {v2, v3, v4}, Lcom/tencent/mm/w/g;->E(J)Lcom/tencent/mm/w/e;

    move-result-object v2

    .line 682
    invoke-virtual {v2, p3}, Lcom/tencent/mm/w/e;->dA(I)V

    .line 683
    invoke-static {}, Lcom/tencent/mm/w/ag;->Ba()Lcom/tencent/mm/w/g;

    move-result-object v3

    iget-wide v4, p0, Lcom/tencent/mm/w/y;->ctN:J

    invoke-virtual {v3, v4, v5, v2}, Lcom/tencent/mm/w/g;->a(JLcom/tencent/mm/w/e;)I

    .line 686
    :cond_1
    invoke-static {}, Lcom/tencent/mm/w/ag;->Ba()Lcom/tencent/mm/w/g;

    move-result-object v2

    iget-wide v3, p0, Lcom/tencent/mm/w/y;->cpL:J

    invoke-virtual {v2, v3, v4, p1}, Lcom/tencent/mm/w/g;->a(JLcom/tencent/mm/w/e;)I

    move-result v2

    if-gez v2, :cond_3

    .line 687
    iget-object v1, p0, Lcom/tencent/mm/w/y;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "update db failed local id:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/tencent/mm/w/y;->cpL:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " server id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/tencent/mm/w/e;->AH()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    iget-wide v1, p0, Lcom/tencent/mm/w/y;->ctN:J

    long-to-int v1, v1

    invoke-static {v1}, Lcom/tencent/mm/w/o;->dK(I)V

    .line 689
    iget-wide v1, p0, Lcom/tencent/mm/w/y;->ctN:J

    long-to-int v1, v1

    invoke-static {v1}, Lcom/tencent/mm/w/o;->dJ(I)Z

    .line 690
    iget-object v1, p0, Lcom/tencent/mm/w/y;->cjh:Lcom/tencent/mm/n/m;

    const/4 v2, -0x1

    const-string v3, ""

    invoke-interface {v1, v8, v2, v3, p0}, Lcom/tencent/mm/n/m;->a(IILjava/lang/String;Lcom/tencent/mm/n/x;)V

    .line 691
    iget-object v1, p0, Lcom/tencent/mm/w/y;->cuc:Lcom/tencent/mm/w/ad;

    if-eqz v1, :cond_2

    .line 692
    iget-object v1, p0, Lcom/tencent/mm/w/y;->cuc:Lcom/tencent/mm/w/ad;

    invoke-interface {v1}, Lcom/tencent/mm/w/ad;->AS()V

    .line 731
    :cond_2
    :goto_0
    return v0

    .line 697
    :cond_3
    iget-object v2, p0, Lcom/tencent/mm/w/y;->ctM:Lcom/tencent/mm/n/n;

    if-eqz v2, :cond_4

    .line 698
    invoke-virtual {p1}, Lcom/tencent/mm/w/e;->getOffset()I

    move-result v2

    .line 699
    invoke-virtual {p1}, Lcom/tencent/mm/w/e;->vR()I

    move-result v3

    .line 700
    new-instance v4, Lcom/tencent/mm/w/ac;

    invoke-direct {v4, p0, v2, v3}, Lcom/tencent/mm/w/ac;-><init>(Lcom/tencent/mm/w/y;II)V

    invoke-static {v4}, Lcom/tencent/mm/sdk/platformtools/an;->i(Ljava/lang/Runnable;)V

    .line 709
    :cond_4
    invoke-static {p1}, Lcom/tencent/mm/w/f;->b(Lcom/tencent/mm/w/e;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 710
    iget-object v2, p0, Lcom/tencent/mm/w/y;->ctR:Ljava/lang/String;

    invoke-static {v2}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 711
    sget-object v2, Lcom/tencent/mm/plugin/d/c/m;->dZN:Lcom/tencent/mm/plugin/d/c/m;

    const/16 v3, 0x28b4

    const/4 v4, 0x7

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    iget-wide v5, p0, Lcom/tencent/mm/w/y;->startTime:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v4, v7

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/cj;->FD()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v4, v8

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/modelcdntran/h;->M(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v9

    const/4 v1, 0x5

    iget v5, p0, Lcom/tencent/mm/w/y;->ctS:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v1, 0x6

    invoke-virtual {p1}, Lcom/tencent/mm/w/e;->vR()I

    move-result v5

    iget v6, p0, Lcom/tencent/mm/w/y;->startOffset:I

    sub-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/tencent/mm/plugin/d/c/m;->d(I[Ljava/lang/Object;)V

    .line 714
    :cond_5
    iget-object v1, p0, Lcom/tencent/mm/w/y;->bLP:Lcom/tencent/mm/storage/ak;

    const/16 v2, 0x4a

    invoke-virtual {v1, v2}, Lcom/tencent/mm/storage/ak;->cL(I)V

    .line 715
    iget-object v1, p0, Lcom/tencent/mm/w/y;->bLP:Lcom/tencent/mm/storage/ak;

    invoke-virtual {v1, v7}, Lcom/tencent/mm/storage/ak;->setStatus(I)V

    .line 716
    iget-object v1, p0, Lcom/tencent/mm/w/y;->bLP:Lcom/tencent/mm/storage/ak;

    invoke-virtual {v1, p3}, Lcom/tencent/mm/storage/ak;->dA(I)V

    .line 720
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->sw()Lcom/tencent/mm/storage/ap;

    move-result-object v1

    iget-wide v2, p0, Lcom/tencent/mm/w/y;->cpM:J

    iget-object v4, p0, Lcom/tencent/mm/w/y;->bLP:Lcom/tencent/mm/storage/ak;

    invoke-virtual {v1, v2, v3, v4}, Lcom/tencent/mm/storage/ap;->a(JLcom/tencent/mm/storage/ak;)V

    .line 721
    iget-wide v1, p0, Lcom/tencent/mm/w/y;->ctN:J

    long-to-int v1, v1

    invoke-static {v1}, Lcom/tencent/mm/w/o;->dJ(I)Z

    .line 722
    iget-object v1, p0, Lcom/tencent/mm/w/y;->ctQ:Lcom/tencent/mm/modelstat/c;

    if-eqz v1, :cond_6

    .line 723
    iget-object v1, p0, Lcom/tencent/mm/w/y;->ctQ:Lcom/tencent/mm/modelstat/c;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mm/modelstat/c;->F(J)V

    .line 724
    :cond_6
    iget-object v1, p0, Lcom/tencent/mm/w/y;->cjh:Lcom/tencent/mm/n/m;

    const-string v2, ""

    invoke-interface {v1, v0, v0, v2, p0}, Lcom/tencent/mm/n/m;->a(IILjava/lang/String;Lcom/tencent/mm/n/x;)V

    .line 725
    iget-object v1, p0, Lcom/tencent/mm/w/y;->cuc:Lcom/tencent/mm/w/ad;

    if-eqz v1, :cond_2

    .line 726
    iget-object v1, p0, Lcom/tencent/mm/w/y;->cuc:Lcom/tencent/mm/w/ad;

    invoke-interface {v1}, Lcom/tencent/mm/w/ad;->AS()V

    goto/16 :goto_0

    :cond_7
    move v0, v1

    .line 731
    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/tencent/mm/w/y;Lcom/tencent/mm/w/e;III)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/mm/w/y;->a(Lcom/tencent/mm/w/e;III)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/tencent/mm/w/y;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/tencent/mm/w/y;->ctR:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/mm/w/y;)Lcom/tencent/mm/w/ad;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/tencent/mm/w/y;->cuc:Lcom/tencent/mm/w/ad;

    return-object v0
.end method

.method static synthetic d(Lcom/tencent/mm/w/y;)J
    .locals 2
    .parameter

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/tencent/mm/w/y;->ctN:J

    return-wide v0
.end method

.method static synthetic e(Lcom/tencent/mm/w/y;)J
    .locals 2
    .parameter

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/tencent/mm/w/y;->startTime:J

    return-wide v0
.end method

.method static synthetic f(Lcom/tencent/mm/w/y;)I
    .locals 1
    .parameter

    .prologue
    .line 48
    iget v0, p0, Lcom/tencent/mm/w/y;->ctS:I

    return v0
.end method

.method static synthetic g(Lcom/tencent/mm/w/y;)Lcom/tencent/mm/n/m;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/tencent/mm/w/y;->cjh:Lcom/tencent/mm/n/m;

    return-object v0
.end method

.method static synthetic h(Lcom/tencent/mm/w/y;)J
    .locals 2
    .parameter

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/tencent/mm/w/y;->cpL:J

    return-wide v0
.end method

.method static synthetic i(Lcom/tencent/mm/w/y;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/tencent/mm/w/y;->cud:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j(Lcom/tencent/mm/w/y;)Lcom/tencent/mm/n/a;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/tencent/mm/w/y;->cke:Lcom/tencent/mm/n/a;

    return-object v0
.end method

.method static synthetic k(Lcom/tencent/mm/w/y;)Lcom/tencent/mm/n/n;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/tencent/mm/w/y;->ctM:Lcom/tencent/mm/n/n;

    return-object v0
.end method


# virtual methods
.method public final AV()I
    .locals 2

    .prologue
    .line 95
    iget-wide v0, p0, Lcom/tencent/mm/w/y;->ctN:J

    long-to-int v0, v0

    return v0
.end method

.method public final AW()Lcom/tencent/mm/storage/ak;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/tencent/mm/w/y;->bLP:Lcom/tencent/mm/storage/ak;

    return-object v0
.end method

.method public final a(Lcom/tencent/mm/network/r;Lcom/tencent/mm/n/m;)I
    .locals 12
    .parameter
    .parameter

    .prologue
    .line 496
    iget-wide v0, p0, Lcom/tencent/mm/w/y;->cpL:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 497
    iget-object v0, p0, Lcom/tencent/mm/w/y;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "doScene invalid imgLocalId:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/tencent/mm/w/y;->cpL:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    const/4 v0, -0x1

    .line 576
    :cond_0
    :goto_0
    return v0

    .line 500
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/w/y;->bLP:Lcom/tencent/mm/storage/ak;

    if-nez v0, :cond_2

    .line 501
    iget-object v0, p0, Lcom/tencent/mm/w/y;->TAG:Ljava/lang/String;

    const-string v1, "doScene msg is null imgid:%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, p0, Lcom/tencent/mm/w/y;->cpL:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 502
    iget-wide v0, p0, Lcom/tencent/mm/w/y;->ctN:J

    long-to-int v0, v0

    invoke-static {v0}, Lcom/tencent/mm/w/o;->dK(I)V

    .line 503
    const/4 v0, -0x1

    goto :goto_0

    .line 507
    :cond_2
    iput-object p2, p0, Lcom/tencent/mm/w/y;->cjh:Lcom/tencent/mm/n/m;

    .line 508
    iget-object v0, p0, Lcom/tencent/mm/w/y;->cke:Lcom/tencent/mm/n/a;

    invoke-virtual {v0}, Lcom/tencent/mm/n/a;->wr()Lcom/tencent/mm/am/a;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/a/ye;

    .line 509
    invoke-static {}, Lcom/tencent/mm/w/ag;->Ba()Lcom/tencent/mm/w/g;

    move-result-object v1

    iget-wide v2, p0, Lcom/tencent/mm/w/y;->cpL:J

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mm/w/g;->E(J)Lcom/tencent/mm/w/e;

    move-result-object v2

    .line 511
    invoke-static {}, Lcom/tencent/mm/w/ag;->Ba()Lcom/tencent/mm/w/g;

    move-result-object v1

    invoke-virtual {v2}, Lcom/tencent/mm/w/e;->AG()J

    move-result-wide v3

    long-to-int v3, v3

    invoke-virtual {v1, v3}, Lcom/tencent/mm/w/g;->dH(I)Lcom/tencent/mm/w/e;

    move-result-object v1

    .line 512
    if-eqz v1, :cond_3

    .line 513
    invoke-virtual {v1}, Lcom/tencent/mm/w/e;->getStatus()I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_5

    .line 514
    const/4 v0, -0x1

    goto :goto_0

    .line 516
    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/tencent/mm/w/e;->getStatus()I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_5

    .line 517
    :cond_4
    const/4 v0, -0x1

    goto :goto_0

    .line 520
    :cond_5
    invoke-static {}, Lcom/tencent/mm/w/ag;->Ba()Lcom/tencent/mm/w/g;

    move-result-object v1

    invoke-virtual {v2}, Lcom/tencent/mm/w/e;->AI()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    const-string v5, ""

    invoke-virtual {v1, v3, v4, v5}, Lcom/tencent/mm/w/g;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 521
    invoke-static {}, Lcom/tencent/mm/w/ag;->Ba()Lcom/tencent/mm/w/g;

    move-result-object v1

    invoke-virtual {v2}, Lcom/tencent/mm/w/e;->AJ()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    const-string v6, ""

    invoke-virtual {v1, v4, v5, v6}, Lcom/tencent/mm/w/g;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 522
    iget-object v1, p0, Lcom/tencent/mm/w/y;->bLP:Lcom/tencent/mm/storage/ak;

    invoke-virtual {v1}, Lcom/tencent/mm/storage/ak;->aCl()Ljava/lang/String;

    move-result-object v5

    iget-wide v6, p0, Lcom/tencent/mm/w/y;->cpL:J

    if-eqz v5, :cond_7

    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-ltz v1, :cond_7

    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Ljunit/framework/Assert;->assertTrue(Z)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 523
    new-instance v1, Lcom/tencent/mm/protocal/a/rw;

    invoke-direct {v1}, Lcom/tencent/mm/protocal/a/rw;-><init>()V

    invoke-virtual {v1, v5}, Lcom/tencent/mm/protocal/a/rw;->sn(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/rw;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/protocal/a/ye;->fYw:Lcom/tencent/mm/protocal/a/rw;

    .line 525
    iget-wide v6, p0, Lcom/tencent/mm/w/y;->startTime:J

    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-nez v1, :cond_6

    .line 526
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/cj;->FD()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/tencent/mm/w/y;->startTime:J

    .line 527
    invoke-virtual {v2}, Lcom/tencent/mm/w/e;->getOffset()I

    move-result v1

    iput v1, p0, Lcom/tencent/mm/w/y;->startOffset:I

    .line 528
    iget v1, p0, Lcom/tencent/mm/w/y;->ctP:I

    const/4 v6, 0x1

    if-ne v1, v6, :cond_8

    sget v1, Lcom/tencent/mm/modelcdntran/CdnTransportEngine;->coM:I

    :goto_2
    iput v1, p0, Lcom/tencent/mm/w/y;->ctS:I

    .line 531
    :cond_6
    iget-object v1, p0, Lcom/tencent/mm/w/y;->bLP:Lcom/tencent/mm/storage/ak;

    invoke-virtual {v1}, Lcom/tencent/mm/storage/ak;->aCl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/model/w;->dc(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/tencent/mm/w/y;->TAG:Ljava/lang/String;

    const-string v4, "cdntra not use cdn user:%s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/tencent/mm/w/y;->bLP:Lcom/tencent/mm/storage/ak;

    invoke-virtual {v8}, Lcom/tencent/mm/storage/ak;->aCl()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v1, v4, v6}, Lcom/tencent/mm/sdk/platformtools/aa;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x0

    :goto_3
    if-eqz v1, :cond_10

    .line 532
    iget-object v0, p0, Lcom/tencent/mm/w/y;->TAG:Ljava/lang/String;

    const-string v1, "cdntra use cdn return -1 for onGYNetEnd clientid:%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v5, v2, v3

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 533
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 522
    :cond_7
    const/4 v1, 0x0

    goto :goto_1

    .line 528
    :cond_8
    sget v1, Lcom/tencent/mm/modelcdntran/CdnTransportEngine;->coN:I

    goto :goto_2

    .line 531
    :cond_9
    invoke-static {}, Lcom/tencent/mm/modelcdntran/j;->yy()Lcom/tencent/mm/modelcdntran/b;

    invoke-static {}, Lcom/tencent/mm/modelcdntran/b;->ys()Z

    move-result v1

    if-nez v1, :cond_a

    invoke-virtual {v2}, Lcom/tencent/mm/w/e;->AN()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/tencent/mm/w/y;->TAG:Ljava/lang/String;

    const-string v4, "cdntra not use cdn flag:%b getCdnInfo:%s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {}, Lcom/tencent/mm/modelcdntran/j;->yy()Lcom/tencent/mm/modelcdntran/b;

    invoke-static {}, Lcom/tencent/mm/modelcdntran/b;->ys()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual {v2}, Lcom/tencent/mm/w/e;->AN()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v1, v4, v6}, Lcom/tencent/mm/sdk/platformtools/aa;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x0

    goto :goto_3

    :cond_a
    const-string v1, "upimg"

    iget-object v6, p0, Lcom/tencent/mm/w/y;->bLP:Lcom/tencent/mm/storage/ak;

    invoke-virtual {v6}, Lcom/tencent/mm/storage/ak;->DL()J

    move-result-wide v6

    iget-object v8, p0, Lcom/tencent/mm/w/y;->bLP:Lcom/tencent/mm/storage/ak;

    invoke-virtual {v8}, Lcom/tencent/mm/storage/ak;->aCl()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/tencent/mm/w/y;->bLP:Lcom/tencent/mm/storage/ak;

    invoke-virtual {v10}, Lcom/tencent/mm/storage/ak;->Bo()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v6, v7, v8, v9}, Lcom/tencent/mm/modelcdntran/h;->a(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/mm/w/y;->ctR:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/mm/w/y;->ctR:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/tencent/mm/w/y;->TAG:Ljava/lang/String;

    const-string v4, "cdntra genClientId failed not use cdn imgLocalId:%d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-wide v8, p0, Lcom/tencent/mm/w/y;->cpL:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v1, v4, v6}, Lcom/tencent/mm/sdk/platformtools/aa;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x0

    goto/16 :goto_3

    :cond_b
    new-instance v6, Lcom/tencent/mm/modelcdntran/m;

    invoke-direct {v6}, Lcom/tencent/mm/modelcdntran/m;-><init>()V

    iget-object v1, p0, Lcom/tencent/mm/w/y;->ctV:Lcom/tencent/mm/modelcdntran/n;

    iput-object v1, v6, Lcom/tencent/mm/modelcdntran/m;->cpJ:Lcom/tencent/mm/modelcdntran/n;

    iget-object v1, p0, Lcom/tencent/mm/w/y;->ctR:Ljava/lang/String;

    iput-object v1, v6, Lcom/tencent/mm/modelcdntran/m;->field_mediaId:Ljava/lang/String;

    iput-object v3, v6, Lcom/tencent/mm/modelcdntran/m;->field_fullpath:Ljava/lang/String;

    iput-object v4, v6, Lcom/tencent/mm/modelcdntran/m;->field_thumbpath:Ljava/lang/String;

    iget v1, p0, Lcom/tencent/mm/w/y;->ctS:I

    iput v1, v6, Lcom/tencent/mm/modelcdntran/m;->field_fileType:I

    iget-object v1, p0, Lcom/tencent/mm/w/y;->bLP:Lcom/tencent/mm/storage/ak;

    invoke-virtual {v1}, Lcom/tencent/mm/storage/ak;->aCl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lcom/tencent/mm/modelcdntran/m;->field_talker:Ljava/lang/String;

    sget v1, Lcom/tencent/mm/modelcdntran/CdnTransportEngine;->coK:I

    iput v1, v6, Lcom/tencent/mm/modelcdntran/m;->field_priority:I

    const/4 v1, 0x0

    iput-boolean v1, v6, Lcom/tencent/mm/modelcdntran/m;->field_needStorage:Z

    const/4 v1, 0x0

    iput-boolean v1, v6, Lcom/tencent/mm/modelcdntran/m;->field_isStreamMedia:Z

    iget-object v1, p0, Lcom/tencent/mm/w/y;->cud:Ljava/lang/String;

    const-string v4, "msg"

    invoke-static {v1, v4}, Lcom/tencent/mm/sdk/platformtools/u;->aL(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    if-eqz v4, :cond_d

    iget v1, p0, Lcom/tencent/mm/w/y;->ctP:I

    const/4 v7, 0x1

    if-eq v1, v7, :cond_c

    const-string v1, ".msg.img.$cdnmidimgurl"

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v6, Lcom/tencent/mm/modelcdntran/m;->field_fileId:Ljava/lang/String;

    const-string v1, ".msg.img.$length"

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v1, v7}, Lcom/tencent/mm/sdk/platformtools/cj;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v6, Lcom/tencent/mm/modelcdntran/m;->field_midFileLength:I

    iput v1, v6, Lcom/tencent/mm/modelcdntran/m;->field_totalLen:I

    :goto_4
    const-string v1, ".msg.img.$aeskey"

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v6, Lcom/tencent/mm/modelcdntran/m;->field_aesKey:Ljava/lang/String;

    :goto_5
    invoke-static {}, Lcom/tencent/mm/modelcdntran/j;->yy()Lcom/tencent/mm/modelcdntran/b;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/tencent/mm/modelcdntran/b;->b(Lcom/tencent/mm/modelcdntran/m;)Z

    move-result v1

    if-nez v1, :cond_e

    iget-object v1, p0, Lcom/tencent/mm/w/y;->TAG:Ljava/lang/String;

    const-string v4, "cdntra addSendTask failed. clientid:%s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/tencent/mm/w/y;->ctR:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-static {v1, v4, v6}, Lcom/tencent/mm/sdk/platformtools/aa;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, ""

    iput-object v1, p0, Lcom/tencent/mm/w/y;->ctR:Ljava/lang/String;

    const/4 v1, 0x0

    goto/16 :goto_3

    :cond_c
    const-string v1, ".msg.img.$cdnbigimgurl"

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v6, Lcom/tencent/mm/modelcdntran/m;->field_fileId:Ljava/lang/String;

    const-string v1, ".msg.img.$length"

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v1, v7}, Lcom/tencent/mm/sdk/platformtools/cj;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v6, Lcom/tencent/mm/modelcdntran/m;->field_midFileLength:I

    const-string v1, ".msg.img.$hdlength"

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v1, v7}, Lcom/tencent/mm/sdk/platformtools/cj;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v6, Lcom/tencent/mm/modelcdntran/m;->field_totalLen:I

    goto :goto_4

    :cond_d
    iget-object v1, p0, Lcom/tencent/mm/w/y;->TAG:Ljava/lang/String;

    const-string v4, "parse cdnInfo failed. [%s]"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v2}, Lcom/tencent/mm/w/e;->AN()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v1, v4, v7}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    :cond_e
    invoke-virtual {v2}, Lcom/tencent/mm/w/e;->AN()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/sdk/platformtools/cj;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_f

    const-string v1, "CDNINFO_SEND"

    invoke-virtual {v2, v1}, Lcom/tencent/mm/w/e;->fT(Ljava/lang/String;)V

    const/16 v1, 0x1000

    invoke-virtual {v2, v1}, Lcom/tencent/mm/w/e;->cL(I)V

    invoke-static {}, Lcom/tencent/mm/w/ag;->Ba()Lcom/tencent/mm/w/g;

    move-result-object v1

    iget-wide v6, p0, Lcom/tencent/mm/w/y;->cpL:J

    invoke-virtual {v1, v6, v7, v2}, Lcom/tencent/mm/w/g;->a(JLcom/tencent/mm/w/e;)I

    :cond_f
    const/4 v1, 0x1

    goto/16 :goto_3

    .line 536
    :cond_10
    invoke-virtual {v2}, Lcom/tencent/mm/w/e;->AD()I

    move-result v1

    .line 537
    invoke-virtual {p0}, Lcom/tencent/mm/w/y;->we()I

    move-result v4

    if-lt v1, v4, :cond_11

    .line 538
    iget-object v0, p0, Lcom/tencent/mm/w/y;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "doScene limit net time:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    iget-wide v0, p0, Lcom/tencent/mm/w/y;->ctN:J

    long-to-int v0, v0

    invoke-static {v0}, Lcom/tencent/mm/w/o;->dK(I)V

    .line 540
    const/4 v0, -0x1

    goto/16 :goto_0

    .line 543
    :cond_11
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Lcom/tencent/mm/w/e;->dw(I)V

    .line 544
    const/16 v1, 0x200

    invoke-virtual {v2, v1}, Lcom/tencent/mm/w/e;->cL(I)V

    .line 545
    invoke-static {}, Lcom/tencent/mm/w/ag;->Ba()Lcom/tencent/mm/w/g;

    move-result-object v1

    iget-wide v4, p0, Lcom/tencent/mm/w/y;->cpL:J

    invoke-virtual {v1, v4, v5, v2}, Lcom/tencent/mm/w/g;->a(JLcom/tencent/mm/w/e;)I

    .line 547
    invoke-virtual {v2}, Lcom/tencent/mm/w/e;->vR()I

    move-result v1

    invoke-virtual {v2}, Lcom/tencent/mm/w/e;->getOffset()I

    move-result v4

    sub-int/2addr v1, v4

    .line 548
    iget v4, p0, Lcom/tencent/mm/w/y;->cub:I

    if-le v1, v4, :cond_12

    .line 549
    iget v1, p0, Lcom/tencent/mm/w/y;->cub:I

    .line 552
    :cond_12
    invoke-static {v3}, Lcom/tencent/mm/a/c;->ar(Ljava/lang/String;)I

    move-result v4

    .line 553
    const/high16 v5, 0xa0

    if-le v4, v5, :cond_13

    .line 554
    iget-object v0, p0, Lcom/tencent/mm/w/y;->TAG:Ljava/lang/String;

    const-string v1, "doScene, file size is too large"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    const/4 v0, -0x1

    goto/16 :goto_0

    .line 558
    :cond_13
    invoke-virtual {v2}, Lcom/tencent/mm/w/e;->getOffset()I

    move-result v4

    invoke-static {v3, v4, v1}, Lcom/tencent/mm/a/c;->g(Ljava/lang/String;II)[B

    move-result-object v1

    .line 559
    if-eqz v1, :cond_14

    array-length v3, v1

    if-gtz v3, :cond_15

    .line 560
    :cond_14
    const/4 v0, -0x1

    goto/16 :goto_0

    .line 563
    :cond_15
    array-length v3, v1

    .line 564
    iput v3, v0, Lcom/tencent/mm/protocal/a/ye;->fAU:I

    .line 565
    invoke-virtual {v2}, Lcom/tencent/mm/w/e;->getOffset()I

    move-result v2

    iput v2, v0, Lcom/tencent/mm/protocal/a/ye;->fEd:I

    .line 566
    new-instance v2, Lcom/tencent/mm/protocal/a/rv;

    invoke-direct {v2}, Lcom/tencent/mm/protocal/a/rv;-><init>()V

    invoke-virtual {v2, v1}, Lcom/tencent/mm/protocal/a/rv;->bM([B)Lcom/tencent/mm/protocal/a/rv;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/protocal/a/ye;->fAJ:Lcom/tencent/mm/protocal/a/rv;

    .line 568
    iget-object v0, p0, Lcom/tencent/mm/w/y;->ctQ:Lcom/tencent/mm/modelstat/c;

    if-eqz v0, :cond_16

    .line 569
    iget-object v0, p0, Lcom/tencent/mm/w/y;->ctQ:Lcom/tencent/mm/modelstat/c;

    invoke-virtual {v0}, Lcom/tencent/mm/modelstat/c;->CN()V

    .line 571
    :cond_16
    iget-object v0, p0, Lcom/tencent/mm/w/y;->cke:Lcom/tencent/mm/n/a;

    invoke-virtual {p0, p1, v0, p0}, Lcom/tencent/mm/w/y;->a(Lcom/tencent/mm/network/r;Lcom/tencent/mm/network/aj;Lcom/tencent/mm/network/ab;)I

    move-result v0

    .line 572
    if-gez v0, :cond_0

    .line 573
    iget-object v1, p0, Lcom/tencent/mm/w/y;->TAG:Ljava/lang/String;

    const-string v2, "doScene netId error"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    iget-wide v1, p0, Lcom/tencent/mm/w/y;->ctN:J

    long-to-int v1, v1

    invoke-static {v1}, Lcom/tencent/mm/w/o;->dK(I)V

    goto/16 :goto_0
.end method

.method protected final a(Lcom/tencent/mm/network/aj;)Lcom/tencent/mm/n/aa;
    .locals 1
    .parameter

    .prologue
    .line 329
    sget-object v0, Lcom/tencent/mm/n/aa;->cmh:Lcom/tencent/mm/n/aa;

    return-object v0
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
    .line 600
    check-cast p5, Lcom/tencent/mm/n/a;

    invoke-virtual {p5}, Lcom/tencent/mm/n/a;->ws()Lcom/tencent/mm/am/a;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/a/yf;

    .line 602
    iget-object v1, p0, Lcom/tencent/mm/w/y;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cdntra onGYNetEnd errtype:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " errcode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " useCdnTransClientId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/w/y;->ctR:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    const/4 v1, 0x3

    if-ne p2, v1, :cond_1

    const/4 v1, -0x1

    if-ne p3, v1, :cond_1

    iget-object v1, p0, Lcom/tencent/mm/w/y;->ctR:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 605
    iget-object v0, p0, Lcom/tencent/mm/w/y;->TAG:Ljava/lang/String;

    const-string v1, "cdntra using cdn trans,  wait cdn service callback! clientid:%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/tencent/mm/w/y;->ctR:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 668
    :cond_0
    :goto_0
    return-void

    .line 609
    :cond_1
    if-nez p2, :cond_2

    if-eqz p3, :cond_3

    .line 610
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/w/y;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onGYNetEnd failed errtype:"

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

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    iget-wide v0, p0, Lcom/tencent/mm/w/y;->ctN:J

    long-to-int v0, v0

    invoke-static {v0}, Lcom/tencent/mm/w/o;->dK(I)V

    .line 612
    iget-wide v0, p0, Lcom/tencent/mm/w/y;->ctN:J

    long-to-int v0, v0

    invoke-static {v0}, Lcom/tencent/mm/w/o;->dJ(I)Z

    .line 613
    sget-object v0, Lcom/tencent/mm/plugin/d/c/m;->dZN:Lcom/tencent/mm/plugin/d/c/m;

    const/16 v1, 0x28b4

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-wide v4, p0, Lcom/tencent/mm/w/y;->startTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/cj;->FD()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/mm/modelcdntran/h;->M(Landroid/content/Context;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget v4, p0, Lcom/tencent/mm/w/y;->ctS:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/plugin/d/c/m;->d(I[Ljava/lang/Object;)V

    .line 614
    iget-object v0, p0, Lcom/tencent/mm/w/y;->cjh:Lcom/tencent/mm/n/m;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/n/m;->a(IILjava/lang/String;Lcom/tencent/mm/n/x;)V

    .line 615
    iget-object v0, p0, Lcom/tencent/mm/w/y;->cuc:Lcom/tencent/mm/w/ad;

    if-eqz v0, :cond_0

    .line 616
    iget-object v0, p0, Lcom/tencent/mm/w/y;->cuc:Lcom/tencent/mm/w/ad;

    invoke-interface {v0}, Lcom/tencent/mm/w/ad;->AS()V

    goto/16 :goto_0

    .line 621
    :cond_3
    iget v1, v0, Lcom/tencent/mm/protocal/a/yf;->fAU:I

    iput v1, p0, Lcom/tencent/mm/w/y;->cub:I

    .line 622
    iget v1, p0, Lcom/tencent/mm/w/y;->cub:I

    const/16 v2, 0x4000

    if-le v1, v2, :cond_4

    .line 623
    const/16 v1, 0x4000

    iput v1, p0, Lcom/tencent/mm/w/y;->cub:I

    .line 629
    :cond_4
    invoke-static {}, Lcom/tencent/mm/w/ag;->Ba()Lcom/tencent/mm/w/g;

    move-result-object v1

    iget-wide v2, p0, Lcom/tencent/mm/w/y;->cpL:J

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mm/w/g;->E(J)Lcom/tencent/mm/w/e;

    move-result-object v1

    .line 630
    iget-object v2, p0, Lcom/tencent/mm/w/y;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onGYNetEnd localId:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/tencent/mm/w/y;->cpL:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  totalLen:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/tencent/mm/w/e;->vR()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " offSet:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/tencent/mm/w/e;->getOffset()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    iget v2, v0, Lcom/tencent/mm/protocal/a/yf;->fEd:I

    if-ltz v2, :cond_5

    iget v2, v0, Lcom/tencent/mm/protocal/a/yf;->fEd:I

    invoke-virtual {v1}, Lcom/tencent/mm/w/e;->vR()I

    move-result v3

    if-le v2, v3, :cond_6

    invoke-virtual {v1}, Lcom/tencent/mm/w/e;->vR()I

    move-result v2

    if-lez v2, :cond_6

    .line 632
    :cond_5
    iget-object v2, p0, Lcom/tencent/mm/w/y;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onGYNetEnd invalid server return value : startPos = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, Lcom/tencent/mm/protocal/a/yf;->fEd:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " img totalLen = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/tencent/mm/w/e;->vR()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    iget-wide v0, p0, Lcom/tencent/mm/w/y;->ctN:J

    long-to-int v0, v0

    invoke-static {v0}, Lcom/tencent/mm/w/o;->dK(I)V

    .line 634
    iget-wide v0, p0, Lcom/tencent/mm/w/y;->ctN:J

    long-to-int v0, v0

    invoke-static {v0}, Lcom/tencent/mm/w/o;->dJ(I)Z

    .line 635
    sget-object v0, Lcom/tencent/mm/plugin/d/c/m;->dZN:Lcom/tencent/mm/plugin/d/c/m;

    const/16 v1, 0x28b4

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, -0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-wide v4, p0, Lcom/tencent/mm/w/y;->startTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/cj;->FD()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/mm/modelcdntran/h;->M(Landroid/content/Context;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget v4, p0, Lcom/tencent/mm/w/y;->ctS:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/plugin/d/c/m;->d(I[Ljava/lang/Object;)V

    .line 637
    iget-object v0, p0, Lcom/tencent/mm/w/y;->cjh:Lcom/tencent/mm/n/m;

    const/4 v1, 0x4

    const/4 v2, -0x2

    const-string v3, ""

    invoke-interface {v0, v1, v2, v3, p0}, Lcom/tencent/mm/n/m;->a(IILjava/lang/String;Lcom/tencent/mm/n/x;)V

    .line 638
    iget-object v0, p0, Lcom/tencent/mm/w/y;->cuc:Lcom/tencent/mm/w/ad;

    if-eqz v0, :cond_0

    .line 639
    iget-object v0, p0, Lcom/tencent/mm/w/y;->cuc:Lcom/tencent/mm/w/ad;

    invoke-interface {v0}, Lcom/tencent/mm/w/ad;->AS()V

    goto/16 :goto_0

    .line 647
    :cond_6
    iget v2, v0, Lcom/tencent/mm/protocal/a/yf;->fEd:I

    invoke-virtual {v1}, Lcom/tencent/mm/w/e;->getOffset()I

    move-result v3

    if-lt v2, v3, :cond_7

    invoke-static {v1}, Lcom/tencent/mm/w/f;->b(Lcom/tencent/mm/w/e;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget v2, p0, Lcom/tencent/mm/w/y;->cub:I

    if-gtz v2, :cond_8

    .line 648
    :cond_7
    iget-object v2, p0, Lcom/tencent/mm/w/y;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onGYNetEnd invalid data startPos = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, Lcom/tencent/mm/protocal/a/yf;->fEd:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " totalLen = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/tencent/mm/w/e;->vR()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " off:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/tencent/mm/w/e;->getOffset()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    iget-wide v0, p0, Lcom/tencent/mm/w/y;->ctN:J

    long-to-int v0, v0

    invoke-static {v0}, Lcom/tencent/mm/w/o;->dK(I)V

    .line 650
    iget-wide v0, p0, Lcom/tencent/mm/w/y;->ctN:J

    long-to-int v0, v0

    invoke-static {v0}, Lcom/tencent/mm/w/o;->dJ(I)Z

    .line 651
    iget-object v0, p0, Lcom/tencent/mm/w/y;->cjh:Lcom/tencent/mm/n/m;

    const/4 v1, 0x4

    const/4 v2, -0x1

    const-string v3, ""

    invoke-interface {v0, v1, v2, v3, p0}, Lcom/tencent/mm/n/m;->a(IILjava/lang/String;Lcom/tencent/mm/n/x;)V

    .line 652
    iget-object v0, p0, Lcom/tencent/mm/w/y;->cuc:Lcom/tencent/mm/w/ad;

    if-eqz v0, :cond_0

    .line 653
    iget-object v0, p0, Lcom/tencent/mm/w/y;->cuc:Lcom/tencent/mm/w/ad;

    invoke-interface {v0}, Lcom/tencent/mm/w/ad;->AS()V

    goto/16 :goto_0

    .line 657
    :cond_8
    const-string v2, "ImgInfoLogic"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "resp.rImpl.getStartPos() "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v0, Lcom/tencent/mm/protocal/a/yf;->fEd:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    iget v2, v0, Lcom/tencent/mm/protocal/a/yf;->fEd:I

    iget v3, v0, Lcom/tencent/mm/protocal/a/yf;->fzo:I

    iget v0, v0, Lcom/tencent/mm/protocal/a/yf;->fzy:I

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/tencent/mm/w/y;->a(Lcom/tencent/mm/w/e;III)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 660
    invoke-virtual {p0}, Lcom/tencent/mm/w/y;->wM()Lcom/tencent/mm/network/r;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/w/y;->cjh:Lcom/tencent/mm/n/m;

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/w/y;->a(Lcom/tencent/mm/network/r;Lcom/tencent/mm/n/m;)I

    move-result v0

    if-gez v0, :cond_0

    .line 661
    iget-wide v0, p0, Lcom/tencent/mm/w/y;->ctN:J

    long-to-int v0, v0

    invoke-static {v0}, Lcom/tencent/mm/w/o;->dJ(I)Z

    .line 662
    iget-object v0, p0, Lcom/tencent/mm/w/y;->cjh:Lcom/tencent/mm/n/m;

    const/4 v1, 0x3

    const/4 v2, -0x1

    const-string v3, ""

    invoke-interface {v0, v1, v2, v3, p0}, Lcom/tencent/mm/n/m;->a(IILjava/lang/String;Lcom/tencent/mm/n/x;)V

    .line 663
    iget-object v0, p0, Lcom/tencent/mm/w/y;->cuc:Lcom/tencent/mm/w/ad;

    if-eqz v0, :cond_0

    .line 664
    iget-object v0, p0, Lcom/tencent/mm/w/y;->cuc:Lcom/tencent/mm/w/ad;

    invoke-interface {v0}, Lcom/tencent/mm/w/ad;->AS()V

    goto/16 :goto_0
.end method

.method public final getType()I
    .locals 1

    .prologue
    .line 581
    const/16 v0, 0x6e

    return v0
.end method

.method protected final we()I
    .locals 1

    .prologue
    .line 591
    iget v0, p0, Lcom/tencent/mm/w/y;->ctP:I

    if-nez v0, :cond_0

    .line 592
    const/16 v0, 0x64

    .line 595
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x546

    goto :goto_0
.end method
