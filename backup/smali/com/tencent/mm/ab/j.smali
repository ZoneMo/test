.class public final Lcom/tencent/mm/ab/j;
.super Lcom/tencent/mm/n/x;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/n/ab;
.implements Lcom/tencent/mm/network/ab;


# instance fields
.field private bRm:I

.field private cjh:Lcom/tencent/mm/n/m;

.field private cke:Lcom/tencent/mm/n/a;

.field private cvT:Ljava/util/List;

.field private cvU:Z


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Lcom/tencent/mm/n/x;-><init>()V

    .line 42
    iput-boolean v1, p0, Lcom/tencent/mm/ab/j;->cvU:Z

    .line 45
    iput p1, p0, Lcom/tencent/mm/ab/j;->bRm:I

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ab/j;->cvT:Ljava/util/List;

    .line 47
    iput-boolean v1, p0, Lcom/tencent/mm/ab/j;->cvU:Z

    .line 48
    const-string v0, "MicroMsg.NetSceneGetPackageList"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "dkregcode:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method private a(Lcom/tencent/mm/protocal/a/pr;)Lcom/tencent/mm/ab/k;
    .locals 2
    .parameter

    .prologue
    .line 112
    new-instance v0, Lcom/tencent/mm/ab/k;

    invoke-direct {v0}, Lcom/tencent/mm/ab/k;-><init>()V

    .line 113
    iget v1, p1, Lcom/tencent/mm/protocal/a/pr;->fGp:I

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ab/k;->setId(I)V

    .line 114
    iget v1, p1, Lcom/tencent/mm/protocal/a/pr;->fFT:I

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ab/k;->setVersion(I)V

    .line 115
    iget-object v1, p1, Lcom/tencent/mm/protocal/a/pr;->Th:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ab/k;->setName(Ljava/lang/String;)V

    .line 116
    iget v1, p1, Lcom/tencent/mm/protocal/a/pr;->fSd:I

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ab/k;->setSize(I)V

    .line 117
    iget-object v1, p1, Lcom/tencent/mm/protocal/a/pr;->fFC:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ab/k;->gg(Ljava/lang/String;)V

    .line 118
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ab/k;->setStatus(I)V

    .line 119
    iget v1, p0, Lcom/tencent/mm/ab/j;->bRm:I

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ab/k;->dO(I)V

    .line 120
    return-object v0
.end method

