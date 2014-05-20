.class public final Lcom/tencent/mm/plugin/wallet/c/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/model/bb;


# instance fields
.field private eWI:Ljava/lang/String;

.field private eXG:Z

.field private eXI:I

.field private eYk:Ljava/util/ArrayList;

.field private faA:Landroid/util/SparseArray;

.field private faB:Lcom/tencent/mm/plugin/wallet/c/d;

.field private fas:I

.field private fat:Z

.field private fau:J

.field private fav:Lcom/tencent/mm/plugin/wallet/address/model/i;

.field private faw:Lcom/tencent/mm/plugin/wallet/c;

.field private fax:Lcom/tencent/mm/plugin/wallet/a;

.field private fay:Lcom/tencent/mm/plugin/wallet/address/model/f;

.field private faz:Lcom/tencent/mm/plugin/wallet/address/model/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const-string v0, "tenpay_utils"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/plugin/wallet/c/c;->eXG:Z

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/c/c;->eYk:Ljava/util/ArrayList;

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/plugin/wallet/c/c;->fat:Z

    .line 48
    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/mm/plugin/wallet/c/c;->eXI:I

    .line 49
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/tencent/mm/plugin/wallet/c/c;->fau:J

    .line 50
    iput-object v2, p0, Lcom/tencent/mm/plugin/wallet/c/c;->fav:Lcom/tencent/mm/plugin/wallet/address/model/i;

    .line 52
    new-instance v0, Lcom/tencent/mm/plugin/wallet/c;

    invoke-direct {v0}, Lcom/tencent/mm/plugin/wallet/c;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/c/c;->faw:Lcom/tencent/mm/plugin/wallet/c;

    .line 53
    new-instance v0, Lcom/tencent/mm/plugin/wallet/a;

    invoke-direct {v0}, Lcom/tencent/mm/plugin/wallet/a;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/c/c;->fax:Lcom/tencent/mm/plugin/wallet/a;

    .line 54
    new-instance v0, Lcom/tencent/mm/plugin/wallet/address/model/f;

    invoke-direct {v0}, Lcom/tencent/mm/plugin/wallet/address/model/f;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/c/c;->fay:Lcom/tencent/mm/plugin/wallet/address/model/f;

    .line 55
    new-instance v0, Lcom/tencent/mm/plugin/wallet/address/model/g;

    invoke-direct {v0}, Lcom/tencent/mm/plugin/wallet/address/model/g;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/c/c;->faz:Lcom/tencent/mm/plugin/wallet/address/model/g;

    .line 56
    iput-object v2, p0, Lcom/tencent/mm/plugin/wallet/c/c;->faA:Landroid/util/SparseArray;

    .line 57
    iput-object v2, p0, Lcom/tencent/mm/plugin/wallet/c/c;->faB:Lcom/tencent/mm/plugin/wallet/c/d;

    .line 66
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/tencent/mm/plugin/wallet/d/a;->aoE()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 68
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 70
    :cond_0
    return-void
.end method

.method public static anX()Lcom/tencent/mm/plugin/wallet/c/c;
    .locals 3

    .prologue
    .line 73
    invoke-static {}, Lcom/tencent/mm/model/be;->uh()Lcom/tencent/mm/model/dr;

    move-result-object v0

    const-string v1, "plugin.wallet"

    invoke-virtual {v0, v1}, Lcom/tencent/mm/model/dr;->dN(Ljava/lang/String;)Lcom/tencent/mm/model/bb;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/wallet/c/c;

    .line 74
    if-nez v0, :cond_0

    .line 75
    const-string v0, "MicroMsg.SubCoreMMWallet"

    const-string v1, "not found in MMCore, new one"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    new-instance v0, Lcom/tencent/mm/plugin/wallet/c/c;

    invoke-direct {v0}, Lcom/tencent/mm/plugin/wallet/c/c;-><init>()V

    .line 77
    invoke-static {}, Lcom/tencent/mm/model/be;->uh()Lcom/tencent/mm/model/dr;

    move-result-object v1

    const-string v2, "plugin.wallet"

    invoke-virtual {v1, v2, v0}, Lcom/tencent/mm/model/dr;->a(Ljava/lang/String;Lcom/tencent/mm/model/bb;)Z

    .line 79
    :cond_0
    return-object v0
