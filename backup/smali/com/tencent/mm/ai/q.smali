.class public final Lcom/tencent/mm/ai/q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private bOY:I

.field private cAG:I

.field private cAP:Ljava/lang/String;

.field private cAR:I

.field private cAS:I

.field private cAT:I

.field private cAU:J

.field private cAV:J

.field private cAW:J

.field private cAX:I

.field private cAY:I

.field private cAZ:I

.field private cAu:Ljava/lang/String;

.field private cBa:I

.field private cBb:I

.field private cBc:Ljava/lang/String;

.field private ckU:I

.field private csY:I

.field private ctc:I

.field private cwF:Ljava/lang/String;

.field private rD:Ljava/lang/String;

.field private status:I

.field private user:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/mm/ai/q;->bOY:I

    .line 118
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/ai/q;->rD:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/ai/q;->cwF:Ljava/lang/String;

    iput v1, p0, Lcom/tencent/mm/ai/q;->csY:I

    iput v1, p0, Lcom/tencent/mm/ai/q;->cAG:I

    iput v1, p0, Lcom/tencent/mm/ai/q;->cAR:I

    iput v1, p0, Lcom/tencent/mm/ai/q;->ckU:I

    iput v1, p0, Lcom/tencent/mm/ai/q;->cAS:I

    iput v1, p0, Lcom/tencent/mm/ai/q;->cAT:I

    iput v1, p0, Lcom/tencent/mm/ai/q;->status:I

    iput-wide v2, p0, Lcom/tencent/mm/ai/q;->cAU:J

    iput-wide v2, p0, Lcom/tencent/mm/ai/q;->cAV:J

    iput-wide v2, p0, Lcom/tencent/mm/ai/q;->cAW:J

    iput v1, p0, Lcom/tencent/mm/ai/q;->cAX:I

    iput v1, p0, Lcom/tencent/mm/ai/q;->ctc:I

    iput v1, p0, Lcom/tencent/mm/ai/q;->cAY:I

    iput v1, p0, Lcom/tencent/mm/ai/q;->cAZ:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/ai/q;->user:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/ai/q;->cAP:Ljava/lang/String;

    iput v1, p0, Lcom/tencent/mm/ai/q;->cBa:I

    iput v1, p0, Lcom/tencent/mm/ai/q;->cBb:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/ai/q;->cAu:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/ai/q;->cBc:Ljava/lang/String;

    .line 119
    return-void
.end method


# virtual methods
.method public final AF()I
    .locals 1

    .prologue
    .line 359
    iget v0, p0, Lcom/tencent/mm/ai/q;->ctc:I

    return v0
.end method

.method public final AH()I
    .locals 1

    .prologue
    .line 271
    iget v0, p0, Lcom/tencent/mm/ai/q;->csY:I

    return v0
.end method

.method public final DG()Ljava/lang/String;
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/tencent/mm/ai/q;->cAP:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ai/q;->cAP:Ljava/lang/String;

    goto :goto_0
.end method

.method public final DH()I
    .locals 1

    .prologue
    .line 279
    iget v0, p0, Lcom/tencent/mm/ai/q;->cAG:I

    return v0
.end method

.method public final DI()I
    .locals 1

    .prologue
    .line 287
    iget v0, p0, Lcom/tencent/mm/ai/q;->cAR:I

    return v0
.end method

.method public final DJ()I
    .locals 1

    .prologue
    .line 303
    iget v0, p0, Lcom/tencent/mm/ai/q;->cAS:I

    return v0
.end method

.method public final DK()I
    .locals 1

    .prologue
    .line 311
    iget v0, p0, Lcom/tencent/mm/ai/q;->cAT:I

    return v0
.end method

.method public final DL()J
    .locals 2

    .prologue
    .line 327
    iget-wide v0, p0, Lcom/tencent/mm/ai/q;->cAU:J

    return-wide v0
.end method

.method public final DM()J
    .locals 2

    .prologue
    .line 335
    iget-wide v0, p0, Lcom/tencent/mm/ai/q;->cAV:J

    return-wide v0
.end method

.method public final DN()J
    .locals 2

    .prologue
    .line 343
    iget-wide v0, p0, Lcom/tencent/mm/ai/q;->cAW:J

    return-wide v0
.end method

.method public final DO()I
    .locals 1

    .prologue
    .line 351
    iget v0, p0, Lcom/tencent/mm/ai/q;->cAX:I

    return v0
.end method

.method public final DP()I
    .locals 1

    .prologue
    .line 367
    iget v0, p0, Lcom/tencent/mm/ai/q;->cAY:I

    return v0
.end method