.method private d(Ljava/util/LinkedList;)V
    .locals 7
    .parameter

    .prologue
    .line 209
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-gtz v0, :cond_2

    .line 210
    :cond_0
    const-string v0, "MicroMsg.NetSceneGetPackageList"

    const-string v1, "empty upload speex config list"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    :cond_1
    return-void

    .line 214
    :cond_2
    invoke-static {}, Lcom/tencent/mm/ab/r;->BM()Lcom/tencent/mm/ab/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/ab/l;->BJ()Ljava/lang/String;

    move-result-object v2

    .line 215
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 216
    invoke-virtual {p1, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/a/pr;

    .line 217
    invoke-static {}, Lcom/tencent/mm/ab/r;->BM()Lcom/tencent/mm/ab/l;

    move-result-object v3

    iget v4, v0, Lcom/tencent/mm/protocal/a/pr;->fGp:I

    iget v5, p0, Lcom/tencent/mm/ab/j;->bRm:I

    invoke-virtual {v3, v4, v5}, Lcom/tencent/mm/ab/l;->G(II)Lcom/tencent/mm/ab/k;

    move-result-object v3

    .line 218
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/tencent/mm/ab/k;->getVersion()I

    move-result v4

    iget v5, v0, Lcom/tencent/mm/protocal/a/pr;->fFT:I

    if-eq v4, v5, :cond_4

    .line 219
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/tencent/mm/ab/r;->BM()Lcom/tencent/mm/ab/l;

    iget v5, v0, Lcom/tencent/mm/protocal/a/pr;->fGp:I

    iget v6, p0, Lcom/tencent/mm/ab/j;->bRm:I

    invoke-static {v5, v6}, Lcom/tencent/mm/ab/l;->I(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/mm/a/c;->deleteFile(Ljava/lang/String;)Z

    .line 220
    invoke-direct {p0, v0}, Lcom/tencent/mm/ab/j;->a(Lcom/tencent/mm/protocal/a/pr;)Lcom/tencent/mm/ab/k;

    move-result-object v4

    .line 221
    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Lcom/tencent/mm/ab/k;->cL(I)V

    .line 223
    if-nez v3, :cond_7

    .line 224
    invoke-static {}, Lcom/tencent/mm/ab/r;->BM()Lcom/tencent/mm/ab/l;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/tencent/mm/ab/l;->a(Lcom/tencent/mm/ab/k;)Z

    .line 229
    :goto_1
    new-instance v3, Lcom/tencent/mm/ab/i;

    invoke-virtual {v4}, Lcom/tencent/mm/ab/k;->getId()I

    move-result v4

    const/16 v5, 0x9

    invoke-direct {v3, v4, v5}, Lcom/tencent/mm/ab/i;-><init>(II)V

    .line 230
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    .line 233
    :cond_4
    iget-object v3, v0, Lcom/tencent/mm/protocal/a/pr;->fzU:Lcom/tencent/mm/protocal/a/rv;

    invoke-static {v3}, Lcom/tencent/mm/platformtools/an;->a(Lcom/tencent/mm/protocal/a/rv;)[B

    move-result-object v3

    if-eqz v3, :cond_5

    .line 234
    new-instance v3, Ljava/lang/String;

    iget-object v4, v0, Lcom/tencent/mm/protocal/a/pr;->fzU:Lcom/tencent/mm/protocal/a/rv;

    invoke-static {v4}, Lcom/tencent/mm/platformtools/an;->a(Lcom/tencent/mm/protocal/a/rv;)[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    .line 235
    const-string v4, "MicroMsg.NetSceneGetPackageList"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "xml:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    :cond_5
    iget-object v3, v0, Lcom/tencent/mm/protocal/a/pr;->fSe:Lcom/tencent/mm/protocal/a/rv;

    invoke-static {v3}, Lcom/tencent/mm/platformtools/an;->a(Lcom/tencent/mm/protocal/a/rv;)[B

    move-result-object v3

    if-eqz v3, :cond_6

    .line 239
    new-instance v3, Ljava/lang/String;

    iget-object v4, v0, Lcom/tencent/mm/protocal/a/pr;->fSe:Lcom/tencent/mm/protocal/a/rv;

    invoke-static {v4}, Lcom/tencent/mm/platformtools/an;->a(Lcom/tencent/mm/protocal/a/rv;)[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    .line 240
    const-string v4, "MicroMsg.NetSceneGetPackageList"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "xml2:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    :cond_6
    const-string v3, "MicroMsg.NetSceneGetPackageList"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "xml3:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    const-string v3, "MicroMsg.NetSceneGetPackageList"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "xml4:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/tencent/mm/protocal/a/pr;->Th:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    const-string v3, "MicroMsg.NetSceneGetPackageList"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "xml5:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/pr;->fFC:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    .line 226
    :cond_7
    invoke-static {}, Lcom/tencent/mm/ab/r;->BM()Lcom/tencent/mm/ab/l;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/tencent/mm/ab/l;->b(Lcom/tencent/mm/ab/k;)Z

    goto/16 :goto_1
.end method

.method private e(Ljava/util/LinkedList;)V
    .locals 7
    .parameter

    .prologue
    .line 250
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-gtz v0, :cond_2

    .line 251
    :cond_0
    const-string v0, "MicroMsg.NetSceneGetPackageList"

    const-string v1, "empty background pkg list"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    :cond_1
    return-void

    .line 255
    :cond_2
    invoke-static {}, Lcom/tencent/mm/ab/r;->BM()Lcom/tencent/mm/ab/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/ab/l;->BJ()Ljava/lang/String;

    move-result-object v2

    .line 257
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 258
    invoke-virtual {p1, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/a/pr;

    .line 259
    invoke-static {}, Lcom/tencent/mm/ab/r;->BM()Lcom/tencent/mm/ab/l;

    move-result-object v3

    iget v4, v0, Lcom/tencent/mm/protocal/a/pr;->fGp:I

    iget v5, p0, Lcom/tencent/mm/ab/j;->bRm:I

    invoke-virtual {v3, v4, v5}, Lcom/tencent/mm/ab/l;->G(II)Lcom/tencent/mm/ab/k;

    move-result-object v3

    .line 261
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/tencent/mm/ab/k;->getVersion()I

    move-result v4

    iget v5, v0, Lcom/tencent/mm/protocal/a/pr;->fFT:I

    if-eq v4, v5, :cond_4

    .line 262
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/tencent/mm/ab/r;->BM()Lcom/tencent/mm/ab/l;

    iget v5, v0, Lcom/tencent/mm/protocal/a/pr;->fGp:I

    iget v6, p0, Lcom/tencent/mm/ab/j;->bRm:I

    invoke-static {v5, v6}, Lcom/tencent/mm/ab/l;->I(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/mm/a/c;->deleteFile(Ljava/lang/String;)Z

    .line 263
    invoke-direct {p0, v0}, Lcom/tencent/mm/ab/j;->a(Lcom/tencent/mm/protocal/a/pr;)Lcom/tencent/mm/ab/k;

    move-result-object v4

    .line 264
    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Lcom/tencent/mm/ab/k;->cL(I)V

    .line 266
    if-nez v3, :cond_6

    .line 267
    invoke-static {}, Lcom/tencent/mm/ab/r;->BM()Lcom/tencent/mm/ab/l;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/tencent/mm/ab/l;->a(Lcom/tencent/mm/ab/k;)Z

    .line 273
    :cond_4
    :goto_1
    iget-object v3, v0, Lcom/tencent/mm/protocal/a/pr;->fzU:Lcom/tencent/mm/protocal/a/rv;

    invoke-static {v3}, Lcom/tencent/mm/platformtools/an;->a(Lcom/tencent/mm/protocal/a/rv;)[B

    move-result-object v3

    .line 274
    if-eqz v3, :cond_5

    array-length v4, v3

    if-lez v4, :cond_5

    .line 275
    invoke-static {}, Lcom/tencent/mm/ab/r;->BM()Lcom/tencent/mm/ab/l;

    iget v0, v0, Lcom/tencent/mm/protocal/a/pr;->fGp:I

    iget v4, p0, Lcom/tencent/mm/ab/j;->bRm:I

    invoke-static {v0, v4}, Lcom/tencent/mm/ab/l;->H(II)Ljava/lang/String;

    move-result-object v0

    .line 276
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/mm/a/c;->deleteFile(Ljava/lang/String;)Z

    .line 277
    invoke-static {v2, v0, v3}, Lcom/tencent/mm/a/c;->b(Ljava/lang/String;Ljava/lang/String;[B)I

    .line 257
    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    .line 269
    :cond_6
    invoke-static {}, Lcom/tencent/mm/ab/r;->BM()Lcom/tencent/mm/ab/l;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/tencent/mm/ab/l;->b(Lcom/tencent/mm/ab/k;)Z

    goto :goto_1
.end method

.method private f(Ljava/util/LinkedList;)V
    .locals 5
    .parameter

    .prologue
    .line 283
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-gtz v0, :cond_2

    .line 284
    :cond_0
    const-string v0, "MicroMsg.NetSceneGetPackageList"

    const-string v1, "empty emoji pkg list"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    :cond_1
    return-void

    .line 288
    :cond_2
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 289
    invoke-virtual {p1, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/a/pr;

    .line 290
    invoke-static {}, Lcom/tencent/mm/ab/r;->BM()Lcom/tencent/mm/ab/l;

    move-result-object v2

    iget v3, v0, Lcom/tencent/mm/protocal/a/pr;->fGp:I

    iget v4, p0, Lcom/tencent/mm/ab/j;->bRm:I

    invoke-virtual {v2, v3, v4}, Lcom/tencent/mm/ab/l;->G(II)Lcom/tencent/mm/ab/k;

    move-result-object v2

    .line 291
    invoke-direct {p0, v0}, Lcom/tencent/mm/ab/j;->a(Lcom/tencent/mm/protocal/a/pr;)Lcom/tencent/mm/ab/k;

    move-result-object v3

    .line 292
    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lcom/tencent/mm/ab/k;->cL(I)V

    .line 293
    if-nez v2, :cond_4

    .line 294
    invoke-static {}, Lcom/tencent/mm/ab/r;->BM()Lcom/tencent/mm/ab/l;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/tencent/mm/ab/l;->a(Lcom/tencent/mm/ab/k;)Z

    .line 299
    :goto_1
    iget-object v0, v0, Lcom/tencent/mm/protocal/a/pr;->fzU:Lcom/tencent/mm/protocal/a/rv;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/an;->a(Lcom/tencent/mm/protocal/a/rv;)[B

    move-result-object v0

    .line 300
    if-eqz v0, :cond_3

    array-length v2, v0

    if-lez v2, :cond_3

    .line 301
    iget-object v2, p0, Lcom/tencent/mm/ab/j;->cvT:Ljava/util/List;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 296
    :cond_4
    invoke-static {}, Lcom/tencent/mm/ab/r;->BM()Lcom/tencent/mm/ab/l;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/tencent/mm/ab/l;->b(Lcom/tencent/mm/ab/k;)Z

    goto :goto_1
.end method

.method private g(Ljava/util/LinkedList;)V
    .locals 8
    .parameter

    .prologue
    .line 324
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-gtz v0, :cond_2

    .line 325
    :cond_0
    const-string v0, "MicroMsg.NetSceneGetPackageList"

    const-string v1, "empty emoji pkg list"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    :cond_1
    return-void

    .line 329
    :cond_2
    const-string v0, "MicroMsg.NetSceneGetPackageList"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "pkgList size "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    invoke-static {}, Lcom/tencent/mm/ab/r;->BM()Lcom/tencent/mm/ab/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/ab/l;->BJ()Ljava/lang/String;

    move-result-object v3

    .line 331
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 332
    invoke-virtual {p1, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/a/pr;

    .line 333
    invoke-static {}, Lcom/tencent/mm/ab/r;->BM()Lcom/tencent/mm/ab/l;

    move-result-object v2

    iget v4, v0, Lcom/tencent/mm/protocal/a/pr;->fGp:I

    iget v5, p0, Lcom/tencent/mm/ab/j;->bRm:I

    invoke-virtual {v2, v4, v5}, Lcom/tencent/mm/ab/l;->G(II)Lcom/tencent/mm/ab/k;

    move-result-object v4

    .line 335
    iget-object v2, v0, Lcom/tencent/mm/protocal/a/pr;->fzU:Lcom/tencent/mm/protocal/a/rv;

    invoke-static {v2}, Lcom/tencent/mm/platformtools/an;->a(Lcom/tencent/mm/protocal/a/rv;)[B

    move-result-object v5

    .line 336
    iget-object v2, v0, Lcom/tencent/mm/protocal/a/pr;->fzU:Lcom/tencent/mm/protocal/a/rv;

    if-nez v2, :cond_3

    .line 337
    const-string v0, "MicroMsg.NetSceneGetPackageList"

    const-string v2, "error give me a null thumb it should be xml"

    invoke-static {v0, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 341
    :cond_3
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/tencent/mm/ab/k;->getVersion()I

    move-result v2

    iget v6, v0, Lcom/tencent/mm/protocal/a/pr;->fFT:I

    if-eq v2, v6, :cond_6

    .line 342
    :cond_4
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v5}, Ljava/lang/String;-><init>([B)V

    .line 343
    const-string v2, "zh_CN"

    invoke-virtual {v6, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-ltz v7, :cond_7

    .line 344
    :cond_5
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_ARTIST.mm"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 345
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/tencent/mm/a/c;->deleteFile(Ljava/lang/String;)Z

    .line 346
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "_ARTISTF.mm"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mm/a/c;->deleteFile(Ljava/lang/String;)Z

    .line 347
    invoke-static {v3, v6, v5}, Lcom/tencent/mm/a/c;->b(Ljava/lang/String;Ljava/lang/String;[B)I

    .line 349
    :cond_6
    invoke-direct {p0, v0}, Lcom/tencent/mm/ab/j;->a(Lcom/tencent/mm/protocal/a/pr;)Lcom/tencent/mm/ab/k;

    move-result-object v2

    .line 350
    const/4 v5, -0x1

    invoke-virtual {v2, v5}, Lcom/tencent/mm/ab/k;->cL(I)V

    .line 351
    if-nez v4, :cond_8

    .line 352
    invoke-static {}, Lcom/tencent/mm/ab/r;->BM()Lcom/tencent/mm/ab/l;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/tencent/mm/ab/l;->a(Lcom/tencent/mm/ab/k;)Z

    .line 357
    :goto_3
    const-string v2, "MicroMsg.NetSceneGetPackageList"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lcom/tencent/mm/protocal/a/pr;->Th:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/tencent/mm/protocal/a/pr;->fGp:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/tencent/mm/protocal/a/pr;->fFC:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v0, v0, Lcom/tencent/mm/protocal/a/pr;->fSd:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 343
    :cond_7
    const-string v2, "en"

    invoke-virtual {v6, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-gez v7, :cond_5

    const-string v2, "zh_TW"

    invoke-virtual {v6, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-gez v6, :cond_5

    const-string v2, "en"

    goto/16 :goto_2

    .line 354
    :cond_8
    invoke-static {}, Lcom/tencent/mm/ab/r;->BM()Lcom/tencent/mm/ab/l;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/tencent/mm/ab/l;->b(Lcom/tencent/mm/ab/k;)Z

    goto :goto_3
.end method

.method private static gd(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter

    .prologue
    .line 598
    if-nez p0, :cond_0

    .line 599
    const-string p0, ""

    .line 601
    :cond_0
    return-object p0
.end method

.method private static ge(Ljava/lang/String;)I
    .locals 4
    .parameter

    .prologue
    .line 605
    const/4 v0, 0x0

    .line 607
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 613
    :cond_0
    :goto_0
    return v0

    .line 609
    :catch_0
    move-exception v1

    if-eqz p0, :cond_0

    .line 610
    const-string v1, "MicroMsg.NetSceneGetPackageList"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "parserInt error "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static gf(Ljava/lang/String;)D
    .locals 5
    .parameter

    .prologue
    .line 617
    const-wide/16 v0, 0x0

    .line 619
    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 625
    :cond_0
    :goto_0
    return-wide v0

    .line 621
    :catch_0
    move-exception v2

    if-eqz p0, :cond_0

    .line 622
    const-string v2, "MicroMsg.NetSceneGetPackageList"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "parserInt error "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private h(Ljava/util/LinkedList;)V
    .locals 9
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 373
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 374
    :cond_0
    const-string v0, "MicroMsg.NetSceneGetPackageList"

    const-string v1, "empty egg package"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    :goto_0
    return-void

    .line 378
    :cond_1
    const-string v0, "MicroMsg.NetSceneGetPackageList"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "pkgList size "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    invoke-virtual {p1, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/a/pr;

    .line 381
    invoke-static {}, Lcom/tencent/mm/ab/r;->BM()Lcom/tencent/mm/ab/l;

    move-result-object v1

    iget v3, v0, Lcom/tencent/mm/protocal/a/pr;->fGp:I

    iget v4, p0, Lcom/tencent/mm/ab/j;->bRm:I

    invoke-virtual {v1, v3, v4}, Lcom/tencent/mm/ab/l;->G(II)Lcom/tencent/mm/ab/k;

    move-result-object v1

    .line 382
    invoke-direct {p0, v0}, Lcom/tencent/mm/ab/j;->a(Lcom/tencent/mm/protocal/a/pr;)Lcom/tencent/mm/ab/k;

    move-result-object v3

    .line 383
    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lcom/tencent/mm/ab/k;->cL(I)V

    .line 384
    if-nez v1, :cond_2

    .line 385
    invoke-static {}, Lcom/tencent/mm/ab/r;->BM()Lcom/tencent/mm/ab/l;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/tencent/mm/ab/l;->a(Lcom/tencent/mm/ab/k;)Z

    .line 390
    :goto_1
    new-instance v1, Ljava/lang/String;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/pr;->fzU:Lcom/tencent/mm/protocal/a/rv;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/an;->a(Lcom/tencent/mm/protocal/a/rv;)[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 391
    const-string v0, "MicroMsg.NetSceneGetPackageList"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "eggXml:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    const-string v0, "EasterEgg"

    invoke-static {v1, v0}, Lcom/tencent/mm/sdk/platformtools/u;->aL(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    .line 405
    if-nez v4, :cond_3

    .line 406
    const-string v0, "MicroMsg.NetSceneGetPackageList"

    const-string v1, "Exception in parseXml EasterEgg, please check the xml"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 387
    :cond_2
    invoke-static {}, Lcom/tencent/mm/ab/r;->BM()Lcom/tencent/mm/ab/l;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/tencent/mm/ab/l;->b(Lcom/tencent/mm/ab/k;)Z

    goto :goto_1

    .line 409
    :cond_3
    new-instance v5, Lcom/tencent/mm/ab/e;

    invoke-direct {v5}, Lcom/tencent/mm/ab/e;-><init>()V

    .line 411
    const-string v0, ".EasterEgg.$version"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/ab/j;->gf(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, v5, Lcom/tencent/mm/ab/e;->cvO:D

    move v1, v2

    .line 414
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, ".EasterEgg.Item"

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v1, :cond_4

    const-string v0, ""

    :goto_3
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 415
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ".$name"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 416
    new-instance v7, Lcom/tencent/mm/ab/d;

    invoke-direct {v7}, Lcom/tencent/mm/ab/d;-><init>()V

    .line 419
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ".$name"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/ab/j;->gd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/tencent/mm/ab/d;->name:Ljava/lang/String;

    .line 420
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ".$reportType"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/ab/j;->ge(Ljava/lang/String;)I

    move-result v0

    iput v0, v7, Lcom/tencent/mm/ab/d;->cvK:I

    .line 421
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ".Emoji"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/ab/j;->ge(Ljava/lang/String;)I

    move-result v0

    iput v0, v7, Lcom/tencent/mm/ab/d;->cvJ:I

    .line 422
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ".$BeginDate"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->sO(Ljava/lang/String;)I

    move-result v0

    iput v0, v7, Lcom/tencent/mm/ab/d;->cvL:I

    .line 423
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ".$EndDate"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->sO(Ljava/lang/String;)I

    move-result v0

    iput v0, v7, Lcom/tencent/mm/ab/d;->cvM:I

    move v3, v2

    .line 426
    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, ".KeyWord"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-nez v3, :cond_5

    const-string v0, ""

    :goto_5
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 427
    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_6

    .line 428
    iget-object v8, v7, Lcom/tencent/mm/ab/d;->cvI:Ljava/util/LinkedList;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/ab/j;->gd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 431
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    .line 432
    goto :goto_4

    .line 414
    :cond_4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_3

    .line 426
    :cond_5
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_5

    .line 433
    :cond_6
    iget-object v0, v5, Lcom/tencent/mm/ab/e;->cvN:Ljava/util/LinkedList;

    invoke-virtual {v0, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 434
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 435
    goto/16 :goto_2

    .line 438
    :cond_7
    :try_start_0
    invoke-virtual {v5}, Lcom/tencent/mm/ab/e;->toByteArray()[B

    move-result-object v0

    .line 439
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/b;->sW()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "eggingfo.ini"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    array-length v2, v0

    invoke-static {v1, v0, v2}, Lcom/tencent/mm/a/c;->a(Ljava/lang/String;[BI)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 441
    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method

.method private i(Ljava/util/LinkedList;)V
    .locals 7
    .parameter

    .prologue
    .line 471
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-gtz v0, :cond_2

    .line 472
    :cond_0
    const-string v0, "MicroMsg.NetSceneGetPackageList"

    const-string v1, "empty config list"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    :cond_1
    return-void

    .line 476
    :cond_2
    const-string v0, "MicroMsg.NetSceneGetPackageList"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "pkgList size "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 479
    invoke-virtual {p1, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/a/pr;

    .line 481
    invoke-static {}, Lcom/tencent/mm/ab/r;->BM()Lcom/tencent/mm/ab/l;

    move-result-object v2

    iget v3, v0, Lcom/tencent/mm/protocal/a/pr;->fGp:I

    iget v4, p0, Lcom/tencent/mm/ab/j;->bRm:I

    invoke-virtual {v2, v3, v4}, Lcom/tencent/mm/ab/l;->G(II)Lcom/tencent/mm/ab/k;

    move-result-object v2

    .line 482
    invoke-direct {p0, v0}, Lcom/tencent/mm/ab/j;->a(Lcom/tencent/mm/protocal/a/pr;)Lcom/tencent/mm/ab/k;

    move-result-object v3

    .line 483
    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lcom/tencent/mm/ab/k;->cL(I)V

    .line 484
    if-nez v2, :cond_3

    .line 485
    invoke-static {}, Lcom/tencent/mm/ab/r;->BM()Lcom/tencent/mm/ab/l;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/tencent/mm/ab/l;->a(Lcom/tencent/mm/ab/k;)Z

    .line 489
    :goto_1
    const-string v2, "MicroMsg.NetSceneGetPackageList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lcom/tencent/mm/protocal/a/pr;->Th:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/tencent/mm/protocal/a/pr;->fGp:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/tencent/mm/protocal/a/pr;->fFC:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/tencent/mm/protocal/a/pr;->fSd:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    iget-object v2, v0, Lcom/tencent/mm/protocal/a/pr;->fzU:Lcom/tencent/mm/protocal/a/rv;

    invoke-static {v2}, Lcom/tencent/mm/platformtools/an;->a(Lcom/tencent/mm/protocal/a/rv;)[B

    move-result-object v2

    .line 492
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    .line 493
    const-string v4, "MicroMsg.NetSceneGetPackageList"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "ConfigList xml : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    invoke-static {}, Lcom/tencent/mm/e/d;->qB()Lcom/tencent/mm/e/a;

    move-result-object v3

    iget v0, v0, Lcom/tencent/mm/protocal/a/pr;->fGp:I

    invoke-virtual {v3, v0, v2}, Lcom/tencent/mm/e/a;->b(I[B)V

    .line 478
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    .line 487
    :cond_3
    invoke-static {}, Lcom/tencent/mm/ab/r;->BM()Lcom/tencent/mm/ab/l;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/tencent/mm/ab/l;->b(Lcom/tencent/mm/ab/k;)Z

    goto :goto_1
.end method

.method private j(Ljava/util/LinkedList;)V
    .locals 5
    .parameter

    .prologue
    .line 519
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-gtz v0, :cond_2

    .line 520
    :cond_0
    const-string v0, "MicroMsg.NetSceneGetPackageList"

    const-string v1, "empty bank logo pkg list"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    :cond_1
    return-void

    .line 524
    :cond_2
    const-string v0, "MicroMsg.NetSceneGetPackageList"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "pkgList size "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 527
    invoke-virtual {p1, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/a/pr;

    .line 529
    iget-object v2, v0, Lcom/tencent/mm/protocal/a/pr;->fzU:Lcom/tencent/mm/protocal/a/rv;

    invoke-static {v2}, Lcom/tencent/mm/platformtools/an;->a(Lcom/tencent/mm/protocal/a/rv;)[B

    move-result-object v2

    .line 530
    if-eqz v2, :cond_3

    array-length v3, v2

    if-lez v3, :cond_3

    .line 531
    new-instance v3, Lcom/tencent/mm/c/a/fs;

    invoke-direct {v3}, Lcom/tencent/mm/c/a/fs;-><init>()V

    .line 532
    iget-object v4, v3, Lcom/tencent/mm/c/a/fs;->bQm:Lcom/tencent/mm/c/a/ft;

    iput-object v2, v4, Lcom/tencent/mm/c/a/ft;->bQo:[B

    .line 533
    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v2

    invoke-interface {v2, v3}, Lcom/tencent/mm/sdk/b/f;->f(Lcom/tencent/mm/sdk/b/e;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 535
    invoke-static {}, Lcom/tencent/mm/ab/r;->BM()Lcom/tencent/mm/ab/l;

    move-result-object v2

    iget v3, v0, Lcom/tencent/mm/protocal/a/pr;->fGp:I

    iget v4, p0, Lcom/tencent/mm/ab/j;->bRm:I

    invoke-virtual {v2, v3, v4}, Lcom/tencent/mm/ab/l;->G(II)Lcom/tencent/mm/ab/k;

    move-result-object v2

    .line 536
    invoke-direct {p0, v0}, Lcom/tencent/mm/ab/j;->a(Lcom/tencent/mm/protocal/a/pr;)Lcom/tencent/mm/ab/k;

    move-result-object v0

    .line 537
    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Lcom/tencent/mm/ab/k;->cL(I)V

    .line 538
    if-nez v2, :cond_4

    .line 539
    invoke-static {}, Lcom/tencent/mm/ab/r;->BM()Lcom/tencent/mm/ab/l;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/tencent/mm/ab/l;->a(Lcom/tencent/mm/ab/k;)Z

    .line 526
    :cond_3
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 541
    :cond_4
    invoke-static {}, Lcom/tencent/mm/ab/r;->BM()Lcom/tencent/mm/ab/l;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/tencent/mm/ab/l;->b(Lcom/tencent/mm/ab/k;)Z

    goto :goto_1
.end method

.method private k(Ljava/util/LinkedList;)V
    .locals 5
    .parameter

    .prologue
    .line 549
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-gtz v0, :cond_2

    .line 550
    :cond_0
    const-string v0, "MicroMsg.NetSceneGetPackageList"

    const-string v1, "empty address pkg list"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    :cond_1
    return-void

    .line 554
    :cond_2
    const-string v0, "MicroMsg.NetSceneGetPackageList"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "pkgList size "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 557
    invoke-virtual {p1, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/a/pr;

    .line 558
    invoke-static {}, Lcom/tencent/mm/ab/r;->BM()Lcom/tencent/mm/ab/l;

    move-result-object v2

    iget v3, v0, Lcom/tencent/mm/protocal/a/pr;->fGp:I

    iget v4, p0, Lcom/tencent/mm/ab/j;->bRm:I

    invoke-virtual {v2, v3, v4}, Lcom/tencent/mm/ab/l;->G(II)Lcom/tencent/mm/ab/k;

    move-result-object v2

    .line 559
    invoke-direct {p0, v0}, Lcom/tencent/mm/ab/j;->a(Lcom/tencent/mm/protocal/a/pr;)Lcom/tencent/mm/ab/k;

    move-result-object v0

    .line 560
    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Lcom/tencent/mm/ab/k;->cL(I)V

    .line 561
    if-nez v2, :cond_3

    .line 562
    invoke-static {}, Lcom/tencent/mm/ab/r;->BM()Lcom/tencent/mm/ab/l;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/tencent/mm/ab/l;->a(Lcom/tencent/mm/ab/k;)Z

    .line 566
    :goto_1
    new-instance v2, Lcom/tencent/mm/ab/i;

    invoke-virtual {v0}, Lcom/tencent/mm/ab/k;->getId()I

    move-result v0

    const/16 v3, 0xc

    invoke-direct {v2, v0, v3}, Lcom/tencent/mm/ab/i;-><init>(II)V

    .line 567
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    .line 556
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 564
    :cond_3
    invoke-static {}, Lcom/tencent/mm/ab/r;->BM()Lcom/tencent/mm/ab/l;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/tencent/mm/ab/l;->b(Lcom/tencent/mm/ab/k;)Z

    goto :goto_1
.end method

.method private l(Ljava/util/LinkedList;)V
    .locals 7
    .parameter

    .prologue
    .line 578
    const-string v0, "MicroMsg.NetSceneGetPackageList"

    const-string v1, "updateLangPkg"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 580
    :cond_0
    const-string v0, "MicroMsg.NetSceneGetPackageList"

    const-string v1, "empty langage package list"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    :cond_1
    return-void

    .line 584
    :cond_2
    invoke-virtual {p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/a/pr;

    .line 585
    const-string v2, "MicroMsg.NetSceneGetPackageList"

    const-string v3, "pkg.toString %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 586
    invoke-static {}, Lcom/tencent/mm/ab/r;->BM()Lcom/tencent/mm/ab/l;

    move-result-object v2

    iget v3, v0, Lcom/tencent/mm/protocal/a/pr;->fGp:I

    iget v4, p0, Lcom/tencent/mm/ab/j;->bRm:I

    invoke-virtual {v2, v3, v4}, Lcom/tencent/mm/ab/l;->G(II)Lcom/tencent/mm/ab/k;

    move-result-object v2

    .line 587
    invoke-direct {p0, v0}, Lcom/tencent/mm/ab/j;->a(Lcom/tencent/mm/protocal/a/pr;)Lcom/tencent/mm/ab/k;

    move-result-object v0

    .line 588
    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Lcom/tencent/mm/ab/k;->cL(I)V

    .line 589
    if-nez v2, :cond_3

    .line 590
    invoke-static {}, Lcom/tencent/mm/ab/r;->BM()Lcom/tencent/mm/ab/l;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/tencent/mm/ab/l;->a(Lcom/tencent/mm/ab/k;)Z

    goto :goto_0

    .line 592
    :cond_3
    invoke-static {}, Lcom/tencent/mm/ab/r;->BM()Lcom/tencent/mm/ab/l;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/tencent/mm/ab/l;->b(Lcom/tencent/mm/ab/k;)Z

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/network/r;Lcom/tencent/mm/n/m;)I
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 53
    iput-object p2, p0, Lcom/tencent/mm/ab/j;->cjh:Lcom/tencent/mm/n/m;

    .line 55
    const-string v0, "MicroMsg.NetSceneGetPackageList"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "dkregcode:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/tencent/mm/ab/j;->bRm:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    new-instance v0, Lcom/tencent/mm/n/b;

    invoke-direct {v0}, Lcom/tencent/mm/n/b;-><init>()V

    .line 58
    new-instance v1, Lcom/tencent/mm/protocal/a/jo;

    invoke-direct {v1}, Lcom/tencent/mm/protocal/a/jo;-><init>()V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/b;->a(Lcom/tencent/mm/am/a;)V

    .line 59
    new-instance v1, Lcom/tencent/mm/protocal/a/jp;

    invoke-direct {v1}, Lcom/tencent/mm/protocal/a/jp;-><init>()V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/b;->b(Lcom/tencent/mm/am/a;)V

    .line 60
    const-string v1, "/cgi-bin/micromsg-bin/getpackagelist"

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/b;->es(Ljava/lang/String;)V

    .line 61
    const/16 v1, 0x9f

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/b;->cN(I)V

    .line 62
    const/16 v1, 0x33

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/b;->cO(I)V

    .line 63
    const v1, 0x3b9aca33

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/b;->cP(I)V

    .line 64
    invoke-virtual {v0}, Lcom/tencent/mm/n/b;->wx()Lcom/tencent/mm/n/a;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ab/j;->cke:Lcom/tencent/mm/n/a;

    .line 66
    iget-object v0, p0, Lcom/tencent/mm/ab/j;->cke:Lcom/tencent/mm/n/a;

    invoke-virtual {v0}, Lcom/tencent/mm/n/a;->wr()Lcom/tencent/mm/am/a;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/a/jo;

    .line 68
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 71
    invoke-static {}, Lcom/tencent/mm/model/be;->se()Z

    move-result v1

    if-nez v1, :cond_0

    .line 72
    const/4 v0, -0x1

    .line 91
    :goto_0
    return v0

    .line 74
    :cond_0
    invoke-static {}, Lcom/tencent/mm/ab/r;->BM()Lcom/tencent/mm/ab/l;

    move-result-object v1

    iget v4, p0, Lcom/tencent/mm/ab/j;->bRm:I

    invoke-virtual {v1, v4}, Lcom/tencent/mm/ab/l;->dR(I)[Lcom/tencent/mm/ab/k;

    move-result-object v4

    .line 75
    if-eqz v4, :cond_2

    array-length v1, v4

    if-lez v1, :cond_2

    move v1, v2

    .line 76
    :goto_1
    array-length v5, v4

    if-ge v1, v5, :cond_2

    .line 77
    new-instance v5, Lcom/tencent/mm/protocal/a/pr;

    invoke-direct {v5}, Lcom/tencent/mm/protocal/a/pr;-><init>()V

    .line 78
    aget-object v6, v4, v1

    invoke-virtual {v6}, Lcom/tencent/mm/ab/k;->getId()I

    move-result v6

    iput v6, v5, Lcom/tencent/mm/protocal/a/pr;->fGp:I

    .line 79
    sget-boolean v6, Lcom/tencent/mm/platformtools/at;->cHB:Z

    if-eqz v6, :cond_1

    iget v6, p0, Lcom/tencent/mm/ab/j;->bRm:I

    const/4 v7, 0x7

    if-ne v6, v7, :cond_1

    .line 80
    const-string v6, "MicroMsg.NetSceneGetPackageList"

    const-string v7, "isShakeGetConfigList"

    invoke-static {v6, v7}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iput v2, v5, Lcom/tencent/mm/protocal/a/pr;->fFT:I

    .line 85
    :goto_2
    invoke-virtual {v3, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 76
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 83
    :cond_1
    aget-object v6, v4, v1

    invoke-virtual {v6}, Lcom/tencent/mm/ab/k;->getVersion()I

    move-result v6

    iput v6, v5, Lcom/tencent/mm/protocal/a/pr;->fFT:I

    goto :goto_2

    .line 88
    :cond_2
    iput-object v3, v0, Lcom/tencent/mm/protocal/a/jo;->fAD:Ljava/util/LinkedList;

    .line 89
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v1

    iput v1, v0, Lcom/tencent/mm/protocal/a/jo;->fAC:I

    .line 90
    iget v1, p0, Lcom/tencent/mm/ab/j;->bRm:I

    iput v1, v0, Lcom/tencent/mm/protocal/a/jo;->dGR:I

    .line 91
    iget-object v0, p0, Lcom/tencent/mm/ab/j;->cke:Lcom/tencent/mm/n/a;

    invoke-virtual {p0, p1, v0, p0}, Lcom/tencent/mm/ab/j;->a(Lcom/tencent/mm/network/r;Lcom/tencent/mm/network/aj;Lcom/tencent/mm/network/ab;)I

    move-result v0

    goto :goto_0
.end method

.method protected final a(Lcom/tencent/mm/network/aj;)Lcom/tencent/mm/n/aa;
    .locals 1
    .parameter

    .prologue
    .line 96
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
    .line 125
    const-string v0, "MicroMsg.NetSceneGetPackageList"

    const-string v1, "onGYNetEnd, netid:%d, errType:%d, errCode:%d, pkgType:%d, errMsg:%s"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget v4, p0, Lcom/tencent/mm/ab/j;->bRm:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    aput-object p4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 127
    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    .line 128
    iget-object v0, p0, Lcom/tencent/mm/ab/j;->cjh:Lcom/tencent/mm/n/m;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/n/m;->a(IILjava/lang/String;Lcom/tencent/mm/n/x;)V

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    check-cast p5, Lcom/tencent/mm/n/a;

    invoke-virtual {p5}, Lcom/tencent/mm/n/a;->ws()Lcom/tencent/mm/am/a;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/a/jp;

    .line 134
    iget v1, v0, Lcom/tencent/mm/protocal/a/jp;->dGR:I

    iget v2, p0, Lcom/tencent/mm/ab/j;->bRm:I

    if-eq v1, v2, :cond_2

    .line 135
    const-string v0, "MicroMsg.NetSceneGetPackageList"

    const-string v1, "packageType is not consistent"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/tencent/mm/ab/j;->cjh:Lcom/tencent/mm/n/m;

    const/4 v1, 0x3

    const/4 v2, -0x1

    const-string v3, ""

    invoke-interface {v0, v1, v2, v3, p0}, Lcom/tencent/mm/n/m;->a(IILjava/lang/String;Lcom/tencent/mm/n/x;)V

    goto :goto_0

    .line 140
    :cond_2
    iget-object v2, v0, Lcom/tencent/mm/protocal/a/jp;->fAD:Ljava/util/LinkedList;

    .line 141
    const-string v3, "MicroMsg.NetSceneGetPackageList"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v1, "list size:"

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v2, :cond_4

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iget v1, p0, Lcom/tencent/mm/ab/j;->bRm:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_5

    .line 144
    invoke-direct {p0, v2}, Lcom/tencent/mm/ab/j;->f(Ljava/util/LinkedList;)V

    .line 175
    :cond_3
    :goto_2
    new-instance v1, Lcom/tencent/mm/c/a/hq;

    invoke-direct {v1}, Lcom/tencent/mm/c/a/hq;-><init>()V

    .line 176
    iget-object v3, v1, Lcom/tencent/mm/c/a/hq;->bRl:Lcom/tencent/mm/c/a/hr;

    iput-object v2, v3, Lcom/tencent/mm/c/a/hr;->bRn:Ljava/util/List;

    .line 177
    iget-object v2, v1, Lcom/tencent/mm/c/a/hq;->bRl:Lcom/tencent/mm/c/a/hr;

    iget v3, p0, Lcom/tencent/mm/ab/j;->bRm:I

    iput v3, v2, Lcom/tencent/mm/c/a/hr;->bRm:I

    .line 178
    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/tencent/mm/sdk/b/f;->f(Lcom/tencent/mm/sdk/b/e;)Z

    .line 183
    iget v0, v0, Lcom/tencent/mm/protocal/a/jp;->fIz:I

    if-lez v0, :cond_15

    .line 184
    invoke-virtual {p0}, Lcom/tencent/mm/ab/j;->wM()Lcom/tencent/mm/network/r;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ab/j;->cjh:Lcom/tencent/mm/n/m;

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/ab/j;->a(Lcom/tencent/mm/network/r;Lcom/tencent/mm/n/m;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 185
    iget-object v0, p0, Lcom/tencent/mm/ab/j;->cjh:Lcom/tencent/mm/n/m;

    const/4 v1, 0x3

    const/4 v2, -0x1

    const-string v3, "doScene failed"

    invoke-interface {v0, v1, v2, v3, p0}, Lcom/tencent/mm/n/m;->a(IILjava/lang/String;Lcom/tencent/mm/n/x;)V

    goto :goto_0

    .line 141
    :cond_4
    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v1

    goto :goto_1

    .line 146
    :cond_5
    iget v1, p0, Lcom/tencent/mm/ab/j;->bRm:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_6

    .line 147
    invoke-direct {p0, v2}, Lcom/tencent/mm/ab/j;->e(Ljava/util/LinkedList;)V

    goto :goto_2

    .line 149
    :cond_6
    iget v1, p0, Lcom/tencent/mm/ab/j;->bRm:I

    const/4 v3, 0x4

    if-ne v1, v3, :cond_7

    .line 150
    invoke-direct {p0, v2}, Lcom/tencent/mm/ab/j;->g(Ljava/util/LinkedList;)V

    goto :goto_2

    .line 152
    :cond_7
    iget v1, p0, Lcom/tencent/mm/ab/j;->bRm:I

    const/4 v3, 0x6

    if-ne v1, v3, :cond_8

    .line 153
    invoke-direct {p0, v2}, Lcom/tencent/mm/ab/j;->h(Ljava/util/LinkedList;)V

    goto :goto_2

    .line 155
    :cond_8
    iget v1, p0, Lcom/tencent/mm/ab/j;->bRm:I

    const/4 v3, 0x7

    if-ne v1, v3, :cond_9

    .line 156
    invoke-direct {p0, v2}, Lcom/tencent/mm/ab/j;->i(Ljava/util/LinkedList;)V

    goto :goto_2

    .line 158
    :cond_9
    iget v1, p0, Lcom/tencent/mm/ab/j;->bRm:I

    const/16 v3, 0x8

    if-ne v1, v3, :cond_d

    .line 159
    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-gtz v1, :cond_b

    :cond_a
    const-string v1, "MicroMsg.NetSceneGetPackageList"

    const-string v3, "empty regioncode pkg list"

    invoke-static {v1, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_b
    const-string v1, "MicroMsg.NetSceneGetPackageList"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "pkgList size "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/protocal/a/pr;

    invoke-static {}, Lcom/tencent/mm/ab/r;->BM()Lcom/tencent/mm/ab/l;

    move-result-object v3

    iget v4, v1, Lcom/tencent/mm/protocal/a/pr;->fGp:I

    iget v5, p0, Lcom/tencent/mm/ab/j;->bRm:I

    invoke-virtual {v3, v4, v5}, Lcom/tencent/mm/ab/l;->G(II)Lcom/tencent/mm/ab/k;

    move-result-object v3

    invoke-direct {p0, v1}, Lcom/tencent/mm/ab/j;->a(Lcom/tencent/mm/protocal/a/pr;)Lcom/tencent/mm/ab/k;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Lcom/tencent/mm/ab/k;->cL(I)V

    if-nez v3, :cond_c

    invoke-static {}, Lcom/tencent/mm/ab/r;->BM()Lcom/tencent/mm/ab/l;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/tencent/mm/ab/l;->a(Lcom/tencent/mm/ab/k;)Z

    :goto_3
    const-string v3, "MicroMsg.NetSceneGetPackageList"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lcom/tencent/mm/protocal/a/pr;->Th:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/tencent/mm/protocal/a/pr;->fGp:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/tencent/mm/protocal/a/pr;->fFC:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v1, v1, Lcom/tencent/mm/protocal/a/pr;->fSd:I

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_c
    invoke-static {}, Lcom/tencent/mm/ab/r;->BM()Lcom/tencent/mm/ab/l;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/tencent/mm/ab/l;->b(Lcom/tencent/mm/ab/k;)Z

    goto :goto_3

    .line 161
    :cond_d
    iget v1, p0, Lcom/tencent/mm/ab/j;->bRm:I

    const/16 v3, 0x9

    if-ne v1, v3, :cond_e

    .line 162
    invoke-direct {p0, v2}, Lcom/tencent/mm/ab/j;->d(Ljava/util/LinkedList;)V

    goto/16 :goto_2

    .line 164
    :cond_e
    iget v1, p0, Lcom/tencent/mm/ab/j;->bRm:I

    const/16 v3, 0xa

    if-ne v1, v3, :cond_12

    .line 165
    if-eqz v2, :cond_f

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-gtz v1, :cond_10

    :cond_f
    const-string v1, "MicroMsg.NetSceneGetPackageList"

    const-string v3, "empty mass send top config package"

    invoke-static {v1, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_10
    const-string v1, "MicroMsg.NetSceneGetPackageList"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "pkgList size "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/protocal/a/pr;

    invoke-static {}, Lcom/tencent/mm/ab/r;->BM()Lcom/tencent/mm/ab/l;

    move-result-object v3

    iget v4, v1, Lcom/tencent/mm/protocal/a/pr;->fGp:I

    iget v5, p0, Lcom/tencent/mm/ab/j;->bRm:I

    invoke-virtual {v3, v4, v5}, Lcom/tencent/mm/ab/l;->G(II)Lcom/tencent/mm/ab/k;

    move-result-object v3

    invoke-direct {p0, v1}, Lcom/tencent/mm/ab/j;->a(Lcom/tencent/mm/protocal/a/pr;)Lcom/tencent/mm/ab/k;

    move-result-object v1

    const/4 v4, -0x1

    invoke-virtual {v1, v4}, Lcom/tencent/mm/ab/k;->cL(I)V

    if-nez v3, :cond_11

    invoke-static {}, Lcom/tencent/mm/ab/r;->BM()Lcom/tencent/mm/ab/l;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/tencent/mm/ab/l;->a(Lcom/tencent/mm/ab/k;)Z

    goto/16 :goto_2

    :cond_11
    invoke-static {}, Lcom/tencent/mm/ab/r;->BM()Lcom/tencent/mm/ab/l;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/tencent/mm/ab/l;->b(Lcom/tencent/mm/ab/k;)Z

    goto/16 :goto_2

    .line 167
    :cond_12
    iget v1, p0, Lcom/tencent/mm/ab/j;->bRm:I

    const/16 v3, 0xb

    if-ne v1, v3, :cond_13

    .line 168
    invoke-direct {p0, v2}, Lcom/tencent/mm/ab/j;->j(Ljava/util/LinkedList;)V

    goto/16 :goto_2

    .line 170
    :cond_13
    iget v1, p0, Lcom/tencent/mm/ab/j;->bRm:I

    const/16 v3, 0xc

    if-ne v1, v3, :cond_14

    .line 171
    invoke-direct {p0, v2}, Lcom/tencent/mm/ab/j;->k(Ljava/util/LinkedList;)V

    goto/16 :goto_2

    .line 172
    :cond_14
    iget v1, p0, Lcom/tencent/mm/ab/j;->bRm:I

    const/4 v3, 0x5

    if-ne v1, v3, :cond_3

    .line 173
    invoke-direct {p0, v2}, Lcom/tencent/mm/ab/j;->l(Ljava/util/LinkedList;)V

    goto/16 :goto_2

    .line 188
    :cond_15
    iget v0, p0, Lcom/tencent/mm/ab/j;->bRm:I

    .line 194
    iget-object v0, p0, Lcom/tencent/mm/ab/j;->cjh:Lcom/tencent/mm/n/m;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/n/m;->a(IILjava/lang/String;Lcom/tencent/mm/n/x;)V

    goto/16 :goto_0
.end method

.method protected final a(Lcom/tencent/mm/n/z;)V
    .locals 0
    .parameter

    .prologue
    .line 109
    return-void
.end method

.method protected final b(Lcom/tencent/mm/n/x;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 201
    instance-of v1, p1, Lcom/tencent/mm/ab/j;

    if-nez v1, :cond_1

    .line 205
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/tencent/mm/ab/j;->bRm:I

    check-cast p1, Lcom/tencent/mm/ab/j;

    iget v2, p1, Lcom/tencent/mm/ab/j;->bRm:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getType()I
    .locals 1

    .prologue
    .line 630
    const/16 v0, 0x9f

    return v0
.end method

.method public final wQ()I
    .locals 1

    .prologue
    .line 635
    iget v0, p0, Lcom/tencent/mm/ab/j;->bRm:I

    return v0
.end method

.method protected final we()I
    .locals 1

    .prologue
    .line 103
    const/16 v0, 0x14

    return v0
.end method
