.class public final Lcom/tencent/mm/storage/ao;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private bLN:I

.field private bNk:I

.field private bTN:I

.field private bTY:Ljava/lang/String;

.field private cif:Ljava/lang/String;

.field private cjJ:Ljava/lang/String;

.field private cjK:Ljava/lang/String;

.field private cjL:Ljava/lang/String;

.field private content:Ljava/lang/String;

.field private crH:Ljava/lang/String;

.field private crI:Ljava/lang/String;

.field private crJ:Ljava/lang/String;

.field private crM:Ljava/lang/String;

.field private frH:Ljava/lang/String;

.field private frx:Ljava/lang/String;

.field private ghJ:Ljava/lang/String;

.field private ghK:I

.field private ghL:Ljava/lang/String;

.field private ghM:Ljava/lang/String;

.field private ghN:J

.field private ghQ:Ljava/lang/String;

.field private ghR:Ljava/lang/String;

.field private ghZ:I

.field private gia:Ljava/lang/String;

.field private gib:Ljava/lang/String;

.field private wN:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 247
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/storage/ao;->ghJ:Ljava/lang/String;

    .line 248
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/storage/ao;->wN:Ljava/lang/String;

    .line 249
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/storage/ao;->crH:Ljava/lang/String;

    .line 250
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/storage/ao;->cif:Ljava/lang/String;

    .line 251
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/storage/ao;->crI:Ljava/lang/String;

    .line 252
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/storage/ao;->content:Ljava/lang/String;

    .line 253
    iput v2, p0, Lcom/tencent/mm/storage/ao;->ghK:I

    .line 254
    iput v2, p0, Lcom/tencent/mm/storage/ao;->bLN:I

    .line 255
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/storage/ao;->ghL:Ljava/lang/String;

    .line 256
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/storage/ao;->ghM:Ljava/lang/String;

    .line 257
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/mm/storage/ao;->ghN:J

    .line 258
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/storage/ao;->crJ:Ljava/lang/String;

    .line 259
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/storage/ao;->crM:Ljava/lang/String;

    .line 265
    iput v2, p0, Lcom/tencent/mm/storage/ao;->ghZ:I

    .line 269
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/storage/ao;->ghQ:Ljava/lang/String;

    .line 270
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/storage/ao;->ghR:Ljava/lang/String;

    .line 276
    return-void
.end method