.end method

.method public static anY()Lcom/tencent/mm/plugin/wallet/address/model/i;
    .locals 2

    .prologue
    .line 90
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sd()I

    move-result v0

    if-nez v0, :cond_0

    .line 91
    new-instance v0, Lcom/tencent/mm/model/a;

    invoke-direct {v0}, Lcom/tencent/mm/model/a;-><init>()V

    throw v0

    .line 93
    :cond_0
    invoke-static {}, Lcom/tencent/mm/plugin/wallet/c/c;->anX()Lcom/tencent/mm/plugin/wallet/c/c;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/plugin/wallet/c/c;->fav:Lcom/tencent/mm/plugin/wallet/address/model/i;

    if-nez v0, :cond_1

    .line 94
    invoke-static {}, Lcom/tencent/mm/plugin/wallet/c/c;->anX()Lcom/tencent/mm/plugin/wallet/c/c;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/plugin/wallet/address/model/i;

    invoke-direct {v1}, Lcom/tencent/mm/plugin/wallet/address/model/i;-><init>()V

    iput-object v1, v0, Lcom/tencent/mm/plugin/wallet/c/c;->fav:Lcom/tencent/mm/plugin/wallet/address/model/i;

    .line 96
    :cond_1
    invoke-static {}, Lcom/tencent/mm/plugin/wallet/c/c;->anX()Lcom/tencent/mm/plugin/wallet/c/c;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/plugin/wallet/c/c;->fav:Lcom/tencent/mm/plugin/wallet/address/model/i;

    return-object v0
.end method

