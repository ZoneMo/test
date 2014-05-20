.class public final Lcom/tencent/mm/modelfriend/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private Tu:Ljava/lang/String;

.field private Tv:Ljava/lang/String;

.field private bOY:I

.field private bPX:Ljava/lang/String;

.field private bTQ:Ljava/lang/String;

.field private cie:Ljava/lang/String;

.field private ckX:Ljava/lang/String;

.field private cqA:Ljava/lang/String;

.field private cqB:J

.field private cqC:I

.field private cqD:Ljava/lang/String;

.field private cqE:Ljava/lang/String;

.field private cqF:Ljava/lang/String;

.field private cqf:Ljava/lang/String;

.field private cqg:J

.field private cqh:Ljava/lang/String;

.field private cqi:Ljava/lang/String;

.field private cqj:Ljava/lang/String;

.field private cqk:Ljava/lang/String;

.field private cql:Ljava/lang/String;

.field private cqm:Ljava/lang/String;

.field private cqn:I

.field public cqo:[B

.field private cqp:Ljava/lang/String;

.field private cqq:I

.field private cqr:Ljava/lang/String;

.field private cqs:I

.field private cqt:Ljava/lang/String;

.field private cqu:I

.field private cqv:I

.field private cqw:Ljava/lang/String;

.field private cqx:Ljava/lang/String;

.field private cqy:Ljava/lang/String;

.field private cqz:I

.field private id:I

.field private status:I

.field private type:I

.field private username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput v3, p0, Lcom/tencent/mm/modelfriend/h;->bOY:I

    .line 128
    iput v2, p0, Lcom/tencent/mm/modelfriend/h;->id:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/modelfriend/h;->bPX:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/modelfriend/h;->cqf:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/mm/modelfriend/h;->cqg:J

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/modelfriend/h;->cqh:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/modelfriend/h;->cqi:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/modelfriend/h;->cqj:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/modelfriend/h;->username:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/modelfriend/h;->cie:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/modelfriend/h;->cqk:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/modelfriend/h;->cql:Ljava/lang/String;

    iput v2, p0, Lcom/tencent/mm/modelfriend/h;->type:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/modelfriend/h;->cqm:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/modelfriend/h;->bTQ:Ljava/lang/String;

    iput v2, p0, Lcom/tencent/mm/modelfriend/h;->status:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/modelfriend/h;->ckX:Ljava/lang/String;

    iput v2, p0, Lcom/tencent/mm/modelfriend/h;->cqn:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/modelfriend/h;->cqp:Ljava/lang/String;

    iput v2, p0, Lcom/tencent/mm/modelfriend/h;->cqq:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/modelfriend/h;->Tu:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/modelfriend/h;->Tv:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/modelfriend/h;->cqr:Ljava/lang/String;

    iput v2, p0, Lcom/tencent/mm/modelfriend/h;->cqs:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/modelfriend/h;->cqt:Ljava/lang/String;

    iput v2, p0, Lcom/tencent/mm/modelfriend/h;->cqu:I

    iput v2, p0, Lcom/tencent/mm/modelfriend/h;->cqv:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/modelfriend/h;->cqw:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/modelfriend/h;->cqx:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/modelfriend/h;->cqy:Ljava/lang/String;

    iput v3, p0, Lcom/tencent/mm/modelfriend/h;->cqz:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/modelfriend/h;->cqA:Ljava/lang/String;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/tencent/mm/modelfriend/h;->cqB:J

    iput v3, p0, Lcom/tencent/mm/modelfriend/h;->cqC:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/modelfriend/h;->cqD:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/modelfriend/h;->cqE:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/modelfriend/h;->cqF:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public static eW(Ljava/lang/String;)I
    .locals 2
    .parameter

    .prologue
    .line 354
    const/4 v0, 0x0

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    .line 355
    long-to-int v0, v0

    return v0
.end method

.method private yJ()[B
    .locals 3

    .prologue
    .line 310
    :try_start_0
    new-instance v0, Lcom/tencent/mm/sdk/platformtools/y;

    invoke-direct {v0}, Lcom/tencent/mm/sdk/platformtools/y;-><init>()V

    .line 311
    invoke-virtual {v0}, Lcom/tencent/mm/sdk/platformtools/y;->azg()I

    .line 312
    iget-object v1, p0, Lcom/tencent/mm/modelfriend/h;->cqp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/sdk/platformtools/y;->sz(Ljava/lang/String;)I

    .line 313
    iget v1, p0, Lcom/tencent/mm/modelfriend/h;->cqq:I

    invoke-virtual {v0, v1}, Lcom/tencent/mm/sdk/platformtools/y;->lG(I)I

    .line 314
    iget-object v1, p0, Lcom/tencent/mm/modelfriend/h;->Tu:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/sdk/platformtools/y;->sz(Ljava/lang/String;)I

    .line 315
    iget-object v1, p0, Lcom/tencent/mm/modelfriend/h;->Tv:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/sdk/platformtools/y;->sz(Ljava/lang/String;)I

    .line 316
    iget-object v1, p0, Lcom/tencent/mm/modelfriend/h;->cqr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/sdk/platformtools/y;->sz(Ljava/lang/String;)I

    .line 317
    iget v1, p0, Lcom/tencent/mm/modelfriend/h;->cqs:I

    invoke-virtual {v0, v1}, Lcom/tencent/mm/sdk/platformtools/y;->lG(I)I

    .line 318
    iget-object v1, p0, Lcom/tencent/mm/modelfriend/h;->cqt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/sdk/platformtools/y;->sz(Ljava/lang/String;)I

    .line 319
    iget v1, p0, Lcom/tencent/mm/modelfriend/h;->cqu:I

    invoke-virtual {v0, v1}, Lcom/tencent/mm/sdk/platformtools/y;->lG(I)I

    .line 320
    iget v1, p0, Lcom/tencent/mm/modelfriend/h;->cqv:I

    invoke-virtual {v0, v1}, Lcom/tencent/mm/sdk/platformtools/y;->lG(I)I

    .line 321
    iget-object v1, p0, Lcom/tencent/mm/modelfriend/h;->cqw:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/sdk/platformtools/y;->sz(Ljava/lang/String;)I

    .line 322
    iget-object v1, p0, Lcom/tencent/mm/modelfriend/h;->cqx:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/sdk/platformtools/y;->sz(Ljava/lang/String;)I

    .line 323
    iget-object v1, p0, Lcom/tencent/mm/modelfriend/h;->cqy:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/sdk/platformtools/y;->sz(Ljava/lang/String;)I

    .line 324
    iget v1, p0, Lcom/tencent/mm/modelfriend/h;->cqz:I

    invoke-virtual {v0, v1}, Lcom/tencent/mm/sdk/platformtools/y;->lG(I)I

    .line 325
    iget-object v1, p0, Lcom/tencent/mm/modelfriend/h;->cqA:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/sdk/platformtools/y;->sz(Ljava/lang/String;)I

    .line 326
    iget-wide v1, p0, Lcom/tencent/mm/modelfriend/h;->cqB:J

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/y;->bN(J)I

    .line 327
    iget v1, p0, Lcom/tencent/mm/modelfriend/h;->cqC:I

    invoke-virtual {v0, v1}, Lcom/tencent/mm/sdk/platformtools/y;->lG(I)I

    .line 328
    iget-object v1, p0, Lcom/tencent/mm/modelfriend/h;->cqD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/sdk/platformtools/y;->sz(Ljava/lang/String;)I

    .line 329
    iget-object v1, p0, Lcom/tencent/mm/modelfriend/h;->cqE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/sdk/platformtools/y;->sz(Ljava/lang/String;)I

    .line 330
    iget-object v1, p0, Lcom/tencent/mm/modelfriend/h;->cqF:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/sdk/platformtools/y;->sz(Ljava/lang/String;)I

    .line 331
    invoke-virtual {v0}, Lcom/tencent/mm/sdk/platformtools/y;->azh()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 333
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final bA(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 513
    iput-object p1, p0, Lcom/tencent/mm/modelfriend/h;->Tu:Ljava/lang/String;

    .line 514
    return-void
.end method

.method public final bB(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 609
    iput-object p1, p0, Lcom/tencent/mm/modelfriend/h;->Tv:Ljava/lang/String;

    .line 610
    return-void
.end method

.method public final bF(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 457
    iput-object p1, p0, Lcom/tencent/mm/modelfriend/h;->bTQ:Ljava/lang/String;

    .line 458
    return-void
.end method

.method public final bL(I)V
    .locals 0
    .parameter

    .prologue
    .line 505
    iput p1, p0, Lcom/tencent/mm/modelfriend/h;->cqq:I

    .line 506
    return-void
.end method

.method public final bN(I)V
    .locals 0
    .parameter

    .prologue
    .line 529
    iput p1, p0, Lcom/tencent/mm/modelfriend/h;->cqs:I

    .line 530
    return-void
.end method

.method public final bx(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 617
    iput-object p1, p0, Lcom/tencent/mm/modelfriend/h;->cqt:Ljava/lang/String;

    .line 618
    return-void
.end method

.method public final bz(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 521
    iput-object p1, p0, Lcom/tencent/mm/modelfriend/h;->cqr:Ljava/lang/String;

    .line 522
    return-void
.end method

.method public final cL(I)V
    .locals 0
    .parameter

    .prologue
    .line 339
    iput p1, p0, Lcom/tencent/mm/modelfriend/h;->bOY:I

    .line 340
    return-void
.end method

.method public final cW(I)V
    .locals 0
    .parameter

    .prologue
    .line 553
    iput p1, p0, Lcom/tencent/mm/modelfriend/h;->cqz:I

    .line 554
    return-void
.end method

.method public final cX(I)V
    .locals 0
    .parameter

    .prologue
    .line 577
    iput p1, p0, Lcom/tencent/mm/modelfriend/h;->cqC:I

    .line 578
    return-void
.end method

.method public final cY(I)V
    .locals 0
    .parameter

    .prologue
    .line 625
    iput p1, p0, Lcom/tencent/mm/modelfriend/h;->cqu:I

    .line 626
    return-void
.end method

.method public final cZ(I)V
    .locals 0
    .parameter

    .prologue
    .line 633
    iput p1, p0, Lcom/tencent/mm/modelfriend/h;->cqv:I

    .line 634
    return-void
.end method

.method public final convertFrom(Landroid/database/Cursor;)V
    .locals 4
    .parameter

    .prologue
    .line 173
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/modelfriend/h;->eX(Ljava/lang/String;)V

    .line 174
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/modelfriend/h;->cqf:Ljava/lang/String;

    .line 175
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/mm/modelfriend/h;->cqg:J

    .line 176
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/modelfriend/h;->cqh:Ljava/lang/String;

    .line 177
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/modelfriend/h;->cqi:Ljava/lang/String;

    .line 178
    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/modelfriend/h;->cqj:Ljava/lang/String;

    .line 179
    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/modelfriend/h;->username:Ljava/lang/String;

    .line 180
    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/modelfriend/h;->cie:Ljava/lang/String;

    .line 181
    const/16 v0, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/modelfriend/h;->cqk:Ljava/lang/String;

    .line 182
    const/16 v0, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/modelfriend/h;->cql:Ljava/lang/String;

    .line 183
    const/16 v0, 0xb

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelfriend/h;->type:I

    .line 184
    const/16 v0, 0xc

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/modelfriend/h;->cqm:Ljava/lang/String;

    .line 185
    const/16 v0, 0xd

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/modelfriend/h;->bTQ:Ljava/lang/String;

    .line 187
    const/16 v0, 0xe

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 188
    const/high16 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 189
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mm/modelfriend/h;->status:I

    .line 193
    :goto_0
    const/16 v0, 0x11

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelfriend/h;->cqn:I

    .line 194
    const/16 v0, 0xf

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/modelfriend/h;->ckX:Ljava/lang/String;

    .line 197
    const/16 v0, 0x13

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/modelfriend/h;->cqo:[B

    .line 198
    iget-object v0, p0, Lcom/tencent/mm/modelfriend/h;->cqo:[B

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->A([B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/tencent/mm/modelfriend/h;->cqo:[B

    :try_start_0
    new-instance v1, Lcom/tencent/mm/sdk/platformtools/y;

    invoke-direct {v1}, Lcom/tencent/mm/sdk/platformtools/y;-><init>()V

    invoke-virtual {v1, v0}, Lcom/tencent/mm/sdk/platformtools/y;->cl([B)I

    move-result v0

    if-eqz v0, :cond_2

    const-string v1, "MicroMsg.AddrUpload"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "parse LVBuffer error:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    :cond_0
    :goto_1
    return-void

    .line 191
    :cond_1
    iput v0, p0, Lcom/tencent/mm/modelfriend/h;->status:I

    goto :goto_0

    .line 199
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Lcom/tencent/mm/sdk/platformtools/y;->getString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/modelfriend/h;->cqp:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/tencent/mm/sdk/platformtools/y;->getInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelfriend/h;->cqq:I

    invoke-virtual {v1}, Lcom/tencent/mm/sdk/platformtools/y;->getString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/modelfriend/h;->Tu:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/tencent/mm/sdk/platformtools/y;->getString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/modelfriend/h;->Tv:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/tencent/mm/sdk/platformtools/y;->getString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/modelfriend/h;->cqr:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/tencent/mm/sdk/platformtools/y;->getInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelfriend/h;->cqs:I

    invoke-virtual {v1}, Lcom/tencent/mm/sdk/platformtools/y;->getString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/modelfriend/h;->cqt:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/tencent/mm/sdk/platformtools/y;->getInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelfriend/h;->cqu:I

    invoke-virtual {v1}, Lcom/tencent/mm/sdk/platformtools/y;->getInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelfriend/h;->cqv:I

    invoke-virtual {v1}, Lcom/tencent/mm/sdk/platformtools/y;->getString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/modelfriend/h;->cqw:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/tencent/mm/sdk/platformtools/y;->getString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/modelfriend/h;->cqx:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/tencent/mm/sdk/platformtools/y;->getString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/modelfriend/h;->cqy:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/tencent/mm/sdk/platformtools/y;->getInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelfriend/h;->cqz:I

    invoke-virtual {v1}, Lcom/tencent/mm/sdk/platformtools/y;->getString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/modelfriend/h;->cqA:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/tencent/mm/sdk/platformtools/y;->getLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/tencent/mm/modelfriend/h;->cqB:J

    invoke-virtual {v1}, Lcom/tencent/mm/sdk/platformtools/y;->getInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelfriend/h;->cqC:I

    invoke-virtual {v1}, Lcom/tencent/mm/sdk/platformtools/y;->getString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/modelfriend/h;->cqD:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/tencent/mm/sdk/platformtools/y;->getString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/modelfriend/h;->cqE:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/tencent/mm/sdk/platformtools/y;->getString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/modelfriend/h;->cqF:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public final eX(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 359
    iput-object p1, p0, Lcom/tencent/mm/modelfriend/h;->bPX:Ljava/lang/String;

    .line 361
    invoke-static {p1}, Lcom/tencent/mm/modelfriend/h;->eW(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelfriend/h;->id:I

    .line 362
    return-void
.end method

.method public final eY(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 369
    iput-object p1, p0, Lcom/tencent/mm/modelfriend/h;->cqf:Ljava/lang/String;

    .line 370
    return-void
.end method

.method public final eZ(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 385
    iput-object p1, p0, Lcom/tencent/mm/modelfriend/h;->cqh:Ljava/lang/String;

    .line 386
    return-void
.end method

.method public final fa(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 393
    iput-object p1, p0, Lcom/tencent/mm/modelfriend/h;->cqi:Ljava/lang/String;

    .line 394
    return-void
.end method

.method public final fb(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 401
    iput-object p1, p0, Lcom/tencent/mm/modelfriend/h;->cqj:Ljava/lang/String;

    .line 402
    return-void
.end method

.method public final fc(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 417
    iput-object p1, p0, Lcom/tencent/mm/modelfriend/h;->cie:Ljava/lang/String;

    .line 418
    return-void
.end method

.method public final fd(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 425
    iput-object p1, p0, Lcom/tencent/mm/modelfriend/h;->cqk:Ljava/lang/String;

    .line 426
    return-void
.end method

.method public final fe(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 433
    iput-object p1, p0, Lcom/tencent/mm/modelfriend/h;->cql:Ljava/lang/String;

    .line 434
    return-void
.end method

.method public final ff(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 449
    iput-object p1, p0, Lcom/tencent/mm/modelfriend/h;->cqm:Ljava/lang/String;

    .line 450
    return-void
.end method

.method public final fg(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 497
    iput-object p1, p0, Lcom/tencent/mm/modelfriend/h;->cqp:Ljava/lang/String;

    .line 498
    return-void
.end method

.method public final fh(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 537
    iput-object p1, p0, Lcom/tencent/mm/modelfriend/h;->cqy:Ljava/lang/String;

    .line 538
    return-void
.end method

.method public final fi(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 561
    iput-object p1, p0, Lcom/tencent/mm/modelfriend/h;->cqA:Ljava/lang/String;

    .line 562
    return-void
.end method

.method public final fj(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 585
    iput-object p1, p0, Lcom/tencent/mm/modelfriend/h;->cqD:Ljava/lang/String;

    .line 586
    return-void
.end method

.method public final fk(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 593
    iput-object p1, p0, Lcom/tencent/mm/modelfriend/h;->cqE:Ljava/lang/String;

    .line 594
    return-void
.end method

.method public final fl(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 601
    iput-object p1, p0, Lcom/tencent/mm/modelfriend/h;->cqF:Ljava/lang/String;

    .line 602
    return-void
.end method

.method public final fm(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 641
    iput-object p1, p0, Lcom/tencent/mm/modelfriend/h;->cqw:Ljava/lang/String;

    .line 642
    return-void
.end method

.method public final fn(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 649
    iput-object p1, p0, Lcom/tencent/mm/modelfriend/h;->cqx:Ljava/lang/String;

    .line 650
    return-void
.end method

.method public final fo(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 653
    iput-object p1, p0, Lcom/tencent/mm/modelfriend/h;->ckX:Ljava/lang/String;

    .line 654
    return-void
.end method

.method public final getCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 645
    iget-object v0, p0, Lcom/tencent/mm/modelfriend/h;->cqx:Ljava/lang/String;

    return-object v0
.end method

.method public final getStatus()I
    .locals 1

    .prologue
    .line 469
    iget v0, p0, Lcom/tencent/mm/modelfriend/h;->status:I

    return v0
.end method

.method public final getType()I
    .locals 1

    .prologue
    .line 445
    iget v0, p0, Lcom/tencent/mm/modelfriend/h;->type:I

    return v0
.end method

.method public final getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lcom/tencent/mm/modelfriend/h;->username:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/modelfriend/h;->username:Ljava/lang/String;

    goto :goto_0
.end method

.method public final oa()Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 237
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 238
    iget v1, p0, Lcom/tencent/mm/modelfriend/h;->bOY:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 239
    const-string v1, "id"

    iget v2, p0, Lcom/tencent/mm/modelfriend/h;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 241
    :cond_0
    iget v1, p0, Lcom/tencent/mm/modelfriend/h;->bOY:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 242
    const-string v1, "md5"

    invoke-virtual {p0}, Lcom/tencent/mm/modelfriend/h;->yK()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    :cond_1
    iget v1, p0, Lcom/tencent/mm/modelfriend/h;->bOY:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 245
    const-string v1, "peopleid"

    invoke-virtual {p0}, Lcom/tencent/mm/modelfriend/h;->yL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    :cond_2
    iget v1, p0, Lcom/tencent/mm/modelfriend/h;->bOY:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 248
    const-string v1, "uploadtime"

    iget-wide v2, p0, Lcom/tencent/mm/modelfriend/h;->cqg:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 250
    :cond_3
    iget v1, p0, Lcom/tencent/mm/modelfriend/h;->bOY:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    .line 251
    const-string v1, "realname"

    invoke-virtual {p0}, Lcom/tencent/mm/modelfriend/h;->yM()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    :cond_4
    iget v1, p0, Lcom/tencent/mm/modelfriend/h;->bOY:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_5

    .line 254
    const-string v1, "realnamepyinitial"

    invoke-virtual {p0}, Lcom/tencent/mm/modelfriend/h;->yN()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    :cond_5
    iget v1, p0, Lcom/tencent/mm/modelfriend/h;->bOY:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_6

    .line 257
    const-string v1, "realnamequanpin"

    invoke-virtual {p0}, Lcom/tencent/mm/modelfriend/h;->yO()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    :cond_6
    iget v1, p0, Lcom/tencent/mm/modelfriend/h;->bOY:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_7

    .line 260
    const-string v1, "username"

    invoke-virtual {p0}, Lcom/tencent/mm/modelfriend/h;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    :cond_7
    iget v1, p0, Lcom/tencent/mm/modelfriend/h;->bOY:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_8

    .line 263
    const-string v1, "nickname"

    invoke-virtual {p0}, Lcom/tencent/mm/modelfriend/h;->yP()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    :cond_8
    iget v1, p0, Lcom/tencent/mm/modelfriend/h;->bOY:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_9

    .line 266
    const-string v1, "nicknamepyinitial"

    invoke-virtual {p0}, Lcom/tencent/mm/modelfriend/h;->yQ()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    :cond_9
    iget v1, p0, Lcom/tencent/mm/modelfriend/h;->bOY:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_a

    .line 269
    const-string v1, "nicknamequanpin"

    invoke-virtual {p0}, Lcom/tencent/mm/modelfriend/h;->yR()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    :cond_a
    iget v1, p0, Lcom/tencent/mm/modelfriend/h;->bOY:I

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_b

    .line 272
    const-string v1, "type"

    iget v2, p0, Lcom/tencent/mm/modelfriend/h;->type:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 274
    :cond_b
    iget v1, p0, Lcom/tencent/mm/modelfriend/h;->bOY:I

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_c

    .line 275
    const-string v1, "moblie"

    invoke-virtual {p0}, Lcom/tencent/mm/modelfriend/h;->yS()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    :cond_c
    iget v1, p0, Lcom/tencent/mm/modelfriend/h;->bOY:I

    and-int/lit16 v1, v1, 0x2000

    if-eqz v1, :cond_d

    .line 278
    const-string v1, "email"

    invoke-virtual {p0}, Lcom/tencent/mm/modelfriend/h;->yT()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    :cond_d
    iget v1, p0, Lcom/tencent/mm/modelfriend/h;->bOY:I

    and-int/lit16 v1, v1, 0x4000

    if-eqz v1, :cond_e

    .line 281
    iget v1, p0, Lcom/tencent/mm/modelfriend/h;->status:I

    .line 282
    if-nez v1, :cond_12

    .line 283
    const-string v1, "status"

    const/high16 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 289
    :cond_e
    :goto_0
    iget v1, p0, Lcom/tencent/mm/modelfriend/h;->bOY:I

    const v2, 0x8000

    and-int/2addr v1, v2

    if-eqz v1, :cond_f

    .line 290
    const-string v1, "reserved1"

    iget-object v2, p0, Lcom/tencent/mm/modelfriend/h;->ckX:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    :cond_f
    iget v1, p0, Lcom/tencent/mm/modelfriend/h;->bOY:I

    const/high16 v2, 0x2

    and-int/2addr v1, v2

    if-eqz v1, :cond_10

    .line 296
    const-string v1, "reserved3"

    iget v2, p0, Lcom/tencent/mm/modelfriend/h;->cqn:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 301
    :cond_10
    iget v1, p0, Lcom/tencent/mm/modelfriend/h;->bOY:I

    const/high16 v2, 0x8

    and-int/2addr v1, v2

    if-eqz v1, :cond_11

    .line 302
    invoke-direct {p0}, Lcom/tencent/mm/modelfriend/h;->yJ()[B

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/mm/modelfriend/h;->cqo:[B

    .line 303
    const-string v1, "lvbuf"

    iget-object v2, p0, Lcom/tencent/mm/modelfriend/h;->cqo:[B

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 305
    :cond_11
    return-object v0

    .line 285
    :cond_12
    const-string v2, "status"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method public final rB()Ljava/lang/String;
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Lcom/tencent/mm/modelfriend/h;->cqr:Ljava/lang/String;

    return-object v0
.end method

.method public final rC()Ljava/lang/String;
    .locals 1

    .prologue
    .line 509
    iget-object v0, p0, Lcom/tencent/mm/modelfriend/h;->Tu:Ljava/lang/String;

    return-object v0
.end method

.method public final rD()Ljava/lang/String;
    .locals 1

    .prologue
    .line 605
    iget-object v0, p0, Lcom/tencent/mm/modelfriend/h;->Tv:Ljava/lang/String;

    return-object v0
.end method

.method public final rk()I
    .locals 1

    .prologue
    .line 501
    iget v0, p0, Lcom/tencent/mm/modelfriend/h;->cqq:I

    return v0
.end method

.method public final rp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 613
    iget-object v0, p0, Lcom/tencent/mm/modelfriend/h;->cqt:Ljava/lang/String;

    return-object v0
.end method

.method public final setStatus(I)V
    .locals 0
    .parameter

    .prologue
    .line 465
    iput p1, p0, Lcom/tencent/mm/modelfriend/h;->status:I

    .line 466
    return-void
.end method

.method public final setType(I)V
    .locals 0
    .parameter

    .prologue
    .line 441
    iput p1, p0, Lcom/tencent/mm/modelfriend/h;->type:I

    .line 442
    return-void
.end method

.method public final setUsername(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 409
    iput-object p1, p0, Lcom/tencent/mm/modelfriend/h;->username:Ljava/lang/String;

    .line 410
    return-void
.end method

.method public final x(J)V
    .locals 0
    .parameter

    .prologue
    .line 377
    iput-wide p1, p0, Lcom/tencent/mm/modelfriend/h;->cqg:J

    .line 378
    return-void
.end method

.method public final y(J)V
    .locals 0
    .parameter

    .prologue
    .line 569
    iput-wide p1, p0, Lcom/tencent/mm/modelfriend/h;->cqB:J

    .line 570
    return-void
.end method

.method public final yK()Ljava/lang/String;
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/tencent/mm/modelfriend/h;->bPX:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/modelfriend/h;->bPX:Ljava/lang/String;

    goto :goto_0
.end method

.method public final yL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/tencent/mm/modelfriend/h;->cqf:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/modelfriend/h;->cqf:Ljava/lang/String;

    goto :goto_0
.end method

.method public final yM()Ljava/lang/String;
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/tencent/mm/modelfriend/h;->cqh:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/modelfriend/h;->cqh:Ljava/lang/String;

    goto :goto_0
.end method

.method public final yN()Ljava/lang/String;
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lcom/tencent/mm/modelfriend/h;->cqi:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/modelfriend/h;->cqi:Ljava/lang/String;

    goto :goto_0
.end method

.method public final yO()Ljava/lang/String;
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lcom/tencent/mm/modelfriend/h;->cqj:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/modelfriend/h;->cqj:Ljava/lang/String;

    goto :goto_0
.end method

.method public final yP()Ljava/lang/String;
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lcom/tencent/mm/modelfriend/h;->cie:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/modelfriend/h;->cie:Ljava/lang/String;

    goto :goto_0
.end method

.method public final yQ()Ljava/lang/String;
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Lcom/tencent/mm/modelfriend/h;->cqk:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/modelfriend/h;->cqk:Ljava/lang/String;

    goto :goto_0
.end method

.method public final yR()Ljava/lang/String;
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lcom/tencent/mm/modelfriend/h;->cql:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/modelfriend/h;->cql:Ljava/lang/String;

    goto :goto_0
.end method

.method public final yS()Ljava/lang/String;
    .locals 1

    .prologue
    .line 453
    iget-object v0, p0, Lcom/tencent/mm/modelfriend/h;->cqm:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/modelfriend/h;->cqm:Ljava/lang/String;

    goto :goto_0
.end method

.method public final yT()Ljava/lang/String;
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Lcom/tencent/mm/modelfriend/h;->bTQ:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/modelfriend/h;->bTQ:Ljava/lang/String;

    goto :goto_0
.end method

.method public final yU()V
    .locals 1

    .prologue
    .line 481
    iget v0, p0, Lcom/tencent/mm/modelfriend/h;->cqn:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/tencent/mm/modelfriend/h;->cqn:I

    .line 482
    return-void
.end method

.method public final yV()V
    .locals 1

    .prologue
    .line 485
    iget v0, p0, Lcom/tencent/mm/modelfriend/h;->cqn:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/mm/modelfriend/h;->cqn:I

    .line 486
    return-void
.end method

.method public final yW()Z
    .locals 1

    .prologue
    .line 489
    iget v0, p0, Lcom/tencent/mm/modelfriend/h;->cqn:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final yX()Ljava/lang/String;
    .locals 1

    .prologue
    .line 493
    iget-object v0, p0, Lcom/tencent/mm/modelfriend/h;->cqp:Ljava/lang/String;

    return-object v0
.end method

.method public final yY()Ljava/lang/String;
    .locals 1

    .prologue
    .line 657
    iget-object v0, p0, Lcom/tencent/mm/modelfriend/h;->ckX:Ljava/lang/String;

    return-object v0
.end method
