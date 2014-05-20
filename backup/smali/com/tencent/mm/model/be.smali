.class public final Lcom/tencent/mm/model/be;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/n/h;


# static fields
.field private static ciA:Ljava/lang/String;

.field private static cim:Lcom/tencent/mm/model/be;

.field private static cir:Z

.field private static cis:Z

.field private static cit:Z

.field private static ciu:Z

.field private static ciz:Lcom/tencent/mm/model/ak;


# instance fields
.field private final chA:Ljava/lang/String;

.field private ciB:Lcom/tencent/mm/n/g;

.field private ciC:Ljava/lang/String;

.field private ciD:Ljava/util/Map;

.field private ciE:Ljava/util/HashSet;

.field private ciF:Lcom/tencent/mm/network/ag;

.field private ciG:Lcom/tencent/mm/model/du;

.field private ciH:Lcom/tencent/mm/model/cq;

.field private ciI:Lcom/tencent/mm/model/q;

.field private ciJ:Lcom/tencent/mm/model/ds;

.field private ciK:Lcom/tencent/mm/storage/m;

.field private ciL:Lcom/tencent/mm/storage/r;

.field private ciM:Lcom/tencent/mm/storage/r;

.field private final cia:Lcom/tencent/mm/model/b;

.field private final cib:Lcom/tencent/mm/model/an;

.field private final cin:Lcom/tencent/mm/n/aw;

.field private final cio:Lcom/tencent/mm/n/ac;

.field private final cip:Lcom/tencent/mm/sdk/platformtools/an;

.field private final ciq:Lcom/tencent/mm/storage/d;

.field private civ:Lcom/tencent/mm/compatible/audio/e;

.field private ciw:Lcom/tencent/mm/model/dr;

.field private cix:Lcom/tencent/mm/model/dv;

.field private final ciy:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 88
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/mm/model/be;->cim:Lcom/tencent/mm/model/be;

    .line 95
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/mm/model/be;->cir:Z

    .line 96
    sput-boolean v1, Lcom/tencent/mm/model/be;->cis:Z

    .line 97
    sput-boolean v1, Lcom/tencent/mm/model/be;->cit:Z

    .line 98
    sput-boolean v1, Lcom/tencent/mm/model/be;->ciu:Z

    .line 111
    const-string v0, "NoResetUinStack"

    sput-object v0, Lcom/tencent/mm/model/be;->ciA:Ljava/lang/String;

    .line 129
    return-void
.end method

.method private constructor <init>(Lcom/tencent/mm/model/an;Lcom/tencent/mm/storage/d;Lcom/tencent/mm/n/ak;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 423
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object v0, p0, Lcom/tencent/mm/model/be;->civ:Lcom/tencent/mm/compatible/audio/e;

    .line 104
    iput-object v0, p0, Lcom/tencent/mm/model/be;->ciw:Lcom/tencent/mm/model/dr;

    .line 105
    iput-object v0, p0, Lcom/tencent/mm/model/be;->cix:Lcom/tencent/mm/model/dv;

    .line 107
    iput v1, p0, Lcom/tencent/mm/model/be;->ciy:I

    .line 114
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/model/be;->ciC:Ljava/lang/String;

    .line 115
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/model/be;->ciD:Ljava/util/Map;

    .line 144
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/model/be;->ciE:Ljava/util/HashSet;

    .line 145
    new-instance v0, Lcom/tencent/mm/model/bf;

    invoke-direct {v0, p0}, Lcom/tencent/mm/model/bf;-><init>(Lcom/tencent/mm/model/be;)V

    iput-object v0, p0, Lcom/tencent/mm/model/be;->ciF:Lcom/tencent/mm/network/ag;

    .line 940
    new-instance v0, Lcom/tencent/mm/model/du;

    invoke-direct {v0}, Lcom/tencent/mm/model/du;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/model/be;->ciG:Lcom/tencent/mm/model/du;

    .line 941
    new-instance v0, Lcom/tencent/mm/model/cq;

    invoke-direct {v0}, Lcom/tencent/mm/model/cq;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/model/be;->ciH:Lcom/tencent/mm/model/cq;

    .line 942
    new-instance v0, Lcom/tencent/mm/model/q;

    invoke-direct {v0}, Lcom/tencent/mm/model/q;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/model/be;->ciI:Lcom/tencent/mm/model/q;

    .line 943
    new-instance v0, Lcom/tencent/mm/model/ds;

    invoke-direct {v0}, Lcom/tencent/mm/model/ds;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/model/be;->ciJ:Lcom/tencent/mm/model/ds;

    .line 946
    new-instance v0, Lcom/tencent/mm/model/bq;

    invoke-direct {v0, p0}, Lcom/tencent/mm/model/bq;-><init>(Lcom/tencent/mm/model/be;)V

    iput-object v0, p0, Lcom/tencent/mm/model/be;->ciK:Lcom/tencent/mm/storage/m;

    .line 1021
    new-instance v0, Lcom/tencent/mm/model/bg;

    invoke-direct {v0, p0}, Lcom/tencent/mm/model/bg;-><init>(Lcom/tencent/mm/model/be;)V

    iput-object v0, p0, Lcom/tencent/mm/model/be;->ciL:Lcom/tencent/mm/storage/r;

    .line 1189
    new-instance v0, Lcom/tencent/mm/model/bh;

    invoke-direct {v0, p0}, Lcom/tencent/mm/model/bh;-><init>(Lcom/tencent/mm/model/be;)V

    iput-object v0, p0, Lcom/tencent/mm/model/be;->ciM:Lcom/tencent/mm/storage/r;

    .line 425
    iput-object p1, p0, Lcom/tencent/mm/model/be;->cib:Lcom/tencent/mm/model/an;

    .line 426
    iput-object p2, p0, Lcom/tencent/mm/model/be;->ciq:Lcom/tencent/mm/storage/d;

    .line 427
    new-instance v0, Lcom/tencent/mm/model/dr;

    invoke-direct {v0}, Lcom/tencent/mm/model/dr;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/model/be;->ciw:Lcom/tencent/mm/model/dr;

    .line 428
    new-instance v0, Lcom/tencent/mm/model/dv;

    invoke-direct {v0}, Lcom/tencent/mm/model/dv;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/model/be;->cix:Lcom/tencent/mm/model/dv;

    .line 430
    invoke-static {}, Lcom/tencent/mm/model/be;->up()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/model/be;->chA:Ljava/lang/String;

    .line 432
    new-instance v0, Lcom/tencent/mm/sdk/platformtools/an;

    invoke-direct {v0}, Lcom/tencent/mm/sdk/platformtools/an;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/model/be;->cip:Lcom/tencent/mm/sdk/platformtools/an;

    .line 433
    new-instance v0, Lcom/tencent/mm/n/aw;

    invoke-direct {v0}, Lcom/tencent/mm/n/aw;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/model/be;->cin:Lcom/tencent/mm/n/aw;

    .line 436
    iget-object v0, p0, Lcom/tencent/mm/model/be;->ciq:Lcom/tencent/mm/storage/d;

    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Lcom/tencent/mm/storage/d;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->c(Ljava/lang/Integer;)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/tencent/mm/model/be;->cir:Z

    .line 438
    new-instance v0, Lcom/tencent/mm/model/b;

    iget-object v1, p0, Lcom/tencent/mm/model/be;->chA:Ljava/lang/String;

    new-instance v2, Lcom/tencent/mm/model/bj;

    invoke-direct {v2, p0, p1}, Lcom/tencent/mm/model/bj;-><init>(Lcom/tencent/mm/model/be;Lcom/tencent/mm/model/an;)V

    invoke-direct {v0, v1, v2}, Lcom/tencent/mm/model/b;-><init>(Ljava/lang/String;Lcom/tencent/mm/model/o;)V

    iput-object v0, p0, Lcom/tencent/mm/model/be;->cia:Lcom/tencent/mm/model/b;

    .line 488
    invoke-static {p3}, Lcom/tencent/mm/n/ac;->a(Lcom/tencent/mm/n/ak;)Lcom/tencent/mm/n/ac;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/model/be;->cio:Lcom/tencent/mm/n/ac;

    .line 489
    iget-object v0, p0, Lcom/tencent/mm/model/be;->cio:Lcom/tencent/mm/n/ac;

    iget-object v1, p0, Lcom/tencent/mm/model/be;->cip:Lcom/tencent/mm/sdk/platformtools/an;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/ac;->a(Lcom/tencent/mm/sdk/platformtools/an;)V

    .line 490
    return-void

    .line 436
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static P(Z)V
    .locals 0
    .parameter

    .prologue
    .line 209
    sput-boolean p0, Lcom/tencent/mm/model/be;->ciu:Z

    .line 210
    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/model/be;)Ljava/util/HashSet;
    .locals 1
    .parameter

    .prologue
    .line 84
    iget-object v0, p0, Lcom/tencent/mm/model/be;->ciE:Ljava/util/HashSet;

    return-object v0
.end method

.method public static a(Lcom/tencent/mm/model/ak;)V
    .locals 0
    .parameter

    .prologue
    .line 172
    sput-object p0, Lcom/tencent/mm/model/be;->ciz:Lcom/tencent/mm/model/ak;

    .line 173
    return-void
.end method