.method public static aoh()Ljava/lang/String;
    .locals 3

    .prologue
    .line 189
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const v1, 0x30004

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/storage/e;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static aoi()Ljava/lang/String;
    .locals 3

    .prologue
    .line 264
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const v1, 0x30007

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/storage/e;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sd()I

    move-result v0

    if-nez v0, :cond_0

    .line 101
    new-instance v0, Lcom/tencent/mm/model/a;

    invoke-direct {v0}, Lcom/tencent/mm/model/a;-><init>()V

    throw v0

    .line 103
    :cond_0
    invoke-static {}, Lcom/tencent/mm/model/v;->th()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static pC(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 242
    invoke-static {p0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 243
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const v1, 0x30004

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/storage/e;->set(ILjava/lang/Object;)V

    .line 245
    :cond_0
    return-void
.end method

.method public static pD(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 248
    invoke-static {p0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 249
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const v1, 0x30005

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/storage/e;->set(ILjava/lang/Object;)V

    .line 251
    :cond_0
    return-void
.end method

.method public static pE(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 258
    if-eqz p0, :cond_0

    .line 259
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const v1, 0x30007

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/storage/e;->set(ILjava/lang/Object;)V

    .line 261
    :cond_0
    return-void
.end method


# virtual methods
.method public final N(Z)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 283
    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v0

    const-string v1, "GetA8KeyRedirect"

    iget-object v2, p0, Lcom/tencent/mm/plugin/wallet/c/c;->faw:Lcom/tencent/mm/plugin/wallet/c;

    invoke-interface {v0, v1, v2}, Lcom/tencent/mm/sdk/b/f;->a(Ljava/lang/String;Lcom/tencent/mm/sdk/b/g;)Z

    .line 284
    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v0

    const-string v1, "SaveBankLogo"

    iget-object v2, p0, Lcom/tencent/mm/plugin/wallet/c/c;->fax:Lcom/tencent/mm/plugin/wallet/a;

    invoke-interface {v0, v1, v2}, Lcom/tencent/mm/sdk/b/f;->a(Ljava/lang/String;Lcom/tencent/mm/sdk/b/g;)Z

    .line 285
    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v0

    const-string v1, "RcptAddress"

    iget-object v2, p0, Lcom/tencent/mm/plugin/wallet/c/c;->fay:Lcom/tencent/mm/plugin/wallet/address/model/f;

    invoke-interface {v0, v1, v2}, Lcom/tencent/mm/sdk/b/f;->a(Ljava/lang/String;Lcom/tencent/mm/sdk/b/g;)Z

    .line 286
    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v0

    const-string v1, "RcptRecentAddr"

    iget-object v2, p0, Lcom/tencent/mm/plugin/wallet/c/c;->faz:Lcom/tencent/mm/plugin/wallet/address/model/g;

    invoke-interface {v0, v1, v2}, Lcom/tencent/mm/sdk/b/f;->a(Ljava/lang/String;Lcom/tencent/mm/sdk/b/g;)Z

    .line 287
    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/mm/plugin/wallet/c/c;->eXI:I

    iput-object v3, p0, Lcom/tencent/mm/plugin/wallet/c/c;->eYk:Ljava/util/ArrayList;

    iput-object v3, p0, Lcom/tencent/mm/plugin/wallet/c/c;->fav:Lcom/tencent/mm/plugin/wallet/address/model/i;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/tencent/mm/plugin/wallet/c/c;->fau:J

    .line 288
    return-void
.end method

.method public final a(Landroid/util/SparseArray;)V
    .locals 0
    .parameter

    .prologue
    .line 182
    iput-object p1, p0, Lcom/tencent/mm/plugin/wallet/c/c;->faA:Landroid/util/SparseArray;

    .line 183
    return-void
.end method

.method public final a(Lcom/tencent/mm/plugin/wallet/c/d;)V
    .locals 0
    .parameter

    .prologue
    .line 309
    iput-object p1, p0, Lcom/tencent/mm/plugin/wallet/c/c;->faB:Lcom/tencent/mm/plugin/wallet/c/d;

    .line 310
    return-void
.end method

.method public final a(Ljava/util/ArrayList;ILjava/lang/String;IZZ)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 171
    iput-object p1, p0, Lcom/tencent/mm/plugin/wallet/c/c;->eYk:Ljava/util/ArrayList;

    .line 172
    iput p2, p0, Lcom/tencent/mm/plugin/wallet/c/c;->eXI:I

    .line 173
    iput-object p3, p0, Lcom/tencent/mm/plugin/wallet/c/c;->eWI:Ljava/lang/String;

    .line 174
    iput p4, p0, Lcom/tencent/mm/plugin/wallet/c/c;->fas:I

    .line 175
    iput-boolean p5, p0, Lcom/tencent/mm/plugin/wallet/c/c;->eXG:Z

    .line 176
    iput-boolean p6, p0, Lcom/tencent/mm/plugin/wallet/c/c;->fat:Z

    .line 177
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tencent/mm/plugin/wallet/c/c;->fau:J

    .line 178
    const-string v0, "MicroMsg.SubCoreMMWallet"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isReg : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", name : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    return-void
.end method

.method public final aN(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 142
    iget v0, p0, Lcom/tencent/mm/plugin/wallet/c/c;->fas:I

    invoke-virtual {p0, p1, v0}, Lcom/tencent/mm/plugin/wallet/c/c;->c(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final anZ()Z
    .locals 5

    .prologue
    .line 107
    iget-wide v0, p0, Lcom/tencent/mm/plugin/wallet/c/c;->fau:J

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/cj;->M(J)J

    move-result-wide v0

    .line 108
    const-string v2, "MicroMsg.SubCoreMMWallet"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "pass time "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-wide/16 v2, 0x258

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final aoa()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/c/c;->eYk:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final aob()I
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lcom/tencent/mm/plugin/wallet/c/c;->eXI:I

    return v0
.end method

.method public final aoc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/c/c;->eWI:Ljava/lang/String;

    return-object v0
.end method

.method public final aod()I
    .locals 1

    .prologue
    .line 138
    iget v0, p0, Lcom/tencent/mm/plugin/wallet/c/c;->fas:I

    return v0
.end method

.method public final aoe()Z
    .locals 1

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/tencent/mm/plugin/wallet/c/c;->eXG:Z

    return v0
.end method

.method public final aof()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 155
    iget v1, p0, Lcom/tencent/mm/plugin/wallet/c/c;->eXI:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final aog()Z
    .locals 1

    .prologue
    .line 159
    iget-boolean v0, p0, Lcom/tencent/mm/plugin/wallet/c/c;->fat:Z

    return v0
.end method

.method public final aoj()V
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/c/c;->faB:Lcom/tencent/mm/plugin/wallet/c/d;

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/c/c;->faB:Lcom/tencent/mm/plugin/wallet/c/d;

    invoke-interface {v0}, Lcom/tencent/mm/plugin/wallet/c/d;->close()V

    .line 316
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/c/c;->faB:Lcom/tencent/mm/plugin/wallet/c/d;

    .line 317
    return-void
.end method

.method public final bJ(I)V
    .locals 0
    .parameter

    .prologue
    .line 274
    return-void
.end method

.method public final c(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 299
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/c/c;->faA:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/c/c;->faA:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 301
    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 305
    :goto_0
    return-object v0

    :cond_0
    sget v0, Lcom/tencent/mm/n;->bFF:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final p(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 279
    return-void
.end method

.method public final pB(Ljava/lang/String;)Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 198
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/c/c;->eYk:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/c/c;->eYk:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 199
    :cond_0
    const-string v0, "MicroMsg.SubCoreMMWallet"

    const-string v1, "not found bankcard!"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    .line 237
    :goto_0
    return-object v0

    .line 201
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/c/c;->eYk:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 203
    const-string v0, "MicroMsg.SubCoreMMWallet"

    const-string v1, "only one bankcard!"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/c/c;->eYk:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;

    goto :goto_0

    .line 206
    :cond_2
    const-string v0, "MicroMsg.SubCoreMMWallet"

    const-string v1, "have multiple bankcards!"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    if-nez p1, :cond_6

    .line 208
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const v1, 0x30004

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/storage/e;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 209
    if-eqz v0, :cond_4

    .line 210
    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/c/c;->eYk:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;

    .line 211
    if-eqz v1, :cond_3

    iget-object v4, v1, Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;->eWT:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v0, v1

    .line 213
    goto :goto_0

    .line 218
    :cond_4
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const v1, 0x30005

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/storage/e;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 219
    if-eqz v0, :cond_8

    .line 220
    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/c/c;->eYk:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;

    .line 221
    if-eqz v1, :cond_5

    iget-object v3, v1, Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;->eWT:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move-object v0, v1

    .line 223
    goto/16 :goto_0

    .line 228
    :cond_6
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/c/c;->eYk:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;

    .line 229
    if-eqz v0, :cond_7

    iget-object v2, v0, Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;->eWT:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    goto/16 :goto_0

    .line 237
    :cond_8
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/c/c;->eYk:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;

    goto/16 :goto_0
.end method

.method public final qy()V
    .locals 3

    .prologue
    .line 292
    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v0

    const-string v1, "GetA8KeyRedirect"

    iget-object v2, p0, Lcom/tencent/mm/plugin/wallet/c/c;->faw:Lcom/tencent/mm/plugin/wallet/c;

    invoke-interface {v0, v1, v2}, Lcom/tencent/mm/sdk/b/f;->b(Ljava/lang/String;Lcom/tencent/mm/sdk/b/g;)Z

    .line 293
    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v0

    const-string v1, "SaveBankLogo"

    iget-object v2, p0, Lcom/tencent/mm/plugin/wallet/c/c;->fax:Lcom/tencent/mm/plugin/wallet/a;

    invoke-interface {v0, v1, v2}, Lcom/tencent/mm/sdk/b/f;->b(Ljava/lang/String;Lcom/tencent/mm/sdk/b/g;)Z

    .line 294
    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v0

    const-string v1, "RcptAddress"

    iget-object v2, p0, Lcom/tencent/mm/plugin/wallet/c/c;->fay:Lcom/tencent/mm/plugin/wallet/address/model/f;

    invoke-interface {v0, v1, v2}, Lcom/tencent/mm/sdk/b/f;->b(Ljava/lang/String;Lcom/tencent/mm/sdk/b/g;)Z

    .line 295
    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v0

    const-string v1, "RcptRecentAddr"

    iget-object v2, p0, Lcom/tencent/mm/plugin/wallet/c/c;->faz:Lcom/tencent/mm/plugin/wallet/address/model/g;

    invoke-interface {v0, v1, v2}, Lcom/tencent/mm/sdk/b/f;->b(Ljava/lang/String;Lcom/tencent/mm/sdk/b/g;)Z

    .line 296
    return-void
.end method

.method public final qz()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 269
    const/4 v0, 0x0

    return-object v0
.end method