.method public final DQ()I
    .locals 1

    .prologue
    .line 399
    iget v0, p0, Lcom/tencent/mm/ai/q;->cBa:I

    return v0
.end method

.method public final DR()V
    .locals 1

    .prologue
    .line 403
    const/4 v0, 0x1

    iput v0, p0, Lcom/tencent/mm/ai/q;->cBb:I

    .line 404
    return-void
.end method

.method public final DS()I
    .locals 1

    .prologue
    .line 407
    iget v0, p0, Lcom/tencent/mm/ai/q;->cBb:I

    return v0
.end method

.method public final DT()Ljava/lang/String;
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Lcom/tencent/mm/ai/q;->cBc:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ai/q;->cBc:Ljava/lang/String;

    goto :goto_0
.end method

.method public final G(J)V
    .locals 0
    .parameter

    .prologue
    .line 323
    iput-wide p1, p0, Lcom/tencent/mm/ai/q;->cAU:J

    .line 324
    return-void
.end method

.method public final H(J)V
    .locals 0
    .parameter

    .prologue
    .line 331
    iput-wide p1, p0, Lcom/tencent/mm/ai/q;->cAV:J

    .line 332
    return-void
.end method

.method public final I(J)V
    .locals 0
    .parameter

    .prologue
    .line 339
    iput-wide p1, p0, Lcom/tencent/mm/ai/q;->cAW:J

    .line 340
    return-void
.end method

.method public final cJ(I)V
    .locals 0
    .parameter

    .prologue
    .line 291
    iput p1, p0, Lcom/tencent/mm/ai/q;->ckU:I

    .line 292
    return-void
.end method

.method public final cL(I)V
    .locals 0
    .parameter

    .prologue
    .line 247
    iput p1, p0, Lcom/tencent/mm/ai/q;->bOY:I

    .line 248
    return-void
.end method

.method public final convertFrom(Landroid/database/Cursor;)V
    .locals 2
    .parameter

    .prologue
    .line 147
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ai/q;->rD:Ljava/lang/String;

    .line 148
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ai/q;->cwF:Ljava/lang/String;

    .line 149
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ai/q;->csY:I

    .line 150
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ai/q;->cAG:I

    .line 151
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ai/q;->cAR:I

    .line 152
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ai/q;->ckU:I

    .line 153
    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ai/q;->cAS:I

    .line 154
    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ai/q;->cAT:I

    .line 155
    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ai/q;->status:I

    .line 156
    const/16 v0, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/mm/ai/q;->cAU:J

    .line 157
    const/16 v0, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/mm/ai/q;->cAV:J

    .line 158
    const/16 v0, 0xb

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/mm/ai/q;->cAW:J

    .line 159
    const/16 v0, 0xc

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ai/q;->cAX:I

    .line 160
    const/16 v0, 0xd

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ai/q;->ctc:I

    .line 161
    const/16 v0, 0xe

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ai/q;->cAY:I

    .line 162
    const/16 v0, 0xf

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ai/q;->cAZ:I

    .line 163
    const/16 v0, 0x10

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ai/q;->user:Ljava/lang/String;

    .line 164
    const/16 v0, 0x11

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ai/q;->cAP:Ljava/lang/String;

    .line 165
    const/16 v0, 0x12

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ai/q;->cBa:I

    .line 166
    const/16 v0, 0x13

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ai/q;->cBb:I

    .line 167
    const/16 v0, 0x14

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ai/q;->cAu:Ljava/lang/String;

    .line 168
    const/16 v0, 0x15

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ai/q;->cBc:Ljava/lang/String;

    .line 169
    return-void
.end method

.method public final dA(I)V
    .locals 0
    .parameter

    .prologue
    .line 267
    iput p1, p0, Lcom/tencent/mm/ai/q;->csY:I

    .line 268
    return-void
.end method

.method public final dw(I)V
    .locals 0
    .parameter

    .prologue
    .line 363
    iput p1, p0, Lcom/tencent/mm/ai/q;->cAY:I

    .line 364
    return-void
.end method

.method public final dy(I)V
    .locals 0
    .parameter

    .prologue
    .line 355
    iput p1, p0, Lcom/tencent/mm/ai/q;->ctc:I

    .line 356
    return-void
.end method

.method public final eA(I)V
    .locals 0
    .parameter

    .prologue
    .line 395
    iput p1, p0, Lcom/tencent/mm/ai/q;->cBa:I

    .line 396
    return-void
.end method

.method public final ev(I)V
    .locals 0
    .parameter

    .prologue
    .line 275
    iput p1, p0, Lcom/tencent/mm/ai/q;->cAG:I

    .line 276
    return-void
.end method