.method public static a(Lcom/tencent/mm/model/an;Lcom/tencent/mm/n/ak;)V
    .locals 11
    .parameter
    .parameter

    .prologue
    const/16 v4, 0x102

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 370
    const-string v0, "MicroMsg.MMCore"

    const-string v1, "initialize packageInfo:%s version:%x"

    new-array v2, v9, [Ljava/lang/Object;

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/i;->ayK()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    sget v3, Lcom/tencent/mm/protocal/a;->fxr:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 371
    sget-object v0, Lcom/tencent/mm/storage/h;->cfC:Ljava/lang/String;

    .line 372
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 373
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 374
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 377
    :cond_0
    new-instance v1, Lcom/tencent/mm/storage/d;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/tencent/mm/storage/h;->cfC:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "systemInfo.cfg"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/tencent/mm/storage/d;-><init>(Ljava/lang/String;)V

    .line 378
    invoke-virtual {v1, v4}, Lcom/tencent/mm/storage/d;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 379
    if-eqz v0, :cond_1

    .line 380
    invoke-static {}, Lcom/tencent/mm/compatible/c/n;->pK()Lcom/tencent/mm/compatible/c/n;

    move-result-object v2

    invoke-virtual {v2, v4, v0}, Lcom/tencent/mm/compatible/c/n;->set(ILjava/lang/Object;)V

    .line 384
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 385
    new-instance v2, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 386
    const-string v3, "MicroMsg.MMCore"

    const-string v4, "CheckData path[%s] blocksize:%d blockcount:%d availcount:%d"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    const/4 v0, 0x2

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockCount()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    const/4 v0, 0x3

    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v0

    invoke-static {v3, v4, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 392
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/tencent/mm/storage/h;->cfC:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "alphahold.ini"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 393
    const-string v2, "MicroMsg.MMCore"

    const-string v3, "initialize dkalpha client:%x  isapha:%b %s"

    new-array v4, v10, [Ljava/lang/Object;

    sget v5, Lcom/tencent/mm/protocal/a;->fxr:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    sget-boolean v5, Lcom/tencent/mm/protocal/a;->fxu:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v8

    aput-object v0, v4, v9

    invoke-static {v2, v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 394
    sget-boolean v2, Lcom/tencent/mm/protocal/a;->fxu:Z

    if-nez v2, :cond_2

    sget-boolean v2, Lcom/tencent/mm/protocal/a;->fxv:Z

    if-eqz v2, :cond_4

    .line 395
    :cond_2
    const-string v2, "noneedhold"

    invoke-static {v0, v2}, Lcom/tencent/mm/platformtools/i;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 396
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget v4, Lcom/tencent/mm/protocal/a;->fxr:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 397
    const-string v2, "MicroMsg.MMCore"

    const-string v3, "dkalpha version need  reset to DefaultAccount , hold it! client:%x  isapha:%b"

    new-array v4, v9, [Ljava/lang/Object;

    sget v5, Lcom/tencent/mm/protocal/a;->fxr:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    sget-boolean v5, Lcom/tencent/mm/protocal/a;->fxu:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v2, v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 399
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v8, v2}, Lcom/tencent/mm/storage/d;->set(ILjava/lang/Object;)V

    .line 400
    const-string v2, "noneedhold"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget v4, Lcom/tencent/mm/protocal/a;->fxr:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/tencent/mm/platformtools/i;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 406
    :cond_3
    :goto_1
    new-instance v0, Lcom/tencent/mm/model/be;

    invoke-direct {v0, p0, v1, p1}, Lcom/tencent/mm/model/be;-><init>(Lcom/tencent/mm/model/an;Lcom/tencent/mm/storage/d;Lcom/tencent/mm/n/ak;)V

    .line 407
    sput-object v0, Lcom/tencent/mm/model/be;->cim:Lcom/tencent/mm/model/be;

    invoke-static {v0}, Lcom/tencent/mm/n/i;->a(Lcom/tencent/mm/n/h;)V

    .line 408
    return-void

    .line 388
    :catch_0
    move-exception v0

    .line 389
    const-string v2, "MicroMsg.MMCore"

    const-string v3, "check data size failed :%s"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v7

    invoke-static {v2, v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 404
    :cond_4
    invoke-static {v0}, Lcom/tencent/mm/a/c;->deleteFile(Ljava/lang/String;)Z

    goto :goto_1
.end method

.method public static a(Lcom/tencent/mm/n/g;)V
    .locals 2
    .parameter

    .prologue
    .line 132
    const-string v0, "MicroMsg.MMCore"

    const-string v1, "cdndns setCdnUpdateListener"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-static {}, Lcom/tencent/mm/model/be;->uq()Lcom/tencent/mm/model/be;

    move-result-object v0

    iput-object p0, v0, Lcom/tencent/mm/model/be;->ciB:Lcom/tencent/mm/n/g;

    .line 134
    return-void
.end method

.method public static a(Lcom/tencent/mm/network/ag;)V
    .locals 1
    .parameter

    .prologue
    .line 137
    invoke-static {}, Lcom/tencent/mm/model/be;->uq()Lcom/tencent/mm/model/be;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/model/be;->ciE:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 138
    return-void
.end method

.method public static a(ZLcom/tencent/mm/protocal/a/by;Lcom/tencent/mm/protocal/a/os;Lcom/tencent/mm/protocal/a/ls;)V
    .locals 17
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 274
    const-string v2, "MicroMsg.MMCore"

    const-string v3, "dkidc updateMultiIDCInfo resetnewwork:%b iplist[l:%d s:%d] hostList[%d] noop[%d %d] typing[%d] port[%s] timeout[%s]"

    const/16 v1, 0x9

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static/range {p0 .. p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v5, 0x1

    if-nez p1, :cond_2

    const/4 v1, -0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    const/4 v5, 0x2

    if-nez p1, :cond_3

    const/4 v1, -0x1

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    const/4 v5, 0x3

    if-nez p3, :cond_4

    const/4 v1, -0x1

    :goto_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    const/4 v5, 0x4

    if-nez p2, :cond_5

    const/4 v1, -0x1

    :goto_3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    const/4 v5, 0x5

    if-nez p2, :cond_6

    const/4 v1, -0x1

    :goto_4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    const/4 v5, 0x6

    if-nez p2, :cond_7

    const/4 v1, -0x1

    :goto_5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    const/4 v5, 0x7

    if-nez p2, :cond_8

    const-string v1, "null"

    :goto_6
    aput-object v1, v4, v5

    const/16 v5, 0x8

    if-nez p2, :cond_9

    const-string v1, "null"

    :goto_7
    aput-object v1, v4, v5

    invoke-static {v2, v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 278
    if-eqz p3, :cond_0

    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/tencent/mm/protocal/a/ls;->fAD:Ljava/util/LinkedList;

    if-eqz v1, :cond_0

    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/tencent/mm/protocal/a/ls;->fAD:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-gtz v1, :cond_a

    .line 279
    :cond_0
    const-string v1, "MicroMsg.MMCore"

    const-string v2, "dkidc updateMultiIDCInfo give empty host request! stack:[%s]"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/cj;->azV()Lcom/tencent/mm/sdk/platformtools/cm;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 367
    :cond_1
    :goto_8
    return-void

    .line 274
    :cond_2
    move-object/from16 v0, p1

    iget v1, v0, Lcom/tencent/mm/protocal/a/by;->fCG:I

    goto :goto_0

    :cond_3
    move-object/from16 v0, p1

    iget v1, v0, Lcom/tencent/mm/protocal/a/by;->fCH:I

    goto :goto_1

    :cond_4
    move-object/from16 v0, p3

    iget v1, v0, Lcom/tencent/mm/protocal/a/ls;->fAC:I

    goto :goto_2

    :cond_5
    move-object/from16 v0, p2

    iget v1, v0, Lcom/tencent/mm/protocal/a/os;->fQj:I

    goto :goto_3

    :cond_6
    move-object/from16 v0, p2

    iget v1, v0, Lcom/tencent/mm/protocal/a/os;->fQk:I

    goto :goto_4

    :cond_7
    move-object/from16 v0, p2

    iget v1, v0, Lcom/tencent/mm/protocal/a/os;->fQl:I

    goto :goto_5

    :cond_8
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/tencent/mm/protocal/a/os;->fQh:Ljava/lang/String;

    goto :goto_6

    :cond_9
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/tencent/mm/protocal/a/os;->fQi:Ljava/lang/String;

    goto :goto_7

    .line 283
    :cond_a
    if-eqz p3, :cond_b

    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/tencent/mm/protocal/a/ls;->fAD:Ljava/util/LinkedList;

    if-eqz v1, :cond_b

    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/tencent/mm/protocal/a/ls;->fAD:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-gtz v1, :cond_c

    .line 284
    :cond_b
    const-string v1, "MicroMsg.MMCore"

    const-string v2, "dkidc updateMultiIDCInfo give empty host request! stack:[%s]"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/cj;->azV()Lcom/tencent/mm/sdk/platformtools/cm;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_8

    .line 288
    :cond_c
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 289
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 290
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/tencent/mm/protocal/a/by;->fCK:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/protocal/a/bx;

    .line 291
    new-instance v4, Lcom/tencent/mm/protocal/u;

    iget v5, v1, Lcom/tencent/mm/protocal/a/bx;->type:I

    iget-object v6, v1, Lcom/tencent/mm/protocal/a/bx;->fCF:Lcom/tencent/mm/am/b;

    invoke-virtual {v6}, Lcom/tencent/mm/am/b;->avA()Ljava/lang/String;

    move-result-object v6

    iget v7, v1, Lcom/tencent/mm/protocal/a/bx;->port:I

    invoke-direct {v4, v5, v6, v7}, Lcom/tencent/mm/protocal/u;-><init>(ILjava/lang/String;I)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    const-string v4, "MicroMsg.MMCore"

    const-string v5, "dkidc updateMultiIDCInfo short type:%d port:%d ip:%s"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget v8, v1, Lcom/tencent/mm/protocal/a/bx;->type:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget v8, v1, Lcom/tencent/mm/protocal/a/bx;->port:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    iget-object v1, v1, Lcom/tencent/mm/protocal/a/bx;->fCF:Lcom/tencent/mm/am/b;

    invoke-virtual {v1}, Lcom/tencent/mm/am/b;->avA()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v7

    invoke-static {v4, v5, v6}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_9

    .line 294
    :cond_d
    invoke-static {v2}, Lcom/tencent/mm/protocal/u;->an(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    .line 296
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 297
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/tencent/mm/protocal/a/by;->fCJ:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/protocal/a/bx;

    .line 298
    new-instance v5, Lcom/tencent/mm/protocal/u;

    iget v6, v1, Lcom/tencent/mm/protocal/a/bx;->type:I

    iget-object v7, v1, Lcom/tencent/mm/protocal/a/bx;->fCF:Lcom/tencent/mm/am/b;

    invoke-virtual {v7}, Lcom/tencent/mm/am/b;->avA()Ljava/lang/String;

    move-result-object v7

    iget v8, v1, Lcom/tencent/mm/protocal/a/bx;->port:I

    invoke-direct {v5, v6, v7, v8}, Lcom/tencent/mm/protocal/u;-><init>(ILjava/lang/String;I)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 299
    const-string v5, "MicroMsg.MMCore"

    const-string v6, "dkidc updateMultiIDCInfo long type:%d port:%d ip:%s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget v9, v1, Lcom/tencent/mm/protocal/a/bx;->type:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget v9, v1, Lcom/tencent/mm/protocal/a/bx;->port:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    iget-object v1, v1, Lcom/tencent/mm/protocal/a/bx;->fCF:Lcom/tencent/mm/am/b;

    invoke-virtual {v1}, Lcom/tencent/mm/am/b;->avA()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v8

    invoke-static {v5, v6, v7}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_a

    .line 301
    :cond_e
    invoke-static {v2}, Lcom/tencent/mm/protocal/u;->an(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    .line 303
    const-string v1, "MicroMsg.MMCore"

    const-string v2, "dkidc updateMultiIDCInfo builtin ip long[%s] short[%s]"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    const/4 v6, 0x1

    aput-object v3, v5, v6

    invoke-static {v1, v2, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 304
    invoke-static {}, Lcom/tencent/mm/model/be;->uq()Lcom/tencent/mm/model/be;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/mm/model/be;->ciq:Lcom/tencent/mm/storage/d;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mm/storage/d;->set(ILjava/lang/Object;)V

    .line 305
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "system_config_prefs"

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 306
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "builtin_short_ips"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 308
    invoke-static {}, Lcom/tencent/mm/model/be;->uq()Lcom/tencent/mm/model/be;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/mm/model/be;->ciq:Lcom/tencent/mm/storage/d;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v4}, Lcom/tencent/mm/storage/d;->set(ILjava/lang/Object;)V

    .line 313
    invoke-static {}, Lcom/tencent/mm/model/be;->uq()Lcom/tencent/mm/model/be;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/mm/model/be;->ciq:Lcom/tencent/mm/storage/d;

    const/4 v2, 0x6

    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/tencent/mm/protocal/a/os;->fQh:Ljava/lang/String;

    invoke-virtual {v1, v2, v6}, Lcom/tencent/mm/storage/d;->set(ILjava/lang/Object;)V

    .line 314
    invoke-static {}, Lcom/tencent/mm/model/be;->uq()Lcom/tencent/mm/model/be;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/mm/model/be;->ciq:Lcom/tencent/mm/storage/d;

    const/4 v2, 0x7

    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/tencent/mm/protocal/a/os;->fQi:Ljava/lang/String;

    invoke-virtual {v1, v2, v6}, Lcom/tencent/mm/storage/d;->set(ILjava/lang/Object;)V

    .line 316
    move-object/from16 v0, p2

    iget v1, v0, Lcom/tencent/mm/protocal/a/os;->fQl:I

    if-eqz v1, :cond_f

    .line 317
    invoke-static {}, Lcom/tencent/mm/model/be;->uq()Lcom/tencent/mm/model/be;

    move-result-object v1

    iget-object v2, v1, Lcom/tencent/mm/model/be;->ciq:Lcom/tencent/mm/storage/d;

    const/16 v6, 0x23

    move-object/from16 v0, p2

    iget v1, v0, Lcom/tencent/mm/protocal/a/os;->fQl:I

    const/16 v7, 0x3c

    if-le v1, v7, :cond_11

    const/16 v1, 0x3c

    :goto_b
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v6, v1}, Lcom/tencent/mm/storage/d;->set(ILjava/lang/Object;)V

    .line 319
    :cond_f
    move-object/from16 v0, p2

    iget v1, v0, Lcom/tencent/mm/protocal/a/os;->fQj:I

    int-to-long v1, v1

    move-object/from16 v0, p2

    iget v6, v0, Lcom/tencent/mm/protocal/a/os;->fQm:I

    int-to-long v6, v6

    invoke-static {v1, v2, v6, v7}, Lcom/tencent/mm/network/bp;->a(JJ)V

    .line 321
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/tencent/mm/protocal/a/os;->fQh:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/tencent/mm/protocal/a/os;->fQi:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/tencent/mm/protocal/u;->aJ(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mm/protocal/v;

    move-result-object v8

    .line 322
    const-string v10, ""

    .line 323
    const-string v9, ""

    .line 325
    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/tencent/mm/protocal/a/ls;->fAD:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    new-array v6, v1, [Ljava/lang/String;

    .line 326
    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/tencent/mm/protocal/a/ls;->fAD:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    new-array v7, v1, [Ljava/lang/String;

    .line 327
    const/4 v1, 0x0

    .line 328
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/tencent/mm/protocal/a/ls;->fAD:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move v2, v1

    :cond_10
    :goto_c
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/protocal/a/lr;

    .line 329
    const-string v12, "MicroMsg.MMCore"

    const-string v13, "dkidc host org:%s sub:%s"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    iget-object v0, v1, Lcom/tencent/mm/protocal/a/lr;->fMX:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    const/4 v15, 0x1

    iget-object v0, v1, Lcom/tencent/mm/protocal/a/lr;->fMY:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    invoke-static {v12, v13, v14}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 330
    iget-object v12, v1, Lcom/tencent/mm/protocal/a/lr;->fMX:Ljava/lang/String;

    aput-object v12, v6, v2

    .line 331
    iget-object v12, v1, Lcom/tencent/mm/protocal/a/lr;->fMY:Ljava/lang/String;

    aput-object v12, v7, v2

    .line 332
    add-int/lit8 v2, v2, 0x1

    .line 333
    iget-object v12, v1, Lcom/tencent/mm/protocal/a/lr;->fMX:Ljava/lang/String;

    invoke-static {v12}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_10

    iget-object v12, v1, Lcom/tencent/mm/protocal/a/lr;->fMY:Ljava/lang/String;

    invoke-static {v12}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_10

    .line 334
    iget-object v12, v1, Lcom/tencent/mm/protocal/a/lr;->fMX:Ljava/lang/String;

    const-string v13, "short.weixin.qq.com"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_12

    .line 337
    invoke-static {}, Lcom/tencent/mm/model/be;->uq()Lcom/tencent/mm/model/be;

    move-result-object v9

    iget-object v9, v9, Lcom/tencent/mm/model/be;->ciq:Lcom/tencent/mm/storage/d;

    const/16 v12, 0x18

    iget-object v13, v1, Lcom/tencent/mm/protocal/a/lr;->fMY:Ljava/lang/String;

    invoke-virtual {v9, v12, v13}, Lcom/tencent/mm/storage/d;->set(ILjava/lang/Object;)V

    .line 338
    iget-object v9, v1, Lcom/tencent/mm/protocal/a/lr;->fMY:Ljava/lang/String;

    goto :goto_c

    .line 317
    :cond_11
    move-object/from16 v0, p2

    iget v1, v0, Lcom/tencent/mm/protocal/a/os;->fQl:I

    goto/16 :goto_b

    .line 340
    :cond_12
    iget-object v12, v1, Lcom/tencent/mm/protocal/a/lr;->fMX:Ljava/lang/String;

    const-string v13, "long.weixin.qq.com"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_13

    .line 341
    invoke-static {}, Lcom/tencent/mm/model/be;->uq()Lcom/tencent/mm/model/be;

    move-result-object v10

    iget-object v10, v10, Lcom/tencent/mm/model/be;->ciq:Lcom/tencent/mm/storage/d;

    const/16 v12, 0x19

    iget-object v13, v1, Lcom/tencent/mm/protocal/a/lr;->fMY:Ljava/lang/String;

    invoke-virtual {v10, v12, v13}, Lcom/tencent/mm/storage/d;->set(ILjava/lang/Object;)V

    .line 342
    iget-object v10, v1, Lcom/tencent/mm/protocal/a/lr;->fMY:Ljava/lang/String;

    goto :goto_c

    .line 343
    :cond_13
    iget-object v12, v1, Lcom/tencent/mm/protocal/a/lr;->fMX:Ljava/lang/String;

    const-string v13, "support.weixin.qq.com"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_10

    iget-object v12, v1, Lcom/tencent/mm/protocal/a/lr;->fMY:Ljava/lang/String;

    invoke-static {v12}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_10

    .line 344
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    const-string v13, "support.weixin.qq.com"

    iget-object v1, v1, Lcom/tencent/mm/protocal/a/lr;->fMY:Ljava/lang/String;

    invoke-interface {v12, v13, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_c

    .line 347
    :cond_14
    array-length v1, v6

    if-lez v1, :cond_15

    .line 348
    invoke-static {}, Lcom/tencent/mm/n/i;->wC()Lcom/tencent/mm/n/h;

    move-result-object v1

    invoke-interface {v1}, Lcom/tencent/mm/n/h;->uJ()Lcom/tencent/mm/n/ac;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/n/ac;->uN()Lcom/tencent/mm/network/r;

    move-result-object v1

    invoke-interface {v1, v6, v7}, Lcom/tencent/mm/network/r;->setHostInfo([Ljava/lang/String;[Ljava/lang/String;)V

    .line 351
    :cond_15
    const-string v1, "MicroMsg.MMCore"

    const-string v2, "dkidc updateMultiIDCInfo resetnetwork:%b RESULT host s:%s l:%s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static/range {p0 .. p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v9, v5, v6

    const/4 v6, 0x2

    aput-object v10, v5, v6

    invoke-static {v1, v2, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 353
    invoke-static {v10}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 354
    invoke-static {}, Lcom/tencent/mm/model/be;->uq()Lcom/tencent/mm/model/be;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/mm/model/be;->ciq:Lcom/tencent/mm/storage/d;

    const/16 v2, 0x19

    invoke-virtual {v1, v2, v10}, Lcom/tencent/mm/storage/d;->set(ILjava/lang/Object;)V

    .line 356
    :cond_16
    invoke-static {v9}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 357
    invoke-static {}, Lcom/tencent/mm/model/be;->uq()Lcom/tencent/mm/model/be;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/mm/model/be;->ciq:Lcom/tencent/mm/storage/d;

    const/16 v2, 0x18

    invoke-virtual {v1, v2, v9}, Lcom/tencent/mm/storage/d;->set(ILjava/lang/Object;)V

    .line 359
    :cond_17
    invoke-static {}, Lcom/tencent/mm/n/i;->wC()Lcom/tencent/mm/n/h;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 361
    invoke-static {}, Lcom/tencent/mm/n/i;->wC()Lcom/tencent/mm/n/h;

    move-result-object v1

    invoke-interface {v1}, Lcom/tencent/mm/n/h;->uJ()Lcom/tencent/mm/n/ac;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 363
    invoke-static {}, Lcom/tencent/mm/n/i;->wC()Lcom/tencent/mm/n/h;

    move-result-object v1

    invoke-interface {v1}, Lcom/tencent/mm/n/h;->uJ()Lcom/tencent/mm/n/ac;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/n/ac;->uN()Lcom/tencent/mm/network/r;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 366
    invoke-static {}, Lcom/tencent/mm/n/i;->wC()Lcom/tencent/mm/n/h;

    move-result-object v1

    invoke-interface {v1}, Lcom/tencent/mm/n/h;->uJ()Lcom/tencent/mm/n/ac;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/n/ac;->uN()Lcom/tencent/mm/network/r;

    move-result-object v1

    invoke-virtual {v8}, Lcom/tencent/mm/protocal/v;->awL()[I

    move-result-object v5

    invoke-virtual {v8}, Lcom/tencent/mm/protocal/v;->awM()[I

    move-result-object v6

    invoke-virtual {v8}, Lcom/tencent/mm/protocal/v;->awN()I

    move-result v7

    invoke-virtual {v8}, Lcom/tencent/mm/protocal/v;->awO()I

    move-result v8

    move/from16 v2, p0

    invoke-interface/range {v1 .. v10}, Lcom/tencent/mm/network/r;->a(ZLjava/lang/String;Ljava/lang/String;[I[IIILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8
.end method

.method public static a(Lcom/tencent/mm/protocal/a/bz;)Z
    .locals 1
    .parameter

    .prologue
    .line 1233
    new-instance v0, Lcom/tencent/mm/model/bi;

    invoke-direct {v0, p0}, Lcom/tencent/mm/model/bi;-><init>(Lcom/tencent/mm/protocal/a/bz;)V

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/an;->i(Ljava/lang/Runnable;)V

    .line 1245
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic b(Lcom/tencent/mm/model/be;)V
    .locals 2
    .parameter

    .prologue
    .line 84
    const/16 v0, 0x270f

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/model/be;->ciG:Lcom/tencent/mm/model/du;

    invoke-static {v0}, Lcom/tencent/mm/n/l;->S(Ljava/lang/Object;)V

    const/16 v0, 0x29

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/model/be;->ciH:Lcom/tencent/mm/model/cq;

    invoke-static {v0}, Lcom/tencent/mm/n/l;->S(Ljava/lang/Object;)V

    const/16 v0, 0x2710

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/model/be;->ciI:Lcom/tencent/mm/model/q;

    invoke-static {v0}, Lcom/tencent/mm/n/l;->S(Ljava/lang/Object;)V

    const/16 v0, 0x2711

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/model/be;->ciJ:Lcom/tencent/mm/model/ds;

    invoke-static {v0}, Lcom/tencent/mm/n/l;->S(Ljava/lang/Object;)V

    const/16 v0, 0x2712

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/model/be;->ciJ:Lcom/tencent/mm/model/ds;

    invoke-static {v0}, Lcom/tencent/mm/n/l;->S(Ljava/lang/Object;)V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/model/be;->ciI:Lcom/tencent/mm/model/q;

    invoke-static {v0}, Lcom/tencent/mm/n/l;->S(Ljava/lang/Object;)V

    const/16 v0, 0x15

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/model/be;->ciI:Lcom/tencent/mm/model/q;

    invoke-static {v0}, Lcom/tencent/mm/n/l;->S(Ljava/lang/Object;)V

    const/16 v0, 0x23

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/model/be;->ciI:Lcom/tencent/mm/model/q;

    invoke-static {v0}, Lcom/tencent/mm/n/l;->S(Ljava/lang/Object;)V

    return-void
.end method

.method public static b(Lcom/tencent/mm/network/ag;)V
    .locals 1
    .parameter

    .prologue
    .line 141
    invoke-static {}, Lcom/tencent/mm/model/be;->uq()Lcom/tencent/mm/model/be;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/model/be;->ciE:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 142
    return-void
.end method

.method public static b(Lcom/tencent/mm/network/r;)V
    .locals 12
    .parameter

    .prologue
    .line 493
    const-string v0, "MicroMsg.MMCore"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setting up remote dispatcher "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    if-nez p0, :cond_1

    .line 496
    const-string v0, "MicroMsg.MMCore"

    const-string v1, "setAutoAuth autoAuh is null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    :cond_0
    :goto_0
    return-void

    .line 501
    :cond_1
    :try_start_0
    invoke-interface {p0}, Lcom/tencent/mm/network/r;->xa()Lcom/tencent/mm/network/v;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 502
    invoke-interface {p0}, Lcom/tencent/mm/network/r;->xa()Lcom/tencent/mm/network/v;

    move-result-object v0

    invoke-static {}, Lcom/tencent/mm/model/be;->uq()Lcom/tencent/mm/model/be;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/mm/model/be;->ciF:Lcom/tencent/mm/network/ag;

    invoke-interface {v0, v1}, Lcom/tencent/mm/network/v;->c(Lcom/tencent/mm/network/ag;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 506
    :cond_2
    :goto_1
    new-instance v0, Lcom/tencent/mm/model/bk;

    invoke-direct {v0}, Lcom/tencent/mm/model/bk;-><init>()V

    invoke-interface {p0, v0}, Lcom/tencent/mm/network/r;->a(Lcom/tencent/mm/protocal/bf;)V

    .line 553
    invoke-interface {p0}, Lcom/tencent/mm/network/r;->wZ()Lcom/tencent/mm/network/n;

    move-result-object v10

    .line 554
    if-nez v10, :cond_3

    .line 555
    const-string v0, "MicroMsg.MMCore"

    const-string v1, "accInfo is null, it would assert before!!!"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->aM(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    invoke-static {}, Lcom/tencent/mm/model/be;->uq()Lcom/tencent/mm/model/be;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/model/be;->cio:Lcom/tencent/mm/n/ac;

    invoke-virtual {v0}, Lcom/tencent/mm/n/ac;->wV()V

    goto :goto_0

    .line 560
    :cond_3
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/at;->azE()Lcom/tencent/mm/sdk/platformtools/at;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/model/bl;

    invoke-direct {v1, v10}, Lcom/tencent/mm/model/bl;-><init>(Lcom/tencent/mm/network/n;)V

    new-instance v2, Lcom/tencent/mm/model/bm;

    invoke-direct {v2}, Lcom/tencent/mm/model/bm;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/at;->a(Lcom/tencent/mm/sdk/platformtools/aw;Lcom/tencent/mm/sdk/platformtools/av;)V

    .line 607
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setAutoAuth, getSysCfg() is null, stack = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/cj;->azV()Lcom/tencent/mm/sdk/platformtools/cm;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/tencent/mm/model/be;->uq()Lcom/tencent/mm/model/be;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/model/be;->ciq:Lcom/tencent/mm/storage/d;

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    :goto_2
    invoke-static {v1, v0}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    .line 609
    invoke-static {}, Lcom/tencent/mm/model/be;->uq()Lcom/tencent/mm/model/be;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/model/be;->ciq:Lcom/tencent/mm/storage/d;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/d;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 610
    invoke-static {}, Lcom/tencent/mm/model/be;->uq()Lcom/tencent/mm/model/be;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/model/be;->ciq:Lcom/tencent/mm/storage/d;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/d;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 611
    invoke-static {}, Lcom/tencent/mm/model/be;->uq()Lcom/tencent/mm/model/be;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/model/be;->ciq:Lcom/tencent/mm/storage/d;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/d;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 612
    invoke-static {}, Lcom/tencent/mm/model/be;->uq()Lcom/tencent/mm/model/be;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/mm/model/be;->ciq:Lcom/tencent/mm/storage/d;

    const/4 v4, 0x7

    invoke-virtual {v1, v4}, Lcom/tencent/mm/storage/d;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 613
    invoke-static {}, Lcom/tencent/mm/model/be;->uq()Lcom/tencent/mm/model/be;

    move-result-object v4

    iget-object v4, v4, Lcom/tencent/mm/model/be;->ciq:Lcom/tencent/mm/storage/d;

    const/16 v5, 0x19

    invoke-virtual {v4, v5}, Lcom/tencent/mm/storage/d;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 614
    invoke-static {}, Lcom/tencent/mm/model/be;->uq()Lcom/tencent/mm/model/be;

    move-result-object v4

    iget-object v4, v4, Lcom/tencent/mm/model/be;->ciq:Lcom/tencent/mm/storage/d;

    const/16 v5, 0x18

    invoke-virtual {v4, v5}, Lcom/tencent/mm/storage/d;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 616
    invoke-static {v0, v1}, Lcom/tencent/mm/protocal/u;->aJ(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mm/protocal/v;

    move-result-object v7

    .line 618
    const-string v4, "MicroMsg.MMCore"

    const-string v5, "dkidc host[s:%s l:%s] builtin[s:%s l:%s] ports[%s] timeout[%s]"

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v8, v6, v11

    const/4 v11, 0x1

    aput-object v9, v6, v11

    const/4 v11, 0x2

    aput-object v2, v6, v11

    const/4 v11, 0x3

    aput-object v3, v6, v11

    const/4 v11, 0x4

    aput-object v0, v6, v11

    const/4 v0, 0x5

    aput-object v1, v6, v0

    invoke-static {v4, v5, v6}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 619
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setAutoAuth, autoAuth is null, stack = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/cj;->azV()Lcom/tencent/mm/sdk/platformtools/cm;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    :goto_3
    invoke-static {v1, v0}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    .line 620
    const/4 v1, 0x0

    invoke-virtual {v7}, Lcom/tencent/mm/protocal/v;->awL()[I

    move-result-object v4

    invoke-virtual {v7}, Lcom/tencent/mm/protocal/v;->awM()[I

    move-result-object v5

    invoke-virtual {v7}, Lcom/tencent/mm/protocal/v;->awN()I

    move-result v6

    invoke-virtual {v7}, Lcom/tencent/mm/protocal/v;->awO()I

    move-result v7

    move-object v0, p0

    invoke-interface/range {v0 .. v9}, Lcom/tencent/mm/network/r;->a(ZLjava/lang/String;Ljava/lang/String;[I[IIILjava/lang/String;Ljava/lang/String;)V

    .line 626
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    .line 628
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "setAutoAuth, accStg is null, stack = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/cj;->azV()Lcom/tencent/mm/sdk/platformtools/cm;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_6

    const/4 v0, 0x1

    :goto_4
    invoke-static {v2, v0}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    .line 629
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "setAutoAuth, accInfo is null, stack = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/cj;->azV()Lcom/tencent/mm/sdk/platformtools/cm;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v10, :cond_7

    const/4 v0, 0x1

    :goto_5
    invoke-static {v2, v0}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    .line 631
    invoke-static {}, Lcom/tencent/mm/model/be;->se()Z

    move-result v0

    if-nez v0, :cond_8

    .line 632
    const-string v0, "MicroMsg.MMCore"

    const-string v1, "need to clear acc info and maybe stop networking"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    invoke-interface {v10}, Lcom/tencent/mm/network/n;->reset()V

    .line 634
    invoke-interface {p0}, Lcom/tencent/mm/network/r;->reset()V

    .line 635
    invoke-static {}, Lcom/tencent/mm/model/be;->uq()Lcom/tencent/mm/model/be;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/model/be;->cio:Lcom/tencent/mm/n/ac;

    invoke-virtual {v0, p0}, Lcom/tencent/mm/n/ac;->b(Lcom/tencent/mm/network/r;)V

    goto/16 :goto_0

    .line 607
    :cond_4
    const/4 v0, 0x0

    goto/16 :goto_2

    .line 619
    :cond_5
    const/4 v0, 0x0

    goto :goto_3

    .line 628
    :cond_6
    const/4 v0, 0x0

    goto :goto_4

    .line 629
    :cond_7
    const/4 v0, 0x0

    goto :goto_5

    .line 639
    :cond_8
    invoke-static {}, Lcom/tencent/mm/model/be;->uq()Lcom/tencent/mm/model/be;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/model/be;->cio:Lcom/tencent/mm/n/ac;

    invoke-virtual {v0, p0}, Lcom/tencent/mm/n/ac;->b(Lcom/tencent/mm/network/r;)V

    .line 640
    new-instance v0, Lcom/tencent/mm/model/bn;

    invoke-direct {v0, p0}, Lcom/tencent/mm/model/bn;-><init>(Lcom/tencent/mm/network/r;)V

    invoke-static {v0}, Lcom/tencent/mm/network/k;->a(Lcom/tencent/mm/network/l;)V

    .line 648
    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->sd()I

    move-result v0

    invoke-interface {v10}, Lcom/tencent/mm/network/n;->sd()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 650
    const-string v0, "MicroMsg.MMCore"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "update acc info with acc stg: uin ="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v10}, Lcom/tencent/mm/network/n;->sd()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setAutoAuth, getConfigStg() is null, stack = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/cj;->azV()Lcom/tencent/mm/sdk/platformtools/cm;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    :goto_6
    invoke-static {v1, v0}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    .line 653
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/e;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 654
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/tencent/mm/storage/e;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 655
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v2

    const/16 v3, 0x13

    invoke-virtual {v2, v3}, Lcom/tencent/mm/storage/e;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 657
    const-string v3, ""

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/mm/model/b;->sd()I

    move-result v4

    invoke-interface {v10, v3, v4}, Lcom/tencent/mm/network/n;->q(Ljava/lang/String;I)V

    .line 658
    invoke-interface {v10, v0, v1, v2}, Lcom/tencent/mm/network/n;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 651
    :cond_9
    const/4 v0, 0x0

    goto :goto_6

    :catch_0
    move-exception v0

    goto/16 :goto_1
.end method

.method static synthetic c(Lcom/tencent/mm/model/be;)Lcom/tencent/mm/model/b;
    .locals 1
    .parameter

    .prologue
    .line 84
    iget-object v0, p0, Lcom/tencent/mm/model/be;->cia:Lcom/tencent/mm/model/b;

    return-object v0
.end method

.method public static cs(I)V
    .locals 3
    .parameter

    .prologue
    .line 717
    invoke-static {}, Lcom/tencent/mm/model/be;->uq()Lcom/tencent/mm/model/be;

    move-result-object v0

    iget-object v1, v0, Lcom/tencent/mm/model/be;->cia:Lcom/tencent/mm/model/b;

    .line 718
    const-string v2, "MMCore has not been initialize ?"

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v2, v0}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    .line 719
    monitor-enter v1

    .line 720
    :try_start_0
    invoke-static {}, Lcom/tencent/mm/model/be;->se()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 721
    monitor-exit v1

    .line 724
    :goto_1
    return-void

    .line 718
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 723
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {v1, v0, p0}, Lcom/tencent/mm/model/b;->k(Ljava/lang/String;I)V

    .line 724
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic d(Lcom/tencent/mm/model/be;)Lcom/tencent/mm/n/aw;
    .locals 1
    .parameter

    .prologue
    .line 84
    iget-object v0, p0, Lcom/tencent/mm/model/be;->cin:Lcom/tencent/mm/n/aw;

    return-object v0
.end method

.method public static dr(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 160
    sput-object p0, Lcom/tencent/mm/model/be;->ciA:Ljava/lang/String;

    .line 161
    return-void
.end method

.method public static ds(Ljava/lang/String;)I
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 697
    invoke-static {}, Lcom/tencent/mm/model/be;->uq()Lcom/tencent/mm/model/be;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/model/be;->ciD:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    move v0, v1

    .line 698
    :goto_0
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/cj;->FC()J

    move-result-wide v2

    long-to-int v2, v2

    .line 699
    if-nez v0, :cond_2

    .line 700
    invoke-static {}, Lcom/tencent/mm/model/be;->uq()Lcom/tencent/mm/model/be;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/mm/model/be;->ciD:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 705
    :cond_0
    :goto_1
    return v0

    .line 697
    :cond_1
    invoke-static {}, Lcom/tencent/mm/model/be;->uq()Lcom/tencent/mm/model/be;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/model/be;->ciD:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 703
    :cond_2
    sub-int v0, v2, v0

    .line 704
    invoke-static {}, Lcom/tencent/mm/model/be;->uq()Lcom/tencent/mm/model/be;

    move-result-object v3

    iget-object v3, v3, Lcom/tencent/mm/model/be;->ciD:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 705
    if-gez v0, :cond_0

    move v0, v1

    goto :goto_1
.end method

.method public static dt(Ljava/lang/String;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 834
    const-string v0, "MicroMsg.MMCore"

    const-string v1, "logoutAccount uin:%s info:%s stack:%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/model/b;->sd()I

    move-result v3

    invoke-static {v3}, Lcom/tencent/mm/a/j;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object p0, v2, v6

    const/4 v3, 0x2

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/cj;->azV()Lcom/tencent/mm/sdk/platformtools/cm;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 836
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/cj;->azV()Lcom/tencent/mm/sdk/platformtools/cm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/sdk/platformtools/cm;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/mm/model/be;->ciA:Ljava/lang/String;

    .line 837
    invoke-static {}, Lcom/tencent/mm/model/be;->uq()Lcom/tencent/mm/model/be;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/model/be;->cin:Lcom/tencent/mm/n/aw;

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->sd()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/n/aw;->w(J)V

    .line 838
    invoke-static {}, Lcom/tencent/mm/model/be;->release()V

    .line 839
    invoke-static {}, Lcom/tencent/mm/model/be;->uq()Lcom/tencent/mm/model/be;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/model/be;->ciq:Lcom/tencent/mm/storage/d;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Lcom/tencent/mm/storage/d;->set(ILjava/lang/Object;)V

    .line 840
    sput-boolean v5, Lcom/tencent/mm/model/be;->cis:Z

    .line 841
    sput-boolean v5, Lcom/tencent/mm/model/be;->cit:Z

    .line 842
    sput-boolean v5, Lcom/tencent/mm/model/be;->ciu:Z

    .line 843
    return-void
.end method

.method static synthetic e(Lcom/tencent/mm/model/be;)Lcom/tencent/mm/model/dr;
    .locals 1
    .parameter

    .prologue
    .line 84
    iget-object v0, p0, Lcom/tencent/mm/model/be;->ciw:Lcom/tencent/mm/model/dr;

    return-object v0
.end method

.method static synthetic f(Lcom/tencent/mm/model/be;)V
    .locals 2
    .parameter

    .prologue
    .line 84
    iget-object v0, p0, Lcom/tencent/mm/model/be;->cia:Lcom/tencent/mm/model/b;

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/model/be;->ciK:Lcom/tencent/mm/storage/m;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/k;->a(Lcom/tencent/mm/storage/m;)V

    iget-object v0, p0, Lcom/tencent/mm/model/be;->cia:Lcom/tencent/mm/model/b;

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sx()Lcom/tencent/mm/storage/o;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/model/be;->ciM:Lcom/tencent/mm/storage/r;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/o;->b(Lcom/tencent/mm/storage/r;)V

    iget-object v0, p0, Lcom/tencent/mm/model/be;->cia:Lcom/tencent/mm/model/b;

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sx()Lcom/tencent/mm/storage/o;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/model/be;->ciL:Lcom/tencent/mm/storage/r;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/o;->a(Lcom/tencent/mm/storage/r;)V

    const/16 v0, 0x270f

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/model/be;->ciG:Lcom/tencent/mm/model/du;

    invoke-static {v0, v1}, Lcom/tencent/mm/n/l;->a(Ljava/lang/Object;Lcom/tencent/mm/n/j;)V

    const/16 v0, 0x29

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/model/be;->ciH:Lcom/tencent/mm/model/cq;

    invoke-static {v0, v1}, Lcom/tencent/mm/n/l;->a(Ljava/lang/Object;Lcom/tencent/mm/n/j;)V

    const/16 v0, 0x2710

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/model/be;->ciI:Lcom/tencent/mm/model/q;

    invoke-static {v0, v1}, Lcom/tencent/mm/n/l;->a(Ljava/lang/Object;Lcom/tencent/mm/n/j;)V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/model/be;->ciI:Lcom/tencent/mm/model/q;

    invoke-static {v0, v1}, Lcom/tencent/mm/n/l;->a(Ljava/lang/Object;Lcom/tencent/mm/n/j;)V

    const/16 v0, 0x2711

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/model/be;->ciJ:Lcom/tencent/mm/model/ds;

    invoke-static {v0, v1}, Lcom/tencent/mm/n/l;->a(Ljava/lang/Object;Lcom/tencent/mm/n/j;)V

    const/16 v0, 0x2712

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/model/be;->ciJ:Lcom/tencent/mm/model/ds;

    invoke-static {v0, v1}, Lcom/tencent/mm/n/l;->a(Ljava/lang/Object;Lcom/tencent/mm/n/j;)V

    const/16 v0, 0x15

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/model/be;->ciI:Lcom/tencent/mm/model/q;

    invoke-static {v0, v1}, Lcom/tencent/mm/n/l;->a(Ljava/lang/Object;Lcom/tencent/mm/n/j;)V

    const/16 v0, 0x23

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/model/be;->ciI:Lcom/tencent/mm/model/q;

    invoke-static {v0, v1}, Lcom/tencent/mm/n/l;->a(Ljava/lang/Object;Lcom/tencent/mm/n/j;)V

    return-void
.end method

.method static synthetic g(Lcom/tencent/mm/model/be;)Lcom/tencent/mm/model/an;
    .locals 1
    .parameter

    .prologue
    .line 84
    iget-object v0, p0, Lcom/tencent/mm/model/be;->cib:Lcom/tencent/mm/model/an;

    return-object v0
.end method

.method static synthetic h(Lcom/tencent/mm/model/be;)Lcom/tencent/mm/n/g;
    .locals 1
    .parameter

    .prologue
    .line 84
    iget-object v0, p0, Lcom/tencent/mm/model/be;->ciB:Lcom/tencent/mm/n/g;

    return-object v0
.end method

.method public static nQ()Lcom/tencent/mm/model/ap;
    .locals 1

    .prologue
    .line 411
    invoke-static {}, Lcom/tencent/mm/model/be;->uq()Lcom/tencent/mm/model/be;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/model/be;->cib:Lcom/tencent/mm/model/an;

    invoke-interface {v0}, Lcom/tencent/mm/model/an;->nQ()Lcom/tencent/mm/model/ap;

    move-result-object v0

    return-object v0
.end method

.method public static nS()Lcom/tencent/mm/model/al;
    .locals 1

    .prologue
    .line 415
    invoke-static {}, Lcom/tencent/mm/model/be;->uq()Lcom/tencent/mm/model/be;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/model/be;->cib:Lcom/tencent/mm/model/an;

    invoke-interface {v0}, Lcom/tencent/mm/model/an;->nS()Lcom/tencent/mm/model/al;

    move-result-object v0

    return-object v0
.end method

.method public static nT()Lcom/tencent/mm/model/ah;
    .locals 1

    .prologue
    .line 419
    invoke-static {}, Lcom/tencent/mm/model/be;->uq()Lcom/tencent/mm/model/be;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/model/be;->cib:Lcom/tencent/mm/model/an;

    invoke-interface {v0}, Lcom/tencent/mm/model/an;->nT()Lcom/tencent/mm/model/ah;

    move-result-object v0

    return-object v0
.end method

.method public static release()V
    .locals 5

    .prologue
    .line 811
    const-string v1, "MicroMsg.MMCore"

    const-string v2, "release uin:%s "

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {}, Lcom/tencent/mm/model/be;->uq()Lcom/tencent/mm/model/be;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/model/be;->cia:Lcom/tencent/mm/model/b;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/tencent/mm/model/be;->uq()Lcom/tencent/mm/model/be;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/model/be;->cia:Lcom/tencent/mm/model/b;

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sd()I

    move-result v0

    invoke-static {v0}, Lcom/tencent/mm/a/j;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 812
    invoke-static {}, Lcom/tencent/mm/model/be;->uq()Lcom/tencent/mm/model/be;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/model/be;->cio:Lcom/tencent/mm/n/ac;

    if-eqz v0, :cond_0

    .line 813
    invoke-static {}, Lcom/tencent/mm/model/be;->uq()Lcom/tencent/mm/model/be;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/model/be;->cio:Lcom/tencent/mm/n/ac;

    invoke-virtual {v0}, Lcom/tencent/mm/n/ac;->reset()V

    .line 815
    :cond_0
    invoke-static {}, Lcom/tencent/mm/model/be;->uq()Lcom/tencent/mm/model/be;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/model/be;->cip:Lcom/tencent/mm/sdk/platformtools/an;

    if-eqz v0, :cond_1

    .line 816
    invoke-static {}, Lcom/tencent/mm/model/be;->uq()Lcom/tencent/mm/model/be;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/model/be;->cip:Lcom/tencent/mm/sdk/platformtools/an;

    new-instance v1, Lcom/tencent/mm/model/bp;

    invoke-direct {v1}, Lcom/tencent/mm/model/bp;-><init>()V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/sdk/platformtools/an;->a(Lcom/tencent/mm/sdk/platformtools/as;)I

    .line 831
    :cond_1
    return-void

    .line 811
    :cond_2
    const-string v0, "-1"

    goto :goto_0
.end method

.method public static se()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 874
    sget-object v0, Lcom/tencent/mm/model/be;->cim:Lcom/tencent/mm/model/be;

    if-nez v0, :cond_0

    move v0, v1

    .line 877
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/tencent/mm/model/be;->cim:Lcom/tencent/mm/model/be;

    iget-object v0, v0, Lcom/tencent/mm/model/be;->cia:Lcom/tencent/mm/model/b;

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->se()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/tencent/mm/model/be;->cim:Lcom/tencent/mm/model/be;

    iget-object v0, v0, Lcom/tencent/mm/model/be;->cia:Lcom/tencent/mm/model/b;

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sd()I

    move-result v3

    invoke-static {}, Lcom/tencent/mm/model/be;->uq()Lcom/tencent/mm/model/be;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/model/be;->ciq:Lcom/tencent/mm/storage/d;

    invoke-virtual {v0, v2}, Lcom/tencent/mm/storage/d;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->c(Ljava/lang/Integer;)I

    move-result v0

    if-ne v3, v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public static uA()Lcom/tencent/mm/n/ac;
    .locals 1

    .prologue
    .line 800
    invoke-static {}, Lcom/tencent/mm/model/be;->uq()Lcom/tencent/mm/model/be;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/model/be;->cio:Lcom/tencent/mm/n/ac;

    return-object v0
.end method

.method public static uB()Lcom/tencent/mm/compatible/audio/e;
    .locals 3

    .prologue
    .line 804
    invoke-static {}, Lcom/tencent/mm/model/be;->uq()Lcom/tencent/mm/model/be;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/model/be;->civ:Lcom/tencent/mm/compatible/audio/e;

    if-nez v0, :cond_0

    .line 805
    invoke-static {}, Lcom/tencent/mm/model/be;->uq()Lcom/tencent/mm/model/be;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/compatible/audio/e;

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tencent/mm/compatible/audio/e;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/tencent/mm/model/be;->civ:Lcom/tencent/mm/compatible/audio/e;

    .line 807
    :cond_0
    invoke-static {}, Lcom/tencent/mm/model/be;->uq()Lcom/tencent/mm/model/be;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/model/be;->civ:Lcom/tencent/mm/compatible/audio/e;

    return-object v0
.end method

.method public static uC()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 848
    invoke-static {}, Lcom/tencent/mm/model/be;->uq()Lcom/tencent/mm/model/be;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/model/be;->cia:Lcom/tencent/mm/model/b;

    .line 849
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/mm/model/be;->se()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    .line 855
    :goto_0
    return v0

    .line 852
    :cond_1
    invoke-static {}, Lcom/tencent/mm/model/be;->uq()Lcom/tencent/mm/model/be;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/model/be;->ciq:Lcom/tencent/mm/storage/d;

    invoke-virtual {v0, v2}, Lcom/tencent/mm/storage/d;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->c(Ljava/lang/Integer;)I

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 853
    goto :goto_0

    :cond_2
    move v0, v2

    .line 855
    goto :goto_0
.end method

.method public static uD()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 860
    sget-object v0, Lcom/tencent/mm/model/be;->cim:Lcom/tencent/mm/model/be;

    if-nez v0, :cond_0

    move v0, v1

    .line 866
    :goto_0
    return v0

    .line 863
    :cond_0
    invoke-static {}, Lcom/tencent/mm/model/be;->uq()Lcom/tencent/mm/model/be;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/model/be;->ciq:Lcom/tencent/mm/storage/d;

    invoke-virtual {v0, v2}, Lcom/tencent/mm/storage/d;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->c(Ljava/lang/Integer;)I

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 864
    goto :goto_0

    :cond_1
    move v0, v2

    .line 866
    goto :goto_0
.end method

.method public static uE()Z
    .locals 1

    .prologue
    .line 881
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static uF()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 888
    invoke-static {}, Lcom/tencent/mm/model/be;->uq()Lcom/tencent/mm/model/be;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/model/be;->cia:Lcom/tencent/mm/model/b;

    .line 889
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/mm/model/be;->se()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    .line 895
    :goto_0
    return v0

    .line 892
    :cond_1
    invoke-static {}, Lcom/tencent/mm/model/be;->uq()Lcom/tencent/mm/model/be;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/model/be;->ciq:Lcom/tencent/mm/storage/d;

    invoke-virtual {v0, v2}, Lcom/tencent/mm/storage/d;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->c(Ljava/lang/Integer;)I

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 893
    goto :goto_0

    :cond_2
    move v0, v2

    .line 895
    goto :goto_0
.end method

.method public static uG()Z
    .locals 5

    .prologue
    .line 909
    sget-boolean v0, Lcom/tencent/mm/model/be;->cir:Z

    if-eqz v0, :cond_0

    .line 910
    const-string v1, "MicroMsg.MMCore"

    const-string v2, "account holded :%s"

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {}, Lcom/tencent/mm/model/be;->uq()Lcom/tencent/mm/model/be;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/model/be;->cia:Lcom/tencent/mm/model/b;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/tencent/mm/model/be;->uq()Lcom/tencent/mm/model/be;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/model/be;->cia:Lcom/tencent/mm/model/b;

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sd()I

    move-result v0

    invoke-static {v0}, Lcom/tencent/mm/a/j;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 912
    :cond_0
    sget-boolean v0, Lcom/tencent/mm/model/be;->cir:Z

    return v0

    .line 910
    :cond_1
    const-string v0, "-1"

    goto :goto_0
.end method

.method public static uH()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 919
    const-string v1, "MicroMsg.MMCore"

    const-string v2, " HOLD ACCOUNT! uin:%s"

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {}, Lcom/tencent/mm/model/be;->uq()Lcom/tencent/mm/model/be;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/model/be;->cia:Lcom/tencent/mm/model/b;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/mm/model/be;->uq()Lcom/tencent/mm/model/be;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/model/be;->cia:Lcom/tencent/mm/model/b;

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sd()I

    move-result v0

    invoke-static {v0}, Lcom/tencent/mm/a/j;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 920
    sput-boolean v5, Lcom/tencent/mm/model/be;->cir:Z

    .line 921
    invoke-static {}, Lcom/tencent/mm/model/be;->uq()Lcom/tencent/mm/model/be;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/model/be;->ciq:Lcom/tencent/mm/storage/d;

    const/16 v1, 0x11

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/storage/d;->set(ILjava/lang/Object;)V

    .line 922
    return-void

    .line 919
    :cond_0
    const-string v0, "-1"

    goto :goto_0
.end method

.method public static uI()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 928
    const-string v1, "MicroMsg.MMCore"

    const-string v2, " UN HOLD ACCOUNT! uin:%s"

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {}, Lcom/tencent/mm/model/be;->uq()Lcom/tencent/mm/model/be;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/model/be;->cia:Lcom/tencent/mm/model/b;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/mm/model/be;->uq()Lcom/tencent/mm/model/be;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/model/be;->cia:Lcom/tencent/mm/model/b;

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sd()I

    move-result v0

    invoke-static {v0}, Lcom/tencent/mm/a/j;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 929
    sput-boolean v4, Lcom/tencent/mm/model/be;->cir:Z

    .line 930
    invoke-static {}, Lcom/tencent/mm/model/be;->uq()Lcom/tencent/mm/model/be;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/model/be;->ciq:Lcom/tencent/mm/storage/d;

    const/16 v1, 0x11

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/storage/d;->set(ILjava/lang/Object;)V

    .line 931
    return-void

    .line 928
    :cond_0
    const-string v0, "-1"

    goto :goto_0
.end method

.method static synthetic uK()Lcom/tencent/mm/model/be;
    .locals 1

    .prologue
    .line 84
    invoke-static {}, Lcom/tencent/mm/model/be;->uq()Lcom/tencent/mm/model/be;

    move-result-object v0

    return-object v0
.end method

.method public static ug()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    sget-object v0, Lcom/tencent/mm/model/be;->ciA:Ljava/lang/String;

    return-object v0
.end method

.method public static uh()Lcom/tencent/mm/model/dr;
    .locals 1

    .prologue
    .line 164
    invoke-static {}, Lcom/tencent/mm/model/be;->uq()Lcom/tencent/mm/model/be;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/model/be;->ciw:Lcom/tencent/mm/model/dr;

    return-object v0
.end method

.method public static ui()Lcom/tencent/mm/model/dv;
    .locals 1

    .prologue
    .line 168
    invoke-static {}, Lcom/tencent/mm/model/be;->uq()Lcom/tencent/mm/model/be;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/model/be;->cix:Lcom/tencent/mm/model/dv;

    return-object v0
.end method

.method public static uj()Lcom/tencent/mm/model/ak;
    .locals 1

    .prologue
    .line 176
    sget-object v0, Lcom/tencent/mm/model/be;->ciz:Lcom/tencent/mm/model/ak;

    return-object v0
.end method

.method public static uk()V
    .locals 1

    .prologue
    .line 187
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/mm/model/be;->cis:Z

    .line 188
    return-void
.end method

.method public static ul()Z
    .locals 1

    .prologue
    .line 196
    sget-boolean v0, Lcom/tencent/mm/model/be;->cit:Z

    return v0
.end method

.method public static um()V
    .locals 1

    .prologue
    .line 200
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/mm/model/be;->cit:Z

    .line 201
    return-void
.end method

.method public static un()Z
    .locals 1

    .prologue
    .line 205
    sget-boolean v0, Lcom/tencent/mm/model/be;->ciu:Z

    return v0
.end method

.method public static uo()Ljava/lang/String;
    .locals 5

    .prologue
    .line 213
    :try_start_0
    invoke-static {}, Lcom/tencent/mm/model/be;->uq()Lcom/tencent/mm/model/be;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/model/be;->cio:Lcom/tencent/mm/n/ac;

    invoke-virtual {v0}, Lcom/tencent/mm/n/ac;->uN()Lcom/tencent/mm/network/r;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/mm/network/r;->wZ()Lcom/tencent/mm/network/n;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/mm/network/n;->uo()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hW(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 216
    :goto_0
    return-object v0

    .line 214
    :catch_0
    move-exception v0

    .line 215
    const-string v1, "MicroMsg.MMCore"

    const-string v2, "get session key error, %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 216
    const-string v0, ""

    goto :goto_0
.end method

.method private static up()Ljava/lang/String;
    .locals 4

    .prologue
    .line 222
    sget-object v0, Lcom/tencent/mm/storage/h;->cfC:Ljava/lang/String;

    .line 224
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/tencent/mm/storage/h;->cfD:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 226
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/tencent/mm/compatible/g/i;->qd()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 227
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/tencent/mm/storage/h;->cfE:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 228
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 229
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 230
    :cond_0
    sget-object v0, Lcom/tencent/mm/storage/h;->cfE:Ljava/lang/String;

    .line 237
    :cond_1
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/tencent/mm/storage/h;->cfG:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 238
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 239
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 247
    :cond_2
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/tencent/mm/storage/h;->ggv:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 248
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    .line 249
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 251
    :cond_3
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/tencent/mm/storage/h;->ggw:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 252
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_4

    .line 253
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 255
    :cond_4
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/tencent/mm/storage/h;->ggv:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".nomedia"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 256
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_5

    .line 258
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    :cond_5
    :goto_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 266
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_6

    .line 267
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 270
    :cond_6
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static uq()Lcom/tencent/mm/model/be;
    .locals 2

    .prologue
    .line 664
    const-string v0, "MMCore not initialized by MMApplication"

    sget-object v1, Lcom/tencent/mm/model/be;->cim:Lcom/tencent/mm/model/be;

    invoke-static {v0, v1}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 665
    sget-object v0, Lcom/tencent/mm/model/be;->cim:Lcom/tencent/mm/model/be;

    return-object v0
.end method

.method public static ur()Lcom/tencent/mm/n/aw;
    .locals 1

    .prologue
    .line 669
    invoke-static {}, Lcom/tencent/mm/model/be;->uq()Lcom/tencent/mm/model/be;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/model/be;->cin:Lcom/tencent/mm/n/aw;

    return-object v0
.end method

.method public static us()Lcom/tencent/mm/storage/d;
    .locals 1

    .prologue
    .line 673
    invoke-static {}, Lcom/tencent/mm/model/be;->uq()Lcom/tencent/mm/model/be;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/model/be;->ciq:Lcom/tencent/mm/storage/d;

    return-object v0
.end method

.method public static ut()Lcom/tencent/mm/sdk/platformtools/an;
    .locals 1

    .prologue
    .line 677
    invoke-static {}, Lcom/tencent/mm/model/be;->uq()Lcom/tencent/mm/model/be;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/model/be;->cip:Lcom/tencent/mm/sdk/platformtools/an;

    return-object v0
.end method

.method public static uu()Lcom/tencent/mm/model/ds;
    .locals 1

    .prologue
    .line 681
    invoke-static {}, Lcom/tencent/mm/model/be;->uq()Lcom/tencent/mm/model/be;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/model/be;->ciJ:Lcom/tencent/mm/model/ds;

    return-object v0
.end method

.method public static uv()Ljava/lang/String;
    .locals 1

    .prologue
    .line 685
    invoke-static {}, Lcom/tencent/mm/model/be;->uq()Lcom/tencent/mm/model/be;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/model/be;->ciC:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 686
    invoke-static {}, Lcom/tencent/mm/model/be;->uw()V

    .line 688
    :cond_0
    invoke-static {}, Lcom/tencent/mm/model/be;->uq()Lcom/tencent/mm/model/be;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/model/be;->ciC:Ljava/lang/String;

    return-object v0
.end method

.method public static uw()V
    .locals 4

    .prologue
    .line 692
    invoke-static {}, Lcom/tencent/mm/model/be;->uq()Lcom/tencent/mm/model/be;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/mm/compatible/c/s;->pV()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/model/be;->ciC:Ljava/lang/String;

    .line 693
    invoke-static {}, Lcom/tencent/mm/model/be;->uq()Lcom/tencent/mm/model/be;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/model/be;->ciD:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 694
    return-void
.end method

.method public static ux()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 709
    invoke-static {}, Lcom/tencent/mm/model/be;->uq()Lcom/tencent/mm/model/be;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/mm/model/be;->cia:Lcom/tencent/mm/model/b;

    .line 710
    const-string v2, "MMCore has not been initialize ?"

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v2, v0}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    .line 711
    monitor-enter v1

    .line 712
    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, v0, v2}, Lcom/tencent/mm/model/b;->k(Ljava/lang/String;I)V

    .line 713
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static uy()V
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 728
    invoke-static {}, Lcom/tencent/mm/model/be;->uq()Lcom/tencent/mm/model/be;

    move-result-object v2

    iget-object v2, v2, Lcom/tencent/mm/model/be;->cia:Lcom/tencent/mm/model/b;

    .line 729
    const-string v3, "MMCore has not been initialize ?"

    if-eqz v2, :cond_0

    :goto_0
    invoke-static {v3, v0}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    .line 731
    monitor-enter v2

    .line 732
    :try_start_0
    invoke-static {}, Lcom/tencent/mm/model/be;->up()Ljava/lang/String;

    move-result-object v0

    .line 733
    const-string v1, "MicroMsg.MMCore"

    const-string v3, "remount begin uin:%d oldpath:[%s] newPath:[%s]"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v2}, Lcom/tencent/mm/model/b;->sd()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v2}, Lcom/tencent/mm/model/b;->sf()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object v0, v4, v5

    invoke-static {v1, v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 734
    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 735
    invoke-virtual {v2}, Lcom/tencent/mm/model/b;->sf()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 736
    monitor-exit v2

    .line 742
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 729
    goto :goto_0

    .line 739
    :cond_1
    invoke-virtual {v2}, Lcom/tencent/mm/model/b;->sd()I

    move-result v1

    invoke-virtual {v2, v0, v1}, Lcom/tencent/mm/model/b;->k(Ljava/lang/String;I)V

    .line 740
    new-instance v0, Lcom/tencent/mm/c/a/i;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/i;-><init>()V

    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/tencent/mm/sdk/b/f;->f(Lcom/tencent/mm/sdk/b/e;)Z

    .line 742
    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public static uz()Lcom/tencent/mm/model/b;
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 751
    invoke-static {}, Lcom/tencent/mm/model/be;->uq()Lcom/tencent/mm/model/be;

    move-result-object v2

    iget-object v2, v2, Lcom/tencent/mm/model/be;->cia:Lcom/tencent/mm/model/b;

    .line 752
    const-string v3, "MMCore has not been initialize ?"

    if-eqz v2, :cond_0

    :goto_0
    invoke-static {v3, v0}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    .line 754
    invoke-static {}, Lcom/tencent/mm/model/be;->se()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v2

    .line 795
    :goto_1
    return-object v0

    :cond_0
    move v0, v1

    .line 752
    goto :goto_0

    .line 757
    :cond_1
    monitor-enter v2

    .line 758
    :try_start_0
    invoke-static {}, Lcom/tencent/mm/model/be;->se()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 759
    monitor-exit v2

    move-object v0, v2

    goto :goto_1

    .line 761
    :cond_2
    invoke-static {}, Lcom/tencent/mm/model/be;->uq()Lcom/tencent/mm/model/be;

    move-result-object v0

    iget-object v3, v0, Lcom/tencent/mm/model/be;->ciq:Lcom/tencent/mm/storage/d;

    .line 762
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Lcom/tencent/mm/storage/d;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 763
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_3

    .line 764
    const-string v1, "MicroMsg.MMCore"

    const-string v4, "auto set up account storage stack: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/cj;->azV()Lcom/tencent/mm/sdk/platformtools/cm;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v1, v4, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 766
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v1, v4}, Lcom/tencent/mm/model/b;->k(Ljava/lang/String;I)V

    .line 769
    invoke-virtual {v2}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v1

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Lcom/tencent/mm/storage/e;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/mm/sdk/platformtools/cj;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 778
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_3

    .line 779
    const-string v1, "MicroMsg.MMCore"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "username of acc stg not set: uin="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 780
    invoke-virtual {v2}, Lcom/tencent/mm/model/b;->reset()V

    .line 781
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lcom/tencent/mm/storage/d;->set(ILjava/lang/Object;)V

    .line 783
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/cj;->azV()Lcom/tencent/mm/sdk/platformtools/cm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/sdk/platformtools/cm;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/mm/model/be;->ciA:Ljava/lang/String;

    .line 785
    new-instance v0, Lcom/tencent/mm/model/bo;

    invoke-direct {v0}, Lcom/tencent/mm/model/bo;-><init>()V

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/an;->i(Ljava/lang/Runnable;)V

    .line 795
    :cond_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v2

    goto/16 :goto_1

    .line 796
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/protocal/l;II)V
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x3

    const/4 v6, 0x4

    const/4 v7, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1250
    const-string v0, "MicroMsg.MMCore"

    const-string v3, "onAutoAuthEnd [%d,%d]"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v0, v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1252
    if-ne p2, v6, :cond_0

    const/16 v0, -0x12d

    if-ne p3, v0, :cond_0

    .line 1253
    const-string v0, "MicroMsg.MMCore"

    const-string v2, "dkidc onAutoAuthEnd RedirectIDC"

    invoke-static {v0, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1254
    iget-object v0, p1, Lcom/tencent/mm/protocal/l;->fxM:Lcom/tencent/mm/protocal/a/ou;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/ou;->fBO:Lcom/tencent/mm/protocal/a/by;

    iget-object v2, p1, Lcom/tencent/mm/protocal/l;->fxM:Lcom/tencent/mm/protocal/a/ou;

    iget-object v2, v2, Lcom/tencent/mm/protocal/a/ou;->fBP:Lcom/tencent/mm/protocal/a/os;

    iget-object v3, p1, Lcom/tencent/mm/protocal/l;->fxM:Lcom/tencent/mm/protocal/a/ou;

    iget-object v3, v3, Lcom/tencent/mm/protocal/a/ou;->fBN:Lcom/tencent/mm/protocal/a/ls;

    invoke-static {v1, v0, v2, v3}, Lcom/tencent/mm/model/be;->a(ZLcom/tencent/mm/protocal/a/by;Lcom/tencent/mm/protocal/a/os;Lcom/tencent/mm/protocal/a/ls;)V

    .line 1296
    :goto_0
    return-void

    .line 1257
    :cond_0
    new-instance v0, Lcom/tencent/mm/a/j;

    iget-object v3, p1, Lcom/tencent/mm/protocal/l;->fxM:Lcom/tencent/mm/protocal/a/ou;

    iget v3, v3, Lcom/tencent/mm/protocal/a/ou;->fPH:I

    invoke-direct {v0, v3}, Lcom/tencent/mm/a/j;-><init>(I)V

    .line 1258
    if-ne p2, v6, :cond_1

    const/16 v3, -0x69

    if-ne p3, v3, :cond_1

    .line 1259
    const-string v1, "MicroMsg.MMCore"

    const-string v2, "dkwt onAutoAuthEnd INVALID LOGINBUFF  set use to md5"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1260
    invoke-static {}, Lcom/tencent/mm/model/v;->th()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v7}, Lcom/tencent/mm/n/aw;->r(Ljava/lang/String;I)V

    .line 1261
    invoke-static {}, Lcom/tencent/mm/model/be;->uq()Lcom/tencent/mm/model/be;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/mm/model/be;->cin:Lcom/tencent/mm/n/aw;

    invoke-virtual {v0}, Lcom/tencent/mm/a/j;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mm/n/aw;->w(J)V

    goto :goto_0

    .line 1265
    :cond_1
    invoke-static {}, Lcom/tencent/mm/model/be;->uq()Lcom/tencent/mm/model/be;

    move-result-object v3

    iget-object v3, v3, Lcom/tencent/mm/model/be;->cin:Lcom/tencent/mm/n/aw;

    invoke-virtual {v0}, Lcom/tencent/mm/a/j;->longValue()J

    move-result-wide v4

    iget-object v0, p1, Lcom/tencent/mm/protocal/l;->fxM:Lcom/tencent/mm/protocal/a/ou;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/ou;->fRb:Lcom/tencent/mm/protocal/a/rv;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/an;->a(Lcom/tencent/mm/protocal/a/rv;)[B

    move-result-object v0

    invoke-virtual {v3, v4, v5, v0}, Lcom/tencent/mm/n/aw;->a(J[B)Z

    move-result v3

    .line 1267
    const-string v4, "MicroMsg.MMCore"

    const-string v5, "dkwt onAutoAuthEnd username:%s wtresp:%d parseWtResp:%b nextAuthType:%d "

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {}, Lcom/tencent/mm/model/v;->th()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v2

    iget-object v0, p1, Lcom/tencent/mm/protocal/l;->fxM:Lcom/tencent/mm/protocal/a/ou;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/ou;->fRb:Lcom/tencent/mm/protocal/a/rv;

    if-nez v0, :cond_3

    const/4 v0, -0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v6, v7

    iget-object v0, p1, Lcom/tencent/mm/protocal/l;->fxM:Lcom/tencent/mm/protocal/a/ou;

    iget v0, v0, Lcom/tencent/mm/protocal/a/ou;->fRa:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v8

    invoke-static {v4, v5, v6}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1270
    invoke-static {}, Lcom/tencent/mm/model/v;->th()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p1, Lcom/tencent/mm/protocal/l;->fxM:Lcom/tencent/mm/protocal/a/ou;

    iget v3, v3, Lcom/tencent/mm/protocal/a/ou;->fRa:I

    invoke-static {v0, v3}, Lcom/tencent/mm/n/aw;->r(Ljava/lang/String;I)V

    .line 1271
    iget-object v0, p1, Lcom/tencent/mm/protocal/l;->fxM:Lcom/tencent/mm/protocal/a/ou;

    iget v0, v0, Lcom/tencent/mm/protocal/a/ou;->fAX:I

    invoke-static {v0}, Lcom/tencent/mm/model/be;->cs(I)V

    .line 1272
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->ss()Lcom/tencent/mm/storage/cd;

    move-result-object v0

    iget-object v3, p1, Lcom/tencent/mm/protocal/l;->fxM:Lcom/tencent/mm/protocal/a/ou;

    iget-object v3, v3, Lcom/tencent/mm/protocal/a/ou;->fQW:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/tencent/mm/storage/cd;->vD(Ljava/lang/String;)I

    .line 1273
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/mm/model/b;->a(Lcom/tencent/mm/protocal/l;)V

    .line 1275
    const-string v0, "MicroMsg.MMCore"

    const-string v3, "dkwt onAutoAuthEnd succ . UNset manual auth scene for update"

    invoke-static {v0, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1276
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const/16 v3, 0x100

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/tencent/mm/storage/e;->set(ILjava/lang/Object;)V

    .line 1278
    iget-object v0, p1, Lcom/tencent/mm/protocal/l;->fxM:Lcom/tencent/mm/protocal/a/ou;

    iget v0, v0, Lcom/tencent/mm/protocal/a/ou;->fPH:I

    if-eqz v0, :cond_2

    .line 1279
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sz()Lcom/tencent/mm/storage/cc;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Lcom/tencent/mm/a/j;

    iget-object v5, p1, Lcom/tencent/mm/protocal/l;->fxM:Lcom/tencent/mm/protocal/a/ou;

    iget v5, v5, Lcom/tencent/mm/protocal/a/ou;->fPH:I

    invoke-direct {v4, v5}, Lcom/tencent/mm/a/j;-><init>(I)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "@qqim"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v8}, Lcom/tencent/mm/storage/cc;->an(Ljava/lang/String;I)V

    .line 1281
    :cond_2
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sz()Lcom/tencent/mm/storage/cc;

    move-result-object v3

    iget-object v0, p1, Lcom/tencent/mm/protocal/l;->fxM:Lcom/tencent/mm/protocal/a/ou;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/ou;->fQH:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/a/rw;->getString()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p1, Lcom/tencent/mm/protocal/l;->fxM:Lcom/tencent/mm/protocal/a/ou;

    iget v0, v0, Lcom/tencent/mm/protocal/a/ou;->fQI:I

    if-ne v0, v1, :cond_4

    move v0, v1

    :goto_2
    invoke-virtual {v3, v4, v0}, Lcom/tencent/mm/storage/cc;->M(Ljava/lang/String;Z)V

    .line 1283
    iget-object v0, p1, Lcom/tencent/mm/protocal/l;->fxM:Lcom/tencent/mm/protocal/a/ou;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/ou;->fBO:Lcom/tencent/mm/protocal/a/by;

    iget-object v3, p1, Lcom/tencent/mm/protocal/l;->fxM:Lcom/tencent/mm/protocal/a/ou;

    iget-object v3, v3, Lcom/tencent/mm/protocal/a/ou;->fBP:Lcom/tencent/mm/protocal/a/os;

    iget-object v4, p1, Lcom/tencent/mm/protocal/l;->fxM:Lcom/tencent/mm/protocal/a/ou;

    iget-object v4, v4, Lcom/tencent/mm/protocal/a/ou;->fBN:Lcom/tencent/mm/protocal/a/ls;

    invoke-static {v2, v0, v3, v4}, Lcom/tencent/mm/model/be;->a(ZLcom/tencent/mm/protocal/a/by;Lcom/tencent/mm/protocal/a/os;Lcom/tencent/mm/protocal/a/ls;)V

    .line 1285
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const v3, -0x5b88a1de

    iget-object v4, p1, Lcom/tencent/mm/protocal/l;->fxM:Lcom/tencent/mm/protocal/a/ou;

    iget-object v4, v4, Lcom/tencent/mm/protocal/a/ou;->fQO:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/tencent/mm/storage/e;->set(ILjava/lang/Object;)V

    .line 1287
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v3

    const/16 v4, 0x39

    iget-object v0, p1, Lcom/tencent/mm/protocal/l;->fxM:Lcom/tencent/mm/protocal/a/ou;

    iget v0, v0, Lcom/tencent/mm/protocal/a/ou;->fQY:I

    if-eqz v0, :cond_5

    move v0, v1

    :goto_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lcom/tencent/mm/storage/e;->set(ILjava/lang/Object;)V

    .line 1289
    invoke-static {}, Lcom/tencent/mm/model/be;->uq()Lcom/tencent/mm/model/be;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/model/be;->ciq:Lcom/tencent/mm/storage/d;

    const/16 v3, 0x20

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Lcom/tencent/mm/storage/d;->set(ILjava/lang/Object;)V

    .line 1290
    const-string v0, "MicroMsg.MMCore"

    const-string v3, "dkrsa setautoauthtick:%s"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p1, Lcom/tencent/mm/protocal/l;->fxM:Lcom/tencent/mm/protocal/a/ou;

    iget-object v4, v4, Lcom/tencent/mm/protocal/a/ou;->fQy:Ljava/lang/String;

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1292
    iget-object v0, p1, Lcom/tencent/mm/protocal/l;->fxM:Lcom/tencent/mm/protocal/a/ou;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/ou;->fKt:Lcom/tencent/mm/protocal/a/bz;

    invoke-static {v0}, Lcom/tencent/mm/model/be;->a(Lcom/tencent/mm/protocal/a/bz;)Z

    .line 1294
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "system_config_prefs"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1295
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "default_uin"

    iget-object v2, p1, Lcom/tencent/mm/protocal/l;->fxM:Lcom/tencent/mm/protocal/a/ou;

    iget v2, v2, Lcom/tencent/mm/protocal/a/ou;->fAX:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 1267
    :cond_3
    iget-object v0, p1, Lcom/tencent/mm/protocal/l;->fxM:Lcom/tencent/mm/protocal/a/ou;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/ou;->fRb:Lcom/tencent/mm/protocal/a/rv;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/a/rv;->ayg()I

    move-result v0

    goto/16 :goto_1

    :cond_4
    move v0, v2

    .line 1281
    goto/16 :goto_2

    :cond_5
    move v0, v2

    .line 1287
    goto :goto_3
.end method

.method public final uJ()Lcom/tencent/mm/n/ac;
    .locals 1

    .prologue
    .line 1229
    iget-object v0, p0, Lcom/tencent/mm/model/be;->cio:Lcom/tencent/mm/n/ac;

    return-object v0
.end method