.method public static uU(Ljava/lang/String;)Lcom/tencent/mm/storage/ao;
    .locals 7
    .parameter

    .prologue
    .line 279
    new-instance v1, Lcom/tencent/mm/storage/ao;

    invoke-direct {v1}, Lcom/tencent/mm/storage/ao;-><init>()V

    .line 280
    const-string v0, "msg"

    invoke-static {p0, v0}, Lcom/tencent/mm/sdk/platformtools/u;->aL(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 282
    if-eqz v2, :cond_3

    .line 284
    :try_start_0
    const-string v0, ".msg.$fromusername"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/tencent/mm/storage/ao;->ghJ:Ljava/lang/String;

    .line 285
    const-string v0, ".msg.$alias"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/tencent/mm/storage/ao;->wN:Ljava/lang/String;

    .line 286
    const-string v0, ".msg.$fromnickname"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/tencent/mm/storage/ao;->crH:Ljava/lang/String;

    .line 287
    const-string v0, ".msg.$fullpy"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/tencent/mm/storage/ao;->cif:Ljava/lang/String;

    .line 288
    const-string v0, ".msg.$shortpy"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/tencent/mm/storage/ao;->crI:Ljava/lang/String;

    .line 289
    const-string v0, ".msg.$content"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/tencent/mm/storage/ao;->content:Ljava/lang/String;

    .line 290
    const-string v0, ".msg.$imagestatus"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lcom/tencent/mm/storage/ao;->ghK:I

    .line 291
    const-string v0, ".msg.$scene"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lcom/tencent/mm/storage/ao;->bLN:I

    .line 292
    const-string v0, ".msg.$mhash"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/tencent/mm/storage/ao;->ghL:Ljava/lang/String;

    .line 293
    const-string v0, ".msg.$mfullhash"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/tencent/mm/storage/ao;->ghM:Ljava/lang/String;

    .line 294
    const-string v0, ".msg.$qqnum"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, ".msg.$qqnum"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 295
    const-string v0, ".msg.$qqnum"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iput-wide v3, v1, Lcom/tencent/mm/storage/ao;->ghN:J

    .line 297
    :cond_0
    const-string v0, ".msg.$qqnickname"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/tencent/mm/storage/ao;->crJ:Ljava/lang/String;

    .line 298
    const-string v0, ".msg.$qqremark"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/tencent/mm/storage/ao;->crM:Ljava/lang/String;

    .line 299
    const-string v0, ".msg.$sign"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/tencent/mm/storage/ao;->bTY:Ljava/lang/String;

    .line 300
    const-string v0, ".msg.$sex"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, ".msg.$sex"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 301
    const-string v0, ".msg.$sex"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lcom/tencent/mm/storage/ao;->bTN:I

    .line 303
    :cond_1
    const-string v0, ".msg.$city"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/tencent/mm/storage/ao;->cjK:Ljava/lang/String;

    .line 304
    const-string v0, ".msg.$province"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/tencent/mm/storage/ao;->cjL:Ljava/lang/String;

    .line 305
    const-string v0, ".msg.$country"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/tencent/mm/storage/ao;->cjJ:Ljava/lang/String;

    .line 306
    const-string v0, ".msg.$snsflag"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 307
    const-string v0, ".msg.$snsflag"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lcom/tencent/mm/storage/ao;->ghZ:I

    .line 309
    const-string v0, ".msg.$snsbgimgid"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/tencent/mm/storage/ao;->gia:Ljava/lang/String;

    .line 311
    :cond_2
    const-string v0, ".msg.$ticket"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/tencent/mm/storage/ao;->frx:Ljava/lang/String;

    .line 312
    const-string v0, "MicroMsg.MsgInfo"

    const-string v3, "dkverify ticket:%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, v1, Lcom/tencent/mm/storage/ao;->frx:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v0, v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 313
    const-string v0, ".msg.$bigheadimgurl"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/mm/storage/ao;->ghQ:Ljava/lang/String;

    .line 314
    const-string v0, ".msg.$smallheadimgurl"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/mm/storage/ao;->ghR:Ljava/lang/String;

    .line 315
    const-string v0, ".msg.$opcode"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "0"

    invoke-static {v0, v3}, Lcom/tencent/mm/sdk/platformtools/cj;->R(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lcom/tencent/mm/storage/ao;->bNk:I

    .line 316
    const-string v0, ".msg.$encryptusername"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/mm/storage/ao;->gib:Ljava/lang/String;

    .line 318
    const-string v0, ".msg.$googlecontact"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/mm/storage/ao;->frH:Ljava/lang/String;

    .line 319
    const-string v0, "MicroMsg.MsgInfo"

    const-string v2, "dkavatar VerifyContent user:[%s] big:[%s] sm:[%s]"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, v1, Lcom/tencent/mm/storage/ao;->ghJ:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, v1, Lcom/tencent/mm/storage/ao;->ghQ:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, v1, Lcom/tencent/mm/storage/ao;->ghR:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    :cond_3
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public final Ah()Ljava/lang/String;
    .locals 1

    .prologue
    .line 450
    iget-object v0, p0, Lcom/tencent/mm/storage/ao;->crJ:Ljava/lang/String;

    return-object v0
.end method

.method public final Gf()I
    .locals 1

    .prologue
    .line 418
    iget v0, p0, Lcom/tencent/mm/storage/ao;->bLN:I

    return v0
.end method

.method public final aCB()Ljava/lang/String;
    .locals 1

    .prologue
    .line 569
    iget-object v0, p0, Lcom/tencent/mm/storage/ao;->frH:Ljava/lang/String;

    return-object v0
.end method

.method public final aCK()Ljava/lang/String;
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/tencent/mm/storage/ao;->frx:Ljava/lang/String;

    return-object v0
.end method

.method public final aCL()I
    .locals 1

    .prologue
    .line 529
    iget v0, p0, Lcom/tencent/mm/storage/ao;->ghZ:I

    return v0
.end method

.method public final aCM()Ljava/lang/String;
    .locals 1

    .prologue
    .line 545
    iget-object v0, p0, Lcom/tencent/mm/storage/ao;->gia:Ljava/lang/String;

    return-object v0
.end method

.method public final aCN()I
    .locals 1

    .prologue
    .line 557
    iget v0, p0, Lcom/tencent/mm/storage/ao;->bNk:I

    return v0
.end method

.method public final aCO()Ljava/lang/String;
    .locals 1

    .prologue
    .line 561
    iget-object v0, p0, Lcom/tencent/mm/storage/ao;->gib:Ljava/lang/String;

    return-object v0
.end method

.method public final aCs()Ljava/lang/String;
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/tencent/mm/storage/ao;->ghQ:Ljava/lang/String;

    return-object v0
.end method

.method public final aCt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/tencent/mm/storage/ao;->ghR:Ljava/lang/String;

    return-object v0
.end method

.method public final aCu()Ljava/lang/String;
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/tencent/mm/storage/ao;->ghJ:Ljava/lang/String;

    return-object v0
.end method

.method public final aCv()I
    .locals 1

    .prologue
    .line 410
    iget v0, p0, Lcom/tencent/mm/storage/ao;->ghK:I

    return v0
.end method

.method public final aCw()Ljava/lang/String;
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcom/tencent/mm/storage/ao;->ghL:Ljava/lang/String;

    return-object v0
.end method

.method public final aCx()J
    .locals 2

    .prologue
    .line 442
    iget-wide v0, p0, Lcom/tencent/mm/storage/ao;->ghN:J

    return-wide v0
.end method

.method public final aCz()Ljava/lang/String;
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lcom/tencent/mm/storage/ao;->ghM:Ljava/lang/String;

    return-object v0
.end method

.method public final getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/tencent/mm/storage/ao;->content:Ljava/lang/String;

    return-object v0
.end method

.method public final getDisplayName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 377
    iget-object v0, p0, Lcom/tencent/mm/storage/ao;->crH:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/storage/ao;->crH:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/tencent/mm/storage/ao;->crH:Ljava/lang/String;

    .line 382
    :goto_0
    return-object v0

    .line 380
    :cond_0
    const-string v0, "MicroMsg.MsgInfo"

    const-string v1, "username is nullOrNil"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->aM(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    iget-object v0, p0, Lcom/tencent/mm/storage/ao;->ghJ:Ljava/lang/String;

    goto :goto_0
.end method

.method public final kn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/tencent/mm/storage/ao;->crH:Ljava/lang/String;

    return-object v0
.end method

.method public final rB()Ljava/lang/String;
    .locals 1

    .prologue
    .line 490
    iget-object v0, p0, Lcom/tencent/mm/storage/ao;->bTY:Ljava/lang/String;

    return-object v0
.end method

.method public final rC()Ljava/lang/String;
    .locals 2

    .prologue
    .line 509
    iget-object v0, p0, Lcom/tencent/mm/storage/ao;->cjJ:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 510
    iget-object v0, p0, Lcom/tencent/mm/storage/ao;->cjL:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/storage/ao;->cjK:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/storage/ao;->cjJ:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/storage/RegionCodeDecoder;->vw(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 511
    invoke-static {}, Lcom/tencent/mm/storage/RegionCodeDecoder;->aDe()Lcom/tencent/mm/storage/RegionCodeDecoder;

    iget-object v0, p0, Lcom/tencent/mm/storage/ao;->cjJ:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/mm/storage/ao;->cjL:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tencent/mm/storage/RegionCodeDecoder;->aW(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 517
    :goto_0
    return-object v0

    .line 514
    :cond_0
    invoke-static {}, Lcom/tencent/mm/storage/RegionCodeDecoder;->aDe()Lcom/tencent/mm/storage/RegionCodeDecoder;

    iget-object v0, p0, Lcom/tencent/mm/storage/ao;->cjJ:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/storage/RegionCodeDecoder;->vy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 517
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/storage/ao;->cjL:Ljava/lang/String;

    goto :goto_0
.end method

.method public final rD()Ljava/lang/String;
    .locals 3

    .prologue
    .line 494
    iget-object v0, p0, Lcom/tencent/mm/storage/ao;->cjJ:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/storage/ao;->cjL:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 495
    iget-object v0, p0, Lcom/tencent/mm/storage/ao;->cjK:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 496
    invoke-static {}, Lcom/tencent/mm/storage/RegionCodeDecoder;->aDe()Lcom/tencent/mm/storage/RegionCodeDecoder;

    iget-object v0, p0, Lcom/tencent/mm/storage/ao;->cjJ:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/mm/storage/ao;->cjL:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tencent/mm/storage/RegionCodeDecoder;->aW(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 501
    :goto_0
    return-object v0

    .line 498
    :cond_0
    invoke-static {}, Lcom/tencent/mm/storage/RegionCodeDecoder;->aDe()Lcom/tencent/mm/storage/RegionCodeDecoder;

    iget-object v0, p0, Lcom/tencent/mm/storage/ao;->cjJ:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/mm/storage/ao;->cjL:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/mm/storage/ao;->cjK:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/storage/RegionCodeDecoder;->x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 501
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/storage/ao;->cjK:Ljava/lang/String;

    goto :goto_0
.end method

.method public final rk()I
    .locals 1

    .prologue
    .line 482
    iget v0, p0, Lcom/tencent/mm/storage/ao;->bTN:I

    return v0
.end method

.method public final rn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/tencent/mm/storage/ao;->crI:Ljava/lang/String;

    return-object v0
.end method

.method public final ro()Ljava/lang/String;
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/tencent/mm/storage/ao;->cif:Ljava/lang/String;

    return-object v0
.end method

.method public final rp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/tencent/mm/storage/ao;->wN:Ljava/lang/String;

    return-object v0
.end method