.method public final ew(I)V
    .locals 0
    .parameter

    .prologue
    .line 283
    iput p1, p0, Lcom/tencent/mm/ai/q;->cAR:I

    .line 284
    return-void
.end method

.method public final ex(I)V
    .locals 0
    .parameter

    .prologue
    .line 299
    iput p1, p0, Lcom/tencent/mm/ai/q;->cAS:I

    .line 300
    return-void
.end method

.method public final ey(I)V
    .locals 0
    .parameter

    .prologue
    .line 307
    iput p1, p0, Lcom/tencent/mm/ai/q;->cAT:I

    .line 308
    return-void
.end method

.method public final ez(I)V
    .locals 0
    .parameter

    .prologue
    .line 347
    iput p1, p0, Lcom/tencent/mm/ai/q;->cAX:I

    .line 348
    return-void
.end method

.method public final gR(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 251
    iput-object p1, p0, Lcom/tencent/mm/ai/q;->rD:Ljava/lang/String;

    .line 252
    return-void
.end method

.method public final gS(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 387
    iput-object p1, p0, Lcom/tencent/mm/ai/q;->cAP:Ljava/lang/String;

    .line 388
    return-void
.end method

.method public final gT(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 411
    iput-object p1, p0, Lcom/tencent/mm/ai/q;->cAu:Ljava/lang/String;

    .line 412
    return-void
.end method

.method public final gU(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 419
    iput-object p1, p0, Lcom/tencent/mm/ai/q;->cBc:Ljava/lang/String;

    .line 420
    return-void
.end method

.method public final getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/tencent/mm/ai/q;->rD:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ai/q;->rD:Ljava/lang/String;

    goto :goto_0
.end method

.method public final getStatus()I
    .locals 1

    .prologue
    .line 319
    iget v0, p0, Lcom/tencent/mm/ai/q;->status:I

    return v0
.end method

.method public final getUser()Ljava/lang/String;
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lcom/tencent/mm/ai/q;->user:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ai/q;->user:Ljava/lang/String;

    goto :goto_0
.end method

.method public final oa()Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 172
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 173
    iget v0, p0, Lcom/tencent/mm/ai/q;->bOY:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 174
    const-string v0, "filename"

    invoke-virtual {p0}, Lcom/tencent/mm/ai/q;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    :cond_0
    iget v0, p0, Lcom/tencent/mm/ai/q;->bOY:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 177
    const-string v2, "clientid"

    iget-object v0, p0, Lcom/tencent/mm/ai/q;->cwF:Ljava/lang/String;

    if-nez v0, :cond_16

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    :cond_1
    iget v0, p0, Lcom/tencent/mm/ai/q;->bOY:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 180
    const-string v0, "msgsvrid"

    iget v2, p0, Lcom/tencent/mm/ai/q;->csY:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 182
    :cond_2
    iget v0, p0, Lcom/tencent/mm/ai/q;->bOY:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 183
    const-string v0, "netoffset"

    iget v2, p0, Lcom/tencent/mm/ai/q;->cAG:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 185
    :cond_3
    iget v0, p0, Lcom/tencent/mm/ai/q;->bOY:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 186
    const-string v0, "filenowsize"

    iget v2, p0, Lcom/tencent/mm/ai/q;->cAR:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 188
    :cond_4
    iget v0, p0, Lcom/tencent/mm/ai/q;->bOY:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    .line 189
    const-string v0, "totallen"

    iget v2, p0, Lcom/tencent/mm/ai/q;->ckU:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 191
    :cond_5
    iget v0, p0, Lcom/tencent/mm/ai/q;->bOY:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_6

    .line 192
    const-string v0, "thumbnetoffset"

    iget v2, p0, Lcom/tencent/mm/ai/q;->cAS:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 194
    :cond_6
    iget v0, p0, Lcom/tencent/mm/ai/q;->bOY:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_7

    .line 195
    const-string v0, "thumblen"

    iget v2, p0, Lcom/tencent/mm/ai/q;->cAT:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 197
    :cond_7
    iget v0, p0, Lcom/tencent/mm/ai/q;->bOY:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_8

    .line 198
    const-string v0, "status"

    iget v2, p0, Lcom/tencent/mm/ai/q;->status:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 200
    :cond_8
    iget v0, p0, Lcom/tencent/mm/ai/q;->bOY:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_9

    .line 201
    const-string v0, "createtime"

    iget-wide v2, p0, Lcom/tencent/mm/ai/q;->cAU:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 203
    :cond_9
    iget v0, p0, Lcom/tencent/mm/ai/q;->bOY:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_a

    .line 204
    const-string v0, "lastmodifytime"

    iget-wide v2, p0, Lcom/tencent/mm/ai/q;->cAV:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 206
    :cond_a
    iget v0, p0, Lcom/tencent/mm/ai/q;->bOY:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_b

    .line 207
    const-string v0, "downloadtime"

    iget-wide v2, p0, Lcom/tencent/mm/ai/q;->cAW:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 209
    :cond_b
    iget v0, p0, Lcom/tencent/mm/ai/q;->bOY:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_c

    .line 210
    const-string v0, "videolength"

    iget v2, p0, Lcom/tencent/mm/ai/q;->cAX:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 212
    :cond_c
    iget v0, p0, Lcom/tencent/mm/ai/q;->bOY:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_d

    .line 213
    const-string v0, "msglocalid"

    iget v2, p0, Lcom/tencent/mm/ai/q;->ctc:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 215
    :cond_d
    iget v0, p0, Lcom/tencent/mm/ai/q;->bOY:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_e

    .line 216
    const-string v0, "nettimes"

    iget v2, p0, Lcom/tencent/mm/ai/q;->cAY:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 218
    :cond_e
    iget v0, p0, Lcom/tencent/mm/ai/q;->bOY:I

    const v2, 0x8000

    and-int/2addr v0, v2

    if-eqz v0, :cond_f

    .line 219
    const-string v0, "cameratype"

    iget v2, p0, Lcom/tencent/mm/ai/q;->cAZ:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 221
    :cond_f
    iget v0, p0, Lcom/tencent/mm/ai/q;->bOY:I

    const/high16 v2, 0x1

    and-int/2addr v0, v2

    if-eqz v0, :cond_10

    .line 222
    const-string v0, "user"

    invoke-virtual {p0}, Lcom/tencent/mm/ai/q;->getUser()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    :cond_10
    iget v0, p0, Lcom/tencent/mm/ai/q;->bOY:I

    const/high16 v2, 0x2

    and-int/2addr v0, v2

    if-eqz v0, :cond_11

    .line 225
    const-string v0, "human"

    invoke-virtual {p0}, Lcom/tencent/mm/ai/q;->DG()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    :cond_11
    iget v0, p0, Lcom/tencent/mm/ai/q;->bOY:I

    const/high16 v2, 0x4

    and-int/2addr v0, v2

    if-eqz v0, :cond_12

    .line 228
    const-string v0, "reserved1"

    iget v2, p0, Lcom/tencent/mm/ai/q;->cBa:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 230
    :cond_12
    iget v0, p0, Lcom/tencent/mm/ai/q;->bOY:I

    const/high16 v2, 0x8

    and-int/2addr v0, v2

    if-eqz v0, :cond_13

    .line 231
    const-string v0, "reserved2"

    iget v2, p0, Lcom/tencent/mm/ai/q;->cBb:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 233
    :cond_13
    iget v0, p0, Lcom/tencent/mm/ai/q;->bOY:I

    const/high16 v2, 0x10

    and-int/2addr v0, v2

    if-eqz v0, :cond_14

    .line 234
    const-string v2, "reserved3"

    iget-object v0, p0, Lcom/tencent/mm/ai/q;->cAu:Ljava/lang/String;

    if-nez v0, :cond_17

    const-string v0, ""

    :goto_1
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    :cond_14
    iget v0, p0, Lcom/tencent/mm/ai/q;->bOY:I

    const/high16 v2, 0x20

    and-int/2addr v0, v2

    if-eqz v0, :cond_15

    .line 237
    const-string v0, "reserved4"

    invoke-virtual {p0}, Lcom/tencent/mm/ai/q;->DT()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    :cond_15
    return-object v1

    .line 177
    :cond_16
    iget-object v0, p0, Lcom/tencent/mm/ai/q;->cwF:Ljava/lang/String;

    goto/16 :goto_0

    .line 234
    :cond_17
    iget-object v0, p0, Lcom/tencent/mm/ai/q;->cAu:Ljava/lang/String;

    goto :goto_1
.end method

.method public final setStatus(I)V
    .locals 0
    .parameter

    .prologue
    .line 315
    iput p1, p0, Lcom/tencent/mm/ai/q;->status:I

    .line 316
    return-void
.end method

.method public final setUser(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 379
    iput-object p1, p0, Lcom/tencent/mm/ai/q;->user:Ljava/lang/String;

    .line 380
    return-void
.end method

.method public final vR()I
    .locals 1

    .prologue
    .line 295
    iget v0, p0, Lcom/tencent/mm/ai/q;->ckU:I

    return v0
.end method

.method public final vU()I
    .locals 1

    .prologue
    .line 243
    iget v0, p0, Lcom/tencent/mm/ai/q;->bOY:I

    return v0
.end method
